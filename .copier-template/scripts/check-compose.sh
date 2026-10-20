#!/usr/bin/env bash
# Fail when the resolved compose config breaks the shared-host rules:
# loopback-only ports (except the workspace SSH port), no ipc: host, CPU/memory/pids caps,
# GPUs via the nvidia runtime pinned by UUID, pinned image tags, a healthcheck.
# Usage: ENV_FILE=instances/<name>.env [VARIANT_FILE=.docker/variants/<v>.env] scripts/check-compose.sh
# Extra compose files: COMPOSE_FILE=compose.yaml:override.yaml. Accept ipc: host with ALLOW_IPC_HOST=1.
set -euo pipefail

env_file="${ENV_FILE:-instances/example.env}"
args=()
if [ -n "${VARIANT_FILE:-}" ]; then args+=(--env-file "${VARIANT_FILE}"); fi
args+=(--env-file "${env_file}")

json="$(docker compose "${args[@]}" config --format json)"

violations="$(jq -r --arg allow_ipc "${ALLOW_IPC_HOST:-0}" '
  .services | to_entries[] | .key as $s | .value as $v |
  ( ($v.ports // [])[]
    | select(((.host_ip // "") | IN("127.0.0.1", "::1")) | not)
    | select((.target | tostring) != ($v.labels["hyperfast.ssh-port"] // "none"))
    | "\($s): port \(.target) is published on \(.host_ip // "all interfaces"), not loopback" ),
  ( select($v.ipc == "host" and $allow_ipc != "1") | "\($s): ipc: host (set ALLOW_IPC_HOST=1 to accept)" ),
  ( ("cpus", "mem_limit", "pids_limit") as $k | select($v[$k] == null) | "\($s): missing \($k)" ),
  ( select([$v.deploy.resources.reservations.devices[]?.capabilities[]?] | index("gpu") != null)
    | ( select($v.runtime != "nvidia") | "\($s): GPU service without runtime: nvidia" ),
      ( $v.deploy.resources.reservations.devices[]
        | select(.count != null or ((.device_ids // []) | length) == 0 or ((.device_ids // []) | index("all")) != null)
        | "\($s): GPUs must be pinned by UUID in device_ids" ) ),
  ( select(($v.image // "") | test(":latest$") or (test("[:@]") | not))
    | "\($s): image \($v.image // "(none)") is not pinned to a version" ),
  ( select($v.healthcheck == null or $v.healthcheck.disable == true) | "\($s): missing healthcheck" )
' <<<"${json}")"

if [ -n "${violations}" ]; then
  printf '%s\n' "${violations}" >&2
  exit 1
fi
echo "compose check passed (${env_file})"

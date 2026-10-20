#!/usr/bin/env bash
# Fail when the resolved compose config breaks the shared-host rules:
# loopback-only ports (except the workspace SSH port), no host networking, no ipc: host,
# positive CPU/memory/pids caps,
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
  # A tag on the last path segment (a registry port is not a tag) or a digest; never latest.
  def pinned: test("@sha256:[0-9a-f]{64}$")
    or ((split("/") | last) as $n | ($n | test(":[^:]+$")) and ($n | test(":latest$") | not));
  .services | to_entries[] | .key as $s | .value as $v |
  ( ($v.ports // [])[]
    | select(((.host_ip // "") | IN("127.0.0.1", "::1")) | not)
    | select((.target | tostring) != ($v.labels["hyperfast.ssh-port"] // "none"))
    | "\($s): port \(.target) is published on \(.host_ip // "all interfaces"), not loopback" ),
  ( select($v.network_mode == "host") | "\($s): network_mode: host bypasses the loopback port rule" ),
  ( select($v.ipc == "host" and $allow_ipc != "1") | "\($s): ipc: host (set ALLOW_IPC_HOST=1 to accept)" ),
  ( ("cpus", "mem_limit", "pids_limit") as $k
    | select($v[$k] == null or ((($v[$k] | tonumber?) // 0) <= 0))
    | "\($s): missing \($k) (must be a positive limit)" ),
  ( select([$v.deploy.resources.reservations.devices[]?.capabilities[]?] | index("gpu") != null)
    | ( select($v.runtime != "nvidia") | "\($s): GPU service without runtime: nvidia" ),
      ( $v.deploy.resources.reservations.devices[]
        | select(.count != null
            or ([(.device_ids // [])[] | split(",")[] | gsub("^\\s+|\\s+$"; "")]
                | length == 0 or any(test("^(GPU|MIG)-") | not)))
        | "\($s): GPUs must be pinned by UUID (GPU-... from nvidia-smi -L) in device_ids" ) ),
  ( select(($v.image // "") | pinned | not)
    | "\($s): image \($v.image // "(none)") is not pinned to a version" ),
  ( select($v.healthcheck == null or $v.healthcheck.disable == true) | "\($s): missing healthcheck" )
' <<<"${json}")"

if [ -n "${violations}" ]; then
  printf '%s\n' "${violations}" >&2
  exit 1
fi
echo "compose check passed (${env_file})"

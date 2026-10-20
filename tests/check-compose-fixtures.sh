#!/usr/bin/env bash
# Mutate each rendered project and require scripts/check-compose.sh to reject it with the
# expected message (or to accept it, for the documented exceptions). Usage: check-compose-fixtures.sh <render dir>
set -uo pipefail

out="${1:?usage: $0 <render dir>}"
failures=0

# run_case <dir> <want: pass | message substring> <label> <override yaml or ""> [VAR=value ...]
run_case() {
  local dir=$1 want=$2 label=$3 override=$4
  shift 4
  local files=compose.yaml variant_file="" variant err got
  variant="$(sed -n 's/^VARIANT=//p' "${dir}/instances/example.env")"
  if [ -n "${variant}" ]; then variant_file=".docker/variants/${variant}.env"; fi
  if [ -n "${override}" ]; then
    printf '%s\n' "${override}" > "${dir}/mutation.yaml"
    files=compose.yaml:mutation.yaml
  fi
  if err="$(cd "${dir}" && env "$@" COMPOSE_FILE="${files}" ENV_FILE=instances/example.env \
      VARIANT_FILE="${variant_file}" scripts/check-compose.sh 2>&1 >/dev/null)"; then
    got=pass
  else
    got="fail: ${err}"
  fi
  rm -f "${dir}/mutation.yaml"
  if { [ "${want}" = pass ] && [ "${got}" = pass ]; } ||
     { [ "${want}" != pass ] && [[ "${got}" == fail:*"${want}"* ]]; }; then
    echo "ok   $(basename "${dir}"): ${label}"
  else
    echo "FAIL $(basename "${dir}"): ${label} (want ${want}, got ${got})"
    failures=$((failures + 1))
  fi
}

for dir in "${out}"/*/; do
  dir="${dir%/}"
  gpu=false; grep -q 'runtime: nvidia' "${dir}/compose.yaml" && gpu=true
  workspace=false; grep -q 'hyperfast.ssh-port' "${dir}/compose.yaml" && workspace=true
  built=false; [ -f "${dir}/.docker/Dockerfile" ] && built=true

  run_case "${dir}" pass "unmodified render" ""
  if ${workspace}; then
    run_case "${dir}" pass "SSH port on 0.0.0.0 is allowed" "" BIND_ADDR=0.0.0.0
    run_case "${dir}" "not loopback" "extra port on all interfaces" \
      $'services:\n  app:\n    ports: ["8888:8888"]'
  else
    run_case "${dir}" "not loopback" "service port on 0.0.0.0" "" BIND_ADDR=0.0.0.0
  fi
  run_case "${dir}" "ipc: host" "ipc: host" $'services:\n  app:\n    ipc: host'
  run_case "${dir}" pass "ipc: host with ALLOW_IPC_HOST=1" $'services:\n  app:\n    ipc: host' ALLOW_IPC_HOST=1
  run_case "${dir}" "missing cpus" "no CPU cap" $'services:\n  app:\n    cpus: !reset null'
  run_case "${dir}" "missing mem_limit" "no memory cap" $'services:\n  app:\n    mem_limit: !reset null'
  run_case "${dir}" "missing pids_limit" "no pids cap" $'services:\n  app:\n    pids_limit: !reset null'
  run_case "${dir}" "missing healthcheck" "no healthcheck" $'services:\n  app:\n    healthcheck: !reset null'
  if ${built}; then
    run_case "${dir}" "not pinned" "latest image tag" "" IMAGE_TAG=latest
  else
    run_case "${dir}" "not pinned" "latest upstream image" $'services:\n  app:\n    image: vllm/vllm-openai:latest'
  fi
  if ${gpu}; then
    run_case "${dir}" "without runtime: nvidia" "GPU without nvidia runtime" $'services:\n  app:\n    runtime: !reset null'
    run_case "${dir}" "pinned by UUID" "GPU count: all" \
      $'services:\n  app:\n    deploy:\n      resources:\n        reservations:\n          devices: !override\n            - driver: nvidia\n              count: all\n              capabilities: [gpu]'
  fi
done

if [ "${failures}" -gt 0 ]; then
  echo "${failures} fixture(s) failed" >&2
  exit 1
fi
echo "all compose fixtures behaved as expected"

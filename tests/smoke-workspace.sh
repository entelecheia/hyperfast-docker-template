#!/usr/bin/env bash
# Build a rendered CPU workspace and check the security contract: non-root user without a
# password, no SSH host keys in the image, key-only SSH, host key stable across a recreate.
# Usage: smoke-workspace.sh <rendered workspace dir>. Needs docker, ssh, ssh-keygen, ssh-keyscan.
set -euo pipefail

dir="$(cd "${1:?usage: $0 <rendered workspace dir>}" && pwd)"
work="$(mktemp -d)"
port="${SMOKE_SSH_PORT:-22222}"
user="$(sed -n 's/^container_user: //p' "${dir}/.copier-docker-config.yaml")"
user="${user:-app}"
variant="$(sed -n 's/^VARIANT=//p' "${dir}/instances/example.env")"

mkdir -p "${work}/data"
ssh-keygen -q -t ed25519 -N '' -f "${work}/key"
cat > "${work}/smoke.env" <<EOF
NAME_PREFIX=smoke
INSTANCE=ci-$$
VARIANT=${variant}
IMAGE_TAG=smoke-${variant}
USER_UID=$(id -u)
USER_GID=$(id -g)
HOST_SSH_PORT=${port}
AUTHORIZED_KEYS=${work}/key.pub
DATA_ROOT=${work}/data
CPUS=2
MEMORY=2g
EOF
compose=(docker compose --project-directory "${dir}" --env-file "${dir}/.docker/variants/${variant}.env" --env-file "${work}/smoke.env")
image="$("${compose[@]}" config --images)"

cleanup() { "${compose[@]}" down -v >/dev/null 2>&1 || true; rm -rf "${work}"; }
trap cleanup EXIT

fail() { echo "FAIL: $*" >&2; exit 1; }

"${compose[@]}" build --quiet

uid="$(docker run --rm --entrypoint id "${image}" -u)"
[ "${uid}" != 0 ] || fail "image runs as root"
echo "ok   default user uid ${uid}"

keys="$(docker run --rm --entrypoint sh "${image}" -c 'ls /etc/ssh/ssh_host_* 2>/dev/null | wc -l')"
[ "${keys}" = 0 ] || fail "image contains ${keys} SSH host key file(s)"
echo "ok   no SSH host keys in the image"

shadow="$(docker run --rm --user root --entrypoint getent "${image}" shadow "${user}" | cut -d: -f2)"
case "${shadow}" in '!'*|'*'*) echo "ok   ${user} has no usable password" ;; *) fail "${user} has a password hash" ;; esac

"${compose[@]}" up -d --wait --wait-timeout 120
ssh_opts=(-p "${port}" -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null -o BatchMode=yes -o ConnectTimeout=10)

got="$(ssh "${ssh_opts[@]}" -i "${work}/key" -o IdentitiesOnly=yes "${user}@127.0.0.1" id -u)"
[ "${got}" = "$(id -u)" ] || fail "key login returned uid '${got}'"
echo "ok   key login as ${user} (uid ${got})"

methods="$(ssh -v "${ssh_opts[@]}" -o PubkeyAuthentication=no "${user}@127.0.0.1" true 2>&1 \
  | sed -n 's/.*Authentications that can continue: //p' | head -1 | tr -d '\r')" || true
[ "${methods}" = publickey ] || fail "server offers auth methods '${methods}', want only publickey"
echo "ok   server offers only publickey auth"

fingerprint() { ssh-keyscan -p "${port}" -t ed25519 127.0.0.1 2>/dev/null | ssh-keygen -lf - | awk '{print $2}'; }
before="$(fingerprint)"
[ -n "${before}" ] || fail "no host key served"
"${compose[@]}" down
"${compose[@]}" up -d --wait --wait-timeout 120
after="$(fingerprint)"
[ "${before}" = "${after}" ] || fail "host key changed across recreate (${before} -> ${after})"
echo "ok   host key ${before} kept across down/up"

echo "workspace smoke test passed"

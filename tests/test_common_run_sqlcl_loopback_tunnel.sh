#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/common.sh
source "${ROOT_DIR}/tools/common.sh"

TMP_DIR="$(mktemp -d)"
captured_tunnel=""
port_open=0

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

cat > "${TMP_DIR}/fake_sqlcl.sh" <<'EOF'
#!/usr/bin/env bash
cat >/dev/null
printf 'connected\n'
EOF
chmod +x "${TMP_DIR}/fake_sqlcl.sh"

local_port_is_listening() {
  local _port="$1"
  [[ "${port_open}" -eq 1 ]]
}

start_ssh_tunnel_command() {
  captured_tunnel="$1"
  port_open=1
}

DB_CONNECTION_MODE="direct"
DB_CONNECT_STRING="user/password@127.0.0.1:1521/ORCLPDB1"
DB_SQLCL_BIN="${TMP_DIR}/fake_sqlcl.sh"
SSH_TUNNEL_COMMAND="ssh -f -N -o ExitOnForwardFailure=yes -L 1521:127.0.0.1:1528 opc@example"

run_sqlcl "select user from dual;" >/dev/null

if [[ "${captured_tunnel}" != "${SSH_TUNNEL_COMMAND}" ]]; then
  printf 'Expected run_sqlcl to start the configured SSH tunnel for loopback direct connections.\n' >&2
  exit 1
fi

printf 'common run_sqlcl loopback tunnel test passed\n'

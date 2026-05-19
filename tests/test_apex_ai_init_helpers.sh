#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

if [[ "$(mask_connect_string_password 'dev_user/p@ss@word@127.0.0.1:1521/ORCLPDB1')" != 'dev_user/***@127.0.0.1:1521/ORCLPDB1' ]]; then
  printf 'Expected mask_connect_string_password to mask passwords containing @\n' >&2
  exit 1
fi

EXPECTED_COMMAND="$(cat <<'EOF'
REMOTE_DB_IP=$(ssh -n -i /Users/test/My\ Key.pem opc@db.example.com "sudo docker inspect weird\ container\;name --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'") && [ -n "${REMOTE_DB_IP}" ] && ssh -n -f -N -o ExitOnForwardFailure=yes -i /Users/test/My\ Key.pem -L 15210:${REMOTE_DB_IP}:1521 opc@db.example.com
EOF
)"

if [[ "$(build_ssh_tunnel_command 'opc@db.example.com' '/Users/test/My Key.pem' '15210' 'weird container;name')" != "${EXPECTED_COMMAND}" ]]; then
  printf 'Expected build_ssh_tunnel_command to shell-quote interpolated values safely\n' >&2
  exit 1
fi

printf 'apex_ai helper test passed\n'

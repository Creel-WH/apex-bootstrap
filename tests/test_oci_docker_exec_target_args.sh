#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/oci_docker_exec.sh
source "${REPO_ROOT}/tools/oci_docker_exec.sh"

TMP_DIR="$(mktemp -d)"
captured_ssh=()

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev_user/password@127.0.0.1:1521/ORCLPDB1",
    "db_schema": "dev",
    "apex_workspace": "DEV",
    "ssh_host": "opc@203.0.113.10",
    "ssh_key_path": "/tmp/test-oci.key",
    "app_container": "webapp",
    "db_container": "dbmain"
  }
}
JSON

ssh() {
  captured_ssh=("$@")
}

main 'dev@oci' app

if [[ "${captured_ssh[*]}" != "-t -i /tmp/test-oci.key opc@203.0.113.10 sudo docker exec -it webapp bash" ]]; then
  printf 'Expected OCI app container interactive exec, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

main 'dev@oci' db "ls /u01"

if [[ "${captured_ssh[*]}" != "-i /tmp/test-oci.key opc@203.0.113.10 sudo docker exec -i dbmain bash -lc ls\\\\\\ /u01" ]]; then
  printf 'Expected OCI db container command exec, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

main 'dev@oci' custom_container "pwd"

if [[ "${captured_ssh[*]}" != "-i /tmp/test-oci.key opc@203.0.113.10 sudo docker exec -i custom_container bash -lc pwd" ]]; then
  printf 'Expected OCI explicit container command exec, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

main 'dev@oci' 'bad; touch /tmp/pwned' "pwd"

if [[ "${captured_ssh[*]}" != "-i /tmp/test-oci.key opc@203.0.113.10 sudo docker exec -i bad\\;\\ touch\\ /tmp/pwned bash -lc pwd" ]]; then
  printf 'Expected OCI explicit container name to be shell-escaped, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

printf 'oci_docker_exec target args test passed\n'

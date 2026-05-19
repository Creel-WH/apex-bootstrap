#!/usr/bin/env bash

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/oci_ssh.sh
source "${REPO_ROOT}/tools/oci_ssh.sh"

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
    "ssh_key_path": "/tmp/test-oci.key"
  }
}
JSON

ssh() {
  captured_ssh=("$@")
}

main 'dev@oci'

if [[ "${captured_ssh[*]}" != "-t -i /tmp/test-oci.key opc@203.0.113.10" ]]; then
  printf 'Expected interactive OCI SSH call, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

main 'dev@oci' "hostname"

if [[ "${captured_ssh[*]}" != "-i /tmp/test-oci.key opc@203.0.113.10 hostname" ]]; then
  printf 'Expected OCI SSH command execution call, got: %s\n' "${captured_ssh[*]}" >&2
  exit 1
fi

printf 'oci_ssh target args test passed\n'

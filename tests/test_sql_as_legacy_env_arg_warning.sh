#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"

cleanup() {
  if [[ -f "${BACKUP_FILE}" ]]; then
    mv "${BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi
}

trap cleanup EXIT

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${BACKUP_FILE}"
fi

cat > "${CONN_FILE}" <<'JSON'
{
  "lab": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/password@host:1521/service",
    "DB_SCHEMA": "lab",
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

output="$(bash "${SCRIPT}" lab.env 100 --check 2>&1)"

if [[ "${output}" != *"Deprecated environment argument format: lab.env. Use env alias lab instead."* ]]; then
  printf 'Expected deprecated .env argument warning\n' >&2
  exit 1
fi

if [[ "${output}" != *"Environment : lab"* ]]; then
  printf 'Expected normalized env alias after deprecated input\n' >&2
  exit 1
fi

printf 'sql_as legacy env arg warning test passed\n'

#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/db_use.sh"
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
  "dev": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/password@host:1521/service",
    "DB_SCHEMA": "lab",
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

output="$(bash "${SCRIPT}" dev 100 check)"

if [[ "${output}" != *"Config file : ${CONN_FILE}"* ]]; then
  printf 'Expected db_use check to use conn.json
' >&2
  exit 1
fi

if [[ "${output}" != *"Environment : dev"* ]]; then
  printf 'Expected db_use check to report canonical env alias
' >&2
  exit 1
fi

printf 'db_use conn.json check test passed
'

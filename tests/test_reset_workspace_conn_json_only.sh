#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/reset_workspace.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
APP_DIR="${ROOT_DIR}/export/dev/f99996"

cleanup() {
  rm -rf "${APP_DIR}" "${ROOT_DIR}/config"
  rmdir "${ROOT_DIR}/export/dev" 2>/dev/null || true
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

mkdir -p "${APP_DIR}/application"
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

output="$(bash "${SCRIPT}" dev --dry-run)"

if [[ "${output}" != *"Environment workspace dry-run complete for dev."* ]]; then
  printf 'Expected reset_workspace canonical env alias dry-run to succeed without legacy config
' >&2
  exit 1
fi

rm -f "${CONN_FILE}"

output="$(bash "${SCRIPT}" dev --dry-run)"

if [[ "${output}" != *"[reset] would remove export/dev/f99996"* \
  || "${output}" != *"Environment workspace dry-run complete for dev."* ]]; then
  printf 'Expected reset_workspace env dry-run to succeed without conn.json
' >&2
  exit 1
fi

if [[ -e "${CONN_FILE}" ]]; then
  printf 'Expected reset_workspace dry-run not to recreate conn.json
' >&2
  exit 1
fi

printf 'reset_workspace conn.json-only test passed
'

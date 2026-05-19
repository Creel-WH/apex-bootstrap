#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
LOCAL_CONN_FILE="${ROOT_DIR}/.conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
LOCAL_CONN_BACKUP_FILE="${ROOT_DIR}/.conn.json.test-backup"
FAKE_BIN_DIR="$(mktemp -d)"
FAKE_SQL="${FAKE_BIN_DIR}/sql"

cleanup() {
  rm -rf "${FAKE_BIN_DIR}"

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi

  if [[ -f "${LOCAL_CONN_BACKUP_FILE}" ]]; then
    mv "${LOCAL_CONN_BACKUP_FILE}" "${LOCAL_CONN_FILE}"
  else
    rm -f "${LOCAL_CONN_FILE}"
  fi
}

trap cleanup EXIT

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

if [[ -f "${LOCAL_CONN_FILE}" ]]; then
  mv "${LOCAL_CONN_FILE}" "${LOCAL_CONN_BACKUP_FILE}"
fi

cat > "${FAKE_SQL}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
cat >/dev/null
SH
chmod +x "${FAKE_SQL}"

cat > "${CONN_FILE}" <<JSON
{
  "dev": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "public/template@host:1521/service",
    "DB_SCHEMA": "template",
    "DB_SQLCL_BIN": "${FAKE_SQL}",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

cat > "${LOCAL_CONN_FILE}" <<JSON
{
  "private": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "private/user@host:1521/service",
    "DB_SCHEMA": "private_schema",
    "DB_SQLCL_BIN": "${FAKE_SQL}",
    "APEX_WORKSPACE": "PRIVATE_WORKSPACE"
  }
}
JSON

output="$(bash "${SCRIPT}" private --check)"

grep -q "Config file : ${LOCAL_CONN_FILE}" <<< "${output}" || {
  printf 'Expected sql_as to load local .conn.json fallback\n' >&2
  exit 1
}

grep -q "Environment : private" <<< "${output}" || {
  printf 'Expected private environment in check output\n' >&2
  exit 1
}

printf 'sql_as local .conn.json fallback test passed\n'

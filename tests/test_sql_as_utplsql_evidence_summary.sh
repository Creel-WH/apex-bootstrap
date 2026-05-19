#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/sql_as.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
RUN_ID="test-sql-as-utplsql-evidence"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/ci/f100"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}"

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi
}

trap cleanup EXIT

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

mkdir -p "${APP_DIR}/db/tests"

cat > "${APP_DIR}/db/tests/test_complete_suite.sql" <<'SQL'
prompt ut run
SQL

cat > "${CONN_FILE}" <<'JSON'
{
  "ci": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/password@host:1521/service",
    "DB_SCHEMA": "lab",
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "WORKSPACE_NAME"
  }
}
JSON

OMX_RUN_ID="${RUN_ID}" bash "${SCRIPT}" ci 100 @export/ci/f100/db/tests/test_complete_suite.sql

python3 - "${RESULT_DIR}/db/utplsql.summary.json" <<'PY'
import json
import pathlib
import sys

path = pathlib.Path(sys.argv[1])
assert path.exists(), "missing utplsql summary"

summary = json.loads(path.read_text())
assert summary["status"] == "success", summary
assert summary["action"] == "utplsql", summary
assert summary["target"] == "@export/ci/f100/db/tests/test_complete_suite.sql", summary
PY

printf 'sql_as utplsql evidence summary test passed\n'

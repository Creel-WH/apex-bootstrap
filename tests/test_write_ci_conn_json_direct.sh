#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/write_ci_conn_json.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"

cleanup() {
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

TARGET_DB_CONNECTION_MODE="direct" \
TARGET_DB_CONNECT_STRING="user/password@host:1521/service" \
TARGET_DB_SCHEMA="ci_schema" \
TARGET_DB_SQLCL_BIN="sql" \
APEX_WORKSPACE="CI_WORKSPACE" \
APEX_BUILDER_LOGIN_URL="https://example.test/ords/apex_authentication.login" \
APEX_BUILDER_USERNAME="admin" \
APEX_BUILDER_PASSWORD="secret" \
APEX_BROWSER_SMOKE_URL="https://example.test/ords/r/ci/app/home" \
APEX_BROWSER_EXPECT_TEXT="Home" \
bash "${SCRIPT}" ci

python3 - "${CONN_FILE}" <<'PY'
import json
import pathlib
import sys

config = json.loads(pathlib.Path(sys.argv[1]).read_text())
ci = config["ci"]

assert ci["DB_CONNECTION_MODE"] == "direct", ci
assert ci["DB_CONNECT_STRING"] == "user/password@host:1521/service", ci
assert ci["DB_SCHEMA"] == "ci_schema", ci
assert ci["DB_SQLCL_BIN"] == "sql", ci
assert ci["APEX_WORKSPACE"] == "CI_WORKSPACE", ci
assert ci["APEX_BUILDER_LOGIN_URL"].startswith("https://example.test/"), ci
assert ci["APEX_BUILDER_USERNAME"] == "admin", ci
assert ci["APEX_BUILDER_PASSWORD"] == "secret", ci
assert ci["APEX_BROWSER_SMOKE_URL"].endswith("/home"), ci
assert ci["APEX_BROWSER_EXPECT_TEXT"] == "Home", ci
PY

printf 'write_ci_conn_json direct test passed\n'

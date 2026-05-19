#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/write_ci_conn_json.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
TNS_DIR="$(mktemp -d)"

cleanup() {
  rm -rf "${TNS_DIR}"

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

cat > "${TNS_DIR}/tnsnames.ora" <<'EOF'
ci_high=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=example.test)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=ci_high)))
EOF

cat > "${TNS_DIR}/sqlnet.ora" <<'EOF'
WALLET_LOCATION=(SOURCE=(METHOD=file)(METHOD_DATA=(DIRECTORY="?/network/admin")))
EOF

TARGET_DB_CONNECTION_MODE="tns" \
TARGET_DB_USERNAME="ci_user" \
TARGET_DB_PASSWORD="ci_password" \
TARGET_DB_TNS_ALIAS="ci_high" \
TARGET_DB_TNS_ADMIN="${TNS_DIR}" \
TARGET_DB_SCHEMA="ci_schema" \
bash "${SCRIPT}" ci

python3 - "${CONN_FILE}" "${TNS_DIR}" <<'PY'
import json
import pathlib
import sys

config = json.loads(pathlib.Path(sys.argv[1]).read_text())
tns_dir = sys.argv[2]
ci = config["ci"]

assert ci["DB_CONNECTION_MODE"] == "tns", ci
assert ci["DB_USERNAME"] == "ci_user", ci
assert ci["DB_PASSWORD"] == "ci_password", ci
assert ci["DB_TNS_ALIAS"] == "ci_high", ci
assert ci["DB_TNS_ADMIN"] == tns_dir, ci
assert ci["DB_SCHEMA"] == "ci_schema", ci
assert ci["DB_SQLCL_BIN"] == "sql", ci
assert ci["APEX_WORKSPACE"] == "WORKSPACE_NAME", ci
PY

printf 'write_ci_conn_json tns test passed\n'

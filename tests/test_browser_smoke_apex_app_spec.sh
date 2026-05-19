#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="${ROOT_DIR}/tools/browser_smoke_apex.sh"
CONN_FILE="${ROOT_DIR}/conn.json"
CONN_BACKUP_FILE="${ROOT_DIR}/conn.json.test-backup"
LOCAL_CONN_FILE="${ROOT_DIR}/.conn.json"
LOCAL_CONN_BACKUP_FILE="${ROOT_DIR}/.conn.json.test-backup"
RUN_ID="test-browser-smoke-apex-app-spec"
RESULT_DIR="${ROOT_DIR}/.omx/results/${RUN_ID}"
APP_DIR="${ROOT_DIR}/export/oci/f108"
RUNNER="$(mktemp)"

cleanup() {
  rm -rf "${RESULT_DIR}" "${APP_DIR}"
  rm -f "${RUNNER}"

  if [[ -f "${CONN_BACKUP_FILE}" ]]; then
    mv "${CONN_BACKUP_FILE}" "${CONN_FILE}"
  else
    rm -f "${CONN_FILE}"
  fi

  if [[ -f "${LOCAL_CONN_BACKUP_FILE}" ]]; then
    mv "${LOCAL_CONN_BACKUP_FILE}" "${LOCAL_CONN_FILE}"
  fi
}

trap cleanup EXIT

if [[ -f "${CONN_FILE}" ]]; then
  mv "${CONN_FILE}" "${CONN_BACKUP_FILE}"
fi

if [[ -f "${LOCAL_CONN_FILE}" ]]; then
  mv "${LOCAL_CONN_FILE}" "${LOCAL_CONN_BACKUP_FILE}"
fi

mkdir -p "${APP_DIR}/docs"

cat > "${CONN_FILE}" <<'JSON'
{
  "oci": {
    "DB_CONNECTION_MODE": "direct",
    "DB_CONNECT_STRING": "user/\"password\"@//127.0.0.1:1528/ORCLPDB1",
    "DB_SCHEMA": "dev",
    "DB_SQLCL_BIN": "true",
    "APEX_WORKSPACE": "dev",
    "APEX_BUILDER_LOGIN_URL": "https://example.test/login",
    "APEX_BUILDER_USERNAME": "admin",
    "APEX_BUILDER_PASSWORD": "secret"
  }
}
JSON

cat > "${APP_DIR}/docs/browser-smoke.json" <<'JSON'
{
  "label": "forums-{app_id}",
  "url": "https://example.test/ords/r/{workspace}/app-{app_id}/home",
  "contains_text": "App {app_id} Ready",
  "selector": "#region-{spec_app_id}"
}
JSON

cat > "${RUNNER}" <<'SH'
#!/usr/bin/env bash
set -euo pipefail
spec="$1"
out_dir="$2"
mkdir -p "${out_dir}"
python3 - "${spec}" "${out_dir}" <<'PY'
import json
import pathlib
import sys

spec = json.loads(pathlib.Path(sys.argv[1]).read_text())
assert spec["url"] == "https://example.test/ords/r/dev/app-205/home", spec
assert spec["label"] == "forums-205", spec
assert spec["contains_text"] == "App 205 Ready", spec
assert spec["selector"] == "#region-108", spec
assert spec["login_url"] == "https://example.test/login", spec
assert spec["workspace"] == "dev", spec
assert spec["username"] == "admin", spec
assert spec["password"] == "secret", spec

payload = {
    "status": "success",
    "message": "ok",
    "attachments": [],
}
(pathlib.Path(sys.argv[2]) / "result.json").write_text(json.dumps(payload, indent=2) + "\n")
PY
SH
chmod +x "${RUNNER}"

OMX_RUN_ID="${RUN_ID}" BROWSER_SMOKE_RUNNER="${RUNNER}" bash "${SCRIPT}" oci 108 --runtime-app-id 205

python3 - "${RESULT_DIR}/browser/summary.json" "${RESULT_DIR}/contract/summary.json" <<'PY'
import json
import pathlib
import sys

summary = json.loads(pathlib.Path(sys.argv[1]).read_text())
contract = json.loads(pathlib.Path(sys.argv[2]).read_text())
assert summary["status"] == "success", summary
assert summary["target"] == "forums-205:https://example.test/ords/r/dev/app-205/home", summary
assert "secret" not in contract["command"], contract
assert "REDACTED" in contract["command"], contract
PY

printf 'browser smoke apex app spec test passed\n'

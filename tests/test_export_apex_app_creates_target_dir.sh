#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

TMP_DIR="$(mktemp -d)"
APP_DIR="${TMP_DIR}/export/source@oci/f100"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "source@oci": {
    "env_name": "source@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "source_user/password@127.0.0.1:1521/ORCLPDB1",
    "db_schema": "source_schema",
    "apex_workspace": "SOURCE_WS"
  }
}
JSON

load_env_context() {
  local env_alias="$1"
  local app_id="$2"

  DB_ENV_NAME="${env_alias}"
  DB_SCHEMA="source_schema"
  APEX_APP_ID="${app_id}"
  APEX_WORKSPACE="SOURCE_WS"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#${env_alias}"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
  APP_DOCS_DIR="${APP_DIR}/docs"
  BOOTSTRAP_REPORT_MD="${APP_DOCS_DIR}/bootstrap_report.md"
  BOOTSTRAP_REPORT_JSON="${APP_DOCS_DIR}/bootstrap_report.json"
}

ensure_sqlcl() { :; }
ensure_java() { :; }
validate_tns_config() { :; }
show_env_summary() { :; }
run_sqlcl() {
  cat >/dev/null
}

main 'source@oci' 100 nodb

if [[ ! -d "${APP_DIR}/apex" ]]; then
  printf 'Expected export_apex_app to create the target app directory for a fresh environment export.\n' >&2
  exit 1
fi

if grep -q "${TMP_DIR}" "${APP_DIR}/docs/bootstrap_report.md" "${APP_DIR}/docs/bootstrap_report.json"; then
  printf 'Expected bootstrap report to avoid machine-local absolute paths.\n' >&2
  exit 1
fi

if ! grep -q 'export/source@oci/f100/apex' "${APP_DIR}/docs/bootstrap_report.md"; then
  printf 'Expected bootstrap report to include repo-relative export directory.\n' >&2
  exit 1
fi

printf 'export_apex_app creates target dir test passed\n'

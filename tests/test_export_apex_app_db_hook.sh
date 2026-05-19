#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_DIR="${ROOT_DIR}/export/dev@oci/f100"

# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

run_sqlcl() {
  cat >/dev/null
}

load_target_env() {
  local env_name="$1"
  local app_id="$2"

  if [[ "${env_name}" != "dev@oci" || "${app_id}" != "100" ]]; then
    printf 'Unexpected target args: %s %s\n' "${env_name}" "${app_id}" >&2
    exit 1
  fi

  APP_CODE="f100"
  APEX_APP_ID="100"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
  APP_DOCS_DIR="${APP_DIR}/docs"
  BOOTSTRAP_REPORT_MD="${APP_DOCS_DIR}/bootstrap_report.md"
  BOOTSTRAP_REPORT_JSON="${APP_DOCS_DIR}/bootstrap_report.json"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#dev@oci"
  DB_ENV_NAME="dev@oci"
  DB_SCHEMA="lab"
  APEX_WORKSPACE="TEST_WS"
}

ensure_sqlcl() { :; }
ensure_java() { :; }
validate_tns_config() { :; }
show_env_summary() { :; }

captured_db_export=""
export_apex_db() {
  captured_db_export="$*"
}

mkdir -p "${APP_DIR}/apex" "${APP_DIR}/docs"

main 'dev@oci' 100

if [[ "${captured_db_export}" != "dev@oci 100" ]]; then
  printf 'Expected export_apex_db hook to receive positional args dev@oci 100\n' >&2
  exit 1
fi

printf 'export_apex_app db hook test passed\n'

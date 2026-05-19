#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_DIR="${ROOT_DIR}/export/source@oci/f100"

# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

mkdir -p "${APP_DIR}/apex"

captured_db_export=""
captured_report=0

cleanup() {
  rm -rf "${ROOT_DIR}/export/source@oci"
}

trap cleanup EXIT

load_target_env() {
  APP_CODE="f100"
  APP_DIR="${APP_DIR}"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#source@oci"
  DB_ENV_NAME="source@oci"
  DB_SCHEMA="source_schema"
  APEX_APP_ID="100"
  APEX_WORKSPACE="APEXCN"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
  APP_DOCS_DIR="${APP_DIR}/docs"
  BOOTSTRAP_REPORT_MD="${APP_DOCS_DIR}/bootstrap_report.md"
  BOOTSTRAP_REPORT_JSON="${APP_DOCS_DIR}/bootstrap_report.json"
}

ensure_sqlcl() { :; }
ensure_java() { :; }
validate_tns_config() { :; }
show_env_summary() { :; }
detect_sqlcl_bin() { printf 'sql\n'; }
detect_java_home() { printf '/tmp/java\n'; }
run_sqlcl() { return 1; }
export_apex_db() { captured_db_export="$*"; }
bootstrap_report() { captured_report=1; }

set +e
main 'source@oci' 100 > /tmp/export_apex_app_failure.out 2>&1
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected export_apex_app to fail when the SQL connectivity check fails.\n' >&2
  exit 1
fi

if [[ -n "${captured_db_export}" ]]; then
  printf 'Did not expect DB export to run after a failed connectivity check.\n' >&2
  exit 1
fi

if [[ "${captured_report}" -ne 0 ]]; then
  printf 'Did not expect bootstrap_report to run after a failed connectivity check.\n' >&2
  exit 1
fi

if grep -q 'APEX export complete' /tmp/export_apex_app_failure.out; then
  printf 'Did not expect success output after a failed connectivity check.\n' >&2
  exit 1
fi

printf 'export_apex_app connection failure test passed\n'

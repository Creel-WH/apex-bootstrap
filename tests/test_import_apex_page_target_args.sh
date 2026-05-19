#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ENV_ALIAS="dev@oci"
APP_ID="91001"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/${ENV_ALIAS}/${APP_CODE}"
EXPORT_DIR="${APP_DIR}/apex/application"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -rf "${APP_DIR}"
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_page.sh
source "${ROOT_DIR}/tools/import_apex_page.sh"

captured_args=""

load_target_env() {
  captured_args="$*"
  APP_CODE="${APP_CODE}"
  APEX_APP_ID="${APP_ID}"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
}

ensure_sqlcl() { :; }
apex_app_exists() { return 0; }
run_sqlcl() {
  cat > "${CAPTURE_FILE}"
}

mkdir -p "${EXPORT_DIR}/pages"
touch "${EXPORT_DIR}/set_environment.sql" "${EXPORT_DIR}/end_environment.sql" "${EXPORT_DIR}/pages/page_00010.sql"

main "${ENV_ALIAS}" "${APP_ID}" 10

if [[ "${captured_args}" != "${ENV_ALIAS} ${APP_ID}" ]]; then
  printf 'Expected load_target_env args to be: %s %s\n' "${ENV_ALIAS}" "${APP_ID}" >&2
  exit 1
fi

captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"@${EXPORT_DIR}/set_environment.sql"* || "${captured_sql}" != *"@${EXPORT_DIR}/pages/page_00010.sql"* || "${captured_sql}" != *"@${EXPORT_DIR}/end_environment.sql"* ]]; then
  printf 'Unexpected page import SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'import_apex_page target args test passed\n'

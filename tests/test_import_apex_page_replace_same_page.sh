#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_ID="91003"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/dev@oci/${APP_CODE}"
EXPORT_DIR="${APP_DIR}/apex/${APP_CODE}/application"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -rf "${APP_DIR}"
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_page.sh
source "${ROOT_DIR}/tools/import_apex_page.sh"

load_target_env() {
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
touch "${EXPORT_DIR}/set_environment.sql" \
  "${EXPORT_DIR}/end_environment.sql" \
  "${EXPORT_DIR}/pages/page_00010.sql" \
  "${EXPORT_DIR}/pages/delete_00010.sql"

main 'dev@oci' "${APP_ID}" 10
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"@${EXPORT_DIR}/pages/delete_00010.sql"* ]]; then
  printf 'Expected delete script before same-page import: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"@${EXPORT_DIR}/pages/page_00010.sql"* ]]; then
  printf 'Expected page import script for same-page import: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(${APP_ID});"* ]]; then
  printf 'Expected same-page import to pin the target application id: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *@${EXPORT_DIR}/pages/delete_00010.sql$'\n'@${EXPORT_DIR}/pages/page_00010.sql* ]]; then
  printf 'Expected delete script to run before page import: %s\n' "${captured_sql}" >&2
  exit 1
fi

main 'dev@oci' "${APP_ID}" 10 200 10
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"@${EXPORT_DIR}/pages/delete_00010.sql"* ]]; then
  printf 'Expected delete script for cross-app same-page import: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'import_apex_page replace same page test passed\n'

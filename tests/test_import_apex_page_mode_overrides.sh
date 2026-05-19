#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_ID="91002"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/dev@oci/${APP_CODE}"
EXPORT_DIR="${APP_DIR}/apex/application"
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
touch "${EXPORT_DIR}/set_environment.sql" "${EXPORT_DIR}/end_environment.sql" "${EXPORT_DIR}/pages/page_00010.sql"

main 'dev@oci' "${APP_ID}" 10 200
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(200);"* ]]; then
  printf 'Expected explicit target app id override in page SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.generate_offset"* ]]; then
  printf 'Expected generated offset in page SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

main 'dev@oci' "${APP_ID}" 10 200 20
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_page_id(20);"* ]]; then
  printf 'Expected explicit target page id override in page SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'import_apex_page mode overrides test passed\n'

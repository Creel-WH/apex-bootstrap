#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_ENV="dev@oci"
APP_DIR="${ROOT_DIR}/export/${APP_ENV}/f100"
APEX_DIR="${APP_DIR}/apex"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -rf "${APP_DIR}"
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

load_env_context() {
  APP_CODE="f${2}"
  APP_DIR="${ROOT_DIR}/export/${1}/f${2}"
  APEX_APP_ID="${2}"
  APEX_WORKSPACE="WORKSPACE_NAME"
}

lookup_target_app_identity() { :; }
lookup_target_app_identity_by_alias() { :; }
ensure_sqlcl() { :; }
run_sqlcl() {
  cat > "${CAPTURE_FILE}"
}

mkdir -p "${APEX_DIR}"
touch "${APEX_DIR}/install.sql"

main 'dev@oci' 100
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(100);"* ]]; then
  printf 'Expected overwrite mode to set source app id in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"wwv_flow_imp.remove_flow(100);"* ]]; then
  printf 'Expected overwrite mode to remove existing app before import: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.generate_offset;"* ]]; then
  printf 'Expected generated offset in overwrite mode SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.set_auto_install_sup_obj(true);"* ]]; then
  printf 'Expected overwrite mode to auto-install supporting objects: %s\n' "${captured_sql}" >&2
  exit 1
fi

touch "${APEX_DIR}/install.sql"
main 'dev@oci' 100 200
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(200);"* ]]; then
  printf 'Expected explicit target app id override in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.generate_offset"* ]]; then
  printf 'Expected generated offset in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.set_auto_install_sup_obj(true);"* ]]; then
  printf 'Expected target override mode to auto-install supporting objects: %s\n' "${captured_sql}" >&2
  exit 1
fi

APEX_IMPORT_APP_ALIAS='apex-forums'
export APEX_IMPORT_APP_ALIAS
main 'dev@oci' 100 200
captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_application_alias('apex-forums');"* ]]; then
  printf 'Expected target app alias override in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

unset APEX_IMPORT_APP_ALIAS

printf 'import_apex_app mode overrides test passed\n'

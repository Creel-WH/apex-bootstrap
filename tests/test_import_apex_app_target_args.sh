#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_ENV="dev@oci"
APP_ID="91003"
APP_CODE="f${APP_ID}"
APP_DIR="${ROOT_DIR}/export/${APP_ENV}/${APP_CODE}"
APEX_DIR="${APP_DIR}/apex"
NESTED_EXPORT_DIR="${APEX_DIR}/${APP_CODE}"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -rf "${APP_DIR}"
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

captured_args=""
captured_install_source=""

load_env_context() {
  captured_args="$*"
  APP_CODE="${APP_CODE}"
  APP_DIR="${APP_DIR}"
  APEX_APP_ID="${APP_ID}"
  APEX_WORKSPACE="WORKSPACE_NAME"
}

build_filtered_install_script() {
  captured_install_source="$1"
  printf 'prompt filtered install\n' > "$2"
}

lookup_target_app_identity() { :; }
lookup_target_app_identity_by_alias() { :; }
ensure_sqlcl() { :; }
run_sqlcl() {
  if [[ $# -gt 0 ]]; then
    printf '%s\n' "$*" > "${CAPTURE_FILE}"
  else
    cat > "${CAPTURE_FILE}"
  fi
}

mkdir -p "${NESTED_EXPORT_DIR}"

cat > "${NESTED_EXPORT_DIR}/install.sql" <<'SQL'
prompt nested install reached
SQL

main "${APP_ENV}" "${APP_ID}"

if [[ "${captured_args}" != "${APP_ENV} ${APP_ID}" ]]; then
  printf 'Expected load_env_context args to be: %s %s\n' "${APP_ENV}" "${APP_ID}" >&2
  exit 1
fi

captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_workspace_id(apex_util.find_security_group_id(p_workspace => 'WORKSPACE_NAME'));"* ]]; then
  printf 'Expected workspace initialization SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"@"*"/.filtered_install.sql"* ]]; then
  printf 'Unexpected install script invocation: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.set_auto_install_sup_obj(true);"* ]]; then
  printf 'Expected import SQL to auto-install supporting objects: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_install_source}" != "${NESTED_EXPORT_DIR}/install.sql" ]]; then
  printf 'Expected nested install.sql to be selected, got: %s\n' "${captured_install_source}" >&2
  exit 1
fi

printf 'import_apex_app target args test passed\n'

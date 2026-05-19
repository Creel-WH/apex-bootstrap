#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SOURCE_ENV="source@oci"
TARGET_ENV="dev@oci"
SOURCE_APP_ID="100"
AUTO_TARGET_APP_ID="8843242"
SOURCE_APP_CODE="f${SOURCE_APP_ID}"
SOURCE_APP_DIR="${ROOT_DIR}/export/${SOURCE_ENV}/${SOURCE_APP_CODE}"
SOURCE_APEX_DIR="${SOURCE_APP_DIR}/apex"
SOURCE_NESTED_EXPORT_DIR="${SOURCE_APEX_DIR}/${SOURCE_APP_CODE}"
CAPTURE_FILE="$(mktemp)"
OUTPUT_FILE="$(mktemp)"

cleanup() {
  rm -rf "${SOURCE_APP_DIR}"
  rm -f "${CAPTURE_FILE}"
  rm -f "${OUTPUT_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

load_env_context() {
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#${1}"
  DB_ENV_NAME="${1}"
  APEX_WORKSPACE="DEV"
}

build_filtered_install_script() {
  printf 'prompt filtered install\n' > "$2"
}

build_post_import_code_sync_script() {
  : > "$2"
}

lookup_target_app_identity() { :; }
ensure_sqlcl() { :; }
run_sqlcl() {
  local input=""
  input="$(cat)"

  if [[ "${input}" == *"from apex_applications"* && "${input}" == *"max(application_id)"* ]]; then
    if [[ "${input}" == *"to_char("* ]]; then
      printf '%s\n' "${AUTO_TARGET_APP_ID}"
    else
      printf '8,843,242\n'
    fi
    return 0
  fi

  printf '%s' "${input}" > "${CAPTURE_FILE}"
}

mkdir -p "${SOURCE_NESTED_EXPORT_DIR}"

cat > "${SOURCE_NESTED_EXPORT_DIR}/install.sql" <<'SQL'
prompt nested install reached
SQL

set +e
main "${SOURCE_ENV}" "${SOURCE_APP_ID}" "${TARGET_ENV}" >"${OUTPUT_FILE}" 2>&1
status=$?
set -e

if [[ "${status}" -ne 0 ]]; then
  printf 'Expected NLS-safe auto target app id resolution to succeed.\n' >&2
  cat "${OUTPUT_FILE}" >&2
  exit 1
fi

captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(${AUTO_TARGET_APP_ID});"* ]]; then
  printf 'Expected normalized auto target app id in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'import_apex_app auto target id NLS-safe test passed\n'

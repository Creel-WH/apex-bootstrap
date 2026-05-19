#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SOURCE_ENV="source@test"
TARGET_ENV="target@test"
SOURCE_APP_ID="100"
AUTO_TARGET_APP_ID="108"
SOURCE_APP_CODE="f${SOURCE_APP_ID}"
SOURCE_APP_DIR="${ROOT_DIR}/export/${SOURCE_ENV}/${SOURCE_APP_CODE}"
SOURCE_APEX_DIR="${SOURCE_APP_DIR}/apex"
SOURCE_NESTED_EXPORT_DIR="${SOURCE_APEX_DIR}/${SOURCE_APP_CODE}"
CAPTURE_FILE="$(mktemp)"
LOOKUP_CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -rf "${SOURCE_APP_DIR}"
  rm -f "${CAPTURE_FILE}"
  rm -f "${LOOKUP_CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

captured_env_context_args=""
captured_install_source=""

load_env_context() {
  captured_env_context_args="$*"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#${1}"
  DB_ENV_NAME="${1}"
  APEX_WORKSPACE="DEV"
}

build_filtered_install_script() {
  captured_install_source="$1"
  printf 'prompt filtered install\n' > "$2"
}

lookup_target_app_identity() { :; }
ensure_sqlcl() { :; }
run_sqlcl() {
  local input=""
  input="$(cat)"

  if [[ "${input}" == *"where workspace = 'DEV'"* && "${input}" == *"application_id = trunc(application_id)"* ]]; then
    printf '%s' "${input}" > "${LOOKUP_CAPTURE_FILE}"
    printf '%s\n' "${AUTO_TARGET_APP_ID}"
    return 0
  fi

  printf '%s' "${input}" > "${CAPTURE_FILE}"
}

mkdir -p "${SOURCE_NESTED_EXPORT_DIR}"

cat > "${SOURCE_NESTED_EXPORT_DIR}/install.sql" <<'SQL'
prompt nested install reached
SQL

main "${SOURCE_ENV}" "${SOURCE_APP_ID}" "${TARGET_ENV}"

if [[ "${captured_env_context_args}" != "${TARGET_ENV}" ]]; then
  printf 'Expected load_env_context args to be: %s\n' "${TARGET_ENV}" >&2
  printf 'Actual args: %s\n' "${captured_env_context_args}" >&2
  exit 1
fi

captured_lookup_sql="$(<"${LOOKUP_CAPTURE_FILE}")"

if [[ "${captured_lookup_sql}" != *"where workspace = 'DEV'"* || "${captured_lookup_sql}" != *"application_id = trunc(application_id)"* ]]; then
  printf 'Expected auto target app id lookup SQL, got: %s\n' "${captured_lookup_sql}" >&2
  exit 1
fi

if [[ "${captured_install_source}" != "${SOURCE_NESTED_EXPORT_DIR}/install.sql" ]]; then
  printf 'Expected source install.sql from %s, got: %s\n' "${SOURCE_NESTED_EXPORT_DIR}" "${captured_install_source}" >&2
  exit 1
fi

captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *"apex_application_install.set_workspace_id(apex_util.find_security_group_id(p_workspace => 'DEV'));"* ]]; then
  printf 'Expected target workspace initialization SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

if [[ "${captured_sql}" != *"apex_application_install.set_application_id(${AUTO_TARGET_APP_ID});"* ]]; then
  printf 'Expected auto target app id in SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'import_apex_app cross env auto target id test passed\n'

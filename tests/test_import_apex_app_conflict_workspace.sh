#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
SOURCE_ENV="source@test"
TARGET_ENV="target@test"
SOURCE_APP_ID="100"
TARGET_APP_ID="103"
SOURCE_APP_CODE="f${SOURCE_APP_ID}"
SOURCE_APP_DIR="${ROOT_DIR}/export/${SOURCE_ENV}/${SOURCE_APP_CODE}"
SOURCE_APEX_DIR="${SOURCE_APP_DIR}/apex"
SOURCE_NESTED_EXPORT_DIR="${SOURCE_APEX_DIR}/${SOURCE_APP_CODE}"
OUTPUT_FILE="$(mktemp)"

cleanup() {
  rm -rf "${SOURCE_APP_DIR}"
  rm -f "${OUTPUT_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

load_env_context() {
  APP_CODE="f${2}"
  APP_DIR="${ROOT_DIR}/export/${1}/f${2}"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#${1}"
  APEX_WORKSPACE="DEV"
}

build_filtered_install_script() {
  printf 'prompt filtered install\n' > "$2"
}

lookup_target_app_identity() {
  printf 'LAB|103|Sample REST Services\n'
}

ensure_sqlcl() { :; }
run_sqlcl() {
  printf 'Import stage should not run when target app id is already owned by another workspace.\n' >&2
  return 1
}

mkdir -p "${SOURCE_NESTED_EXPORT_DIR}"

cat > "${SOURCE_NESTED_EXPORT_DIR}/install.sql" <<'SQL'
prompt nested install reached
SQL

set +e
(
  set -e
  main "${SOURCE_ENV}" "${SOURCE_APP_ID}" "${TARGET_ENV}" "${TARGET_APP_ID}"
) >"${OUTPUT_FILE}" 2>&1
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected cross-workspace app id conflict to fail.\n' >&2
  exit 1
fi

if ! grep -Fq 'Target app id 103 is already used by workspace LAB (Sample REST Services).' "${OUTPUT_FILE}"; then
  printf 'Expected explicit conflicting workspace message.\n' >&2
  cat "${OUTPUT_FILE}" >&2
  exit 1
fi

printf 'import_apex_app conflict workspace test passed\n'

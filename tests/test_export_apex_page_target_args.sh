#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
ENV_ALIAS="dev@oci"
APP_DIR="${ROOT_DIR}/export/${ENV_ALIAS}/f100"
CAPTURE_FILE="$(mktemp)"

cleanup() {
  rm -f "${CAPTURE_FILE}"
}

trap cleanup EXIT

# shellcheck source=../tools/export_apex_page.sh
source "${ROOT_DIR}/tools/export_apex_page.sh"

captured_args=""
load_target_env() {
  captured_args="$*"
  APP_CODE="f100"
  APEX_APP_ID="100"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
  APEX_WORKSPACE="WORKSPACE_NAME"
}

ensure_sqlcl() { :; }
run_sqlcl() {
  cat > "${CAPTURE_FILE}"
}

main "${ENV_ALIAS}" 100 10

if [[ "${captured_args}" != "${ENV_ALIAS} 100" ]]; then
  printf 'Expected load_target_env args to be: %s 100\n' "${ENV_ALIAS}" >&2
  exit 1
fi

captured_sql="$(<"${CAPTURE_FILE}")"

if [[ "${captured_sql}" != *'apex export -applicationid 100 -split -expcomponents "PAGE:10"'* ]]; then
  printf 'Unexpected page export SQL: %s\n' "${captured_sql}" >&2
  exit 1
fi

printf 'export_apex_page target args test passed\n'

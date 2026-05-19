#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_ENV="dev@oci"
APP_DIR="${ROOT_DIR}/export/${APP_ENV}/f100"
APEX_DIR="${APP_DIR}/apex"

cleanup() {
  rm -rf "${APP_DIR}"
}

trap cleanup EXIT

# shellcheck source=../tools/import_apex_app.sh
source "${ROOT_DIR}/tools/import_apex_app.sh"

load_env_context() {
  APP_CODE="f${2}"
  APP_DIR="${ROOT_DIR}/export/${1}/f${2}"
  APEX_APP_ID="${2}"
  APEX_WORKSPACE="DEV"
}

lookup_target_app_identity() { :; }
lookup_next_available_app_id() { printf '101\n'; }
lookup_target_app_identity_by_alias() {
  printf 'DEV|108|APEX中文社区\n'
}
ensure_sqlcl() { :; }
run_sqlcl() { cat >/dev/null; }

mkdir -p "${APEX_DIR}"
touch "${APEX_DIR}/install.sql"

set +e
output="$(APEX_IMPORT_APP_ALIAS='apex-forums' main 'dev@oci' 100 2>&1)"
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected import to fail when alias apex-forums is already occupied\n' >&2
  exit 1
fi

if [[ "${output}" != *'Target application alias apex-forums is already used by workspace DEV (app 108: APEX中文社区).'*
   || "${output}" != *'Remove or rename the existing application before importing a new app with this alias.'* ]]; then
  printf 'Unexpected alias guard output: %s\n' "${output}" >&2
  exit 1
fi

printf 'import_apex_app alias guard test passed\n'

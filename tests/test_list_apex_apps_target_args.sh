#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/list_apex_apps.sh
source "${ROOT_DIR}/tools/list_apex_apps.sh"

OUTPUT_FILE="$(mktemp)"

cleanup() {
  rm -f "${OUTPUT_FILE}"
}

trap cleanup EXIT

load_env_context() {
  local env_name="$1"

  if [[ "${env_name}" != "lab@adb" ]]; then
    printf 'Unexpected env alias: %s\n' "${env_name}" >&2
    exit 1
  fi

  APEX_WORKSPACE="LAB"
}

ensure_sqlcl() { :; }

run_sqlcl() {
  cat > "${OUTPUT_FILE}"
}

main 'lab@adb'
output="$(<"${OUTPUT_FILE}")"

if [[ "${output}" != *"set heading off"* ]]; then
  printf 'Expected heading suppression in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"set feedback off"* ]]; then
  printf 'Expected feedback suppression in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"set verify off"* ]]; then
  printf 'Expected verify suppression in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"set pages 0"* ]]; then
  printf 'Expected pages setting in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"set trimspool on"* ]]; then
  printf 'Expected trimspool setting in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"select application_id || '|' || application_name"* ]]; then
  printf 'Expected application projection in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"where workspace = 'LAB'"* ]]; then
  printf 'Expected default workspace in SQL: %s\n' "${output}" >&2
  exit 1
fi

main 'lab@adb' 'ALT_WS'
output="$(<"${OUTPUT_FILE}")"

if [[ "${output}" != *"where workspace = 'ALT_WS'"* ]]; then
  printf 'Expected explicit workspace override in SQL: %s\n' "${output}" >&2
  exit 1
fi

if [[ "${output}" != *"order by application_id;"* ]]; then
  printf 'Expected stable ordering in SQL: %s\n' "${output}" >&2
  exit 1
fi

printf 'list_apex_apps target args test passed\n'

#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/sql_as.sh
source "${ROOT_DIR}/tools/sql_as.sh"

captured_app=""
OUTPUT_FILE="$(mktemp)"

cleanup() {
  rm -f "${OUTPUT_FILE}"
}

trap cleanup EXIT

load_db_env() {
  captured_app="$1"
}

load_env_context() {
  APP_CODE="env-only"
  DB_CONNECT_STRING="user/password@host:port/service"
}

ensure_sqlcl() { :; }
show_env_summary() { :; }
run_sqlcl() {
  cat > "${OUTPUT_FILE}"
}

main 'dev@oci' -c "select user from dual;"
output="$(<"${OUTPUT_FILE}")"

if [[ "${captured_app}" != "" ]]; then
  printf 'Did not expect env-only SQL to require load_db_env\n' >&2
  exit 1
fi

if [[ "${output}" != *"select user from dual;"* ]]; then
  printf 'Expected env-only SQL text to be passed to run_sqlcl: %s\n' "${output}" >&2
  exit 1
fi

main 'dev@oci' 200 -c "select sysdate from dual;"
output="$(<"${OUTPUT_FILE}")"

if [[ "${captured_app}" != "f200" ]]; then
  printf 'Expected explicit app resolution to use f200\n' >&2
  exit 1
fi

if [[ "${output}" != *"select sysdate from dual;"* ]]; then
  printf 'Expected explicit SQL text to be passed to run_sqlcl: %s\n' "${output}" >&2
  exit 1
fi

script_output="$(main 'dev@oci' @export/dev@oci/f100/db/install.sql 2>&1 || true)"

if [[ "${script_output}" != *"App id is required when executing an application SQL script."* ]]; then
  printf 'Expected env-only script execution to be rejected: %s\n' "${script_output}" >&2
  exit 1
fi

printf 'sql_as target args test passed\n'

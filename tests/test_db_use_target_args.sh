#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/db_use.sh
source "${ROOT_DIR}/tools/db_use.sh"

captured_app=""
OUTPUT_FILE="$(mktemp)"

cleanup() {
  rm -f "${OUTPUT_FILE}"
}

trap cleanup EXIT

load_db_env() {
  captured_app="$1"
  APP_CODE="$1"
}

ensure_sqlcl() { :; }
show_env_summary() { :; }

main 'dev@oci' 200 show > "${OUTPUT_FILE}"
output="$(<"${OUTPUT_FILE}")"

if [[ "${captured_app}" != "f200" ]]; then
  printf 'Expected db_use explicit app resolution to use f200\n' >&2
  exit 1
fi

if [[ "${output}" != "f200" ]]; then
  printf 'Expected db_use show output to be f200\n' >&2
  exit 1
fi

printf 'db_use target args test passed\n'

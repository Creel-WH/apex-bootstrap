#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
APP_DIR="${ROOT_DIR}/export/dev@oci/f100"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

captured_args=""
load_target_env() {
  captured_args="$*"
  APP_CODE="f100"
  APP_DIR="${APP_DIR}"
  APP_CONFIG_FILE="${ROOT_DIR}/conn.json#dev@oci"
  APEX_EXPORT_DIR="${APP_DIR}/apex"
  DB_SCHEMA="lab"
}

ensure_sqlcl() { :; }
ensure_object_dirs() { :; }
collect_candidate_names() { :; }
export_candidate_objects() { :; }

main 'dev@oci' 100

if [[ "${captured_args}" != "dev@oci 100" ]]; then
  printf 'Expected load_target_env args to be: dev@oci 100\n' >&2
  printf 'Actual args: %s\n' "${captured_args}" >&2
  exit 1
fi

printf 'export_apex_db target args test passed\n'

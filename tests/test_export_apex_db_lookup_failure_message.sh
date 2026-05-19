#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

APP_DIR="${tmp_dir}/f100"
DB_SCHEMA="lab"
mkdir -p "${APP_DIR}"

candidate_file="${tmp_dir}/candidates.txt"
printf 'FOO_BAR\n' > "${candidate_file}"

run_sqlcl() {
  cat >/dev/null
  printf 'ORA-01017: invalid username/password; logon denied\n'
  return 1
}

output_file="${tmp_dir}/output.log"
set +e
export_candidate_objects "${candidate_file}" >"${output_file}" 2>&1
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected export_candidate_objects to fail when lookup SQL fails.\n' >&2
  exit 1
fi

if ! grep -Fq 'ORA-01017: invalid username/password; logon denied' "${output_file}"; then
  printf 'Expected original SQLcl error output to be preserved.\n' >&2
  exit 1
fi

if ! grep -Fq 'Failed to look up candidate DB objects in schema LAB.' "${output_file}"; then
  printf 'Expected explicit lookup failure context message.\n' >&2
  exit 1
fi

printf 'export_apex_db lookup failure message test passed\n'

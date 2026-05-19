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

call_counter_file="${tmp_dir}/sqlcl.calls"
printf '0\n' > "${call_counter_file}"

run_sqlcl() {
  local call_count=0
  call_count="$(cat "${call_counter_file}")"
  call_count=$((call_count + 1))
  printf '%s\n' "${call_count}" > "${call_counter_file}"

  case "${call_count}" in
    1)
      printf 'TABLE|FOO_BAR\n'
      ;;
    2)
      cat <<'EOF'
__OBJECT_START__|TABLE|FOO_BAR
__OBJECT_END__|TABLE|FOO_BAR
EOF
      ;;
    *)
      return 1
      ;;
  esac
}

output_file="${tmp_dir}/output.log"
set +e
export_candidate_objects "${candidate_file}" >"${output_file}" 2>&1
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected export_candidate_objects to fail when batch DDL is empty.\n' >&2
  exit 1
fi

if ! grep -Fq 'Empty DDL returned for TABLE FOO_BAR' "${output_file}"; then
  printf 'Expected explicit empty DDL error message.\n' >&2
  exit 1
fi

printf 'export_apex_db error message test passed\n'

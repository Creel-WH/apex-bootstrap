#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/export_apex_db.sh
source "${ROOT_DIR}/tools/export_apex_db.sh"

assert_contains_line() {
  local file="$1"
  local expected="$2"

  if ! grep -Fxq "${expected}" "${file}"; then
    printf 'Expected candidate not found: %s\n' "${expected}" >&2
    exit 1
  fi
}

tmp_dir="$(mktemp -d)"
trap 'rm -rf "${tmp_dir}"' EXIT

EXPORTED_APP_DIR="${tmp_dir}/f100"
mkdir -p "${EXPORTED_APP_DIR}/application/pages"

cat > "${EXPORTED_APP_DIR}/application/pages/page_00010.sql" <<'SQL'
begin
  wwv_flow_imp_page.create_page_plug(
    p_query_table=>'CUX_DOC_CHUNK'
  );
  wwv_flow_imp_page.create_page_plug(
    p_query_table=>'CUX_CONFIG'
  );
  execute immediate 'select * from cux_doc';
end;
/
SQL

candidate_file="${tmp_dir}/candidates.txt"
collect_candidate_names "${candidate_file}"

assert_contains_line "${candidate_file}" "CUX_DOC_CHUNK"
assert_contains_line "${candidate_file}" "CUX_CONFIG"
assert_contains_line "${candidate_file}" "CUX_DOC"

printf 'export_apex_db candidate extraction test passed\n'

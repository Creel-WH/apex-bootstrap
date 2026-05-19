#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

BASE_ENV="canon-dev@ci"
TARGET_ENV="canon-test@ci"
BASE_APP_ID="101"
TARGET_APP_ID="900"
BASE_APP_DIR="${ROOT_DIR}/export/${BASE_ENV}/f${BASE_APP_ID}"
TARGET_APP_DIR="${ROOT_DIR}/export/${TARGET_ENV}/f${TARGET_APP_ID}"

cleanup() {
  rm -rf "${BASE_APP_DIR}" "${TARGET_APP_DIR}"
  rmdir "${ROOT_DIR}/export/${BASE_ENV}" 2>/dev/null || true
  rmdir "${ROOT_DIR}/export/${TARGET_ENV}" 2>/dev/null || true
}

trap cleanup EXIT

mkdir -p \
  "${BASE_APP_DIR}/apex/f${BASE_APP_ID}/application" \
  "${BASE_APP_DIR}/db/tables" \
  "${BASE_APP_DIR}/db/triggers" \
  "${BASE_APP_DIR}/db/tests" \
  "${BASE_APP_DIR}/docs" \
  "${TARGET_APP_DIR}/apex/f${TARGET_APP_ID}/application" \
  "${TARGET_APP_DIR}/db/tables" \
  "${TARGET_APP_DIR}/db/triggers" \
  "${TARGET_APP_DIR}/docs"

cat > "${BASE_APP_DIR}/apex/f${BASE_APP_ID}/application/create_application.sql" <<'SQL'
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CANONICAL-TEST-APP')
SQL

cat > "${TARGET_APP_DIR}/apex/f${TARGET_APP_ID}/application/create_application.sql" <<'SQL'
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'CANONICAL-TEST-APP')
SQL

cat > "${BASE_APP_DIR}/db/install.sql" <<'SQL'
prompt baseline install
@@tables/apexcn_app_versions.sql
SQL

cat > "${BASE_APP_DIR}/db/compile_all.sql" <<'SQL'
prompt baseline compile
SQL

cat > "${BASE_APP_DIR}/db/tables/apexcn_app_versions.sql" <<'SQL'
CREATE TABLE apexcn_app_versions (
    application_id NUMBER DEFAULT 100 NOT NULL
);
ALTER TABLE apexcn_app_versions MODIFY (application_id DEFAULT 100);
SELECT 100,
       100
  FROM dual;
SQL

cat > "${BASE_APP_DIR}/db/triggers/apexcn_app_versions_trg.sql" <<'SQL'
create or replace trigger apexcn_app_versions_trg
before insert on apexcn_app_versions
for each row
begin
  :new.application_id := nvl(:new.application_id, 100);
end;
/
SQL

cat > "${BASE_APP_DIR}/docs/browser-functional.json" <<'JSON'
{"label":"baseline","url":"https://example.test/home","steps":[{"type":"click","selector":"#x"}],"assertions":[{"type":"selector_visible","selector":"#x"}]}
JSON

cat > "${BASE_APP_DIR}/docs/browser-smoke.json" <<'JSON'
{"label":"baseline-smoke","url":"https://example.test/home","contains_text":"Home"}
JSON

cat > "${TARGET_APP_DIR}/db/install.sql" <<'SQL'
prompt raw install
SQL

cat > "${TARGET_APP_DIR}/db/tables/raw_only.sql" <<'SQL'
select 1 from dual;
SQL

alias_value="$(detect_exported_app_alias "${TARGET_APP_DIR}/apex" "${TARGET_APP_ID}")"
if [[ "${alias_value}" != "CANONICAL-TEST-APP" ]]; then
  printf 'Expected alias detection to return CANONICAL-TEST-APP, got: %s\n' "${alias_value}" >&2
  exit 1
fi

baseline_found="$(find_canonical_baseline_app_dir "CANONICAL-TEST-APP" "${TARGET_APP_DIR}")"
if [[ "${baseline_found}" != "${BASE_APP_DIR}" ]]; then
  printf 'Expected canonical baseline %s, got: %s\n' "${BASE_APP_DIR}" "${baseline_found}" >&2
  exit 1
fi

sync_canonical_db_tree_from_baseline "${BASE_APP_DIR}" "${TARGET_APP_DIR}" "${TARGET_APP_ID}"
sync_canonical_docs_from_baseline "${BASE_APP_DIR}" "${TARGET_APP_DIR}"

[[ -d "${TARGET_APP_DIR}/db.raw-export" ]] || {
  printf 'Expected db.raw-export to preserve original raw export\n' >&2
  exit 1
}

[[ -f "${TARGET_APP_DIR}/db.raw-export/tables/raw_only.sql" ]] || {
  printf 'Expected raw-only table file to be preserved under db.raw-export\n' >&2
  exit 1
}

grep -q 'DEFAULT 900' "${TARGET_APP_DIR}/db/tables/apexcn_app_versions.sql" || {
  printf 'Expected canonicalized table default app id to be patched to 900\n' >&2
  exit 1
}

grep -q 'MODIFY (application_id DEFAULT 900)' "${TARGET_APP_DIR}/db/tables/apexcn_app_versions.sql" || {
  printf 'Expected alter default patch to be updated to 900\n' >&2
  exit 1
}

grep -q 'SELECT 900,' "${TARGET_APP_DIR}/db/tables/apexcn_app_versions.sql" || {
  printf 'Expected seed rows to be patched to target app id 900\n' >&2
  exit 1
}

grep -q 'nvl(:new.application_id, 900)' "${TARGET_APP_DIR}/db/triggers/apexcn_app_versions_trg.sql" || {
  printf 'Expected trigger default app id to be patched to 900\n' >&2
  exit 1
}

[[ -f "${TARGET_APP_DIR}/docs/browser-functional.json" && -f "${TARGET_APP_DIR}/docs/browser-smoke.json" ]] || {
  printf 'Expected canonical browser docs to be copied to target app dir\n' >&2
  exit 1
}

printf 'export_apex_app canonical db tree test passed\n'

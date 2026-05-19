#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

TMP_DIR="$(mktemp -d)"
APP_EXPORT_DIR="${TMP_DIR}/apex/f123"
VIEW_DIR="${TMP_DIR}/app/db/views"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

mkdir -p "${APP_EXPORT_DIR}/application/deployment/install" "${VIEW_DIR}"

cat > "${APP_EXPORT_DIR}/install.sql" <<'SQL'
@@application/create_application.sql
@@application/deployment/install/install_demo_db_views_sql.sql
@@application/pages/page_00001.sql
SQL

cat > "${APP_EXPORT_DIR}/application/deployment/install/install_demo_db_views_sql.sql" <<'SQL'
prompt --application/deployment/install/install_demo_db_views_sql
begin
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>100
,p_default_application_id=>200
,p_default_id_offset=>300
,p_default_owner=>'DEV'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(400)
,p_install_id=>wwv_flow_imp.id(500)
,p_name=>'demo_db_views.sql'
,p_sequence=>60
,p_script_type=>'INSTALL'
,p_script_clob=>to_clob('obsolete combined view script')
);
wwv_flow_imp.component_end;
end;
/
SQL

cat > "${VIEW_DIR}/alpha_view.sql" <<'SQL'
create or replace view alpha_view as
select 1 as id
from dual;
SQL

cat > "${VIEW_DIR}/beta_view.sql" <<'SQL'
create or replace view beta_view as
select 'beta' as name
from dual;
SQL

created_count="$(split_supporting_object_view_install_scripts "${TMP_DIR}/apex" 123 "${VIEW_DIR}")"

if [[ "${created_count}" != "2" ]]; then
  printf 'Expected 2 generated install scripts, got %s\n' "${created_count}" >&2
  exit 1
fi

if [[ -e "${APP_EXPORT_DIR}/application/deployment/install/install_demo_db_views_sql.sql" ]]; then
  printf 'Expected combined db views install script to be removed\n' >&2
  exit 1
fi

for generated in \
  "${APP_EXPORT_DIR}/application/deployment/install/install_alpha_view_sql.sql" \
  "${APP_EXPORT_DIR}/application/deployment/install/install_beta_view_sql.sql"
do
  [[ -f "${generated}" ]] || {
    printf 'Expected generated install script to exist: %s\n' "${generated}" >&2
    exit 1
  }
done

if ! grep -q '@@application/deployment/install/install_alpha_view_sql.sql' "${APP_EXPORT_DIR}/install.sql"; then
  printf 'Expected install.sql to include alpha view install script\n' >&2
  exit 1
fi

if ! grep -q '@@application/deployment/install/install_beta_view_sql.sql' "${APP_EXPORT_DIR}/install.sql"; then
  printf 'Expected install.sql to include beta view install script\n' >&2
  exit 1
fi

if grep -q 'install_demo_db_views_sql.sql' "${APP_EXPORT_DIR}/install.sql"; then
  printf 'Expected install.sql to stop referencing the combined db views script\n' >&2
  exit 1
fi

if ! grep -q "p_name=>'alpha_view.sql'" "${APP_EXPORT_DIR}/application/deployment/install/install_alpha_view_sql.sql"; then
  printf 'Expected alpha view install script to target alpha_view.sql\n' >&2
  exit 1
fi

if ! grep -q "p_name=>'beta_view.sql'" "${APP_EXPORT_DIR}/application/deployment/install/install_beta_view_sql.sql"; then
  printf 'Expected beta view install script to target beta_view.sql\n' >&2
  exit 1
fi

if ! grep -q 'create or replace view alpha_view as' "${APP_EXPORT_DIR}/application/deployment/install/install_alpha_view_sql.sql"; then
  printf 'Expected alpha view SQL text to be embedded in its install script\n' >&2
  exit 1
fi

if ! grep -q 'create or replace view beta_view as' "${APP_EXPORT_DIR}/application/deployment/install/install_beta_view_sql.sql"; then
  printf 'Expected beta view SQL text to be embedded in its install script\n' >&2
  exit 1
fi

printf 'export_apex_app view install splitter test passed\n'

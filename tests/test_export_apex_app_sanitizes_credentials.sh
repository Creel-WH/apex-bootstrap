#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
# shellcheck source=../tools/export_apex_app.sh
source "${ROOT_DIR}/tools/export_apex_app.sh"

TMP_DIR="$(mktemp -d)"
APP_EXPORT_DIR="${TMP_DIR}/apex/f123"
SUPPORTING_EXPORT_DIR="${TMP_DIR}/apex/f124"
CREDENTIAL_COMPONENT_EXPORT_DIR="${TMP_DIR}/apex/f125"

cleanup() {
  rm -rf "${TMP_DIR}"
}

trap cleanup EXIT

mkdir -p "${APP_EXPORT_DIR}/workspace/credentials" "${APP_EXPORT_DIR}/application/pages"
cat > "${APP_EXPORT_DIR}/install.sql" <<'SQL'
@@application/create_application.sql
@@workspace/credentials/google_idp.sql
@@workspace/credentials/service_account.sql
@@application/pages/page_00001.sql
SQL
cat > "${APP_EXPORT_DIR}/workspace/credentials/google_idp.sql" <<'SQL'
prompt should be removed
SQL
cat > "${APP_EXPORT_DIR}/workspace/credentials/service_account.sql" <<'SQL'
prompt should also be removed
SQL

removed_count="$(sanitize_apex_export_credentials "${TMP_DIR}/apex" 123)"

if [[ "${removed_count}" != "4" ]]; then
  printf 'Expected sanitizer to remove 4 artifacts, got %s\n' "${removed_count}" >&2
  exit 1
fi

if [[ -e "${APP_EXPORT_DIR}/workspace/credentials" ]]; then
  printf 'Expected workspace credentials directory to be removed\n' >&2
  exit 1
fi

if grep -q 'workspace/credentials' "${APP_EXPORT_DIR}/install.sql"; then
  printf 'Expected credential include lines to be removed from install.sql\n' >&2
  exit 1
fi

if ! grep -q '@@application/create_application.sql' "${APP_EXPORT_DIR}/install.sql" || ! grep -q '@@application/pages/page_00001.sql' "${APP_EXPORT_DIR}/install.sql"; then
  printf 'Expected non-credential install.sql includes to remain\n' >&2
  exit 1
fi

second_count="$(sanitize_apex_export_credentials "${TMP_DIR}/apex" 123)"

if [[ "${second_count}" != "0" ]]; then
  printf 'Expected sanitizer to be idempotent, got second count %s\n' "${second_count}" >&2
  exit 1
fi

mkdir -p "${SUPPORTING_EXPORT_DIR}/application/deployment/install" "${SUPPORTING_EXPORT_DIR}/application/shared_components/files"
cat > "${SUPPORTING_EXPORT_DIR}/install.sql" <<'SQL'
@@application/create_application.sql
@@application/shared_components/files/supporting_objects_demo_pkg_pks.sql
@@application/deployment/install/install_demo_pkg_sql.sql
@@application/pages/page_00001.sql
SQL
cat > "${SUPPORTING_EXPORT_DIR}/application/deployment/install/install_demo_pkg_sql.sql" <<'SQL'
prompt should be removed because DB source is app-owned under db/
SQL
cat > "${SUPPORTING_EXPORT_DIR}/application/shared_components/files/supporting_objects_demo_pkg_pks.sql" <<'SQL'
prompt should be removed because supporting object files duplicate db/
SQL

supporting_count="$(sanitize_apex_export_supporting_objects "${TMP_DIR}/apex" 124)"

if [[ "${supporting_count}" != "0" ]]; then
  printf 'Expected supporting object sanitizer to preserve curated supporting objects, got %s\n' "${supporting_count}" >&2
  exit 1
fi

if [[ ! -e "${SUPPORTING_EXPORT_DIR}/application/deployment/install/install_demo_pkg_sql.sql" || ! -e "${SUPPORTING_EXPORT_DIR}/application/shared_components/files/supporting_objects_demo_pkg_pks.sql" ]]; then
  printf 'Expected curated supporting object SQL files to remain in the split export\\n' >&2
  exit 1
fi

if ! grep -q 'supporting_objects_demo_pkg_pks.sql' "${SUPPORTING_EXPORT_DIR}/install.sql" || ! grep -q 'deployment/install/install_demo_pkg_sql.sql' "${SUPPORTING_EXPORT_DIR}/install.sql"; then
  printf 'Expected supporting object include lines to remain in install.sql\\n' >&2
  exit 1
fi

if ! grep -q '@@application/pages/page_00001.sql' "${SUPPORTING_EXPORT_DIR}/install.sql"; then
  printf 'Expected regular APEX install.sql includes to remain\\n' >&2
  exit 1
fi

mkdir -p "${CREDENTIAL_COMPONENT_EXPORT_DIR}/application/shared_components/security/authentications"
cat > "${CREDENTIAL_COMPONENT_EXPORT_DIR}/install.sql" <<'SQL'
@@application/create_application.sql
@@application/shared_components/security/authentications/google.sql
@@application/shared_components/security/authentications/oracle_apex_accounts.sql
@@application/pages/page_00001.sql
SQL
cat > "${CREDENTIAL_COMPONENT_EXPORT_DIR}/application/shared_components/security/authentications/google.sql" <<'SQL'
begin
wwv_flow_imp_shared.create_authentication(
 p_name=>'Google',
 p_scheme_type=>'NATIVE_SOCIAL',
 p_attribute_01=>wwv_flow_imp.id(15190098232775814)
);
end;
/
SQL
cat > "${CREDENTIAL_COMPONENT_EXPORT_DIR}/application/shared_components/security/authentications/oracle_apex_accounts.sql" <<'SQL'
begin
wwv_flow_imp_shared.create_authentication(
 p_name=>'Oracle APEX Accounts',
 p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
);
end;
/
SQL

component_count="$(sanitize_apex_export_credential_dependent_components "${TMP_DIR}/apex" 125)"

if [[ "${component_count}" != "2" ]]; then
  printf 'Expected credential-dependent component sanitizer to remove 2 artifacts, got %s\n' "${component_count}" >&2
  exit 1
fi

if [[ -e "${CREDENTIAL_COMPONENT_EXPORT_DIR}/application/shared_components/security/authentications/google.sql" ]]; then
  printf 'Expected NATIVE_SOCIAL authentication to be removed\\n' >&2
  exit 1
fi

if [[ ! -e "${CREDENTIAL_COMPONENT_EXPORT_DIR}/application/shared_components/security/authentications/oracle_apex_accounts.sql" ]]; then
  printf 'Expected non-credential authentication to remain\\n' >&2
  exit 1
fi

if grep -q 'authentications/google.sql' "${CREDENTIAL_COMPONENT_EXPORT_DIR}/install.sql"; then
  printf 'Expected removed authentication include to be deleted from install.sql\\n' >&2
  exit 1
fi

if ! grep -q 'authentications/oracle_apex_accounts.sql' "${CREDENTIAL_COMPONENT_EXPORT_DIR}/install.sql"; then
  printf 'Expected regular authentication include to remain\\n' >&2
  exit 1
fi

printf 'export_apex_app credential sanitizer test passed\n'

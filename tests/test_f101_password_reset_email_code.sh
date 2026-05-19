#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." >/dev/null 2>&1 && pwd)"
AUTH_PKG="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_auth_pkg.pkb"
TEST_AUTH_PKG="${ROOT_DIR}/export/test@oci/f900/db/packages/bodies/apexcn_auth_pkg.pkb"
P10_PAGE="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00010.sql"
TEST_P10_PAGE="${ROOT_DIR}/export/test@oci/f900/apex/f900/application/pages/page_00010.sql"
TEST_SET_ENV="${ROOT_DIR}/export/test@oci/f900/apex/f900/application/set_environment.sql"
TEST_DELETE_P10="${ROOT_DIR}/export/test@oci/f900/apex/f900/application/pages/delete_00010.sql"
RELEASE_SQL="${ROOT_DIR}/export/dev@oci/f101/release-single/f101.sql"

assert_contains() {
  local needle="$1"
  local file="$2"
  if ! grep -Fq -- "${needle}" "${file}"; then
    printf 'Expected %s to contain: %s\n' "${file#${ROOT_DIR}/}" "${needle}" >&2
    exit 1
  fi
}

assert_not_contains() {
  local needle="$1"
  local file="$2"
  if grep -Fq -- "${needle}" "${file}"; then
    printf 'Expected %s not to contain: %s\n' "${file#${ROOT_DIR}/}" "${needle}" >&2
    exit 1
  fi
}

for file in "${AUTH_PKG}" "${TEST_AUTH_PKG}"; do
  assert_contains "l_username  apexcn_users.email%TYPE := LOWER(TRIM(i_username));" "${file}"
  assert_contains "apexcn_auth_pkg.send_email_code_proc mail send error" "${file}"
  assert_contains "验证码邮件发送失败，请稍后再试或联系管理员。" "${file}"
  assert_contains "GEETEST_ACTIVE" "${file}"
  assert_contains "geetest_2nd_validation_proc bypassed" "${file}"
  assert_contains "RAISE;" "${file}"
  assert_not_contains "apexcn_auth_pkg.send_email_code_proc error. Email send error. ');" "${file}"
done

for file in "${P10_PAGE}" "${TEST_P10_PAGE}" "${RELEASE_SQL}"; do
  assert_contains "\\8BF7\\5728 5 \\5206\\949F\\5185\\8F93\\5165\\9A8C\\8BC1\\7801\\7EE7\\7EED\\91CD\\7F6E\\5BC6\\7801" "${file}"
  assert_contains "P10_GEETEST_ACTIVE" "${file}"
  assert_contains "const geetestActive" "${file}"
  assert_contains "INIT_GEETEST_FLAG" "${file}"
done

for file in "${TEST_P10_PAGE}" "${TEST_SET_ENV}" "${TEST_DELETE_P10}"; do
  assert_contains "p_default_workspace_id=>39003517722785401" "${file}"
  assert_contains "p_default_application_id=>900" "${file}"
  assert_contains "p_default_owner=>'TEST'" "${file}"
done

printf 'f101 password reset email code source checks passed\n'

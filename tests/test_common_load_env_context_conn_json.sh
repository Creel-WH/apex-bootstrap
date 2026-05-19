#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/common.sh
source "${ROOT_DIR}/tools/common.sh"

unset JAVA_HOME || true
unset DB_SQLCL_BIN || true

TMP_DIR="$(mktemp -d)"
MISSING_OUTPUT="${TMP_DIR}/missing.out"

cleanup() {
  rm -rf "${TMP_DIR}"
}

read_lines() {
  local line

  while IFS= read -r line; do
    printf '%s\n' "${line}"
  done
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
LOCAL_CONFIG_FILE="${ROOT_DIR}/.conn.json"

mkdir -p "${ROOT_DIR}/export/dev@oci/f108" "${ROOT_DIR}/export/dev@oci/fshared"

cat > "${ROOT_DIR}/conn.json" <<'JSON'
{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "dev/__fill_me__@127.0.0.1:15210/ORCLPDB1",
    "db_schema": "dev",
    "apex_workspace": "DEV",
    "apex_version": "24.2",
    "java_home": "/tmp/fake-java",
    "db_sqlcl_bin": "/tmp/fake-sql",
    "apex_builder_login_url": "https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in",
    "apex_builder_username": "admin",
    "apex_builder_password": "secret",
    "apex_browser_smoke_url": "https://example.test/ords/r/dev/sample/login",
    "apex_browser_expect_selector": "#P9999_USERNAME"
  },
  "dev@adb": {
    "env_name": "dev@adb",
    "db_connection_mode": "tns",
    "db_schema": "dev",
    "apex_workspace": "DEV",
    "apex_version": "24.2",
    "db_username": "dev_user",
    "db_password": "adb_password",
    "db_tns_alias": "json_alias",
    "db_tns_admin": "/tmp/json_wallet"
  }
}
JSON

if ! conn_json_has_env "${ROOT_DIR}/conn.json" "dev@oci"; then
  printf 'Expected conn_json_has_env to find dev@oci in root conn.json\n' >&2
  exit 1
fi

if conn_json_has_env "${ROOT_DIR}/conn.json" "missing@env"; then
  printf 'Expected conn_json_has_env to reject missing environment aliases\n' >&2
  exit 1
fi

conn_envs="$(list_conn_json_envs "${ROOT_DIR}/conn.json" | read_lines)"

if [[ "${conn_envs}" != $'dev@adb\ndev@oci' ]]; then
  printf 'Expected list_conn_json_envs to emit sorted env aliases, got: %s\n' "${conn_envs}" >&2
  exit 1
fi

set +e
list_conn_json_envs "${ROOT_DIR}/missing.json" > /dev/null 2>"${MISSING_OUTPUT}"
status=$?
set -e

if [[ "${status}" -eq 0 ]]; then
  printf 'Expected list_conn_json_envs to fail for a missing conn.json file\n' >&2
  exit 1
fi

if ! grep -q 'Connection inventory file not found' "${MISSING_OUTPUT}"; then
  printf 'Expected list_conn_json_envs to emit an actionable missing-file error\n' >&2
  exit 1
fi

exported_apps="$(list_exported_apps_for_env "dev@oci" | read_lines)"

if [[ "${exported_apps}" != "f108" ]]; then
  printf 'Expected list_exported_apps_for_env to emit exported app codes, got: %s\n' "${exported_apps}" >&2
  exit 1
fi

if [[ "$(require_numeric_app_id "00108")" != "108" ]]; then
  printf 'Expected require_numeric_app_id to normalize leading zeros\n' >&2
  exit 1
fi

if [[ "$(resolve_app_code_from_app_id "108")" != "f108" ]]; then
  printf 'Expected resolve_app_code_from_app_id to normalize numeric app ids\n' >&2
  exit 1
fi

if [[ "$(require_numeric_page_id "0007")" != "7" ]]; then
  printf 'Expected require_numeric_page_id to normalize leading zeros\n' >&2
  exit 1
fi

load_env_context "dev@oci"

if [[ "${DB_ENV_NAME}" != "dev@oci" ]]; then
  printf 'Expected DB_ENV_NAME to be dev@oci, got: %s\n' "${DB_ENV_NAME}" >&2
  exit 1
fi

if [[ "${DB_CONNECTION_MODE}" != "direct" ]]; then
  printf 'Expected DB_CONNECTION_MODE to come from root conn.json for dev@oci\n' >&2
  exit 1
fi

if [[ "${DB_CONNECT_STRING}" != 'dev/__fill_me__@127.0.0.1:15210/ORCLPDB1' ]]; then
  printf 'Expected DB_CONNECT_STRING to come from root conn.json for dev@oci, got: %s\n' "${DB_CONNECT_STRING}" >&2
  exit 1
fi

if [[ "${JAVA_HOME}" != "/tmp/fake-java" || "${DB_SQLCL_BIN}" != "/tmp/fake-sql" ]]; then
  printf 'Expected runtime paths to be loaded from root conn.json, got JAVA_HOME=%s DB_SQLCL_BIN=%s\n' "${JAVA_HOME}" "${DB_SQLCL_BIN}" >&2
  exit 1
fi

if [[ "${APEX_BUILDER_LOGIN_URL}" != "https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in" || "${APEX_BUILDER_USERNAME}" != "admin" || "${APEX_BUILDER_PASSWORD}" != "secret" ]]; then
  printf 'Expected browser builder credentials to be loaded from root conn.json\n' >&2
  exit 1
fi

if [[ "${APEX_BROWSER_SMOKE_URL}" != "https://example.test/ords/r/dev/sample/login" || "${APEX_BROWSER_EXPECT_SELECTOR}" != "#P9999_USERNAME" ]]; then
  printf 'Expected browser smoke defaults to be loaded from root conn.json\n' >&2
  exit 1
fi

cat > "${LOCAL_CONFIG_FILE}" <<'JSON'
{
  "dev@oci": {
    "db_connect_string": "dev/local-secret@127.0.0.1:15210/ORCLPDB1",
    "apex_builder_password": "local-builder-secret",
    "apex_browser_smoke_url": "https://local.example.test/ords/r/dev/sample/login"
  }
}
JSON

load_env_context "dev@oci"

if [[ "${DB_CONNECTION_MODE}" != "direct" || "${DB_SCHEMA}" != "dev" || "${APEX_WORKSPACE}" != "DEV" ]]; then
  printf 'Expected root conn.json non-secret fields to remain available when local overlay is present\n' >&2
  exit 1
fi

if [[ "${DB_CONNECT_STRING}" != 'dev/local-secret@127.0.0.1:15210/ORCLPDB1' ]]; then
  printf 'Expected DB_CONNECT_STRING to be overlaid from local .conn.json, got: %s\n' "${DB_CONNECT_STRING}" >&2
  exit 1
fi

if [[ "${APEX_BUILDER_PASSWORD}" != "local-builder-secret" ]]; then
  printf 'Expected builder password to be overlaid from local .conn.json\n' >&2
  exit 1
fi

if [[ "${APEX_BROWSER_SMOKE_URL}" != "https://local.example.test/ords/r/dev/sample/login" || "${APEX_BROWSER_EXPECT_SELECTOR}" != "#P9999_USERNAME" ]]; then
  printf 'Expected local browser URL overlay while root selector remains available\n' >&2
  exit 1
fi

load_env_context "dev@adb"

if [[ "${DB_ENV_NAME}" != "dev@adb" ]]; then
  printf 'Expected DB_ENV_NAME to be dev@adb, got: %s\n' "${DB_ENV_NAME}" >&2
  exit 1
fi

if [[ "${DB_CONNECTION_MODE}" != "tns" ]]; then
  printf 'Expected DB_CONNECTION_MODE to come from root conn.json\n' >&2
  exit 1
fi

if [[ "${DB_SCHEMA}" != "dev" || "${APEX_WORKSPACE}" != "DEV" ]]; then
  printf 'Expected schema/workspace to be loaded from root conn.json\n' >&2
  exit 1
fi

if [[ "${DB_PASSWORD}" != "adb_password" ]]; then
  printf 'Expected password to come from selected root conn.json entry, got: %s\n' "${DB_PASSWORD}" >&2
  exit 1
fi

if [[ "${DB_CONNECT_STRING}" != 'dev_user/"adb_password"@json_alias' ]]; then
  printf 'Unexpected DB_CONNECT_STRING: %s\n' "${DB_CONNECT_STRING}" >&2
  exit 1
fi

if [[ "${APP_CONFIG_FILE}" != *"/conn.json#dev@adb" ]]; then
  printf 'Expected APP_CONFIG_FILE to point at root conn.json entry, got: %s\n' "${APP_CONFIG_FILE}" >&2
  exit 1
fi

load_env_context "dev@oci"

if [[ "${DB_CONNECTION_MODE}" != "direct" ]]; then
  printf 'Expected DB_CONNECTION_MODE to switch back to direct for dev@oci\n' >&2
  exit 1
fi

if [[ -n "${DB_USERNAME:-}" || -n "${DB_PASSWORD:-}" || -n "${DB_TNS_ALIAS:-}" || -n "${DB_TNS_ADMIN:-}" || -n "${TNS_ADMIN:-}" ]]; then
  printf 'Expected TNS-related values to be cleared when switching from tns to direct mode\n' >&2
  exit 1
fi

printf 'common conn.json loading test passed\n'

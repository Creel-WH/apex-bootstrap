#!/usr/bin/env bash

set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"

# shellcheck source=../tools/apex_ai.sh
source "${ROOT_DIR}/tools/apex_ai.sh"

unset JAVA_HOME || true
unset DB_SQLCL_BIN || true

TMP_DIR="$(mktemp -d)"
CAPTURE_FILE="$(mktemp)"
TRACE_FILE="$(mktemp)"
ORIGINAL_PATH="${PATH}"

cleanup() {
  /bin/rm -rf "${TMP_DIR}"
  /bin/rm -f "${CAPTURE_FILE}" "${TRACE_FILE}"
}

trap cleanup EXIT

ROOT_DIR="${TMP_DIR}"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"
PYTHON3_BIN="$(command -v python3)"
TR_BIN="$(command -v tr)"

bash() {
  local arg1="${1-}"
  local arg2="${2-}"
  local arg3="${3-}"
  local arg4="${4-}"

  printf '%s\037%s\037%s\037%s\n' "${arg1}" "${arg2}" "${arg3}" "${arg4}" >> "${TRACE_FILE}"

  if [[ "${arg1}" != "${ROOT_DIR}/tools/apex_ai.sh" || "${arg3}" == '' ]]; then
    printf 'Unexpected bash invocation: %s\n' "$*" >&2
    return 99
  fi

  case "${arg2}" in
    check)
      [[ "$#" -eq 4 ]] || {
        printf 'Unexpected check invocation: %s\n' "$*" >&2
        return 98
      }
      [[ "$4" == '--deep' ]] || {
        printf 'Unexpected check invocation: %s\n' "$*" >&2
        return 97
      }

      if [[ -n "${EXPECTED_CHECK_JAVA_HOME:-}" && "${JAVA_HOME:-}" != "${EXPECTED_CHECK_JAVA_HOME}" ]]; then
        printf 'Expected post-init check JAVA_HOME=%s, got %s\n' "${EXPECTED_CHECK_JAVA_HOME}" "${JAVA_HOME:-}" >&2
        return 96
      fi

      if [[ -n "${EXPECTED_CHECK_DB_SQLCL_BIN:-}" && "${DB_SQLCL_BIN:-}" != "${EXPECTED_CHECK_DB_SQLCL_BIN}" ]]; then
        printf 'Expected post-init check DB_SQLCL_BIN=%s, got %s\n' "${EXPECTED_CHECK_DB_SQLCL_BIN}" "${DB_SQLCL_BIN:-}" >&2
        return 95
      fi

      printf 'OK %s Deep checks passed\n' "$3"
      ;;
    sql-check)
      [[ "$#" -eq 3 ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 94
      }
      [[ "${arg4}" == '' ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 93
      }
      printf 'OK %s SQLcl connectivity check passed\n' "$3"
      ;;
    *)
      printf 'Unexpected bash invocation: %s\n' "$*" >&2
      return 92
      ;;
  esac
}

persisted_entry_json() {
  local env_alias="$1"

  python3 - "${ROOT_DIR}/conn.json" "${env_alias}" <<'PY'
import json
import sys

with open(sys.argv[1], 'r', encoding='utf-8') as handle:
    payload = json.load(handle)

entry = payload.get(sys.argv[2])
if not isinstance(entry, dict):
    raise SystemExit('missing {}'.format(sys.argv[2]))

print(json.dumps(entry, sort_keys=True, separators=(',', ':')))
PY
}

write_conn_json_fixture() {
  local json_payload="$1"
  printf '%s\n' "${json_payload}" > "${ROOT_DIR}/conn.json"
}

assert_persisted_entry() {
  local env_alias="$1"
  local expected_json="$2"
  local actual_json

  actual_json="$(persisted_entry_json "${env_alias}")"

  if [[ "${actual_json}" != "${expected_json}" ]]; then
    printf 'Expected persisted %s entry %s, got %s\n' "${env_alias}" "${expected_json}" "${actual_json}" >&2
    exit 1
  fi
}

capture_main_with_input() {
  local input="$1"
  shift
  local status

  set +e
  (main "$@") <<<"${input}" >"${CAPTURE_FILE}" 2>&1
  status=$?
  set +e
  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
  set -e
}

reset_fake_runtime_bin() {
  /bin/rm -rf "${ROOT_DIR}/fake-bin"
  /bin/mkdir -p "${ROOT_DIR}/fake-bin"
  /bin/ln -sf "${PYTHON3_BIN}" "${ROOT_DIR}/fake-bin/python3"
  /bin/ln -sf "${TR_BIN}" "${ROOT_DIR}/fake-bin/tr"
  PATH="${ROOT_DIR}/fake-bin"
}

create_fake_java_binary() {
  local target_path="$1"

  /bin/mkdir -p "${target_path%/*}"
  printf '%s\n' '#!/bin/bash' 'exit 0' > "${target_path}"
  /bin/chmod +x "${target_path}"
}

create_fake_sqlcl_binary() {
  local target_path="$1"

  /bin/mkdir -p "${target_path%/*}"
  printf '%s\n' '#!/bin/bash' 'exit 0' > "${target_path}"
  /bin/chmod +x "${target_path}"
}

reset_fake_runtime_bin
write_conn_json_fixture '{}'
create_fake_java_binary "${ROOT_DIR}/fake-jdk/bin/java"
create_fake_sqlcl_binary "${ROOT_DIR}/fake-bin/sql"
PATH="${ROOT_DIR}/fake-jdk/bin:${ROOT_DIR}/fake-bin"
EXPECTED_CHECK_JAVA_HOME="${ROOT_DIR}/fake-jdk"
EXPECTED_CHECK_DB_SQLCL_BIN="${ROOT_DIR}/fake-bin/sql"
export JAVA_HOME='/caller/invalid-java-home'
export DB_SQLCL_BIN='/caller/invalid-sqlcl-bin'

capture_main_with_input $'localhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected detected runtime flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Autofill fields for dev@oci'* || "${CAPTURED_OUTPUT}" != *"java_home=${ROOT_DIR}/fake-jdk"* || "${CAPTURED_OUTPUT}" != *"db_sqlcl_bin=${ROOT_DIR}/fake-bin/sql"* ]]; then
  printf 'Expected runtime autofill preview with detected java_home and db_sqlcl_bin, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' "{\"apex_workspace\":\"DEV\",\"db_connect_string\":\"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\",\"db_connection_mode\":\"direct\",\"db_schema\":\"dev\",\"db_sqlcl_bin\":\"${ROOT_DIR}/fake-bin/sql\",\"env_name\":\"dev@oci\",\"java_home\":\"${ROOT_DIR}/fake-jdk\"}"

unset EXPECTED_CHECK_JAVA_HOME EXPECTED_CHECK_DB_SQLCL_BIN
unset JAVA_HOME DB_SQLCL_BIN

detect_java_home_from_launcher() {
  printf '%s\n' "${ROOT_DIR}/launcher-fallback-jdk"
}

create_fake_java_binary "${ROOT_DIR}/launcher-fallback-jdk/bin/java"

if [[ "$(detect_init_java_preview)" != "persist|${ROOT_DIR}/fake-jdk" ]]; then
  printf 'Expected PATH-discovered Java home to win before launcher fallback\n' >&2
  exit 1
fi

PATH="${ROOT_DIR}/fake-bin"

if [[ "$(detect_init_java_preview)" != "persist|${ROOT_DIR}/launcher-fallback-jdk" ]]; then
  printf 'Expected optional launcher fallback when PATH has no java\n' >&2
  exit 1
fi

unset -f detect_java_home_from_launcher

reset_fake_runtime_bin
write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "legacy/__fill_me__@127.0.0.1:1521/ORCLPDB1",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY",
    "java_home": "/explicit/jdk",
    "db_sqlcl_bin": "/explicit/sql",
    "notes": "keep-me"
  }
}'
create_fake_java_binary "${ROOT_DIR}/other-jdk/bin/java"
create_fake_sqlcl_binary "${ROOT_DIR}/fake-bin/sql"
PATH="${ROOT_DIR}/other-jdk/bin:${ROOT_DIR}/fake-bin"

capture_main_with_input $'merge-preserve-advanced\ndirect\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected explicit runtime values to be preserved, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'Autofill fields for dev@oci'* || "${CAPTURED_OUTPUT}" != *'java_home=/explicit/jdk'* || "${CAPTURED_OUTPUT}" != *'db_sqlcl_bin=/explicit/sql'* ]]; then
  printf 'Expected preview to preserve explicit existing runtime values, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","db_sqlcl_bin":"/explicit/sql","env_name":"dev@oci","java_home":"/explicit/jdk","notes":"keep-me"}'

write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "legacy/__fill_me__@127.0.0.1:1521/ORCLPDB1",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY",
    "apex_builder_login_url": "https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in",
    "apex_builder_username": "admin",
    "apex_builder_password": "secret",
    "apex_browser_smoke_url": "https://example.test/ords/r/dev/sample/login",
    "apex_browser_expect_selector": "#P9999_USERNAME",
    "notes": "keep-me"
  }
}'

capture_main_with_input $'merge-preserve-advanced\ndirect\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected browser connection metadata autofill to be preserved, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'apex_builder_login_url=https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in'* || "${CAPTURED_OUTPUT}" != *'apex_builder_username=admin'* || "${CAPTURED_OUTPUT}" != *'apex_builder_password=***'* || "${CAPTURED_OUTPUT}" != *'apex_browser_smoke_url=https://example.test/ords/r/dev/sample/login'* || "${CAPTURED_OUTPUT}" != *'apex_browser_expect_selector=#P9999_USERNAME'* ]]; then
  printf 'Expected preview to include persisted browser connection metadata, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' "{\"apex_browser_expect_selector\":\"#P9999_USERNAME\",\"apex_browser_smoke_url\":\"https://example.test/ords/r/dev/sample/login\",\"apex_builder_login_url\":\"https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in\",\"apex_builder_password\":\"secret\",\"apex_builder_username\":\"admin\",\"apex_workspace\":\"DEV\",\"db_connect_string\":\"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\",\"db_connection_mode\":\"direct\",\"db_schema\":\"dev\",\"db_sqlcl_bin\":\"${ROOT_DIR}/fake-bin/sql\",\"env_name\":\"dev@oci\",\"java_home\":\"${ROOT_DIR}/other-jdk\",\"notes\":\"keep-me\"}"

reset_fake_runtime_bin
write_conn_json_fixture '{}'
create_fake_java_binary "${ROOT_DIR}/fake-bin/java"

capture_main_with_input $'localhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_OUTPUT}" != *"java_bin=${ROOT_DIR}/fake-bin/java (preview only)"* || "${CAPTURED_OUTPUT}" == *"java_home=${ROOT_DIR}/fake-bin/java (preview only)"* ]]; then
  printf 'Expected bare binary java path to use java_bin preview-only label, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","env_name":"dev@oci"}'

reset_fake_runtime_bin
write_conn_json_fixture '{}'
if [[ -n "$(derive_java_home_from_bin '/usr/bin/java')" ]]; then
  printf 'Expected derive_java_home_from_bin to reject macOS /usr/bin/java\n' >&2
  exit 1
fi

if [[ "$(derive_java_home_from_bin 'C:/Java/jdk-21/bin/java.exe')" != 'C:/Java/jdk-21' ]]; then
  printf 'Expected derive_java_home_from_bin to handle java.exe paths\n' >&2
  exit 1
fi

if [[ "$(derive_java_home_from_bin 'C:\Java\jdk-21\bin\java.exe')" != 'C:\Java\jdk-21' ]]; then
  printf 'Expected derive_java_home_from_bin to handle backslash java.exe paths\n' >&2
  exit 1
fi

if ! path_is_absolute 'C:\sqlcl\bin\sql.exe'; then
  printf 'Expected path_is_absolute to accept Windows drive-letter paths\n' >&2
  exit 1
fi

if ! path_is_absolute '\\server\share\sqlcl\bin\sql.exe'; then
  printf 'Expected path_is_absolute to accept UNC paths\n' >&2
  exit 1
fi

/bin/mkdir -p "${ROOT_DIR}/C:/Java/jdk-21/bin"
/bin/mkdir -p "${ROOT_DIR}/C:/sqlcl/bin"
create_fake_java_binary "${ROOT_DIR}/C:/Java/jdk-21/bin/java.exe"
create_fake_sqlcl_binary "${ROOT_DIR}/C:/sqlcl/bin/sql.exe"

if ! java_home_is_usable "${ROOT_DIR}\\C:\Java\jdk-21"; then
  printf 'Expected java_home_is_usable to accept Windows-style Java homes\n' >&2
  exit 1
fi

if ! sqlcl_bin_is_usable "${ROOT_DIR}\\C:\sqlcl\bin\sql.exe"; then
  printf 'Expected sqlcl_bin_is_usable to accept Windows-style absolute SQLcl paths\n' >&2
  exit 1
fi

/bin/mkdir -p "${ROOT_DIR}/win-bin"
create_fake_sqlcl_binary "${ROOT_DIR}/win-bin/sql.exe"
PATH="${ROOT_DIR}/win-bin:${ROOT_DIR}/fake-bin"
OSTYPE='msys'

if [[ "$(detect_init_sqlcl_bin)" != "${ROOT_DIR}/win-bin/sql.exe" ]]; then
  printf 'Expected detect_init_sqlcl_bin to accept Windows-style sql.exe paths\n' >&2
  exit 1
fi

unset OSTYPE

/bin/mkdir -p "${ROOT_DIR}/dot-win-bin"
create_fake_sqlcl_binary "${ROOT_DIR}/dot-win-bin/sql.exe"
PATH="${ROOT_DIR}/dot-win-bin:${ROOT_DIR}/fake-bin"

DOT_RESOLVED="$(resolve_absolute_executable_path '.\\sql.exe')"

if [[ "${DOT_RESOLVED}" != "${ROOT_DIR}/dot-win-bin/sql.exe" ]]; then
  printf 'Expected resolve_absolute_executable_path to normalize .\\sql.exe via PATH directory, got: %s\n' "${DOT_RESOLVED}" >&2
  exit 1
fi

/bin/mkdir -p "${ROOT_DIR}/subdir"
create_fake_sqlcl_binary "${ROOT_DIR}/subdir/sql.exe"
PATH="${ROOT_DIR}/fake-bin"

SUBDIR_RESOLVED="$(resolve_absolute_executable_path 'subdir\\sql.exe')"

if [[ "${SUBDIR_RESOLVED}" != "${ROOT_DIR}/subdir/sql.exe" ]]; then
  printf 'Expected resolve_absolute_executable_path to normalize subdir\\sql.exe paths, got: %s\n' "${SUBDIR_RESOLVED}" >&2
  exit 1
fi

reset_fake_runtime_bin
write_conn_json_fixture '{}'
create_fake_sqlcl_binary "${ROOT_DIR}/fake-bin/sql"
create_fake_sqlcl_binary "${ROOT_DIR}/relative-sql/sql"
detect_java_home_from_launcher() {
  return 1
}
PATH="${ROOT_DIR}/relative-sql:${ROOT_DIR}/fake-bin"

capture_main_with_input $'localhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_OUTPUT}" != *"db_sqlcl_bin=${ROOT_DIR}/relative-sql/sql"* ]]; then
  printf 'Expected absolute detected SQLcl binary in preview, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' "{\"apex_workspace\":\"DEV\",\"db_connect_string\":\"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\",\"db_connection_mode\":\"direct\",\"db_schema\":\"dev\",\"db_sqlcl_bin\":\"${ROOT_DIR}/relative-sql/sql\",\"env_name\":\"dev@oci\"}"

unset -f detect_java_home_from_launcher

reset_fake_runtime_bin
write_conn_json_fixture '{
  "dev@oci": {
    "env_name": "dev@oci",
    "db_connection_mode": "direct",
    "db_connect_string": "legacy/__fill_me__@127.0.0.1:1521/ORCLPDB1",
    "db_schema": "legacy",
    "apex_workspace": "LEGACY",
    "java_home": "/stale/jdk",
    "db_sqlcl_bin": "/stale/sql",
    "notes": "keep-me"
  }
}'

capture_main_with_input $'overwrite-minimal\ndirect\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected overwrite-minimal without rediscovery to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","env_name":"dev@oci","notes":"keep-me"}'

reset_fake_runtime_bin
create_fake_java_binary "${ROOT_DIR}/preserved-jdk/bin/java"
create_fake_sqlcl_binary "${ROOT_DIR}/preserved-bin/sql"
write_conn_json_fixture "{
  \"dev@oci\": {
    \"env_name\": \"dev@oci\",
    \"db_connection_mode\": \"direct\",
    \"db_connect_string\": \"legacy/__fill_me__@127.0.0.1:1521/ORCLPDB1\",
    \"db_schema\": \"legacy\",
    \"apex_workspace\": \"LEGACY\",
    \"java_home\": \"${ROOT_DIR}/preserved-jdk\",
    \"db_sqlcl_bin\": \"${ROOT_DIR}/preserved-bin/sql\",
    \"notes\": \"keep-me\"
  }
}"

capture_main_with_input $'overwrite-minimal\ndirect\nlocalhost\ndev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected overwrite-minimal to preserve valid explicit runtime values, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' "{\"apex_workspace\":\"DEV\",\"db_connect_string\":\"dev_user/__fill_me__@127.0.0.1:1521/ORCLPDB1\",\"db_connection_mode\":\"direct\",\"db_schema\":\"dev\",\"db_sqlcl_bin\":\"${ROOT_DIR}/preserved-bin/sql\",\"env_name\":\"dev@oci\",\"java_home\":\"${ROOT_DIR}/preserved-jdk\",\"notes\":\"keep-me\"}"

if [[ "$(wizard_managed_keys_csv)" != *'java_home'* || "$(wizard_managed_keys_csv)" != *'db_sqlcl_bin'* || "$(wizard_managed_keys_csv)" != *'apex_builder_login_url'* || "$(wizard_managed_keys_csv)" != *'apex_builder_password'* || "$(wizard_managed_keys_csv)" != *'apex_browser_smoke_url'* ]]; then
  printf 'Expected wizard_managed_keys_csv to include runtime and browser connection keys\n' >&2
  exit 1
fi

printf 'apex_ai init runtime autofill test passed\n'

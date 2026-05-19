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
PATH="${ROOT_DIR}/empty-bin"

/bin/mkdir -p "${ROOT_DIR}/empty-bin"
/bin/ln -sf /bin/cat "${ROOT_DIR}/empty-bin/cat"
/bin/ln -sf "${PYTHON3_BIN}" "${ROOT_DIR}/empty-bin/python3"
/bin/ln -sf "${TR_BIN}" "${ROOT_DIR}/empty-bin/tr"

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
      printf 'OK %s Deep checks passed\n' "$3"
      ;;
    sql-check)
      [[ "$#" -eq 3 ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 96
      }
      [[ "${arg4}" == '' ]] || {
        printf 'Unexpected sql-check invocation: %s\n' "$*" >&2
        return 95
      }
      printf 'OK %s SQLcl connectivity check passed\n' "$3"
      ;;
    *)
      printf 'Unexpected bash invocation: %s\n' "$*" >&2
      return 94
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

reset_conn_json() {
  printf '{}\n' > "${ROOT_DIR}/conn.json"
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
  set -e

  CAPTURED_OUTPUT="$(<"${CAPTURE_FILE}")"
  CAPTURED_STATUS="${status}"
}

reset_conn_json

capture_main_with_input $'localhost\ndev_user/p@ss@word@127.0.0.1:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected direct localhost flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'direct_access_path - Purpose: choose how direct mode reaches the database. Examples: localhost, ssh, custom'* ]]; then
  printf 'Expected direct access prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'ssh_host - Purpose:'* || "${CAPTURED_OUTPUT}" == *'db_tns_alias - Purpose:'* || "${CAPTURED_OUTPUT}" == *'db_username - Purpose: database username used for login. Examples: dev_user, app_user'* ]]; then
  printf 'Did not expect SSH or TNS prompts for localhost direct flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_schema=dev'* || "${CAPTURED_OUTPUT}" != *'apex_workspace=DEV'* || "${CAPTURED_OUTPUT}" != *'db_connect_string=dev_user/***@127.0.0.1:1521/ORCLPDB1'* ]]; then
  printf 'Expected localhost direct collected values, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'java_home='* || "${CAPTURED_OUTPUT}" == *'db_sqlcl_bin='* ]]; then
  printf 'Did not expect runtime autofill values in minimal direct test, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_connect_string=dev_user/p@ss@word@127.0.0.1:1521/ORCLPDB1'* ]]; then
  printf 'Did not expect raw password in localhost direct output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@oci'$'\037' ]]; then
  printf 'Expected deep check then sql-check after localhost write, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV","db_connect_string":"dev_user/p@ss@word@127.0.0.1:1521/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","env_name":"dev@oci"}'

reset_conn_json
: > "${TRACE_FILE}"

capture_main_with_input $'ssh\ndev_user\nopc@1.2.3.4\n/Users/test/.ssh/dev.key\n15210\nORCLPDB1\ndb-main\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected direct ssh flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'ssh_host - Purpose: SSH login for the remote host. Examples: opc@1.2.3.4, ubuntu@db.example.com'* ]]; then
  printf 'Expected ssh_host prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'ssh_key_path - Purpose: optional SSH private key path when default SSH auth is not enough. Examples: /Users/me/.ssh/id_rsa, /keys/dev.key'* ]]; then
  printf 'Expected ssh_key_path prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_container - Purpose: optional remote Docker DB container used to derive tunnel target IP. Examples: db-main, db-replica'* ]]; then
  printf 'Expected db_container prompt with purpose/examples, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_tns_alias - Purpose:'* || "${CAPTURED_OUTPUT}" == *'EZ Connect string for local database access'* ]]; then
  printf 'Did not expect TNS or manual connect string prompt for SSH direct flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connect_string=dev_user/***@127.0.0.1:15210/ORCLPDB1'* || "${CAPTURED_OUTPUT}" != *'ssh_host=opc@1.2.3.4'* || "${CAPTURED_OUTPUT}" != *'db_container=db-main'* ]]; then
  printf 'Expected generated SSH direct collected values, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_connect_string=dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1'* ]]; then
  printf 'Did not expect raw password in SSH direct output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@oci'$'\037' ]]; then
  printf 'Expected deep check then sql-check after ssh write, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

EXPECTED_PERSISTED_JSON="$(cat <<'JSON'
{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1","db_connection_mode":"direct","db_container":"db-main","db_schema":"dev","db_service":"ORCLPDB1","db_username":"dev_user","env_name":"dev@oci","local_forward_port":"15210","ssh_host":"opc@1.2.3.4","ssh_key_path":"/Users/test/.ssh/dev.key","ssh_tunnel_command":"REMOTE_DB_IP=$(ssh -n -i /Users/test/.ssh/dev.key opc@1.2.3.4 \"sudo docker inspect db-main --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'\") && [ -n \"${REMOTE_DB_IP}\" ] && ssh -n -f -N -o ExitOnForwardFailure=yes -i /Users/test/.ssh/dev.key -L 15210:${REMOTE_DB_IP}:1521 opc@1.2.3.4"}
JSON
)"
assert_persisted_entry 'dev@oci' "${EXPECTED_PERSISTED_JSON}"

reset_conn_json
: > "${TRACE_FILE}"

capture_main_with_input $'ssh\ndev_user\nopc@1.2.3.4\n/Users/test/.ssh/dev.key\n15210\nORCLPDB1\n\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected direct ssh flow without db_container to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

EXPECTED_PERSISTED_JSON="$(cat <<'JSON'
{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","db_service":"ORCLPDB1","db_username":"dev_user","env_name":"dev@oci","local_forward_port":"15210","ssh_host":"opc@1.2.3.4","ssh_key_path":"/Users/test/.ssh/dev.key","ssh_tunnel_command":"ssh -n -f -N -o ExitOnForwardFailure=yes -i /Users/test/.ssh/dev.key -L 15210:127.0.0.1:1521 opc@1.2.3.4"}
JSON
)"
assert_persisted_entry 'dev@oci' "${EXPECTED_PERSISTED_JSON}"

reset_conn_json
: > "${TRACE_FILE}"

capture_main_with_input $'ssh\ndev_user\nopc@1.2.3.4\n\n15210\nORCLPDB1\ndb-main\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected direct ssh flow without ssh_key_path to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

EXPECTED_PERSISTED_JSON="$(cat <<'JSON'
{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@127.0.0.1:15210/ORCLPDB1","db_connection_mode":"direct","db_container":"db-main","db_schema":"dev","db_service":"ORCLPDB1","db_username":"dev_user","env_name":"dev@oci","local_forward_port":"15210","ssh_host":"opc@1.2.3.4","ssh_tunnel_command":"REMOTE_DB_IP=$(ssh -n opc@1.2.3.4 \"sudo docker inspect db-main --format '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'\") && [ -n \"${REMOTE_DB_IP}\" ] && ssh -n -f -N -o ExitOnForwardFailure=yes -L 15210:${REMOTE_DB_IP}:1521 opc@1.2.3.4"}
JSON
)"
assert_persisted_entry 'dev@oci' "${EXPECTED_PERSISTED_JSON}"

reset_conn_json
: > "${TRACE_FILE}"

capture_main_with_input $'custom\ndev_user/__fill_me__@dbhost.internal:1521/ORCLPDB1\ndev\nDEV\n' init dev@oci direct

if [[ "${CAPTURED_STATUS}" -ne 0 ]]; then
  printf 'Expected direct custom flow to exit 0, got %s\n%s\n' "${CAPTURED_STATUS}" "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connect_string - Purpose: custom Oracle connect string when you already have one. Examples: dev_user/__fill_me__@dbhost:1521/ORCLPDB1, dev_user/__fill_me__@//scan-host:1521/service'* ]]; then
  printf 'Expected custom db_connect_string prompt, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'ssh_host - Purpose:'* || "${CAPTURED_OUTPUT}" == *'db_tns_admin - Purpose:'* || "${CAPTURED_OUTPUT}" == *'db_username - Purpose: database username used for login. Examples: dev_user, app_user'* ]]; then
  printf 'Did not expect SSH or TNS prompts for custom direct flow, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" != *'db_connect_string=dev_user/***@dbhost.internal:1521/ORCLPDB1'* ]]; then
  printf 'Expected custom direct collected connect string, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "${CAPTURED_OUTPUT}" == *'db_connect_string=dev_user/__fill_me__@dbhost.internal:1521/ORCLPDB1'* ]]; then
  printf 'Did not expect raw password in custom direct output, got: %s\n' "${CAPTURED_OUTPUT}" >&2
  exit 1
fi

if [[ "$(<"${TRACE_FILE}")" != "${ROOT_DIR}/tools/apex_ai.sh"$'\037''check'$'\037''dev@oci'$'\037''--deep'$'\n'"${ROOT_DIR}/tools/apex_ai.sh"$'\037''sql-check'$'\037''dev@oci'$'\037' ]]; then
  printf 'Expected deep check then sql-check after custom write, got: %s\n' "$(<"${TRACE_FILE}")" >&2
  exit 1
fi

assert_persisted_entry 'dev@oci' '{"apex_workspace":"DEV","db_connect_string":"dev_user/__fill_me__@dbhost.internal:1521/ORCLPDB1","db_connection_mode":"direct","db_schema":"dev","env_name":"dev@oci"}'

printf 'apex_ai init direct wizard test passed\n'

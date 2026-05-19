#!/usr/bin/env bash

set -euo pipefail

repo_root() {
  local script_dir
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  cd "${script_dir}/.." >/dev/null 2>&1 && pwd
}

ROOT_DIR="$(repo_root)"
PROJECT_CONFIG_DIR="${ROOT_DIR}"
CONFIG_FILE="${ROOT_DIR}/conn.json"
LOCAL_CONFIG_FILE="${ROOT_DIR}/.conn.json"
LOADED_CONN_JSON_KEYS=""
OMX_RESULTS_ROOT="${ROOT_DIR}/.omx/results"

trim() {
  local value="$1"
  value="${value#${value%%[![:space:]]*}}"
  value="${value%${value##*[![:space:]]}}"
  printf '%s' "${value}"
}

unescape_double_quoted() {
  local value="$1"
  value="${value//\\\"/\"}"
  value="${value//\\\\/\\}"
  printf '%s' "${value}"
}

parse_env_line() {
  local line_number="$1"
  local line="$2"
  local key
  local raw_value
  local value

  if [[ ! "${line}" =~ ^([A-Z0-9_]+)[[:space:]]*=(.*)$ ]]; then
    printf 'Unsupported syntax in %s line %s: %s\n' "${CONFIG_FILE}" "${line_number}" "${line}" >&2
    return 1
  fi

  key="${BASH_REMATCH[1]}"
  raw_value="$(trim "${BASH_REMATCH[2]}")"

  if [[ "${raw_value}" =~ ^\"(.*)\"[[:space:]]*(#.*)?$ ]]; then
    value="$(unescape_double_quoted "${BASH_REMATCH[1]}")"
  else
    value="$(trim "${raw_value%%#*}")"
  fi

  if [[ -z "${value}" ]]; then
    printf 'Missing value in %s line %s: %s\n' "${CONFIG_FILE}" "${line_number}" "${line}" >&2
    return 1
  fi

  printf '%s=%s\n' "${key}" "${value}"
}

resolve_app_code() {
  local selected_app="${1:-}"

  if [[ -n "${selected_app}" ]]; then
    printf '%s\n' "${selected_app}"
    return 0
  fi

  if [[ -n "${ACTIVE_APP:-}" ]]; then
    printf '%s\n' "${ACTIVE_APP}"
    return 0
  fi

  printf 'Missing application selection. Pass --app f<APP_ID>.\n' >&2
  return 1
}

list_conn_json_envs() {
  local conn_json_file="${1:-$(root_conn_json_file)}"

  [[ -f "${conn_json_file}" ]] || {
    printf 'Connection inventory file not found: %s\n' "${conn_json_file}" >&2
    return 1
  }

  [[ -r "${conn_json_file}" ]] || {
    printf 'Connection inventory file is not readable: %s\n' "${conn_json_file}" >&2
    return 1
  }

  python3 - "$conn_json_file" <<'PY'
import json
import sys

path = sys.argv[1]

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

for key in sorted(key for key, value in payload.items() if isinstance(value, dict)):
    print(key)
PY
}

list_exported_apps_for_env() {
  local env_alias
  local export_dir
  local app_path

  env_alias="$(normalize_env_alias "${1:-}")" || return 1
  export_dir="${ROOT_DIR}/export/${env_alias}"

  [[ -d "${export_dir}" ]] || return 0

  for app_path in "${export_dir}"/f*; do
    [[ -d "${app_path}" ]] || continue
    [[ "${app_path##*/}" =~ ^f[0-9]+$ ]] || continue
    printf '%s\n' "${app_path##*/}"
  done | LC_ALL=C sort
}

require_numeric_id() {
  local value="${1:-}"
  local label="$2"

  [[ "${value}" =~ ^[0-9]+$ ]] || {
    printf '%s must be numeric: %s\n' "${label}" "${value}" >&2
    return 1
  }

  value="$((10#${value}))"
  printf '%s\n' "${value}"
}

require_numeric_app_id() {
  require_numeric_id "${1:-}" "APEX application id"
}

require_numeric_page_id() {
  require_numeric_id "${1:-}" "APEX page id"
}

normalize_env_alias() {
  local env_input="${1:-}"

  [[ -n "${env_input}" ]] || {
    printf 'Missing environment alias.\n' >&2
    return 1
  }

  if [[ "${env_input}" == *.env ]]; then
    printf 'Deprecated environment argument format: %s. Use env alias %s instead.\n' "${env_input}" "${env_input%.env}" >&2
    env_input="${env_input%.env}"
  fi

  python3 - "${env_input}" <<'PY' || {
import re
import sys

raise SystemExit(0 if re.fullmatch(r"[\w.@-]+", sys.argv[1]) else 1)
PY
    printf 'Unsupported environment alias: %s\n' "${env_input}" >&2
    return 1
  }

  printf '%s\n' "${env_input}"
}

app_dir() {
  local app_code="$1"
  local env_alias="${2:-${DB_ENV_NAME:-}}"

  if [[ -n "${env_alias}" ]]; then
    printf '%s/export/%s/%s\n' "${ROOT_DIR}" "${env_alias}" "${app_code}"
  else
    printf '%s/export/%s\n' "${ROOT_DIR}" "${app_code}"
  fi
}

resolve_app_code_from_app_id() {
  local app_id="${1:-}"

  app_id="$(require_numeric_app_id "${app_id}")" || return 1

  printf 'f%s\n' "${app_id}"
}

root_conn_json_file() {
  printf '%s/conn.json\n' "${ROOT_DIR}"
}

write_conn_json_entry() {
  local conn_json_file="$1"
  local env_alias="$2"
  local entry_json="$3"
  local update_mode="${4:-merge-preserve-advanced}"
  local managed_keys_csv="${5:-}"

  python3 - "${conn_json_file}" "${env_alias}" "${entry_json}" "${update_mode}" "${managed_keys_csv}" <<'PY'
import json
import os
import sys

path = sys.argv[1]
env_alias = sys.argv[2]
entry = json.loads(sys.argv[3])
update_mode = sys.argv[4]
managed_keys = [key for key in sys.argv[5].split(",") if key]

os.makedirs(os.path.dirname(path) or ".", exist_ok=True)

if os.path.exists(path) and os.path.getsize(path) > 0:
    with open(path, "r", encoding="utf-8") as handle:
        payload = json.load(handle)
else:
    payload = {}

if not isinstance(payload, dict):
    raise SystemExit("Connection inventory root must be a JSON object")

existing_entry = payload.get(env_alias)
if isinstance(existing_entry, dict):
    merged_entry = dict(existing_entry)
    if update_mode == "overwrite-minimal":
        for key in managed_keys:
            merged_entry.pop(key, None)
        merged_entry.update(entry)
        payload[env_alias] = merged_entry
    elif update_mode == "merge-preserve-advanced":
        merged_entry.update(entry)
        payload[env_alias] = merged_entry
    else:
        raise SystemExit("Unsupported conn.json update mode: {}".format(update_mode))
else:
    payload[env_alias] = entry

with open(path, "w", encoding="utf-8") as handle:
    json.dump(payload, handle, indent=2)
    handle.write("\n")
PY
}

conn_json_has_env() {
  local conn_json_file="$1"
  local env_alias="$2"

  python3 - "$conn_json_file" "$env_alias" <<'PY'
import json
import sys

path = sys.argv[1]
env_alias = sys.argv[2]

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

entry = payload.get(env_alias)
if isinstance(entry, dict):
    raise SystemExit(0)

raise SystemExit(1)
PY
}

resolve_conn_json_file_for_env() {
  local env_alias="$1"
  local candidate

  candidate="$(root_conn_json_file)"
  if [[ -f "${candidate}" ]] && conn_json_has_env "${candidate}" "${env_alias}"; then
    printf '%s\n' "${candidate}"
    return 0
  fi

  candidate="${LOCAL_CONFIG_FILE}"
  if [[ -f "${candidate}" ]] && conn_json_has_env "${candidate}" "${env_alias}"; then
    printf '%s\n' "${candidate}"
    return 0
  fi

  return 1
}

load_conn_json_entry() {
  local conn_json_file="$1"
  local env_alias="$2"
  local line_number=0
  local line
  local parsed
  local key
  local value
  local previous_key
  local loaded_keys=()

  CONFIG_FILE="${conn_json_file}#${env_alias}"

  for previous_key in ${LOADED_CONN_JSON_KEYS:-}; do
    unset "${previous_key}"
  done

  LOADED_CONN_JSON_KEYS=""

  # Store the Python script in a temporary file
  local python_script
  python_script="$(mktemp)"
  cat > "$python_script" <<-'PYCODE'
import json
import os
import sys

path = sys.argv[1]
env_alias = sys.argv[2]
local_path = sys.argv[3] if len(sys.argv) > 3 else ""

with open(path, "r", encoding="utf-8") as handle:
    payload = json.load(handle)

entry = payload.get(env_alias)
if not isinstance(entry, dict):
    raise SystemExit("Missing environment entry in {}: {}".format(path, env_alias))

if local_path and os.path.exists(local_path) and os.path.abspath(local_path) != os.path.abspath(path):
    with open(local_path, "r", encoding="utf-8") as handle:
        local_payload = json.load(handle)
    local_entry = local_payload.get(env_alias)
    if isinstance(local_entry, dict):
        merged_entry = dict(entry)
        merged_entry.update(local_entry)
        entry = merged_entry

for key, value in entry.items():
    if key.startswith("_"):
        continue
    if isinstance(value, (dict, list)) or value is None:
        continue
    env_key = key.upper()
    if isinstance(value, bool):
        rendered = "true" if value else "false"
    else:
        rendered = str(value)
    print("{}={}".format(env_key, json.dumps(rendered)))
PYCODE

  local temp_py_output
  temp_py_output="$(mktemp)"
  
  python3 "$python_script" "$conn_json_file" "$env_alias" "${LOCAL_CONFIG_FILE:-}" > "$temp_py_output"

  while IFS= read -r line || [[ -n "${line}" ]]; do
    line_number=$((line_number + 1))
    line="$(trim "${line}")"
    [[ -z "${line}" ]] && continue

    parsed="$(parse_env_line "${line_number}" "${line}")" || { local ret=$?; rm -f "$python_script" "$temp_py_output"; return $ret; }
    key="${parsed%%=*}"
    value="${parsed#*=}"
    printf -v "${key}" '%s' "${value}"
    export "${key}"
    loaded_keys+=("${key}")
  done < "$temp_py_output"
  
  rm -f "$python_script" "$temp_py_output"

  LOADED_CONN_JSON_KEYS="${loaded_keys[*]}"
}

is_placeholder_apex_builder_login_url() {
  case "${1:-}" in
    ""|"https://example.test/ords/r/apex/workspace-sign-in/oracle-apex-sign-in")
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

reset_loaded_env_context() {
  unset TNS_ADMIN
  unset APP_CONFIG_FILE
  unset DB_ENV_NAME
  unset DB_CONNECTION_MODE
  unset DB_CONNECT_STRING
  unset DB_SCHEMA
  unset APEX_APP_ID
  unset APEX_WORKSPACE
  unset APEX_EXPORT_DIR
  unset APP_DOCS_DIR
  unset BOOTSTRAP_REPORT_MD
  unset BOOTSTRAP_REPORT_JSON
}

load_root_env() {
  export PROJECT_NAME="${PROJECT_NAME:-apex-bootstrap}"
  export DB_SQLCL_BIN="${DB_SQLCL_BIN:-sql}"
  export JAVA_HOME="${JAVA_HOME:-}"
}

apply_loaded_env() {
  local env_alias="$1"
  local app_id="${2:-}"

  export DB_ENV_NAME="${env_alias}"
  export DB_CONNECTION_MODE="${DB_CONNECTION_MODE:-direct}"
  export DB_SCHEMA="${DB_SCHEMA:-lab}"
  export APEX_APP_ID="${app_id:-}"
  export APEX_WORKSPACE="${APEX_WORKSPACE:-WORKSPACE_NAME}"

  if [[ -n "${app_id}" ]]; then
    export APEX_EXPORT_DIR="${APP_DIR}/apex"
    export APP_DOCS_DIR="${APP_DIR}/docs"
    export BOOTSTRAP_REPORT_MD="${APP_DOCS_DIR}/bootstrap_report.md"
    export BOOTSTRAP_REPORT_JSON="${APP_DOCS_DIR}/bootstrap_report.json"
  fi

  case "${DB_CONNECTION_MODE}" in
    direct|ezconnect)
      : "${DB_CONNECT_STRING:?DB_CONNECT_STRING is required in ${APP_CONFIG_FILE}}"
      ;;
    tns)
      : "${DB_USERNAME:?DB_USERNAME is required in ${APP_CONFIG_FILE}}"
      : "${DB_PASSWORD:?DB_PASSWORD is required in ${APP_CONFIG_FILE}}"
      : "${DB_TNS_ALIAS:?DB_TNS_ALIAS is required in ${APP_CONFIG_FILE}}"
      : "${DB_TNS_ADMIN:?DB_TNS_ADMIN is required in ${APP_CONFIG_FILE}}"
      export TNS_ADMIN="${DB_TNS_ADMIN}"
      export DB_CONNECT_STRING="${DB_USERNAME}/\"${DB_PASSWORD}\"@${DB_TNS_ALIAS}"
      ;;
    *)
      printf 'Unsupported DB_CONNECTION_MODE: %s\n' "${DB_CONNECTION_MODE}" >&2
      return 1
      ;;
  esac
}

apply_runtime_path_env_overrides() {
  local has_incoming_java_home="${1:-0}"
  local incoming_java_home="${2-}"
  local has_incoming_db_sqlcl_bin="${3:-0}"
  local incoming_db_sqlcl_bin="${4-}"

  if [[ "${has_incoming_java_home}" == "1" ]]; then
    export JAVA_HOME="${incoming_java_home}"
  fi

  if [[ "${has_incoming_db_sqlcl_bin}" == "1" ]]; then
    export DB_SQLCL_BIN="${incoming_db_sqlcl_bin}"
  fi
}

load_env_context() {
  local env_input="$1"
  local app_id="${2:-}"
  local env_alias=""
  local conn_json_file=""
  local has_incoming_java_home=0
  local incoming_java_home="${JAVA_HOME:-}"
  local has_incoming_db_sqlcl_bin=0
  local incoming_db_sqlcl_bin="${DB_SQLCL_BIN:-}"

  if [[ -n "${JAVA_HOME+x}" ]]; then
    has_incoming_java_home=1
  fi

  if [[ -n "${DB_SQLCL_BIN+x}" ]]; then
    has_incoming_db_sqlcl_bin=1
  fi

  load_root_env
  reset_loaded_env_context
  env_alias="$(normalize_env_alias "${env_input}")"
  conn_json_file="$(resolve_conn_json_file_for_env "${env_alias}" || true)"

  if [[ -n "${conn_json_file}" ]]; then
    load_conn_json_entry "${conn_json_file}" "${env_alias}"
  fi

  apply_runtime_path_env_overrides \
    "${has_incoming_java_home}" "${incoming_java_home}" \
    "${has_incoming_db_sqlcl_bin}" "${incoming_db_sqlcl_bin}"

  if [[ -z "${conn_json_file}" ]]; then
    printf 'Missing environment config for alias: %s\n' "${env_alias}" >&2
    printf 'Expected %s#%s\n' "$(root_conn_json_file)" "${env_alias}" >&2
    return 1
  fi

  export APP_CONFIG_FILE="${conn_json_file}#${env_alias}"
  apply_loaded_env "${env_alias}" "${app_id}"
}

load_target_env() {
  local env_input="${1:-}"
  local app_id="${2:-}"
  local env_alias=""

  env_alias="$(normalize_env_alias "${env_input}")"
  export APP_CODE="$(resolve_app_code_from_app_id "${app_id}")"
  export APP_DIR="$(app_dir "${APP_CODE}" "${env_alias}")"

  [[ -d "${APP_DIR}" ]] || {
    printf 'Missing application directory: %s\n' "${APP_DIR}" >&2
    printf 'Export or create %s first.\n' "${APP_DIR#${ROOT_DIR}/}" >&2
    return 1
  }

  load_env_context "${env_alias}" "${app_id}"
}

load_db_env() {
  local selected_app="${1:-}"
  local env_input="${2:-}"
  local app_code=""
  local app_id=""
  local env_alias=""

  app_code="$(resolve_app_code "${selected_app}")"
  [[ "${app_code}" =~ ^f([0-9]+)$ ]] || {
    printf 'Application code must look like f<APP_ID>: %s\n' "${app_code}" >&2
    return 1
  }
  app_id="${BASH_REMATCH[1]}"
  export APP_CODE="${app_code}"
  export APEX_APP_ID="${app_id}"

  if [[ -n "${env_input}" ]]; then
    env_alias="$(normalize_env_alias "${env_input}")"
    export APP_DIR="$(app_dir "${APP_CODE}" "${env_alias}")"
    load_env_context "${env_alias}" "${app_id}"
  else
    load_root_env
    export APP_DIR="$(app_dir "${APP_CODE}")"
  fi
}

ensure_java() {
  local java_bin

  if [[ -n "${JAVA_HOME:-}" ]]; then
    java_bin="${JAVA_HOME}/bin/java"
    if [[ ! -x "${java_bin}" && -x "${JAVA_HOME}/bin/java.exe" ]]; then
      java_bin="${JAVA_HOME}/bin/java.exe"
    fi

    [[ -x "${java_bin}" ]] || {
      printf 'JAVA_HOME does not point to a usable java binary: %s\n' "${JAVA_HOME}" >&2
      return 1
    }

    "${java_bin}" -version >/dev/null 2>&1 || {
      printf 'JAVA_HOME points to java, but it is not runnable: %s\n' "${JAVA_HOME}" >&2
      return 1
    }

    return 0
  fi

  java_bin="$(command -v java 2>/dev/null || true)"
  [[ -n "${java_bin}" ]] || {
    printf 'Java runtime not found. Set JAVA_HOME in your shell environment.\n' >&2
    return 1
  }

  "${java_bin}" -version >/dev/null 2>&1 || {
    printf 'Java launcher found but no usable runtime is installed. Set JAVA_HOME in your shell environment.\n' >&2
    return 1
  }
}

tnsnames_path() {
  printf '%s/tnsnames.ora\n' "${DB_TNS_ADMIN}"
}

sqlnet_path() {
  printf '%s/sqlnet.ora\n' "${DB_TNS_ADMIN}"
}

wallet_file_status() {
  local candidate

  for candidate in cwallet.sso ewallet.p12 ewallet.pem; do
    if [[ -f "${DB_TNS_ADMIN}/${candidate}" ]]; then
      printf 'present (%s)\n' "${candidate}"
      return 0
    fi
  done

  printf 'missing\n'
}

validate_tns_config() {
  [[ "${DB_CONNECTION_MODE}" == "tns" ]] || return 0

  [[ -d "${DB_TNS_ADMIN}" ]] || {
    printf 'TNS admin directory not found: %s\n' "${DB_TNS_ADMIN}" >&2
    return 1
  }

  [[ -f "$(tnsnames_path)" ]] || {
    printf 'Missing tnsnames.ora: %s\n' "$(tnsnames_path)" >&2
    return 1
  }

  [[ -f "$(sqlnet_path)" ]] || {
    printf 'Missing sqlnet.ora: %s\n' "$(sqlnet_path)" >&2
    return 1
  }

  grep -Eiq "^[[:space:]]*${DB_TNS_ALIAS}[[:space:]]*=" "$(tnsnames_path)" || {
    printf 'TNS alias not found in %s: %s\n' "$(tnsnames_path)" "${DB_TNS_ALIAS}" >&2
    return 1
  }
}

ensure_sqlcl() {
  local bin_name="${DB_SQLCL_BIN:-sql}"

  if ! command -v "${bin_name}" >/dev/null 2>&1; then
    printf 'SQLcl binary not found in PATH: %s\n' "${bin_name}" >&2
    return 1
  fi
}

value_has_placeholder() {
  local value="${1:-}"
  [[ -n "${value}" && "${value}" == *"__fill_me__"* ]]
}

run_sqlcl_health_check() {
  printf 'select 1 as apex_ai_check from dual;\n' | run_sqlcl >/dev/null
}

sqlcl_connect_target() {
  local connect_target=""
  local host_port=""
  local host=""
  local port=""

  connect_target="${DB_CONNECT_STRING##*@}"
  host_port="${connect_target%%/*}"

  [[ "${host_port}" == *:* ]] || return 1

  port="${host_port##*:}"
  host="${host_port%:*}"
  host="${host#[}"
  host="${host%]}"

  [[ -n "${host}" && -n "${port}" ]] || return 1
  printf '%s %s\n' "${host}" "${port}"
}

local_port_is_listening() {
  local port="$1"
  lsof -nP -iTCP:"${port}" -sTCP:LISTEN >/dev/null 2>&1
}

wait_for_local_port() {
  local port="$1"
  local attempts="${2:-10}"
  local try

  for ((try = 0; try < attempts; try += 1)); do
    local_port_is_listening "${port}" && return 0
    sleep 1
  done

  return 1
}

start_ssh_tunnel_command() {
  local tunnel_command="$1"
  # Repository-generated tunnel commands already self-background via `ssh -n -f -N`.
  # Running the whole shell under an extra nohup/background layer can stall the
  # initial metadata lookup SSH process before the local listener is opened.
  bash -lc "${tunnel_command}" >/dev/null 2>&1
}

ensure_loopback_direct_tunnel() {
  local host=""
  local port=""

  [[ "${DB_CONNECTION_MODE}" == "direct" || "${DB_CONNECTION_MODE}" == "ezconnect" ]] || return 0
  [[ -n "${SSH_TUNNEL_COMMAND:-}" ]] || return 0
  read -r host port < <(sqlcl_connect_target) || return 0

  case "${host}" in
    127.0.0.1|localhost|::1)
      ;;
    *)
      return 0
      ;;
  esac

  local_port_is_listening "${port}" && return 0
  start_ssh_tunnel_command "${SSH_TUNNEL_COMMAND}"
  wait_for_local_port "${port}" 10 || {
    printf 'Failed to establish local SSH tunnel for %s:%s using SSH_TUNNEL_COMMAND from %s\n' "${host}" "${port}" "${APP_CONFIG_FILE}" >&2
    return 1
  }
}

sqlcl_output_has_errors() {
  local output_file="$1"

  grep -Eq '^(Connection failed|连接失败|Error starting at line|ORA-[0-9]{5}:|SP2-[0-9]{4}:|SQL Error:|ERROR:|[[:space:]]*错误消息[[:space:]]*=[[:space:]]*ORA-[0-9]{5}:)' "${output_file}"
}

run_sqlcl_binary() {
  local bin_name="${DB_SQLCL_BIN}"

  if [[ -n "${ORACLE_HOME:-}" && ! -d "${ORACLE_HOME}" ]]; then
    env -u ORACLE_HOME "${bin_name}" "$@"
    return
  fi

  "${bin_name}" "$@"
}

show_env_summary() {
  cat <<EOF
Application : ${APP_CODE}
Config file : ${APP_CONFIG_FILE}
Environment : ${DB_ENV_NAME}
Mode        : ${DB_CONNECTION_MODE}
Schema      : ${DB_SCHEMA}
APEX App ID : ${APEX_APP_ID}
Workspace   : ${APEX_WORKSPACE}
SQLcl bin   : ${DB_SQLCL_BIN}
EOF

  if [[ "${DB_CONNECTION_MODE}" == "tns" ]]; then
    cat <<EOF
TNS alias   : ${DB_TNS_ALIAS}
TNS_ADMIN   : ${DB_TNS_ADMIN}
tnsnames    : $( [[ -f "$(tnsnames_path)" ]] && printf 'present' || printf 'missing' )
sqlnet      : $( [[ -f "$(sqlnet_path)" ]] && printf 'present' || printf 'missing' )
wallet      : $(wallet_file_status)
EOF
  fi
}

run_sqlcl() {
  local arg
  local output_file=""
  local status=0

  validate_tns_config
  ensure_loopback_direct_tunnel

  output_file="$(mktemp "${TMPDIR:-/tmp}/sqlcl.XXXXXX")"

  set +e
  {
    printf 'whenever oserror exit failure rollback\n'
    printf 'whenever sqlerror exit sql.sqlcode rollback\n'
    printf 'set define off\n'
    printf 'set verify off\n'
    printf 'connect %s\n' "${DB_CONNECT_STRING}"
    if [[ $# -gt 0 ]]; then
      for arg in "$@"; do
        printf '%s\n' "${arg}"
      done
    else
      cat
    fi
    printf 'exit\n'
  } | run_sqlcl_binary -L -s /nolog > "${output_file}" 2>&1
  status=$?
  set -e

  cat "${output_file}"

  if [[ "${status}" -eq 0 ]] && sqlcl_output_has_errors "${output_file}"; then
    status=1
  fi

  rm -f "${output_file}"
  return "${status}"
}

generate_evidence_run_id() {
  python3 - <<'PY'
from datetime import datetime, timezone
import os
import uuid

stamp = datetime.now(timezone.utc).strftime("%Y%m%dT%H%M%SZ")
print(f"{stamp}-{os.getpid()}-{uuid.uuid4().hex[:8]}")
PY
}

initialize_evidence_context() {
  local script_name="$1"

  [[ "${OMX_EVIDENCE_ENABLED:-0}" == "1" ]] || return 1

  if [[ -z "${OMX_RUN_ID:-}" ]]; then
    export OMX_RUN_ID
    OMX_RUN_ID="$(generate_evidence_run_id)"
  fi

  export OMX_SCRIPT_NAME="${script_name}"
  export OMX_RESULTS_DIR="${OMX_RESULTS_ROOT}/${OMX_RUN_ID}"
  export OMX_CONTRACT_RESULTS_DIR="${OMX_RESULTS_DIR}/contract"
  export OMX_DB_RESULTS_DIR="${OMX_RESULTS_DIR}/db"
  export OMX_DEPLOY_RESULTS_DIR="${OMX_RESULTS_DIR}/deploy"
  export OMX_BROWSER_RESULTS_DIR="${OMX_RESULTS_DIR}/browser"

  mkdir -p "${OMX_CONTRACT_RESULTS_DIR}" "${OMX_DB_RESULTS_DIR}" "${OMX_DEPLOY_RESULTS_DIR}" "${OMX_BROWSER_RESULTS_DIR}"
}

write_evidence_summary_file() {
  local category="$1"
  local file_name="$2"
  local action="$3"
  local status="$4"
  local target="$5"
  local message="$6"
  local command_text="$7"
  local destination=""

  [[ "${OMX_EVIDENCE_ENABLED:-0}" == "1" ]] || return 0

  case "${category}" in
    contract)
      destination="${OMX_CONTRACT_RESULTS_DIR}/${file_name}"
      ;;
    db)
      destination="${OMX_DB_RESULTS_DIR}/${file_name}"
      ;;
    deploy)
      destination="${OMX_DEPLOY_RESULTS_DIR}/${file_name}"
      ;;
    browser)
      destination="${OMX_BROWSER_RESULTS_DIR}/${file_name}"
      ;;
    *)
      printf 'Unsupported evidence category: %s\n' "${category}" >&2
      return 1
      ;;
  esac

  python3 - "$destination" "$category" "$action" "$status" "$target" "$message" "$command_text" <<'PY'
import json
import pathlib
import sys
import os

destination = pathlib.Path(sys.argv[1])
category = sys.argv[2]
action = sys.argv[3]
status = sys.argv[4]
target = sys.argv[5]
message = sys.argv[6]
command_text = sys.argv[7]

def null_if_empty(value: str):
    return value if value else None

payload = {
    "run_id": os.environ.get("OMX_RUN_ID"),
    "category": category,
    "script_name": os.environ.get("OMX_SCRIPT_NAME"),
    "status": status,
    "action": action,
    "env_alias": null_if_empty(os.environ.get("DB_ENV_NAME", "")),
    "app_id": null_if_empty(os.environ.get("APEX_APP_ID", "")),
    "app_code": null_if_empty(os.environ.get("APP_CODE", "")),
    "config_file": null_if_empty(os.environ.get("APP_CONFIG_FILE", "")),
    "connection_mode": null_if_empty(os.environ.get("DB_CONNECTION_MODE", "")),
    "db_schema": null_if_empty(os.environ.get("DB_SCHEMA", "")),
    "workspace": null_if_empty(os.environ.get("APEX_WORKSPACE", "")),
    "target": null_if_empty(target),
    "command": null_if_empty(command_text),
    "message": null_if_empty(message),
    "results_dir": os.environ.get("OMX_RESULTS_DIR"),
}

destination.write_text(json.dumps(payload, indent=2) + "\n")
PY

  write_evidence_run_summary
}

write_evidence_run_summary() {
  [[ "${OMX_EVIDENCE_ENABLED:-0}" == "1" ]] || return 0
  [[ -n "${OMX_RESULTS_DIR:-}" ]] || return 0

  python3 - "${OMX_RESULTS_DIR}" <<'PY'
import json
import os
import pathlib
import sys

root = pathlib.Path(sys.argv[1])
categories = ("contract", "db", "deploy", "browser")
entries = []
gates = {}
gate_runs = []

for category in categories:
    category_dir = root / category
    category_entries = []

    if category_dir.exists():
        for path in sorted(category_dir.glob("*.json")):
            try:
                payload = json.loads(path.read_text())
            except json.JSONDecodeError as exc:
                payload = {
                    "category": category,
                    "status": "failure",
                    "action": "parse-evidence",
                    "message": f"Invalid evidence JSON: {exc}",
                }

            entry = {
                "category": payload.get("category") or category,
                "status": payload.get("status") or "unknown",
                "action": payload.get("action"),
                "target": payload.get("target"),
                "message": payload.get("message"),
                "path": str(path.relative_to(root)),
            }
            category_entries.append(entry)
            entries.append(entry)

            if path.parent.name == "contract" and path.name.startswith("gate-"):
                gate_runs.append({
                    "gate": payload.get("action"),
                    "status": payload.get("status") or "unknown",
                    "target": payload.get("target"),
                    "message": payload.get("message"),
                    "artifact": str(path.relative_to(root)),
                })

    if category_entries:
        statuses = [entry["status"] for entry in category_entries]
        if "failure" in statuses:
            gate_status = "failure"
        elif all(status in ("running", "success") for status in statuses) and "success" in statuses:
            gate_status = "success"
        elif all(status == "success" for status in statuses):
            gate_status = "success"
        else:
            gate_status = "unknown"

        gates[category] = {
            "status": gate_status,
            "summaries": [entry["path"] for entry in category_entries],
        }

if entries:
    statuses = [entry["status"] for entry in entries]
    if "failure" in statuses:
        overall_status = "failure"
    elif all(status in ("running", "success") for status in statuses) and "success" in statuses:
        overall_status = "success"
    else:
        overall_status = "unknown"
else:
    overall_status = "unknown"

context = {
    "env_alias": None,
    "app_id": None,
    "app_code": None,
    "config_file": None,
    "connection_mode": None,
    "db_schema": None,
    "workspace": None,
}
for entry_path in sorted(root.glob("*/*.json")):
    try:
        payload = json.loads(entry_path.read_text())
    except json.JSONDecodeError:
        continue

    for key in context:
        if context[key] is None and payload.get(key):
            context[key] = payload[key]

executed_gate_actions = [
    run["gate"]
    for run in gate_runs
    if run.get("gate") and run.get("status") in ("success", "failure")
]

successful_gate_actions = {
    run["gate"]
    for run in gate_runs
    if run.get("gate") and run.get("status") == "success"
}
done_eligible = all(
    gate in successful_gate_actions
    for gate in ("db", "deploy", "browser-functional")
)

summary = {
    "run_id": os.environ.get("OMX_RUN_ID") or root.name,
    "status": overall_status,
    "env_alias": context.get("env_alias"),
    "app_id": context.get("app_id"),
    "app_code": context.get("app_code"),
    "config_file": context.get("config_file"),
    "connection_mode": context.get("connection_mode"),
    "db_schema": context.get("db_schema"),
    "workspace": context.get("workspace"),
    "executed_gates": list(gates.keys()),
    "executed_gate_actions": executed_gate_actions,
    "gates": gates,
    "gate_runs": gate_runs,
    "done_eligible": done_eligible,
    "artifacts": [entry["path"] for entry in entries],
    "results_dir": str(root),
}

destination = root / "summary.json"
temporary = destination.with_suffix(".json.tmp")
temporary.write_text(json.dumps(summary, indent=2) + "\n")
temporary.replace(destination)
PY
}

write_evidence_summary() {
  local category="$1"
  local action="$2"
  local status="$3"
  local target="$4"
  local message="$5"
  local command_text="$6"

  write_evidence_summary_file "${category}" "summary.json" "${action}" "${status}" "${target}" "${message}" "${command_text}"
}

task_done_eligibility_check() {
  local ai_context_file="$1"

  python3 - "${ai_context_file}" "${OMX_RESULTS_DIR:-}" <<'PY'
import json
from pathlib import Path
import sys

context_path = Path(sys.argv[1])
results_dir = Path(sys.argv[2]) if sys.argv[2] else None

ctx = json.loads(context_path.read_text())
current = ctx.get("current_task") or {}
stage_status = current.get("stage_status") or {}
reasons = []

for key in ("scope_confirmation", "implementation", "delivery", "verification"):
    if stage_status.get(key) != "PASSED":
        reasons.append(f"stage_status.{key} is {stage_status.get(key) or 'missing'}, expected PASSED")

evidence_ok = False
if results_dir:
    summary_path = results_dir / "summary.json"
    functional_path = results_dir / "browser" / "functional.summary.json"
    if summary_path.exists() and functional_path.exists():
        try:
            summary = json.loads(summary_path.read_text())
            functional = json.loads(functional_path.read_text())
        except json.JSONDecodeError as exc:
            reasons.append(f"evidence JSON is invalid: {exc}")
        else:
            gate_actions = summary.get("executed_gate_actions") or []
            gate_runs = summary.get("gate_runs") or []
            has_functional_gate = (
                "browser-functional" in gate_actions
                or any(
                    run.get("gate") == "browser-functional" and run.get("status") == "success"
                    for run in gate_runs
                )
            )
            evidence_ok = (
                summary.get("status") == "success"
                and has_functional_gate
                and functional.get("status") == "success"
                and functional.get("action") == "functional"
            )
            for key in ("env_alias", "app_id"):
                if summary.get(key) and current.get(key) and summary.get(key) != current.get(key):
                    evidence_ok = False
                    reasons.append(f"evidence {key} does not match current task")
            if not evidence_ok:
                reasons.append("browser-functional evidence proof is incomplete or not successful")
    else:
        reasons.append("missing run summary or browser/functional.summary.json evidence")
else:
    reasons.append("OMX_RESULTS_DIR is not set for DONE evidence proof")

if reasons:
    print("Task is not DONE-eligible:")
    for reason in reasons:
        print(f"- {reason}")
    raise SystemExit(1)

print("Task is DONE-eligible.")
PY
}

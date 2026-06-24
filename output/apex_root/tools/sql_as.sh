#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/sql_as.sh dev@oci --check
  tools/sql_as.sh dev@oci 100 --check
  tools/sql_as.sh dev@oci -c "select * from dual;"
  tools/sql_as.sh dev@oci 100 @export/dev@oci/f100/db/install.sql
  tools/sql_as.sh dev@oci 100 -c "select * from dual;"
EOF
}

build_command_text() {
  local text="tools/sql_as.sh"
  local arg

  for arg in "$@"; do
    printf -v text '%s %q' "${text}" "${arg}"
  done

  printf '%s\n' "${text}"
}

record_sql_as_evidence() {
  local action="$1"
  local status="$2"
  local target="$3"
  local include_db_summary="$4"
  local message="$5"
  local command_text="$6"

  initialize_evidence_context "sql_as.sh" || return 0
  write_evidence_summary "contract" "${action}" "${status}" "${target}" "${message}" "${command_text}"

  if [[ "${include_db_summary}" == "1" ]]; then
    write_evidence_summary "db" "${action}" "${status}" "${target}" "${message}" "${command_text}"
  fi
}

classify_db_script_phase() {
  local target="$1"

  case "${target}" in
    @*/db/install.sql)
      printf 'install\n'
      ;;
    @*/db/compile_all.sql)
      printf 'compile\n'
      ;;
    @*/db/tests/*)
      printf 'utplsql\n'
      ;;
    *)
      printf 'db-script\n'
      ;;
  esac
}

write_invalid_objects_summary() {
  local status="$1"
  local target="$2"
  local message="$3"
  local command_text="$4"
  local raw_output=""

  if [[ "${status}" == "success" ]]; then
    raw_output="$(printf "set heading off feedback off verify off pages 0 linesize 32767 trimspool on\nselect object_type || '|' || object_name from user_objects where status = 'INVALID' order by object_type, object_name;\n" | run_sqlcl 2>/dev/null || true)"
  fi

  python3 - "${OMX_DB_RESULTS_DIR}/invalid_objects.summary.json" "$status" "$target" "$message" "$command_text" "$raw_output" <<'PY'
import json
import os
import pathlib
import sys

destination = pathlib.Path(sys.argv[1])
status = sys.argv[2]
target = sys.argv[3]
message = sys.argv[4]
command_text = sys.argv[5]
raw_output = sys.argv[6]

items = []
for line in raw_output.splitlines():
    line = line.strip()
    if not line:
        continue
    if "|" in line:
        object_type, object_name = line.split("|", 1)
        items.append({"object_type": object_type.strip(), "object_name": object_name.strip()})
    else:
        items.append({"object_type": "UNKNOWN", "object_name": line})

payload = {
    "run_id": os.environ.get("OMX_RUN_ID"),
    "category": "db",
    "script_name": os.environ.get("OMX_SCRIPT_NAME"),
    "status": status,
    "action": "invalid-objects",
    "env_alias": os.environ.get("DB_ENV_NAME") or None,
    "app_id": os.environ.get("APEX_APP_ID") or None,
    "app_code": os.environ.get("APP_CODE") or None,
    "target": target or None,
    "command": command_text or None,
    "message": message or None,
    "invalid_object_count": len(items) if status == "success" else None,
    "invalid_objects": items if status == "success" else [],
    "results_dir": os.environ.get("OMX_RESULTS_DIR"),
}

destination.write_text(json.dumps(payload, indent=2) + "\n")
PY

  write_evidence_run_summary
}

record_db_script_phase_evidence() {
  local status="$1"
  local target="$2"
  local message="$3"
  local command_text="$4"
  local phase=""
  local file_name=""

  initialize_evidence_context "sql_as.sh" || return 0
  phase="$(classify_db_script_phase "${target}")"

  case "${phase}" in
    install)
      file_name="install.summary.json"
      ;;
    compile)
      file_name="compile.summary.json"
      ;;
    utplsql)
      file_name="utplsql.summary.json"
      ;;
    *)
      file_name="script.summary.json"
      ;;
  esac

  write_evidence_summary_file "db" "${file_name}" "${phase}" "${status}" "${target}" "${message}" "${command_text}"

  if [[ "${phase}" == "compile" ]]; then
    write_invalid_objects_summary "${status}" "${target}" "${message}" "${command_text}"
  fi
}

main() {
  local env_file_name=""
  local selected_app=""
  local sql_text=""
  local app_id=""
  local command_text=""
  local status=""
  local message=""
  local script_target=""
  local original_args=("$@")

  [[ $# -gt 0 ]] || {
    usage
    exit 1
  }

  case "${1:-}" in
    -h|--help)
      usage
      exit 0
      ;;
  esac

  env_file_name="${1:-}"
  shift
  command_text="$(build_command_text "${original_args[@]}")"

  [[ -n "${env_file_name}" ]] || {
    usage
    exit 1
  }

  if [[ $# -gt 0 && "${1:-}" =~ ^[0-9]+$ ]]; then
    app_id="${1:-}"
    selected_app="f${app_id}"
    shift
  fi

  while [[ $# -gt 0 ]]; do
    case "$1" in
      --check)
        if [[ -n "${app_id}" ]]; then
          load_db_env "${selected_app}" "${env_file_name}"
        else
          APP_CODE="env-only"
          load_env_context "${env_file_name}"
        fi
        if ensure_sqlcl; then
          status="success"
          message=""
        else
          status="failure"
          message="SQLcl validation failed"
          record_sql_as_evidence "check" "${status}" "--check" "0" "${message}" "${command_text}"
          return 1
        fi
        show_env_summary
        record_sql_as_evidence "check" "success" "--check" "0" "" "${command_text}"
        return 0
        ;;
      -c)
        shift
        sql_text="${1:-}"
        if [[ -n "${app_id}" ]]; then
          load_db_env "${selected_app}" "${env_file_name}"
        else
          APP_CODE="env-only"
          load_env_context "${env_file_name}"
        fi
        if ! ensure_sqlcl; then
          record_sql_as_evidence "sql" "failure" "-c" "0" "SQLcl validation failed" "${command_text}"
          return 1
        fi
        [[ -n "${sql_text}" ]] || {
          printf 'Missing SQL text after -c\n' >&2
          record_sql_as_evidence "sql" "failure" "-c" "0" "Missing SQL text after -c" "${command_text}"
          return 1
        }
        if printf 'set define off\n%s\n' "${sql_text}" | run_sqlcl; then
          record_sql_as_evidence "sql" "success" "-c" "0" "" "${command_text}"
          return 0
        fi

        record_sql_as_evidence "sql" "failure" "-c" "0" "SQL execution failed" "${command_text}"
        return 1
        ;;
      @*)
        [[ -n "${app_id}" ]] || {
          printf 'App id is required when executing an application SQL script.\n' >&2
          return 1
        }
        script_target="$1"
        load_db_env "${selected_app}" "${env_file_name}"
        if ! ensure_sqlcl; then
          record_sql_as_evidence "script" "failure" "${script_target}" "1" "SQLcl validation failed" "${command_text}"
          return 1
        fi

        if [[ "${DB_SQLCL_BIN:-}" == *.exe && "${script_target}" == @/mnt/* ]] && command -v wslpath >/dev/null 2>&1; then
          set -- "@$(wslpath -w "${script_target#@}")" "${@:2}"
        elif [[ "${DB_SQLCL_BIN:-}" == *.exe && "${script_target}" == @/tmp/* ]] && command -v wslpath >/dev/null 2>&1; then
          set -- "@$(wslpath -w "${script_target#@}")" "${@:2}"
        fi

        if run_sqlcl "$@"; then
          record_sql_as_evidence "script" "success" "${script_target}" "1" "" "${command_text}"
          record_db_script_phase_evidence "success" "${script_target}" "" "${command_text}"
          return 0
        fi

        record_sql_as_evidence "script" "failure" "${script_target}" "1" "Application SQL script execution failed" "${command_text}"
        record_db_script_phase_evidence "failure" "${script_target}" "Application SQL script execution failed" "${command_text}"
        return 1
        ;;
      *)
        printf 'Unsupported invocation. Use --help for examples.\n' >&2
        return 1
        ;;
    esac
  done

  usage
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi

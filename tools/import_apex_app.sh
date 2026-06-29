#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/import_apex_app.sh dev@oci 100
  tools/import_apex_app.sh dev@oci 100 200
  tools/import_apex_app.sh source@oci 100 dev@oci
  tools/import_apex_app.sh source@oci 100 dev@oci 103
EOF
}

build_command_text() {
  local text="tools/import_apex_app.sh"
  local arg

  for arg in "$@"; do
    printf -v text '%s %q' "${text}" "${arg}"
  done

  printf '%s\n' "${text}"
}

record_import_app_evidence() {
  local status="$1"
  local target="$2"
  local message="$3"
  local command_text="$4"

  initialize_evidence_context "import_apex_app.sh" || return 0
  write_evidence_summary "contract" "deploy-app" "${status}" "${target}" "${message}" "${command_text}"
  write_evidence_summary "deploy" "deploy-app" "${status}" "${target}" "${message}" "${command_text}"
  write_evidence_summary_file "deploy" "app.summary.json" "deploy-app" "${status}" "${target}" "${message}" "${command_text}"
}

build_import_override_sql() {
  local source_app_id="$1"
  local target_app_id="$2"
  local target_app_alias="${APEX_IMPORT_APP_ALIAS:-}"
  local force_generate_offset="${APEX_IMPORT_FORCE_GENERATE_OFFSET:-0}"
  local escaped_target_app_alias=""

  escaped_target_app_alias="${target_app_alias//\'/\'\'}"

  if [[ "${source_app_id}" == "${target_app_id}" ]]; then
    cat <<EOF
begin
  begin
    wwv_flow_imp.remove_flow(${source_app_id});
  exception
    when others then null;
  end;
  apex_application_install.set_application_id(${source_app_id});
  wwv_flow.g_flow_id := ${source_app_id};
EOF
    if [[ -n "${target_app_alias}" ]]; then
      cat <<EOF
  apex_application_install.set_application_alias('${escaped_target_app_alias}');
EOF
    fi
    cat <<EOF
  apex_application_install.set_auto_install_sup_obj(true);
EOF
    if [[ "${force_generate_offset}" == "1" ]]; then
      cat <<EOF
  apex_application_install.generate_offset;
EOF
    fi
    cat <<EOF
end;
/
EOF
  else
    cat <<EOF
begin
  begin
    wwv_flow_imp.remove_flow(${target_app_id});
  exception
    when others then null;
  end;
  apex_application_install.set_application_id(${target_app_id});
  wwv_flow.g_flow_id := ${target_app_id};
EOF
    if [[ -n "${target_app_alias}" ]]; then
      cat <<EOF
  apex_application_install.set_application_alias('${escaped_target_app_alias}');
EOF
    fi
    cat <<EOF
  apex_application_install.set_auto_install_sup_obj(true);
  apex_application_install.generate_offset;
end;
/
EOF
  fi
}

build_workspace_init_sql() {
  local workspace_name="$1"
  cat <<EOF
begin
  apex_application_install.set_workspace_id(apex_util.find_security_group_id(p_workspace => '${workspace_name}'));
  apex_util.set_security_group_id(apex_util.find_security_group_id(p_workspace => '${workspace_name}'));
end;
/
EOF
}

build_filtered_install_script() {
  local source_install="$1"
  local filtered_install="$2"

  python3 - <<'PY' "$source_install" "$filtered_install"
from pathlib import Path
import os
import sys

source = Path(sys.argv[1])
target = Path(sys.argv[2])
skip_end_environment = os.environ.get("APEX_IMPORT_SKIP_END_ENVIRONMENT") == "1"
lines = source.read_text().splitlines()
filtered = []
for line in lines:
    if line.strip() == '@@application/delete_application.sql':
        continue
    if line.strip() == '@@application/set_environment.sql':
        continue
    if line.strip() == '@@application/plugin_settings.sql':
        continue
    if skip_end_environment and line.strip() == '@@application/end_environment.sql':
        continue
    if line.strip().startswith('@@application/shared_components/files/supporting_objects_'):
        continue
    if line.strip().startswith('@@application/deployment/install/'):
        continue
    filtered.append(line)
target.write_text('\n'.join(filtered) + '\n')
PY
}

filter_import_query_lines() {
  perl -ne '
    s/^\s+|\s+$//g;
    next if !length($_);
    next if /^ORACLE_HOME\b.*does not exist$/;
    next if /^Connected\.$/;
    next if /^Disconnected from /;
    next if /^PL\/SQL procedure successfully completed\.$/;
    print "$_\n";
  '
}

sqlcl_script_path() {
  local script_path="$1"

  if [[ "${DB_SQLCL_BIN:-}" == *.exe && "${script_path}" == /mnt/* ]] && command -v wslpath >/dev/null 2>&1; then
    wslpath -w "${script_path}"
    return 0
  fi

  printf '%s\n' "${script_path}"
}

normalize_numeric_id() {
  local raw_value="$1"
  local normalized=""

  normalized="$(printf '%s' "${raw_value}" | tr -cd '0-9')"
  [[ -n "${normalized}" ]] || return 1
  printf '%s\n' "${normalized}"
}

lookup_target_app_identity() {
  local target_app_id="$1"

  cat <<EOF | run_sqlcl | filter_import_query_lines | head -n 1
set heading off
set feedback off
set verify off
set pages 0
set linesize 32767
select workspace || '|' || application_id || '|' || application_name
  from apex_applications
 where application_id = ${target_app_id};
EOF
}

lookup_target_app_identity_by_alias() {
  local target_app_alias="$1"
  local escaped_alias=""

  escaped_alias="${target_app_alias//\'/\'\'}"

  cat <<EOF | run_sqlcl | filter_import_query_lines | head -n 1
set heading off
set feedback off
set verify off
set pages 0
set linesize 32767
select workspace || '|' || application_id || '|' || application_name
  from apex_applications
 where upper(alias) = upper('${escaped_alias}');
EOF
}

lookup_next_available_app_id() {
  local candidate_app_id=""
  local app_identity=""
  local attempts=0

  candidate_app_id="$(cat <<EOF | run_sqlcl | filter_import_query_lines | head -n 1
set heading off
set feedback off
set verify off
set pages 0
set linesize 32767
select to_char(nvl(max(application_id), 99) + 1, 'FM9999999999999990')
  from apex_applications
 where workspace = '${APEX_WORKSPACE}'
   and application_id = trunc(application_id);
EOF
)"

  candidate_app_id="$(normalize_numeric_id "${candidate_app_id}")" || return 1

  while (( attempts < 1000 )); do
    app_identity="$(lookup_target_app_identity "${candidate_app_id}")"
    [[ -z "${app_identity}" ]] && {
      printf '%s\n' "${candidate_app_id}"
      return 0
    }

    candidate_app_id="$((candidate_app_id + 1))"
    attempts=$((attempts + 1))
  done

  printf 'Unable to find a free APEX app id after checking 1000 candidates starting from %s.\n' "${candidate_app_id}" >&2
  return 1
}

ensure_target_app_importable() {
  local target_app_id="$1"
  local app_identity=""
  local app_workspace=""
  local app_name=""
  local current_workspace=""

  app_identity="$(lookup_target_app_identity "${target_app_id}")"
  [[ -n "${app_identity}" ]] || return 0

  app_workspace="${app_identity%%|*}"
  app_name="${app_identity#*|}"
  app_name="${app_name#*|}"
  current_workspace="$(printf '%s' "${APEX_WORKSPACE}" | tr '[:lower:]' '[:upper:]')"
  app_workspace="$(printf '%s' "${app_workspace}" | tr '[:lower:]' '[:upper:]')"

  if [[ "${app_workspace}" != "${current_workspace}" ]]; then
    printf 'Target app id %s is already used by workspace %s (%s).\n' "${target_app_id}" "${app_workspace}" "${app_name}" >&2
    printf 'Choose another target app id or remove the existing application from that workspace first.\n' >&2
    return 1
  fi
}

ensure_target_app_alias_importable() {
  local target_app_alias="$1"
  local target_app_id="${2:-}"
  local app_identity=""
  local app_workspace=""
  local app_name=""
  local app_id=""
  local current_workspace=""

  [[ -n "${target_app_alias}" ]] || return 0

  app_identity="$(lookup_target_app_identity_by_alias "${target_app_alias}")"
  [[ -n "${app_identity}" ]] || return 0

  app_workspace="${app_identity%%|*}"
  app_id="${app_identity#*|}"
  app_id="${app_id%%|*}"
  app_name="${app_identity#*|}"
  app_name="${app_name#*|}"
  current_workspace="$(printf '%s' "${APEX_WORKSPACE}" | tr '[:lower:]' '[:upper:]')"
  app_workspace="$(printf '%s' "${app_workspace}" | tr '[:lower:]' '[:upper:]')"

  if [[ "${app_workspace}" != "${current_workspace}" ]]; then
    return 0
  fi

  if [[ -n "${target_app_id}" && "${app_id}" == "${target_app_id}" && "${app_workspace}" == "${current_workspace}" ]]; then
    return 0
  fi

  printf 'Target application alias %s is already used by workspace %s (app %s: %s).\n' \
    "${target_app_alias}" "${app_workspace}" "${app_id}" "${app_name}" >&2
  printf 'Remove or rename the existing application before importing a new app with this alias.\n' >&2
  return 1
}

load_import_env() {
  local env_input="$1"
  local app_id="${2:-}"
  local env_alias=""

  env_alias="$(normalize_env_alias "${env_input}")"
  if [[ -n "${app_id}" ]]; then
    export APP_CODE="$(resolve_app_code_from_app_id "${app_id}")"
    export APP_DIR="$(app_dir "${APP_CODE}" "${env_alias}")"
    load_env_context "${env_alias}" "${app_id}"
    return 0
  fi

  load_env_context "${env_alias}"
}

set_import_target_context() {
  local env_input="$1"
  local app_id="$2"
  local env_alias=""

  env_alias="$(normalize_env_alias "${env_input}")"
  export APP_CODE="$(resolve_app_code_from_app_id "${app_id}")"
  export APP_DIR="$(app_dir "${APP_CODE}" "${env_alias}")"
  export APEX_APP_ID="${app_id}"
}

resolve_target_app_id() {
  local target_env_name="$1"
  local source_app_id="$2"
  local target_app_id="${3:-}"
  local next_app_id=""
  local target_app_alias="${APEX_IMPORT_APP_ALIAS:-}"

  if [[ -n "${target_app_id}" ]]; then
    ensure_target_app_importable "${target_app_id}" || return 1
    ensure_target_app_alias_importable "${target_app_alias}" "${target_app_id}" || return 1
    printf '%s\n' "${target_app_id}"
    return 0
  fi

  ensure_target_app_alias_importable "${target_app_alias}" || return 1

  next_app_id="$(lookup_next_available_app_id)"
  [[ "${next_app_id}" =~ ^[0-9]+$ ]] || {
    printf 'Unable to determine the next available APEX app id for %s.\n' "${target_env_name}" >&2
    printf 'Source app id was %s.\n' "${source_app_id}" >&2
    return 1
  }

  printf '%s\n' "${next_app_id}"
}

resolve_source_install_script() {
  local source_env="$1"
  local source_app_id="$2"
  local source_env_alias=""
  local source_app_code=""
  local source_app_dir=""
  local source_apex_dir=""
  local install_script=""
  local nested_install_script=""

  source_env_alias="$(normalize_env_alias "${source_env}")"
  source_app_code="$(resolve_app_code_from_app_id "${source_app_id}")"
  source_app_dir="$(app_dir "${source_app_code}" "${source_env_alias}")"

  [[ -d "${source_app_dir}" ]] || {
    printf 'Missing source application directory: %s\n' "${source_app_dir}" >&2
    printf 'Export %s/%s first.\n' "${source_env_alias}" "${source_app_code}" >&2
    return 1
  }

  source_apex_dir="${source_app_dir}/apex"
  install_script="${source_apex_dir}/install.sql"
  nested_install_script="${source_apex_dir}/${source_app_code}/install.sql"

  if [[ ! -f "${install_script}" && -f "${nested_install_script}" ]]; then
    install_script="${nested_install_script}"
  fi

  [[ -f "${install_script}" ]] || {
    printf 'Missing APEX install script: %s\n' "${install_script}" >&2
    return 1
  }

  printf '%s\n' "${install_script}"
}

resolve_source_app_dir() {
  local source_env="$1"
  local source_app_id="$2"
  local source_env_alias=""
  local source_app_code=""
  local source_app_dir=""

  source_env_alias="$(normalize_env_alias "${source_env}")"
  source_app_code="$(resolve_app_code_from_app_id "${source_app_id}")"
  source_app_dir="$(app_dir "${source_app_code}" "${source_env_alias}")"

  [[ -d "${source_app_dir}" ]] || {
    printf 'Missing source application directory: %s\n' "${source_app_dir}" >&2
    return 1
  }

  printf '%s\n' "${source_app_dir}"
}

build_post_import_code_sync_script() {
  local source_db_dir="$1"
  local output_file="$2"
  local has_targets="0"
  local glob_pattern=""
  local file=""

  [[ -d "${source_db_dir}" ]] || return 0

  : > "${output_file}"
  printf 'set define off\n' > "${output_file}"

  for glob_pattern in \
    "${source_db_dir}/types/*.sql" \
    "${source_db_dir}/functions/*.sql" \
    "${source_db_dir}/procedures/*.sql" \
    "${source_db_dir}/packages/specs/*.pks" \
    "${source_db_dir}/packages/bodies/*.pkb" \
    "${source_db_dir}/views/*.sql" \
    "${source_db_dir}/triggers/*.sql"
  do
    while IFS= read -r file; do
      printf '@%s\n' "$(sqlcl_script_path "${file}")" >> "${output_file}"
      has_targets="1"
    done < <(compgen -G "${glob_pattern}" | LC_ALL=C sort)
  done

  if [[ "${has_targets}" != "1" ]]; then
    : > "${output_file}"
  fi
}

should_skip_post_import_code_sync() {
  local source_env_name="$1"
  local source_app_id="$2"
  local target_env_name="$3"
  local target_app_id="$4"

  if [[ "${APEX_IMPORT_SKIP_DB_SYNC:-0}" == "1" ]]; then
    return 0
  fi

  if [[ "${source_env_name}" == "${target_env_name}" && "${source_app_id}" == "${target_app_id}" ]]; then
    return 0
  fi

  return 1
}

main() {
  local source_env_name=""
  local target_env_name=""
  local source_app_id=""
  local target_app_id=""
  local install_script=""
  local filtered_install_script=""
  local post_import_sync_script=""
  local install_dir=""
  local source_app_code=""
  local source_app_dir=""
  local target_app_code=""
  local auto_target_app_id="0"
  local command_text=""
  local target_label=""
  local original_args=("$@")
  local filtered_install_script_for_sqlcl=""
  local set_environment_script=""
  local set_environment_script_for_sqlcl=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  case "$#" in
    2)
      source_env_name="${1:-}"
      source_app_id="${2:-}"
      target_env_name="${source_env_name}"
      target_app_id="${source_app_id}"
      ;;
    3)
      source_env_name="${1:-}"
      source_app_id="${2:-}"
      if [[ "${3:-}" =~ ^[0-9]+$ ]]; then
        target_env_name="${source_env_name}"
        target_app_id="${3:-}"
      else
        target_env_name="${3:-}"
        target_app_id=""
      fi
      ;;
    4)
      source_env_name="${1:-}"
      source_app_id="${2:-}"
      target_env_name="${3:-}"
      target_app_id="${4:-}"
      ;;
    *)
      usage >&2
      exit 1
      ;;
  esac
  command_text="$(build_command_text "${original_args[@]}")"

  [[ "${source_app_id}" =~ ^[0-9]+$ ]] || {
    printf 'Source app id must be numeric: %s\n' "${source_app_id}" >&2
    exit 1
  }

  if [[ -n "${target_app_id}" ]]; then
    [[ "${target_app_id}" =~ ^[0-9]+$ ]] || {
      printf 'Target app id must be numeric: %s\n' "${target_app_id}" >&2
      exit 1
    }
  fi

  source_env_name="$(normalize_env_alias "${source_env_name}")"
  target_env_name="$(normalize_env_alias "${target_env_name}")"
  source_app_code="$(resolve_app_code_from_app_id "${source_app_id}")"
  target_label="app:${source_env_name}:${source_app_id}->${target_env_name}:${target_app_id:-auto}"
  if ! source_app_dir="$(resolve_source_app_dir "${source_env_name}" "${source_app_id}")"; then
    record_import_app_evidence "failure" "${target_label}" "Missing source application directory" "${command_text}"
    return 1
  fi
  [[ -n "${target_app_id}" ]] || auto_target_app_id="1"

  if ! load_import_env "${target_env_name}" "${target_app_id}"; then
    record_import_app_evidence "failure" "${target_label}" "Target environment load failed" "${command_text}"
    return 1
  fi
  if ! ensure_sqlcl; then
    record_import_app_evidence "failure" "${target_label}" "SQLcl validation failed" "${command_text}"
    return 1
  fi
  if ! target_app_id="$(resolve_target_app_id "${target_env_name}" "${source_app_id}" "${target_app_id}")"; then
    record_import_app_evidence "failure" "${target_label}" "Unable to resolve target app id" "${command_text}"
    return 1
  fi
  set_import_target_context "${target_env_name}" "${target_app_id}"
  target_app_code="$(resolve_app_code_from_app_id "${target_app_id}")"
  target_label="app:${source_env_name}:${source_app_id}->${target_env_name}:${target_app_id}"

  if ! install_script="$(resolve_source_install_script "${source_env_name}" "${source_app_id}")"; then
    record_import_app_evidence "failure" "${target_label}" "Missing APEX install script" "${command_text}"
    return 1
  fi
  install_dir="$(dirname "${install_script}")"
  set_environment_script="${install_dir}/application/set_environment.sql"
  [[ -f "${set_environment_script}" ]] || {
    printf 'Missing APEX set environment script: %s\n' "${set_environment_script}" >&2
    record_import_app_evidence "failure" "${target_label}" "Missing APEX set environment script" "${command_text}"
    return 1
  }
  filtered_install_script="${install_dir}/.filtered_install.sql"
  set_environment_script_for_sqlcl="$(sqlcl_script_path "${set_environment_script}")"
  filtered_install_script_for_sqlcl="$(sqlcl_script_path "${filtered_install_script}")"
  post_import_sync_script="$(mktemp "${TMPDIR:-/tmp}/import_apex_app_db_sync.XXXXXX")"
  trap 'rm -f "${filtered_install_script:-}" "${post_import_sync_script:-}"' EXIT
  build_filtered_install_script "${install_script}" "${filtered_install_script}"
  build_post_import_code_sync_script "${source_app_dir}/db" "${post_import_sync_script}"

  if [[ "${auto_target_app_id}" == "1" ]]; then
    printf 'Auto-selected target app id %s for %s.\n' "${target_app_id}" "${target_env_name}"
  fi

  printf 'Importing APEX app %s from %s/%s into %s/%s\n' \
    "${source_app_id}" \
    "${source_env_name}" \
    "${source_app_code}" \
    "${target_env_name}" \
    "${target_app_code}"
  if ! {
    build_workspace_init_sql "${APEX_WORKSPACE}"
    build_import_override_sql "${source_app_id}" "${target_app_id}"
    printf '@%s\n' "${set_environment_script_for_sqlcl}"
    printf 'set define off\n'
    printf '@%s\n' "${filtered_install_script_for_sqlcl}"
    if [[ "${APEX_IMPORT_SKIP_END_ENVIRONMENT:-0}" == "1" ]]; then
      printf 'commit;\n'
    fi
  } | run_sqlcl; then
    record_import_app_evidence "failure" "${target_label}" "APEX app import failed" "${command_text}"
    return 1
  fi

  if should_skip_post_import_code_sync "${source_env_name}" "${source_app_id}" "${target_env_name}" "${target_app_id}"; then
    printf 'Skipping post-import DB source sync for %s/%s -> %s/%s\n' \
      "${source_env_name}" \
      "${source_app_code}" \
      "${target_env_name}" \
      "${target_app_code}"
  elif [[ -s "${post_import_sync_script}" ]]; then
    printf 'Recompiling application DB source from %s/db into %s/%s\n' \
      "${source_env_name}" \
      "${target_env_name}" \
      "${target_app_code}"
    if ! run_sqlcl < "${post_import_sync_script}"; then
      record_import_app_evidence "failure" "${target_label}" "Post-import DB source sync failed" "${command_text}"
      return 1
    fi
  fi

  record_import_app_evidence "success" "${target_label}" "" "${command_text}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi

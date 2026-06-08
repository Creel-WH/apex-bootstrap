#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/import_apex_page.sh dev@oci 100 10
  tools/import_apex_page.sh dev@oci 100 10 200
  tools/import_apex_page.sh dev@oci 100 10 200 20
EOF
}

build_command_text() {
  local text="tools/import_apex_page.sh"
  local arg

  for arg in "$@"; do
    printf -v text '%s %q' "${text}" "${arg}"
  done

  printf '%s\n' "${text}"
}

record_import_page_evidence() {
  local status="$1"
  local target="$2"
  local message="$3"
  local command_text="$4"

  initialize_evidence_context "import_apex_page.sh" || return 0
  write_evidence_summary "contract" "deploy-page" "${status}" "${target}" "${message}" "${command_text}"
  write_evidence_summary "deploy" "deploy-page" "${status}" "${target}" "${message}" "${command_text}"
  write_evidence_summary_file "deploy" "page.summary.json" "deploy-page" "${status}" "${target}" "${message}" "${command_text}"
}

apex_app_exists() {
  local app_id="$1"
  local result

  result="$(printf 'set heading off feedback off verify off pages 0\nselect count(*) from apex_applications where application_id = %s;\n' "${app_id}" | run_sqlcl | tr -d '[:space:]')"
  [[ "${result}" =~ ^[0-9]+$ ]] && [[ "${result}" -gt 0 ]]
}

apex_page_exists() {
  local app_id="$1"
  local page_id="$2"
  local result

  result="$(printf 'set heading off feedback off verify off pages 0\nselect count(*) from apex_application_pages where application_id = %s and page_id = %s;\n' "${app_id}" "${page_id}" | run_sqlcl | tr -d '[:space:]')"
  [[ "${result}" =~ ^[0-9]+$ ]] && [[ "${result}" -gt 0 ]]
}

resolve_page_import_dir() {
  local apex_export_dir="$1"
  local app_code="$2"

  if [[ -d "${apex_export_dir}/${app_code}/application" ]]; then
    printf '%s\n' "${apex_export_dir}/${app_code}/application"
    return 0
  fi

  printf '%s\n' "${apex_export_dir}/application"
}

build_page_import_override_sql() {
  local source_app_id="$1"
  local target_app_id="$2"
  local source_page_id="$3"
  local target_page_id="$4"

  cat <<EOF
begin
  apex_application_install.set_application_id(${target_app_id});
  wwv_flow.g_flow_id := ${target_app_id};
EOF

  if [[ "${source_app_id}" != "${target_app_id}" ]]; then
    cat <<EOF
  apex_application_install.set_offset(apex_application_install.generate_offset);
EOF
  fi

  if [[ "${source_page_id}" != "${target_page_id}" ]]; then
    cat <<EOF
  apex_application_install.set_page_id(${target_page_id});
EOF
  fi

  cat <<'EOF'
end;
/
EOF
}

sqlcl_script_path() {
  local script_path="$1"

  if [[ "${DB_SQLCL_BIN:-}" == *.exe && "${script_path}" == /mnt/* ]] && command -v wslpath >/dev/null 2>&1; then
    wslpath -w "${script_path}"
    return 0
  fi

  printf '%s\n' "${script_path}"
}

main() {
  local env_file_name=""
  local source_app_id=""
  local page_id=""
  local target_app_id=""
  local target_page_id=""
  local effective_app_id=""
  local page_num
  local export_dir
  local set_env_script
  local end_env_script
  local page_script
  local command_text=""
  local target_label=""
  local original_args=("$@")
  local delete_script
  local set_env_script_for_sqlcl
  local end_env_script_for_sqlcl
  local page_script_for_sqlcl
  local delete_script_for_sqlcl

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_file_name="${1:-}"
  command_text="$(build_command_text "${original_args[@]}")"

  [[ -n "${env_file_name}" ]] || {
    usage >&2
    exit 1
  }

  case "$#" in
    3)
      source_app_id="${2:-}"
      page_id="${3:-}"
      target_app_id="${source_app_id}"
      target_page_id="${page_id}"
      ;;
    4)
      source_app_id="${2:-}"
      page_id="${3:-}"
      target_app_id="${4:-}"
      target_page_id="${page_id}"
      ;;
    5)
      source_app_id="${2:-}"
      page_id="${3:-}"
      target_app_id="${4:-}"
      target_page_id="${5:-}"
      ;;
    *)
      usage >&2
      exit 1
      ;;
  esac

  [[ "${source_app_id}" =~ ^[0-9]+$ ]] || {
    printf 'A real APEX App ID is required before page import.\n' >&2
    exit 1
  }
  [[ "${page_id}" =~ ^[0-9]+$ ]] || {
    printf 'Page ID must be numeric.\n' >&2
    exit 1
  }
  [[ "${target_app_id}" =~ ^[0-9]+$ ]] || {
    printf 'Target app id must be numeric: %s\n' "${target_app_id}" >&2
    exit 1
  }
  [[ "${target_page_id}" =~ ^[0-9]+$ ]] || {
    printf 'Target page id must be numeric: %s\n' "${target_page_id}" >&2
    exit 1
  }

  if [[ "${source_app_id}" == "${target_app_id}" ]]; then
    effective_app_id="${source_app_id}"
  else
    effective_app_id="${target_app_id}"
  fi
  target_label="page:${source_app_id}:${page_id}->${target_app_id}:${target_page_id}"

  if ! load_target_env "${env_file_name}" "${source_app_id}"; then
    record_import_page_evidence "failure" "${target_label}" "Target environment load failed" "${command_text}"
    return 1
  fi
  if ! ensure_sqlcl; then
    record_import_page_evidence "failure" "${target_label}" "SQLcl validation failed" "${command_text}"
    return 1
  fi
  apex_app_exists "${effective_app_id}" || {
    printf 'Target APEX application does not exist in %s: %s\n' "${APP_CODE}" "${effective_app_id}" >&2
    record_import_page_evidence "failure" "${target_label}" "Target APEX application does not exist" "${command_text}"
    return 1
  }

  # Pre-import: snap target page existence
  local target_page_existed_before="no"
  if apex_page_exists "${target_app_id}" "${target_page_id}"; then
    target_page_existed_before="yes"
    printf '[pre-import] Page %s exists in app %s, will be replaced.\n' "${target_page_id}" "${target_app_id}"
  else
    printf '[pre-import] Page %s does NOT exist in app %s, will be created.\n' "${target_page_id}" "${target_app_id}"
  fi

  printf -v page_num '%05d' "${page_id}"
  export_dir="$(resolve_page_import_dir "${APEX_EXPORT_DIR}" "${APP_CODE}")"
  set_env_script="${export_dir}/set_environment.sql"
  end_env_script="${export_dir}/end_environment.sql"
  page_script="${export_dir}/pages/page_${page_num}.sql"
  delete_script="${export_dir}/pages/delete_${page_num}.sql"

  [[ -f "${set_env_script}" && -f "${end_env_script}" && -f "${page_script}" ]] || {
    printf 'Missing page import assets under %s\n' "${export_dir}" >&2
    record_import_page_evidence "failure" "${target_label}" "Missing page import assets" "${command_text}"
    return 1
  }

  set_env_script_for_sqlcl="$(sqlcl_script_path "${set_env_script}")"
  end_env_script_for_sqlcl="$(sqlcl_script_path "${end_env_script}")"
  page_script_for_sqlcl="$(sqlcl_script_path "${page_script}")"
  delete_script_for_sqlcl="$(sqlcl_script_path "${delete_script}")"

  if {
    build_page_import_override_sql "${source_app_id}" "${target_app_id}" "${page_id}" "${target_page_id}"

    printf '@%s\n' "${set_env_script_for_sqlcl}"
    build_page_import_override_sql "${source_app_id}" "${target_app_id}" "${page_id}" "${target_page_id}"

    if [[ "${page_id}" == "${target_page_id}" && -f "${delete_script}" ]]; then
      printf '@%s\n' "${delete_script_for_sqlcl}"
    elif [[ "${page_id}" == "${target_page_id}" ]]; then
      cat <<EOF
begin
  wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>${target_page_id});
exception
  when others then
    if sqlcode != -20001 then
      null;
    end if;
end;
/
EOF
    fi

    printf '@%s\n@%s\n' "${page_script_for_sqlcl}" "${end_env_script_for_sqlcl}"
  } | run_sqlcl; then
    # Post-import: verify page actually exists
    if apex_page_exists "${target_app_id}" "${target_page_id}"; then
      printf '[post-import] Verified page %s exists in app %s.\n' "${target_page_id}" "${target_app_id}"
    else
      printf '[post-import] ERROR: Page %s NOT found in app %s after import!\n' "${target_page_id}" "${target_app_id}" >&2
      record_import_page_evidence "failure" "${target_label}" "Post-import verification failed: page not found" "${command_text}"
      return 1
    fi
    record_import_page_evidence "success" "${target_label}" "" "${command_text}"
    return 0
  fi

  # Import pipeline failed; check if page was deleted but not recreated
  if [[ "${target_page_existed_before}" == "yes" ]] && ! apex_page_exists "${target_app_id}" "${target_page_id}"; then
    printf '[post-import] CRITICAL: Page %s was deleted but NOT recreated in app %s!\n' "${target_page_id}" "${target_app_id}" >&2
    printf '[post-import] Restore from backup or re-run with a verified page SQL file.\n' >&2
  fi
  record_import_page_evidence "failure" "${target_label}" "APEX page import failed" "${command_text}"
  return 1
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  export OMX_EVIDENCE_ENABLED="${OMX_EVIDENCE_ENABLED:-1}"
  main "$@"
fi

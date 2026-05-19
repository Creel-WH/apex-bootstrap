#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/export_apex_db.sh dev@oci 100
  tools/export_apex_db.sh dev@oci 100 /tmp/candidates.txt
EOF
}

log_info() {
  printf '%s\n' "$*"
}

log_error() {
  printf '%s\n' "$*" >&2
}

should_scan_export_file() {
  local path="$1"

  case "${path}" in
    */application/pages/page_*.sql|*/application/shared_components/navigation/*/*.sql|*/application/shared_components/security/*/*.sql|*/application/shared_components/logic/*.sql)
      return 0
      ;;
    *)
      return 1
      ;;
  esac
}

collect_candidate_names() {
  local output_file="$1"
  local export_root="${EXPORTED_APP_DIR:-${APEX_EXPORT_DIR}}"
  local export_file

  : > "${output_file}"

  while IFS= read -r export_file; do
    perl -ne 'while (/p_query_table\s*=>\s*\x27([A-Za-z][A-Za-z0-9_#\$]{2,})\x27/ig) { print uc($1), "\n" }
while (/\b(?:from|join|into|update|table)\s+([A-Za-z][A-Za-z0-9_#\$]{2,})\b/ig) { print uc($1), "\n" }
while (/\bmerge\s+into\s+([A-Za-z][A-Za-z0-9_#\$]{2,})\b/ig) { print uc($1), "\n" }
while (/\bdelete\s+from\s+([A-Za-z][A-Za-z0-9_#\$]{2,})\b/ig) { print uc($1), "\n" }
while (/\b([A-Za-z][A-Za-z0-9_#\$]{2,})\s*\./g) { print uc($1), "\n" }' "${export_file}" >> "${output_file}"
  done < <(find "${export_root}" -type f -name '*.sql' 2>/dev/null | while IFS= read -r candidate; do
    should_scan_export_file "${candidate}" && printf '%s\n' "${candidate}"
  done)

  perl -ne 'print if /^[A-Z][A-Z0-9_#\$]*_[A-Z0-9_#\$]+$/
    && !/^(APP_|APEX_|WWV_|P[0-9]+_|L_|G_)/' "${output_file}" | sort -u > "${output_file}.filtered"
  mv "${output_file}.filtered" "${output_file}"
}

snake_name() {
  printf '%s' "$1" | tr '[:upper:]' '[:lower:]'
}

sql_string_literal() {
  local value="$1"
  value="${value//\'/\'\'}"
  printf "'%s'" "${value}"
}

count_non_empty_lines() {
  local file_path="$1"
  awk 'NF { count += 1 } END { print count + 0 }' "${file_path}"
}

object_output_path() {
  local object_type="$1"
  local object_name="$2"
  local base_name

  base_name="$(snake_name "${object_name}")"

  case "${object_type}" in
    TABLE) printf '%s/db/tables/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    VIEW) printf '%s/db/views/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    PACKAGE_SPEC) printf '%s/db/packages/specs/%s.pks\n' "${APP_DIR}" "${base_name}" ;;
    PACKAGE_BODY) printf '%s/db/packages/bodies/%s.pkb\n' "${APP_DIR}" "${base_name}" ;;
    PROCEDURE) printf '%s/db/procedures/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    FUNCTION) printf '%s/db/functions/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    TRIGGER) printf '%s/db/triggers/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    INDEX) printf '%s/db/indexes/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    SEQUENCE) printf '%s/db/sequences/%s.sql\n' "${APP_DIR}" "${base_name}" ;;
    *) return 1 ;;
  esac
}

ensure_object_dirs() {
  mkdir -p \
    "${APP_DIR}/db/tables" \
    "${APP_DIR}/db/views" \
    "${APP_DIR}/db/packages/specs" \
    "${APP_DIR}/db/packages/bodies" \
    "${APP_DIR}/db/procedures" \
    "${APP_DIR}/db/functions" \
    "${APP_DIR}/db/triggers" \
    "${APP_DIR}/db/indexes" \
    "${APP_DIR}/db/sequences"
}

filter_query_lines() {
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

run_sqlcl_text_to_file() {
  local context="$1"
  local sql_text="$2"
  local output_file="$3"
  local sql_file=""

  sql_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_sql.XXXXXX")"
  printf '%s\n' "${sql_text}" > "${sql_file}"

  if ! run_sqlcl < "${sql_file}" > "${output_file}"; then
    rm -f "${sql_file}"
    cat "${output_file}" >&2
    log_error "Failed to ${context}."
    return 1
  fi

  rm -f "${sql_file}"
}

build_candidate_name_cte() {
  local candidate_file="$1"
  local candidate=""
  local first=1

  while IFS= read -r candidate || [[ -n "${candidate}" ]]; do
    candidate="$(trim "${candidate}")"
    [[ -n "${candidate}" ]] || continue
    candidate="$(printf '%s' "${candidate}" | tr '[:lower:]' '[:upper:]')"

    if [[ "${first}" -eq 1 ]]; then
      printf 'select %s as name from dual\n' "$(sql_string_literal "${candidate}")"
      first=0
    else
      printf 'union all select %s from dual\n' "$(sql_string_literal "${candidate}")"
    fi
  done < "${candidate_file}"
}

lookup_candidate_objects_batch() {
  local candidate_file="$1"
  local output_file="$2"
  local owner=""
  local candidate_count=0
  local candidate_name_cte=""
  local raw_output_file=""

  [[ -f "${candidate_file}" ]] || {
    log_error "Candidate file not found: ${candidate_file}"
    return 1
  }

  : > "${output_file}"
  owner="$(printf '%s' "${DB_SCHEMA}" | tr '[:lower:]' '[:upper:]')"
  candidate_count="$(count_non_empty_lines "${candidate_file}")"

  if [[ "${candidate_count}" -eq 0 ]]; then
    log_info "No DB object candidates found for ${APP_CODE}; skipping DB object export."
    return 0
  fi

  candidate_name_cte="$(build_candidate_name_cte "${candidate_file}")"
  [[ -n "${candidate_name_cte}" ]] || {
    log_info "No DB object candidates found for ${APP_CODE}; skipping DB object export."
    return 0
  }

  raw_output_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_lookup.XXXXXX")"
  run_sqlcl_text_to_file \
    "look up candidate DB objects in schema ${owner}" \
    "set heading off feedback off verify off pages 0 linesize 32767 trimspool on
with candidate_names(name) as (
${candidate_name_cte}
)
select object_type || '|' || object_name
  from (
        select object_type, object_name
          from all_objects
         where owner = '${owner}'
           and object_name in (select name from candidate_names)
           and object_type in ('TABLE','VIEW','PROCEDURE','FUNCTION','SEQUENCE')
        union all
        select 'PACKAGE_SPEC', object_name
          from all_objects
         where owner = '${owner}'
           and object_name in (select name from candidate_names)
           and object_type = 'PACKAGE'
        union all
        select 'PACKAGE_BODY', object_name
          from all_objects
         where owner = '${owner}'
           and object_name in (select name from candidate_names)
           and object_type = 'PACKAGE BODY'
        union all
        select 'INDEX', index_name
          from all_indexes
         where owner = '${owner}'
           and (index_name in (select name from candidate_names)
            or table_name in (select name from candidate_names))
        union all
        select 'TRIGGER', trigger_name
          from all_triggers
         where owner = '${owner}'
           and (trigger_name in (select name from candidate_names)
            or table_name in (select name from candidate_names))
       );" \
    "${raw_output_file}" || {
      rm -f "${raw_output_file}"
      return 1
    }

  filter_query_lines < "${raw_output_file}" | sort -u > "${output_file}"
  rm -f "${raw_output_file}"
}

build_batch_export_sql() {
  local manifest_file="$1"
  local owner=""
  local line=""
  local object_type=""
  local object_name=""

  owner="$(printf '%s' "${DB_SCHEMA}" | tr '[:lower:]' '[:upper:]')"

  cat <<EOF
set long 1000000 longchunksize 1000000 pages 0 linesize 32767 heading off feedback off verify off trimspool on
begin
  dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'SQLTERMINATOR', true);
  dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'PRETTY', true);
  dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'SEGMENT_ATTRIBUTES', false);
  dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'STORAGE', false);
  dbms_metadata.set_transform_param(dbms_metadata.session_transform, 'TABLESPACE', false);
end;
/
EOF

  while IFS= read -r line || [[ -n "${line}" ]]; do
    [[ -n "${line}" ]] || continue
    object_type="${line%%|*}"
    object_name="${line#*|}"

    printf 'prompt __OBJECT_START__|%s|%s\n' "${object_type}" "${object_name}"
    printf 'select dbms_metadata.get_ddl(%s, %s, %s) from dual;\n' \
      "$(sql_string_literal "${object_type}")" \
      "$(sql_string_literal "${object_name}")" \
      "$(sql_string_literal "${owner}")"
    printf 'prompt __OBJECT_END__|%s|%s\n' "${object_type}" "${object_name}"
  done < "${manifest_file}"
}

normalize_exported_ddl_file() {
  local output_path="$1"
  local owner="$2"

  perl -0pi -e 's/"'"${owner}"'"\.//g' "${output_path}"
}

parse_batch_export_output() {
  local raw_output_file="$1"
  local owner=""
  local line=""
  local current_type=""
  local current_name=""
  local output_path=""
  local temp_ddl_file=""
  local end_type=""
  local end_name=""
  local exported_count=0

  owner="$(printf '%s' "${DB_SCHEMA}" | tr '[:lower:]' '[:upper:]')"

  while IFS= read -r line || [[ -n "${line}" ]]; do
    case "${line}" in
      __OBJECT_START__'|'*)
        [[ -z "${temp_ddl_file}" ]] || {
          rm -f "${temp_ddl_file}"
          log_error "Encountered nested DDL start marker while exporting ${current_type} ${current_name}."
          return 1
        }
        current_type="${line#__OBJECT_START__|}"
        current_name="${current_type#*|}"
        current_type="${current_type%%|*}"
        output_path="$(object_output_path "${current_type}" "${current_name}")" || {
          log_error "Unsupported object type from export batch: ${current_type}"
          return 1
        }
        mkdir -p "$(dirname "${output_path}")"
        temp_ddl_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_ddl.XXXXXX")"
        ;;
      __OBJECT_END__'|'*)
        end_type="${line#__OBJECT_END__|}"
        end_name="${end_type#*|}"
        end_type="${end_type%%|*}"

        if [[ -z "${temp_ddl_file}" ]]; then
          log_error "Encountered unexpected DDL end marker for ${end_type} ${end_name}."
          return 1
        fi

        if [[ "${end_type}" != "${current_type}" || "${end_name}" != "${current_name}" ]]; then
          rm -f "${temp_ddl_file}"
          log_error "Mismatched DDL marker sequence: expected ${current_type} ${current_name}, got ${end_type} ${end_name}."
          return 1
        fi

        if ! grep -q '[^[:space:]]' "${temp_ddl_file}"; then
          rm -f "${temp_ddl_file}"
          log_error "Empty DDL returned for ${current_type} ${current_name}."
          return 1
        fi

        mv "${temp_ddl_file}" "${output_path}"
        temp_ddl_file=""
        normalize_exported_ddl_file "${output_path}" "${owner}"
        exported_count=$((exported_count + 1))
        current_type=""
        current_name=""
        output_path=""
        ;;
      ORACLE_HOME*does\ not\ exist|Connected.|Disconnected\ from*|PL/SQL\ procedure\ successfully\ completed.)
        ;;
      *)
        if [[ -n "${temp_ddl_file}" ]]; then
          printf '%s\n' "${line}" >> "${temp_ddl_file}"
        fi
        ;;
    esac
  done < "${raw_output_file}"

  if [[ -n "${temp_ddl_file}" ]]; then
    rm -f "${temp_ddl_file}"
    log_error "Missing DDL end marker for ${current_type} ${current_name}."
    return 1
  fi

  printf '%s\n' "${exported_count}"
}

export_candidate_objects() {
  local candidate_file="$1"
  local manifest_file=""
  local raw_output_file=""
  local export_sql=""
  local object_count=0
  local exported_count=0
  local app_label="${APP_CODE:-application}"

  manifest_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_manifest.XXXXXX")"
  raw_output_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_export.XXXXXX")"

  lookup_candidate_objects_batch "${candidate_file}" "${manifest_file}" || {
    rm -f "${manifest_file}" "${raw_output_file}"
    return 1
  }

  object_count="$(count_non_empty_lines "${manifest_file}")"
  if [[ "${object_count}" -eq 0 ]]; then
    rm -f "${manifest_file}" "${raw_output_file}"
    log_info "No schema-owned DB objects matched candidates for ${app_label} in schema ${DB_SCHEMA}."
    return 0
  fi

  log_info "Exporting ${object_count} DB objects for ${app_label} from schema ${DB_SCHEMA}."
  export_sql="$(build_batch_export_sql "${manifest_file}")"
  run_sqlcl_text_to_file "export DB object DDL for ${app_label}" "${export_sql}" "${raw_output_file}" || {
    rm -f "${manifest_file}" "${raw_output_file}"
    return 1
  }

  exported_count="$(parse_batch_export_output "${raw_output_file}")" || {
    rm -f "${manifest_file}" "${raw_output_file}"
    return 1
  }

  if [[ "${exported_count}" -ne "${object_count}" ]]; then
    rm -f "${manifest_file}" "${raw_output_file}"
    log_error "Expected to export ${object_count} DB objects for ${app_label}, but wrote ${exported_count}."
    return 1
  fi

  rm -f "${manifest_file}" "${raw_output_file}"
}

main() {
  local env_file_name=""
  local app_id=""
  local candidate_file=""
  local temp_candidate_file=""

  if [[ "${1:-}" == "-h" || "${1:-}" == "--help" ]]; then
    usage
    exit 0
  fi

  env_file_name="${1:-}"
  app_id="${2:-}"
  candidate_file="${3:-}"

  [[ -n "${env_file_name}" && -n "${app_id}" ]] || {
    usage >&2
    exit 1
  }

  load_target_env "${env_file_name}" "${app_id}"

  ensure_sqlcl
  ensure_object_dirs

  if [[ -z "${candidate_file}" ]]; then
    temp_candidate_file="$(mktemp "${TMPDIR:-/tmp}/apex_db_candidates.XXXXXX")"
    candidate_file="${temp_candidate_file}"
    collect_candidate_names "${candidate_file}"
  fi

  export_candidate_objects "${candidate_file}"

  [[ -n "${temp_candidate_file}" ]] && rm -f "${temp_candidate_file}"
  printf 'DB object export complete for %s\n' "${APP_CODE}"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
  main "$@"
fi

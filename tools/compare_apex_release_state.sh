#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/compare_apex_release_state.sh <source_env> <source_app_id> <target_env> <target_app_id>

Compares release-critical APEX/DB state across two environments.
Current comparison scope:
  - key package/view source hashes
  - critical page process source hashes
  - critical page region source hashes
  - breadcrumb entry presence for pages 24/120/122
  - materialized view state for APEXCN_THREAD_FS_BASE_MV
EOF
}

main() {
  local source_env="${1:-}"
  local source_app_id="${2:-}"
  local target_env="${3:-}"
  local target_app_id="${4:-}"
  local sql_file=""
  local src_sql=""
  local tgt_sql=""
  local src_out=""
  local tgt_out=""

  if [[ "${source_env}" == "-h" || "${source_env}" == "--help" || -z "${source_env}" || -z "${source_app_id}" || -z "${target_env}" || -z "${target_app_id}" ]]; then
    usage
    exit $([[ -n "${source_env}" && -n "${source_app_id}" && -n "${target_env}" && -n "${target_app_id}" ]] && echo 0 || echo 1)
  fi

  source_app_id="$(require_numeric_app_id "${source_app_id}")" || return 1
  target_app_id="$(require_numeric_app_id "${target_app_id}")" || return 1
  load_target_env "${source_env}" "${source_app_id}"
  ensure_sqlcl
  load_target_env "${target_env}" "${target_app_id}"
  ensure_sqlcl

  sql_file="$(mktemp "${TMPDIR:-/tmp}/compare_release_state.XXXXXX").sql"
  src_sql="$(mktemp "${TMPDIR:-/tmp}/compare_release_state_src.XXXXXX").sql"
  tgt_sql="$(mktemp "${TMPDIR:-/tmp}/compare_release_state_tgt.XXXXXX").sql"
  src_out="$(mktemp "${TMPDIR:-/tmp}/compare_release_src.XXXXXX").txt"
  tgt_out="$(mktemp "${TMPDIR:-/tmp}/compare_release_tgt.XXXXXX").txt"
  : > "${sql_file}"
  : > "${src_sql}"
  : > "${tgt_sql}"
  : > "${src_out}"
  : > "${tgt_out}"
  trap 'rm -f "${sql_file:-}" "${src_sql:-}" "${tgt_sql:-}" "${src_out:-}" "${tgt_out:-}"' EXIT

  cat > "${sql_file}" <<'SQL'
set pages 0 feedback off heading off verify off trimspool on long 100000 longchunksize 100000
prompt CODE_SOURCE
select type || '|' || name || '|' || line || '|' ||
       replace(replace(text, chr(10), ' '), chr(13), ' ')
  from user_source
 where (name = 'APEXCN_FORUM_PKG' and type in ('PACKAGE','PACKAGE BODY'))
    or (name = 'APEXCN_RAG_PKG' and type in ('PACKAGE','PACKAGE BODY'))
    or (name = 'APEXCN_THREADS_FS_V' and type = 'VIEW')
 order by type, name, line;

prompt PAGE_PROCESS_HASH
select page_id || '|' || process_name || '|' ||
       replace(replace(nvl(process_source,'<NULL>'), chr(10), ' '), chr(13), ' ')
  from apex_application_page_proc
 where application_id = __APP_ID__
   and (
         (page_id = 14 and process_name in ('getThreadViewModel','getPostViewModel')) or
         (page_id = 122 and process_name in ('COZE_WORKFLOW_SINGLE','COZE_WORKFLOW_SELECTED')) or
         (page_id = 9999 and process_name in ('geetest 2nd validation','INIT_GEETEST_FLAG'))
       )
 order by page_id, process_name;

prompt PAGE_REGION_HASH
select page_id || '|' || region_name || '|' || source_type || '|' ||
       replace(replace(nvl(region_source,'<NULL>'), chr(10), ' '), chr(13), ' ')
  from apex_application_page_regions
 where application_id = __APP_ID__
   and (
         (page_id = 24 and region_name = '鐗堟湰缁存姢') or
         (page_id = 120 and region_name = 'Breadcrumb') or
         (page_id = 122 and region_name in ('Breadcrumb','UPLOAD_FILES'))
       )
 order by page_id, region_name;

prompt BREADCRUMB_ENTRY
select defined_for_page || '|' || entry_label || '|' || nvl(url,'<NULL>')
  from apex_application_bc_entries
 where application_id = __APP_ID__
   and defined_for_page in (24,120,122)
 order by defined_for_page, entry_label;

prompt MV_STATE
select mview_name || '|' || staleness || '|' || compile_state
  from user_mviews
 where mview_name = 'APEXCN_THREAD_FS_BASE_MV';
SQL

  sed "s/__APP_ID__/${source_app_id}/g" "${sql_file}" > "${src_sql}"
  sed "s/__APP_ID__/${target_app_id}/g" "${sql_file}" > "${tgt_sql}"

  bash tools/sql_as.sh "${source_env}" "${source_app_id}" @"${src_sql}" > "${src_out}"
  bash tools/sql_as.sh "${target_env}" "${target_app_id}" @"${tgt_sql}" > "${tgt_out}"

  python3 - "${source_env}" "${source_app_id}" "${src_out}" "${target_env}" "${target_app_id}" "${tgt_out}" "${COMPARE_RELEASE_IGNORE_SECTIONS:-}" <<'PY'
import sys
from pathlib import Path

src_env, src_app, src_path, tgt_env, tgt_app, tgt_path = sys.argv[1:7]

def parse(path):
    sections = {}
    current = None
    for raw in Path(path).read_text().splitlines():
        line = raw.strip()
        if not line:
            continue
        if line in {"CODE_SOURCE", "PAGE_PROCESS_HASH", "PAGE_REGION_HASH", "BREADCRUMB_ENTRY", "MV_STATE"}:
            current = line
            sections.setdefault(current, [])
            continue
        if current:
            sections[current].append(line)
    return sections

src = parse(src_path)
tgt = parse(tgt_path)

def normalize_code(lines):
    import hashlib
    grouped = {}
    for row in lines:
        parts = row.split("|", 3)
        if len(parts) != 4:
            continue
        obj_type, obj_name, line_no, text = parts
        grouped.setdefault((obj_type, obj_name), []).append((int(line_no), text))
    normalized = []
    for key in sorted(grouped):
        payload = "".join(text for _, text in sorted(grouped[key]))
        digest = hashlib.sha256(payload.encode("utf-8")).hexdigest()
        normalized.append(f"{key[0]}|{key[1]}|{digest}")
    return normalized

src["CODE_HASH"] = normalize_code(src.get("CODE_SOURCE", []))
tgt["CODE_HASH"] = normalize_code(tgt.get("CODE_SOURCE", []))

errors = []
ignored = {
    item.strip()
    for item in (sys.argv[7] if len(sys.argv) > 7 else "").split(",")
    if item.strip()
}

for section in ["CODE_HASH", "PAGE_PROCESS_HASH", "PAGE_REGION_HASH", "BREADCRUMB_ENTRY", "MV_STATE"]:
    if section in ignored:
        continue
    if src.get(section, []) != tgt.get(section, []):
        errors.append(section)

print(f"COMPARE_SOURCE|{src_env}|{src_app}")
print(f"COMPARE_TARGET|{tgt_env}|{tgt_app}")
if errors:
    print("COMPARE_STATUS|FAIL")
    for section in errors:
        print(f"COMPARE_MISMATCH|{section}")
        print(f"SOURCE_{section}|{src.get(section, [])}")
        print(f"TARGET_{section}|{tgt.get(section, [])}")
    raise SystemExit(1)

print("COMPARE_STATUS|PASS")
PY
}

main "$@"

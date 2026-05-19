#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=./common.sh
source "${SCRIPT_DIR}/common.sh"

usage() {
  cat <<'EOF'
Usage:
  tools/check_release_config_guardrails.sh <env_alias> <app_id>

Checks release-blocking configuration guardrails for an app environment.
Current checks:
  - placeholder values in APEXCN_CONFIGS
  - GEETEST_ACTIVE=Y requires non-placeholder Geetest config
  - apexcn_app_versions must resolve to exactly one current app version row
EOF
}

main() {
  local env_alias="${1:-}"
  local app_id="${2:-}"
  local sql_file=""

  if [[ "${env_alias}" == "-h" || "${env_alias}" == "--help" || -z "${env_alias}" || -z "${app_id}" ]]; then
    usage
    exit $([[ -n "${env_alias}" && -n "${app_id}" ]] && echo 0 || echo 1)
  fi

  app_id="$(require_numeric_app_id "${app_id}")" || return 1
  load_target_env "${env_alias}" "${app_id}"
  ensure_sqlcl

  sql_file="$(mktemp "${TMPDIR:-/tmp}/release_config_guardrails.XXXXXX").sql"
  : > "${sql_file}"
  trap 'rm -f "${sql_file:-}"' EXIT

  cat > "${sql_file}" <<SQL
set pages 0 feedback off heading off verify off trimspool on long 100000 longchunksize 100000 serveroutput on size unlimited
declare
  l_count number := 0;
  l_cur sys_refcursor;
  l_line varchar2(32767);
begin
  dbms_output.put_line('CONFIG_PLACEHOLDERS');
  select count(*) into l_count from user_tables where table_name = 'APEXCN_CONFIGS';
  if l_count > 0 then
    open l_cur for q'[
      select config_name || '|' || replace(nvl(config_value,'<NULL>'), chr(10), ' ')
        from apexcn_configs
       where upper(nvl(config_value,'')) like '%__SET_%'
          or upper(nvl(config_value,'')) like '%__FILL_ME__%'
       order by config_name]';
    loop
      fetch l_cur into l_line;
      exit when l_cur%notfound;
      dbms_output.put_line(l_line);
    end loop;
    close l_cur;
  end if;

  dbms_output.put_line('GEETEST_STATUS');
  if l_count > 0 then
    open l_cur for q'[
      select config_name || '|' || nvl(config_value,'<NULL>')
        from apexcn_configs
       where config_name in (
         'GEETEST_ACTIVE',
         'GEETEST_API_SERVER',
         'GEETEST_CAPTCHA_ID_DEFAULT',
         'GEETEST_CAPTCHA_KEY_DEFAULT',
         'GEETEST_CAPTCHA_ID_SEND_EMAIL_CODE',
         'GEETEST_CAPTCHA_KEY_SEND_EMAIL_CODE'
       )
       order by config_name]';
    loop
      fetch l_cur into l_line;
      exit when l_cur%notfound;
      dbms_output.put_line(l_line);
    end loop;
    close l_cur;
  end if;

  dbms_output.put_line('CURRENT_RELEASE_ROWS');
  select count(*) into l_count from user_tables where table_name = 'APEXCN_APP_VERSIONS';
  if l_count > 0 then
    open l_cur for 'select version_no || ''|'' || is_current || ''|'' || application_id from apexcn_app_versions where application_id = ${app_id} and is_current = ''Y'' order by version_no';
    loop
      fetch l_cur into l_line;
      exit when l_cur%notfound;
      dbms_output.put_line(l_line);
    end loop;
    close l_cur;
  else
    dbms_output.put_line('CURRENT_RELEASE_SKIPPED|MISSING_TABLE');
  end if;

  dbms_output.put_line('OPTIONAL_CONFIGS');
  select count(*) into l_count from user_tables where table_name = 'APEXCN_CONFIGS';
  if l_count > 0 then
    open l_cur for q'[
      select config_name || '|' || nvl(config_value,'<NULL>')
        from apexcn_configs
       where config_name in ('FIRECRAWL_API_KEY')
       order by config_name]';
    loop
      fetch l_cur into l_line;
      exit when l_cur%notfound;
      dbms_output.put_line(l_line);
    end loop;
    close l_cur;
  end if;
end;
/
SQL

  python3 - "${env_alias}" "${app_id}" "${sql_file}" <<'PY'
import subprocess
import sys
from pathlib import Path

env_alias, app_id, sql_file = sys.argv[1:4]
cmd = ["bash", "tools/sql_as.sh", env_alias, app_id, f"@{sql_file}"]
result = subprocess.run(cmd, capture_output=True, text=True)
sys.stdout.write(result.stdout)
sys.stderr.write(result.stderr)
if result.returncode != 0:
    raise SystemExit(result.returncode)

sections = {}
current = None
for raw in result.stdout.splitlines():
    line = raw.strip()
    if not line:
        continue
    if line in {"CONFIG_PLACEHOLDERS", "GEETEST_STATUS", "CURRENT_RELEASE_ROWS", "OPTIONAL_CONFIGS"}:
        current = line
        sections.setdefault(current, [])
        continue
    if current:
        sections[current].append(line)

errors = []

placeholders = sections.get("CONFIG_PLACEHOLDERS", [])
if placeholders:
    errors.append("Placeholder config values detected: " + ", ".join(p.split("|", 1)[0] for p in placeholders))

geetest_rows = dict(row.split("|", 1) for row in sections.get("GEETEST_STATUS", []) if "|" in row)
if geetest_rows.get("GEETEST_ACTIVE", "N").upper() == "Y":
    required = [
        "GEETEST_API_SERVER",
        "GEETEST_CAPTCHA_ID_DEFAULT",
        "GEETEST_CAPTCHA_KEY_DEFAULT",
        "GEETEST_CAPTCHA_ID_SEND_EMAIL_CODE",
        "GEETEST_CAPTCHA_KEY_SEND_EMAIL_CODE",
    ]
    bad = []
    for key in required:
        value = geetest_rows.get(key, "")
        upper = value.upper()
        if (not value) or ("__SET_" in upper) or ("__FILL_ME__" in upper) or value == "<NULL>":
            bad.append(key)
    if bad:
        errors.append("GEETEST_ACTIVE=Y but invalid Geetest config keys: " + ", ".join(bad))

current_release_rows = sections.get("CURRENT_RELEASE_ROWS", [])
current_release_skipped = any(row.startswith("CURRENT_RELEASE_SKIPPED|") for row in current_release_rows)
if (not current_release_skipped) and len(current_release_rows) != 1:
    errors.append(f"Expected exactly 1 current release row for application_id={app_id}, found {len(current_release_rows)}")

if errors:
    print("GUARDRAIL_STATUS|FAIL")
    for item in errors:
        print(f"GUARDRAIL_ERROR|{item}")
    raise SystemExit(1)

print("GUARDRAIL_STATUS|PASS")
PY
}

main "$@"

#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
page_sql="$repo_root/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

python3 - "$page_sql" <<'PY'
from pathlib import Path
import sys

path = Path(sys.argv[1])
text = path.read_text(encoding="utf-8")

start = text.find(",p_process_name=>'SAVE_FILE_CHILD_ORDER'")
if start < 0:
    raise SystemExit("SAVE_FILE_CHILD_ORDER not found")

end = text.find("wwv_flow_imp_page.create_page_process(", start + 1)
block = text[start:end] if end > start else text[start:]

if "updated_by = :MPF_USER_ID" in block.lower():
    raise SystemExit("drag sort still updates UPDATED_BY")

if "update_date = sysdate" in block.lower():
    raise SystemExit("drag sort still updates UPDATE_DATE")

if "set sort_num = i" not in block.lower():
    raise SystemExit("drag sort no longer updates SORT_NUM")

print("ok")
PY

#!/usr/bin/env bash
set -euo pipefail
cd /mnt/d/ja-projects/apex/apex-bootstrap
source ./_tmp_tools_unix/common.sh
load_db_env "f299" "file-management-platform@test"
ensure_sqlcl >/dev/null
printf '%s
' \
  'set heading on' \
  'set pages 100' \
  'set lines 200' \
  'select application_id, page_id, page_name, page_alias from apex_application_pages where application_id = 299 and page_id in (100,133,156) order by page_id;' \
| run_sqlcl
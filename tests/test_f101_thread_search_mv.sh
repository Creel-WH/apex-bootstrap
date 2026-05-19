#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
MV_SQL="$ROOT_DIR/export/dev@oci/f101/db/mviews/apexcn_thread_fs_base_mv.sql"
VIEW_SQL="$ROOT_DIR/export/dev@oci/f101/db/views/apexcn_threads_fs_v.sql"
DATA_SQL="$ROOT_DIR/export/dev@oci/f101/db/data/apexcn_tags_case_cleanup.sql"
PKS_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/specs/apexcn_forum_pkg.pks"
PKB_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"
INSTALL_SQL="$ROOT_DIR/export/dev@oci/f101/db/install.sql"

for f in "$MV_SQL" "$VIEW_SQL" "$DATA_SQL" "$PKS_SQL" "$PKB_SQL" "$INSTALL_SQL"; do
  [[ -f "$f" ]] || { echo "missing $f" >&2; exit 1; }
done

grep -Fq 'CREATE MATERIALIZED VIEW apexcn_thread_fs_base_mv' "$MV_SQL" || { echo 'expected thread search materialized view' >&2; exit 1; }
grep -Fq 'REFRESH COMPLETE ON DEMAND' "$MV_SQL" || { echo 'expected on-demand materialized view refresh' >&2; exit 1; }
grep -Fq 'FROM apexcn_thread_fs_base_mv b' "$VIEW_SQL" || { echo 'expected FS view to read from materialized view' >&2; exit 1; }
grep -Fq 'GROUP BY UPPER(tag_name_norm)' "$DATA_SQL" || { echo 'expected duplicate tag cleanup by normalized case' >&2; exit 1; }
grep -Fq 'PROCEDURE refresh_search_cache_proc;' "$PKS_SQL" || { echo 'expected refresh proc in forum package spec' >&2; exit 1; }
grep -Fq "DBMS_MVIEW.REFRESH(list => 'APEXCN_THREAD_FS_BASE_MV'" "$PKB_SQL" || { echo 'expected materialized view refresh call' >&2; exit 1; }
python3 - "$PKB_SQL" <<'PY'
import pathlib, sys
text = pathlib.Path(sys.argv[1]).read_text()
start = text.index("PROCEDURE tag_handler_proc(")
end = text.index("END tag_handler_proc;", start)
proc = text[start:end]
if "refresh_search_cache_proc;" not in proc:
    raise SystemExit("expected tag_handler_proc to refresh thread search cache")
PY
grep -Fq '@@mviews/apexcn_thread_fs_base_mv.sql' "$INSTALL_SQL" || { echo 'expected install to include materialized view' >&2; exit 1; }

printf 'f101 thread search mv test passed\n'

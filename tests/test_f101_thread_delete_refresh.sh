#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
FORUM_PKS="${ROOT_DIR}/export/dev@oci/f101/db/packages/specs/apexcn_forum_pkg.pks"
FORUM_PKB="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"
RAG_PKB="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_rag_pkg.pkb"
PAGE12="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00012.sql"
PAGE13="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages/page_00013.sql"

for f in "$FORUM_PKS" "$FORUM_PKB" "$RAG_PKB" "$PAGE12" "$PAGE13"; do
  [[ -f "$f" ]] || { echo "missing $f" >&2; exit 1; }
done

python3 - "$FORUM_PKS" "$FORUM_PKB" "$RAG_PKB" "$PAGE12" "$PAGE13" <<'PY'
import pathlib
import re
import sys

forum_pks = pathlib.Path(sys.argv[1]).read_text()
forum_pkb = pathlib.Path(sys.argv[2]).read_text()
rag_pkb = pathlib.Path(sys.argv[3]).read_text()
page12 = pathlib.Path(sys.argv[4]).read_text()
page13 = pathlib.Path(sys.argv[5]).read_text()

def require(condition, message):
    if not condition:
        raise SystemExit(message)

require("PROCEDURE cleanup_thread_dependencies_proc(" in forum_pks,
        "expected forum package spec to expose thread dependency cleanup")
require("PROCEDURE delete_thread_proc(" in forum_pks,
        "expected forum package spec to expose unified thread delete")

refresh_start = forum_pkb.index("PROCEDURE refresh_search_cache_proc IS")
refresh_end = forum_pkb.index("END refresh_search_cache_proc;", refresh_start)
refresh_proc = forum_pkb[refresh_start:refresh_end]
require("ALTER MATERIALIZED VIEW apexcn_thread_fs_base_mv COMPILE" in refresh_proc,
        "expected refresh proc to compile the materialized view before refresh")
require("DBMS_MVIEW.REFRESH(list => 'APEXCN_THREAD_FS_BASE_MV'" in refresh_proc,
        "expected refresh proc to refresh the thread materialized view")
require(refresh_proc.count("ALTER MATERIALIZED VIEW apexcn_thread_fs_base_mv COMPILE") >= 2,
        "expected refresh proc to compile the materialized view both before and after refresh")
require(refresh_proc.rfind("ALTER MATERIALIZED VIEW apexcn_thread_fs_base_mv COMPILE") > refresh_proc.index("DBMS_MVIEW.REFRESH(list => 'APEXCN_THREAD_FS_BASE_MV'"),
        "expected refresh proc to compile the materialized view after refresh")

cleanup_start = forum_pkb.index("PROCEDURE cleanup_thread_dependencies_proc(")
cleanup_end = forum_pkb.index("END cleanup_thread_dependencies_proc;", cleanup_start)
cleanup_proc = forum_pkb[cleanup_start:cleanup_end]
for needle in [
    "UPDATE apexcn_blogs",
    "DELETE FROM apexcn_rag_query_summaries",
    "DELETE FROM apexcn_rag_thread_summaries",
    "DELETE FROM apexcn_thread_chunks",
    "DELETE FROM apexcn_thread_tags",
    "DELETE FROM apexcn_favorites",
    "DELETE FROM apexcn_subs",
    "DELETE FROM apexcn_posts",
]:
    require(needle in cleanup_proc, f"expected dependency cleanup to include {needle}")
require("DELETE FROM apexcn_threads" not in cleanup_proc,
        "dependency cleanup must not delete the thread row before native IG DML")

delete_start = forum_pkb.index("PROCEDURE delete_thread_proc(")
delete_end = forum_pkb.index("END delete_thread_proc;", delete_start)
delete_proc = forum_pkb[delete_start:delete_end]
require("cleanup_thread_dependencies_proc(" in delete_proc,
        "expected unified delete to reuse dependency cleanup")
require("DELETE FROM apexcn_threads" in delete_proc,
        "expected unified delete to remove the thread row")
require("refresh_search_cache_proc;" in delete_proc,
        "expected unified delete to refresh the thread list materialized view")

rag_cleanup_start = rag_pkb.index("PROCEDURE delete_thread_rag_data_proc(")
rag_cleanup_end = rag_pkb.index("END delete_thread_rag_data_proc;", rag_cleanup_start)
rag_cleanup_proc = rag_pkb[rag_cleanup_start:rag_cleanup_end]
require("apexcn_forum_pkg.delete_thread_proc(" in rag_cleanup_proc,
        "expected RAG cleanup path to use unified delete-and-refresh")

page12_delete_start = page12.index("p_process_name=>'Delete Thread Form'")
page12_delete_end = page12.index(",p_process_clob_language=>'PLSQL'", page12_delete_start)
page12_delete_proc = page12[page12_delete_start:page12_delete_end]
require("apexcn_forum_pkg.delete_thread_proc(" in page12_delete_proc,
        "expected P12 user delete to use unified delete-and-refresh")
require("DELETE',\n'    FROM APEXCN_THREADS" not in page12_delete_proc,
        "P12 should not keep hand-written thread delete SQL")

page13_cleanup_name = page13.index("p_process_name=>'delete related data'")
page13_cleanup_start = page13.rfind("wwv_flow_imp_page.create_page_process(", 0, page13_cleanup_name)
page13_cleanup_end = page13.index(",p_process_clob_language=>'PLSQL'", page13_cleanup_start)
page13_cleanup_proc = page13[page13_cleanup_start:page13_cleanup_end]
region_id_match = None
for block in page13.split("wwv_flow_imp_page.create_page_plug(")[1:]:
    if "p_region_name=>'THREADS'" in block:
        region_id_match = re.search(r"p_id=>wwv_flow_imp\.id\((\d+)\)", block)
        break
require(region_id_match, "expected to find P13 THREADS region id")
threads_region_id = region_id_match.group(1)
require(f"p_region_id=>wwv_flow_imp.id({threads_region_id})" in page13_cleanup_proc,
        "expected P13 delete cleanup to be bound to the THREADS IG region")
require("apexcn_forum_pkg.cleanup_thread_dependencies_proc(" in page13_cleanup_proc,
        "expected P13 delete cleanup to call shared dependency cleanup")
require("'    commit;'," not in page13_cleanup_proc.lower(),
        "P13 delete cleanup must not commit before native IG DML")
require("'        RAISE;'" in page13_cleanup_proc,
        "P13 delete cleanup must re-raise unexpected errors")

ig_pos = page13.index("p_process_name=>'Process of thread IG'")
refresh_pos = page13.index("p_process_name=>'Refresh thread search cache'")
require(ig_pos < refresh_pos,
        "expected P13 materialized view refresh after native IG DML")
refresh_proc = page13[refresh_pos:page13.index(",p_process_clob_language=>'PLSQL'", refresh_pos)]
require("apexcn_forum_pkg.refresh_search_cache_proc;" in refresh_proc,
        "expected P13 post-DML process to refresh the thread materialized view")
PY

printf 'f101 thread delete refresh test passed\n'

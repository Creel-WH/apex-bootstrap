#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
BC_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/navigation/breadcrumbs/breadcrumb.sql"
P19_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00019.sql"
P14_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"
P24_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00024.sql"
P25_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00025.sql"
P122_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00122.sql"
PROC_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/logic/application_processes/get_release_info.sql"
PKB_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/bodies/apexcn_rag_pkg.pkb"
PKS_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/specs/apexcn_rag_pkg.pks"
FORUM_PKB="$ROOT_DIR/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"
GUARD_SQL="$ROOT_DIR/tools/check_release_config_guardrails.sh"

for f in "$BC_SQL" "$P19_SQL" "$P14_SQL" "$P24_SQL" "$P25_SQL" "$P122_SQL" "$PROC_SQL" "$PKB_SQL" "$PKS_SQL" "$FORUM_PKB" "$GUARD_SQL"; do
  [[ -f "$f" ]] || { echo "missing $f" >&2; exit 1; }
done

assert_contains() {
  local file="$1"
  local needle="$2"
  if ! grep -Fq "$needle" "$file"; then
    echo "expected to find in $file: $needle" >&2
    exit 1
  fi
}

assert_not_contains() {
  local file="$1"
  local needle="$2"
  if grep -Fq "$needle" "$file"; then
    echo "unexpected content in $file: $needle" >&2
    exit 1
  fi
}

assert_contains "$BC_SQL" "p_short_name=>unistr('\\7BA1\\7406')"
assert_contains "$BC_SQL" "p_link=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13::'"
assert_contains "$BC_SQL" ",p_page_id=>13"
assert_contains "$BC_SQL" "p_short_name=>unistr('\\9996\\9875')"
assert_contains "$BC_SQL" "p_link=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.:::'"
assert_contains "$BC_SQL" ",p_page_id=>1"

assert_contains "$P19_SQL" "p_plug_name=>'CollapsibleRegion'"
assert_not_contains "$P19_SQL" "is-collapsed"
assert_contains "$P14_SQL" "function stripOuterMarkdownFence(rawMarkdown)"
assert_contains "$P14_SQL" "const normalizedMarkdown = stripOuterMarkdownFence(rawMarkdown);"
assert_contains "$P14_SQL" 'trimmed.match(/^```(?:markdown|md)?\s*\r?\n([\s\S]*?)\r?\n```$/i);'
assert_not_contains "$P14_SQL" 'trimmed.match(/^```(?:markdown|md)?\\s*\\r?\\n([\\s\\S]*?)\\r?\\n```$/i);'

assert_contains "$P24_SQL" "apexcn_app_versions"
assert_not_contains "$P24_SQL" "APP_RELEASE_CURRENT"
assert_contains "$P25_SQL" "apexcn_app_versions"
assert_not_contains "$P25_SQL" "APP_RELEASE_CURRENT"
assert_contains "$PROC_SQL" "apexcn_app_versions"
assert_not_contains "$PROC_SQL" "APP_RELEASE_CURRENT"
assert_contains "$PROC_SQL" "COALESCE(released_at, updated_date, created_date)"
assert_not_contains "$PROC_SQL" "NVL(released_at, updated_date, created_date)"
assert_contains "$P24_SQL" "COALESCE(updated_date, released_at, created_date)"
assert_not_contains "$P24_SQL" "NVL(updated_date, released_at, created_date)"

assert_contains "$P122_SQL" "return x !== \"S\";"
assert_contains "$P122_SQL" "\\672C\\6B21\\5904\\7406\\8BB0\\5F55\\603B\\6570\\FF1A"
assert_contains "$P122_SQL" "p122-progress-total"
assert_contains "$P122_SQL" "discoverQueue = function (next)"
assert_contains "$P122_SQL" "runSelected(queue, stats, 0);"
assert_contains "$P122_SQL" "QUEUE_DISCOVERED"
assert_contains "$P122_SQL" "WHERE NVL(UPPER(TRIM(v.index_status)), ''NEW'') <> ''S''"
assert_contains "$P122_SQL" "apexcn_rag_pkg.mark_blog_error_and_delete_thread_proc("
assert_contains "$P122_SQL" "apexcn_rag_pkg.mark_thread_error_and_delete_thread_proc("

assert_contains "$PKS_SQL" "RAG 导入与检索能力"
assert_contains "$PKS_SQL" "PROCEDURE mark_blog_error_and_delete_thread_proc"
assert_contains "$PKS_SQL" "PROCEDURE mark_thread_error_and_delete_thread_proc"
assert_contains "$PKB_SQL" "https://api.coze.cn/v1/workflow/run"
assert_contains "$PKB_SQL" "COZE_WORKFLOW_ID"
assert_contains "$PKB_SQL" "COZE_PAT"
assert_contains "$PKB_SQL" "FUNCTION fetch_firecrawl_markdown_func("
assert_contains "$PKB_SQL" "FUNCTION fetch_xcrawl_markdown_func("
assert_contains "$PKB_SQL" "FUNCTION fetch_direct_html_markdown_func("
assert_contains "$PKB_SQL" "FUNCTION fetch_url_markdown_result_func("
assert_contains "$PKB_SQL" "FUNCTION normalize_blog_ingest_outcome_func("
assert_contains "$PKB_SQL" "FUNCTION ensure_source_link_prefix_func("
assert_contains "$PKB_SQL" "FUNCTION strip_outer_markdown_fence_func("
assert_contains "$PKB_SQL" "FUNCTION best_available_title_func("
assert_contains "$PKB_SQL" "XCRAWL_API_KEY"
assert_contains "$PKB_SQL" "FUNCTION fallback_localized_title_func("
assert_contains "$PKB_SQL" "https://api.firecrawl.dev/v2/scrape"
assert_contains "$PKB_SQL" "https://run.xcrawl.com/v1/scrape"
assert_contains "$PKB_SQL" "LOCAL_MARKDOWN_IMPORTED"
assert_contains "$PKB_SQL" "TERMINAL_NON_ARTICLE_FAILURE"
assert_contains "$PKB_SQL" "跳转主要内容"

assert_contains "$GUARD_SQL" "FIRECRAWL_API_KEY"

python3 - <<'PY' "$PKB_SQL" "$FORUM_PKB"
from pathlib import Path
import sys

text = Path(sys.argv[1]).read_text(encoding="utf-8")
forum_text = Path(sys.argv[2]).read_text(encoding="utf-8")

def require(condition: bool, message: str) -> None:
    if not condition:
        raise SystemExit(message)

firecrawl_idx = text.index("fetch_firecrawl_markdown_func(l_url)")
xcrawl_idx = text.index("fetch_xcrawl_markdown_func(l_url)")
direct_html_idx = text.index("fetch_direct_html_markdown_func(l_url)")
require(firecrawl_idx < xcrawl_idx, "expected Firecrawl attempt before XCrawl fallback")
require(xcrawl_idx < direct_html_idx, "expected direct HTML fallback after XCrawl")

proc_start = text.index("PROCEDURE run_coze_for_blog_proc(")
proc_end = text.index("END run_coze_for_blog_proc;", proc_start)
proc = text[proc_start:proc_end]
coze_cfg_idx = proc.index("COZE_WORKFLOW_ID")
fallback_idx = proc.index("fetch_url_markdown_result_func(l_original_url)")
require(coze_cfg_idx < fallback_idx, "expected Coze workflow attempt before local fallback chain")

gate_idx = proc.index("IF NVL(l_ingest_outcome.upsert_allowed, 'N') <> 'Y' THEN")
translate_idx = proc.index("l_thread_content := translate_markdown_to_cn_func(")
tag_idx = proc.index("l_thread_tags := generate_import_tags_func(")
upsert_idx = proc.index("upsert_thread_from_import_proc(")
require(gate_idx < translate_idx < tag_idx < upsert_idx,
        "expected terminal non-article gate before translate/tag/upsert")
require("blog_title   = l_preserved_blog_title" in proc,
        "expected terminal non-article path to preserve original blog title")
require("status       = 'E'" in proc,
        "expected terminal non-article path to mark blog status E")
require(proc.count("ensure_source_link_prefix_func(") >= 2,
        "expected source link prefix normalization before and after translation")
require("strip_outer_markdown_fence_func" in proc,
        "expected run_coze_for_blog_proc to strip outer markdown fence")
require("fetch_page_title_func(i_original_url)" in text,
        "expected fallback to page title when markdown title is weak")
require("direct_html:success" not in text or "append_provider_attempt_func(l_result.provider_attempts, 'direct_html', 'success')" in text,
        "expected direct HTML fallback attempt logging")

placeholder_start = text.index("FUNCTION title_candidate_is_placeholder_func(")
placeholder_end = text.index("END title_candidate_is_placeholder_func;", placeholder_start)
placeholder = text[placeholder_start:placeholder_end]
require("跳转主要内容" in placeholder and "skip to (main )?content" in placeholder,
        "expected placeholder title guard to reject pseudo navigation titles")

sync_start = text.index("PROCEDURE sync_blogs_proc(")
sync_end = text.index("END sync_blogs_proc;", sync_start)
sync_proc = text[sync_start:sync_end]
existing_update = sync_proc.index("UPDATE apexcn_blogs\n                SET blog_platform")
existing_update_where = sync_proc[existing_update:sync_proc.index("END LOOP;", existing_update)]
require("NVL(UPPER(TRIM(status)), 'N') <> 'E'" in existing_update_where,
        "expected sync_blogs_proc to leave existing E-status blog rows untouched")

cleanup_start = text.index("PROCEDURE delete_thread_rag_data_proc(")
cleanup_end = text.index("END delete_thread_rag_data_proc;", cleanup_start)
cleanup_proc = text[cleanup_start:cleanup_end]
require("apexcn_forum_pkg.delete_thread_proc(" in cleanup_proc,
        "expected manual E cleanup to reuse unified thread delete")

forum_cleanup_start = forum_text.index("PROCEDURE cleanup_thread_dependencies_proc(")
forum_cleanup_end = forum_text.index("END cleanup_thread_dependencies_proc;", forum_cleanup_start)
forum_cleanup_proc = forum_text[forum_cleanup_start:forum_cleanup_end]
for needle in [
    "UPDATE apexcn_blogs",
    "DELETE FROM apexcn_rag_query_summaries",
    "DELETE FROM apexcn_rag_thread_summaries",
    "DELETE FROM apexcn_thread_chunks",
    "DELETE FROM apexcn_thread_tags",
    "DELETE FROM apexcn_posts",
]:
    require(needle in forum_cleanup_proc, f"expected unified dependency cleanup to include {needle}")

forum_delete_start = forum_text.index("PROCEDURE delete_thread_proc(")
forum_delete_end = forum_text.index("END delete_thread_proc;", forum_delete_start)
forum_delete_proc = forum_text[forum_delete_start:forum_delete_end]
for needle in [
    "cleanup_thread_dependencies_proc(",
    "DELETE FROM apexcn_threads",
    "refresh_search_cache_proc;",
]:
    require(needle in forum_delete_proc, f"expected unified thread delete to include {needle}")

blog_cleanup_start = text.index("PROCEDURE mark_blog_error_and_delete_thread_proc(")
blog_cleanup_end = text.index("END mark_blog_error_and_delete_thread_proc;", blog_cleanup_start)
blog_cleanup_proc = text[blog_cleanup_start:blog_cleanup_end]
require("UPPER(TRIM(l_status)) = 'S'" in blog_cleanup_proc,
        "expected manual E cleanup to run only for previously successful blogs")
require("thread_id    = CASE" in blog_cleanup_proc and "THEN NULL" in blog_cleanup_proc,
        "expected manual E cleanup to keep the blog but detach its thread")
require("delete_thread_rag_data_proc(i_thread_id => l_thread_id)" in blog_cleanup_proc,
        "expected blog cleanup path to delete the linked thread data")

thread_cleanup_start = text.index("PROCEDURE mark_thread_error_and_delete_thread_proc(")
thread_cleanup_end = text.index("END mark_thread_error_and_delete_thread_proc;", thread_cleanup_start)
thread_cleanup_proc = text[thread_cleanup_start:thread_cleanup_end]
require("WHERE thread_id = i_thread_id" in thread_cleanup_proc and "UPPER(TRIM(status)) = 'S'" in thread_cleanup_proc,
        "expected positive P122 thread rows to detach linked successful blogs")
require("delete_thread_rag_data_proc(i_thread_id => i_thread_id)" in thread_cleanup_proc,
        "expected positive P122 thread rows to delete the linked thread data")
PY

printf 'f101 release source and local rag test passed\n'

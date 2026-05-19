#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
RAG_PKG="${ROOT_DIR}/export/dev@oci/f101/db/packages/bodies/apexcn_rag_pkg.pkb"
INSTALL_SQL="${ROOT_DIR}/export/dev@oci/f101/apex/f101/install.sql"
PAGES_DIR="${ROOT_DIR}/export/dev@oci/f101/apex/f101/application/pages"
TEST_PAGES_DIR="${ROOT_DIR}/export/test@oci/f900/apex/f900/application/pages"
TEST_INSTALL_SQL="${ROOT_DIR}/export/test@oci/f900/apex/f900/install.sql"
PAGE16="${PAGES_DIR}/page_00016.sql"
TEST_PAGE16="${TEST_PAGES_DIR}/page_00016.sql"

[[ -f "${RAG_PKG}" ]] || { echo "missing ${RAG_PKG}" >&2; exit 1; }
[[ -f "${INSTALL_SQL}" ]] || { echo "missing ${INSTALL_SQL}" >&2; exit 1; }

python3 - "${RAG_PKG}" <<'PY'
import pathlib
import re
import sys
text = pathlib.Path(sys.argv[1]).read_text()
match = re.search(r"PROCEDURE\s+process_imported_thread_proc\s*\(.*?END\s+process_imported_thread_proc;", text, re.S | re.I)
if not match:
    raise SystemExit("process_imported_thread_proc not found")
proc = match.group(0)
if "apexcn_forum_pkg.refresh_search_cache_proc" not in proc:
    raise SystemExit("expected P122 imported-thread processing to refresh P19 search cache")
status_update = proc.find("last_vec_status = 'OK'")
refresh_call = proc.find("apexcn_forum_pkg.refresh_search_cache_proc")
exception_pos = proc.rfind("EXCEPTION")
if not (status_update != -1 and refresh_call != -1 and exception_pos != -1 and status_update < refresh_call < exception_pos):
    raise SystemExit("expected search-cache refresh after OK status update and before exception handler")
PY

for removed_page in "${PAGE16}" "${TEST_PAGE16}"; do
  if [[ -e "${removed_page}" ]]; then
    echo "expected ai-test page 16 to be physically removed: ${removed_page}" >&2
    exit 1
  fi
done

for install_file in "${INSTALL_SQL}" "${TEST_INSTALL_SQL}"; do
  if [[ -f "${install_file}" ]] && grep -Fq '@@application/pages/page_00016.sql' "${install_file}"; then
    echo "expected install.sql not to reference page_00016.sql: ${install_file}" >&2
    exit 1
  fi
done

for pages_dir in "${PAGES_DIR}" "${TEST_PAGES_DIR}"; do
  if [[ -d "${pages_dir}" ]] && grep -R -n -i "p_alias=>'AI-TEST'\|p_name=>'ai_test'" "${pages_dir}" >/tmp/f101_ai_test_refs.$$; then
    cat /tmp/f101_ai_test_refs.$$ >&2
    rm -f /tmp/f101_ai_test_refs.$$
    echo "expected no AI-TEST page alias/name in page sources: ${pages_dir}" >&2
    exit 1
  fi
done
rm -f /tmp/f101_ai_test_refs.$$

printf 'f101 P122 import refresh and ai-test removal test passed\n'

#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
P14_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"
P24_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00024.sql"
BC_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/navigation/breadcrumbs/breadcrumb.sql"
INSTALL_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/install.sql"
INSTALL_PAGE_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/install_page.sql"
PKS_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/specs/apexcn_forum_pkg.pks"
PKB_SQL="$ROOT_DIR/export/dev@oci/f101/db/packages/bodies/apexcn_forum_pkg.pkb"

for f in "$P14_SQL" "$P24_SQL" "$BC_SQL" "$INSTALL_SQL" "$INSTALL_PAGE_SQL" "$PKS_SQL" "$PKB_SQL"; do
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

assert_contains "$P14_SQL" "p_alias=>'THREAD-DETAIL'"
assert_contains "$P14_SQL" "p_plug_name=>'Breadcrumb'"
assert_contains "$P14_SQL" "function iconSymbolForButton(role, state) {"
assert_contains "$P14_SQL" 'const actionMarkup = model.show_thread_actions === "Y" ?'
assert_contains "$P14_SQL" 'return "Y" === normalized ? "\2605" : "\2606";'
assert_contains "$P14_SQL" 'return "Y" === normalized ? "\D83D\DD14" : "\D83D\DD15";'
assert_contains "$P14_SQL" 'const iconMap = { pinned: "\D83D\DCCC", featured: "\D83D\DC4D", locked: "\D83D\DD12", answered: "\2705" };'
assert_contains "$P14_SQL" "p_process_name=>'getThreadViewModel'"
assert_contains "$P14_SQL" "p_process_name=>'getPostViewModel'"
assert_not_contains "$P14_SQL" 'P14_THREAD_V2_BTN'
assert_not_contains "$P14_SQL" 'THREAD-DETAIL-V2'
assert_not_contains "$P14_SQL" 'post_generation_func('

assert_contains "$P24_SQL" "p_alias=>'RELEASE-MANAGEMENT'"
assert_not_contains "$P24_SQL" 'THREAD-DETAIL-V2'
assert_contains "$BC_SQL" 'p_page_id=>24'
assert_not_contains "$BC_SQL" "p_short_name=>'&P24_TITLE.'"
assert_contains "$INSTALL_SQL" 'page_00024.sql'
assert_contains "$INSTALL_PAGE_SQL" 'page_00024.sql'

assert_not_contains "$PKS_SQL" 'thread_generation_func'
assert_not_contains "$PKS_SQL" 'post_generation_func'
assert_not_contains "$PKB_SQL" 'FUNCTION thread_generation_func'
assert_not_contains "$PKB_SQL" 'FUNCTION post_generation_func'

for f in "$P14_SQL"; do
  assert_not_contains "$f" 'content: "\\2606";'
  assert_not_contains "$f" 'content: "\\2605";'
  assert_not_contains "$f" 'content: "\\1F514";'
  assert_not_contains "$f" 'content: "\\1F4CC";'
done

printf 'f101 thread detail canonical page test passed\n'

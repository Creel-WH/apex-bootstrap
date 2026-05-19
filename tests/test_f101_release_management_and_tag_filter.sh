#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
P14_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00014.sql"
P24_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00024.sql"
P19_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00019.sql"
NAV_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/navigation/lists/navigation_bar.sql"
BC_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/navigation/breadcrumbs/breadcrumb.sql"
PROC_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/logic/application_processes/get_release_info.sql"
APP_JS_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/files/apexcn_js.sql"
APP_MIN_JS_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/shared_components/files/apexcn_min_js.sql"
VERSIONS_SQL="$ROOT_DIR/export/dev@oci/f101/db/tables/apexcn_app_versions.sql"

for f in "$P14_SQL" "$P24_SQL" "$P19_SQL" "$NAV_SQL" "$BC_SQL" "$PROC_SQL" "$APP_JS_SQL" "$APP_MIN_JS_SQL" "$VERSIONS_SQL"; do
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

assert_contains "$P14_SQL" '<a href="#" class="tag-label apex-tag-link"'
assert_contains "$P14_SQL" 'P19_CATEGORY_ID,P19_TAGS'
assert_contains "$P14_SQL" "event.preventDefault();"
assert_contains "$P14_SQL" "[data-role=\"thread-tags\"] {"
assert_contains "$P24_SQL" "p_alias=>'RELEASE-MANAGEMENT'"
assert_contains "$P24_SQL" "FROM apexcn_app_versions"
assert_contains "$P24_SQL" "p_plug_source_type=>'NATIVE_IG'"
assert_contains "$P24_SQL" "normalize current release"
assert_contains "$P24_SQL" "p_format_mask=>'YYYY-MM-DD HH24:MI:SS'"
assert_contains "$P24_SQL" "'enable_multi_select', 'N'"
assert_contains "$NAV_SQL" "p_list_item_link_target=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::::'"
assert_contains "$BC_SQL" "p_page_id=>24"
assert_contains "$PROC_SQL" "GET_RELEASE_INFO"
assert_contains "$PROC_SQL" "apexcn_app_versions"
assert_contains "$APP_JS_SQL" "4745545F52454C454153455F494E464F"
assert_contains "$APP_JS_SQL" "2E742D466F6F7465722D76657273696F6E"
assert_contains "$APP_MIN_JS_SQL" "4745545F52454C454153455F494E464F"
assert_contains "$VERSIONS_SQL" "CREATE TABLE apexcn_app_versions"

printf 'f101 release management and tag filter test passed\n'

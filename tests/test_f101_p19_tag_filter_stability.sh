#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
P19_SQL="$ROOT_DIR/export/dev@oci/f101/apex/f101/application/pages/page_00019.sql"

[[ -f "$P19_SQL" ]] || { echo "missing $P19_SQL" >&2; exit 1; }

grep -Fq "p_alias=>'THREAD-LIST3'" "$P19_SQL" || { echo "expected THREAD-LIST3 alias" >&2; exit 1; }
grep -Fq "p_query_num_rows_type=>'SEARCH_ENGINE'" "$P19_SQL" || { echo "expected search-engine pagination" >&2; exit 1; }
grep -Fq "p_fc_actions_filter=>false" "$P19_SQL" || { echo "expected facet auto actions disabled" >&2; exit 1; }
grep -Fq "function syncP19CurrentFacets()" "$P19_SQL" || { echo "expected current-facets sync helper" >&2; exit 1; }
grep -Fq ".split(/[:,]/)" "$P19_SQL" || { echo "expected support for colon/comma facet values" >&2; exit 1; }
grep -Fq "a-FS-pillClear" "$P19_SQL" || { echo "expected custom synced facet pills" >&2; exit 1; }
grep -Fq "[250, 1500, 3500]" "$P19_SQL" || { echo "expected staggered refresh sync retries" >&2; exit 1; }
if grep -Fq "redirect to canonical thread list" "$P19_SQL"; then
  echo "unexpected redirect wrapper remains" >&2
  exit 1
fi

printf 'f101 p19 tag filter stability test passed\n'

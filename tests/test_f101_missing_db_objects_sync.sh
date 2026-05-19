#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
INSTALL_SQL="$ROOT_DIR/export/dev@oci/f101/db/install.sql"
for f in \
  "$ROOT_DIR/export/dev@oci/f101/db/tables/apexcn_favorites.sql" \
  "$ROOT_DIR/export/dev@oci/f101/db/tables/apexcn_logs.sql" \
  "$ROOT_DIR/export/dev@oci/f101/db/tables/apexcn_subs.sql" \
  "$ROOT_DIR/export/dev@oci/f101/db/triggers/apexcn_favorites_trg.sql"; do
  [[ -f "$f" ]] || { echo "missing $f" >&2; exit 1; }
done
for needle in \
  '@@tables/apexcn_favorites.sql' \
  '@@tables/apexcn_logs.sql' \
  '@@tables/apexcn_subs.sql' \
  '@@triggers/apexcn_favorites_trg.sql'; do
  grep -Fq "$needle" "$INSTALL_SQL" || { echo "expected install entry $needle" >&2; exit 1; }
done
printf 'f101 missing db objects sync test passed\n'

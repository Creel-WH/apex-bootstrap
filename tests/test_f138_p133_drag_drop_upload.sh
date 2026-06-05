#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }

if ! grep -Fq "function finishUploadLoading() {" "${PAGE}" || ! grep -Fq 'apex.message.showPageSuccess(' "${PAGE}"; then
  echo "expected P133 upload success prompt to go through finishUploadLoading" >&2
  exit 1
fi

if ! grep -Fq 'apex.message.alert(message);' "${PAGE}"; then
  echo "expected P133 upload failure prompt to use a localized message" >&2
  exit 1
fi

if grep -Fq '"Upload failed' "${PAGE}" || grep -Fq '"Upload complete' "${PAGE}"; then
  echo "expected P133 user-facing upload prompts not to use English" >&2
  exit 1
fi

if ! grep -Fq "dropZone.addEventListener(''drop''" "${PAGE}"; then
  echo "expected P133 drop zone to handle dropped files" >&2
  exit 1
fi

if ! grep -Fq "dropZone.addEventListener(''dragover''" "${PAGE}"; then
  echo "expected P133 drop zone to accept dragover events" >&2
  exit 1
fi

if ! grep -Fq "item.webkitGetAsEntry()" "${PAGE}"; then
  echo "expected P133 drag upload to support dropped folders through webkit entries" >&2
  exit 1
fi

if ! grep -Fq "traverseDroppedDirectoryEntry" "${PAGE}"; then
  echo "expected P133 drag upload to recursively traverse dropped folders" >&2
  exit 1
fi

if ! grep -Fq "return runUploadBatch(fileRecords, true);" "${PAGE}"; then
  echo "expected P133 drag upload to reuse the unified batch upload pipeline" >&2
  exit 1
fi

printf 'f138 P133 drag drop upload test passed\n'

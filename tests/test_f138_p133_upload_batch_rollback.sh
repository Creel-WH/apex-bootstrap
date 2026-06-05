#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }

if ! grep -Fq "function rollbackUploadBatch(batchState)" "${PAGE}"; then
  echo "expected P133 upload flow to expose rollbackUploadBatch helper" >&2
  exit 1
fi

if ! grep -Fq "p_process_name=>'P133_ROLLBACK_UPLOAD_BATCH'" "${PAGE}"; then
  echo "expected P133 to expose an on-demand batch rollback process" >&2
  exit 1
fi

if ! grep -Fq "addRollbackId(batchState, data.fileId);" "${PAGE}"; then
  echo "expected P133 upload flow to track newly saved file ids for rollback" >&2
  exit 1
fi

if ! grep -Fq "if (result.created) {" "${PAGE}"; then
  echo "expected P133 folder creation to distinguish new folders from existing ones" >&2
  exit 1
fi

if ! grep -Fq "apex_json.write(''created'', V_CREATED);" "${PAGE}"; then
  echo "expected P133_CREATE_FOLDER_UPLOAD to return created flag" >&2
  exit 1
fi

if ! grep -Fq "return rollbackUploadBatch(batchState).then(function() {" "${PAGE}"; then
  echo "expected P133 batch upload failures to trigger rollback before surfacing error" >&2
  exit 1
fi

if grep -Fq "failedFiles.push(f.name);" "${PAGE}"; then
  echo "expected P133 batch upload not to keep partial successes after file failure" >&2
  exit 1
fi

printf 'f138 P133 upload batch rollback test passed\n'

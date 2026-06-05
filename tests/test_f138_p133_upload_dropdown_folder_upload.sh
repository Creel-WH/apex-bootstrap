#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PAGE="${ROOT_DIR}/export/sales-tools@test/f138/apex/f138/application/pages/page_00133.sql"

[[ -f "${PAGE}" ]] || { echo "missing ${PAGE}" >&2; exit 1; }

if ! grep -Fq "s3Client.uploadFile(f, { isPrivate: true })" "${PAGE}"; then
  echo "expected P133 uploads to use the current S3 uploadFile API" >&2
  exit 1
fi

if grep -Fq "s3Client.upload(f, function" "${PAGE}"; then
  echo "expected P133 not to use the obsolete callback upload API" >&2
  exit 1
fi

if ! grep -Fq "p_process_name=>'P133_CREATE_FOLDER_UPLOAD'" "${PAGE}"; then
  echo "expected P133 to expose an on-demand folder creation process" >&2
  exit 1
fi

if ! grep -Fq "V_PARENT_FOLDER_ID NUMBER := NVL(TO_NUMBER(apex_application.g_x06), :APP_P133_PARENT_FOLDER_ID);" "${PAGE}"; then
  echo "expected P133_SAVE_UPLOAD to honor x06 target folder id" >&2
  exit 1
fi

if ! grep -Fq "runUploadBatch(recs, true).then(function() {" "${PAGE}"; then
  echo "expected folder uploads to use the unified batch upload pipeline" >&2
  exit 1
fi

if ! grep -Fq "var folderPromise = shouldCreateFolders ? createFoldersForUpload(fileRecords, batchState) : Promise.resolve({});" "${PAGE}"; then
  echo "expected unified batch upload pipeline to create folder tree before file uploads" >&2
  exit 1
fi

printf 'f138 P133 upload dropdown folder upload test passed\n'

# P133 文件夹批量上传失败回退修复

## Request
- Original Request: 文件夹批量上传文件失败时回退上传操作，避免重新部分内容上传、部分内容缺失。
- Environment: `sales-tools@test`
- App: `f138`
- Page: `P133`

## Scope
- Impacted Pages: `P133`
- Impacted DB Objects: None
- Impacted APEX Processes:
  - `P133_CREATE_FOLDER_UPLOAD`
  - `P133_SAVE_UPLOAD`
  - `P133_ROLLBACK_UPLOAD_BATCH`

## Root Cause
- 现有 `P133` 文件夹上传会先逐级创建目录，再逐个上传文件并逐条调用 `P133_SAVE_UPLOAD`。
- `P133_CREATE_FOLDER_UPLOAD` 与 `P133_SAVE_UPLOAD` 都是单次请求内独立 `COMMIT`，而前端 `doUploadFiles` 在单文件失败后只是记录失败文件名并继续后续上传。
- 结果是文件夹批量上传中任一文件失败时，前面已成功创建的目录和文件记录会保留，页面出现“部分已上传、部分缺失”的不完整目录。

## Design
- 批量上传改为失败即中止，不再跳过失败文件继续后续上传。
- 前端统一维护本次批量上传新建的 `STS_FILE.FILE_ID` 列表，包括：
  - 新建目录 ID
  - 新建文件记录 ID
- `P133_CREATE_FOLDER_UPLOAD` 返回 `created` 标记，只回退本次新建目录，不误删已存在目录。
- 失败后调用新的 `P133_ROLLBACK_UPLOAD_BATCH`，将本次已创建记录统一软删回收。

## Verification Goal
- 文件夹批量上传中任一文件失败时，页面不保留本次已创建的半成品目录或文件。
- 已存在目录不被误删。
- 普通多文件上传与拖拽文件夹上传共用同一回退逻辑。

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: None
- Resume Notes: Authoritative state: `ai-context.json`

## Verification
- Local tests passed:
  - `tests/test_f138_p133_upload_batch_rollback.sh`
  - `tests/test_f138_p133_upload_dropdown_folder_upload.sh`
  - `tests/test_f138_p133_save_upload_returns_json.sh`
  - `tests/test_f138_p133_drag_drop_upload.sh`
  - `tests/test_f138_p133_root_folder_id_upload.sh`
- Imported page to test environment:
  - `tools/import_apex_page.sh sales-tools@test 138 133`
- Browser functional validation:
  - Logged in to `sales-tools@test/f138`
  - Opened `P133`
  - Simulated second file save failure during folder upload
  - Verified page shows rollback failure message and does not retain the uploaded folder
- Database verification:
  - Created folder `40272 | rollback_upload_20260605095621 | FOLDER | -1 | 40021`
  - Created file `40273 | a.txt | FILE | -1 | 40272`
  - Confirms created records were soft deleted after rollback

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

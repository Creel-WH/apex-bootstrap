# P133 Upload Dropdown Folder Upload Fix

## Request
- Original Request: 修复 P133 上传按钮点击下拉框功能。点击上传后可选择文件上传或文件夹上传；文件夹上传需要自动创建对应文件夹并上传全部文件，保持目录结构。当前问题是选择具体文件后没有执行上传流程。
- Environment: sales-tools@test
- App: f138
- Page: P133

## Scope
- Impacted Pages: P133
- Impacted DB Objects: None
- Impacted APEX Processes:
  - P133_SAVE_UPLOAD
  - P133_CREATE_FOLDER_UPLOAD

## Design
- Keep the existing Upload button and dropdown UI.
- Replace the obsolete callback upload call with the current `s3Client.uploadFile(file, { isPrivate: true })` API used by other f138 pages.
- For regular file upload, upload selected files into the current `P133_PARENT_FOLDER_ID`.
- For folder upload, parse `webkitRelativePath`, create missing folder levels through an on-demand process, then upload each file into its matching generated folder.
- Refresh the right grid and left tree after the upload queue completes.

## Verification
- Add repository shell check for the exported P133 page source.
- Verify that the page export contains the current upload API, folder creation process, `x06` target folder support, and folder tree creation flow.

## Implementation Log
- `P133` upload queue now uses `s3Client.uploadFile(file, { isPrivate: true })`.
- Regular file upload and folder upload both share `doUploadFiles`.
- Folder upload creates folder levels through `P133_CREATE_FOLDER_UPLOAD`.
- `P133_SAVE_UPLOAD` honors `apex_application.g_x06` as the target parent folder.
- Added `tests/test_f138_p133_upload_dropdown_folder_upload.sh`.

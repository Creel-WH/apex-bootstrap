# P133 上传后 ROOT_FOLDER_ID 丢失修复

## Request
- Original Request: 修复文件或文件夹上传后，文件表 `STS_FILE.ROOT_FOLDER_ID` 没有传值的问题。
- Environment: `sales-tools@test`
- App: `f138`
- Page: `P133`

## Scope
- Impacted Pages: `P133`
- Impacted DB Objects: None
- Impacted APEX Processes:
  - `P133_CREATE_FOLDER_UPLOAD`
  - `P133_SAVE_UPLOAD`

## Root Cause
- `P133_SAVE_UPLOAD` 只依赖页面项 `:APP_P133_ROOT_FOLDER_ID` 或 `FILE_LEVEL=1` 的分支判断，没有优先从父记录回查真实的 `ROOT_FOLDER_ID`。
- `P133_CREATE_FOLDER_UPLOAD` 也使用 `DECODE(V_FILE_LEVEL, 1, V_PARENT_FOLDER_ID, V_ROOT_FOLDER_ID)` 推导根目录，父目录根标识为空时容易丢值。
- 结果是文件上传和文件夹分层创建时，新增记录的 `ROOT_FOLDER_ID` 来源不稳定，部分场景会落空。

## Design
- 两个上传过程都先查询父记录。
- 优先使用父记录已有的 `ROOT_FOLDER_ID`。
- 父记录根标识为空时，回退到页面当前根目录 `:APP_P133_ROOT_FOLDER_ID`。
- 页面根目录也为空时，最后回退到当前父目录 `FILE_ID`，保证根目录字段始终可落值。

## Verification Goal
- 文件上传后 `STS_FILE.ROOT_FOLDER_ID` 有值。
- 文件夹上传分层创建目录后，目录和文件记录都能继承正确根目录。
- 顶层库下直接上传、子目录下上传都不再依赖脆弱的 `FILE_LEVEL=1` 分支。

## Implementation Log
- 调整 `P133_CREATE_FOLDER_UPLOAD` 的根目录计算逻辑，新增稳定回退链。
- 调整 `P133_SAVE_UPLOAD` 的父记录查询，补充 `ROOT_FOLDER_ID` 并统一计算有效根目录。
- 新增结构回归测试，覆盖文件上传与文件夹上传两条链路。

- Import page 300 into file-management-platform@test/f300: failure
- Export page file-management-platform@test/f300 page 300: failure
## Verification
- 本地结构回归：
  - `tests/test_f138_p133_root_folder_id_upload.sh`
  - `tests/test_f138_p133_upload_dropdown_folder_upload.sh`
  - `tests/test_f138_p133_save_upload_returns_json.sh`
  - `tests/test_f138_p133_drag_drop_upload.sh`
- 测试环境导入：
  - 已执行 `tools/import_apex_page.sh sales-tools@test 138 133`
- 浏览器功能验证：
  - 使用 `ADMIN` 登录 `sales-tools@test/f138`
  - 在 `P130` 打开根库 `测试文件库`（`ROOT_FOLDER_ID=40021`）
  - 通过 `P133` 的“文件夹上传”上传 `rootid_upload_20260604121242/rootid_check.txt`
  - 页面显示新建目录 `rootid_upload_20260604121242`
  - 数据库查询结果：
    - `40131|rootid_upload_20260604121242|FOLDER|40021|40021`
    - `40132|rootid_check.txt|FILE|40131|40021`
  - 结果：目录记录与子文件记录的 `ROOT_FOLDER_ID` 均已正确写入 `40021`

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional cleanup of validation data in test library `40021`.
- Resume Notes: Authoritative state: `ai-context.json`

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

# 2026-07-03 P156 继承权限限制黄条与恢复继承语义修正

## Request

- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Target Page: `P156`
- Business Goal:
  - 只有“缩小或删除继承权限”时才显示黄条与“恢复继承”
  - 新增协助者、放大权限不应触发限制提示
  - 行级继承来源要落到 `FMP_SCOPE.is_inherit_permission`
- Acceptance Criteria:
  - `restricted` 仅表示当前层级缩小或删除了继承权限
  - `collaborators[].inherited` 真实反映每条协助者权限是否继承
  - 恢复继承后当前对象重新回到上级完整权限集
  - 未限制子级随父级联动，已限制子级不被覆盖

## Execution Plan

- Impacted Pages (AI Proposed): `P156`
- Impacted DB Objects (AI Proposed): `FMP_FILE`, `FMP_SCOPE`, `fmp_rebuild_file_scope_pro`, `fmp_create_folder_from_dialog_pro`, `fmp_upload_files_from_dialog_pro`, `fmp_transfer_files_to_folder_pro`
- Confirmed Pages: P0
- Confirmed DB Objects: None
- Planned Steps:
  - 新增公共权限重建过程，统一保存/恢复/子级联动
  - 改造 `P156_PERMISSION_BOOTSTRAP/GET/SAVE/RESET`
  - 修正建目录/上传/移动时对子级继承标记的写法
  - 补一份历史数据回算脚本
  - 更新 `P156` 页面文档并做静态校验

## Implementation Log

- Changes Made:
  - 新增 `fmp_rebuild_file_scope_pro`，统一处理权限保存、恢复继承和未限制子级联动。
  - `P156_PERMISSION_SAVE` / `P156_PERMISSION_RESET` 改为调用公共过程，不再各自删除重建 `FMP_SCOPE`。
  - `P156_PERMISSION_BOOTSTRAP` / `P156_PERMISSION_GET` 改为按 `FMP_SCOPE.is_inherit_permission` 返回协助者继承来源；黄条仍只看对象级 `is_permission_changes`。
  - 建目录、上传文件、移动文件时，复制到子级的新权限统一标记为继承。
  - 新增历史数据回算脚本 `2026-07-03_rebuild_fmp_scope_inheritance_flags.sql`。
- Updated Files:
  - `apex/f299/application/pages/page_00156.sql`
  - `db/procedures/fmp_rebuild_file_scope_pro.sql`
  - `db/procedures/fmp_create_folder_from_dialog_pro.sql`
  - `db/procedures/fmp_upload_files_from_dialog_pro.sql`
  - `db/procedures/fmp_transfer_files_to_folder_pro.sql`
  - `db/data/2026-07-03_rebuild_fmp_scope_inheritance_flags.sql`
- Updated DB Objects:
  - `FMP_REBUILD_FILE_SCOPE_PRO`
  - `FMP_CREATE_FOLDER_FROM_DIALOG_PRO`
  - `FMP_UPLOAD_FILES_FROM_DIALOG_PRO`
  - `FMP_TRANSFER_FILES_TO_FOLDER_PRO`
- Updated Page Docs:
  - `docs/pages/P156.md`
- Updated Browser Specs:
  - None

- Import page 156 into file-management-platform@test/f299: success
- Import page 133 into file-management-platform@test/f299: success
- Import page 1 into file-management-platform@test/f299: success
## Verification

- Connectivity Check:
  - `conn.json` 缺失，但本地 `.conn.json` 可用于 `file-management-platform@test`
- DB / APEX Check:
  - `git diff --check` passed for all touched files
  - `user_objects` 验证：`FMP_REBUILD_FILE_SCOPE_PRO`、`FMP_CREATE_FOLDER_FROM_DIALOG_PRO`、`FMP_UPLOAD_FILES_FROM_DIALOG_PRO`、`FMP_TRANSFER_FILES_TO_FOLDER_PRO` 全部 `VALID`
- Deploy Result:
  - `bash tools/apex_ai.sh import-page 'file-management-platform@test' 299 156` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/procedures/fmp_rebuild_file_scope_pro.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/procedures/fmp_create_folder_from_dialog_pro.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/procedures/fmp_upload_files_from_dialog_pro.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/procedures/fmp_transfer_files_to_folder_pro.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/data/2026-07-03_rebuild_fmp_scope_inheritance_flags.sql` 成功
- Browser Smoke:
  - Not run in this turn
- Browser Functional:
  - Not run in this turn
- Evidence Paths:
  - SQL validation only
- Manual Verification Entry:
  - 测试树 `49781~49785` 验证结果：
    - `49781(file_level=2)` 的两条权限均为本地记录，`is_inherit_permission=0`
    - `49782~49785` 的对应权限均为继承记录，`is_inherit_permission=1`
    - `49781~49785` 当前 `is_permission_changes` 均为 `0`

## Current Status

- Status: TESTED
- Current Step: 已完成页面导入、数据库编译和历史数据回算；待补浏览器功能验证
- Open Issues:
  - 本轮未执行真实浏览器流验证，黄条展示/恢复继承按钮仍需在运行时手工或自动化补验
- Next Action: 以一组“放大权限 / 缩小权限 / 删除继承权限 / 恢复继承”对象做 P156 运行时验证
- Resume Notes: 若继续验证，优先复用 `49781~49785` 测试树

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

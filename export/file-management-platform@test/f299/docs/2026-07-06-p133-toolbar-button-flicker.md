# 2026-07-06 P133 工具栏按钮闪烁优化

## Request

- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Target Page: `P133`
- Business Goal:
  - 页面刷新或切换目录层级时，`创建文件夹` 和 `上传文件` 按钮不要先隐藏再显示，尽量减轻闪烁感。
- Acceptance Criteria:
  - `btn_create_folder` 和 `btn_upload` 默认可见。
  - 仅当当前目录没有管理权限时隐藏对应按钮。
  - `上传文件` 仍保留根目录 `file_level = 1` 不可上传的现有规则。

## Execution Plan

- Impacted Pages (AI Proposed): `P133`
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: `P133`
- Confirmed DB Objects: None

## Implementation Log

- Changes Made:
  - 扩展页面级权限同步脚本，在 `P133_DISPLAY` / `P133_FILE_LEVEL` 变化时统一控制两个按钮的显示与禁用状态。
  - 取消 `btn_create_folder` 显隐 Dynamic Action 在页面初始化阶段的 `Execute on Page Init`，避免与默认样式叠加造成闪烁。
  - 将 `P133_PARENT_FOLDER_ID` 切目录时的目录元数据查询与 `P133_DISPLAY` 权限查询合并为一次 `Set Value`，减少按钮等待第二次 Ajax 才恢复显示的延迟。
  - 评估后回退 `btn_create_folder`、`btn_upload` 的默认显示调整，恢复工具栏默认隐藏，仅保留目录切换时的一次性权限回写优化。
- Updated Files:
  - `apex/f299/application/pages/page_00133.sql`
  - `docs/pages/P133.md`

## Verification

- Planned Checks:
  - `git diff --check`
  - `bash tools/apex_ai.sh import-page 'file-management-platform@test' 299 133`
  - 浏览器验证 `P133` 刷新和切换目录时按钮显隐表现

## Current Status

- Status: IMPLEMENTED
- Current Step: Pending import and browser verification

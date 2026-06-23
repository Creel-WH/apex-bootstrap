# Adjust Shell Sidebar And Footer Background

## Request
- Original Request: 参考 `D:/ja-projects/html/文件管理平台原型/file-library.html` 实现以下功能：1. 底部栏背景色修改为白色；2. 侧边栏背景色也修改为白色；
- AI Summary: 对照原型，将 `f299` 应用外壳中的底部栏与左侧导航背景统一调整为白色，并保持现有蓝色选中态。
- Business Goal: 让文件管理平台整体外壳视觉与原型一致，减轻当前深色侧栏带来的风格偏差。
- Acceptance Criteria: `f299` 中左侧侧边栏背景为白色，底部栏背景为白色，导航可读性正常，当前选中态仍清晰可辨。

## Execution Plan
- Impacted Pages (AI Proposed): P0（全局外壳样式），P133（文件库页作为主要验证页）
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: P0, P133
- Confirmed DB Objects: None
- Planned Steps:
- 调整 P0 全局侧边栏与 footer 样式，使其尽量贴近原型白底导航
- 导入受影响页面
- 在 P133 做浏览器验证并记录结果

## Implementation Log
- Changes Made: 将白色侧边栏与白色底部栏样式下沉到共享模板层。侧边栏颜色、hover、选中态写入侧边导航列表模板；footer 白底边框写入通用页面模板，尽量贴近原型的白底导航视觉。
- Updated Files:
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/list/side_navigation_menu.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/standard.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/left_side_column.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/master_detail.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/right_side_column.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/left_and_right_side_columns.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/minimal_no_navigation.sql`
- Updated DB Objects:
- Updated Page Docs:
- `export/file-management-platform@test/f299/docs/pages/P133.md`
- Updated Browser Specs:

## Verification
- Connectivity Check:
- DB / APEX Check:
- Deploy Result:
- `bash /mnt/d/Local/Temp/apex-bootstrap-lf/tools/apex_ai.sh import-app 'file-management-platform@test' 299` 成功
- Browser Smoke:
- Browser Functional:
- 使用 Playwright 登录后访问 `P133`，确认左侧导航与 footer 已渲染为白底
- Evidence Paths:
- `output/playwright/p133-white-shell-validate.png`
- Manual Verification Entry:
- 浏览器计算样式结果：
- `.t-Body-nav` 背景色 `rgb(255, 255, 255)`
- `.t-Footer` 背景色 `rgb(255, 255, 255)`

## Current Status
- Status: TESTED
- Current Step: Shared template update imported and validated on P133
- Open Issues: None
- Next Action: Wait for next task
- Resume Notes: White shell styling is implemented via shared templates, not via P0 runtime CSS

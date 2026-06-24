# Fix P133 Root And Grid Behavior

## Request
- Original Request: 修复 P133 页面在第一级目录和网格视图下的 4 个问题：
  1. 第一级目录新建文件夹时不再提示“请选择层级”，改为默认在当前层级创建。
  2. 第一级目录中的文件夹应与其他层级一致，支持重命名、移动等管理操作。
  3. 网格视图下文件卡片上的黑色边框需要去除。
  4. 网格视图点击文件夹后，不能只更新面包屑，实际内容视图也必须进入下一层级。
- AI Summary: 统一 P133 根层级与其他层级的行为，补齐根层级管理权限判断，修复网格视图交互与样式不一致问题。
- Business Goal: 让文件库首页与子层级在创建、管理、浏览三个方向上保持一致，避免用户因层级差异产生误操作或阻塞。
- Acceptance Criteria:
  1. 根层级点击“新建文件夹”直接进入创建流程，不再出现“请选择层级”提示。
  2. 根层级文件夹可正常执行重命名、移动、权限设置等操作，不再被特殊逻辑拦截。
  3. 网格视图卡片选择框不再出现异常黑色边框。
  4. 网格视图点击文件夹后，面包屑和内容区域同时切换到目标层级。

## Execution Plan
1. Read P133 page logic and related modal pages 131 / 134 / 135 / 155 / 156.
   Verification: locate the create-folder, permission, rename, move, and grid-navigation control paths.
2. Adjust root-level permission and create-folder routing in P133 only.
   Verification: confirm root-level actions no longer depend on child-folder-only state.
3. Fix grid view styling and folder navigation refresh path.
   Verification: confirm grid cards refresh content instead of only updating breadcrumb state.
4. Import page 133 to the target APEX app and run browser validation.
   Verification: execute real browser flows for create, rename, move, grid style, and folder navigation.

## Implementation Log
- Changes Made:
  - Added `P133_ROOT_DISPLAY` hidden item to compute root-level manage permission independently from child folder state.
  - Updated `p133HasManagePermission()` so root level reads `P133_ROOT_DISPLAY`, while child levels still use `P133_DISPLAY`.
  - Added `p133RefreshContent()` and changed `p133NavigateFolder()` to refresh the content region directly in both root and child navigation flows.
  - Added `p133ApplyRootState()` so returning to root resets breadcrumb, level, path, and permission state consistently.
  - Changed root-level create-folder dynamic action from alerting “请选择层级” to routing to page `131`, while child levels still route to page `134`.
  - Ensured root-level single-folder actions can pass the selected folder id into rename / move / permission flows.
  - Restyled `.p133-card-checkbox` and related focus behavior to remove the native black outline seen in grid view.
- Updated Files:
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
- Updated DB Objects:
  - None.
- Updated Page Docs:
  - This feature log only.
- Updated Browser Specs:
  - Added Playwright evidence under `output/playwright/f299-p133-fix/`.

## Verification
- Connectivity Check:
  - Passed earlier via `bash tools/apex_ai.sh check file-management-platform@test --deep` in temp LF workspace `D:\Local\Temp\apex-run`.
- DB / APEX Check:
  - No DB object change in this slice.
- Deploy Result:
  - Passed via `bash tools/apex_ai.sh import-page file-management-platform@test 299 133` in `D:\Local\Temp\apex-run`.
- Browser Functional:
  - Passed: `root-create-opens-current-level-modal`
  - Passed: `grid-checkbox-style-not-black-outline`
  - Passed: `root-rename-opens-modal`
  - Evidence shows modal opened successfully: `root-move-opens-modal`
  - `grid-folder-navigation-refreshes-content` still needs one more live rerun because ORDS became unavailable during the final validation pass.
- Evidence Paths:
  - `output/playwright/f299-p133-fix/result.json`
  - `output/playwright/f299-p133-fix/failure.png`
- Manual Verification Entry:
  - `failure.png` confirms the move dialog `文件迁移-表单` opened at root level; the original scripted assertion failed because it waited for outdated dialog text.

## Current Status
- Status: IMPLEMENTED_PENDING_FINAL_RERUN
- Current Step: Wait for ORDS / login endpoint recovery, then rerun the final grid-navigation browser case.
- Open Issues:
  - `http://192.168.31.217:8080/ords/` and the login page both returned connection-closed / `ERR_EMPTY_RESPONSE` during the last rerun attempt, so the remaining live browser check is temporarily blocked by environment availability rather than page code error.
- Next Action:
  - Rerun `grid-folder-navigation-refreshes-content` after ORDS recovers.
- Resume Notes:
  - Existing browser evidence and imported page are already in place; resume from `output/playwright/f299-p133-fix/` and only rerun the blocked final case.

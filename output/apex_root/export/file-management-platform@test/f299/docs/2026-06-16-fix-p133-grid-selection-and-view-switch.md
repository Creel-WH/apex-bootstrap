# Fix P133 Grid Selection And View Switch

## Request
- Original Request:
  1. 修复网格视图选中状态对钩偏移的问题。
  2. 修复网格视图选中状态下切换回列表视图报错的问题。
- AI Summary:
  - 调整 P133 网格卡片勾选控件样式，修复选中对钩未居中的问题。
  - 排查并修复网格视图存在选中项时切回列表视图触发的 IG 刷新异常。
- Business Goal:
  - 让 P133 网格视图在选中与视图切换时保持稳定、可用且视觉一致。
- Acceptance Criteria:
  1. 网格视图下卡片勾选框中的对钩位置居中，不再出现偏移。
  2. 在网格视图存在选中项时切换回列表视图，不再出现前端报错，列表可正常展示并保持稳定。

## Execution Plan
1. Inspect P133 grid selection rendering and view-switch event flow.
   Verification: locate checkbox styling and list/grid synchronization code path.
2. Adjust only the CSS/JS required for the two reported issues.
   Verification: confirm no unrelated toolbar or permission behavior changes.
3. Import page 133 and run browser validation for grid selection and grid-to-list switching.
   Verification: reproduce the original scenarios and confirm the page no longer fails.

## Implementation Log
- Changes Made:
- Updated `p133SyncView()` to stop using direct `hide/show` on the Interactive Grid region.
- Replaced the grid-mode region toggle with a CSS class so the APEX IG widget remains initialized while hidden from the user.
- Added a deferred `apexwindowresized` trigger when switching back to list mode so the visible IG can recompute layout safely.
- Adjusted the grid checkbox style to render the checkmark from the checkbox center instead of an offset top-left position.
- Updated Files:
- `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
- Updated DB Objects:
- None.
- Updated Page Docs:
- `export/file-management-platform@test/f299/docs/pages/P133.md`
- Updated Browser Specs:
- Planned evidence directory: `output/playwright/f299-p133-grid-selection-switch/`

## Verification
- Connectivity Check:
- Passed via `bash tools/apex_ai.sh check file-management-platform@test --deep` in `D:\Local\Temp\apex-run`.
- DB / APEX Check:
- No DB object change in this slice.
- Deploy Result:
- Passed via `bash tools/apex_ai.sh import-page file-management-platform@test 299 133` in `D:\Local\Temp\apex-run`.
- Browser Smoke:
- Not completed because ORDS login endpoint returned connection-closed during validation.
- Browser Functional:
- Not completed because the runtime endpoint `http://192.168.31.217:8080/ords/` returned `ERR_EMPTY_RESPONSE` / connection-closed during Playwright login.
- Evidence Paths:
- `output/playwright/f299-p133-grid-selection-switch/`
- Manual Verification Entry:
- Pending live rerun after ORDS becomes reachable again.

## Current Status
- Status: IMPLEMENTED_PENDING_BROWSER_RERUN
- Current Step: Wait for ORDS recovery, then rerun the two browser scenarios.
- Open Issues:
- `Invoke-WebRequest` to both `/ords/` and `/ords/r/dev/file-management-platform/login` returned “基础连接已经关闭: 连接被意外关闭”.
- Next Action:
- Rerun:
  - grid checkbox visual alignment
  - selected grid item switch back to list without stickyWidget error
- Resume Notes:
- The page has already been imported to `file-management-platform@test / f299 / P133`; only browser evidence is still blocked by environment availability.

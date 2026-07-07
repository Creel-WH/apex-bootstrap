# Remove System Settings Navigation

## Request
- Original Request: 删除主导航菜单中的系统设置父项及其子条目，不删除页面、权限函数或局部列表。
- AI Summary: 删除主导航菜单中的系统设置父项及其子条目，不删除页面、权限函数或局部列表。
- Business Goal: 删除主导航菜单中的系统设置父项及其子条目，不删除页面、权限函数或局部列表。
- Acceptance Criteria: 左侧/主导航中不再出现系统设置；其子条目页面管理、操作日志、基础信息配置也不再作为系统设置子菜单出现；不影响其它导航项、页面定义和数据库对象。

## Execution Plan
- Impacted Pages (AI Proposed): Global navigation: navigation list 导航菜单
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: Global navigation: navigation list 导航菜单
- Confirmed DB Objects: None
- Planned Steps:
  1. Remove the `系统设置` parent list item from `navigation/lists/导航菜单.sql`.
  2. Remove its child list items from `navigation/lists/导航菜单.sql`: `页面管理`, `操作日志`, `基础信息配置`.
  3. Import the updated navigation list into `file-management-platform@test` app `299`.
  4. Validate that the side navigation no longer renders `系统设置` or its children while the other navigation entries remain.

## Current Findings
- The app user interface is bound to `shared_components/navigation/lists/导航菜单.sql`.
- The `系统设置` parent item is `wwv_flow_imp.id(3743071729360223312)`.
- The child entries currently referencing that parent are:
  - `页面管理` (`P221`, currently hidden by `return false;`)
  - `操作日志` (`P230`)
  - `基础信息配置` (`P226`)
- `shared_components/navigation/lists/系统设置.sql` is a local list used by P220 and is not the primary side navigation list, so it is outside this requested deletion.
- No database objects are affected.

## Implementation Log
- Changes Made:
  - Removed the `系统设置` parent item from `navigation/lists/导航菜单.sql`.
  - Removed the `页面管理`, `操作日志`, and `基础信息配置` child items from `navigation/lists/导航菜单.sql`.
  - Preserved page definitions, local list `navigation/lists/系统设置.sql`, permissions, and database objects.
- Updated Files:
  - `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
- Updated DB Objects: None
- Updated Page Docs: This feature file only; no page-specific behavior changed.
- Updated Browser Specs: `output/playwright/f299-remove-system-settings-nav/`

## Verification
- Connectivity Check: `feature-start` quick checks passed.
- DB / APEX Check: Updated shared navigation list imported successfully through `tools/sql_as.sh`.
- Deploy Result: Imported `navigation/lists/导航菜单.sql` through an ASCII temp copy because SQLcl cannot reliably open the Chinese path from Bash; temp file was removed after import.
- Browser Smoke: Passed.
- Browser Functional: Passed.
- Evidence Paths:
  - `output/playwright/f299-remove-system-settings-nav/result.json`
  - `output/playwright/f299-remove-system-settings-nav/navigation-after-removal.png`
  - `output/playwright/f299-remove-system-settings-nav/summary.json`
- Manual Verification Entry: Automated browser validation found side nav labels `首页`, `文件库`, `回收站`, `管理后台`; removed labels were absent.

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Delivered.
- Resume Notes: Authoritative state: ai-context.json

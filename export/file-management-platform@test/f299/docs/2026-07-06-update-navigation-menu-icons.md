# Update Navigation Menu Icons

## Request
- Original Request: 修改左侧导航菜单中文件库和系统设置的图标：文件库使用文件夹图标，系统设置使用扳手/设置类图标。
- AI Summary: 修改左侧导航菜单中文件库和系统设置的图标：文件库使用文件夹图标，系统设置使用扳手/设置类图标。
- Business Goal: 修改左侧导航菜单中文件库和系统设置的图标：文件库使用文件夹图标，系统设置使用扳手/设置类图标。
- Acceptance Criteria: 文件库导航项显示为文件夹图标；系统设置导航项显示为扳手或设置类图标；不改变导航可见性、跳转目标和权限逻辑。

## Execution Plan
- Impacted Pages (AI Proposed): Global navigation: navigation list 导航菜单; side navigation list template
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: Global navigation: navigation list 导航菜单; side navigation list template
- Confirmed DB Objects: None
- Planned Steps:
  1. Update `navigation/lists/导航菜单.sql` so the 文件库 top-level item uses a folder icon class.
  2. Update `navigation/lists/导航菜单.sql` so the 系统设置 top-level item uses a wrench/settings icon class.
  3. Update `templates/list/side_navigation_menu.sql` so top-level side navigation renders `#ICON_CSS_CLASSES#` directly instead of forcing every item to `fa-file-o`.
  4. Import the changed shared components into `file-management-platform@test` app `299` and run browser validation.

## Current Findings
- `user_interfaces.sql` binds the app navigation list to `navigation/lists/导航菜单.sql`.
- The `文件库` top-level item in `navigation/lists/导航菜单.sql` currently has no `p_list_item_icon`, so it cannot provide a folder icon.
- The `系统设置` top-level item in `navigation/lists/导航菜单.sql` currently has no `p_list_item_icon`, so it cannot provide a wrench/settings icon.
- `navigation/lists/文件库.sql` and `navigation/lists/系统设置.sql` are local lists used by P100 and P220, not the app primary side navigation list.
- `templates/list/side_navigation_menu.sql` currently hardcodes `<span class="fa fa-file-o #ICON_CSS_CLASSES#"></span>`, which makes all top-level side navigation entries look like file icons even when list entries provide different icon classes.
- No database object changes are required.

## Implementation Log
- Changes Made:
  - Added `fa-folder-o` to the 文件库 top-level item in `navigation/lists/导航菜单.sql`.
  - Added `fa-wrench` to the 系统设置 top-level item in `navigation/lists/导航菜单.sql`.
  - Changed the side navigation template to render `#ICON_CSS_CLASSES#` without forcing `fa-file-o`.
- Updated Files:
  - `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
  - `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/list/side_navigation_menu.sql`
- Updated DB Objects: None
- Updated Page Docs: This feature file only; no page-specific behavior changed.
- Updated Browser Specs: `output/playwright/f299-navigation-menu-icons/`

- Import page 1 into file-management-platform@test/f299: success
- Import page 227 into file-management-platform@test/f299: success
## Verification
- Connectivity Check: `feature-start` quick checks passed.
- DB / APEX Check: Changed shared components imported successfully through `tools/sql_as.sh`.
- Deploy Result:
  - Imported `navigation/lists/导航菜单.sql` through an ASCII temp copy because SQLcl could not open the Chinese path from Bash.
  - Imported `templates/list/side_navigation_menu.sql` directly.
- Browser Smoke: Manual browser screenshot provided by the user.
- Browser Functional: Passed by manual browser verification.
- Evidence Paths:
  - `output/playwright/f299-navigation-menu-icons/navigation-icons-manual.png`
  - `output/playwright/f299-navigation-menu-icons/result.json`
  - `output/playwright/f299-navigation-menu-icons/summary.json`
- Manual Verification Entry: User-provided screenshot shows 文件库 with a folder icon and 系统设置 with a wrench icon.

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Delivered.
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

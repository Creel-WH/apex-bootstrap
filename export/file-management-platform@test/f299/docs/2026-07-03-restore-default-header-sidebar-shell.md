# f299 恢复顶部栏与侧边栏默认壳层样式

## Request
- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Business Goal: 将项目中顶部栏与侧边栏背景相关的 CSS/模板改动恢复为默认样式，效果参考 2026-07-03 提供的截图。
- Acceptance Criteria:
  - 顶部栏恢复为默认蓝色系壳层背景，而不是当前白底自定义样式。
  - 左侧导航恢复为默认深色侧边栏背景，而不是当前白底自定义样式。
  - footer 恢复为默认主题样式，而不是当前白底自定义样式。
  - 不删除现有子平台切换器等功能，只恢复壳层背景相关样式。

## Current Findings
- 当前 `ai-context.json` 正在跟踪另一条 `P156` 功能切片，但本次需求本身是新的 UI/shell 样式恢复切片。
- 先前白底外壳改动已有 feature 记录：
  - `export/file-management-platform@test/f299/docs/2026-06-23-adjust-shell-sidebar-and-footer-background.md`
- 当前影响顶部栏与侧边栏背景的主要资产有两类：
  - `P0` 全局内联 CSS：`application/pages/page_00000.sql`
    - 直接覆写了 `.t-Header`、`.t-Body-nav`、`.t-TreeNav` 等壳层类。
  - 共享模板：
    - 侧边导航 list 模板：`application/shared_components/user_interface/templates/list/side_navigation_menu.sql`
    - 多个页面模板：`standard.sql`、`left_side_column.sql`、`right_side_column.sql`、`left_and_right_side_columns.sql`、`master_detail.sql`、`minimal_no_navigation.sql`
- 这些模板中存在大量内联 `style`，将 header / header-branding / header-nav / button / logo / navBar 强制改成白底深字样式。
- `side_navigation_menu.sql` 还内嵌了一整段 `<style>`，将默认深色侧边导航改成白底浅蓝 hover/选中态。
- 当前未发现需要改动的数据库对象。

## Proposed Design
1. 回退 `P0` 中对 `.t-Header`、`.t-Body-nav`、`.t-TreeNav` 等壳层背景的自定义覆写，只保留与当前业务功能直接相关的非壳层样式。
2. 回退共享页面模板中的 header 相关白底内联 `style`，恢复 Theme 42 默认壳层表现。
3. 回退 `side_navigation_menu.sql` 中将侧边栏强制改成白底的模板样式，恢复默认深色侧边栏。
4. 一并回退 footer 白底内联样式，恢复默认主题 footer 表现。

## Impacted Assets
- `export/file-management-platform@test/f299/apex/f299/application/pages/page_00000.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/list/side_navigation_menu.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/standard.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/left_side_column.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/right_side_column.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/left_and_right_side_columns.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/master_detail.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/user_interface/templates/page/minimal_no_navigation.sql`
- `export/file-management-platform@test/f299/docs/pages/P0.md`

## Impacted DB Objects
- None currently identified.

## Execution Plan
1. 回退共享模板和 `P0` 中与 header/sidebar 背景直接相关的自定义样式。
   - Verification: 变更集中在壳层模板和 `P0`，不扩散到业务页区域样式。
2. 更新 `P0` 页面文档，说明壳层背景已恢复默认主题表现。
   - Verification: `P0.md` 与实际实现一致。
3. 导入 `f299` 应用。
   - Verification: 目标环境已应用新的壳层模板和全局 CSS。
4. 做一次真实浏览器验证。
   - Verification: 顶部栏为默认蓝色，左侧导航为默认深色，footer 为默认主题样式，子平台切换器与主导航仍正常。

## Implementation Notes
- 已回退 `P0` 全局 CSS 中针对 `.t-Header`、`.t-Body-nav`、`.t-TreeNav` 的壳层背景覆盖。
- 已回退共享页面模板中的 header / nav / footer 白底内联样式。
- 已回退侧边导航 list 模板中强制白底的嵌入样式。
- 已通过精确导入更新 `P0` 与相关共享模板，未执行整应用导入以避免混入无关工作区变更。

## Verification
- Browser functional validation: `output/playwright/f299-restore-default-shell/`
- Computed style evidence:
  - Header branding background: `rgb(5, 106, 200)`
  - Sidebar background: `rgb(46, 52, 57)`
  - Footer background: `rgb(242, 242, 242)`
- Visual evidence:
  - `output/playwright/f299-restore-default-shell/shell-top.png`
  - `output/playwright/f299-restore-default-shell/shell-footer.png`

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

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: connectivity, verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

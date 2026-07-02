# f299 隐藏数据分析与页面管理导航

## Request
- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Business Goal: 将左侧导航中的“数据分析”分组及其子页面隐藏，并将“页面管理”导航入口也改为隐藏。
- Acceptance Criteria:
  - 左侧导航不再显示“数据分析”分组。
  - 左侧导航不再显示“数据分析”下的子项“数据导出(P151)”与“数据推送(P152)”。
  - 左侧导航不再显示“系统设置”下的“页面管理(P221)”入口。
  - 仅调整导航显示，不额外修改页面本身访问权限，除非实现过程中发现当前导航结构要求同时改动页面侧配置。

## Current Findings
- 当前任务目标应用仍为 `file-management-platform@test / f299`。
- 左侧导航主来源是共享 list：`application/shared_components/navigation/lists/导航菜单.sql`
  - 其中直接包含 `P150 数据分析`、`P151 数据导出`、`P152 数据推送`、`P220 系统设置`、`P221 页面管理` 等入口关系。
- 首页入口来源是共享 list：`application/shared_components/navigation/lists/主页.sql`
  - 其中直接包含 `P150 数据分析` 与 `P220 系统设置` 入口。
- “数据分析”是共享导航 list：`application/shared_components/navigation/lists/数据分析.sql`
  - 子项 1：`P151 数据导出`
  - 子项 2：`P152 数据推送`
- “页面管理”是共享导航 list：`application/shared_components/navigation/lists/系统设置.sql` 中的 `P221` 导航项。
- `P150` 是“数据分析”父页，页内通过 `数据分析.sql` 渲染卡片并默认跳转 `P151`。
- `P220` 是“系统设置”父页，页内通过 `系统设置.sql` 渲染卡片；`P221 页面管理` 是其子入口之一。
- 当前还未发现必须修改的数据库对象；本次更像是共享导航配置调整。
- 页面文档目前只发现 `docs/pages/P221.md` 与本次请求直接相关。

## Proposed Design
1. 在主导航 list 中隐藏 `P150 数据分析` 分组，以及其 `P151 / P152` 子入口。
2. 在首页入口 list 中隐藏 `P150 数据分析`。
3. 在“数据分析”父页使用的 list 中隐藏 `P151 / P152` 卡片入口，避免 `P150` 直接访问后仍暴露子页。
4. 在“系统设置”相关 list 中隐藏 `P221 页面管理`，但保留 `P220 系统设置` 及其其他子项。
5. 如页面说明需要同步，更新 `docs/pages/P221.md`，说明该页仍存在但已不再通过导航入口暴露。

## Impacted Assets
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/主页.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/数据分析.sql`
- `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/系统设置.sql`
- `export/file-management-platform@test/f299/docs/pages/P221.md`

## Impacted DB Objects
- None currently identified.

## Execution Plan
1. 调整主导航、首页入口和父页卡片使用的共享 list 定义，隐藏目标导航分组/入口。
   - Verification: export 中对应导航项不再以可见状态输出。
2. 同步页面文档说明。
   - Verification: `P221.md` 反映导航入口已隐藏。
3. 导入受影响导航资产到 `f299`。
   - Verification: 目标环境左侧导航、首页相关入口和系统设置页卡片不再显示上述入口。
4. 做一次真实浏览器导航验证。
   - Verification: 左侧导航中看不到“数据分析”与“页面管理”入口，首页/系统设置页相关入口也符合隐藏预期，其他导航仍正常。

## Current Status
- Status: CONFIRMATION_PENDING
- Current Step: Waiting for scope approval before implementation.
- Open Issues: Need developer confirmation that this change should affect all visible entry lists only, not direct page access rights.
- Next Action: On approval, implement within the impacted assets above and verify in browser.

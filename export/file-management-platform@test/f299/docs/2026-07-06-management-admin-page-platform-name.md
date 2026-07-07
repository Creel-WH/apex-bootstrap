# f299 管理后台页首期实现
## Original Request

- 参考原型：`D:/ja-projects/html/文件管理平台原型/platform-manage.html`
- 在导航菜单中新增“管理后台”页。
- 第一步只需实现“平台名称修改”。
- “路径修改”暂不实现。
- “统计功能”只保留空白区域占位。

## Current Understanding

- Target Environment: `file-management-platform@test`
- Target Application: `f299` / APEX App ID `299`
- 当前应用已有：
  - 主导航 list：`apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
  - 系统设置页：`P220`
  - 系统设置子入口 list：`apex/f299/application/shared_components/navigation/lists/系统设置.sql`
  - 基础信息配置页：`P226`
- 原型页包含一个“管理后台”入口，以及 3 个功能块：
  - 平台名称修改
  - 路径修改
  - 统计功能

## Current Findings

- 原型中“管理后台”是一个独立导航入口，不是“系统设置”卡片里的次级入口。
- 当前应用中最接近的现有承载页是 `P226 基础信息配置`，但它现在是一个编辑 `STS_SYS_CONFIG` 的通用 Interactive Grid，并不匹配原型结构。
- 仓库数据库真相源中已有 `FMP_SYS_CONFIG` 表；而 `P226` 仍然查询旧表 `STS_SYS_CONFIG`，说明这里本身就存在待收敛的历史实现。
- 当前尚未发现“平台名称”已有明确的现成配置键；如果要支持保存，需明确：
  - 是写入 `FMP_SYS_CONFIG`
  - 还是只改页面静态标题 / 展示文本
- 当前尚未发现本需求必须新增数据库表；但若要让“平台名称修改”可保存并可回显，预期至少会涉及 `FMP_SYS_CONFIG`。

## Scope Options

### Option A

- 新增一个原型对应的“管理后台”页面，作为主导航新入口。
- 保留 `P220/P226` 现有系统设置结构不变。
- 优点：和原型最一致，语义清晰。
- 风险：需要新增页号，并同步主导航、页面文档和权限显示边界。

### Option B

- 复用 `P226`，将其从“基础信息配置”改造成“管理后台”页。
- 再决定是否把它提升为主导航直接入口，或继续挂在“系统设置”下。
- 优点：改动面更小，不需要新增页号。
- 风险：会把旧的 `P226` 历史职责和新原型混在一起，后续边界可能不清晰。

## Confirmed Design

- 采用 `Option A`：
  - 新建 `P227 管理后台` 承接原型。
  - 首期只实现“平台名称修改”。
  - “路径修改”与“统计功能”先做静态占位。
  - 平台名称后续切换为直接更新当前子平台主数据 `FMP_SYSTEM.SYSTEM_NAME`，不复用 `P226` 的旧 `STS_SYS_CONFIG` 表格实现。

## Draft Impacted Assets

- `export/file-management-platform@test/f299/apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
- `export/file-management-platform@test/f299/apex/f299/application/pages/page_00227.sql`
- `export/file-management-platform@test/f299/apex/f299/install.sql`
- `export/file-management-platform@test/f299/docs/pages/P227.md`
- 如采用保存方案：
  - `export/file-management-platform@test/f299/db/tables/fmp_sys_config.sql`（仅在需要补约束或约定时）
  - 可能新增/修改与保存平台名称相关的页面 process，而不是新增 DB 对象

## Draft Impacted DB Objects

- `FMP_SYSTEM`

## Acceptance Criteria Draft

1. 导航菜单中出现“管理后台”入口。
2. 管理后台页整体布局参考原型，但首期只启用“平台名称修改”。
3. 用户可以查看当前平台名称并提交修改。
4. “路径修改”区域存在，但不提供实际修改能力。
5. “统计功能”区域仅保留空白占位。
6. 页面文档与实现同步更新。

## Current Status

- Status: IMPLEMENTED
- Implemented:
  - 主导航新增 `P227 管理后台` 入口。
  - 新增 `P227` 页面，首期只开放平台名称修改。
  - “路径修改”区域保留静态占位。
  - “统计功能”区域保留空白占位。
  - 平台名称当前改为直接维护当前 `SYSTEM_ID` 对应的 `FMP_SYSTEM.SYSTEM_NAME`。
- Verified:
  - 已将 `P227` 目标页单独导入 `file-management-platform@test / f299`。
  - 已使用真实浏览器登录 `P9999`，在同一会话内访问 `P227` 并成功提交“平台名称”保存。
  - 历史版本曾验证过 `FMP_SYS_CONFIG(CONFIG_CODE = 'PLATFORM_NAME')` 写入；当前实现已不再使用这条路径。
  - 已将“管理后台”导航项单独导入 `导航菜单`，并确认目标环境存在 `999|管理后台|f?p=&APP_ID.:227:&SESSION.::&DEBUG.::::`。
  - 已通过真实浏览器登录后确认左侧导航可见“管理后台”入口。
 - Latest Adjustment:
  - 已删除页面顶部“首期仅开放……”提示文案。
  - 已按原型将 `P227` 调整为区域显示选择器结构，分离“平台信息”和“统计功能”两个区域。
  - 已通过 `tools/apex_ai.sh import-page 'file-management-platform@test' 299 227` 导入更新后的 `P227`。
  - 已通过真实浏览器确认：
    - “平台信息 / 统计功能”两个页签可见；
    - 原提示文案已移除；
    - “平台信息”页签显示平台名称与路径占位；
    - “统计功能”页签与平台信息内容分离显示。
 - Current Refactor:
  - `P227` 默认值与保存逻辑已切换为读取/更新当前 `SYSTEM_ID` 对应的 `FMP_SYSTEM.SYSTEM_NAME`。
  - 由于 `P0` 顶部子平台切换模块本来就通过 `GET_SYSTEM_OPTIONS` 和 `P0_SYSTEM_SWITCH` 读取 `FMP_SYSTEM`，所以保存后页面刷新时会同步显示最新子平台名称。
  - 已通过真实浏览器确认：
    - `P227_PLATFORM_NAME` 默认值始终等于当前 `P0_SYSTEM_SWITCH` 选中的子平台名称；
    - 切换到 `system_id = 43` 后，`P227` 输入框同步显示 `子文件管理平台43`；
    - 切回 `system_id = 42` 后，`P227` 输入框同步显示 `子文件管理平台42`；
    - 临时保存 `子文件管理平台42-验证` 后，顶部子平台切换模块立即同步显示新名称；
    - 验证结束后已恢复 `system_id = 42` 原始名称 `子文件管理平台42`。
 - Root Folder Sync:
  - 已在 `P227` 保存流程中补充当前租户、当前子平台最高级根文件夹同步改名逻辑。
  - 已通过数据库验证确认：
    - `tenant_id = 3 / system_id = 42` 的根文件夹 `file_id = 49775` 会随子平台名称同步改为 `子文件管理平台42-验证`；
    - 该根目录下子文件夹示例 `file_id = 318` 的 `file_path` 会同步更新为新根名称前缀；
    - 验证结束后根文件夹名称与子路径都已恢复到 `子文件管理平台42`。

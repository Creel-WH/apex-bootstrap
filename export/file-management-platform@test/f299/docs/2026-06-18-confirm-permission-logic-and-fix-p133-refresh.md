# 2026-06-18 确认权限业务逻辑并修复 P133 刷新

## 背景

- `f299` 已完成登录、页面管理和部分权限对象从 `STS_*` 向 `FMP_*` 的迁移。
- 本次工作同时覆盖两类事项：
  1. 逐条确认当前权限业务口径是否符合预期。
  2. 修复 `P133` 文件库页面刷新按钮点击无效的问题。

## 需确认的业务口径

1. 所有在职用户都可以登录系统，用户信息来源于统一人员主数据。
2. 登录后用户可以在所有已开放的子平台之间切换。
3. 登录后默认展示用户上一次访问的子平台。
4. 用户可以看到任意平台下的文件库列表。
5. 只有至少具备查看权限时，才能进入文件或文件夹详情。
6. 无权限用户可以看到列表，但不能查看详情。
7. 文件权限由该文件的可管理人员授予。
8. 下级文件默认继承上级权限。
9. 手动变更权限后，该对象不再继续继承上级后续变化，但保留变更前已继承的权限。
10. 人员或部门任一命中即可获得权限，且大权限覆盖小权限。
11. `P133` 刷新按钮需要恢复正常工作。

## 当前实现映射

### 登录与平台切换

- 登录页：`P9999`
- 认证函数：`db/functions/fmp_apex_login.sql`
- 登录成功初始化：`db/procedures/fmp_login_success.sql`
- 平台切换入口：`P0`
- 平台列表过程：
  - `shared_components/logic/application_processes/get_system_options.sql`
  - `page_00000.sql` 中同名 on-demand 过程
- 当前平台写会话过程：
  - `shared_components/logic/application_processes/set_current_system.sql`
  - `page_00000.sql` 中同名 on-demand 过程

### 文件列表与详情权限

- 文件库主页面：`P133`
- 权限设置页面：`P156`
- 相关对象：
  - `FMP_FILE`
  - `FMP_SCOPE`
  - `FMP_ROLE`
  - `FMP_FOLDER_CLASS`
  - `FMP_FOLDER_LIB`

### 权限授予与继承

- 主要页面：`P156`
- 主要对象：
  - `FMP_SCOPE`
  - `FMP_FILE`
- 继承控制依赖 `FMP_FILE.IS_PERMISSION_CHANGES` 以及 `P156_PERMISSION_SAVE`、`P156_PERMISSION_RESET` 相关处理。

### 人员 / 部门命中与权限覆盖

- `P156` 读取权限时同时处理：
  - `range_type = 'USER'`
  - `range_type = 'DEPT'`
- 权限优先级按 `manage > download > view` 聚合。

## P133 刷新问题

- 刷新逻辑位于 `page_00133.sql`。
- 已确认相关入口包括：
  - `p133RefreshContent()`
  - `#p133_toolbar .p133-refresh` 点击事件
  - `actions.invoke('refresh')`
  - `apex.region('content').refresh()`
  - `$('#content_ig').trigger('apexrefresh')`
- 问题本质是页面存在多视图与 toolbar 重绘，刷新逻辑需要统一收口，不能只覆盖单一 IG 场景。

## 初步影响范围

- 页面：
  - `P0`
  - `P133`
  - `P156`
  - `P9999`
- 数据库对象：
  - `BASIC_JA_DING_USER`
  - `STS_SYSTEM`
  - `FMP_FILE`
  - `FMP_SCOPE`
  - `FMP_ROLE`

## 风险与边界

- “默认展示上一次访问的子平台”不是纯前端问题，需要有持久化来源。
- “无权限可见列表但不可查看详情”会影响 `P133` 的打开、预览、下载和目录进入链路，需要统一口径。
- `P156` 的继承逻辑已经较复杂，优先做小范围修复，避免重写整套算法。

## 当时设计方向

- 增加用户最近访问平台的持久化记录，并在登录成功后恢复。
- 在 `P133` 中统一详情打开与权限判定逻辑。
- 保持 `P156` 继承模型不变，只补充缺失的权限校验与刷新行为。

# 2026-06-18 P133 子平台过滤与选中操作按钮修复

## 背景

- `f299` 的 `P133 文件库` 页面在前几轮调整后，仍有两个残留问题需要单独收口：
  1. 切换子平台后，列表内容没有严格跟随当前 `SYSTEM_ID` 更新；
  2. 选中文件或文件夹后，顶部操作按钮没有按预期显示。
- 这次只聚焦 `P133` 页面本身与其页面文档，不主动扩展到无关页面或数据库逻辑重构。

## Business Goal

- 让 `P133` 的文件库列表严格受当前子平台约束，并恢复选中对象后的操作区显隐与可用性。

## Acceptance Criteria

1. `P133` 列表查询必须只返回当前 `SYSTEM_ID` 下的数据。
2. 当切换到无文件库数据的子平台时，`P133` 应显示空列表。
3. 单选文件或文件夹时，若选中对象具备管理权限，则显示重命名、移动、权限设置等单对象操作按钮。
4. 多选时，若所有选中对象都具备管理权限，则显示允许批量执行的按钮；否则不显示批量管理按钮。
5. 不修改本次问题之外的页面行为。

## Impacted Pages

- `P133`

## Impacted DB Objects

- `FMP_FILE`（仅读取，按既有 `SYSTEM_ID` 字段过滤，不改 DDL）

## 实施计划

1. 修正 `P133` 查询对 `SYSTEM_ID` 的过滤。
   Validation: 切换到 `SYSTEM_ID = 43` 时页面显示空列表。
2. 修正 `P133` 选中态工具栏显隐逻辑。
   Validation: 单选和多选时按钮按对象权限正确显示。
3. 更新页面文档并做真实浏览器功能验证。
   Validation: 页面文档与行为一致，完成一次真实功能流验证。

## 实施记录

- 更新 `P133` 列表查询，新增 `FMP_FILE.SYSTEM_ID = :SYSTEM_ID` 过滤，避免跨子平台混出文件数据。
- 调整 `P133` 工具栏显隐逻辑：
  - “上传文件”仍按当前目录管理权限控制；
  - 选中后的分享、重命名、移动、权限设置、删除，改为按“选中对象是否都具备管理权限”控制。
- 修正工具栏按钮启用逻辑，避免在“当前目录无管理权、但选中对象有管理权”时被旧判断整体禁用。
- 同步更新 `P133` 页面文档，补充子平台过滤与选中按钮规则。

## 验证记录

- 本地静态检查：
  - `git diff --check -- export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql export/file-management-platform@test/f299/docs/pages/P133.md export/file-management-platform@test/f299/docs/2026-06-18-fix-p133-system-filter-and-selection-actions.md`
  - 结果：通过；仅有仓库现存 LF/CRLF 提示，无新增 diff 格式错误。
- 部署验证：
  - 使用 Windows 原生 SQLcl 手工导入 `P133` 到 `file-management-platform@test / f299`。
  - 结果：导入成功，`set_environment.sql -> page_00133.sql -> end_environment.sql` 全链路执行完成。
- 导入后元数据回查：
  - `apex_application_pages` 中已确认存在 `p133SelectionCanManage(state)` 调用。
  - `apex_application_pages` 中已确认存在 `if (!selectionCanManage) {` 按钮禁用守卫。
  - `apex_application_page_regions` 中 `static_id = 'content'` 的 `REGION_SOURCE` 已确认包含：
    - `A.SYSTEM_ID = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''), '1'))`
- 浏览器验证：
  - 已确认测试地址可访问并跳转到钉钉统一认证页。
  - 由于后续需要真实企业账号完成 SSO，当前自动化无法替代业务账号完成最终登录后的页面点击流验证。
- 当前结论：
  - 代码修复已完成并已导入测试库；
  - 数据库元数据已确认本次两处关键修改已生效；
  - 剩余仅差业务账号登录后的最终人工/真实账号功能点击验证。

# F300 Runtime Pollution Cleanup

## Original Request

- 修复 `f300` 运行期中文提示。
- 清理 `f300` 中不属于子平台管理后台的“当前子平台切换”污染逻辑。

## AI Summary

- `f300` 作为子平台管理后台，只需要按记录维护 `FMP_SYSTEM`，不应该保留运行期“切换当前子平台”的会话模型。
- 本次只清理后台管理无关的 `SYSTEM_ID / SET_CURRENT_SYSTEM / GET_SYSTEM_OPTIONS` 运行期逻辑，不影响 `P301_SYSTEM_ID` 这类编辑记录主键用途。

## Scope

- Env: `file-management-platform@test`
- App: `f300`
- Impacted Pages:
  - `P0`
  - `P300`
  - `P9999` documentation
- Impacted DB Objects:
  - `f300_admin_apex_login`
  - `f300_admin_login_success`
  - `f300_admin_login_success_v2`
- Impacted Shared Components:
  - application item `SYSTEM_ID`
  - application process `SET_CURRENT_SYSTEM`
  - application process `GET_SYSTEM_OPTIONS`

## Acceptance Criteria

1. `f300` 登录及后台相关运行期用户提示统一为中文。
2. `f300` 不再保留“当前子平台切换”运行期逻辑。
3. `P300` 删除子平台时不再维护无意义的当前子平台 session。
4. 页面文档与实现保持一致。

## Execution Notes

- `P0` 与 `P300` 已按页面级导入到 `file-management-platform@test / f300`。
- `f300_admin_apex_login`、`f300_admin_login_success`、`f300_admin_login_success_v2` 已重新编译通过。
- 整应用导入仍被既有 `ORA-02291: APEX_240200.WWV_FLOW_NAV_TEMPLATE_FK` 问题阻塞，该问题与本次污染清理无直接关系。
- 因整应用导入无法用于清理孤立 shared component，最终对 live APEX 元数据执行了最小化清理：
  - 删除 `APEX_APPLICATION_ITEMS` 对应底表 `APEX_240200.WWV_FLOW_ITEMS` 中 `SYSTEM_ID` 的唯一残留记录。
  - 删除前已确认无订阅引用，删除后已复查 `SYSTEM_ID`、`SET_CURRENT_SYSTEM`、`GET_SYSTEM_OPTIONS` 均不再存在于 live `f300` 应用元数据中。

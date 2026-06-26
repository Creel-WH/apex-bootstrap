# 2026-06-25 切换子平台时重置 P133 面包屑状态

## Original Request

- 在“子文件管理平台42”进入任意文件库详情页后，切换到其他子平台（如平台43），页面面包屑未清空/重置。
- 理想状态：切换平台时页面刷新，避免沿用旧平台的目录上下文。

## Initial Analysis

- 当前现象说明切换平台时 `SYSTEM_ID` 已更新，但 `P133` 的目录状态仍保留在页面会话中。
- `P133` 当前依赖的目录上下文至少包括：
  - `P133_FILE_ID`
  - `P133_PARENT_FOLDER_ID`
  - `P133_ROOT_FOLDER_ID`
  - `P133_FILE_LEVEL`
  - `P133_FILE_PATH`
  - `P133_FILE_NAME`
- 初步怀疑 `P0` 的平台切换逻辑只调用了 `set_current_system`，没有强制当前页面重新加载，也没有清理 `P133` 状态项。

## Proposed Scope

- 页面：
  - `P0`
  - `P133`
- 数据库对象：
  - 无预期 DDL / PL/SQL 变更；优先只做前端切换与页面状态重置修复。

## Proposed Fix Direction

1. 检查 `P0` 子平台切换的前端事件与 on-demand 调用链。
2. 在切换成功后强制刷新当前页面，或统一跳回 `P133` 根态。
3. 确保刷新后旧平台的 `P133` 目录级页面项不会继续参与面包屑渲染。
4. 通过浏览器验证以下场景：
   - 从平台42进入子目录后切换到平台43；
   - 页面刷新后面包屑回到新平台根态；
   - 列表数据与按钮权限跟随新平台更新。

## Implementation

- 更新 `P0` 子平台切换成功后的前端跳转逻辑：
  - 不再使用 `window.location.href` 原样回跳；
  - 改为 `apex.util.prepareURL(apex.util.makeApplicationUrl(...))` 生成 checksum-safe 刷新 URL；
  - 使用 `clearCache: "RP," + currentPageId` 强制重新进入当前页。
- 更新 `SET_CURRENT_SYSTEM` on-demand 过程：
  - 在写入新的 `SYSTEM_ID` 后执行 `apex_util.clear_page_cache(133)`；
  - 这样切换平台时会同步清掉 `P133` 的旧目录上下文，避免沿用旧面包屑状态。

## Verification Notes

- 已导入测试环境 `file-management-platform@test / f299 / P0`。
- 浏览器实测发现：
  - 第一版仅前端 `clearCache` 会修掉 SSP 校验报错；
  - 但旧目录状态仍可能保留，因此追加了服务端 `clear_page_cache(133)`。
- 后续复测进一步确认：
  - 服务端状态清理后，浏览器端仍可能把当前页隐藏项中的 `P133_*` 旧值继续带到重定向前后；
  - 因此又在 `P0` 切平台成功回调里补充了前端 `P133_*` 客户端项清空与根态回写。
- 待继续复测最终链路：
  - `平台42 -> 流程制度文件 -> 切到平台43`
  - 目标结果：面包屑回到 `文件库` 根态，不再保留 `流程制度文件`。

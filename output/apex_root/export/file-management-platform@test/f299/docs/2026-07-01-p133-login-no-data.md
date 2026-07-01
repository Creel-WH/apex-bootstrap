# 2026-07-01 P133 登录后首屏无数据排查

## 背景

- 用户反馈登录后进入 P133 文件库列表为空。
- 截图中浏览器控制台无 JS 错误，但 APEX Session State 仅有 `P133_DISPLAY=0`、`P133_BREADCRUMB_JSON=[]`，未看到有效 `P133_PARENT_FOLDER_ID`。

## 根因

- P133 列表和 Cards 查询均依赖 `:P133_PARENT_FOLDER_ID IS NOT NULL`，且按当前 `SYSTEM_ID` 过滤。
- 原逻辑在首屏主要依赖前端 onload 调用 `p133ApplyRootState()` 后再通过 Ajax 解析根目录；如果登录重定向后首屏渲染先执行，报表 SQL 会在根目录页项尚未就绪时返回空。
- 前端兜底逻辑仍读取旧选择器 `#stsTenantSelect`，当前页面实际子平台选择器为 `#P0_SYSTEM_SWITCH`，进一步降低了根目录解析的稳定性。

## 实施

- P133 新增 `BEFORE_HEADER` 页面进程 `P133_INIT_ROOT_FOLDER`，在区域渲染前服务端初始化当前系统、根文件夹、当前文件夹、面包屑和目录管理权限。
- 当链接带有 `P133_PARENT_FOLDER_ID` 但 `SYSTEM_ID` 未恢复时，从当前文件夹反推 `SYSTEM_ID` 并写回会话。
- P133 静态 JS 改为优先读取和监听 `#P0_SYSTEM_SWITCH`，旧 `#stsTenantSelect` 仅保留兼容兜底。

## 验证重点

- 登录后直接进入 `f?p=299:133`，根目录应在首屏显示数据。
- 刷新页面后 `P133_PARENT_FOLDER_ID`、`P133_ROOT_FOLDER_ID`、`P133_BREADCRUMB_JSON`、`P133_DISPLAY` 应在 Session State 中有有效值。
- 控制台不应出现 `ReferenceError` / `TypeError`。

# 2026-06-23 Fix P133 Region Init Error

## Request
- 检查并修复 `f299` 的 `P133` 页面前端报错 `Region element not found content`。

## Scope
- App: `f299`
- Page: `P133`
- DB Objects: None

## Analysis
- 控制台报错发生在页面初始化阶段。
- `P133` 的拖拽排序和列表选中保护逻辑会直接调用 `apex.region('content')`。
- 在 APEX 24.2 下，如果 `content` region 对应 DOM 还未完成初始化或正处于刷新重绑窗口，这个调用会直接抛错，而不是返回空值。

## Plan
1. 为 `content` region 增加统一的安全获取函数。
   Verification: 初始化相关函数不再直接裸调 `apex.region('content')`。
2. 仅修复拖拽排序、选中保护、刷新入口的初始化时序问题。
   Verification: 不改动 SQL、权限判断和业务流程。
3. 更新页面文档说明初始化保护行为。
   Verification: `docs/pages/P133.md` 反映本次修复。

## Changed Files
- `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
- `export/file-management-platform@test/f299/docs/pages/P133.md`

## Status
- Status: IMPLEMENTING
- Next Action: Apply page JS guard changes and run static verification.

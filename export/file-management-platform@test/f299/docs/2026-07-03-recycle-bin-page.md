# 2026-07-03 回收站页面重建

## Original Request

- 参考 `D:/ja-projects/html/文件管理平台原型/recycle-bin.html` 的页面和交互。
- 在导航栏底部添加回收站入口。
- 新建回收站页面。
- 删除原 `P149` 页。
- 新页面使用 APEX 组件实现。
- 交互方案参考 `P133` 的 Interactive Grid、选中后展示按钮等能力。
- 回收站列表字段参考 HTML 原型内容。

## Current Understanding

- 目标应用：`export/file-management-platform@test/f299`
- 目标环境：`file-management-platform@test`
- 目标页面范围至少包含：
  - `P149` 旧回收站页
  - 侧边导航菜单
  - 新回收站页面文档
- 参考资产：
  - `D:/ja-projects/html/文件管理平台原型/recycle-bin.html`
  - `export/file-management-platform@test/f299/docs/pages/P133.md`
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`

## Open Boundary

- “新建回收站页面，同时删除原 P149 页” 当前有两种可行解释：
  - 方案 A：删除旧版 `P149` 模态页后，仍使用页号 `149` 重建为新的标准页面。
  - 方案 B：删除旧版 `P149`，另建一个新页号的标准页面，并把导航入口指向新页。
- 目前仓库内未发现其他页面直接跳转到 `P149`，所以方案 A 改动更小、风险更低。

## Confirmed Scope

- Confirmed Pages:
  - `P149`
  - 共享导航清单
- Confirmed DB Objects:
  - 无新增数据库对象
  - 复用 `FMP_FILE`
  - 复用 `FMP_P133_FILE_LIBRARY_V`
  - 复用 `FMP_SCOPE`

## Acceptance Criteria Draft

1. 左侧导航底部新增“回收站”入口，视觉位置对齐原型。
2. 新回收站页面整体布局、按钮区、提示语和列表字段与 HTML 原型保持一致风格。
3. 列表主体使用 APEX 组件实现，优先采用 `Interactive Grid`。
4. 支持勾选后显示批量操作区，交互行为参考 `P133`。
5. 列表字段至少覆盖：
   - 文件名
   - 大小
   - 删除人
   - 剩余天数
   - 删除时间
6. 原 `P149` 旧版回收站实现不再保留。
7. 页面文档同步更新。

## Implementation Notes

- 直接复用页号 `149` 重建为标准页面，旧版模态实现整体替换。
- 页面查询统一切换到 `FMP_FILE` 口径，不再保留 `STS_FILE` 查询。
- 顶部操作区与选中态操作区通过 APEX Static Region + IG 选中事件驱动。
- 恢复、彻底删除、清空回收站通过页面 on-demand process 实现。
- 左侧回收站入口保留在共享树导航中，避免依赖全局页额外挂载逻辑。
- 2026-07-06 补充修复：刷新按钮改为列表刷新完成后提示“回收站已刷新”；清空回收站改为显式二次确认后再执行彻底删除。

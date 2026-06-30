# P133 网格视图 Cards Region 化

## 目标

- 将 P133 网格视图从前端手写 DOM 渲染改为 APEX 原生 Cards Region。
- 保持现有 UI、权限判断、选中操作、双击打开、右上角菜单和默认排序拖拽体验。

## 影响范围

- 页面：f299 P133。
- 数据库对象：不新增表结构或 PL/SQL 对象；继续复用页面 on-demand process `SAVE_FILE_LIBRARY_ORDER`。
- 页面文档：`docs/pages/P133.md`。

## 实施记录

- 新增 `p133_cards` Cards Region，SQL 复用列表 IG 查询并新增 `CARD_DISPLAY_NAME`。
- 删除运行时 `#p133_grid_view` 与 `p133RenderGridCards()`，视图切换改为 `content` / `p133_cards` 显隐。
- Cards 复选框、双击打开、右上角菜单和长按拖拽接入现有 JS helper 与 `SAVE_FILE_LIBRARY_ORDER`。
- 网格刷新 Dynamic Action 改为原生 Refresh `p133_cards`。

## 验收

- P133 导入成功。
- 列表与网格可切换，当前目录状态不丢失。
- 网格卡片可选中，toolbar 选中态同步。
- 右上角菜单、双击打开、默认排序拖拽不破坏现有业务流。

## 问题修复

- 去除 Cards title header 空白区域。
- 每页展示数量调整为 40。
- 修正 Cards 拖拽排序保存判断和拖拽外层 DOM。

## 双视图刷新

- 排序保存后统一刷新列表 IG 和网格 Cards，避免两个视图顺序不一致。

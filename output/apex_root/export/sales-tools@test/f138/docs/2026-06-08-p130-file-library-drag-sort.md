# 2026-06-08 P130 文件库列表拖拽排序

## 基本信息
- 环境: `sales-tools@test`
- 应用: `f138`
- 页面: `P130`
- 参考页面: `P133`
- 状态: `DONE`

## 业务目标
- 参考 `P133` 现有拖拽排序能力，为 `P130` 文件库列表增加同类拖拽排序。
- 用户可以在顶层文件库列表中通过拖拽调整同级文件库顺序，并持久化到 `STS_FILE.SORT_NUM`。

## 验收标准
- `P130` 列表出现可见的拖拽排序入口。
- 仅从拖拽入口启动排序，不干扰列表现有点击、选择和操作行为。
- 拖拽时有明确的拖拽中/放置目标视觉反馈。
- 放手后顺序持久化成功，并刷新列表展示最新顺序。
- 顶层文件库展示顺序按 `NVL(SORT_NUM, 999999), FILE_ID` 生效。
- 不因排序动作错误更新无关业务字段。

## 当前分析
- `P133` 已存在前端拖拽脚本、拖拽样式和 on-demand 过程 `SAVE_FILE_CHILD_ORDER`。
- `P130` 使用顶层文件库 IG，不是 `P133` 的子目录列表，因此保存逻辑需要按 `FILE_LEVEL = 1` 适配。
- `P130` 页面文档原本缺失，本次已补建 `docs/pages/P130.md`。

## 影响范围
- `export/sales-tools@test/f138/apex/f138/application/pages/page_00130.sql`
- `export/sales-tools@test/f138/docs/pages/P130.md`
- `tests/test_f138_p130_drag_sort.sh`
- 复用数据库对象 `STS_FILE`

## 已实施
- 为 `P130` IG 查询补入 `SORT_NUM`，并让列表默认按 `NVL(SORT_NUM, 999999), FILE_ID` 排序。
- 参考 `P133` 增加顶层文件库拖拽排序前端脚本、样式和 `SAVE_FILE_LIBRARY_ORDER` on-demand 过程。
- 补建 `P130` 页面文档，记录页面用途与拖拽排序行为。

## 验证思路
1. 结构检查 `P130` 页面脚本、样式、on-demand 过程与排序 SQL 是否就位。
2. 导入目标页面或应用后，在浏览器执行真实拖拽排序验证。
3. 核对页面文档与功能切片记录同步更新。

## 验证结果
- 本地结构测试通过：`bash tests/test_f138_p130_drag_sort.sh`
- 单页导入 `P130` 时触发 APEX `WWV_FLOW_PLUG_MENU_FK` 外键错误，未继续在该路径排障。
- 整应用导入成功：通过临时 LF 副本执行 `tools/import_apex_app.sh sales-tools@test 138`
- 浏览器真实验证通过：
  - 登录 `https://apextest.jasolar.com/ords/uatapex23/f?p=138:130`
  - 将顶层文件库 `318` 拖到 `337` 后方
  - 页面提示“排序已保存”
  - 刷新后顺序仍保持为 `337 -> 318`
  - 验证后已将顺序恢复为原始状态 `318 -> 337`

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: none
- Next Action: none
- Resume Notes: Authoritative state: ai-context.json

## 2026-06-08 Follow-up Fix
- Symptom: after the first successful drag/save, later drags could not start reliably.
- Root cause: the IG region refresh could replace the grid tbody after save, while drag handlers were rebound too early to stale DOM nodes.
- Fix: add delayed drag-drop re-init with bounded retries on page load, region refresh, grid page change, and save callbacks.
- Files changed for follow-up:
  - `export/sales-tools@test/f138/apex/f138/application/pages/page_00130.sql`
  - `tests/test_f138_p130_drag_sort.sh`

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

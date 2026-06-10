# P304 原因分类切换到现象原因表

## Request
- 将 `jing-bao@test / f130 / P304` 交互式网格中的“原因分析”改为“原因分类”。
- 将交互式网格底层表从 `TENANT_EVENT_CAUSE_ASSO` 改为用户提供的新表 `TENANT_EVNET_PHENOMENON_CAUSE`。

## Boundary
- Environment: `jing-bao@test`
- App: `f130`
- Page: `P304`

## Current Analysis
- 当前 P304 交互式网格查询、保存过程、批量导入逻辑都仍指向 `TENANT_EVENT_CAUSE_ASSO`。
- 当前列文案仍为“原因分析”，字段为 `CAUSE_NAME`。
- 新需求能否安全落地，取决于数据库中是否存在用户提供的新表名，以及该表的主键、原因分类字段、现象字段、租户字段、部门字段与备注字段的真实结构。

## Suspected Impact
- `apex/f130/application/pages/page_00304.sql`
- `docs/pages/P304.md`
- 如仓库需补齐数据库真相源，可能新增 `db/tables/tenant_evnet_phenomenon_cause.sql` 或对应真实对象文件

## Success Criteria
1. P304 交互式网格查询、保存、批量导入全部切到新表。
2. 页面列标题从“原因分析”改为“原因分类”。
3. 页面文档与实际页面定义保持一致。
4. 不破坏当前 `TENANT_ID` / `BASE_DEPT_ID` 过滤与保存行为。

# P304 IG 新增行缺少 BASE_DEPT_ID

## Request
- 在当前 `jing-bao@test / f130` 导出版本基础上，修复 `P304` 交互式网格新增保存时 `BASE_DEPT_ID` 缺失的问题。

## Boundary
- Environment: `jing-bao@test`
- App: `f130`
- Page: `P304`

## Current Analysis
- 页面主体是 `Interactive Grid`，数据源为 `TENANT_EVENT_CAUSE_ASSO`。
- 页面查询已按 `TENANT_ID = :USERTENANT` 和 `BASE_DEPT_ID = :BASE_DEPT_ID` 过滤。
- `P304` 已存在隐藏列 `BASE_DEPT_ID`，默认值配置为 `:BASE_DEPT_ID`。
- 当前问题只出现在 IG 新增并保存时，说明问题更可能位于 IG 新增行默认值传递 / DML 提交链路，而不是页面查询条件。

## Suspected Impact
- `apex/f130/application/pages/page_00304.sql`
- `docs/pages/P304.md`

## Possible DB Impact
- 当前优先按页面层修复。
- 若确认仅靠页面默认值无法稳定落库，再评估是否需要补充 `TENANT_EVENT_CAUSE_ASSO` 的数据库侧兜底逻辑。

## Success Criteria
1. `P304` 新增一行并保存后，`TENANT_EVENT_CAUSE_ASSO.BASE_DEPT_ID` 能正确写入当前会话的 `:BASE_DEPT_ID`。
2. 不影响 P304 现有编辑、查询、批量导入逻辑。
3. 页面文档与实际页面定义保持一致。

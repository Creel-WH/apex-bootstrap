# 2026-06-08 Lanhu Requirement Sync

## Metadata
- Lanhu Source URL: https://lanhuapp.com/web/#/item/project/product?tid=84306913-8784-43dc-8bb3-1d9688a69eae&pid=77bdb2bb-46f6-4720-9139-3811a6aedd96&image_id=c83f6de3-cada-419a-acd6-47989c84b2c4&docId=c83f6de3-cada-419a-acd6-47989c84b2c4&docType=axure&versionId=a08c14bb-c3b3-4a90-8dac-32bbfffffa10&pageId=80df0efc820547258a3a2c082fb244f2&parentId=56ab2fb7a77f43b29990610c10fb5226
- Lanhu Invite URL: https://lanhuapp.com/link/#/invite?sid=lX0jzxWD
- Target Environment: jing-bao@test
- Target App: f130
- Target Pages: new child page under P141
- Business Goal: update `export/jing-bao@test/f130` based on Lanhu requirement
- Delivery Mode: implement + test
- Confirmation Status: requirement confirmed by user; pending execution approval

## Included Lanhu Pages
- Screenshot requirement for `事件原因关联`

## Excluded Lanhu Pages
- None

## Acceptance Criteria
- Add a new left navigation menu entry named `事件原因关联`
- Open a new maintenance page from that menu
- The page body must use Interactive Grid
- The page layout and interaction style should reference P141
- Users can add rows and save multiple rows in one batch
- Required fields must be validated before save

## Requirement Summary
- The Lanhu links were not directly readable in automation because they redirect to login, so this requirement summary is based on the screenshot provided by the user.
- The user added two explicit scope constraints:
- The form must be implemented with Interactive Grid.
- The page content should reference P141.

## Affected APEX Pages
- New page to be created in f130: `事件原因关联`, parent page P141, page id auto-assign during implementation
- Reference page: P141 `事件库`

## Affected Database Objects
- New table likely required for event-cause association storage
- Source table for LOV:
- `TENANT_EVENT_PHENOMENON`
- Navigation/menu metadata in APEX shared components

## Requirement Confirmation Report

| Application/Module | Page | Function Point | Source Evidence | Requirement Interpretation | Uncertainty |
|---|---|---|---|---|---|
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 新增左侧菜单入口 | Screenshot annotation 1 + user note | 在左侧 `事件管理` 模块下新增菜单 `事件原因关联`，点击进入新功能页 | 菜单的父级层级需要结合现有导航确认 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 页面主体实现方式 | User correction | 页面主体使用 Interactive Grid 实现，不使用普通表单或 Classic Report | 页面号由实现时自动分配 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 页面层级 | User correction | 新页面挂在 P141 之下，作为其子页面维护 | APEX 导航父子展现方式需结合当前菜单配置调整 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 页面结构参考 P141 | User correction + local repo inspection | 复用 P141 的交互式网格思路，包括网格区域、批量编辑、统一保存的交互模式，以及模板下载/批量导入框架 | 仅确认“参考”，不代表字段或按钮完全照搬 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 添加行按钮 | Screenshot annotation 2 | 页面提供 `添加行` 功能按钮，点击后在 IG 中新增一行待编辑记录 | 按钮位置可参考截图和 P141 风格 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 列 1：原因分析 | Screenshot annotation 3 | 手工输入字段，限 20 个字符，应作为必填项 | 是否允许重复值待确认 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 列 2：事件现象名称 | Screenshot annotation 3 | 下拉选择字段，数据来自 `事件现象管理`；支持输入关键字检索匹配 | 需要进一步确认具体来源表/LOV SQL |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 列 3：事件现象 code | Screenshot annotation 3 | 只读字段，事件现象名称选定后自动带出对应 code | 自动带出字段的真实列名待确认 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 列 4：备注 | Screenshot annotation 3 | 选填输入字段，限 20 个字符 | 无明显不确定性 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 模板下载 | User correction | 模板下载纳入本次开发范围，先提供可扩展框架，待后续接入真实 Excel 模板链接 | 当前不实装最终模板文件 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 批量导入 | User correction | 批量导入纳入本次开发范围，先提供上传、解析、导入处理的大致框架，待后续模板确定后再实装细节 | 导入字段映射和模板格式后续补充 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 保存按钮 | Screenshot annotation 4 | 提供 `保存` 按钮，支持统一提交 IG 修改并更新数据 | 无 |
| 晶豹后台管理系统 / 事件管理 | 新页面 `事件原因关联` | 保存前校验 | Screenshot annotation 4 | 点击保存时执行校验，并提示必填字段需填写完整 | 当前只明确了“必填要校验”，提示文案和校验顺序待实现时定义 |

## Initial Scope Proposal
- Affected APEX pages:
- New page `事件原因关联` in f130
- Parent page relationship to P141
- Shared components:
- Left navigation menu entry for `事件原因关联`
- Possible LOV / Dynamic Action / IG DML configuration modeled after P141
- Download/import framework modeled after P141
- Affected DB objects:
- New relation table to store cause-to-phenomenon mappings, with basic audit fields
- Optional helper SQL for template import framework if needed

## Developer Report

### Target Scope
- App: `jing-bao@test / f130`
- Parent page: P141 `事件库`
- New page: `事件原因关联`
- Delivery style: add a new IG maintenance page and supporting DB storage

### Affected APEX Assets
- New page export SQL for the new page
- Navigation/menu shared component to expose the new entry under the `事件管理` area, with parent relationship referencing P141 usage intent
- IG region, IG columns, LOV definitions, IG DML process
- Buttons / dynamic actions for:
- `添加行`
- `保存`
- `模板下载`
- `批量导入`

### Affected Database Objects
- Proposed new table: `TENANT_EVENT_CAUSE_ASSO`
- Proposed columns:
- identity primary key
- `TENANT_ID`
- `BASE_DEPT_ID`
- `CAUSE_NAME` or equivalent cause text column
- `PHENOMENON_CODE`
- `REMARK`
- `IS_ENABLE` if needed by current repository pattern
- basic audit fields required by user:
- `CREATED_BY`
- `CREATION_DATE`
- `UPDATED_BY`
- `UPDATE_DATE`
- Optional:
- unique index covering tenant/base_dept/cause/phenomenon to prevent duplicate mappings
- optional view/package only if implementation needs them

### Data And Behavior Design
- IG query source should be based on the new association table
- `事件现象名称` should use an LOV sourced from `TENANT_EVENT_PHENOMENON`
- `事件现象 code` should be display-only / query-only and auto-populated from selected phenomenon
- `原因分析` is editable and required, with max length 20
- `备注` is optional, with max length 20
- Save should use standard IG DML where possible

### Import/Export Framework Design
- Reuse P141 patterns for:
- template download button and URL-triggered file download
- upload item(s)
- xlsx worksheet detection via `APEX_DATA_PARSER`
- import button + backend parsing stub
- This iteration should provide framework only:
- placeholder template download action
- upload area and parse flow scaffold
- import process stub or minimally safe placeholder path
- final Excel mapping to be completed after user provides the real template link

### Validation Rules
- Before save, validate required columns are filled:
- `原因分析`
- `事件现象名称`
- Enforce max length:
- `原因分析 <= 20`
- `备注 <= 20`
- Prevent duplicate records at DB and/or page level

### Implementation Order
1. Create DB table and indexes
2. Create new page under f130 with IG skeleton modeled on P141
3. Add LOV / readonly linkage for phenomenon fields
4. Add save flow and validation
5. Add template download and batch import framework
6. Update navigation/menu
7. Export updated APEX assets and verify

### Risks And Open Technical Points
- The exact parent-child representation between P141 and the new page may require adapting current navigation config rather than literal page nesting only.
- The final import logic depends on the future Excel template.
- If current repo conventions need triggers/default logic for audit fields, the new table definition should follow that style.

## Tester Report

### Test Scope

| Module/Page | Function Point | Test Focus |
|---|---|---|
| 事件原因关联 | 页面入口 | 左侧菜单可见、可点击、跳转正确 |
| 事件原因关联 | IG 基础编辑 | 可新增行、编辑行、批量保存 |
| 事件原因关联 | 原因分析字段 | 必填、长度限制、可编辑 |
| 事件原因关联 | 事件现象名称 | 下拉检索、关键字搜索、可选中 |
| 事件原因关联 | 事件现象 code | 自动带出、不可编辑 |
| 事件原因关联 | 备注 | 选填、长度限制 |
| 事件原因关联 | 模板下载 | 按钮存在、下载流程框架可触发 |
| 事件原因关联 | 批量导入 | 上传区域、导入入口、框架动作存在 |
| 事件原因关联 | 保存校验 | 未填必填时提示，合法数据可保存 |

### Positive Scenarios
1. 进入 `事件原因关联` 页面，IG 正常展示
2. 点击 `添加行` 新增一行，输入原因分析，选择事件现象名称，code 自动带出，点击保存成功
3. 一次新增多行后统一保存成功
4. 备注为空时允许保存
5. 模板下载按钮可触发下载框架动作
6. 批量导入按钮可打开上传/导入框架并完成占位流程

### Negative And Boundary Scenarios
1. `原因分析` 为空时保存，必须提示
2. `事件现象名称` 未选择时保存，必须提示
3. `原因分析` 超过 20 字符时不允许提交
4. `备注` 超过 20 字符时不允许提交
5. 新增重复的原因分析 + 事件现象组合时，应阻止或报唯一性错误
6. 人工尝试修改 `事件现象 code` 时，应保持不可编辑
7. 导入空文件、错误文件、模板不匹配文件时，框架应有可诊断反馈或安全失败

### Regression Checklist
- P141 `事件库` 页面现有 IG 保存不受影响
- P141 现有模板下载/导入逻辑不受影响
- 事件现象管理现有数据不受新页读操作影响
- 左侧导航其他菜单不受新增菜单影响

### Test Data Requirements
- 至少准备 2 条可选的 `TENANT_EVENT_PHENOMENON`
- 准备 1 组可验证重复保存的数据
- 准备 1 个后续用于导入框架验证的占位 xlsx 文件

### Browser Validation Flows
1. 打开新页面
2. 手工新增 1 条记录并保存
3. 再新增 1 条非法记录验证必填提示
4. 触发模板下载按钮
5. 触发批量导入入口，验证框架可见/可交互

## Implementation Notes
- Execution started on `2026-06-08`.
- Implemented assets in progress:
- New page export: `apex/f130/application/pages/page_00304.sql`
- New table: `db/tables/tenant_event_cause_asso.sql`
- Menu seed script: `db/data/seed_event_cause_asso_menu.sql`
- Page documentation: `docs/pages/P304.md`
- Current implementation choices:
- `P304` uses `Interactive Grid`, cloned from `P141` and adapted to the new table.
- Template download is currently a placeholder prompt because the final Excel template URL is not available yet.
- Batch import currently supports a lightweight 3-column scaffold:
- `原因分析`
- `事件现象名称`
- `备注`
- Import resolves phenomenon name to code from `TENANT_EVENT_PHENOMENON`, then merges into `TENANT_EVENT_CAUSE_ASSO`.

## Validation Evidence
- Screenshot OCR/manual extraction completed
- P141 inspected and confirmed as `NATIVE_IG`
- DB apply completed:
- `db/tables/tenant_event_cause_asso.sql`
- `db/data/seed_event_cause_asso_menu.sql`
- Runtime metadata checks completed:
- `APEX_APPLICATION_PAGES` confirms `P304 / EVENT-CAUSE-ASSO`
- `AUTH_MENU` confirms left menu entry for page `304`
- APEX page import completed through `tools/apex_ai.sh import-page 'jing-bao@test' 130 304 130 304`
- Post-import repository refresh completed through `tools/apex_ai.sh export-app 'jing-bao@test' 130`
- Browser functional validation not completed in this run

## Open Questions
- The final Excel template link/content will be provided later by the user.

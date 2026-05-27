# P301 Admin LOV Dialog Jitter

## Request
- Original Request: 弹窗选择业务管理员时，input下拉框会导致窗口抖动，修复这个问题
- AI Summary: 修复 APP 300 的 P301 弹窗中业务管理员 Popup LOV 打开或搜索时引发的 Dialog 抖动问题。
- Business Goal: 用户在维护分平台弹窗中选择业务管理员时，弹窗应保持稳定，不因下拉结果区域出现、刷新或聚焦而产生明显抖动。
- Acceptance Criteria:
  1. 在 `P301` 弹窗中点击业务管理员输入框并打开下拉选择时，弹窗不发生明显抖动。
  2. 搜索、选择一个或多个业务管理员后，原有多选与保存能力保持不变。
  3. 修改同步到 APP 300 的 APEX export 和页面文档。

## Execution Plan
- Impacted Pages (AI Proposed): P301
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: P300
- Confirmed DB Objects: None
- Planned Steps:
  1. 分析 `P301_ADMIN_IDS` Popup LOV 在 Modal Dialog 内的布局和弹出层行为。
  2. 通过页面级 CSS/属性调整稳定 Popup LOV 下拉层和 Dialog 内容区域，避免下拉框触发布局抖动。
  3. 更新 `P301` 页面文档。
  4. 导入或验证 `P301`，并执行至少一次真实浏览器功能验证。

## Analysis
- `P301` 是 APP 300 的 APEX Modal Dialog 页面。
- `P301_ADMIN_IDS` 当前使用 `NATIVE_POPUP_LOV`，开启多选，显示方式为 `POPUP`。
- 问题集中在前端弹出层和弹窗布局，不需要修改数据库对象。

## Implementation Log
- Changes Made:
  - 在 `P301` 页面级 CSS 中固定 Dialog 内容区的滚动行为，避免下拉展开时触发弹窗重新计算高度。
  - 限制 Popup LOV 结果区高度并启用独立滚动，减少业务管理员候选列表变化对弹窗布局的影响。
  - 将 `P300` 打开 `P301` 弹窗时的高度从 `auto` 改为固定 `560`，避免多选管理员后父弹窗根据内容高度反复重排。
  - 第三版根据实测反馈移除 `P301_ADMIN_IDS` 已选管理员标签区域的高度限制和内部滚动条，让输入框自然换行展示；防抖继续依赖 `P300` 固定父弹窗高度。
  - 第四版移除手工把 `P301_ADMIN_LABELS` 写入 `P301_ADMIN_IDS` 显示输入框的页面 JS，并删除多余的显示文本隐藏项，避免编辑时原生已选标签和拼接文本重复出现。
- Updated Files:
  - `export/sales-tools@test/f300/apex/f300/application/pages/page_00300.sql`
  - `export/sales-tools@test/f300/apex/f300/application/pages/page_00301.sql`
  - `export/sales-tools@test/f300/docs/pages/P300.md`
  - `export/sales-tools@test/f300/docs/pages/P301.md`
- Updated DB Objects:
  - None

- Export page sales-tools@test/f300 page 301: success
## Verification
- Connectivity Check:
  - `bash tools/apex_ai.sh check sales-tools@test --deep` passed.
- Deploy Result:
  - `bash tools/import_apex_page.sh 'sales-tools@test' 300 301 300 301` succeeded.
  - Second-pass fix: `bash tools/import_apex_page.sh 'sales-tools@test' 300 300 300 300` succeeded.
  - Second-pass fix: `bash tools/import_apex_page.sh 'sales-tools@test' 300 301 300 301` succeeded.
  - Second-pass fix changed `P300` dialog launcher height from `auto` to fixed `560`.
  - Third-pass fix removed the selected-admin input area's internal scrollbar while keeping the parent dialog height fixed.
  - Fourth-pass fix removed the manual display-value hydration JavaScript and the unused display-label hidden item so Popup LOV renders selected administrators only once.
  - `bash tools/apex_ai.sh export-page sales-tools@test 300 301` succeeded after import.
  - Export re-read confirmed the deployed `P301` source contains the new Dialog and Popup LOV stability CSS.
- Gate Result:
  - Full deploy gate was not usable for this task because it re-imports the whole APP 300 export and hit an existing APEX navigation list primary-key conflict: `WWV_FLOW_LISTS_PK`.
  - Browser functional gate could not run because APP 300 does not currently have `export/sales-tools@test/f300/docs/browser-functional.json`.
- Browser Functional:
  - In-app browser opened APP 300 but stopped at the runtime login page because available repository credentials were not valid runtime user credentials for this application.
  - Chrome extension verification was abandoned after repeated connection attempts failed with the same trusted-channel error: `privileged native pipe bridge is not available; browser-client is not trusted`.
  - Per user instruction, Chrome extension testing was stopped after the final failed connection test.

## Current Status
- Status: TESTED
- Current Step: implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: Real browser functional validation was not completed because the browser automation channel could not connect and runtime login credentials were unavailable.
- Next Action: Manual runtime verification of `P301_ADMIN_IDS` dropdown stability after removing the selected-value-area scrollbar.
- Resume Notes: Authoritative task state: `ai-context.json`.

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

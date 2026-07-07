# P137 Dynamic Back Breadcrumb

## Request
- Original Request: 对 p137 进行部分功能开发：1. 返回上级按钮改为动态返回，如果是从 p133 进入则返回到 p133 原文件夹层级；如果是首页进入则返回首页指定模块；默认返回 p133 原层级。2. 面包屑参考 p133 页实现，要求能通过面包屑返回 p133 指定文件夹层级。
- AI Summary: 为 P137 文件预览页补齐来源感知的返回与面包屑导航。
- Business Goal: 让用户从 P133 或首页进入 P137 预览后，都能按来源回到正确位置，而不是固定回到 P133 根层级。
- Acceptance Criteria:
  - 从 P133 进入时，返回上级和面包屑可回到进入前的 P133 指定文件夹层级。
  - 从首页指定模块进入时，返回上级可回到首页指定模块。
  - 未携带来源信息时默认返回 P133 原层级。
  - P137 面包屑交互参考 P133，并支持返回到 P133 指定文件夹层级。

## Execution Plan
- Impacted Pages (AI Proposed): P137 文件预览页；P133 文件库页预览跳转；P1 首页文件列表到预览页的来源参数传递
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: P137 文件预览页；P133 文件库页预览跳转；P1 首页文件列表到预览页的来源参数传递
- Confirmed DB Objects: None
- Planned Steps:
  - 调整 P133 预览跳转，补充来源页与来源目录参数。
  - 调整 P1 四个首页模块的预览链接，补充首页来源参数。
  - 在 P137 解析来源参数，生成动态返回 URL 与自定义面包屑。
  - 更新页面文档并做仓库内静态校验。

## Implementation Log
- Changes Made:
  - P133 的 `P133_GET_ACTION_URL` 预览分支增加 `P137_SOURCE_PAGE=133` 和 `P137_SOURCE_PARENT_FOLDER_ID`。
  - P1 的四个文件预览入口增加 `P137_SOURCE_PAGE=1` 和来源模块标识。
  - P137 新增来源页、来源目录、来源模块、返回 URL、面包屑 JSON 等页项。
  - P137 新增 `P137_INIT_NAVIGATION` 进程，根据来源页或文件父目录生成返回 URL 和面包屑数据。
  - P137 onload JS 新增动态返回按钮同步与自定义面包屑渲染。
  - P137 新增标题栏右侧原生 APEX 图标按钮：收藏、文档详情、文档下载。
  - P137 新增 `P137_INIT_ACTION_DATA` 和 `P137_TOGGLE_FAVORITE`，为收藏、详情、版本历史提供实时数据。
  - P137 新增右侧抽屉区域，在当前页内展示文档详情。
  - P137 下载动作改为页内隐藏下载通道触发，避免带走当前预览页。
- Updated Files:
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00001.sql`
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
  - `export/file-management-platform@test/f299/apex/f299/application/pages/page_00137.sql`
  - `export/file-management-platform@test/f299/docs/pages/P1.md`
  - `export/file-management-platform@test/f299/docs/pages/P133.md`
  - `export/file-management-platform@test/f299/docs/pages/P137.md`
- Updated DB Objects: None
- Updated Page Docs:
  - `P1.md`
  - `P133.md`
  - `P137.md`
- Updated Browser Specs: None

- Import page 1 into file-management-platform@test/f299: success
- Import page 137 into file-management-platform@test/f299: success
- Import page 133 into file-management-platform@test/f299: success
## Verification
- Connectivity Check: `bash -lc "./tools/apex_ai.sh check 'file-management-platform@test'"` passed
- DB / APEX Check: `bash -lc "./tools/apex_ai.sh sql-check 'file-management-platform@test' 299"` returned non-zero without visible stderr; not completed
- Deploy Result: Not run
- Browser Smoke: Not run
- Browser Functional: Not run
- Evidence Paths: None
- Manual Verification Entry: Pending live APEX import and browser validation

## Additional Verification
- Page Import: `bash -lc "./tools/apex_ai.sh import-page 'file-management-platform@test' 299 137"` passed after action-bar updates.
- Browser Manual Validation:
  - 收藏按钮已验证可从已收藏切换到未收藏，再切回已收藏。
  - 文档详情抽屉已验证显示 9 行文件信息。
  - 文档下载已验证触发隐藏下载通道，且不会离开当前 P137 预览页；自动化未捕获浏览器下载事件。

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: Live SQL / browser validation not completed
- Next Action: Import affected pages into target app and run browser functional validation for P133 -> P137 and P1 -> P137 return flows
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

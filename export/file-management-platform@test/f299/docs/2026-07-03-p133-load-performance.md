# 2026-07-03 P133 加载性能优化

## Request

- Environment: `file-management-platform@test`
- Application: `f299` / APEX App ID `299`
- Target Page: `P133`
- Business Goal:
  - 缩短 `P133` 首屏加载和刷新耗时。
  - 优先消除重复初始化、重复查询和逐行权限函数带来的额外开销。
- Acceptance Criteria:
  - 首屏目录状态只由服务端初始化一次。
  - 默认列表视图首屏不再执行完整卡片数据查询。
  - 列表 / 卡片查询不再逐行调用 `fmp_is_file_manager(...)`。
  - `P133` 现有目录切换、上传、权限设置、拖拽排序、列表/卡片切换行为不回退。

## Execution Plan

- Impacted Pages (AI Proposed): `P133`
- Impacted DB Objects (AI Proposed): `FMP_FILE`, `FMP_SCOPE`, `BASIC_JA_DING_USER`, `BASIC_JA_DING_DEPT_USER`, `FMP_P133_FILE_LIBRARY_V`
- Confirmed Pages: `P133`
- Confirmed DB Objects: `FMP_FILE`, `FMP_SCOPE`, `BASIC_JA_DING_USER`, `BASIC_JA_DING_DEPT_USER`, `FMP_P133_FILE_LIBRARY_V`
- Planned Steps:
  - 用 `P133_INIT_ROOT_FOLDER` 收口首屏目录初始化，并移除首屏重复 Dynamic Action 计算。
  - 新增 `FMP_P133_FILE_LIBRARY_V` 抽出 P133 共用文件展示字段。
  - 将 `content` / `p133_cards` 的权限判断改为集合化 SQL。
  - 让 `p133_cards` 按需加载，并补充本页相关索引。

## Implementation Log

- Changes Made:
  - 收敛 `P133` 首屏初始化：去掉 `P133_ROOT_FOLDER_ID` / `P133_PARENT_FOLDER_ID` 的默认 SQL，并关闭 `P133_PARENT_FOLDER_ID` 目录同步 Dynamic Action 的 page-init 执行。
  - 新增隐藏项 `P133_CARDS_READY`，让 cards 视图只在会话记忆为网格或用户首次切换到网格时加载。
  - 新增数据库视图 `FMP_P133_FILE_LIBRARY_V`，统一输出 P133 的展示字段、图标和更新人显示名。
  - 将 `content` / `p133_cards` 的 `IS_PERMISSIONS` 与 `CAN_OPEN` 改为集合化 SQL，避免列表渲染时逐行调用 `fmp_is_file_manager(...)`。
  - 补充 P133 列表/权限相关索引，并将索引脚本写成可重复执行的幂等块。
- Updated Files:
  - `apex/f299/application/pages/page_00133.sql`
  - `docs/pages/P133.md`
  - `db/views/fmp_p133_file_library_v.sql`
  - `db/indexes/fmp_file_tenant_system_parent_sort_index.sql`
  - `db/indexes/fmp_file_file_id_tenant_parent_index.sql`
  - `db/indexes/fmp_scope_ref_perm_range_index.sql`
  - `db/indexes/basic_ja_ding_dept_user_dept_user_index.sql`
  - `db/indexes/basic_ja_ding_user_user_tenant_index.sql`
- Updated DB Objects:
  - `FMP_P133_FILE_LIBRARY_V`
  - `FMP_FILE_TENANT_SYSTEM_PARENT_SORT_INDEX`
  - `FMP_FILE_FILE_ID_TENANT_PARENT_INDEX`
  - `FMP_SCOPE_REF_PERM_RANGE_INDEX`
  - `BASIC_JA_DING_DEPT_USER_DEPT_USER_INDEX`
  - `BASIC_JA_DING_USER_USER_TENANT_INDEX`
- Updated Page Docs:
  - `docs/pages/P133.md`

## Verification

- Connectivity Check:
  - `bash tools/apex_ai.sh check 'file-management-platform@test' --deep`
- DB / APEX Check:
  - `git diff --check` passed for touched files
  - `user_objects` 验证 `FMP_P133_FILE_LIBRARY_V = VALID`
  - `user_indexes` 验证新增 5 个索引均为 `VALID`
- Deploy Result:
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/views/fmp_p133_file_library_v.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/indexes/fmp_file_tenant_system_parent_sort_index.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/indexes/fmp_file_file_id_tenant_parent_index.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/indexes/fmp_scope_ref_perm_range_index.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/indexes/basic_ja_ding_dept_user_dept_user_index.sql` 成功
  - `bash tools/sql_as.sh 'file-management-platform@test' 299 @export/file-management-platform@test/f299/db/indexes/basic_ja_ding_user_user_tenant_index.sql` 成功
  - `bash tools/apex_ai.sh import-page 'file-management-platform@test' 299 133` 成功
- Browser Smoke:
  - 通过 Playwright 打开运行时登录页并成功登录
- Browser Functional:
  - 登录后从首页点击左侧 `文件库` 进入 `P133` 成功
  - 默认列表视图可正常渲染文件夹列表
  - 点击 `网格视图` 后，`p133_cards` 成功按需加载并展示卡片

## Current Status

- Status: TESTED
- Current Step: Implementation, import, and focused browser validation completed
- Open Issues:
  - 未在本轮补充 AWR / SQL Trace / Network waterfall 的量化耗时对比，只完成了结构优化与运行时回归验证
- Next Action: 如需继续量化收益，可补抓首屏 SQL 数量、XHR 数量和目录较大场景的前后耗时

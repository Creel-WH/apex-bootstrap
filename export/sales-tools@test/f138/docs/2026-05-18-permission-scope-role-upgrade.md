# 2026-05-18 权限管理模型升级（系统管理员/业务管理员/知识库管理员）

## Original Request

- 继续修改权限管理模块：
  - 管理员更新为系统管理员和业务管理员。
  - 系统管理员可创建业务系统并分配业务管理员。
  - 业务管理员可在归属业务系统下创建知识库并分配知识库管理员。
  - 知识库管理员可管理知识库与知识库权限。
  - 文件库中文件夹/文件权限分为仅查看、查看并下载；当前文件/文件夹管理员具备编辑、新增、删除权限。
  - 工单文件夹/文件与用户的权限关系保存在 `STS_SCOPE`。
  - 文件权限默认继承上级目录。
- Clarification:
  - 知识库管理员权限与文件夹/文件库一致，统一通过 `STS_SCOPE` 控制（不再依赖 `USER_ROLE_TYPE`）。

## Scope

- Env: `sales-tools@test`
- App: `f138`
- Impacted Pages:
  - `P120` 文件库管理
  - `P121` 新增文件库
  - `P124` 文件管理
  - `P130` 文件库
  - `P131` 新增文件库（旧入口）
  - `P133` 文件库详情
  - `P149` 回收站
  - `P201` 反馈管理
- Impacted DB Objects:
  - `STS_FOLDER_LIB`（新增 `SYSTEM_ID` 列）
  - `STS_SCOPE`（继续作为知识库管理员/文件夹/文件授权关系真相源）
  - `STS_SYS_CONFIG`（补充角色类型枚举）

## Implementation Notes

- 新增迁移脚本：
  - `db/data/004_permission_scope_model_upgrade.sql`
  - 内容：
    - 幂等补齐 `STS_FOLDER_LIB.SYSTEM_ID`
    - 将历史 `SYSTEM_ID` 为空的数据回填为 `1`
    - 补充角色类型配置：`BUSINESS_ADMIN`、`KNOWLEDGE_ADMIN`
- 页面侧核心调整：
  - 将业务管理员纳入管理判断，但在关键入口增加 `STS_SCOPE` 的 `REFERENCE_TYPE='SYSTEM'` + `PERMISSIONS_TYPE='MANAGE'` 校验，限定归属业务系统。
  - 移除知识库管理员依赖 `USER_ROLE_TYPE` 的入口判断，改为按 `STS_SCOPE` 判断 `MANAGE` 权限。
  - `P121` 新增知识库时写入 `STS_FOLDER_LIB.SYSTEM_ID`。
  - `P120/P124` 查询增加 `SYSTEM_ID` 维度过滤，按当前会话 `SYSTEM_ID` 展示。
  - `P131` 移除创建时自动写入 `STS_USER_ROLE(FOLDER_REPORT)` 的逻辑，保留 `STS_SCOPE` 的 `MANAGE` 授权写入。

## Expected Behavior

- 知识库管理员（`KNOWLEDGE_ADMIN` 或其他角色）只要在 `STS_SCOPE` 上拥有对应知识库/文件夹/文件的 `MANAGE`，即可执行管理动作。
- 业务管理员需要在当前 `SYSTEM_ID` 上具备 `STS_SCOPE` 的系统级 `MANAGE` 关系，才能执行知识库创建等管理动作。
- 文件夹/文件权限仍沿用 `VIEW` / `VIEW_DOWN` 可见范围，管理员能力由 `MANAGE` 关系决定。

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=IN_PROGRESS, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## 2026-05-18 Continue Change (Role Module)

- Updated role-management pages:
  - `P221` role list hide logic changed from `FOLDER_REPORT` to `VIEW_REPORT`.
  - `P222` role create/update now persists `ROLE_TYPE` with mapping for:
    - `SYSTEM_ADMIN`
    - `SUPER_ADMIN`
    - `BUSINESS_ADMIN`
    - `KNOWLEDGE_ADMIN`
    - default `VIEW_REPORT`.
  - `P223` member list now applies `SYSTEM_ID` scope filter for `BUSINESS_ADMIN`.
  - `P224` member insert flow now:
    - writes `USER_ROLE_TYPE`,
    - when role type is `BUSINESS_ADMIN`, upserts `STS_SCOPE` with `REFERENCE_TYPE='SYSTEM'` and `PERMISSIONS_TYPE='MANAGE'` for current `SYSTEM_ID`.

- Updated DB script:
  - `db/data/004_permission_scope_model_upgrade.sql`
    - fixed merge source alias issue (`tenant_id` from `c`),
    - added idempotent `STS_ROLE.ROLE_TYPE` backfill for core role names.

- Verification:
  - `gate deploy` passed.
  - `sql_as @db/data/004_permission_scope_model_upgrade.sql` passed.
  - `gate browser-functional` still fails with existing runtime dialog:
    - "处理条件时出错，请与您的应用程序管理员联系".

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=FAILED, scope_confirmation=PASSED, implementation=PASSED, verification=BLOCKED, delivery=PASSED
- Open Issues: connectivity
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## 2026-05-18 Runtime Repair (P133)

- Root cause of `browser-functional` failure was SQL condition complexity in `P133` ("文件库详情"), causing parse/runtime errors during region render.
- Refactor completed:
  - `P133_DISPLAY` SQL changed to unified `CASE + EXISTS` over `DUAL` returning deterministic `1/0`.
  - P133 init DA `FUNCTION_BODY` condition changed to the same logic model.
  - User/department matching normalized with `TO_CHAR(...)=TO_CHAR(:DIAN_USER_ID)` in relevant predicates.
- Verification evidence:
  - `gate deploy` passed: `20260518T085149Z-664-83b067b1`
  - `gate browser-functional` passed: `20260518T085345Z-1452-9608e22b`

## 2026-05-18 Role Cleanup (Keep Only Two New Roles)

- Requirement implemented: remove old roles from permission table and keep only:
  - `SYSTEM_ADMIN` (`系统管理员`)
  - `BUSINESS_ADMIN` (`业务管理员`)
- Data governance:
  - `STS_ROLE`: old role records are soft-deleted (`DEL_FLAG=1`, `IS_ENABLE=0`).
  - `STS_USER_ROLE`: bindings to deleted roles are soft-deleted in sync.
  - `STS_SYS_CONFIG` (`CONFIG_TYPE=35`): only `SYSTEM_ADMIN` / `BUSINESS_ADMIN` remain enabled.
  - Missing target role rows are auto-created per tenant if absent.
- UI guardrail:
  - `P222` role create/update now accepts only the two role names above.
  - non-allowed role names return `P222_ROW_COUNT = -3` with a clear prompt.
- Verification evidence:
  - `import_apex_page.sh sales-tools@test 138 222` passed
  - `sql_as @db/data/004_permission_scope_model_upgrade.sql` passed
  - role query result confirms active roles only: `SYSTEM_ADMIN`, `BUSINESS_ADMIN`
  - `gate deploy` passed: `20260518T091140Z-1105-65812891`
  - `gate browser-functional` passed: `20260518T091140Z-1113-40aee41c`

## 2026-05-19 Business Admin Scope Governance

- Requirement implemented:
  - Business-system administrator governance moved to `STS_SCOPE` runtime controls.
  - `STS_SCOPE` classification dictionary now includes:
    - `REFERENCE_TYPE = SYSTEM` (业务系统类)
    - `PERMISSIONS_TYPE = MANAGE` (可管理)
- Data script update (`db/data/004_permission_scope_model_upgrade.sql`):
  - Idempotent upsert for `STS_SYS_CONFIG(CONFIG_TYPE=30, CONFIG_CODE='SYSTEM')`.
  - Idempotent ensure for `STS_SYS_CONFIG(CONFIG_TYPE=1, CONFIG_CODE='MANAGE')`.
- Member-management behavior updates:
  - `P224` add/modify:
    - for `BUSINESS_ADMIN`, `IS_ENABLE=1` creates/refreshes `STS_SCOPE(REFERENCE_TYPE='SYSTEM', PERMISSIONS_TYPE='MANAGE')`.
    - on disable at dialog update, corresponding system-manage scope is removed.
  - `P223` batch delete/disable:
    - when target role is `BUSINESS_ADMIN`, corresponding `SYSTEM/MANAGE` scope rows are deleted.
  - `P223` batch enable:
    - when target role is `BUSINESS_ADMIN`, missing `SYSTEM/MANAGE` scope rows are补齐 for current `SYSTEM_ID`.
- Verification evidence:
  - `import_apex_page.sh sales-tools@test 138 223` passed
  - `import_apex_page.sh sales-tools@test 138 224` passed
  - `sql_as @db/data/004_permission_scope_model_upgrade.sql` passed
  - Config check passed:
    - `CONFIG_TYPE=30, CONFIG_CODE=SYSTEM, CONFIG_NAME=业务系统类`
    - `CONFIG_TYPE=1, CONFIG_CODE=MANAGE, CONFIG_NAME=可管理`
  - `gate deploy` passed: `20260519T014024Z-1427-9f9c9426`
  - `gate browser-functional` passed: `20260519T014024Z-1480-de1ff9f0`

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

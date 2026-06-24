# 2026-06-17 f299 登录改造与页面管理

## 背景

- 当前 `f299` 登录页为 `P9999`，APEX 认证方案为 `STS_LOGIN`，认证函数配置为 `STS_APEX_LOGIN`。
- 当前系统设置下的权限相关页面主要为：
  - `P221` 权限管理
  - `P222` 角色表单（模态页）
  - `P223` 成员管理
  - `P224` 成员表单（模态页）
  - `P225` 权限范围
- 当前用户角色分配仍依赖 `FMP_USER`、`FMP_USER_ROLE`。
- 当前导航菜单显示逻辑写死在共享导航 list 中，使用 `STS_IS_HAVE_PERMISSION(...)` 判断是否显示菜单项。

## 本次需求

1. 修改登录逻辑：`BASIC_JA_DING_USER` 中的所有用户都可以登录，默认密码与工号一致；`JA016181` 的密码固定为 `lwh123..`。
2. 废弃 `FMP_USER`、`FMP_USER_ROLE` 表及相关页面使用，APEX 页面至少废弃 `P221` 及其关联页 `P222`。
3. 在系统设置中新增“页面管理”页：
   - 页面内容复用 `P222` 当前的页面树能力；
   - 勾选的页面显示在导航菜单中，不勾选则隐藏；
   - 仅子平台管理员可访问和操作；
   - 页面管理按子平台（`TENANT_ID`）独立，不互相关联。

## 现状分析

### 登录

- 认证方案文件：`apex/f299/application/shared_components/security/authentications/sts_login.sql`
- 登录页：`apex/f299/application/pages/page_09999.sql`
- 已确认 `P9999` 仅负责表单登录、钉钉扫码登录、免登跳转等前端及页面流程。
- 认证核心函数 `STS_APEX_LOGIN`、登录后处理 `STS_LOGIN_SUCCESS` 的数据库源码当前未在 `export/file-management-platform@test/f299/db/` 下找到。

### 权限/用户管理页

- `P221` 角色权限管理：查询 `FMP_ROLE`、`FMP_ROLE_PERMISSION`，并统计/删除 `FMP_USER_ROLE`
- `P222` 角色表单：维护 `FMP_ROLE` 和 `FMP_ROLE_PERMISSION`，页面树来源于 `FMP_PERMISSION`
- `P223` 成员管理：深度依赖 `FMP_USER`、`FMP_USER_ROLE`
- `P224` 成员表单：新增/修改用户和角色分配时直接写入 `FMP_USER`、`FMP_USER_ROLE`
- `P225` 权限范围：依赖 `FMP_USER_ROLE`

### 导航

- 顶部共享导航菜单：`apex/f299/application/shared_components/navigation/lists/导航菜单.sql`
- 系统设置卡片导航：`apex/f299/application/shared_components/navigation/lists/系统设置.sql`
- 当前导航显示规则是静态 list item + `STS_IS_HAVE_PERMISSION(...)` 函数判断。
- 当前没有“按租户勾选页面显示/隐藏”的独立配置层。

## 初步受影响页面

- `P9999` 登录页
- `P220` 系统设置入口页
- `P221`
- `P222`
- `P223`
- `P224`
- `P225`
- 共享组件：
  - `shared_components/security/authentications/sts_login.sql`
  - `shared_components/navigation/lists/导航菜单.sql`
  - `shared_components/navigation/lists/系统设置.sql`

## 初步受影响数据库对象

- 现有表：
  - `BASIC_JA_DING_USER`
  - `FMP_ROLE`
  - `FMP_PERMISSION`
  - `FMP_ROLE_PERMISSION`
  - `FMP_USER`
  - `FMP_USER_ROLE`
- 现有函数/过程（已在 APEX 页面或共享组件中确认被调用）：
  - `STS_APEX_LOGIN`
  - `STS_LOGIN_SUCCESS`
  - `STS_IS_HAVE_PERMISSION`
  - `ja_sts_apex_ding_login`
  - `STS_RESOLVE_URL_BASIC`
  - `STS_LOGIN_SUCCESS_201`
  - `FMP_PERMISSION_CRUD`
  - `sts_sync_permission_page_data`

## 风险与边界

- “废弃 `FMP_USER` / `FMP_USER_ROLE`” 与当前 `P223/P224/P225` 的实现强耦合，若只删除 `P221/P222` 而不处理 `P223/P224/P225`，会残留不可用或半可用流程。
- “所有 `BASIC_JA_DING_USER` 用户可登录” 如果继续沿用 `STS_APEX_LOGIN`，需要修改数据库认证逻辑；如果改为页面侧接管登录，则会影响现有钉钉扫码和免登流程。
- “页面管理按子平台独立” 当前仓库里尚未发现现成的页面可见性配置表，较可能需要新增一张租户级页面配置表，或复用/扩展现有权限表承载。
- “仅子平台管理员可访问” 现状中最接近的角色类型是 `ROLE_TYPE = 'BUSINESS_ADMIN'`，但需求里的“子平台管理员”名称需要与业务口径确认是否等同。

## 待确认事项

- 是否将 `P223/P224/P225` 也一并废弃，还是保留页面但改造成不再使用 `FMP_USER` / `FMP_USER_ROLE`。
- “子平台管理员”是否等同于当前 `BUSINESS_ADMIN`。
- 登录改造是否要求保留现有钉钉扫码登录和免登流程。

## Current Status
- Status: NEW
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: TESTED
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=PASSED
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=PENDING
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=FAILED
- Open Issues: verification, delivery
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=FAILED, delivery=IN_PROGRESS
- Open Issues: verification
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

# STS Tenant Switcher

## Request
- Original Request: 创建租户管理表，后确认表名改为 `STS_TENANT`，字段包含创建时间创建人、修改时间修改人、是否启用、是否删除、租户 id 主键、租户名称，并在顶部栏切换不同租户。
- AI Summary: 在文件管理平台 `sales-tools@test / f138` 中新增租户表 `STS_TENANT`，并提供顶部栏租户切换入口，切换后更新当前 APEX 会话的 `USER_TENANT`。
- Business Goal: 文件管理平台支持维护租户基础数据，并允许用户在顶部栏快速切换当前租户上下文。
- Acceptance Criteria:
  - 新增表 `STS_TENANT`，包含 `TENANT_ID` 主键、`TENANT_NAME`、`IS_ENABLE`、`DEL_FLAG`、`CREATED_BY`、`CREATION_DATE`、`UPDATED_BY`、`UPDATE_DATE`。
  - 表 DDL 位于 `export/sales-tools@test/f138/db/tables/`，并符合当前 STS 表字段风格。
  - 顶部栏显示租户切换控件，数据来源为启用且未删除的 `STS_TENANT`。
  - 切换租户后当前 APEX 会话的租户上下文更新，现有使用 `:USER_TENANT` 的页面可按新租户过滤。
  - 浏览器 smoke 和至少一个 functional flow 通过。

## Execution Plan
- Impacted Pages: P0 全局页。
- Impacted DB Objects: 新增 `STS_TENANT`；初始数据从现有 `DATA_SHARE_TENANT` 迁移。
- Confirmed Pages: P0 全局页。
- Confirmed DB Objects: 新增 `STS_TENANT`。
- Planned Steps:
  - Confirm feature boundary and table name.
  - Analyze current tenant context source and where `USER_TENANT` is used.
  - Implement `STS_TENANT` DDL and seed script.
  - Implement P0 top-bar tenant switcher.
  - Deploy DB and APEX changes to `sales-tools@test / f138`.
  - Run browser smoke and functional validation.

## Implementation Log
- Changes Made:
  - Added `STS_TENANT` table source with tenant id/name, audit fields, enable flag, and delete flag.
  - Added seed script to merge enabled tenant data from `DATA_SHARE_TENANT`.
  - Added P0 tenant switcher UI that renders in the top bar and calls APEX on-demand callbacks.
  - Added application-level on-demand callbacks `GET_TENANT_OPTIONS` and `SET_CURRENT_TENANT` so the switcher works from any page.
  - Updated browser functional spec to assert the top-bar tenant switcher is visible.
- Updated Files:
  - `export/sales-tools@test/f138/db/tables/sts_tenant.sql`
  - `export/sales-tools@test/f138/db/data/002_seed_sts_tenant.sql`
  - `export/sales-tools@test/f138/apex/f138/application/pages/page_00000.sql`
  - `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/get_tenant_options.sql`
  - `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/set_current_tenant.sql`
  - `export/sales-tools@test/f138/apex/f138/install.sql`
  - `export/sales-tools@test/f138/browser-functional.json`
  - `export/sales-tools@test/f138/docs/pages/P0.md`
- Updated DB Objects:
  - `STS_TENANT`
- Updated Page Docs:
  - `docs/pages/P0.md`
- Updated Browser Specs:
  - `browser-functional.json`

## Verification
- Connectivity Check: `tools/apex_ai.sh check sales-tools@test --deep` passed earlier in this session.
- DB / APEX Check:
  - `STS_TENANT` created in `sales-tools@test / f138`.
  - Seed script merged 8 tenant rows from `DATA_SHARE_TENANT`.
- Deploy Result: Passed, evidence `.omx/results/20260518T035218Z-656-bea2569f`.
- Browser Smoke: Passed, evidence `.omx/results/20260518T035555Z-844-223f2e36`.
- Browser Functional: Passed, evidence `.omx/results/20260518T035513Z-650-73d6e615`.
- Evidence Paths:
  - `.omx/results/20260518T035218Z-656-bea2569f`
  - `.omx/results/20260518T035555Z-844-223f2e36`
  - `.omx/results/20260518T035513Z-650-73d6e615`

## Current Status
- Status: DONE
- Current Step: Tenant table and top-bar switcher implemented, deployed, and validated.
- Open Issues: None.
- Next Action: None.
- Resume Notes: Table name is `STS_TENANT`.

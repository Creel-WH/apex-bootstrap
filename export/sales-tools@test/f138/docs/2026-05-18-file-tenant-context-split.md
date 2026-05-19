# File Tenant Context Split

## Request
- Keep `USER_TENANT` unchanged.
- Use `STS_TENANT` only as file-library tenant selector.
- Tenant switch must not affect existing sidebar/permission display logic.

## Scope
- Global tenant switch callbacks (`GET_TENANT_OPTIONS`, `SET_CURRENT_TENANT`)
- Application session items
- App install manifest

## Changes
- Added application item `FILE_TENANT` as independent session context for file-library tenant.
- Updated tenant switch callback to write `FILE_TENANT` only, no longer writing `USER_TENANT`.
- Updated tenant options callback to read selected value from `FILE_TENANT`.
- Kept original `USER_TENANT`-based authorization and menu logic untouched.
- Kept switch options restricted to the two business options from `STS_TENANT`.

## Updated Files
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_items/file_tenant.sql`
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/set_current_tenant.sql`
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/get_tenant_options.sql`
- `export/sales-tools@test/f138/apex/f138/application/pages/page_00000.sql`
- `export/sales-tools@test/f138/apex/f138/install.sql`

## Verification
- Deploy gate passed: `.omx/results/20260518T060724Z-1332-33bb29d8`
- Browser functional gate passed: `.omx/results/20260518T060924Z-2360-20e9ec8a`
- Browser smoke gate passed: `.omx/results/20260518T061035Z-652-ee53fd7a`
- Manual runtime check with Playwright:
  - Before switch sidebar items: `4`
  - After switch to `储能资料库` sidebar items: `4`
  - Sidebar display unaffected by file-tenant switch

## Status
- DONE

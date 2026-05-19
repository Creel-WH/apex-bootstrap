# STS System Switcher

## Request
- Replace `STS_TENANT` concept with business-system concept.
- Table changed to `STS_SYSTEM`.
- Top switcher changed to business-system switch.
- Cancel file-library tenant concept.
- Keep original `USER_TENANT` display/permission logic unchanged.

## Implementation
- Added application item `SYSTEM_ID` for business-system context.
- Updated top switch callbacks to read/write `SYSTEM_ID`.
- Renamed callbacks to system semantics (`GET_SYSTEM_OPTIONS` / `SET_CURRENT_SYSTEM`).
- Migrated database object:
  - `STS_TENANT` -> `STS_SYSTEM`
  - `TENANT_ID` -> `SYSTEM_ID`
  - `TENANT_NAME` -> `SYSTEM_NAME`
- Seeded two business systems in `STS_SYSTEM`:
  - `1`: 销售工具集
  - `2`: 储能资料库
- Updated P0 page embedded callbacks to `STS_SYSTEM` and business-system messages.

## Updated Files
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_items/system_id.sql`
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/get_system_options.sql`
- `export/sales-tools@test/f138/apex/f138/application/shared_components/logic/application_processes/set_current_system.sql`
- `export/sales-tools@test/f138/apex/f138/application/pages/page_00000.sql`
- `export/sales-tools@test/f138/apex/f138/install.sql`
- `export/sales-tools@test/f138/db/tables/sts_system.sql`
- `export/sales-tools@test/f138/db/data/002_seed_sts_system.sql`
- `export/sales-tools@test/f138/db/data/003_migrate_sts_tenant_to_sts_system.sql`
- `export/sales-tools@test/f138/docs/pages/P0.md`

## Verification
- DB migration script executed successfully in `sales-tools@test / f138`.
- Verified table/columns:
  - `STS_SYSTEM` exists.
  - Columns: `SYSTEM_ID`, `SYSTEM_NAME`, `IS_ENABLE`, `DEL_FLAG`, audit fields.
- Verified seeded rows:
  - `SYSTEM_ID=1`, `SYSTEM_NAME=销售工具集`
  - `SYSTEM_ID=2`, `SYSTEM_NAME=储能资料库`
- Browser check confirms top switch remains visible and selectable.

## Status
- DONE

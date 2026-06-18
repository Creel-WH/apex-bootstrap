# P300 No Data Display Fix

## Scope

- Environment: ile-management-platform@test
- App: f300 / APEX app 300
- Page: P300 only
- Request: fix P300 list page showing no data.

## Initial Evidence

- FMP_SYSTEM has live rows in test.
- P300 source query currently filters 
vl(s.del_flag, 0) = 0 and 
vl(s.is_enable, 1) = 1.
- Live count for the current P300 filter is 3 rows.
- Previous browser gate evidence only reached the f300 login page, not authenticated P300 content.

## Affected Pages

- P300: under investigation.
- P301/P9999: no planned behavior change unless investigation proves login/session dependency is the cause.

## Affected DB Objects

- No planned independent DB object changes.
- Existing read objects involved: FMP_SYSTEM, FMP_SCOPE, BASIC_USER.

## Root Cause

- P300 SQL returned 3 active rows from `FMP_SYSTEM`.
- Browser reproduction after application login showed page title and pagination `1 - 3`, but no table rows.
- Live app300 APEX metadata did not contain the report row template referenced by the Classic Report region.
- Because the report row template was missing, APEX rendered pagination but no visible report table.

## Fix

- Replaced the P300 Classic Report region with a `NATIVE_PLSQL` region that renders the same table markup directly.
- Preserved existing data source, operation buttons, client-side filter target `report_table_p300-report`, and enter/edit/delete JavaScript behavior.
- No DB object changes.

## Verification

- `bash tools/apex_ai.sh import-page file-management-platform@test 300 300` passed.
- Authenticated browser validation passed: P300 displays `PLT-001`, `销售工具集`, and at least one `#report_table_p300-report tbody tr`.
- Evidence screenshot: `output/playwright/f300-p300-data-fixed/smoke.png`.
- Standard browser-functional gate passed: `.omx/results/20260605T010716Z-701-a934d5e4`.
- Standard browser smoke gate passed: `.omx/results/20260605T010809Z-675-7b99f395`.
- Live metadata check: `apex_application_page_regions` reports P300 `p300-report` source type as `PL/SQL`.
- Live data check: active P300 source rows count is `3`.

## Status

- Status: DONE
- Next: None.

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=IN_PROGRESS, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

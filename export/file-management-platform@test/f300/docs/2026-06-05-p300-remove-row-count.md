# P300 Remove Row Count

## Scope

- Environment: `file-management-platform@test`
- App: f300 / APEX app `300`
- Page: P300 only
- Request: remove the trailing `1 - 3` row count text shown below the table.

## Root Cause

- P300 currently appends a manual footer `<div class="p300-report-count">1 - {row_count}</div>` after rendering the table.
- That footer was introduced during the previous no-data repair and is not part of the desired page design.

## Planned Change

- Remove the manual `p300-report-count` output from the P300 PL/SQL region.
- Leave table rendering, filter input, and enter/edit/delete actions unchanged.

## Affected Pages

- P300 only

## Affected DB Objects

- None

## Verification

- `bash tools/apex_ai.sh import-page file-management-platform@test 300 300` passed.
- Authenticated browser verification confirmed P300 still shows table rows such as `PLT-001 / 销售工具集`.
- Authenticated browser verification confirmed the page body no longer contains `1 - 3`.
- Evidence screenshot: `output/playwright/f300-p300-row-count-removed.png`.

## Status

- Status: DONE

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: CONFIRM
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Wait for developer confirmation of impacted pages and DB objects.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: CONFIRM
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Wait for developer confirmation of impacted pages and DB objects.
- Resume Notes: Authoritative state: ai-context.json

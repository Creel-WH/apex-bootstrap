# Fix P133 P156 URL And P1 Browser Baseline

## Request

- Fix the two issues found during the 2026-07-01 permission current-state test:
  - `P133 -> P156` permission/settings URL loses `P156_FILE_ID`
  - `docs/browser-functional.json` homepage baseline is not stable against the current `P1` runtime structure

## Scope

- Environment: `file-management-platform@test`
- App: `f299`
- Impacted pages:
  - `P1`
  - `P133`
  - `P156`
- Impacted assets:
  - `docs/browser-functional.json`
  - `static/js/p133-file-library.js`
  - `page_00133.sql`

## Plan

1. Make `P133` action URL generation accept explicit selected object ids.
2. Update the P133 client action flow so permission/share navigation passes the selected file id explicitly instead of relying only on session state.
3. Replace fragile homepage browser assertions with stable post-login selectors.
4. Re-run focused verification for the repaired paths.

## Current Status

- Status: TESTED
- Open Issues:
  - Runtime import was not executed in this pass because the current worktree contains many unrelated changes, and deploying the full app to carry the static JS change would risk shipping unrelated assets.
- Next Action:
  - Import the repaired app assets in an isolated change set, then rerun the `P133 -> P156` runtime probe and homepage browser-functional flow.

## Implementation Notes

- `P133_GET_ACTION_URL` now accepts explicit `g_x02 / g_x03` payloads for selected object ids and uses them before falling back to page session state.
- `static/js/p133-file-library.js` now passes explicit `fileId / fileIds` for `PREVIEW / RENAME / MOVE / PERMISSION`.
- `docs/browser-functional.json` no longer treats `#p1_tabs_region` as the homepage success marker; it now waits on stable file-grid selectors.

## Validation

- Export verification passed:
  - `page_00133.sql` contains explicit `g_x02 / g_x03` handling and uses `v_file_id / v_file_ids` in generated URLs.
  - `static_js_p133_file_library_js.sql` decodes to the updated JS payload with explicit `x02 / x03` submission.
  - `browser-functional.json` no longer references `#p1_tabs_region`.

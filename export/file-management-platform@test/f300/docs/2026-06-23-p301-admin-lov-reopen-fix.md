# Fix P301 Admin Popup LOV Reopen Failure

- Date: 2026-06-23
- Environment: `file-management-platform@test`
- App: `f300`
- Goal: fix the `P301` business administrator multi-select Popup LOV so it still opens and supports selecting users after the modal is closed and reopened from `P300`.

## Problem

- In the `P300 -> P301` edit flow, the administrator multi-select field works the first time.
- After closing the modal and reopening it, the administrator dropdown can become non-interactive and cannot open again.
- The screenshot shows browser console noise, but the root cause still needs to be isolated in the `P300` launcher and `P301_ADMIN_IDS` runtime behavior.

## Initial Scope

- Pages:
  - `P300`
  - `P301`
- DB objects:
  - none expected unless the investigation proves page-state reload depends on persisted data changes

## Analysis Plan

1. Inspect the `P300` dialog launcher and page-cache handling.
2. Inspect the `P301_ADMIN_IDS` item definition plus custom CSS/JS that changes Popup LOV runtime DOM behavior.
3. Reproduce the first-open / second-open edit flow and identify the actual blocking error.
4. Apply the smallest fix that preserves the current modal UI and multi-select behavior.
5. Re-run the dialog flow and update page docs if behavior changes.

## Findings

- The screenshot console message `Permissions policy violation: unload is not allowed in this document` did not reproduce as a page-level functional error in the standard browser validation path, so it was treated as host-shell noise rather than the primary root cause.
- The highest-risk implementation detail was the deep custom CSS applied to `P301_ADMIN_IDS`, especially the combination of:
  - absolute positioning for the Popup LOV trigger button
  - `:has(input)`-based list item targeting
  - layout overrides on the internal APEX multi-value DOM nodes
- On reopen, APEX injects additional internal helper nodes into the Popup LOV wrapper. The prior styling was too dependent on the exact first-open DOM shape, which made the control fragile across repeated modal initialization.

## Result

- Reworked the `P301_ADMIN_IDS` custom CSS to style the control through a steadier outer flex layout instead of relying on absolute-positioned button overlays and `:has(...)` matching.
- Kept the white field shell, tag-style selected users, and right-side trigger-button presentation.
- No `P300` JavaScript or DB change was required for the final fix.

## Verification

- Imported `P301` to `file-management-platform@test`:
  - `import-page file-management-platform@test 300 301`
- Live browser validation on 2026-06-23:
  - opened `P300` first-row edit dialog
  - opened the business administrator Popup LOV successfully
  - closed the dialog
  - reopened the same edit dialog
  - opened the business administrator Popup LOV successfully again
  - confirmed no new runtime console entries were emitted during the validated flow

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

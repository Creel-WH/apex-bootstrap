# P156 2026-06-29 Permission Model

## Current Change

- Permission management now uses the selected `FMP_FILE` object for both root and inner folders.
- The page no longer branches into a separate `FMP_SCOPE.reference_type = 'SYSTEM'` path for root-level permission save/reset.
- Save and reset authorization are decided by `fmp_is_file_manager(:P156_FILE_ID, ...)`.
- Display still resolves the effective inherited FILE permission scope, so inherited folder permissions remain visible without introducing a second SYSTEM-scope management path.

## Affected Runtime Objects

- Page items: `P156_FILE_ID`, `P156_ROOT_FOLDER_ID`, `P156_PARENT_FOLDER_ID`.
- Processes: permission bootstrap, `GET_SCOPES`, `SAVE_SCOPES`, `RESET_SCOPES`.
- Database helper: `fmp_is_file_manager`.

# P133 2026-06-29 Permission Model

## Current Change

- Root level now loads through a real `FMP_FILE` folder whose `file_name` matches the current `FMP_SYSTEM.system_name`.
- `P133_PARENT_FOLDER_ID` is set to that root folder on entry, so root and inner levels use the same current-folder model.
- Create-folder, upload, drag-sort, and directory-level controls read the current folder manage result from `P133_DISPLAY`.
- Row actions use `fmp_is_file_manager(file_id, ...)` for the selected object, so selected-file permissions are calculated per row and do not reuse the current folder result.
- `P133_ROOT_DISPLAY` and `P133_ROLE_CODE` were removed; root and child folders now share `P133_DISPLAY` as the current-folder manage result.
- `P133_PAGE` was removed; P133 navigation uses direct button/dynamic-action URL generation through `P133_GET_ACTION_URL`.
- Breadcrumbs render directly from `P133_BREADCRUMB_JSON`; no extra virtual `文件库` level is prepended above the sub-platform root folder.
- Folder-derived items are still used: `P133_FILE_LEVEL` drives root/current-level checks, `P133_UP_FOLDER_ID` drives the up-folder button, and `P133_BREADCRUMB_JSON` drives breadcrumb rendering. P133 now calls `P133_SYNC_FOLDER_STATE` after recalculating these values so APEX server session state follows the browser-side values.

## Affected Runtime Objects

- Page items: `P133_ROOT_FOLDER_ID`, `P133_PARENT_FOLDER_ID`, `P133_DISPLAY`, `P133_FILE_ID`, `P133_FILE_TYPE`, `P133_FILE_LEVEL`, `P133_FILE_PATH`, `P133_FILE_NAME`, `P133_UP_FOLDER_ID`, `P133_BREADCRUMB_JSON`, `P133_FILE_IDS`, `P133_FILE_TYPES`, `P133_SORT_BY`.
- Regions/processes: `content`, `P133_SYNC_FOLDER_STATE`, `P133_DELETE_SELECTION`, `SAVE_FILE_LIBRARY_ORDER`.
- Database helper: `fmp_is_file_manager`.

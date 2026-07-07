# P133 2026-07-06 根目录字段切换

## 变更

- `P133_INIT_ROOT_FOLDER` 与 `P133_RESOLVE_ROOT_FOLDER` 改为优先读取 `FMP_SYSTEM.ROOT_FOLDER_FILE_ID`。
- 页面不再依赖“根目录名称 = 子平台名称”来确定当前子平台根目录。
- 当 `ROOT_FOLDER_FILE_ID` 为空时，页面仅按当前系统下首个顶级文件夹兜底。

## 目的

- 修复根目录名称与子平台名称不一致时，P133 无数据、按钮不显示、面包屑不完整的问题。

## 关联对象

- `db/tables/fmp_system.sql`
- `db/data/2026-07-06_backfill_fmp_system_root_folder_file_id.sql`
- `apex/f299/application/pages/page_00133.sql`

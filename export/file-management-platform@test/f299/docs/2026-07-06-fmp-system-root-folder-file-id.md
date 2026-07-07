# 2026-07-06 FMP_SYSTEM 根目录字段落地

## 背景

- `P133` 之前通过 `fmp_file.file_name = fmp_system.system_name` 推断子平台根目录。
- 当根目录名称与子平台名称不一致时，P133 会同时出现无数据、按钮不展示、面包屑只剩“文件库”等问题。

## 本次调整

- 在 `FMP_SYSTEM` 新增 `ROOT_FOLDER_FILE_ID` 字段，显式记录子平台根目录 `FILE_ID`。
- `P133_INIT_ROOT_FOLDER` 与 `P133_RESOLVE_ROOT_FOLDER` 优先读取 `FMP_SYSTEM.ROOT_FOLDER_FILE_ID`。
- 若该字段尚未回填，P133 仍会在当前系统下按“首个顶级文件夹”兜底，不再依赖名称一致。
- `P227` 子平台名称保存时，只同步 `ROOT_FOLDER_FILE_ID` 指向的根目录名称及其子孙层级路径。
- `004_converge_fmp_system_root_folders.sql` 与新增回填脚本会补写 `FMP_SYSTEM.ROOT_FOLDER_FILE_ID`。

## 影响对象

- `db/tables/fmp_system.sql`
- `db/data/004_converge_fmp_system_root_folders.sql`
- `db/data/2026-07-06_backfill_fmp_system_root_folder_file_id.sql`
- `apex/f299/application/pages/page_00133.sql`
- `apex/f299/application/pages/page_00227.sql`

## 风险与假设

- 当前 `FMP_SYSTEM` 表没有 `tenant_id`，因此 `ROOT_FOLDER_FILE_ID` 默认按单租户主根目录使用。
- 如果后续同一环境存在多个租户且每个租户根目录 `file_id` 不同，需要再明确跨租户建模方案。

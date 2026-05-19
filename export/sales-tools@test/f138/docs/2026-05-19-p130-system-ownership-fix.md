# 2026-05-19 P130 文件库查询修复与系统归属补齐

## 需求目标

1. 修复 130 页文件库查询报错问题。
2. 为文件库、文件夹、文件相关表补齐系统归属字段。
3. 历史文件库、文件夹、文件数据统一归属到“销售工具集”业务系统。
4. 文件库、文件夹、文件新增时默认写入当前用户所在业务系统（`SYSTEM_ID`）。

## 影响范围

- APEX 页面：
  - `P130`（文件库查询）
  - `P131`（新增文件库根目录）
- 数据库对象：
  - `STS_FOLDER`
  - `STS_FILE`
  - `STS_FOLDER_LIB`
  - `STS_SYSTEM`
  - `STS_FOLDER_BI_SET_SYSTEM_ID`（触发器）
  - `STS_FILE_BI_SET_SYSTEM_ID`（触发器）
  - 数据脚本：`db/data/005_file_scope_system_ownership.sql`

## 实施说明

- `STS_FOLDER`、`STS_FILE` 增加 `SYSTEM_ID` 字段（`NUMBER(20,0)`）。
- `P130` 查询增加系统维度过滤，并优化层级统计查询的连接方式。
- 为 `STS_FOLDER`、`STS_FILE` 增加插入触发器：当新增记录未显式传入 `SYSTEM_ID` 时，自动从上级对象继承系统归属（文件库/父文件夹/根文件夹），缺省回退 `1`。
- 历史数据迁移脚本将所有既有 `STS_FOLDER_LIB/STS_FOLDER/STS_FILE` 数据统一更新为“销售工具集”系统归属。

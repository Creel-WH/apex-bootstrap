# f138 P133 `STS_FILE` 字段同步
## 基本信息
- 日期: `2026-06-05`
- 环境: `sales-tools@test`
- 应用: `f138`
- 页面: `P133`

## 问题
- `P133` 当前已依赖 `STS_FILE.ROOT_FOLDER_ID`、`STS_FILE.SORT_NUM`、`STS_FILE.NEED_SYNC`
- 目标环境数据库未同步这些字段时，页面查询会直接报列不存在，导致页面无法显示

## 范围
- 页面: `P133`
- 数据库对象: `STS_FILE`、`TRG_STS_FILE_SORT_NUM`

## 修复策略
- 提供一份幂等 SQL 补丁
- 补齐 `STS_FILE` 缺失字段与约束
- 同步 `TRG_STS_FILE_SORT_NUM`
- 先在测试库验证脚本可执行，再用于生产环境补丁

## 执行结果
- 测试库执行成功：
  - `ROOT_FOLDER_ID / NEED_SYNC / SORT_NUM` 字段状态正确
  - `TRG_STS_FILE_SORT_NUM` 已启用
- 生产库执行成功：
  - 通过 APEX Builder `SQL Workshop -> SQL Scripts`
  - 执行脚本 `p133_sts_file_prod_patch`
  - 结果：
    - `ALTER TABLE STS_FILE ADD CONSTRAINT STS_FILE_NEED_SYNC_CK ...` 成功
    - `CREATE OR REPLACE TRIGGER TRG_STS_FILE_SORT_NUM` 成功
    - `ALTER TRIGGER TRG_STS_FILE_SORT_NUM ENABLE` 成功

## 相关文件
- `export/sales-tools@test/f138/db/data/2026-06-05_sync_sts_file_columns_for_p133.sql`
- `export/sales-tools@test/f138/db/triggers/trg_sts_file_sort_num.sql`

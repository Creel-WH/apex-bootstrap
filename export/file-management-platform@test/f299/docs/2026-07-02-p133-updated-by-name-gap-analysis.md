# 2026-07-02 f299 P133 更新人名称缺失分析

## 基本信息

- 环境: `file-management-platform@test`
- 应用: `f299`
- 页面: `P133`
- 任务类型: `discussion-only`

## 问题描述

- `P133` 列表里很多历史文件没有正确显示“更新人”名称。
- 新创建的文件虽然有 `created_by / updated_by` 数值，但页面上仍可能只显示 ID，或无法显示对应的用户姓名。

## 本次分析边界

- 只分析 `P133` 的“更新人”显示链路与相关审计字段来源。
- 不包含权限模型修复。
- 不包含页面执行与数据库变更。

## 受影响范围

### 页面

- `P133`

### 数据库对象

- `FMP_FILE`
- `FMP_USER`
- `BASIC_USER`
- `fmp_create_folder_from_dialog_pro`
- `fmp_upload_files_from_dialog_pro`
- `004_converge_fmp_system_root_folders.sql`

## 现状结论

### 1. P133 显示层只依赖 `BASIC_USER`

`P133` 当前“更新人”列使用：

- `NVL(U.NAME, TO_CHAR(NVL(A.UPDATED_BY, A.CREATED_BY))) AS UPDATED_BY`
- `LEFT JOIN BASIC_USER U ON U.USER_ID = NVL(A.UPDATED_BY, A.CREATED_BY)`

这意味着：

- 如果 `FMP_FILE.updated_by / created_by` 对应的人只存在于 `FMP_USER`，而 `BASIC_USER` 没有对应行，页面就只能回退显示数字 ID。
- 新文件即使写入了合法的 `p_mpf_user_id`，也仍可能因为 `BASIC_USER` 无匹配而显示不出姓名。

### 2. 新建文件链路本身会写审计用户 ID

`fmp_create_folder_from_dialog_pro` 和 `fmp_upload_files_from_dialog_pro` 在插入 `FMP_FILE` 时都写入了：

- `created_by = p_mpf_user_id`
- 未显式写 `updated_by`，因此展示层会回退到 `created_by`

这说明“新建文件无名称”主要不是插入时没写人，而是显示时没有把该 ID 正确解析成姓名。

### 3. 历史系统根目录收敛脚本会制造无法映射的人

`004_converge_fmp_system_root_folders.sql` 中多处把 `created_by / updated_by` 回填为 `-1`，例如：

- 新建根目录时直接写 `created_by = -1`、`updated_by = -1`
- 后续更新中用 `NVL(updated_by, -1)`、`NVL(created_by, -1)`

这会产生一批天然无法映射到真实用户姓名的历史记录。

## 根因拆分

本问题至少有两类根因：

### A. 展示层根因

- `P133` 只连 `BASIC_USER`
- 没有把 `FMP_USER.user_name` 作为同级或回退名称来源

### B. 数据层根因

- 部分历史数据的 `created_by / updated_by` 为 `-1`
- 部分历史数据的 `created_by / updated_by` 可能对应 `FMP_USER.user_id`，但该用户在 `BASIC_USER` 中不存在

## 建议处理方案

### 方案一：先修展示链路，再补历史数据

这是建议优先采用的方案。

1. 调整 `P133` 查询
   - 在 `BASIC_USER` 之外补充 `FMP_USER` 关联
   - 展示逻辑改为优先 `BASIC_USER.name`，其次 `FMP_USER.user_name`，最后才回退 ID
2. 数据盘点
   - 统计 `FMP_FILE` 中 `updated_by / created_by` 为 `-1` 的记录数
   - 统计 `FMP_FILE` 中能命中 `FMP_USER` 但命不中 `BASIC_USER` 的记录数
3. 历史数据修复
   - 对确实能推导责任人的记录回填真实用户
   - 对无法追溯的系统初始化根目录，保留为系统占位值，但展示为固定文案，例如“系统初始化”

优点：

- 改动最小，能立即解决“新建文件无名称”的主要感知问题
- 历史坏数据可以分批清理，不阻塞页面先恢复可用

风险：

- 如果直接只改展示，不梳理 `-1` 历史数据，仍会有少量记录显示占位文案

### 方案二：只修数据，不改页面 SQL

不建议单独采用。

做法：

- 批量把 `FMP_FILE.created_by / updated_by` 修到 `BASIC_USER` 可识别的人

问题：

- 代价高
- 对无法追溯来源的 `-1` 数据无解
- 后续若再出现“仅在 `FMP_USER` 存在，不在 `BASIC_USER` 存在”的用户，问题仍会复发

## 推荐落地顺序

1. 修 `P133` 展示 SQL
   - 验证: 新建文件/文件夹后，“更新人”应直接显示姓名
2. 增加历史数据盘点 SQL
   - 验证: 输出 `-1`、仅 `FMP_USER` 命中、双表均未命中三类数量
3. 编写一次性数据修复脚本
   - 验证: 盘点数量下降，页面抽样显示正确
4. 约束后续初始化脚本
   - 验证: 新增系统根目录类脚本不再默认写 `-1`，或写入固定可识别占位用户

## 建议验证口径

- 用现有账号在 `P133` 新建文件夹，确认“更新人”显示为真实姓名
- 上传新文件，确认“更新人”显示为真实姓名
- 抽样历史根目录/早期文件，确认：
  - 可追溯的显示真实姓名
  - 不可追溯的显示固定占位文案，而不是裸 `-1`

## 待执行改动

- `export/file-management-platform@test/f299/apex/f299/application/pages/page_00133.sql`
- 可能新增一个一次性数据修复脚本到 `export/file-management-platform@test/f299/db/data/`

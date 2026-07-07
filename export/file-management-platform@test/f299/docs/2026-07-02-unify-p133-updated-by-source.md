# 2026-07-02 统一 P133 更新人 ID 来源

## 基本信息

- 环境: `file-management-platform@test`
- 应用: `f299`
- 页面: `P133`
- 状态: `CONFIRM`

## 需求

- 统一 `P133` 相关文件数据里“更新人 ID”的来源口径，避免同一页面同时出现真实用户 ID、无效占位值和无法映射姓名的情况。

## 当前分析

### 页面显示口径

- `P133` 当前显示列取值为：
  - `NVL(U.NAME, TO_CHAR(NVL(A.UPDATED_BY, A.CREATED_BY)))`
- 当前只关联 `BASIC_USER`，未把 `FMP_USER.user_name` 纳入名称解析回退。

### 当前写入口径

- 新建文件夹:
  - `fmp_create_folder_from_dialog_pro`
  - `created_by = p_mpf_user_id`
- 上传文件:
  - `fmp_upload_files_from_dialog_pro`
  - `created_by = p_mpf_user_id`
- 删除:
  - `P133_DELETE_SELECTION`
  - `updated_by = :MPF_USER_ID`
- 移动:
  - `fmp_transfer_files_to_folder_pro`
  - 多处 `updated_by = p_mpf_user_id`
- 权限页保存:
  - `P156`
  - 多处 `updated_by = :MPF_USER_ID`
- 登录同步:
  - `fmp_login_success`
  - `updated_by = v_user_id`

### 已发现的不统一来源

- 历史根目录收敛脚本 `004_converge_fmp_system_root_folders.sql`
  - 多处把 `created_by / updated_by` 回填为 `-1`
- 页面显示层默认只从 `BASIC_USER` 取名字
  - 即使 `updated_by` 是合法 `FMP_USER.user_id`，也可能显示不出姓名

## 初步口径建议

- `FMP_FILE.created_by / updated_by` 统一保存 `MPF_USER_ID`，即 `FMP_USER.user_id`
- 不再把 `ext_user_id / union_id / job_number / name` 写入 `created_by / updated_by`
- 历史 `-1` 数据本次不处理

## 2026-07-02 确认结果

- `MPF_USER_ID` 来自登录过程 `fmp_login_success`
- 会话写入逻辑为 `apex_util.set_session_state('MPF_USER_ID', TO_CHAR(v_user_id))`
- 其中 `v_user_id` 来源于 `FMP_USER.user_id`
- 因此 `MPF_USER_ID` 不是 `BASIC_USER.user_id`

## 本次实现

- 保持 `P133` 相关新增、上传、移动、删除链路继续写入 `MPF_USER_ID`
- 调整 `P133` “更新人”显示逻辑：
  - 先取 `BASIC_USER.name`
  - 取不到时回退 `FMP_USER.user_name`
  - 最后才回退显示 ID

## 实施结果

- `P133` Interactive Grid 查询已补充 `FMP_USER` 关联
- `P133` Cards 查询已补充 `FMP_USER` 关联
- `P133` 两套查询的 `UPDATED_BY` 显示逻辑已统一为：
  - `BASIC_USER.name`
  - `FMP_USER.user_name`
  - 审计 ID
- `P133` 删除链路仍使用 `:MPF_USER_ID`
- `fmp_transfer_files_to_folder_pro` 仍使用 `p_mpf_user_id`
- 新建文件夹与上传文件继续以 `p_mpf_user_id` 写入 `created_by`

## 本次未改动

- 历史 `-1` 数据不处理
- `P1` 等其他页面的“更新人”显示不在本次范围内

## 2026-07-02 补充修复

- 运行时验证发现，`P133` 页面 SQL 已生效，但部分文件记录仍保存旧口径审计 ID，例如截图中的 `717450047119430`
- 库内核查确认该旧值对应 `FMP_USER` 中 `ADMIN` 的旧 `ext_user_id / union_id`，当前 `MPF_USER_ID` 为 `161`
- 已新增并执行一次性修复脚本：
  - `export/file-management-platform@test/f299/db/data/2026-07-02_normalize_fmp_file_audit_user_ids.sql`
- 修复策略：
  - 将 `FMP_FILE.created_by / updated_by` 中仍保存旧 `ext_user_id / union_id` 的记录统一回填为 `FMP_USER.user_id`
  - 不处理 `-1`
- 执行结果：
  - `created_by` 更新 `16543` 行
  - `updated_by` 更新 `12571` 行
  - 截图旧值 `717450047119430` 在 `FMP_FILE` 中剩余 `0` 行

## 验证状态

- 已完成静态核对
- 未执行 APEX 导入
- 未执行浏览器 functional validation
- 导入后建议最少验证：
  - `P133` 新建文件夹后“更新人”显示
  - `P133` 上传文件后“更新人”显示
  - `P133` 移动文件后“更新人”显示
  - `P133` 删除文件后“更新人”显示

## 影响范围

### 页面

- `P133`
- `P156` 只需确认是否继续沿用同一审计口径

### 数据库对象

- `FMP_FILE`
- `fmp_create_folder_from_dialog_pro`
- `fmp_upload_files_from_dialog_pro`
- `fmp_transfer_files_to_folder_pro`
- `004_converge_fmp_system_root_folders.sql`

## 拟实施方案

1. 固化审计口径
   - 统一约定 `created_by / updated_by` 只写 `FMP_USER.user_id`
   - 验证: 代码写入点不再出现 `-1` 或其他身份口径混入
2. 修 `P133` 显示链路
   - 先按 `BASIC_USER.name` 取名，再回退 `FMP_USER.user_name`，最后才显示 ID/占位文案
   - 验证: 新建文件、移动、删除后的“更新人”都能显示姓名
3. 补一次性历史数据修复脚本
   - 优先把能映射到 `FMP_USER.user_id` 的记录修正
   - 对无法追溯责任人的系统初始化数据给出稳定占位策略
   - 验证: `P133` 抽样历史数据不再出现大面积裸 ID 或 `-1`

## 风险

- 根目录初始化历史数据未必都能还原真实责任人
- 如果只改页面不修历史数据，仍会残留部分占位记录
- 如果直接把所有 `-1` 硬改成某个固定用户，会污染审计语义

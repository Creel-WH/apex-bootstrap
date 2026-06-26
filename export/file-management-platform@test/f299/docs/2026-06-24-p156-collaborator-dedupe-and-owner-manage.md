## 背景

- 页面：`P156 权限设置`
- 需求：
  1. 修复协助者重复展示问题。
  2. 文件创建人默认设为该文件的可管理人员，具备可管理权限。

## 影响范围

- 页面：`P156`
- 页面：`P131`
- 页面：`P134`
- 过程：`fmp_upload_files_from_dialog_pro`
- 对象：`FMP_SCOPE`

## 根因分析

- `P156` 协助者列表由系统级固定管理人 `fixed_scope` 与文件级权限 `file_scope` 合并返回。
- 现有去重只按原始 `range_type + range_id` 判断；同一用户可能同时以不同 ID 口径存在于系统权限和文件权限中，因此会被重复展示。
- `P131/P134` 新建文件夹链路里仍存在旧的 `STS_SCOPE` 写入，且未统一补充“创建人默认可管理”。
- `P136` 上传流程虽然已切到 `FMP_SCOPE`，但同样未补充“上传人默认可管理”。

## 修复方案

- `P156`：
  - 为协助者生成按真实身份归一的 `collaborator_key`。
  - 合并后按 `collaborator_key` 去重，优先保留文件级显式权限，再保留继承/固定权限。
- `P131`：
  - 根层新建文件夹写入从 `STS_SCOPE` 切换为 `FMP_SCOPE`，并保持创建人默认 `MANAGE`。
- `P134`：
  - 权限复制从 `STS_SCOPE` 改为 `FMP_SCOPE`。
  - 新建文件夹后，若创建人尚无 `MANAGE` 权限，则补一条 `USER` 维度的 `MANAGE` 记录。
- `P136`：
  - 上传文件后，若上传人尚无 `MANAGE` 权限，则补一条 `USER` 维度的 `MANAGE` 记录。

## 实施结果

- `P156`
  - 在 `P156_PERMISSION_BOOTSTRAP` 与 `P156_PERMISSION_GET` 中新增 `FMP_USER` 映射。
  - `USER` 类型协助者优先用 `FMP_USER.ext_user_id` 作为 `collaborator_key`，并补充 `FMP_USER.user_name` 作为展示名回退。
  - 这样可把文件级按姓名存储的协助者与系统级按外部用户 ID 存储的协助者归并到同一身份键。
- `P131`
  - 根层新建文件夹时，创建人的默认 `MANAGE` 权限改为优先写入 `FMP_USER.ext_user_id`，回退到 `DIAN_USER_ID` / `MPF_USER_ID`。
- `P134`
  - `fmp_create_folder_from_dialog_pro` 中创建人默认 `MANAGE` 权限同样统一为优先写入 `FMP_USER.ext_user_id`。
- `P136`
  - `fmp_upload_files_from_dialog_pro` 中上传人默认 `MANAGE` 权限同样统一为优先写入 `FMP_USER.ext_user_id`。

## 验证

- 已重新导入：
  - `P131`
  - `P156`
- 已重新编译：
  - `fmp_create_folder_from_dialog_pro`
  - `fmp_upload_files_from_dialog_pro`
- 样本映射验证：
  - 文件级样本 `reference_id = 40284` 中存在 `RANGE_ID = 王家豪`
  - 该记录可映射到 `FMP_USER.ext_user_id = 321297336390149`
  - 系统级 `SYSTEM 42` 的 `MANAGE` 权限中也存在 `RANGE_ID = 321297336390149`
  - 因此 `P156` 新逻辑会将两者归并为同一协助者
- 创建人默认权限验证：
  - 通过 `fmp_create_folder_from_dialog_pro` 创建临时文件夹 `codex_p156_owner_manage_check`
  - 新生成的 `FMP_SCOPE` 记录为：
    - `RID=321297336390149`
    - `UID=321297336390149`
    - `SUID=321297336390149`
    - `PT=MANAGE`
  - 验证完成后已删除临时文件夹及对应 `FMP_SCOPE` 记录

## 说明

- 浏览器自动化已验证到运行时登录页与 `P156` 页面入口可达，但本地自动化在该环境下遇到会话登录壳 / 二维码切换流程，未完成最终的弹窗 UI 级截图校验。
- 本次结论主要基于页面导入成功、对象编译成功以及目标数据链路验证。

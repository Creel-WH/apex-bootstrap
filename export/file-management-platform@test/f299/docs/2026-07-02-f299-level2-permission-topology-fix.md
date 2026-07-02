# 2026-07-02 f299 二级文件夹权限拓扑修复

## 背景

- `file_level=1` 是子平台规范化后的平台根目录。
- 用户实际感知的“顶级业务目录”是 `file_level=2`。
- 现网实现仍把 `file_level=2` 当作 `file_level=1` 的继承子级，导致：
  - `P156` 出现“继承自上级 / 已限制权限 / 恢复继承”语义；
  - `file_level=1` 改权限会继续联动到 `file_level=2`；
  - `file_level=1` 仍允许上传文件。

## 目标

- `file_level=1`
  - 禁止上传文件；
  - 允许新建文件夹；
  - 新建出的 `file_level=2` 文件夹仅做一次权限默认赋值。
- `file_level=2`
  - 作为业务顶级权限对象；
  - 允许直接修改权限；
  - 不显示“已限制权限 / 恢复继承 / 继承自上级”语义；
  - 与 `file_level=1` 不再维持持续继承关系。
- `file_level>=3`
  - 继续保留现有继承、降权、恢复继承模型。

## 变更范围

- 页面：
  - `P133`
  - `P156`
- DB：
  - `fmp_upload_files_from_dialog_pro`
  - `2026-07-02_materialize_level2_folder_permissions.sql`

## 实现要点

1. `P156`
   - 按 `file_level<=2` 识别业务顶级层。
   - 仅 `file_level>=3` 才进入“继承 / 降权 / 恢复继承”语义。
   - 保存后立即重新拉取权限 JSON，避免弹窗展示旧状态。
2. `P133`
   - 上传按钮除管理权限外，额外要求当前目录 `file_level<>1`。
   - 保留 `file_level=1` 的新建文件夹能力。
3. 后端传播
   - `P156_PERMISSION_SAVE / RESET` 的级联传播在 `file_level=1 -> file_level=2` 处停止。
   - `file_level=2` 保存权限后按独立权限基线处理，不进入“已限制权限”状态。
4. 数据修正
   - 为历史上缺少本地 `FMP_SCOPE` 的 `file_level=2` 文件夹补齐初始化权限，避免断开继承后出现空权限对象。

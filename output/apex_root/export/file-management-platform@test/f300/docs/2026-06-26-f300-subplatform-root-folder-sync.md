# F300 Sub-Platform Root Folder Sync

- Original Request: 当前仓库先做 Git 备份，再在独立分支上实现 f300 子平台创建、修改、删除时与顶级文件夹的同步。
- AI Summary: 保留 `FMP_SYSTEM`，按“子平台 + 顶级文件夹同权”模型，在 `P300/P301` 上同步维护 `FMP_FILE` 根对象及其 `FILE` 级 `MANAGE` 权限。
- Business Goal: 子平台变更后，文件库顶级根对象自动与子平台名称、备注和业务管理员保持一致；子平台删除后，相关文件对象与文件级权限同步软删，便于后续 `P133` 统一按文件对象权限收敛。
- Acceptance Criteria:
  1. 新建子平台时自动创建对应顶级文件夹。
  2. 修改子平台管理员或备注时，对应顶级文件夹同步更新。
  3. 顶级文件夹的 `MANAGE` 用户权限与子平台后台维护的业务管理员一致。
  4. 删除子平台时，同步软删该子平台下的 `FMP_FILE` 记录并清理对应 `FILE` 级权限。

## Scope

- Env: `file-management-platform@test`
- App: `f300`
- Impacted Pages: `P300`, `P301`
- Impacted DB Objects:
  - `FMP_SYSTEM`
  - `FMP_FILE`
  - `FMP_SCOPE`
  - `fmp_sync_system_root_folder_pro`
  - `fmp_delete_system_root_folder_pro`

## Notes

- 根对象继续保留在 `FMP_FILE` 中，`FMP_SYSTEM` 不删除。
- 顶级文件夹按 `SYSTEM_ID + PARENT_FOLDER_ID is null + FILE_TYPE = 'FOLDER'` 定位。
- 当前方案覆盖子平台创建、修改、删除与同步根对象的最小链路，不额外扩展依赖校验。

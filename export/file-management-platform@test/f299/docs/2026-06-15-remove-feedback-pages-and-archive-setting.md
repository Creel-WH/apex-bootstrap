# Remove Feedback Pages And Archive Setting

## Request
- Original Request: 同步测试环境 f299 到仓库，清理已移除的反馈相关功能，并移除 P130 的“默认归档设置”按钮。
- Business Goal: 让仓库和测试环境中的 f299 都移除反馈模块残留入口与页面，只保留当前仍在使用的文件库功能。
- Acceptance Criteria:
  - 测试环境 `file-management-platform@test` 的 `f299` 已同步到仓库。
  - P130 不再显示“默认归档设置”按钮，也不再保留对应跳转。
  - P200-P204 及其相关应用层入口、列表、面包屑和安装引用已移除。
  - 不修改数据库对象。
  - 至少完成一次真实浏览器功能验证。

## Scope
- Environment: `file-management-platform@test`
- App: `f299`
- Impacted Pages: `P130`, `P200`, `P201`, `P202`, `P203`, `P204`
- Impacted DB Objects: `none`

## Implementation
- 先从测试环境重新导出 `f299` 到仓库。
- 删除反馈相关页面：
  - `page_00200.sql`
  - `page_00201.sql`
  - `page_00202.sql`
  - `page_00203.sql`
  - `page_00204.sql`
- 一并删除反馈预览测试页：
  - `page_00002.sql`
- 清理安装与共享组件引用：
  - `apex/f299/install.sql`
  - `application/shared_components/navigation/lists/主页.sql`
  - `application/shared_components/navigation/lists/导航菜单.sql`
  - `application/shared_components/navigation/breadcrumbs/面包屑.sql`
  - `application/shared_components/navigation/lists/更新反馈.sql`
  - `application/shared_components/user_interface/lovs/feedback_status（反馈状态）.sql`
- 移除 P130 中“默认归档设置”相关内容：
  - 操作列中的入口文案与点击动作
  - 页面按钮 `btn_pigeonhole`
  - 对应跳转到 `P140` 的 branch
- 将更新后的 `f299` 重新导入回测试环境。

## Verification
- Connectivity Check:
  - `tools/apex_ai.sh check file-management-platform@test`
- Export:
  - `tools/apex_ai.sh export-app file-management-platform@test 299 nodb`
- Deploy:
  - `tools/apex_ai.sh import-app file-management-platform@test 299`
- Browser Functional:
  - 登录 `https://apextest.jasolar.com/ords/uatapex23/f?p=299:130`
  - 进入文件库页后确认：
    - `#btn_pigeonhole` 数量为 `0`
    - “默认归档设置”文本数量为 `0`
- Evidence:
  - Screenshot: `output/playwright/f299-remove-feedback/p130-after-cleanup.png`
  - Result JSON: `output/playwright/f299-remove-feedback/result.json`

## Result
- 当前任务状态：`DONE`
- `f299` 已从测试环境同步到仓库并回导到测试环境。
- P130 的“默认归档设置”按钮已移除。
- P200-P204 及相关应用层残留已移除。
- 数据库对象未改动。

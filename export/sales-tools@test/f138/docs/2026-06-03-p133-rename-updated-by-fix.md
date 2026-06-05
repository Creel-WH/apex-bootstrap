# P133 Rename Updated By Fix

## Request
- Original Request: 修复 P133 页重命名后“更新人”无数据的问题。
- Environment: sales-tools@test
- App: f138
- Pages: P133, P135

## Scope
- Impacted Pages:
  - P133 文件库明细页
  - P135 重命名弹窗页（由 P133 的重命名操作跳转打开）
- Impacted DB Objects: None

## Root Cause
- P133 列表中文件夹行的“更新人/更新时间”只取递归子文件的最新操作人和时间；当文件夹自身被重命名但没有可用子文件更新记录时，P133 不回退显示文件夹自身的 `UPDATED_BY / UPDATE_DATE`。
- P135 重命名文件夹时，递归更新子级路径的 SQL 将子级 `UPDATED_BY` 写成 `-1`，该值无法通过 P133 的用户 LOV 显示为有效更新人。

## Design
- P133 文件夹行的“更新人/更新时间”优先显示文件夹自身的 `UPDATED_BY / UPDATE_DATE`，为空时再回退到递归子文件最新操作信息，最后回退到创建人/创建时间。
- P135 文件夹重命名递归更新子级路径时，使用当前登录用户 `:MPF_USER_ID` 写入 `UPDATED_BY`。

## Verification
- Added `tests/test_f138_p133_rename_updated_by.sh`.
- Verified the regression test fails before the fix and passes after the fix.

## Implementation Log
- Updated P133 report query folder `UPDATED_BY` fallback.
- Updated P133 report query folder `UPDATE_DATE` fallback.
- Updated P135 folder rename child-path update to stamp `UPDATED_BY = :MPF_USER_ID`.
- Import app sales-tools@test/f138 to sales-tools@test/f138: success

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

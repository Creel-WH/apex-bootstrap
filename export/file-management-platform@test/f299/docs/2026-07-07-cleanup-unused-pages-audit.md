# Cleanup Unused Pages Audit

## Request
- Original Request: 排查 f299 当前页面，按仅保留首页、文件库、回收站、管理后台四个入口及其可跳转页面/弹窗页的规则，先罗列页面分类供确认。
- AI Summary: 排查 f299 当前页面，按仅保留首页、文件库、回收站、管理后台四个入口及其可跳转页面/弹窗页的规则，先罗列页面分类供确认。
- Business Goal: 排查 f299 当前页面，按仅保留首页、文件库、回收站、管理后台四个入口及其可跳转页面/弹窗页的规则，先罗列页面分类供确认。
- Acceptance Criteria: 先输出页面分类清单；不删除任何页面；确认后再进入删除实施。

## Execution Plan
- Impacted Pages (AI Proposed): Candidate delete pages pending confirmation: P3,P8,P100,P102,P103,P104,P121,P122,P123,P124,P125,P126,P127,P131,P132,P139,P140,P141,P142,P143,P144,P145,P146,P147,P148,P150,P151,P152,P153,P154,P220,P221,P226,P230,P901,P902,P903,P904; keep P0,P1,P133,P134,P135,P136,P137,P149,P155,P156,P157,P227,P9999
- Impacted DB Objects (AI Proposed): None
- Confirmed Pages: 保留 P0,P1,P133,P134,P135,P136,P137,P149,P155,P156,P157,P221,P227,P9999；删除 P3,P8,P100,P102,P103,P104,P121,P122,P123,P124,P125,P126,P127,P131,P132,P139,P140,P141,P142,P143,P144,P145,P146,P147,P148,P150,P151,P152,P153,P154,P220,P226,P230,P901,P902,P903,P904
- Confirmed DB Objects: None
- Planned Steps:
  1. Confirm the keep/delete classification below.
  2. After confirmation, remove candidate pages from APEX export and live app.
  3. Clean shared navigation/breadcrumb/list references that would otherwise point to deleted pages.
  4. Browser-validate retained entry pages and retained dialog flows.

## Current Findings
- Scope rule used for this audit: keep the four visible entry pages `首页`, `文件库`, `回收站`, `管理后台`, plus pages/dialogs directly reachable from those pages.
- Runtime infrastructure pages should be retained even though they are not business menu pages:
  - `P0` global page
  - `P9999` login page
- Main side navigation currently points to:
  - `P1` 首页
  - `P133` 文件库
  - `P149` 回收站
  - `P227` 管理后台
- Direct page references found from retained entry pages:
  - `P1` -> `P137`, `P156`, `P157`
  - `P133` -> `P134`, `P135`, `P136`, `P137`, `P155`, `P156`
  - `P149` -> no direct page jump found
  - `P227` -> no direct page jump found
- Full machine-readable audit artifact: `output/page-cleanup-audit.json`

## Page Classification

### Keep: infrastructure
- `P0` 全局页
- `P9999` 登录页

### Keep: four requested entry pages
- `P1` 主页 / 首页
- `P133` 文件库
- `P149` 回收站
- `P227` 管理后台

### Keep: directly reachable from the four entry pages
- `P134` 新增文件夹, modal, reached from `P133`
- `P135` 重命名设置, modal, reached from `P133`
- `P136` 文件上传, modal, reached from `P133`
- `P137` 文件预览, normal page, reached from `P1` and `P133`
- `P155` 文件迁移-表单, modal, reached from `P133`
- `P156` 权限设置, modal, reached from `P1` and `P133`
- `P157` 关注分组, modal, reached from `P1`

### Candidate delete: not directly reachable from the four entry pages
- `P3` 系统使用说明
- `P8` 文件夹层级批量导入
- `P100` 文件库
- `P102` 创建分类
- `P103` 自定义分类
- `P104` 自定义分类排序
- `P121` 新增文件库
- `P122` 修改分类
- `P123` 文件库设置
- `P124` 文件管理
- `P125` 文件上传
- `P126` 文件预览
- `P127` 文件设置
- `P131` 新增文件库
- `P132` 重命名设置
- `P139` 文件夹及文件权限设置
- `P140` 默认归档设置
- `P141` 批量文件归档设置
- `P142` 文件归档设置
- `P143` 归档设置
- `P144` 更新文件
- `P145` 多语言设置
- `P146` 文件更新
- `P147` 原文件归档设置
- `P148` 历史版本
- `P150` 数据分析
- `P151` 数据导出
- `P152` 数据推送
- `P153` 推送人员名单表单
- `P154` 文件迁移
- `P220` 系统设置
- `P221` 页面管理
- `P226` 基础信息配置
- `P230` 操作日志
- `P901` 问题反馈列表
- `P902` 问题登记
- `P903` 问题截屏
- `P904` 删除截屏

### Additional cleanup needed if candidate pages are deleted
- Shared navigation list `操作手册与问题反馈` still references `P901` and `P902`.
- Breadcrumb `面包屑` still has an entry for `P901`.
- Local lists for deleted feature areas may also need removal after page deletion to prevent stale shared-component references.

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

- Import page 137 into file-management-platform@test/f299: success
## Verification
- Connectivity Check: `feature-start` quick checks passed.
- DB / APEX Check: Read-only source audit only; no deploy performed.
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
  - `output/page-cleanup-audit.json`
- Manual Verification Entry: Read-only audit only. No pages deleted yet.

## Current Status
- Status: CONFIRM
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PENDING, verification=PENDING, delivery=PENDING
- Open Issues: None
- Next Action: Wait for developer confirmation of keep/delete page classification.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PENDING, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: IMPLEMENTING
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PENDING, verification=PENDING, delivery=IN_PROGRESS
- Open Issues: None
- Next Action: Continue implementation and verification until DONE.
- Resume Notes: Authoritative state: ai-context.json

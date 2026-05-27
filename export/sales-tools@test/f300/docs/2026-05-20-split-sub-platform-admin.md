# 拆分分平台管理后台

## 目标

- 从文件管理平台应用 138 中拆出“分平台管理后台”，新建应用 300。
- 新应用只保留账号密码登录和 P300 分平台管理后台页面。
- 将内置 `ADMIN/admin260520` 系统管理员账号的数据脚本迁移到新应用目录。

## 范围

- APEX 应用：`sales-tools@test/f300`
- 保留页面：P0、P300、P9999
- 业务页面：P300 分平台管理后台
- 数据脚本：
  - `db/data/001_platform_admin_account.sql`
  - `db/data/002_sub_platform_semantics.sql`
  - `db/data/003_seed_sub_platform_data.sql`
  - `db/data/004_remove_business_admin_role.sql`

## 实施记录

- 以应用 138 的 split export 为基础创建 `f300`，并将应用元数据改为 `300 / 分平台管理后台 / SUB_PLATFORM_ADMIN`。
- 裁剪安装清单和页面目录，只保留全局页、登录页和 P300。
- 登录页移除钉钉扫码、钉钉授权、免登相关 JS/动态动作/on-demand 进程，仅保留账号密码登录。
- P300 的“进入”动作改为切换 `SYSTEM_ID` 后停留在 P300。
- P300 的业务管理员候选来源调整为未绑定 `STS_SCOPE(REFERENCE_TYPE='SYSTEM', PERMISSIONS_TYPE='MANAGE')` 的在职 `BASIC_USER`。
- 子平台基础数据和旧业务管理员角色清理脚本迁移到 `f300/db/data`，由新后台项目维护。

## 验证记录

- 已导入应用 300，并从 live 环境重新导出回 `f300`。
- SQL 验证：应用 300 只包含 P0、P300、P9999；导航菜单只保留一个 P300 入口。
- SQL 验证：`ADMIN` 是唯一启用的 `SYSTEM_ADMIN` 绑定账号，`BUSINESS_ADMIN` 已禁用。
- 浏览器验证：使用 `ADMIN/admin260520` 登录应用 300，P300 成功加载“销售工具集 / 储能资料库”两条数据，未发现 4xx/5xx 静态资源请求。

## Current Status
- Status: DONE
- Current Step: connectivity=PASSED, scope_confirmation=PASSED, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Optional manual browser-based final verification by developer.
- Resume Notes: Authoritative state: ai-context.json

## Current Status
- Status: CONFIRM
- Current Step: connectivity=PASSED, scope_confirmation=PENDING, implementation=PASSED, verification=PASSED, delivery=PASSED
- Open Issues: None
- Next Action: Wait for developer confirmation of impacted pages and DB objects.
- Resume Notes: Authoritative state: ai-context.json

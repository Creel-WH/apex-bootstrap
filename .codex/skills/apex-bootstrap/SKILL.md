---
name: apex-bootstrap
description: >-
  Use this skill for repository-native apex-bootstrap workflows such as
  environment init/check, SQL connectivity checks, feature-slice execution,
  app/page import-export or migration, and verification via gate or browser
  validation. First classify the request into one primary lane, read the minimum
  authoritative context, produce a structured confirmation, and wait for
  explicit approval before entering any executable envelope. Feature work may
  auto-continue only inside a confirmed feature execution envelope. Do not use
  this skill for generic Oracle, APEX, SQL, PL/SQL, or non-repository tasks.
compatibility: opencode
---

## 本 skill 的用途

本 skill 是 `apex-bootstrap` 仓库的标准工作流 router。

它的职责是：

1. 把请求路由到**唯一一个主 lane**
2. 读取最小必要的权威上下文
3. 在进入可执行 envelope 前产出结构化确认
4. 在已确认边界内调用仓库既有工作流，而不是发明新执行面

仓库执行仍以以下内容为准：

- `AGENTS.md`
- `README.md`
- `tools/apex_ai.sh`
- `ai-context.json`
- 相关 reference / docs / scripts

对于会触达数据库对象、PL/SQL、动态 SQL、APEX 页面 SQL 或页面过程的任务，
额外读取：

- `references/oracle-delivery-guardrails.md`
- `docs/conventions/oracle-delivery-guardrails.md`

## 何时使用本 skill

当用户请求明确属于本仓库执行模型时，使用本 skill，例如：

- 初始化、修复、检查环境
- 执行 SQL 连通性检查
- 启动或继续 feature slice
- 分析 impacted pages / impacted DB objects
- 导入、导出或迁移 app / page
- 执行 contract / db / deploy / browser / browser-functional / all 验证
- 判断当前任务是否适合继续、交付或达到 `DONE`

以下线索通常说明应进入本 skill：

- `tools/apex_ai.sh`
- `ai-context.json`
- `conn.json`
- `env_alias`
- `APP_ID`
- `app_code`
- `PAGE_ID`
- feature file
- gate
- browser smoke
- browser-functional

## 何时不要使用本 skill

以下情况不要进入本 skill：

- 通用 Oracle / APEX 产品问答
- 通用 SQL / PL/SQL 语法帮助
- 仓库工作流之外的 DBA 问题
- 与本仓库无关的 Bash / Python / Git / 一般编码任务
- 仅做概念讨论、可行性评估、方案比较，且没有仓库执行意图的请求
- 属于其他项目或其他仓库的请求

如果请求含糊不清，优先进入 `discussion-only`，而不是猜测后执行。

## 主工作流 lane 一览

一次只选一个主 lane：

| lane | 何时使用 | 最低边界 | 自动推进 |
| --- | --- | --- | --- |
| `environment setup/check` | 初始化、修复、检查环境 | `env_alias` | 否 |
| `feature slice` | 改变应用行为、继续 feature | `env_alias`、`APP_ID`、`app_code` | 仅限 confirmed feature envelope 内 |
| `import/export migration` | 在显式 source / target 间移动已有资产 | source boundary；target / `PAGE_ID` 视任务而定 | 否 |
| `verification / gate` | 证明或检查当前状态 | 对应目标边界 + `verification target` | 否 |
| `discussion-only` | 仅讨论、评估、修正边界 | 无 | 否 |

详细 lane 规则、required fields、失效条件与切换规则，以：

- `references/execution-contract.md`
- `references/task-routing.md`

为准。

## 执行闸门

命中本 skill **不等于** 获得执行授权。

默认执行循环只有 5 步：

1. 选择一个主 lane
2. 读取最小必要的权威上下文
3. 如果下一步会进入 executable lane，则生成结构化确认
4. 等待用户明确确认
5. 只在已确认 envelope 内执行

核心规则：

- 在进入任何 executable envelope 前，必须先确认
- 只读阅读与只读分析不需要先确认
- 用户修正边界不会自动授权执行
- 旧确认一旦失效，不得继续从旧状态执行
- `discussion-only` 始终保持只读

### feature execution envelope

`feature slice` 有两个确认门：

- **Gate A：execution-entry confirmation**
  - 确认当前 feature 请求的环境 / 应用边界，允许进入 feature workflow
- **Gate B：scope confirmation**
  - 按仓库协议确认 impacted pages 与 impacted DB objects，形成最终 feature execution envelope

只有在 confirmed feature execution envelope 内，AI 才能自动执行实现、导入/导出、DB gate、deploy gate、browser smoke、browser-functional、证据归档和状态更新，直到 `DONE` 或真实阻塞。

真实阻塞仅包括：

- 缺凭据或缺授权
- 破坏性 / 生产设置
- 必须由业务方决定的问题

详细定义见：

- `references/execution-contract.md`
- `docs/ai-execution-protocol.md`

## 默认读取顺序

只读取足够支撑当前安全动作的最小内容，不要先全仓库扫描。

默认优先顺序：

1. `AGENTS.md`
2. `ai-context.json`
3. `README.md`
4. lane 对应的最小 reference
5. 与已确认边界直接相关的 feature file / app docs / scripts

如果用户只修正了单个边界字段，只重读受影响的最小相关文件。

**读取仓库文件不授权执行。**

## lane 摘要

### `environment setup/check`

用于环境初始化、修复、检查、SQL 连通性验证。

- 先确认 `env_alias`
- 不无故扩展到其他环境
- 结果输出以就绪性、阻塞点、推荐下一步为主

### `feature slice`

用于新增、修改、继续应用行为。

- 先确认应用边界，再进入 feature workflow
- scope confirmation 仍按仓库协议单独成立
- 不把用户修正边界视为继续执行授权

### `import/export migration`

用于 source / target 明确的 app / page 迁移。

- 不推断缺失的 source / target
- 不把 migration 误当成 feature implementation
- 如迁移后要新增行为，重新路由到 `feature slice`

### `verification / gate`

用于 contract / db / deploy / browser / browser-functional / all 验证。

- 先确认验证目标与边界
- 不静默把单一验证目标扩成更宽范围
- 验证失败后若需要改实现，先重新路由

### `discussion-only`

用于讨论、评估、边界修正、尚未授权执行的阶段。

- 保持只读
- 指出缺失边界即可
- 后续若要执行，重新走结构化确认

## 用户可见确认的默认形态

默认只向用户展示：

- 我的理解
- 任务归类
- 目标边界
- 请确认或修正

默认不要展开：

- 拟执行脚本清单
- 副作用细节
- 数据库上下文推导
- 内部执行顺序

除非用户明确要求看执行细节。

详细格式见：

- `references/confirmation-protocol.md`
- 对应 lane 的 `references/*-templates.md`

## Reference map

需要细则时，按需读取：

- `references/execution-contract.md`
  - lane、required fields、execution envelope、失效条件、lane switch 的单一权威定义
- `references/confirmation-protocol.md`
  - 用户可见确认骨架与展示边界
- `references/task-routing.md`
  - 歧义路由、优先级、correction 处理
- `references/environment-templates.md`
  - environment lane 模板
- `references/feature-templates.md`
  - feature lane 模板
- `references/migration-templates.md`
  - migration lane 模板
- `references/verification-templates.md`
  - verification lane 模板
- `references/repo-scope-and-authority.md`
  - 仓库权威源与默认推导边界
- `references/trigger-examples.md`
  - 触发 / 不触发正反例
- `references/oracle-delivery-guardrails.md`
  - Oracle / APEX 安全与可诊断护栏

## 一句话规则

先选一个主 lane，再确认边界；没有最新确认，就没有 executable envelope 的执行权。

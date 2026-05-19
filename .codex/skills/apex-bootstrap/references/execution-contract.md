# Execution contract

本文件是 `apex-bootstrap` skill 的**单一权威协议源**。

它定义：

- 5 个 lane
- executable vs. discussion-only 的边界
- required fields
- feature execution envelope
- 确认失效条件
- lane 切换规则

如果 `SKILL.md`、模板文件或其他 reference 与本文件冲突，以本文件为准。

## 1. Canonical lanes

| lane | executable? | primary goal | required fields | auto-continue |
| --- | --- | --- | --- | --- |
| `environment setup/check` | yes | 初始化 / 修复 / 检查环境 | `env_alias` | no |
| `feature slice` | yes | 改变应用行为、继续 feature | `env_alias`、`APP_ID`、`app_code` | yes, but only inside confirmed feature execution envelope |
| `import/export migration` | yes | 在显式 source / target 间移动已有资产 | source boundary；target / `PAGE_ID` 视任务而定 | no |
| `verification / gate` | yes | 证明或检查当前状态 | 对应目标边界 + `verification target` | no |
| `discussion-only` | no | 讨论、评估、修正边界、未授权执行 | none | no |

## 2. Execution gate invariants

以下规则对所有 lane 都成立：

1. 命中 skill 不等于获得执行授权
2. 一次只选一个主 lane
3. 下一步若会进入 executable lane，必须先生成结构化确认并等待用户明确确认
4. 只读阅读 / 只读分析不需要先确认
5. 用户修正边界不会自动授权执行
6. 旧确认失效后，不得从旧状态继续执行
7. `discussion-only` 永远不执行仓库脚本

## 3. Required fields by lane

### `environment setup/check`

至少需要：

- `env_alias`

### `feature slice`

Gate A 至少需要：

- `env_alias`
- `APP_ID`
- `app_code`

Gate B 形成最终 feature execution envelope 时，还需要：

- impacted pages
- impacted DB objects

如果请求是页面级 feature，再补：

- `PAGE_ID`

### `import/export migration`

至少需要：

- source boundary
- target boundary（如适用）
- page 级迁移时需要 `PAGE_ID`

### `verification / gate`

至少需要：

- 对应目标边界字段
- `verification target`

## 4. Feature execution envelope

`feature slice` 的确认分两层：

### Gate A — execution-entry confirmation

目的：允许代理进入 feature workflow，并开始做 feature 级分析与准备。

确认内容至少包括：

- feature 意图
- `env_alias`
- `APP_ID`
- `app_code`
- 页面级任务时的 `PAGE_ID`

### Gate B — scope confirmation

目的：确认 impacted pages 与 impacted DB objects，形成最终 feature execution envelope。

形成后的 envelope 允许代理自动执行：

- 实现
- 导入 / 导出
- DB gate
- deploy gate
- browser smoke
- browser-functional
- evidence 写入
- 状态更新

直到：

- `DONE`，或
- 真实阻塞

真实阻塞仅包括：

- 缺凭据 / 缺授权
- 破坏性 / 生产设置
- 必须由业务方决定的问题

## 5. Confirmation invalidation rules

以下任一变化发生时，旧确认立即失效，必须整单重确认：

- lane 类型变化
- `env_alias` 变化
- `APP_ID` 变化
- `app_code` 变化
- `PAGE_ID` 变化
- source / target 边界变化
- `verification target` 变化
- 请求从 `discussion-only` 变为 executable，或反之
- 拟执行动作变化并导致副作用实质变化
- 已确认 feature envelope 外的 gate 语义变化

重确认的正确做法：

1. 接受修正并更新理解
2. 重新生成完整确认
3. 再次等待用户明确确认
4. 新确认完成前，不得进入新的 executable envelope

## 6. Lane switching rules

lane 切换只在以下情况允许：

- 已确认工作流自然推进到下一 lane
- 用户发起新请求
- 验证结果明确要求转入其他 lane

常见切换：

- `environment setup/check` -> `feature slice`
- `feature slice` -> `verification / gate`
- `import/export migration` -> `verification / gate`
- `discussion-only` -> 任一 executable lane

切换时必须：

1. 重新识别当前主意图
2. 重新补全下一个 lane 所需边界字段
3. 重新生成完整确认
4. 新确认完成前，不得执行下一 lane 的仓库脚本

一个 lane 的完成，**不等于** 下一个 lane 自动获得执行权。

## 7. User-visible confirmation contract

默认只向用户展示：

- 我的理解
- 任务归类
- 目标边界
- 请确认或修正

默认不要展示：

- 拟执行脚本清单
- 副作用细节
- 数据库上下文推导
- 内部执行顺序

除非用户明确要求查看执行细节。

展示骨架与 lane 模板，见：

- `confirmation-protocol.md`
- `environment-templates.md`
- `feature-templates.md`
- `migration-templates.md`
- `verification-templates.md`

## 8. One-line rule

没有最新确认，就没有 executable envelope 的执行权。

# 功能类确认模板

适用于：

- 新功能
- 功能修改
- 继续现有 feature slice
- impacted pages / impacted DB objects 分析前确认
- page 级功能任务

## 读取重点

进入 feature lane 后，优先读取：

1. `AGENTS.md`
2. `ai-context.json`
3. 已存在的 feature file（如有）
4. `tools/apex_ai.sh` 中 feature workflow 相关部分
5. `export/<env_alias>/f<APP_ID>/` 下相关应用与 DB 资产
6. `references/oracle-delivery-guardrails.md`（当任务涉及 DB 对象、PL/SQL、
   动态 SQL、页面 SQL 或页面过程）

如果页面范围未确认，不要提前做 page 级猜测。

## 必填字段

### 应用级 feature
- `env_alias`
- `APP_ID`
- `app_code`

### 页面级 feature
还必须有：
- `PAGE_ID`

## 标准 feature slice 模板

```md
**我的理解**
- 你希望我在指定 APEX 应用中推进一个功能任务。

**任务归类**
- `feature slice`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `<必填>`
- `app_code`: `<必填>`
- `PAGE_ID`: `<如适用，否则 N/A>`

**当前任务理解摘要**
- `Business Goal`: `<AI 提炼后的业务目标>`
- `Acceptance Criteria`: `<AI 提炼后的验收条件>`
- `Scope assumption`: `<当前理解的范围，若未明确要写清楚>`

**请确认或修正**
- 请确认这版任务理解、应用边界与执行意图；确认后我再继续。
```

## 页面级 feature 模板

```md
**我的理解**
- 你希望我在指定页面范围内推进一个功能任务。

**任务归类**
- `feature slice`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `<必填>`
- `app_code`: `<必填>`
- `PAGE_ID`: `<必填>`

**当前任务理解摘要**
- `Business Goal`: `<...>`
- `Acceptance Criteria`: `<...>`
- `Scope assumption`: `当前按页面范围理解，若需扩大范围会先回传确认。`

**请确认或修正**
- 请确认页面边界与执行意图；确认后我再继续。
```

## 关键规则

1. 不得从模糊需求直接跳到实现。
2. 首次确认通过后，scope confirmation 仍需遵守仓库规则。
3. 用户修正 `env_alias`、`APP_ID`、`app_code`、`PAGE_ID`、Business Goal、Acceptance Criteria 或执行意图时，必须整单重确认。
4. 用户修正后，不能直接开始编码。

## 重确认示例：用户修正 APP_ID

```md
**已收到修正**
- 目标应用从 `APP_ID 109 (f109)` 更新为 `APP_ID 110 (f110)`

**任务归类**
- `feature slice`

**目标边界**
- `env_alias`: `<保持或更新后的值>`
- `APP_ID`: `110`
- `app_code`: `f110`
- `PAGE_ID`: `<原值或 N/A>`

**当前任务理解摘要**
- `Business Goal`: `...`
- `Acceptance Criteria`: `...`
- `Scope assumption`: `...`

**请确认或修正**
- 请确认更新后的应用边界；确认后我再继续。
```

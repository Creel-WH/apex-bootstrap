# 验证类确认模板

适用于：

- `contract`
- `db`
- `deploy`
- `browser`
- `browser-functional`
- `all`

## 读取重点

进入 verification lane 后，优先读取：

1. `AGENTS.md`
2. `ai-context.json`
3. `tools/apex_ai.sh` 中 gate 路由
4. `tools/run_gate.sh`
5. 相关浏览器验证脚本与 app-owned 验证规格
6. `references/oracle-delivery-guardrails.md`（当验证依赖数据库上下文、
   APEX 页面 SQL 或页面过程诊断时）

只读取当前请求的验证目标，不要无故扩展到更大的验证范围。

## 必填字段

- `env_alias`
- `APP_ID`
- `app_code`
- `verification target`
- `PAGE_ID`（如验证聚焦单页）

## 标准验证模板

```md
**我的理解**
- 你希望我对指定应用边界执行验证流程，以确认当前状态是否满足继续推进、交付或达到 `DONE` 的条件。

**任务归类**
- `verification / gate`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `<必填>`
- `app_code`: `<必填>`
- `PAGE_ID`: `<如适用，否则 N/A>`
- `verification target`: `<必填，例如 contract / db / deploy / browser / browser-functional / all>`

**请确认或修正**
- 请确认验证目标与应用边界；确认后我再执行。
```

## 页面级验证模板

```md
**我的理解**
- 你希望我围绕指定页面执行验证流程。

**任务归类**
- `verification / gate`

**目标边界**
- `env_alias`: `<必填>`
- `APP_ID`: `<必填>`
- `app_code`: `<必填>`
- `PAGE_ID`: `<必填>`
- `verification target`: `<必填>`

**请确认或修正**
- 请确认页面边界与验证目标；确认后我再执行。
```

## 关键规则

1. verification 不等于 implementation。
2. 不得静默扩大验证范围。
3. 缺少 `verification target` 时不得执行。
4. 用户修正验证目标、APP_ID、PAGE_ID 或环境边界后，必须整单重确认。
5. 验证失败后，如需功能修改，必须重新路由到适当 lane。

## 重确认示例：用户修改验证目标

```md
**已收到修正**
- 验证目标从 `browser` 更新为 `browser-functional`

**任务归类**
- `verification / gate`

**目标边界**
- `env_alias`: `...`
- `APP_ID`: `...`
- `app_code`: `...`
- `PAGE_ID`: `...` / `N/A`
- `verification target`: `browser-functional`

**请确认或修正**
- 请确认这版更新后的验证目标；确认后我再执行。
```

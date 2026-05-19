# 任务路由规则

本文件只回答一个问题：

> 当请求带有歧义、混合意图或用户正在纠正边界时，应该如何稳定地选出一个主 lane？

5 个 canonical lanes、required fields、execution gate 与 lane switch 语义，统一以：

- `execution-contract.md`

为准。

## 总规则

1. 一次只选一个主 lane
2. 歧义时优先保守，不猜测
3. 讨论、评估、纠正边界时优先进入 `discussion-only`
4. lane 选择只决定“下一步确认什么、读取什么”，不授权执行

## 优先级

当多个 lane 看起来都可能时，按主意图优先级判断：

1. 明确要验证当前状态 -> `verification / gate`
2. 明确要迁移已有资产 -> `import/export migration`
3. 明确要改变应用行为 -> `feature slice`
4. 明确要准备 / 检查环境 -> `environment setup/check`
5. 仍不清楚 -> `discussion-only`

## discussion-only 优先覆盖

即使消息中出现仓库关键词，只要用户当前主要是在：

- 讨论可行性
- 比较方案或权衡
- 收窄范围
- 修正上一版确认
- 询问“该怎么做”而不是要求立即执行

就优先进入 `discussion-only`。

## correction handling

用户修正以下任一项时，优先保持在 `discussion-only`，直到新确认完成：

- lane 类型
- `env_alias`
- `APP_ID`
- `app_code`
- `PAGE_ID`
- source / target 边界
- `verification target`
- 是否要执行还是只讨论

## 路由时只关心的最小问题

路由时只需要回答这些问题：

1. 用户主目标是改东西、搬东西、验证状态，还是只讨论？
2. 当前有没有足够边界支撑下一步确认？
3. 如果没有，应该继续澄清还是保持 `discussion-only`？

不要在路由阶段提前展开完整执行计划。

## 边界不足时的处理

- 可以先选 lane
- 但不能因为 lane 已选定就开始执行
- 缺边界时，下一步只能是澄清或结构化确认

## 一句话原则

先稳住主意图，再确认边界；不清楚就留在 `discussion-only`。

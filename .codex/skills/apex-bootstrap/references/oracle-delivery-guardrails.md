# Oracle / APEX 交付护栏

本文件把 `oracle-db-skills` 中对本仓库最有价值的 Oracle / APEX /
SQLcl 实践，收敛为 `apex-bootstrap` skill 的执行护栏。

适用范围：

- 任何会读写数据库对象的仓库工作流
- 任何会导出、导入、验证 APEX 应用的工作流
- 任何会生成或修改 PL/SQL、动态 SQL、APEX 页面 SQL 的任务

本文件不会改变 `apex-bootstrap` 的确认闸门。
**先确认，后执行** 仍然是第一原则。

## 1. 数据库上下文预检

当任务进入执行态且下一步会触达数据库时，执行层应先确认最小上下文：

- 当前数据库身份（session user）
- 当前数据库 / container
- Oracle 版本
- 当前会话可用权限

目标不是让用户再确认这些字段，而是让执行层避免在错误 schema、错误容器、
错误版本假设下继续推进。

如果这些上下文和已确认边界无法稳定对应：

- 停止执行
- 回到确认或澄清

## 2. SQLcl 执行必须保持 fail-fast

对于仓库脚本执行的 SQL / PL/SQL：

- 必须保持 headless / non-interactive 行为
- 必须把 SQL 错误和 OS 错误转成非零退出
- 必须让 CI / gate 能据此可靠失败

执行层应坚持以下模式：

- `WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK`
- `WHENEVER OSERROR EXIT ... ROLLBACK`
- 显式成功退出

如果已有仓库 wrapper 已保证这些语义，应复用 wrapper，不要在新脚本里各自发明一套。

## 3. 动态 SQL 护栏

对任何新增或修改的 PL/SQL / SQL：

- 数据值一律优先使用 bind variables
- 不要把用户输入、页面 item、外部参数直接拼接进 SQL
- 如果动态部分是对象名 / 列名 / schema 名，必须白名单化
- Oracle 侧优先使用 `DBMS_ASSERT` 验证动态标识符

默认原则：

- **值用 bind**
- **结构用 whitelist / DBMS_ASSERT**

## 4. PL/SQL 异常处理护栏

对于包、过程、函数、触发器和页面过程相关逻辑：

- 已知业务异常优先显式命名
- 不要用安静吞错的 `WHEN OTHERS THEN NULL`
- 对意外异常，要保留可诊断信息并重新抛出

建议保留：

- `DBMS_UTILITY.FORMAT_ERROR_STACK`
- `DBMS_UTILITY.FORMAT_ERROR_BACKTRACE`

本仓库已有硬规则：

- 任何 `WHEN OTHERS` 必须记录并重新抛出 unexpected exceptions

本文件的作用是进一步强调：**回溯信息必须可见，根因不能被覆盖。**

## 5. APEX 页面 SQL / 过程护栏

对 APEX 页面、报表、IG、页面过程：

- 不要在报表 / IG 查询中使用 `SELECT *`
- 页面 SQL 里的用户输入优先使用 bind item（如 `:P1_ID`）
- 不要把页面 item 直接拼接成动态 SQL
- 服务端授权必须真实存在，不能只靠前端隐藏
- 变更后要及时导出并纳入版本控制

排查页面慢问题时，可优先考虑：

- APEX debug
- 页面 SQL 明确列清单
- 页面过程的异常映射是否足够清晰

## 6. APEX 错误展示边界

对 APEX 页面过程：

- 预期业务错误应尽量转成用户可理解的消息
- 不要把原始数据库错误直接暴露给终端用户
- 但也不要因此丢失执行层日志与回溯

推荐分层：

- 用户层：`APEX_ERROR.ADD_ERROR` 或等价友好提示
- 执行层：保留完整错误栈与 backtrace

## 7. 与本仓库目标的对应关系

这些护栏之所以适合 `apex-bootstrap`，是因为本仓库的目标不是通用 Oracle
知识问答，而是：

- AI 驱动的 APEX feature slice 执行
- 环境隔离下的 DB / APEX 资产交付
- 可验证、可回放、可 gate 的自动化流程

因此我们只吸收对以下目标直接有帮助的内容：

- 正确连接到正确上下文
- SQLcl / gate 可可靠失败
- APEX 导出可版本化
- PL/SQL / APEX 错误可诊断
- 动态 SQL 不引入注入风险

## 一句话原则

**先确认边界，再确认数据库上下文；用 fail-fast SQLcl 执行，用 bind / DBMS_ASSERT 保证安全，用 backtrace 保证可诊断。**

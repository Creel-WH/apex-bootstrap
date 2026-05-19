# GitHub Actions DB CI 配置清单

本文档用于配置 `.github/workflows/plsql-ci.yml` 所需的 GitHub Variables 与 Secrets。

The workflow is layered as contract, DB, deploy, and browser gates. Connected
jobs upload `.omx/results` evidence artifacts and downstream gates only run
after enabled upstream gates pass. An optional browser functional job can run
after browser smoke when connected env interaction checks are desired.

## 默认 runner 策略

- 当前项目默认使用自托管 runner 执行数据库 CI
- 原因是本项目依赖 SQLcl、wallet、本地网络连通性与 Oracle ADB 白名单访问

## 必配开关

- Variable: `ENABLE_DB_CI=true`
- Variable: `DB_CI_ENV=ci@adb`（可选，必须与根目录 `conn.json` 中的环境别名一致）
- Variable: `DB_CI_APP=f100`

## 直连模式

- Variable: `TARGET_DB_CONNECTION_MODE=direct`
- Secret: `TARGET_DB_CONNECT_STRING=<user/password@host:port/service>`
- Variable: `TARGET_DB_SCHEMA=<schema_name>`

## ADB TNS + wallet 模式

- Variable: `TARGET_DB_CONNECTION_MODE=tns`
- Variable: `TARGET_DB_TNS_ALIAS=<tns_alias>`
- Variable: `TARGET_DB_TNS_ADMIN=<wallet_dir>` 或 Secret: `TARGET_DB_WALLET_ZIP_BASE64=<wallet_zip_base64>`
- Variable: `TARGET_DB_SCHEMA=<schema_name>`
- Secret: `TARGET_DB_USERNAME=<db_user>`
- Secret: `TARGET_DB_PASSWORD=<db_password>`

如使用本地 wallet，建议放在根目录 `wallet/`、runner 临时目录，或仓库外安全路径，并通过 `.gitignore` 忽略实际内容。

如果 CI 需要生成或覆盖连接配置，请只生成根目录 `conn.json`，不要再生成 `config/conn.json` 或 `config/<env>.env`。

CI jobs should build runtime config with:

```bash
tools/write_ci_conn_json.sh "${TARGET_ENV}"
```

DB, deploy, and browser jobs should call the unified gate entrypoint instead of
duplicating orchestration logic:

```bash
tools/run_gate.sh "${TARGET_ENV}" "${APP_ID}" db
tools/run_gate.sh "${TARGET_ENV}" "${APP_ID}" deploy
tools/run_gate.sh "${TARGET_ENV}" "${APP_ID}" browser
tools/run_gate.sh "${TARGET_ENV}" "${APP_ID}" browser-functional
```

For a true app-owned thin vertical slice, prefer storing browser smoke intent in:

- `export/<env_alias>/f<APP_ID>/docs/browser-smoke.json`
- `export/<env_alias>/f<APP_ID>/docs/browser-functional.json`

The browser gate will use that app-owned spec first and only fall back to
env-level `APEX_BROWSER_SMOKE_URL` / expectation keys when the app does not
provide its own smoke baseline.

Browser functional runs reuse the same env-scoped APEX builder credentials, but
the interaction steps and assertions should stay app-owned in
`browser-functional.json`.

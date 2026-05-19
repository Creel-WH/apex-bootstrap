# Secret / Credential Injection Map

This repository keeps runtime secrets explicit and environment-scoped.

## Canonical split

### Tracked `conn.json`

Use the tracked root `conn.json` as the canonical place for required
environment-scoped connection/runtime fields, including:

- DB mode / username / password / connect string or wallet settings
- Java and SQLcl paths when they cannot be discovered from `PATH`
- APEX builder login URL / username / password
- browser smoke defaults such as target URL and selector/text assertions
- runner-safe defaults and documentation-grade examples
- flat OCI helper fields such as `ssh_host`, `ssh_key_path`, `app_container`,
  `db_container`, and `ssh_tunnel_command` when those workflows are used

Do **not** commit real passwords, wallet archives, or private keys in tracked
`conn.json`; commit placeholders there and keep live secrets local when needed.

### Ignored `.conn.json`

Use ignored root `.conn.json` for:

- local-only aliases
- real local passwords when you do not want them committed
- local browser login credentials when you do not want them committed
- machine-specific paths that should never be committed

Resolution order is:

1. tracked `conn.json`
2. ignored `.conn.json`

That means tracked aliases stay authoritative, while local-only aliases can live
outside version control.

Do not duplicate scalar runtime values in nested metadata objects. If a script
needs a value, keep that value as a top-level scalar under the environment
alias.

## CI injection

GitHub Actions should build runtime config with:

```bash
tools/write_ci_conn_json.sh "${TARGET_ENV}"
```

### CI Variables

Use GitHub Variables for:

- env alias selection
- non-secret schema/workspace names
- non-secret browser labels
- non-secret TNS alias names

### CI Secrets

Use GitHub Secrets for:

- `TARGET_DB_CONNECT_STRING`
- `TARGET_DB_PASSWORD`
- `TARGET_DB_WALLET_ZIP_BASE64`
- `APEX_BUILDER_PASSWORD`
- any real browser or database credential

## Browser credentials

Browser smoke and browser functional checks use the same env-scoped APEX builder
credentials:

- `APEX_BUILDER_LOGIN_URL`
- `APEX_WORKSPACE`
- `APEX_BUILDER_USERNAME`
- `APEX_BUILDER_PASSWORD`

Application-owned specs such as:

- `export/<env_alias>/f<APP_ID>/docs/browser-smoke.json`
- `export/<env_alias>/f<APP_ID>/docs/browser-functional.json`

should describe **what page to check and what to assert**, not duplicate
credentials.

## App-owned baseline specs

App-owned browser specs may contain URLs, labels, selectors, text assertions,
steps, and placeholders, but they must not embed secrets.

Allowed placeholders include:

- `{env_alias}`
- `{workspace}`
- `{app_id}`
- `{app_code}`
- `{spec_app_id}`
- `{spec_app_code}`

## APEX export sanitization

APEX split exports are repository assets. `tools/export_apex_app.sh` removes
`workspace/credentials/*.sql`, exported supporting-object SQL files, and their
`install.sql` include lines after every application export. It also removes
credential-dependent social authentication exports, because importing those
components without the matching workspace credential fails referential checks.

Keep OAuth, Web Credential, and external service credential values outside the
export tree, then recreate or update them from environment-scoped secret
injection during deployment. Keep database object source under
`export/<env_alias>/f<APP_ID>/db/`; curated APEX supporting objects may exist in
the export, but they must be generated from `db/` and are not the repository
source of truth.

## Verification rules

- secrets must not be committed
- app-owned browser specs must stay secret-free
- APEX split exports must not contain `workspace/credentials/*.sql`
- APEX split exports may contain curated supporting object SQL generated from `db/`
- APEX split exports must not contain credential-dependent social authentication exports
- CI must reconstruct runtime config from variables + secrets
- local real credentials should live in ignored `.conn.json`

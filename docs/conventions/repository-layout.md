# Repository Layout

## Goal

This repository is a multi-application Oracle APEX + PL/SQL workspace for AI-assisted development.

The structure is designed to support:

- creating new APEX applications,
- importing and evolving existing APEX applications,
- maintaining application-specific database objects,
- supporting different applications on different databases,
- and migrating features from one application to another.

## Top-Level Layout

```text
apex-bootstrap/
├─ export/
├─ conn.json
├─ tools/
├─ tests/
├─ docs/
├─ wallet/
├─ .github/
├─ .gitignore
├─ README.md
└─ AGENTS.md
```

## Directory Responsibilities

### `export/`

Each application lives in its own isolated directory such as `export/dev@oci/f100/`.

Each `f<APP_ID>` directory is a complete application unit with its own:

- APEX split export,
- database objects,
- and docs.

### `conn.json`

Stores the shared connection inventory for all environment aliases.

Recommended alias style:

- `dev@oci`
- `dev@adb`
- `test@oci`
- `prod@oci`

Current shell tooling reads the selected alias from the root `conn.json` and consumes top-level scalar values such as `db_connection_mode`, `db_connect_string`, `db_schema`, `apex_workspace`, `db_tns_alias`, `db_tns_admin`, `java_home`, `db_sqlcl_bin`, `apex_builder_login_url`, `apex_builder_username`, `apex_builder_password`, `apex_browser_smoke_url`, `apex_browser_expect_text`, and `apex_browser_expect_selector`.

Avoid duplicating runtime metadata in nested objects. Keep only the top-level
scalar keys that active scripts consume for the selected environment.

`tools/reset_workspace.sh` must preserve both `conn.json` and `.conn.json`.
Workspace cleanup should remove generated exports and scaffold artifacts only.

Do not recreate `config/`, `config/<env>.env`, or the legacy root `.env`.

### `wallet/`

Optional local wallet directory for TNS / ADB style environments.

This directory may also live outside the repository if your team prefers.

### `tools/`

Stores all shared project-level automation.

Current structure is intentionally flat:

```text
tools/
├─ common.sh
├─ db_use.sh
├─ oci_docker_exec.sh
├─ oci_ssh.sh
├─ export_apex_app.sh
├─ export_apex_db.sh
├─ export_apex_page.sh
├─ import_apex_app.sh
├─ import_apex_page.sh
├─ install_utplsql.sh
├─ release.sh
├─ reset_workspace.sh
├─ sql_as.sh
└─ apex_ai.sh
```

Scripts must be application-aware and derive the target application from the requested APEX app id.

### `tests/`

Stores repository-level validation only.

Keep repository-level shell checks directly under `tests/`.

Application-level utPLSQL stays inside `export/<env_alias>/f<APP_ID>/db/tests/`.

### `docs/`

Stores repository-wide documentation.

```text
docs/
├─ conventions/
├─ workflows/
├─ migration/
└─ decisions/
```

## Isolation Model

The repository follows strict application isolation.

Rules:

- Each application owns its own `apex/`, `db/`, `manifests/`, and `docs/`.
- Different applications may use different databases and schemas.
- There is no shared application layer and no shared database object layer.
- Shared assets are limited to project-level tooling and general documentation.
- Cross-application feature movement must be explicit and documented.

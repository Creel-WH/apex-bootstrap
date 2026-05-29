# APEX App Versioning

This repository keeps all APEX applications in one Git repository, while each
application owns its version metadata inside its own application directory.

## Manifest

Each application directory has an `app.json` file:

```text
export/<env_alias>/f<APP_ID>/app.json
```

The manifest records the environment alias, app id, app code, display name,
semantic version, Git tag prefix, and release single-SQL location.

## Commands

List all exported applications and versions:

```bash
bash tools/app_version.sh list
bash tools/apex_ai.sh app-version list
```

Show one application version:

```bash
bash tools/app_version.sh show sales-tools@test 138
bash tools/apex_ai.sh app-version show sales-tools@test 138
```

Set an application version:

```bash
bash tools/app_version.sh set sales-tools@test 138 1.1.0 "Sales Tools"
bash tools/apex_ai.sh app-version set sales-tools@test 138 1.1.0 "Sales Tools"
```

Render the Git tag for the current manifest version:

```bash
bash tools/app_version.sh tag sales-tools@test 138
bash tools/apex_ai.sh app-version tag sales-tools@test 138
```

Render the Git tag for a proposed version without editing the manifest:

```bash
bash tools/app_version.sh tag sales-tools@test 138 1.2.0
```

## Tag Convention

Use application-specific tags instead of repository-wide tags:

```text
<tag_prefix>-v<version>
```

Examples:

```text
sales-tools-f138-v1.0.0
aiapexdemo-f149-v1.0.0
```

When the same APEX application exists in multiple environments, keep the same
`tag_prefix` for that application so test and production point to one logical
release line.

## Release Flow

1. Export or update the target application under `export/<env_alias>/f<APP_ID>/`.
2. Update `app.json` with `tools/app_version.sh set`.
3. Generate or refresh the app release SQL under `release-single/` when needed.
4. Commit the application changes.
5. Create the app-specific Git tag printed by `tools/app_version.sh tag`.

Git remains repository-wide. Application ownership and release identity are
kept inside each app directory.

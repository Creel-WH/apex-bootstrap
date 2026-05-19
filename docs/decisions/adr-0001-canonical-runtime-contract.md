# ADR-0001: Canonical Runtime Contract

## Status

Accepted

## Context

The repository is evolving from a bootstrap/toolkit into a one-stop Oracle APEX delivery platform.

The current architecture already has the right isolation boundary:

- `export/<env_alias>/f<APP_ID>/` is the unit of application ownership
- `tools/` is the shared automation surface
- `export/<env_alias>/f<APP_ID>/db/` is the database source of truth for each app

The unstable part is the runtime contract:

- environment selection has been expressed as both `dev` and `dev.env`
- connection configuration has been expressed as both `conn.json` and `config/*.env`
- some tests and scripts were still implicitly validating legacy root-level export paths

That drift prevents the platform from having one public command contract for local runs, CI, and future deploy/browser workflows.

## Decision

The repository standardizes on the following canonical runtime contract:

1. **Environment selection uses env aliases**
   - Public commands accept `dev`, `lab`, `ci`, not `dev.env`
2. **`conn.json` is the canonical runtime configuration source**
   - It stores connection details by env alias
   - It does not store `APEX_APP_ID`
   - Secret-bearing local credentials may live in untracked `.conn.json`
     when the alias is not present in tracked `conn.json`
3. **Application selection stays explicit**
   - Commands requiring app context accept a numeric `app_id`
4. **Application directories are always env-scoped**
   - The canonical application path is `export/<env_alias>/f<APP_ID>/`
   - Root-level `export/f<APP_ID>/` is legacy and invalid
5. **Legacy `.env` inputs stay in a short compatibility window only**
   - `.env` command inputs emit a deprecation warning
   - `config/<env>.env` fallback emits a migration warning

## Consequences

### Positive

- One contract for local automation, CI, and future orchestration wrappers
- Clear migration path away from `config/*.env`
- Less ambiguity in path resolution and app ownership
- Tests can validate the actual repository model instead of stale legacy paths

### Trade-offs

- Compatibility behavior must stay explicit until the legacy window is closed
- Tests must distinguish canonical behavior from compatibility behavior instead of mixing both

## Follow-up Work

1. Align README and workflow docs with the canonical contract everywhere
2. Add authority-map and evidence-contract docs as first-class references
3. Add CI checks that fail on new root-level `export/f*` usage
4. Remove legacy `config/*.env` fallback after the compatibility window closes

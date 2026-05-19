# Oracle Delivery Guardrails

This document captures the Oracle / APEX / SQLcl practices we want every
repository workflow to follow when a task goes beyond pure repository plumbing
and starts touching database behavior, PL/SQL, or APEX runtime logic.

The guidance is adapted to `apex-bootstrap` from the Oracle-focused reference
patterns curated in `krisrice/oracle-db-skills`, then narrowed to the parts
that directly support this repository's goals: safe AI-assisted delivery,
clear execution boundaries, reproducible exports, and observable verification.

## Why This Exists

This repository is not a generic Oracle knowledge base. It is an AI-assisted
delivery scaffold for Oracle APEX applications and application-owned database
assets.

That means the most valuable Oracle practices are the ones that improve:

- boundary safety
- execution traceability
- headless SQLcl reliability
- PL/SQL diagnosability
- APEX export discipline
- injection-safe SQL generation

## 1. Database Context First

Before any confirmed workflow executes database-affecting SQL or PL/SQL, the
execution layer should confirm the live database context, including:

- session user
- database / container identity
- Oracle version
- available privileges relevant to the task

Do not ask the user to reconfirm these details when they can be derived and
verified from the selected repository boundary. This is an execution guardrail,
not a second human approval surface.

If the live database context conflicts with the confirmed `env_alias`,
`APP_ID`, or application ownership assumption, stop and resolve the mismatch
before running install, compile, import, or verification flows.

## 2. SQLcl Must Stay Fail-Fast

All scripted SQLcl execution should behave as a CI-safe, headless, fail-fast
primitive:

- no interactive prompt dependency
- SQL errors produce non-zero exit codes
- OS errors produce non-zero exit codes
- uncommitted work rolls back on failure

Use the standard Oracle pattern:

```sql
WHENEVER SQLERROR EXIT SQL.SQLCODE ROLLBACK
WHENEVER OSERROR  EXIT FAILURE ROLLBACK
```

Where the repository already wraps SQLcl with these guarantees, reuse the
existing wrapper instead of creating one-off script behavior.

In this repository, `tools/common.sh` already centralizes that behavior through
`run_sqlcl()`. New automation should build on that path rather than bypassing
it.

## 3. Dynamic SQL Safety Rules

Whenever repository work creates or edits dynamic SQL:

- use bind variables for data values
- never concatenate page item values or external input into SQL text
- validate dynamic identifiers such as table names, column names, and schema
  names before interpolation
- prefer Oracle-native whitelist validation through `DBMS_ASSERT`

Default rule:

- **data uses binds**
- **structure uses whitelists / `DBMS_ASSERT`**

## 4. PL/SQL Error Handling Rules

Unexpected failures must stay observable.

For package code, procedures, functions, triggers, and supporting-object
scripts:

- model expected business failures as named exceptions where practical
- never use silent exception swallowing such as `WHEN OTHERS THEN NULL`
- capture the full Oracle error stack and backtrace for unexpected failures
- re-raise unexpected failures after logging

Preferred diagnostics:

- `DBMS_UTILITY.FORMAT_ERROR_STACK`
- `DBMS_UTILITY.FORMAT_ERROR_BACKTRACE`

This extends the repository-wide rule that any `WHEN OTHERS` block must log and
re-raise unexpected exceptions.

## 5. APEX SQL and Runtime Rules

For APEX pages, reports, Interactive Grids, and page processes:

- never use `SELECT *` in report or grid queries
- bind page item values instead of concatenating them into SQL strings
- keep server-side authorization explicit; UI hiding alone is not protection
- export and version-control the application after significant changes
- use APEX debug traces when diagnosing slow or unexpected page behavior

The repository already treats the split export as the source of truth for APEX
assets. These rules reinforce that model by reducing brittle queries and making
runtime behavior easier to diagnose.

## 6. APEX Error Presentation Rules

Page processes should distinguish between:

- expected business errors that deserve user-friendly messages
- unexpected system errors that must remain fully diagnosable

Preferred split:

- user-facing messaging through APEX-friendly error presentation
  (`APEX_ERROR.ADD_ERROR` or equivalent)
- execution-layer logging that preserves the full Oracle stack and backtrace

Do not replace observability with friendliness. Friendly UI messaging must not
destroy root-cause evidence.

## 7. Version-Aware Thinking

When behavior is version-sensitive, treat Oracle Database 19c as the default
baseline unless the selected environment clearly proves otherwise.

If a newer feature is required:

- call out the minimum version explicitly
- prefer a 19c-compatible fallback when the repository must support mixed
  estates
- do not assume that syntax or package behavior from newer releases is
  universally available

## 8. Repository-Specific Application

Apply these guardrails when working through:

- `tools/sql_as.sh`
- `tools/run_gate.sh`
- APEX export/import workflows
- application-owned `db/` objects
- browser-functional fixes that require page SQL or process changes

Do not use this document as an excuse to expand scope into generic DBA work.
Its purpose is to make `apex-bootstrap` deliveries safer and more reproducible
inside the repository's existing execution model.

## Sources

- https://github.com/krisrice/oracle-db-skills
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/agent/schema-discovery.md
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/sqlcl/sqlcl-cicd.md
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/devops/version-control-sql.md
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/plsql/plsql-error-handling.md
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/sql-dev/sql-injection-avoidance.md
- https://github.com/krisrice/oracle-db-skills/blob/main/skills/features/oracle-apex.md

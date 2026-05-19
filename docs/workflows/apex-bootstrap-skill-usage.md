# Using the `apex-bootstrap` Skill

This repository ships with a project-local `apex-bootstrap` skill that wraps the
canonical Oracle APEX workflow for Codex/OMX and OpenCode.

## Purpose

Use the skill when a request belongs to this repository's execution model:

- environment init, repair, or validation
- SQL connectivity checks
- feature-slice workflow entry and continuation
- app/page import, export, or migration
- non-production rebuild workflows, including `dev@oci -> test@oci` single-SQL rebuilds
- gate, smoke, and browser-functional verification

Do not use the skill for generic Oracle, APEX, SQL, or PL/SQL questions that do
not belong to this repository workflow.

## Discovery Paths

The skill content lives in one canonical directory:

- `.codex/skills/apex-bootstrap/`

Compatibility paths point to the same content:

- `.agents/skills/apex-bootstrap`
- `.opencode/skills/apex-bootstrap`

These compatibility paths are tracked symlinks that resolve back to
`.codex/skills/apex-bootstrap/`, so the shared skill body can be committed and
pushed to the remote repository without duplicating files.

## Installation

### Option A: Use the project-local skill directly

If you open this repository in Codex/OMX, the project-local skill already lives
at:

- `.codex/skills/apex-bootstrap/`

No extra install step is required inside this repository.

### Option B: Install it as a user-scoped Codex skill

If you want the same skill available outside this repository, create a
user-scoped symlink that points back to the version tracked in this repo:

```bash
mkdir -p ~/.codex/skills
ln -sfn /absolute/path/to/apex-bootstrap/.codex/skills/apex-bootstrap \
  ~/.codex/skills/apex-bootstrap
```

To verify the install:

```bash
test -f ~/.codex/skills/apex-bootstrap/SKILL.md
```

### Option C: Mirror the tracked skill into compatibility roots

If your local setup also loads `.agents` or `.opencode` user-level skills, you
can mirror the same repo-tracked skill there too:

```bash
mkdir -p ~/.agents/skills ~/.opencode/skills
ln -sfn /absolute/path/to/apex-bootstrap/.codex/skills/apex-bootstrap \
  ~/.agents/skills/apex-bootstrap
ln -sfn /absolute/path/to/apex-bootstrap/.codex/skills/apex-bootstrap \
  ~/.opencode/skills/apex-bootstrap
```

This preserves one canonical source while exposing it through multiple skill
roots.

## Invocation

Explicit invocation examples:

- `$apex-bootstrap check dev@oci`
- `$apex-bootstrap continue the current feature slice for APP_ID 109 in dev@oci`
- `$apex-bootstrap export page 12 from APP_ID 109 in dev@oci`
- `$apex-bootstrap run browser-functional verification for APP_ID 109 in dev@oci`
- `$apex-bootstrap rebuild test from single SQL using source app 101 and target app 900`

## Important Non-Production Release Shortcut

For the standard `dev@oci -> test@oci` rebuild lane, the canonical CLI entrypoint is:

```bash
tools/apex_ai.sh rebuild-test-from-single-sql <source_app_id> <target_app_id>
```

This workflow is intentionally opinionated. It enforces:

1. single SQL export from `dev@oci`
2. single SQL import into `test@oci`
3. canonical `export/test@oci/f<TARGET>/db/` normalization
4. `db` gate
5. `deploy` gate with environment compare
6. `browser`
7. `browser-functional`

Use this instead of ad hoc `export-app` / `import-app` combinations when the goal is to rebuild `test@oci` from the current `dev@oci` release candidate.

The skill may also trigger implicitly when a request clearly matches repository
workflow intent, but trigger alone does **not** authorize execution.

## Mandatory Confirmation Gate

Before entering any executable envelope, the skill must first produce a
structured confirmation and wait for explicit user approval.

Every executable confirmation must include the current workflow boundary. In practice this means the lane-specific minimum boundary, such as:

- `env_alias` for environment work
- `env_alias`, `APP_ID`, `app_code` for feature work
- `PAGE_ID` when page scope is involved
- source / target boundary for migration work
- `verification target` for verification work

The confirmation must also include:

- the interpreted task
- the workflow lane
- a direct request for the user to confirm or correct the boundary

Execution details such as planned repository actions, side effects, and
database-context inference are still required internally, but they should stay
out of the default user-visible confirmation unless the user explicitly asks to
see them.

## Correction Handling

User corrections never authorize execution by themselves.

If the user corrects any of the following, the previous confirmation becomes
invalid and the skill must regenerate the full confirmation and wait again. The
canonical invalidation rules live in `references/execution-contract.md`:

- workflow type
- `env_alias`
- `APP_ID`
- `app_code`
- `PAGE_ID`
- source/target migration boundary
- verification target
- execution vs. discussion-only intent

## Workflow Lanes

The skill routes every request into one primary lane:

- `environment setup/check`
- `feature slice`
- `import/export migration`
- `verification / gate`
- `discussion-only`

If a request is ambiguous, the skill should stay conservative and enter
`discussion-only` or ask for confirmation instead of executing.

## What the Skill Reads First

The skill should read the smallest authoritative source set first:

1. `AGENTS.md`
2. `ai-context.json`
3. `README.md`

After that, it should read only the lane-specific files needed for the current
boundary.

## Reference Files

Detailed protocol and templates live under:

- `.codex/skills/apex-bootstrap/references/execution-contract.md`
- `.codex/skills/apex-bootstrap/references/confirmation-protocol.md`
- `.codex/skills/apex-bootstrap/references/environment-templates.md`
- `.codex/skills/apex-bootstrap/references/feature-templates.md`
- `.codex/skills/apex-bootstrap/references/migration-templates.md`
- `.codex/skills/apex-bootstrap/references/oracle-delivery-guardrails.md`
- `.codex/skills/apex-bootstrap/references/verification-templates.md`
- `.codex/skills/apex-bootstrap/references/repo-scope-and-authority.md`
- `.codex/skills/apex-bootstrap/references/task-routing.md`
- `.codex/skills/apex-bootstrap/references/trigger-examples.md`

The Codex-specific agent descriptor also lives in:

- `.codex/skills/apex-bootstrap/agents/openai.yaml`

When a task touches database objects, PL/SQL, dynamic SQL, page SQL, or APEX
page-process behavior, the skill should also load:

- `docs/conventions/oracle-delivery-guardrails.md`

## Operational Rule of Thumb

If the next step would run a repository script, connect to an environment, write
state, or touch app assets, the skill must stop and confirm first.

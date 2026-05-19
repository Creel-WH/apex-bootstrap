# Evidence Contract

The platform should emit structured execution evidence under:

```text
.omx/results/<run-id>/
```

## Target Layout

```text
.omx/results/<run-id>/
├─ contract/
├─ db/
├─ deploy/
├─ browser/
└─ summary.json
```

## Required Principles

1. Every gate writes a machine-readable summary
2. Success and failure both produce evidence
3. Browser runs include at least one attachment
4. Paths and naming stay stable enough for CI upload and downstream analysis

## Gate-Level Expectations

### `contract/`

- command invocation summary
- canonical-vs-legacy detection results
- warning capture for compatibility scenarios

### `db/`

- install result
- compile result
- invalid-object summary
- utPLSQL summary when applicable

### `deploy/`

- app/page deploy target
- deploy status
- pre/post checks when available

### `browser/`

- smoke or functional classification
- target app/page metadata
- screenshot, trace, console, or network attachments

### `summary.json`

At minimum:

- `run_id`
- `env_alias`
- `app_id` when applicable
- executed gates
- pass/fail status per gate
- artifact paths

The root summary must also include action-level proof for feature completion:

- `executed_gate_actions`, preserving ordered gate actions such as
  `contract`, `db`, `deploy`, `browser`, and `browser-functional`
- `gate_runs`, with gate name, status, and artifact path per executed gate
- `done_eligible`, set only when DB, deploy, and browser-functional proof are
  present and successful

The legacy category-level `executed_gates` and `gates` fields remain for
backward compatibility. Browser smoke and browser functional evidence may both
live under the `browser/` category, so completion logic must use the
action-level fields to distinguish `browser` from `browser-functional`.

## Migration Guidance

- Start by emitting summaries for contract and DB phases first
- Add deploy and browser artifacts as those pipeline layers are formalized
- Do not invent one-off output locations outside `.omx/results/<run-id>/`

## Current Minimum Implementation

The current minimum implementation starts with direct `tools/sql_as.sh` runs:

- root run evidence is written to `.omx/results/<run-id>/summary.json`
  and aggregates gate status, executed gates, and artifact paths
- contract evidence is written to `.omx/results/<run-id>/contract/summary.json`
- DB script evidence is written to `.omx/results/<run-id>/db/summary.json`
- phase-specific DB summaries are written when recognized:
  - `install.summary.json`
  - `compile.summary.json`
  - `utplsql.summary.json`
  - `invalid_objects.summary.json` after compile runs
- deploy evidence is written for direct import commands:
  - `tools/import_apex_app.sh` writes `deploy/summary.json` and `deploy/app.summary.json`
  - `tools/import_apex_page.sh` writes `deploy/summary.json` and `deploy/page.summary.json`
- browser smoke evidence is written for direct smoke runs:
  - `tools/browser_smoke.sh` writes `browser/summary.json`
  - `tools/browser_smoke.sh` also writes `browser/smoke.summary.json`
  - attachments are supplied by the configured browser runner
- browser functional evidence is written for direct functional runs:
  - `tools/browser_functional.sh` writes `browser/summary.json`
  - `tools/browser_functional.sh` also writes `browser/functional.summary.json`
  - attachments are supplied by the configured browser runner
- `tools/run_gate.sh` writes orchestration evidence to
  `contract/run_gate.summary.json` and reuses one `OMX_RUN_ID` across
  contract, DB, deploy, and browser gate calls
- `tools/run_gate.sh` also writes ordered gate action summaries under
  `contract/gate-*.summary.json`, allowing the root summary to prove that
  `browser-functional` actually ran
- release guardrail / compare failures surfaced by `tools/run_gate.sh` are
  represented as normal gate failures inside the same contract evidence tree;
  they are not separate ad hoc logs
- CI gate evidence is uploaded from `.omx/results` by the layered GitHub
  Actions jobs: contract, DB, deploy, browser smoke, and browser functional

When `OMX_RUN_ID` is not provided, the tool generates one automatically.

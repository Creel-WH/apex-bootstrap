# AI Execution Protocol

## 1. Purpose

This repository is an AI-native Oracle APEX delivery workspace for APEX developers working with AI agents.

The default execution mode is incremental feature-slice delivery on an existing APEX application. The repository must also remain capable of supporting bootstrap-style delivery for new APEX applications or systems, but incremental feature work is the primary path.

This protocol exists to ensure that AI agents can execute, resume, hand off, troubleshoot, verify, and complete APEX work in a stable and repeatable way without depending on session-only context.

Human entrypoint is conversation. Internal CLI actions such as `feature-start`, `feature-analyze`, `feature-confirm`, `task-state`, and `gate` are AI control primitives, not the primary human workflow surface.

## 2. Execution Model

The execution model has two layers:

1. **Session Protocol**
   - Governs what an agent must do at session start.
   - Focuses on environment readiness, connectivity reuse, and connectivity repair.

2. **Feature Protocol**
   - Governs how an agent executes a feature slice.
   - Focuses on request capture, impact analysis, scope confirmation, implementation, verification, and completion.

## 3. Session Protocol

### 3.1 Session Start

On every `/new` session, the agent must:

- identify the current repository context
- identify the target environment and app when already known
- locate the relevant feature file when one already exists
- run connectivity checks before implementation work

### 3.2 Connectivity Check

Connectivity checks are mandatory at session start.

At minimum, the agent should verify:

- server reachability when applicable
- database reachability
- APEX reachability
- browser entry reachability when browser validation is part of the task

### 3.3 Reuse Before Repair

Connectivity reuse is preferred over reconfiguration.

If the following are unchanged and checks already pass, the agent must reuse them instead of rebuilding connectivity:

- `conn.json`
- `.conn.json`
- project guidance
- existing repository validation settings

Connectivity repair is not a default step. Connectivity repair is only required when connectivity checks fail.

### 3.4 Repair Policy

If connectivity fails, the agent must repair connectivity first unless the user explicitly tells the agent to pause connectivity work.

The agent should not continue normal feature execution on the assumption that connectivity can be fixed later.

### 3.5 Repair Boundary

The agent may autonomously fix:

- local tools and executable paths
- non-secret repository config
- repository validation config
- browser validation config

The agent must not autonomously create or alter:

- secrets
- privileged external systems
- destructive production settings

## 4. Feature Protocol

### 4.1 Default Work Unit

The default work unit is a **feature slice** for an existing APEX application.

A feature slice may span:

- APEX pages
- shared components
- database objects
- validation assets
- deployment and browser verification

### 4.2 Feature File Creation

On receiving a feature request, the agent must immediately create the feature file under the application `docs/` directory using this pattern:

- `export/<env_alias>/f<APP_ID>/docs/YYYY-MM-DD-<feature-slug>.md`

This file is the narrative execution record for the feature slice.

### 4.3 Minimal Request Input

The minimal required input is:

- business goal
- acceptance criteria

### 4.4 AI Impact Analysis

Before implementation, the agent must analyze and propose:

- impacted pages
- impacted DB objects

### 4.5 Human Boundary Confirmation

The developer confirms only:

- page scope
- DB object scope

Before autonomous execution, the agent should present a concise approval summary in chat covering:

- solution design summary
- impacted page and DB scope summary
- implementation plan summary
- key risk summary
- relevant `.md` file paths for optional deep review

After the developer approves in chat, the confirmed environment, application,
page scope, and DB object scope form a **feature execution envelope**. Inside
that envelope the agent is expected to proceed autonomously until `DONE`.

### 4.6 Autonomous Execution

After scope confirmation, the agent autonomously determines:

- implementation details
- page and shared component changes
- DB changes
- test and verification work
- deploy and repair steps

Approved work should continue automatically until `DONE` rather than stopping
after each major implementation step or before each internal repository script.
The envelope expires and must be reconfirmed if the workflow lane, environment,
application, page scope, DB object scope, source/target boundary, verification
target, or gate semantics materially changes.

### 4.7 Escalation Threshold During Execution

Routine implementation problems should not be escalated immediately.

During autonomous execution, the agent must first try at least **3 genuinely different solution approaches** before escalating for human help.

Retries of the same idea do not count as different approaches.

Escalation is appropriate when:

- 3 different approaches fail
- required secrets or credentials are missing
- external authorization is required
- a real business decision is needed

When the developer responds, the same task should resume and continue until `DONE`.

## 5. Asset Synchronization Rules

### 5.1 Feature Markdown Files

Feature markdown files are required for execution narrative, handoff, and resume.

They must be self-contained enough that another agent can continue the work without depending on session-only context.

However, feature markdown files are **not** the authority for phase completion or task completion.

### 5.2 Page Documentation

If page behavior changes, the agent must update the matching page documentation under:

- `export/<env_alias>/f<APP_ID>/docs/pages/`

### 5.3 DB Objects

The source of truth for DB state remains:

- `export/<env_alias>/f<APP_ID>/db/`

The feature file must record which DB objects were changed, but it must not replace DB source files as the source of truth.

### 5.4 Browser Validation Assets

For each feature slice:

- at least one real business-flow functional validation is required
- smoke validation is required as a supplement

The feature file may record the validation intent during execution.

Stable application-level validation should be maintained in:

- `export/<env_alias>/f<APP_ID>/docs/browser-functional.json`
- `export/<env_alias>/f<APP_ID>/docs/browser-smoke.json`

## 6. Validation Policy

The default validation policy requires:

- connectivity validation
- deploy validation
- smoke validation
- at least one real business-flow browser functional validation
- structured evidence written under `.omx/results/<run-id>/`

Validation should use the smallest representative data set that still covers the
required scenarios.

Agents must not reprocess all historical data by default just to prove a change.
When validating data-processing behavior, prefer selecting only the minimum
necessary records that cover the target test cases, edge cases, and failure
paths.

Validation is not complete until the machine state records it as complete.

## 7. State Authority

`ai-context.json` is the authoritative machine state for task progress and completion.

Feature markdown files are narrative execution records only.

This means:

- phase completion must be determined from `ai-context.json`
- task completion must be determined from `ai-context.json`
- markdown descriptions are informative only
- markdown descriptions must not be used as the final authority for deciding whether a phase or task passed

A task is complete only when:

- `ai-context.json` reports `current_task.status == "DONE"`

Any status below `DONE` means the agent must continue troubleshooting, implementation, and verification.

## 8. Definition of Done

A feature slice is complete only when all of the following are true:

1. code and export assets are updated
2. DB objects are landed
3. relevant tests pass
4. browser smoke and functional validation pass
5. the result is deployable to the development environment
6. evidence is written under `.omx/results/...`

In addition, the delivered result must be ready for optional human final
verification by directly opening the browser and signing into the system. Manual
browser review is a post-`DONE` acceptance activity, not a prerequisite for the
AI to mark a task `DONE` when the machine evidence already satisfies the
completion contract.

## 9. Task State Model

### 9.1 Task Status

Allowed task statuses are:

- `NEW`
- `CONFIRM`
- `IMPLEMENTING`
- `TESTED`
- `DONE`

Definitions:

- `NEW`: task created, initial context capture and connectivity checks underway
- `CONFIRM`: AI completed impact analysis and is waiting for page scope and DB object scope confirmation
- `IMPLEMENTING`: confirmed scope is being implemented and iterated
- `TESTED`: validation has been executed but the task is not yet complete unless machine state advances to `DONE`
- `DONE`: all required validations and completion conditions are satisfied

### 9.2 Stage Status

Allowed stage statuses are:

- `PENDING`
- `IN_PROGRESS`
- `PASSED`
- `FAILED`

Recommended stages are:

- connectivity
- scope_confirmation
- implementation
- verification
- delivery

## 10. Minimal Feature File Template

```md
# <feature title>

## Request
- Original Request:
- AI Summary:
- Business Goal:
- Acceptance Criteria:

## Execution Plan
- Impacted Pages (AI Proposed):
- Impacted DB Objects (AI Proposed):
- Confirmed Pages:
- Confirmed DB Objects:
- Planned Steps:

## Implementation Log
- Changes Made:
- Updated Files:
- Updated DB Objects:
- Updated Page Docs:
- Updated Browser Specs:

## Verification
- Connectivity Check:
- DB / APEX Check:
- Deploy Result:
- Browser Smoke:
- Browser Functional:
- Evidence Paths:
- Manual Verification Entry:

## Current Status
- Status: NEW | CONFIRM | IMPLEMENTING | TESTED | DONE
- Current Step:
- Open Issues:
- Next Action:
- Resume Notes:
```

## 11. Interpretation Rule

If there is any mismatch between:

- feature markdown narrative
- machine state in `ai-context.json`

the machine state in `ai-context.json` wins.

The markdown should then be updated to align with the machine state, not the other way around.

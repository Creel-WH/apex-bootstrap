# Lanhu-Driven APEX Feature Workflow

## Goal

This workflow defines how to implement an Oracle APEX feature from a Lanhu
design or prototype by using `lanhu-mcp` as the design source and
`apex-bootstrap` as the repository execution workflow.

The goal is not only to make the feature work, but also to restore the design
as closely as practical within the target APEX application's constraints.

## When To Use This Workflow

Use this workflow when all of the following are true:

- the request starts from a Lanhu design, prototype, or interaction flow
- the target is an existing APEX application in this repository
- the work changes page UI, interaction behavior, or both

Do not use this workflow for:

- generic Lanhu usage questions
- generic APEX styling questions outside this repository workflow
- app-to-app migration work where the primary task is copy-and-adapt

## Required Inputs

Before execution, confirm these inputs:

- `lanhu_link` or an equivalent Lanhu node identifier
- `env_alias`
- `APP_ID`
- `app_code`
- business goal
- acceptance criteria

Optional but helpful inputs:

- target `PAGE_ID`
- desktop or mobile scope
- supported browsers or device constraints
- any known APEX component constraints

## Preconditions

The workflow assumes:

- `lanhu-mcp` is installed and callable in the current agent environment
- the target Lanhu project is accessible
- the target environment passes `tools/apex_ai.sh check <env_alias> --deep`
- the target application already exists under `export/<env_alias>/f<APP_ID>/`

If `lanhu-mcp` is unavailable, stop treating Lanhu as a machine-readable source
and fall back to manually supplied screenshots, annotations, and interaction
notes.

## Codex MCP Setup

This repository does not bundle `lanhu-mcp`.

On this machine, the active Codex MCP config file is:

`C:\Users\liwh\.codex\config.toml`

At the time this workflow was written, that file already contained MCP server
entries such as `node_repl`, but no `lanhu` entry yet.

### 1. Clone `lanhu-mcp`

Recommended upstream:

- `https://github.com/dsphper/lanhu-mcp`

Suggested local path on Windows:

- `C:\Users\liwh\.codex\vendor_imports\lanhu-mcp`

### 2. Run the upstream installer

The upstream project documents a Windows bootstrap path with:

- `easy-install.bat` for source install
- `setup-env.bat` for environment setup

This step is expected to:

- install Python dependencies
- install Playwright Chromium if needed
- guide the user to capture and save Lanhu Cookie data
- generate the local `.env`

Keep all Lanhu credentials local. Do not copy Cookie values into this
repository.

### 3. Register the MCP server in Codex

Add a new MCP server block to `C:\Users\liwh\.codex\config.toml`.

Recommended stdio configuration:

```toml
[mcp_servers.lanhu]
command = "C:\\Users\\liwh\\AppData\\Local\\Programs\\Git\\bin\\bash.exe"
args = [
  "C:\\Users\\liwh\\.codex\\vendor_imports\\lanhu-mcp\\run-stdio.sh"
]
startup_timeout_sec = 120
```

If Git Bash is not available, use the upstream Windows launcher if the project
provides one and keep the server in stdio mode.

### 4. Restart Codex

After saving `config.toml`, restart the Codex desktop app so the new MCP server
is loaded into the session tool list.

### 5. Validate the MCP wiring

Before using the feature workflow, validate the integration with a small prompt,
for example:

- "Use Lanhu MCP to read this Lanhu page and list available artboards."
- "Use Lanhu MCP to fetch the layout, colors, spacing, and assets for this page."

If the tool is wired correctly, the session should expose a callable Lanhu tool
instead of forcing manual screenshots.

### 6. Use it inside the APEX workflow

Once the MCP server is available, the execution pattern becomes:

1. collect the Lanhu source through `lanhu-mcp`
2. convert the design into impacted pages and DB objects
3. create the feature file
4. run the normal `apex-bootstrap` Gate A and Gate B confirmations
5. implement, deploy, and verify against the Lanhu source

## Standard Flow

### 1. Confirm the workflow boundary

Route the request as `discussion-only` first, then confirm:

- Lanhu source boundary
- target `env_alias`
- target `APP_ID`
- target `app_code`
- business goal

If execution will continue into a feature slice, the repository still requires
the normal confirmation gates before implementation starts.

### 2. Extract the design source from Lanhu

Use `lanhu-mcp` to collect the smallest useful design evidence set:

- target page or prototype screenshots
- layout structure
- spacing, typography, and color values
- icons, images, and static assets
- interaction notes
- state variants such as empty, loading, hover, selected, disabled, and modal

Do not start implementing from a single screenshot if the prototype also
contains interaction or state details.

### 3. Freeze the implementation boundary

Translate the Lanhu design into repository scope:

- impacted APEX pages
- impacted shared components
- impacted static files
- impacted DB objects, if any

Separate visual restoration from behavior changes. A design-led request often
contains both, and they should be made explicit before execution.

### 4. Create the feature file

Create the canonical feature file at:

`export/<env_alias>/f<APP_ID>/docs/YYYY-MM-DD-<feature-slug>.md`

The feature file must be self-contained and include:

- Lanhu source reference
- business goal
- acceptance criteria
- impacted pages
- impacted DB objects
- design-to-APEX mapping notes
- verification plan

### 5. Gate A: confirm feature entry

Before entering the executable feature lane, confirm:

- this is a `feature slice`
- the correct `env_alias`
- the correct `APP_ID`
- the correct `app_code`
- the intended Lanhu source

### 6. Analyze the implementation surface

Inspect the target application's existing assets and identify:

- current page layout and template choices
- existing CSS or static-file hooks
- reusable regions, items, buttons, and dynamic actions
- shared components that should be reused instead of duplicated
- DB dependencies needed for the designed behavior

Prefer the smallest change that can reproduce the required UI and behavior.

### 7. Gate B: confirm impacted pages and DB objects

Confirm only the execution boundary:

- impacted pages
- impacted DB objects

After Gate B is confirmed, the agent can continue autonomously inside the
approved scope.

### 8. Create a design-to-APEX mapping

Map each important design element to a concrete implementation choice:

- layout area -> APEX page, region, or template structure
- typography -> theme token, utility class, or page CSS
- spacing -> grid, region template, or scoped CSS
- button and form states -> item, button, dynamic action, or JavaScript hook
- imagery and icons -> static application files
- modal, tab, or drawer behavior -> native APEX component or minimal custom code

Record any accepted deviations caused by APEX constraints.

### 9. Implement database changes first when behavior depends on them

If the design requires new behavior backed by database logic:

- update `export/<env_alias>/f<APP_ID>/db/`
- keep object ownership inside the target application boundary
- keep DDL idempotent
- follow Oracle guardrails for exception handling and diagnosability

### 10. Implement the APEX page changes

Apply the page changes in the target application's APEX source of truth.

Typical changes may include:

- page regions
- item layout
- button groups
- dynamic actions
- page processes
- shared LOVs
- authorization usage
- static files and page CSS

If page behavior changes, update the matching page document under
`export/<env_alias>/f<APP_ID>/docs/pages/`.

### 11. Sync Supporting Objects

After database source changes are verified, sync the target application's APEX
Supporting Objects from the repository DB source so later single-file exports
remain aligned.

### 12. Deploy to the target environment

Use the repository's canonical workflow to import or deploy the changed assets.
Avoid ad hoc deployment paths when `tools/apex_ai.sh` already provides the
correct lane.

### 13. Run visual and functional verification

At minimum, run:

- smoke validation for page availability and obvious UI regressions
- at least one real business-flow browser-functional validation

Visual verification should compare the implemented page against the Lanhu
source for:

- layout
- spacing
- typography
- colors
- borders and radii
- button states
- forms
- empty states
- modal states
- list or table states

### 14. Close the gap

If the page is functionally correct but visually off, iterate until the
remaining differences are either:

- fixed
- intentionally accepted
- blocked by explicit APEX constraints

Do not claim "implemented from design" if the remaining visual gap is still
unknown.

### 15. Complete the task

The task is complete only when:

- required docs are updated
- the feature file reflects the final scope and evidence
- verification evidence exists
- `ai-context.json` reports `current_task.status == "DONE"`

## Design Fidelity Rules

When restoring a Lanhu design into APEX:

- prefer matching the existing application's structure over forcing a brittle
  pixel-perfect clone
- be strict on hierarchy, spacing rhythm, control states, and visual emphasis
- reuse existing shared components when they can achieve the design cleanly
- use scoped CSS and minimal JavaScript before introducing larger custom layers
- explicitly document any gap that is accepted because of native APEX limits

## Suggested Verification Checklist

- Lanhu source is linked in the feature file
- all affected pages are listed
- all affected DB objects are listed
- static assets are tracked in the application source
- page docs are updated when behavior changed
- Supporting Objects were synced after DB changes
- smoke validation was run
- browser-functional validation was run
- remaining design deviations are documented
- `ai-context.json` is at `DONE`

## Reusable Intake Template

Use this as the minimum intake block before starting a Lanhu-driven feature:

```md
## Lanhu Intake

- Lanhu link:
- Lanhu node/page:
- env_alias:
- APP_ID:
- app_code:
- target PAGE_ID:
- business goal:
- acceptance criteria:
- visual scope:
- behavior scope:
- affected states:
- known DB impact:
```

## Reusable Feature File Template

Use this inside
`export/<env_alias>/f<APP_ID>/docs/YYYY-MM-DD-<feature-slug>.md`.

```md
# <feature title>

## Context

- Date:
- Request source:
- Lanhu link:
- Lanhu node/page:
- env_alias:
- APP_ID:
- app_code:

## Business Goal

<one short paragraph>

## Acceptance Criteria

- ...
- ...

## Scope

- impacted pages:
- impacted shared components:
- impacted static files:
- impacted DB objects:

## Design Notes

- key layout:
- typography:
- spacing:
- colors:
- states:
- interaction notes:

## Design-To-APEX Mapping

- Lanhu element:
  - APEX implementation:
  - notes:

## Implementation Plan

1. [step] -> verification: [check]
2. [step] -> verification: [check]
3. [step] -> verification: [check]

## Verification Evidence

- smoke:
- browser-functional:
- DB verification:

## Accepted Deviations

- ...

## Changed Assets

- pages:
- DB objects:
- docs:
- static files:

## Final Status

- current_task.status:
- completion notes:
```

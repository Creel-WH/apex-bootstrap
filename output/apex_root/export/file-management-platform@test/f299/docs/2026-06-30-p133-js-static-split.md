# P133 JS Static Split

## Goal

- Reduce P133 page-level inline JavaScript size and mixed responsibilities.
- Keep current file library behavior unchanged: permissions, navigation, actions, list/grid switching, selection sync, and drag sorting.
- Scope is f299 P133 only.

## Changes

- Moved P133 helper JavaScript into app static file `static/js/p133-file-library.js`.
- Kept P133 page inline JavaScript as a thin bootstrap: helper file reference plus `p133InitPage()`.
- Grouped helper code into `state`, `actions`, `navigation`, `views`, and `dragSort` sections.
- Replaced the long IG selection Dynamic Action body with `p133HandleIgSelectionChange(this.data)`.
- Removed simulated hidden-button click reuse from legacy `btnClick(...)`; migrated known actions call `p133RunSingleAction(...)`.
- Added Remix Icon static files and the P133 JS static file to `install.sql` so full app imports carry required static resources.

## Validation

- Static JS decoded from the APEX app static file SQL and passed `node --check`.
- Static grep confirmed no `p133RunAction` / `p133RunActionImpl` and no old `$('#btn_' + name).click()` reuse.
- P133 page export now references `#APP_FILES#static/js/p133-file-library.js`.

## Impacted Assets

- Page: P133 only.
- Static file: `static/js/p133-file-library.js`.
- Database objects: none.

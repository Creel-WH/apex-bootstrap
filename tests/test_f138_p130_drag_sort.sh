#!/usr/bin/env bash
set -euo pipefail

PAGE="export/sales-tools@test/f138/apex/f138/application/pages/page_00130.sql"

if ! grep -Fq "processName: \"SAVE_FILE_LIBRARY_ORDER\"" "${PAGE}"; then
  echo "expected P130 drag sort JS to call SAVE_FILE_LIBRARY_ORDER" >&2
  exit 1
fi

if ! grep -Fq "ORDER BY NVL(A.SORT_NUM, 999999), A.FILE_ID" "${PAGE}"; then
  echo "expected P130 list query to default-sort by SORT_NUM then FILE_ID" >&2
  exit 1
fi

if ! grep -Fq ",p_name=>'SORT_NUM'" "${PAGE}"; then
  echo "expected P130 to expose SORT_NUM as an IG column" >&2
  exit 1
fi

if ! grep -Fq ".task-sort-cell {" "${PAGE}"; then
  echo "expected P130 inline CSS to include drag handle styling" >&2
  exit 1
fi

if ! grep -Fq "function scheduleTaskGridDragDropInit(attempt) {" "${PAGE}"; then
  echo "expected P130 drag sort JS to include delayed rebind init helper" >&2
  exit 1
fi

if ! grep -Fq "function getTaskDataRows(rowContainer$) {" "${PAGE}"; then
  echo "expected P130 drag sort JS to scope drag rows to real data rows" >&2
  exit 1
fi

if ! grep -Fq ",p_process_name=>'SAVE_FILE_LIBRARY_ORDER'" "${PAGE}"; then
  echo "expected P130 to define SAVE_FILE_LIBRARY_ORDER on-demand process" >&2
  exit 1
fi

if ! grep -Fq "and file_level = 1" "${PAGE}"; then
  echo "expected P130 drag sort save process to scope updates to top-level libraries" >&2
  exit 1
fi

printf 'f138 P130 drag sort structure test passed\n'

prompt --application/pages/page_00130
begin
--   Manifest
--     PAGE: 00130
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>130
,p_name=>unistr('\6587\4EF6\5E93')
,p_alias=>unistr('\6587\4EF6\5E931')
,p_step_title=>unistr('\6587\4EF6\5E93')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664\3001\7BA1\7406'),
'var taskDragConfig = {',
'    regionStaticId: "content",',
'    idColumn: "FILE_ID",',
'    handleColumn: "SORT_NUM",',
'    processName: "SAVE_FILE_LIBRARY_ORDER",',
'    pageItems: "",',
'    roleItem: "P130_ROLE_CODE",',
'    rebindDelay: 250,',
'    rebindAttempts: 8',
'};',
'',
'function btnClick(name, objId) {',
'    $s(''P130_FILE_ID'', objId);',
'    $(''#btn_'' + name).click();',
'}',
'',
'function syncP130GridState() {',
'    var region = apex.region(taskDragConfig.regionStaticId);',
'    var shouldShowOperate;',
'    var isOperateVisible;',
'    var views;',
'',
'    if (!region) {',
'        return false;',
'    }',
'',
'    views = region.call("getViews");',
'    if (!views || !views.grid || !views.grid.view$) {',
'        return false;',
'    }',
'',
'    shouldShowOperate = $v(taskDragConfig.roleItem) !== "VIEW_REPORT";',
'    isOperateVisible = region.element.find(''th[data-column="OPERATE"]:visible'').length > 0;',
'',
'    if (shouldShowOperate === isOperateVisible) {',
'        return false;',
'    }',
'',
'    if (shouldShowOperate) {',
'        views.grid.view$.grid("showColumn", "OPERATE");',
'    } else {',
'        views.grid.view$.grid("hideColumn", "OPERATE");',
'    }',
'',
'    return true;',
'}',
'',
'function scheduleTaskGridDragDropInit(attempt) {',
'    var nextAttempt = attempt || 0;',
'',
'    window.clearTimeout(window._p130TaskSortTimer);',
'    window._p130TaskSortTimer = window.setTimeout(function () {',
'        if (window._p130TaskSortDragging) {',
'            window._p130TaskSortPendingRebind = true;',
'            return;',
'        }',
'',
'        initTaskGridDragDrop(nextAttempt);',
'    }, taskDragConfig.rebindDelay);',
'}',
'',
'function initTaskGridDragDrop(attempt) {',
'    var config = taskDragConfig;',
'    var currentAttempt = attempt || 0;',
'    var region = apex.region(config.regionStaticId);',
'    var views;',
'    var gridView;',
'    var grid$;',
'    var gridContainers;',
'    var rowContainer$;',
'    var dataRows$;',
'',
'    syncP130GridState();',
'',
'    if (window._p130TaskSortDragging) {',
'        window._p130TaskSortPendingRebind = true;',
'        return;',
'    }',
'',
'    if ($v(config.roleItem) === "VIEW_REPORT") {',
'        return;',
'    }',
'',
'    if (!region) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            scheduleTaskGridDragDropInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    views = region.call("getViews");',
'    if (!views || !views.grid || !views.grid.view$) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            scheduleTaskGridDragDropInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    gridView = views.grid;',
'    grid$ = gridView.view$;',
'    gridContainers = getTaskGridContainers(region, grid$, config.handleColumn);',
'    rowContainer$ = gridContainers.mainBody$;',
'',
'    if (!rowContainer$.length) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            scheduleTaskGridDragDropInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    dataRows$ = getTaskDataRows(rowContainer$);',
'',
'    if (!dataRows$.length) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            scheduleTaskGridDragDropInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    if (!gridContainers.mirrorRowsReady) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            scheduleTaskGridDragDropInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    decorateTaskDragHandles(region, grid$, rowContainer$, config.handleColumn);',
'    bindTaskGridNativeDnd(region, gridView, grid$, gridContainers, config);',
'',
'    region.element.off("apexafterrefresh.taskSort").on("apexafterrefresh.taskSort", function () {',
'        window.setTimeout(function () {',
'            syncP130GridState();',
'            scheduleTaskGridDragDropInit(0);',
'        }, config.rebindDelay);',
'    });',
'',
'    grid$.off("gridpagechange.taskSort").on("gridpagechange.taskSort", function () {',
'        scheduleTaskGridDragDropInit(0);',
'    });',
'}',
'',
'function getTaskDataRows(rowContainer$) {',
'    return rowContainer$.children("tr.a-GV-row").filter(function () {',
'        return !!(this.getAttribute("data-id") || this.getAttribute("data-row-id"));',
'    });',
'}',
'',
'function getTaskRowId(rowEl) {',
'    if (!rowEl) {',
'        return "";',
'    }',
'',
'    return String(rowEl.getAttribute("data-id") || rowEl.getAttribute("data-row-id") || "");',
'}',
'',
'function findTaskRowById(rowContainer$, rowId) {',
'    var match$;',
'',
'    if (!rowId) {',
'        return null;',
'    }',
'',
'    match$ = getTaskDataRows(rowContainer$).filter(function () {',
'        return (this.getAttribute("data-id") || this.getAttribute("data-row-id")) === rowId;',
'    }).first();',
'',
'    return match$.length ? match$.get(0) : null;',
'}',
'',
'function getTaskHandleCellSelector(region, grid$, handleColumn) {',
'    var header$ = region.element.find(''th[data-column="'' + handleColumn + ''"]'').first();',
'    var headerId;',
'    var columnIndex;',
'',
'    if (!header$.length) {',
'        header$ = region.element.find("th").filter(function () {',
unistr('            return apex.jQuery(this).text().replace(/\005C\005Cs+/g, "") === "\6392\5E8F";'),
'        }).first();',
'    }',
'',
'    if (header$.length) {',
'        headerId = header$.attr("id");',
'        if (headerId) {',
'            return ''td[headers*="'' + headerId + ''"]'';',
'        }',
'',
'        columnIndex = header$.index() + 1;',
'        if (columnIndex > 0) {',
'            return ''td:nth-child('' + columnIndex + '')'';',
'        }',
'    }',
'',
'    return ''td:nth-child(3)'';',
'}',
'',
'function getTaskGridContainers(region, grid$, handleColumn) {',
'    var cellSelector = getTaskHandleCellSelector(region, grid$, handleColumn);',
'    var candidateBodies$ = apex.jQuery();',
'    var mainBody$ = apex.jQuery();',
'    var mirrorBodies = [];',
'    var mirrorBodies$ = apex.jQuery();',
'    var mainRowIds = [];',
'',
'    function isRenderedTaskBody(body$) {',
'        var bodyEl = body$.get(0);',
'        var paneEl = bodyEl && bodyEl.closest(".a-GV-w-scroll, .a-GV-w-frozen");',
'        var rect;',
'',
'        if (!bodyEl || !getTaskDataRows(body$).length) {',
'            return false;',
'        }',
'',
'        rect = paneEl ? paneEl.getBoundingClientRect() : bodyEl.getBoundingClientRect();',
'',
'        return !!(rect.width || rect.height || (paneEl || bodyEl).getClientRects().length);',
'    }',
'',
'    candidateBodies$ = grid$.find(".a-GV-w-scroll tbody, .a-GV-w-frozen tbody").filter(function () {',
'        return isRenderedTaskBody(apex.jQuery(this));',
'    });',
'',
'    mainBody$ = candidateBodies$.filter(function () {',
'        var body$ = apex.jQuery(this);',
'',
'        return !!this.closest(".a-GV-w-scroll") && body$.find(cellSelector).length > 0;',
'    }).first();',
'',
'    if (!mainBody$.length) {',
'        mainBody$ = candidateBodies$.filter(function () {',
'            return !!this.closest(".a-GV-w-scroll");',
'        }).first();',
'    }',
'',
'    if (!mainBody$.length) {',
'        mainBody$ = candidateBodies$.first();',
'    }',
'',
'    if (!mainBody$.length) {',
'        mainBody$ = grid$.find("tbody").filter(function () {',
'            return getTaskDataRows(apex.jQuery(this)).length > 0;',
'        }).first();',
'    }',
'',
'    if (mainBody$.length) {',
'        mainRowIds = collectTaskIds(getTaskDataRows(mainBody$));',
'    }',
'',
'    if (mainRowIds.length) {',
'        candidateBodies$.each(function () {',
'            var body$ = apex.jQuery(this);',
'            var bodyIds = collectTaskIds(getTaskDataRows(body$));',
'',
'            if (bodyIds.length === mainRowIds.length && bodyIds.join(",") === mainRowIds.join(",")) {',
'                mirrorBodies.push(this);',
'            }',
'        });',
'    }',
'',
'    if (!mirrorBodies.length && mainBody$.length) {',
'        mirrorBodies.push(mainBody$.get(0));',
'    }',
'',
'    mirrorBodies$ = apex.jQuery(mirrorBodies);',
'',
'    return {',
'        mainBody$: mainBody$,',
'        mirrorBodies$: mirrorBodies$,',
'        hasFrozenPane: mirrorBodies$.filter(function () {',
'            return !!this.closest(".a-GV-w-frozen");',
'        }).length > 0,',
'        mirrorRowsReady: !!mainRowIds.length && (!candidateBodies$.length || mirrorBodies$.length === candidateBodies$.length)',
'    };',
'}',
'',
'function decorateTaskDragHandles(region, grid$, rowContainer$, handleColumn) {',
'    var cellSelector = getTaskHandleCellSelector(region, grid$, handleColumn);',
'',
'    getTaskDataRows(rowContainer$).each(function () {',
'        var cell = this.querySelector(cellSelector);',
'',
'        if (!cell) {',
'            return;',
'        }',
'',
'        cell.classList.add("task-sort-cell");',
unistr('        cell.setAttribute("title", "\62D6\62FD\6392\5E8F");'),
'    });',
'}',
'',
'function bindTaskGridNativeDnd(region, gridView, grid$, gridContainers, config) {',
'    var rowContainer$ = gridContainers.mainBody$;',
'    var mirrorBodies$ = gridContainers.mirrorBodies$ && gridContainers.mirrorBodies$.length ? gridContainers.mirrorBodies$ : rowContainer$;',
'    var gridEl = grid$.get(0);',
'    var dragState = null;',
'',
'    function getVisibleTaskBodies() {',
'        return mirrorBodies$.filter(function () {',
'            return getTaskDataRows(apex.jQuery(this)).length > 0;',
'        });',
'    }',
'',
'    function getRowMirrors(rowId, bodies$) {',
'        var mirrors = [];',
'        var sourceBodies$ = bodies$ && bodies$.length ? bodies$ : getVisibleTaskBodies();',
'',
'        sourceBodies$.each(function () {',
'            var body$ = apex.jQuery(this);',
'            var rowEl = findTaskRowById(body$, rowId);',
'',
'            if (rowEl) {',
'                mirrors.push({',
'                    rowEl: rowEl,',
'                    body$: body$,',
'                    bodyEl: body$.get(0)',
'                });',
'            }',
'        });',
'',
'        mirrors.sort(function (a, b) {',
'            return a.rowEl.getBoundingClientRect().left - b.rowEl.getBoundingClientRect().left;',
'        });',
'',
'        return mirrors;',
'    }',
'',
'    function cleanupDrag() {',
'        if (!dragState) {',
'            window._p130TaskSortDragging = false;',
'            return;',
'        }',
'',
'        if (dragState.ghostEl && dragState.ghostEl.parentNode) {',
'            dragState.ghostEl.parentNode.removeChild(dragState.ghostEl);',
'        }',
'',
'        dragState.mirrors.forEach(function (mirror) {',
'            mirror.rowEl.classList.remove("is-dragging");',
'        });',
'',
'        dragState.dropTargetRows.forEach(function (rowEl) {',
'            rowEl.classList.remove("is-drop-target");',
'        });',
'',
'        document.removeEventListener("mousemove", onMouseMove);',
'        document.removeEventListener("mouseup", onMouseUp);',
'        window._p130TaskSortDragging = false;',
'        dragState = null;',
'',
'        if (window._p130TaskSortPendingRebind) {',
'            window._p130TaskSortPendingRebind = false;',
'            scheduleTaskGridDragDropInit(0);',
'        }',
'    }',
'',
'    function setDropTarget(rowId) {',
'        var nextDropTargetRows = rowId ? getRowMirrors(rowId).map(function (mirror) {',
'            return mirror.rowEl;',
'        }) : [];',
'        var isSameTarget = dragState.dropTargetRows.length === nextDropTargetRows.length;',
'',
'        if (isSameTarget) {',
'            isSameTarget = dragState.dropTargetRows.every(function (rowEl, index) {',
'                return rowEl === nextDropTargetRows[index];',
'            });',
'        }',
'',
'        if (isSameTarget) {',
'            return;',
'        }',
'',
'        dragState.dropTargetRows.forEach(function (rowEl) {',
'            rowEl.classList.remove("is-drop-target");',
'        });',
'',
'        dragState.dropTargetRows = nextDropTargetRows;',
'',
'        dragState.dropTargetRows.forEach(function (rowEl) {',
'            rowEl.classList.add("is-drop-target");',
'        });',
'    }',
'',
'    function buildGhost(mirrors) {',
'        var ghostWidth = 0;',
'        var rowHeight = 44;',
'        var ghostEl = document.createElement("div");',
'        var ghostTableEl = document.createElement("table");',
'        var ghostBodyEl = document.createElement("tbody");',
'        var ghostRowEl = document.createElement("tr");',
'',
'        function appendGhostCells(sourceRowEl) {',
'            Array.prototype.forEach.call(sourceRowEl.children, function (cellEl) {',
'                var ghostCellEl = cellEl.cloneNode(true);',
'                var cellRect = cellEl.getBoundingClientRect();',
'                var cellWidth = Math.max(cellRect.width, cellEl.offsetWidth, 24);',
'',
'                ghostWidth += cellWidth;',
'                ghostCellEl.style.width = cellWidth + "px";',
'                ghostCellEl.style.minWidth = cellWidth + "px";',
'                ghostCellEl.style.maxWidth = cellWidth + "px";',
'                ghostCellEl.style.height = Math.max(cellRect.height, rowHeight) + "px";',
'                ghostCellEl.style.display = "table-cell";',
'                ghostRowEl.appendChild(ghostCellEl);',
'            });',
'        }',
'',
'        ghostEl.className = "task-drag-ghost";',
'        ghostTableEl.className = "task-drag-ghost-table";',
'',
'        mirrors.forEach(function (mirror) {',
'            var rowRect = mirror.rowEl.getBoundingClientRect();',
'',
'            rowHeight = Math.max(rowHeight, rowRect.height, mirror.rowEl.offsetHeight);',
'        });',
'',
'        ghostRowEl.style.height = rowHeight + "px";',
'        ghostRowEl.style.display = "table-row";',
'',
'        mirrors.forEach(function (mirror) {',
'            appendGhostCells(mirror.rowEl);',
'        });',
'',
'        ghostWidth = Math.max(ghostWidth, 480);',
'        ghostEl.style.width = ghostWidth + "px";',
'        ghostTableEl.style.width = ghostWidth + "px";',
'        ghostTableEl.style.minWidth = ghostWidth + "px";',
'',
'        ghostBodyEl.appendChild(ghostRowEl);',
'        ghostTableEl.appendChild(ghostBodyEl);',
'        ghostEl.appendChild(ghostTableEl);',
'        document.body.appendChild(ghostEl);',
'        return ghostEl;',
'    }',
'',
'    function updateGhostPosition(event) {',
'        if (!dragState.ghostEl) {',
'            return;',
'        }',
'',
'        dragState.ghostEl.style.left = event.clientX + 12 + "px";',
'        dragState.ghostEl.style.top = event.clientY + 12 + "px";',
'    }',
'',
'    function onMouseMove(event) {',
'        var pointerEl;',
'        var hoveredRowEl;',
'        var hoveredRowId;',
'        var targetRowEl;',
'        var targetRect;',
'        var insertBeforeEl;',
'        var insertBeforeId;',
'        var markerRowId;',
'',
'        if (!dragState) {',
'            return;',
'        }',
'',
'        if (!dragState.started) {',
'            if (Math.abs(event.clientX - dragState.startX) + Math.abs(event.clientY - dragState.startY) < 5) {',
'                return;',
'            }',
'',
'            dragState.started = true;',
'            dragState.mirrors.forEach(function (mirror) {',
'                mirror.rowEl.classList.add("is-dragging");',
'            });',
'',
'            dragState.ghostEl = buildGhost(dragState.mirrors);',
'        }',
'',
'        updateGhostPosition(event);',
'        pointerEl = document.elementFromPoint(event.clientX, event.clientY);',
'        hoveredRowEl = pointerEl && pointerEl.closest("tr.a-GV-row[data-id], tr.a-GV-row[data-row-id]");',
'        hoveredRowId = hoveredRowEl && (hoveredRowEl.getAttribute("data-id") || hoveredRowEl.getAttribute("data-row-id"));',
'        targetRowEl = findTaskRowById(dragState.orderBody$, hoveredRowId);',
'',
'        if (!targetRowEl || targetRowEl === dragState.primaryRowEl || !dragState.orderBodyEl.contains(targetRowEl)) {',
'            setDropTarget("");',
'            return;',
'        }',
'',
'        targetRect = hoveredRowEl.getBoundingClientRect();',
'',
'        if (event.clientY < (targetRect.top + targetRect.height / 2)) {',
'            insertBeforeEl = targetRowEl;',
'            markerRowId = hoveredRowId;',
'        } else {',
'            insertBeforeEl = targetRowEl.nextElementSibling;',
'            markerRowId = getTaskRowId(insertBeforeEl) || hoveredRowId;',
'        }',
'',
'        if (insertBeforeEl !== dragState.primaryRowEl) {',
'            insertBeforeId = getTaskRowId(insertBeforeEl);',
'',
'            dragState.mirrors.forEach(function (mirror) {',
'                var insertBeforeMirrorEl = insertBeforeId ? findTaskRowById(mirror.body$, insertBeforeId) : null;',
'',
'                if (insertBeforeMirrorEl !== mirror.rowEl) {',
'                    mirror.bodyEl.insertBefore(mirror.rowEl, insertBeforeMirrorEl);',
'                }',
'            });',
'        }',
'',
'        setDropTarget(markerRowId);',
'    }',
'',
'    function onMouseUp() {',
'        var currentTaskIds;',
'        var changed;',
'',
'        if (!dragState) {',
'            return;',
'        }',
'',
'        if (dragState.started) {',
'            currentTaskIds = collectTaskIds(getTaskDataRows(dragState.orderBody$));',
'            changed = currentTaskIds.join(",") !== dragState.originalTaskIds.join(",");',
'',
'            if (changed) {',
'                saveTaskOrder(region, gridView, grid$, dragState.orderBody$, dragState.originalTaskIds, currentTaskIds, config);',
'            }',
'        }',
'',
'        cleanupDrag();',
'    }',
'',
'    function onMouseDown(event) {',
'        var handleEl = event.target.closest(".js-task-drag-handle, .task-sort-cell");',
'        var clickedRowEl;',
'        var clickedRowId;',
'        var visibleBodies$;',
'        var rowMirrors;',
'        var orderBody$;',
'        var orderBodyEl;',
'        var rowEl;',
'',
'        if (event.button !== 0 || !handleEl) {',
'            return;',
'        }',
'',
'        clickedRowEl = event.target.closest("tr.a-GV-row[data-id], tr.a-GV-row[data-row-id]");',
'        clickedRowId = clickedRowEl && (clickedRowEl.getAttribute("data-id") || clickedRowEl.getAttribute("data-row-id"));',
'        visibleBodies$ = getVisibleTaskBodies();',
'        rowMirrors = clickedRowId ? getRowMirrors(clickedRowId, visibleBodies$) : [];',
'',
'        if (mirrorBodies$.length > rowMirrors.length) {',
'            rowMirrors = clickedRowId ? getRowMirrors(clickedRowId, mirrorBodies$) : rowMirrors;',
'        }',
'        orderBody$ = rowContainer$;',
'        orderBodyEl = orderBody$.length ? orderBody$.get(0) : null;',
'        rowEl = clickedRowId ? findTaskRowById(orderBody$, clickedRowId) : null;',
'',
'        if (!clickedRowId || !rowEl || !orderBodyEl || !orderBodyEl.contains(rowEl) || !rowMirrors.length) {',
'            return;',
'        }',
'',
'        event.preventDefault();',
'        window.clearTimeout(window._p130TaskSortTimer);',
'        window._p130TaskSortPendingRebind = false;',
'        cleanupDrag();',
'        window._p130TaskSortDragging = true;',
'',
'        dragState = {',
'            startX: event.clientX,',
'            startY: event.clientY,',
'            primaryRowEl: rowEl,',
'            orderBody$: orderBody$,',
'            orderBodyEl: orderBodyEl,',
'            mirrors: rowMirrors,',
'            ghostEl: null,',
'            dropTargetRows: [],',
'            started: false,',
'            originalTaskIds: collectTaskIds(getTaskDataRows(orderBody$))',
'        };',
'',
'        document.addEventListener("mousemove", onMouseMove);',
'        document.addEventListener("mouseup", onMouseUp);',
'    }',
'',
'    if (!gridEl) {',
'        return;',
'    }',
'',
'    if (gridEl._taskSortCleanup) {',
'        gridEl._taskSortCleanup();',
'    }',
'',
'    gridEl.addEventListener("mousedown", onMouseDown);',
'    gridEl._taskSortCleanup = function () {',
'        gridEl.removeEventListener("mousedown", onMouseDown);',
'        cleanupDrag();',
'    };',
'}',
'',
'function collectTaskIds(rows$) {',
'    var ids = [];',
'    var rowId;',
'',
'    rows$.each(function () {',
'        rowId = this.getAttribute("data-id") || this.getAttribute("data-row-id");',
'',
'        if (rowId) {',
'            ids.push(String(rowId));',
'        }',
'    });',
'',
'    return ids;',
'}',
'',
'function normalizeTaskSortResponse(responseText) {',
'    var payload = responseText;',
'    var jsonStart;',
'',
'    if (payload && typeof payload !== "string") {',
'        return payload;',
'    }',
'',
'    payload = payload || "";',
'',
'    try {',
'        return payload ? JSON.parse(payload) : {};',
'    } catch (ignoreError) {',
'        jsonStart = payload.lastIndexOf("{");',
'        if (jsonStart >= 0) {',
'            try {',
'                return JSON.parse(payload.slice(jsonStart));',
'            } catch (ignoreNestedError) {',
'            }',
'        }',
'    }',
'',
'    return {',
'        status: "error",',
unistr('        message: payload || "\6392\5E8F\4FDD\5B58\5931\8D25\FF0C\672A\6536\5230\6709\6548\54CD\5E94\3002"'),
'    };',
'}',
'',
'function getTaskSortErrorMessage(jqXHR, textStatus, errorThrown) {',
'    var payload = normalizeTaskSortResponse(jqXHR && jqXHR.responseText);',
'',
'    if (payload && payload.message) {',
'        return payload.message;',
'    }',
'',
unistr('    return errorThrown || textStatus || "\6392\5E8F\4FDD\5B58\5931\8D25\3002";'),
'}',
'',
'function saveTaskOrder(region, gridView, grid$, rowContainer$, originalTaskIds, currentTaskIds, config) {',
'    var pageInfo = grid$.grid("getPageInfo") || {};',
'',
'    apex.server.process(config.processName, {',
'        x01: String(pageInfo.offset || 0),',
'        f01: currentTaskIds,',
'        f02: originalTaskIds',
'    }, {',
'        dataType: "text",',
'        pageItems: config.pageItems,',
'        success: function (responseText) {',
'            var response = normalizeTaskSortResponse(responseText);',
'',
'            if (response && response.status && response.status !== "success") {',
unistr('                apex.message.alert(response.message || "\6392\5E8F\4FDD\5B58\5931\8D25\3002");'),
'                region.refresh();',
'                return;',
'            }',
'',
unistr('            apex.message.showPageSuccess("\6392\5E8F\5DF2\4FDD\5B58\3002");'),
'            region.refresh();',
'        },',
'        error: function (jqXHR, textStatus, errorThrown) {',
'            var message = getTaskSortErrorMessage(jqXHR, textStatus, errorThrown);',
'',
'            if (window.console && console.error) {',
'                console.error("Failed to save sort order.", jqXHR && jqXHR.responseText);',
'            }',
'',
'            apex.message.alert(message);',
'            region.refresh();',
'        }',
'    });',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'syncP130GridState();',
'scheduleTaskGridDragDropInit(0);',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn {',
'    display: none;',
'}',
'.is_modify_0  {',
'    display: none;',
'}',
'.task-sort-cell {',
'    white-space: nowrap;',
'    cursor: grab;',
'    user-select: none;',
'}',
'.task-sort-cell:active {',
'    cursor: grabbing;',
'}',
'.a-GV-row.is-dragging {',
'    opacity: .45;',
'}',
'.a-GV-row.is-drop-target > td {',
'    border-top: 2px solid #2f73d9 !important;',
'}',
'.task-drag-ghost {',
'    position: fixed;',
'    pointer-events: none;',
'    z-index: 9999;',
'    opacity: .92;',
'    background: #f7fbff;',
'    border: 2px solid #2f73d9;',
'    border-radius: 6px;',
'    box-shadow: 0 10px 24px rgba(0, 0, 0, .22);',
'    overflow: hidden;',
'}',
'.task-drag-ghost-table {',
'    width: 100%;',
'    table-layout: fixed;',
'    border-collapse: collapse;',
'    background: #f7fbff;',
'}',
'.task-drag-ghost-table th,',
'.task-drag-ghost-table td {',
'    box-sizing: border-box;',
'    background: #f7fbff !important;',
'    vertical-align: middle;',
'    white-space: nowrap;',
'    writing-mode: horizontal-tb !important;',
'    text-orientation: mixed !important;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'.task-sort-cell input,',
'.task-sort-cell .a-GV-columnItem {',
'    cursor: inherit !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3797017479285235672)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10249505214628239653)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(10249683292328239770)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3797018051951235706)
,p_plug_name=>unistr('\6587\4EF6\5E93')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249598671653239718)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH FILE_QUANTITY AS (SELECT ROOT_FOLDER_ID, COUNT(FILE_ID) FILE_COUNT',
'                       FROM (',
'                                SELECT FILE_ID,',
'                                       ROOT_FOLDER_ID,',
'                                       PARENT_FOLDER_ID,',
'                                       FILE_NAME,',
'                                       FILE_TYPE',
'                                FROM STS_FILE',
'                                WHERE TENANT_ID = :USER_TENANT',
'                                  AND DEL_FLAG = 0',
'                                START WITH ROOT_FOLDER_ID IS NULL',
'                                CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                                       AND DEL_FLAG = 0',
'                            )',
'                       WHERE FILE_TYPE = ''FILE''',
'                       GROUP BY ROOT_FOLDER_ID)',
'SELECT A.FILE_ID,',
'       A.SORT_NUM,',
'       A.FILE_NAME,',
'       NVL((SELECT FILE_COUNT',
'        FROM FILE_QUANTITY B',
'        WHERE A.FILE_ID = B.ROOT_FOLDER_ID),0) FILE_COUNT,',
'       A.CREATION_DATE,',
'       '''' AS                                OPERATE,',
'       FILE_PATH,',
'       DECODE(:ROLE_CODE, ''VIEW_REPORT'', 0, ''SYSTEM_ADMIN'', 1, ''SUPER_ADMIN'', 1, (select COUNT(1)',
'                                                                                  from (select RANGE_TYPE, RANGE_ID',
'                                                                                        from STS_SCOPE F',
'                                                                                        where F.REFERENCE_TYPE = ''FILE''',
'                                                                                          and F.PERMISSIONS_TYPE = ''MANAGE''',
'                                                                                          AND A.FILE_ID = F.REFERENCE_ID) C',
'                                                                                           left join BASIC_JA_DING_DEPT_USER D',
'                                                                                                     on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
'                                                                                  where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))) IS_HIDE',
'FROM STS_FILE A',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND A.DEL_FLAG = 0',
'  AND A.FILE_LEVEL = 1',
'  AND (A.FILE_NAME LIKE ''%'' || :P130_FILE_NAME || ''%'' OR NVL(:P130_FILE_NAME, ''ALL'') = ''ALL'')',
'  AND (:ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN'' OR :ROLE_CODE = ''VIEW_REPORT'' OR',
'       A.SCOPE_TYPE = ''VIEW_DOWN'' OR A.SCOPE_TYPE = ''VIEW'' OR',
'       EXISTS(SELECT 1',
'              FROM (select RANGE_TYPE, RANGE_ID',
'                    from STS_SCOPE SE',
'                    where REFERENCE_TYPE = ''FILE''',
'                      AND A.FILE_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)))',
'ORDER BY NVL(A.SORT_NUM, 999999), A.FILE_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P130_FILE_NAME'
,p_prn_page_header=>unistr('\6587\4EF6\5E93')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3782151503519290799)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3782151578640290800)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797019328255235736)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9456066147402554238)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6392\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>35
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797020343310235751)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:133:P133_ROOT_FOLDER_ID,P133_FILE_ID,P133_PARENT_FOLDER_ID,P133_FILE_PATH,P133_FILE_NAME:&FILE_ID.,&FILE_ID.,&FILE_ID.,&FILE_PATH.,&FILE_NAME.'
,p_link_text=>'&FILE_NAME.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797021332938235752)
,p_name=>'FILE_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6587\4EF6\603B\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797023390014235758)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\521B\5EFA\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797024419113235759)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr(' \64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.''  onclick="btnClick(''delete'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''rename'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\91CD\547D\540D'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''multilingual'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\591A\8BED\8A00'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''settings'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\6743\9650\8BBE\7F6E'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''pigeonhole'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\9ED8\8BA4\5F52\6863\8BBE\7F6E'),
    '	</a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797501246429878913)
,p_name=>'FILE_PATH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_PATH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3797839187415677525)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3797018560173235707)
,p_internal_uid=>468347440895336212
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3797018971689235724)
,p_interactive_grid_id=>wwv_flow_imp.id(3797018560173235707)
,p_static_id=>'4683479'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3797019162584235727)
,p_report_id=>wwv_flow_imp.id(3797018971689235724)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797019722943235747)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3797019328255235736)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9456066147402554239)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(9456066147402554238)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797020813074235752)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3797020343310235751)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797021755618235752)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3797021332938235752)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797023767287235758)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3797023390014235758)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797024732885235759)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3797024419113235759)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797026567490371011)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3782151503519290799)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3797558467817175617)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3797501246429878913)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3798394412482445023)
,p_view_id=>wwv_flow_imp.id(3797019162584235727)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3797839187415677525)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3797503014073878930)
,p_plug_name=>unistr('\6309\94AE\53CA\72B6\6001')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249541851839239699)
,p_plug_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782151953553290804)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3797503014073878930)
,p_button_name=>unistr('\56DE\6536\7AD9')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\56DE\6536\7AD9')
,p_button_alignment=>'RIGHT'
,p_button_condition=>'ROLE_CODE'
,p_button_condition2=>'VIEW_REPORT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152067257290805)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3797503014073878930)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF :ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN'' OR  :ROLE_CODE =''FOLDER_REPORT'' THEN',
'        RETURN TRUE;',
'        ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1442974445096578035)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3797503014073878930)
,p_button_name=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(10249681790694239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152145343290806)
,p_button_sequence=>100
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152224949290807)
,p_button_sequence=>110
,p_button_name=>unistr('\91CD\547D\540D')
,p_button_static_id=>'btn_rename'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\91CD\547D\540D')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152332255290808)
,p_button_sequence=>120
,p_button_name=>unistr('\591A\8BED\8A00')
,p_button_static_id=>'btn_multilingual'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\591A\8BED\8A00')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152480646290809)
,p_button_sequence=>130
,p_button_name=>unistr('\6743\9650\8BBE\7F6E')
,p_button_static_id=>'btn_settings'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3782152564767290810)
,p_button_sequence=>140
,p_button_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_button_static_id=>'btn_pigeonhole'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3782155810661290842)
,p_branch_action=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3782152224949290807)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3797786996326265544)
,p_branch_name=>unistr('\591A\8BED\8A00-\8F6C\5230\9875 145')
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3782152332255290808)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3797787084238265545)
,p_branch_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 140')
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:140:P140_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3782152564767290810)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3797786830055265543)
,p_branch_name=>unistr('\56DE\6536\7AD9-\8F6C\5230\9875 149')
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_FILE_ID,P149_FILE_LEVEL:&P130_FILE_ID.,1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3782151953553290804)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3797502721854878928)
,p_branch_name=>unistr('\8F6C\5230\9875 138')
,p_branch_action=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:138:P138_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3782152480646290809)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1442975133802578042)
,p_branch_name=>unistr('\6587\4EF6\8FC1\79FB-\8F6C\5230\9875 154-\4F20\53C2\4F1A\5931\8D25')
,p_branch_action=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:154:P154_FILE_IDS:&P130_FILE_IDS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1442974445096578035)
,p_branch_sequence=>60
,p_required_patch=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1442974852356578039)
,p_name=>'P130_PAGE'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3782151843080290803)
,p_name=>'P130_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3797503014073878930)
,p_prompt=>unistr('\6587\4EF6\5E93')
,p_placeholder=>unistr('\8BF7\8F93\5165\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(10249679185703239764)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3782154238988290827)
,p_name=>'P130_FILE_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797785472606265529)
,p_name=>'P130_ROW_COUNT'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797785570841265530)
,p_name=>'P130_FILE_IDS'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797836524449677499)
,p_name=>'P130_ROLE_CODE'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3798630889348621600)
,p_name=>'P130_FILE_LEVEL'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3782154048510290825)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3782154179855290826)
,p_event_id=>wwv_flow_imp.id(3782154048510290825)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797503022290878931)
,p_name=>unistr('\6587\4EF6\7C7B\578B')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P130_FILE_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797503179108878932)
,p_event_id=>wwv_flow_imp.id(3797503022290878931)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797503225016878933)
,p_name=>unistr('\6587\4EF6\540D\79F0')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P130_FILE_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797503511518878935)
,p_event_id=>wwv_flow_imp.id(3797503225016878933)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797785067632265525)
,p_name=>unistr('\5220\9664\9009\4E2D\6587\4EF6\5230\56DE\6536\7AD9')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3782152145343290806)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797785190221265526)
,p_event_id=>wwv_flow_imp.id(3797785067632265525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P130_FILE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
'        return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797785275665265527)
,p_event_id=>wwv_flow_imp.id(3797785067632265525)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797785357974265528)
,p_event_id=>wwv_flow_imp.id(3797785067632265525)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count   number(10) := 0;',
'    /**',
'     * create by: wxx',
'     * create date:2025/5/23 15:55',
'     * modify by:',
'     * modify date:',
unistr('     * describe:p130 \6587\4EF6\5E93-\5220\9664\6570\636E\81F3\56DE\6536\7AD9'),
'     */',
'begin',
'        update STS_FILE',
'        set DEL_FLAG     = -1,',
'            DEL_DATE = sysdate,',
'            UPDATED_BY  = :MPF_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where  FILE_ID = :P130_FILE_ID',
'        and TENANT_ID = :USER_TENANT',
'        and DEL_FLAG = 0;',
'   v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P130_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'  rollback;',
'        apex_util.set_session_state(''P130_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P130_FILE_ID'
,p_attribute_03=>'P130_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797785672261265531)
,p_event_id=>wwv_flow_imp.id(3797785067632265525)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P130_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797785760000265532)
,p_event_id=>wwv_flow_imp.id(3797785067632265525)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1442974483128578036)
,p_name=>unistr('\6267\884C\8FC1\79FB')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1442974445096578035)
,p_condition_element=>'P130_FILE_IDS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1442974615462578037)
,p_event_id=>wwv_flow_imp.id(1442974483128578036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\662F\5426\9009\4E2D\6587\4EF6')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\6570\636E'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1442974751880578038)
,p_event_id=>wwv_flow_imp.id(1442974483128578036)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P130_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'154'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1442974892613578040)
,p_event_id=>wwv_flow_imp.id(1442974483128578036)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DE8\9875\4F20\53C2')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P154_FILE_IDS'',:P130_FILE_IDS);',
'end;'))
,p_attribute_02=>'P130_FILE_IDS'
,p_attribute_03=>'P154_FILE_IDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1442975042855578041)
,p_event_id=>wwv_flow_imp.id(1442974483128578036)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\6279\91CF\6587\4EF6\8FC1\79FB')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:154:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1442975206125578043)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1442975353774578044)
,p_event_id=>wwv_flow_imp.id(1442975206125578043)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P130_FILE_IDS'', ''FILE_ID'');',
'utils.set(this.data, map);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9456066147402554240)
,p_process_sequence=>5
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_FILE_LIBRARY_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_all_ids      apex_t_varchar2;',
'    l_final_ids    apex_t_varchar2 := apex_t_varchar2();',
'    l_window_count pls_integer := nvl(apex_application.g_f02.count, 0);',
'    l_offset       pls_integer := nvl(to_number(apex_application.g_x01), 0);',
'    l_start        pls_integer := 0;',
'    type t_seen is table of pls_integer index by varchar2(32767);',
'    l_seen         t_seen;',
'',
'    procedure add_id(p_id varchar2) is',
'    begin',
'        if p_id is not null and not l_seen.exists(p_id) then',
'            l_final_ids.extend;',
'            l_final_ids(l_final_ids.count) := p_id;',
'            l_seen(p_id) := 1;',
'        end if;',
'    end;',
'',
'    function window_matches(p_start pls_integer) return boolean is',
'    begin',
'        if l_window_count = 0 then',
'            return false;',
'        end if;',
'',
'        if p_start < 1 or p_start + l_window_count - 1 > l_all_ids.count then',
'            return false;',
'        end if;',
'',
'        for i in 1 .. l_window_count loop',
'            if l_all_ids(p_start + i - 1) <> apex_application.g_f02(i) then',
'                return false;',
'            end if;',
'        end loop;',
'',
'        return true;',
'    end;',
'begin',
'    select to_char(file_id)',
'      bulk collect into l_all_ids',
'      from sts_file',
'     where tenant_id = :USER_TENANT',
'       and del_flag = 0',
'       and file_level = 1',
'     order by nvl(sort_num, 999999), file_id;',
'',
'    if l_all_ids.count = 0 or apex_application.g_f01.count = 0 then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''success'');',
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    for i in 1 .. greatest(l_all_ids.count - l_window_count + 1, 0) loop',
'        if window_matches(i) then',
'            l_start := i;',
'            exit;',
'        end if;',
'    end loop;',
'',
'    if l_start = 0 then',
'        l_start := least(greatest(l_offset + 1, 1), greatest(l_all_ids.count - greatest(l_window_count, 1) + 1, 1));',
'    end if;',
'',
'    for i in 1 .. l_start - 1 loop',
'        add_id(l_all_ids(i));',
'    end loop;',
'',
'    for i in 1 .. apex_application.g_f01.count loop',
'        add_id(apex_application.g_f01(i));',
'    end loop;',
'',
'    for i in l_start + l_window_count .. l_all_ids.count loop',
'        add_id(l_all_ids(i));',
'    end loop;',
'',
'    for i in 1 .. l_all_ids.count loop',
'        add_id(l_all_ids(i));',
'    end loop;',
'',
'    if l_final_ids.count != l_all_ids.count then',
'        l_final_ids := apex_t_varchar2();',
'        l_seen.delete;',
'',
'        for i in 1 .. l_all_ids.count loop',
'            add_id(l_all_ids(i));',
'        end loop;',
'    end if;',
'',
'    for i in 1 .. l_final_ids.count loop',
'        update sts_file',
'           set sort_num = i',
'         where file_id = to_number(l_final_ids(i))',
'           and tenant_id = :USER_TENANT',
'           and file_level = 1;',
'    end loop;',
'',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
'    apex_json.write(''count'', l_final_ids.count);',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', sqlerrm || chr(10) || dbms_utility.format_error_backtrace);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>9000000000000000124
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3782151672307290801)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3797018051951235706)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5E93 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453480553029391306
);
wwv_flow_imp.component_end;
end;
/

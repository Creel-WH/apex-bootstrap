prompt --application/pages/page_09901
begin
--   Manifest
--     PAGE: 09901
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_page.create_page(
 p_id=>9901
,p_name=>unistr('\4EFB\52A1\62D6\62FD\6392\5E8F')
,p_alias=>'TASK-DRAG-SORT'
,p_step_title=>unistr('\4EFB\52A1\62D6\62FD\6392\5E8F - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function initTaskGridDragDrop() {',
'    var region = apex.region("task_sort_ig"),',
'        widget,',
'        gridView,',
'        grid$,',
'        rowContainer$;',
'',
'    if (!region) {',
'        return;',
'    }',
'',
'    widget = region.widget();',
'    if (!widget || !widget.interactiveGrid) {',
'        window.setTimeout(initTaskGridDragDrop, 250);',
'        return;',
'    }',
'',
'    gridView = widget.interactiveGrid("getViews", "grid");',
'    if (!gridView || !gridView.view$ || !gridView.view$.length || !gridView.view$.grid) {',
'        window.setTimeout(initTaskGridDragDrop, 250);',
'        return;',
'    }',
'',
'    grid$ = gridView.view$;',
'',
'    if (!grid$.data("taskSortEventsBound")) {',
'        grid$.on("gridpagechange.taskSort", function() {',
'            window.setTimeout(initTaskGridDragDrop, 0);',
'        });',
'        grid$.data("taskSortEventsBound", true);',
'    }',
'',
'    rowContainer$ = grid$.find(".a-GV-w-scroll tbody").first();',
'    if (!rowContainer$.length) {',
'        window.setTimeout(initTaskGridDragDrop, 250);',
'        return;',
'    }',
'',
'    if (!rowContainer$.children(".a-GV-row").length) {',
'        window.setTimeout(initTaskGridDragDrop, 250);',
'        return;',
'    }',
'',
'    decorateTaskDragHandles(rowContainer$);',
'    bindTaskGridNativeDnd(region, gridView, grid$, rowContainer$);',
'}',
'',
'function decorateTaskDragHandles(rowContainer$) {',
'    rowContainer$.children(".a-GV-row").each(function() {',
'        var firstCell = this.querySelector(".a-GV-cell:first-child"),',
'            handle;',
'',
'        if (!firstCell) {',
'            return;',
'        }',
'',
'        handle = firstCell.querySelector(".js-task-drag-handle");',
'        if (handle) {',
'            return;',
'        }',
'',
'        firstCell.textContent = "";',
'        handle = document.createElement("span");',
'        handle.className = "js-task-drag-handle";',
'        handle.setAttribute("role", "button");',
unistr('        handle.setAttribute("title", "\62D6\62FD\6392\5E8F");'),
unistr('        handle.setAttribute("aria-label", "\62D6\62FD\6392\5E8F");'),
'        handle.innerHTML = ''<span aria-hidden="true">&#8942;&#8942;</span>'';',
'        firstCell.appendChild(handle);',
'    });',
'}',
'',
'function bindTaskGridNativeDnd(region, gridView, grid$, rowContainer$) {',
'    var rowContainer = rowContainer$[0],',
'        draggedRow = null,',
'        hasMoved = false,',
'        ghostEl = null,',
'        lastTargetRow = null,',
'        beforeDragTaskIds = [];',
'',
'    if (!rowContainer) {',
'        return;',
'    }',
'',
'    if (rowContainer._taskSortCleanup) {',
'        rowContainer._taskSortCleanup();',
'    }',
'',
'    function findRow(target) {',
'        return target && target.closest ? target.closest(".a-GV-row") : null;',
'    }',
'',
'    function clearDropTarget() {',
'        if (lastTargetRow) {',
'            lastTargetRow.classList.remove("is-drop-target");',
'            lastTargetRow = null;',
'        }',
'    }',
'',
'    function createGhost(row, event) {',
'        var rect = row.getBoundingClientRect();',
'',
'        ghostEl = row.cloneNode(true);',
'        ghostEl.classList.add("task-drag-ghost");',
'        ghostEl.style.width = rect.width + "px";',
'        ghostEl.style.left = (event.clientX + 16) + "px";',
'        ghostEl.style.top = (event.clientY + 12) + "px";',
'        document.body.appendChild(ghostEl);',
'        document.body.classList.add("task-sort-dragging");',
'    }',
'',
'    function moveGhost(event) {',
'        if (!ghostEl) {',
'            return;',
'        }',
'        ghostEl.style.left = (event.clientX + 16) + "px";',
'        ghostEl.style.top = (event.clientY + 12) + "px";',
'    }',
'',
'    function removeGhost() {',
'        if (ghostEl && ghostEl.parentNode) {',
'            ghostEl.parentNode.removeChild(ghostEl);',
'        }',
'        ghostEl = null;',
'        document.body.classList.remove("task-sort-dragging");',
'    }',
'',
'    function onMouseMove(event) {',
'        var mouseY,',
'            rows,',
'            inserted,',
'            i,',
'            row,',
'            rect,',
'            midpoint,',
'            lastRow;',
'',
'        if (!draggedRow) {',
'            return;',
'        }',
'',
'        moveGhost(event);',
'        mouseY = event.clientY;',
'        rows = Array.from(rowContainer.querySelectorAll(".a-GV-row")).filter(function(item) {',
'            return item !== draggedRow;',
'        });',
'        inserted = false;',
'',
'        for (i = 0; i < rows.length; i += 1) {',
'            row = rows[i];',
'            rect = row.getBoundingClientRect();',
'            midpoint = rect.top + (rect.height / 2);',
'',
'            if (mouseY < midpoint) {',
'                if (draggedRow !== row.previousSibling) {',
'                    rowContainer.insertBefore(draggedRow, row);',
'                    hasMoved = true;',
'                }',
'                clearDropTarget();',
'                row.classList.add("is-drop-target");',
'                lastTargetRow = row;',
'                inserted = true;',
'                break;',
'            }',
'        }',
'',
'        if (!inserted) {',
'            lastRow = rowContainer.querySelector(".a-GV-row:last-child");',
'            if (lastRow && draggedRow !== lastRow) {',
'                rowContainer.appendChild(draggedRow);',
'                hasMoved = true;',
'            }',
'            clearDropTarget();',
'        }',
'',
'        event.preventDefault();',
'    }',
'',
'    function onMouseUp() {',
'        if (!draggedRow) {',
'            return;',
'        }',
'',
'        apex.jQuery(draggedRow).removeClass("is-dragging");',
'        document.removeEventListener("mousemove", onMouseMove, true);',
'        document.removeEventListener("mouseup", onMouseUp, true);',
'        clearDropTarget();',
'        removeGhost();',
'',
'        if (hasMoved) {',
'            saveTaskOrder(region, gridView, grid$, rowContainer$, beforeDragTaskIds);',
'        }',
'',
'        draggedRow = null;',
'        hasMoved = false;',
'        beforeDragTaskIds = [];',
'    }',
'',
'    function onMouseDown(event) {',
'        var handleEl,',
'            row;',
'',
'        if (event.button !== 0) {',
'            return;',
'        }',
'',
'        handleEl = event.target.closest ? event.target.closest(".js-task-drag-handle") : null;',
'        if (!handleEl || !rowContainer.contains(handleEl)) {',
'            return;',
'        }',
'',
'        row = findRow(handleEl);',
'        if (!row || !rowContainer.contains(row)) {',
'            return;',
'        }',
'',
'        beforeDragTaskIds = collectTaskIds(gridView, grid$, rowContainer$.children(".a-GV-row"));',
'        draggedRow = row;',
'        hasMoved = false;',
'        apex.jQuery(draggedRow).addClass("is-dragging");',
'        createGhost(draggedRow, event);',
'',
'        document.addEventListener("mousemove", onMouseMove, true);',
'        document.addEventListener("mouseup", onMouseUp, true);',
'        event.preventDefault();',
'    }',
'',
'    rowContainer.addEventListener("mousedown", onMouseDown, true);',
'',
'    rowContainer._taskSortCleanup = function() {',
'        rowContainer.removeEventListener("mousedown", onMouseDown, true);',
'        document.removeEventListener("mousemove", onMouseMove, true);',
'        document.removeEventListener("mouseup", onMouseUp, true);',
'        clearDropTarget();',
'        removeGhost();',
'        rowContainer._taskSortCleanup = null;',
'    };',
'}',
'',
'function collectTaskIds(gridView, grid$, rows$) {',
'    var rowItems,',
'        records,',
'        model = gridView.model,',
'        taskIds = [];',
'',
'    if (!rows$ || !rows$.length) {',
'        return taskIds;',
'    }',
'',
'    rowItems = rows$.toArray().map(function(rowEl) {',
'        return { el: apex.jQuery(rowEl) };',
'    });',
'',
'    try {',
'        records = grid$.grid("getRecords", rowItems);',
'    } catch (e) {',
'        records = [];',
'    }',
'',
'    if (!records || !records.length) {',
'        records = [];',
'        rows$.each(function() {',
'            var row$ = apex.jQuery(this),',
'                recordId = row$.attr("data-id") || row$.attr("data-row-id"),',
'                record;',
'',
'            if (!recordId || !model.getRecord) {',
'                return;',
'            }',
'',
'            record = model.getRecord(recordId);',
'            if (record) {',
'                records.push(record);',
'            }',
'        });',
'    }',
'',
'    records.forEach(function(record) {',
'        var taskId = model.getValue(record, "TASK_ID");',
'',
'        if (taskId !== null && taskId !== undefined && taskId !== "") {',
'            taskIds.push(String(taskId));',
'        }',
'    });',
'',
'    return taskIds;',
'}',
'',
'function saveTaskOrder(region, gridView, grid$, rowContainer$, originalTaskIds) {',
'    var rows,',
'        taskIds,',
'        oldTaskIds = Array.isArray(originalTaskIds) ? originalTaskIds.slice() : [],',
'        pageInfo,',
'        startOffset = 0;',
'',
'    rows = rowContainer$.children(".a-GV-row");',
'    taskIds = collectTaskIds(gridView, grid$, rows);',
'',
'    if (!taskIds.length) {',
'        return;',
'    }',
'',
'    if (!oldTaskIds.length) {',
'        oldTaskIds = taskIds.slice();',
'    }',
'',
'    pageInfo = grid$.grid("getPageInfo");',
'    if (pageInfo && typeof pageInfo.offset === "number") {',
'        startOffset = pageInfo.offset;',
'    }',
'',
'    if (rowContainer$.data("taskSortSaving")) {',
'        return;',
'    }',
'',
'    rowContainer$.data("taskSortSaving", true);',
'',
'    apex.server.process("SAVE_TASK_ORDER", {',
'        x01: startOffset,',
'        f01: taskIds,',
'        f02: oldTaskIds',
'    }, {',
'        dataType: "json",',
'        loadingIndicator: apex.jQuery("#task_sort_ig"),',
'        loadingIndicatorPosition: "centered",',
'        success: function(data) {',
'            rowContainer$.data("taskSortSaving", false);',
'            apex.message.clearErrors();',
'            apex.message.showPageSuccess((data && data.message) ? data.message : "Order saved.");',
'            region.refresh();',
'        },',
'        error: function() {',
'            rowContainer$.data("taskSortSaving", false);',
'            apex.message.clearErrors();',
'            apex.message.showErrors([{',
'                type: "error",',
'                location: ["page"],',
'                message: "Failed to save the new order.",',
'                unsafe: false',
'            }]);',
'            region.refresh();',
'        }',
'    });',
'}'))
,p_javascript_code_onload=>'window.setTimeout(initTaskGridDragDrop, 0);'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#task_sort_ig .a-GV-w-scroll .a-GV-row > .a-GV-cell:first-child {',
'    cursor: default;',
'    color: var(--ut-component-text-default-color, #1f2937);',
'    font-size: .875rem;',
'    font-weight: 600;',
'    user-select: none;',
'    white-space: nowrap;',
'    text-align: center;',
'}',
'',
'#task_sort_ig .js-task-drag-handle {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    min-width: 20px;',
'    padding: 2px 6px;',
'    border-radius: 4px;',
'    cursor: grab;',
'    color: var(--ut-component-text-default-color, #1f2937);',
'    line-height: 1;',
'}',
'',
'#task_sort_ig .js-task-drag-handle:hover {',
'    background: rgba(0, 0, 0, .06);',
'}',
'',
'.a-GV-row.is-dragging {',
'    opacity: .45;',
'}',
'',
'#task_sort_ig .a-GV-row.is-drop-target td {',
'    border-top: 2px solid var(--ut-palette-primary);',
'}',
'',
'.task-drag-ghost {',
'    position: fixed;',
'    z-index: 99999;',
'    pointer-events: none;',
'    opacity: .95;',
'    background: var(--ut-body-bg, #fff);',
'    box-shadow: 0 10px 24px rgba(0, 0, 0, .18);',
'    border: 1px solid rgba(0, 0, 0, .12);',
'    border-radius: 6px;',
'}',
'',
'body.task-sort-dragging,',
'body.task-sort-dragging * {',
'    cursor: grabbing !important;',
'}',
'',
'#task_sort_ig .a-GV-row.is-dragging > .a-GV-cell:first-child {',
'    cursor: default;',
'}',
'',
'#task_sort_ig .a-GV-row.is-dragging .js-task-drag-handle {',
'    cursor: grabbing;',
'}',
'',
'.ig-drag-placeholder td {',
'    background: rgba(56, 120, 255, .08);',
'    border-top: 2px solid var(--ut-palette-primary);',
'    border-bottom: 2px solid var(--ut-palette-primary);',
'}',
'',
'#task_sort_ig .a-GV-cell.u-tC {',
'    vertical-align: middle;',
'}'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\62D6\52A8\9996\5217\62D6\62FD\624B\67C4\5373\53EF\8C03\6574\4EFB\52A1\6392\5E8F\FF0C\653E\4E0B\540E\4F1A\7ACB\5373\5199\56DE TASK.SORT_NUM\3002')
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(772904478120181636)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(772904478120181637)
,p_plug_name=>unistr('\4F7F\7528\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Drag rows by the handle in the first column to change the task order.</p>',
'<p>The page writes the new sequence back to <code>TASK.SORT_NUM</code> as soon as you drop a row.</p>',
'<p>Keep the default report order while dragging. The save action applies to the row range shown on the current page.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(772904478120181638)
,p_plug_name=>unistr('\4EFB\52A1\6392\5E8F')
,p_region_name=>'task_sort_ig'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2082165061555131922)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    task_id,',
'    sort_num,',
'    ''#'' || to_char(task_id) || '' - '' || title as title,',
'    status,',
'    '''' as drag_handle',
'from task',
'where nvl(del_flag, 0) = 0',
'order by sort_num, task_id'))
,p_plug_source_type=>'NATIVE_IG'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(772904478120181645)
,p_name=>'TASK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TASK_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_is_required=>false
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(772904478120181646)
,p_name=>'DRAG_HANDLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DRAG_HANDLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\62D6\62FD')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_is_required=>false
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(772904478120181647)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6392\5E8F\503C')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>30
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(772904478120181648)
,p_name=>'TITLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TITLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6807\9898')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(772904478120181649)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_enable_filter=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(772904478120181655)
,p_internal_uid=>60267744285455565
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_max_row_count=>100000
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>true
,p_enable_download=>false
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(772904478120181656)
,p_interactive_grid_id=>wwv_flow_imp.id(772904478120181655)
,p_static_id=>'task_drag_sort_primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(772904478120181657)
,p_report_id=>wwv_flow_imp.id(772904478120181656)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(772904478120181658)
,p_view_id=>wwv_flow_imp.id(772904478120181657)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(772904478120181646)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(772904478120181659)
,p_view_id=>wwv_flow_imp.id(772904478120181657)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(772904478120181647)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(772904478120181660)
,p_view_id=>wwv_flow_imp.id(772904478120181657)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(772904478120181648)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(772904478120181661)
,p_view_id=>wwv_flow_imp.id(772904478120181657)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(772904478120181649)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(772904478120181675)
,p_name=>'After Refresh - Rebind drag'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(772904478120181638)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(772904478120181676)
,p_event_id=>wwv_flow_imp.id(772904478120181675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'initTaskGridDragDrop();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(772904478120181695)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_TASK_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    type t_num_tab is table of number index by pls_integer;',
'    type t_flag_tab is table of pls_integer index by varchar2(100);',
'',
'    l_start_offset number      := nvl(to_number(apex_application.g_x01), 0);',
'    l_page_count   pls_integer := nvl(apex_application.g_f01.count, 0);',
'    l_old_count    pls_integer := 0;',
'    l_window_count pls_integer := 0;',
'    l_total_count  pls_integer := 0;',
'    l_new_count    pls_integer := 0;',
'    l_start_pos    pls_integer := 0;',
'    l_search_max   pls_integer := 0;',
'    l_id           number;',
'    l_match        boolean;',
'',
'    l_all_ids      t_num_tab;',
'    l_new_ids      t_num_tab;',
'    l_old_ids      t_num_tab;',
'    l_exists       t_flag_tab;',
'    l_seen         t_flag_tab;',
'',
'    procedure add_id(p_id number) is',
'        l_key varchar2(100) := to_char(p_id);',
'    begin',
'        if l_exists.exists(l_key) and not l_seen.exists(l_key) then',
'            l_new_count := l_new_count + 1;',
'            l_new_ids(l_new_count) := p_id;',
'            l_seen(l_key) := 1;',
'        end if;',
'    end add_id;',
'begin',
'    if l_start_offset < 0 then',
'        l_start_offset := 0;',
'    end if;',
'',
'    for i in 1 .. nvl(apex_application.g_f02.count, 0) loop',
'        begin',
'            l_id := to_number(apex_application.g_f02(i));',
'            l_old_count := l_old_count + 1;',
'            l_old_ids(l_old_count) := l_id;',
'        exception',
'            when value_error then',
'                null;',
'        end;',
'    end loop;',
'',
'    for r in (',
'        select task_id',
'          from task',
'         where nvl(del_flag, 0) = 0',
'         order by sort_num, task_id',
'    ) loop',
'        l_total_count := l_total_count + 1;',
'        l_all_ids(l_total_count) := r.task_id;',
'        l_exists(to_char(r.task_id)) := 1;',
'    end loop;',
'',
'    if l_total_count > 0 then',
'        if l_old_count > 0 and l_old_count <= l_total_count then',
'            l_search_max := l_total_count - l_old_count + 1;',
'            for s in 1 .. l_search_max loop',
'                l_match := true;',
'                for j in 1 .. l_old_count loop',
'                    if l_all_ids(s + j - 1) != l_old_ids(j) then',
'                        l_match := false;',
'                        exit;',
'                    end if;',
'                end loop;',
'',
'                if l_match then',
'                    l_start_pos := s;',
'                    l_window_count := l_old_count;',
'                    exit;',
'                end if;',
'            end loop;',
'        end if;',
'',
'        if l_start_pos = 0 then',
'            l_start_pos := least(l_start_offset, l_total_count) + 1;',
'            l_window_count := l_page_count;',
'        end if;',
'',
'        for i in 1 .. greatest(l_start_pos - 1, 0) loop',
'            add_id(l_all_ids(i));',
'        end loop;',
'',
'        for i in 1 .. l_page_count loop',
'            begin',
'                l_id := to_number(apex_application.g_f01(i));',
'                add_id(l_id);',
'            exception',
'                when value_error then',
'                    null;',
'            end;',
'        end loop;',
'',
'        for i in (l_start_pos + l_window_count) .. l_total_count loop',
'            add_id(l_all_ids(i));',
'        end loop;',
'',
'        if l_new_count <> l_total_count then',
'            l_new_count := 0;',
'            l_seen.delete;',
'            for i in 1 .. l_total_count loop',
'                add_id(l_all_ids(i));',
'            end loop;',
'        end if;',
'',
'        for i in 1 .. l_total_count loop',
'            update task',
'               set sort_num    = i,',
'                   update_date = sysdate',
'             where task_id = l_new_ids(i);',
'        end loop;',
'    end if;',
'',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
'    apex_json.write(''message'', ''Order saved.'');',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        raise;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>60267744285455605
);
wwv_flow_imp.component_end;
end;
/

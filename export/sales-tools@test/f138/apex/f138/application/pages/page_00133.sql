prompt --application/pages/page_00133
set define off
begin
--   Manifest
--     PAGE: 00133
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
 p_id=>133
,p_name=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_alias=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_step_title=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME''))',
'var taskDragConfig = {',
'    regionStaticId: "content",',
'    idColumn: "FILE_ID",',
'    handleColumn: "SORT_NUM",',
'    processName: "SAVE_FILE_CHILD_ORDER",',
'    pageItems: "#P133_PARENT_FOLDER_ID",',
'    roleItem: "P133_ROLE_CODE"',
'};',
'',
'function initTaskGridDragDrop() {',
'    var config = taskDragConfig;',
'    var region = apex.region(config.regionStaticId);',
'    var views;',
'    var gridView;',
'    var grid$;',
'    var rowContainer$;',
'',
'    if ($v(config.roleItem) === "VIEW_REPORT") {',
'        return;',
'    }',
'',
'    if (!region) {',
'        return;',
'    }',
'',
'    views = region.call("getViews");',
'    if (!views || !views.grid || !views.grid.view$) {',
'        return;',
'    }',
'',
'    gridView = views.grid;',
'    grid$ = gridView.view$;',
'    rowContainer$ = grid$.find("tbody").first();',
'',
'    if (!rowContainer$.length) {',
'        return;',
'    }',
'',
'    decorateTaskDragHandles(region, grid$, rowContainer$, config.handleColumn);',
'    bindTaskGridNativeDnd(region, gridView, grid$, rowContainer$, config);',
'',
'    region.element.off("apexafterrefresh.taskSort").on("apexafterrefresh.taskSort", function () {',
'        window.setTimeout(initTaskGridDragDrop, 0);',
'    });',
'',
'    grid$.off("gridpagechange.taskSort").on("gridpagechange.taskSort", function () {',
'        window.setTimeout(initTaskGridDragDrop, 0);',
'    });',
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
'function decorateTaskDragHandles(region, grid$, rowContainer$, handleColumn) {',
'    var cellSelector = getTaskHandleCellSelector(region, grid$, handleColumn);',
'',
'    rowContainer$.children("tr.a-GV-row").each(function () {',
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
'function bindTaskGridNativeDnd(region, gridView, grid$, rowContainer$, config) {',
'    var containerEl = rowContainer$.get(0);',
'    var dragState = null;',
'',
'    function cleanupDrag() {',
'        if (!dragState) {',
'            return;',
'        }',
'',
'        if (dragState.ghostEl && dragState.ghostEl.parentNode) {',
'            dragState.ghostEl.parentNode.removeChild(dragState.ghostEl);',
'        }',
'',
'        if (dragState.rowEl) {',
'            dragState.rowEl.classList.remove("is-dragging");',
'        }',
'',
'        if (dragState.dropTargetEl) {',
'            dragState.dropTargetEl.classList.remove("is-drop-target");',
'        }',
'',
'        document.removeEventListener("mousemove", onMouseMove);',
'        document.removeEventListener("mouseup", onMouseUp);',
'        dragState = null;',
'    }',
'',
'    function setDropTarget(rowEl) {',
'        if (dragState.dropTargetEl === rowEl) {',
'            return;',
'        }',
'',
'        if (dragState.dropTargetEl) {',
'            dragState.dropTargetEl.classList.remove("is-drop-target");',
'        }',
'',
'        dragState.dropTargetEl = rowEl;',
'',
'        if (dragState.dropTargetEl) {',
'            dragState.dropTargetEl.classList.add("is-drop-target");',
'        }',
'    }',
'',
'    function buildGhost(rowEl) {',
'        var rowRect = rowEl.getBoundingClientRect();',
'        var ghostEl = document.createElement("div");',
'        var ghostTableEl = document.createElement("table");',
'        var ghostBodyEl = document.createElement("tbody");',
'        var ghostRowEl = rowEl.cloneNode(true);',
'',
'        ghostEl.className = "task-drag-ghost";',
'        ghostEl.style.width = rowRect.width + "px";',
'        ghostTableEl.className = "task-drag-ghost-table";',
'        ghostTableEl.style.width = rowRect.width + "px";',
'',
'        Array.prototype.forEach.call(rowEl.children, function (cellEl, index) {',
'            var ghostCellEl = ghostRowEl.children[index];',
'',
'            if (ghostCellEl) {',
'                ghostCellEl.style.width = cellEl.getBoundingClientRect().width + "px";',
'            }',
'        });',
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
'        var targetRowEl;',
'        var targetRect;',
'        var insertBeforeEl;',
'        var markerEl;',
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
'            dragState.rowEl.classList.add("is-dragging");',
'            dragState.ghostEl = buildGhost(dragState.rowEl);',
'        }',
'',
'        updateGhostPosition(event);',
'        pointerEl = document.elementFromPoint(event.clientX, event.clientY);',
'        targetRowEl = pointerEl && pointerEl.closest("tr.a-GV-row");',
'',
'        if (!targetRowEl || targetRowEl === dragState.rowEl || !containerEl.contains(targetRowEl)) {',
'            setDropTarget(null);',
'            return;',
'        }',
'',
'        targetRect = targetRowEl.getBoundingClientRect();',
'        if (event.clientY < (targetRect.top + targetRect.height / 2)) {',
'            insertBeforeEl = targetRowEl;',
'            markerEl = targetRowEl;',
'        } else {',
'            insertBeforeEl = targetRowEl.nextElementSibling;',
'            markerEl = targetRowEl.nextElementSibling || targetRowEl;',
'        }',
'',
'        if (insertBeforeEl !== dragState.rowEl) {',
'            containerEl.insertBefore(dragState.rowEl, insertBeforeEl);',
'        }',
'',
'        setDropTarget(markerEl);',
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
'            currentTaskIds = collectTaskIds(gridView, grid$, rowContainer$.children("tr.a-GV-row"), config.idColumn);',
'            changed = currentTaskIds.join(",") !== dragState.originalTaskIds.join(",");',
'',
'            if (changed) {',
'                saveTaskOrder(region, gridView, grid$, rowContainer$, dragState.originalTaskIds, currentTaskIds, config);',
'            }',
'        }',
'',
'        cleanupDrag();',
'    }',
'',
'    function onMouseDown(event) {',
'        var handleEl = event.target.closest(".js-task-drag-handle, .task-sort-cell");',
'        var rowEl;',
'',
'        if (event.button !== 0 || !handleEl) {',
'            return;',
'        }',
'',
'        rowEl = event.target.closest("tr.a-GV-row");',
'        if (!rowEl || !containerEl.contains(rowEl)) {',
'            return;',
'        }',
'',
'        event.preventDefault();',
'        cleanupDrag();',
'',
'        dragState = {',
'            startX: event.clientX,',
'            startY: event.clientY,',
'            rowEl: rowEl,',
'            ghostEl: null,',
'            dropTargetEl: null,',
'            started: false,',
'            originalTaskIds: collectTaskIds(gridView, grid$, rowContainer$.children("tr.a-GV-row"), config.idColumn)',
'        };',
'',
'        document.addEventListener("mousemove", onMouseMove);',
'        document.addEventListener("mouseup", onMouseUp);',
'    }',
'',
'    if (!containerEl) {',
'        return;',
'    }',
'',
'    if (containerEl._taskSortCleanup) {',
'        containerEl._taskSortCleanup();',
'    }',
'',
'    containerEl.addEventListener("mousedown", onMouseDown);',
'    containerEl._taskSortCleanup = function () {',
'        containerEl.removeEventListener("mousedown", onMouseDown);',
'        cleanupDrag();',
'    };',
'}',
'',
'function collectTaskIds(gridView, grid$, rows$, idColumn) {',
'    var model = gridView.model;',
'    var ids = [];',
'    var rowItems;',
'    var records = [];',
'',
'    rowItems = rows$.toArray().map(function (rowEl) {',
'        return { el: apex.jQuery(rowEl) };',
'    });',
'',
'    try {',
'        records = grid$.grid("getRecords", rowItems) || [];',
'    } catch (ignoreError) {',
'        records = [];',
'    }',
'',
'    if (records.length) {',
'        records.forEach(function (record) {',
'            var value = model && record ? model.getValue(record, idColumn) : null;',
'            if (value !== null && value !== undefined && value !== "") {',
'                ids.push(String(value));',
'            }',
'        });',
'    }',
'',
'    if (ids.length === rows$.length) {',
'        return ids;',
'    }',
'',
'    ids = [];',
'    rows$.each(function () {',
'        var recordId = this.getAttribute("data-id") || this.getAttribute("data-row-id");',
'        var record;',
'        var value;',
'',
'        if (!recordId || !model) {',
'            return;',
'        }',
'',
'        record = model.getRecord(recordId);',
'        value = record ? model.getValue(record, idColumn) : null;',
'',
'        if (value !== null && value !== undefined && value !== "") {',
'            ids.push(String(value));',
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
'                apex.region("tree").refresh();',
'                return;',
'            }',
'',
unistr('            apex.message.showPageSuccess("\6392\5E8F\5DF2\4FDD\5B58\3002");'),
'            region.refresh();',
'            apex.region("tree").refresh();',
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
'            apex.region("tree").refresh();',
'        }',
'    });',
'}',
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId,fileType) {',
'    $s(''P133_FILE_ID'', objId);',
'    $s(''P133_FILE_TYPE'', fileType);',
'    $(''#btn_'' + name).click();',
'}',
'',
'',
'',
'// const fullWidth = Math.max(',
'//   document.body.scrollWidth, ',
'//   document.documentElement.scrollWidth',
'// );',
'// const fullHeight = Math.max(',
'//   document.body.scrollHeight, ',
'//   document.documentElement.scrollHeight',
'// );',
'',
unistr('// // \76D1\542C\7A97\53E3\53D8\5316'),
'// window.addEventListener(''resize'', () => {',
unistr('//   console.log("\65B0\89C6\53E3\5C3A\5BF8:", window.innerWidth, window.innerHeight);'),
'// });',
'',
'',
'const s3Client = S3Client.init({',
'    baseURL: $v(''P0_UPLOAD_LINK''),',
'    aliasKey: ''SALES_TOOL_S3'',',
'    appKey: $v(''P0_STS_APPKEY''),',
'    appSecret: $v(''P0_STS_APPSECRET'')',
'});',
'var uploadFileInput = document.createElement(''input'');',
'uploadFileInput.type = ''file'';',
'uploadFileInput.id = ''p133_file_selector'';',
'uploadFileInput.multiple = true;',
'uploadFileInput.style.display = ''none'';',
'document.body.appendChild(uploadFileInput);',
'var uploadFolderInput = document.createElement(''input'');',
'uploadFolderInput.type = ''file'';',
'uploadFolderInput.id = ''p133_folder_selector'';',
'uploadFolderInput.webkitdirectory = true;',
'uploadFolderInput.style.display = ''none'';',
'document.body.appendChild(uploadFolderInput);',
'function triggerFileUpload() {',
'    uploadFileInput.click();',
'}',
'function triggerFolderUpload() {',
'    uploadFolderInput.click();',
'}',
'function setupDragDrop() {',
'    var dropZone = document.getElementById(''upload_drop_zone'');',
'    if (!dropZone) {',
'        return;',
'    }',
'}',
'function positionUploadDropZone() {',
'    var dropZone = document.getElementById(''upload_drop_zone'');',
'    var contentRegion = document.getElementById(''content'');',
'    var targetContainer;',
'    var gridView;',
'',
'    if (!dropZone || !contentRegion) {',
'        return;',
'    }',
'',
'    targetContainer = contentRegion.querySelector(''.t-Region-body'') ||',
'        contentRegion.querySelector(''.t-Region-bodyWrap'') ||',
'        contentRegion;',
'    gridView = contentRegion.querySelector(''.a-IG'');',
'',
'    dropZone.classList.add(''p133-upload-inline'');',
'',
'    if (gridView && gridView.parentNode) {',
'        gridView.parentNode.insertBefore(dropZone, gridView);',
'    } else if (targetContainer.firstChild) {',
'        targetContainer.insertBefore(dropZone, targetContainer.firstChild);',
'    } else {',
'        targetContainer.appendChild(dropZone);',
'    }',
'}',
'var uploadBtn = $(''#btn_upload'');',
'if (uploadBtn.length) {',
'    uploadBtn.wrap(''<div id="upload_btn_wrapper"></div>'');',
'    var wrapper = $(''#upload_btn_wrapper'');',
q'~    wrapper.append('<div id="upload_dropdown" style="display:none"><a onclick="triggerFileUpload()">上传文件</a><a onclick="triggerFolderUpload()">上传文件夹</a></div>');~',
'    uploadBtn.off(''click'').on(''click'', function (e) {',
'        e.stopPropagation();',
'        triggerFileUpload();',
'    });',
'    uploadBtn.parent().hover(',
'        function () { $(''#upload_dropdown'').show(); },',
'        function () {',
'            setTimeout(function () {',
'                if (!$(''#upload_dropdown:hover'').length) {',
'                    $(''#upload_dropdown'').hide();',
'                }',
'            }, 100);',
'        }',
'    );',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// my_test \7F51\683C\9759\6001ID'),
'var gridView = apex.region("content").call("getViews").grid;',
'if($v(''P133_ROLE_CODE'') ==''VIEW_REPORT''){',
unistr('// EDITION_TYPE_NAME\662F\60F3\8981\9690\85CF\7684\5217'),
'gridView.view$.grid("hideColumn", "OPERATE");',
'}else{',
'gridView.view$.grid("showColumn", "OPERATE");',
'    window.setTimeout(initTaskGridDragDrop, 250);',
'}',
'',
'setupDragDrop();',
'positionUploadDropZone();',
'$(document).on(''click'', function (e) {',
'    if (!$(e.target).closest(''#upload_btn_wrapper, #upload_dropdown'').length) {',
'        $(''#upload_dropdown'').hide();',
'    }',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.is_modify_0 , .hide_btn ,.is_permissions_0,.to_155 {',
'    display: none;',
'}',
'',
'#tree  {',
'  height: 70vh;',
unistr('  overflow: auto; /* \5185\5BB9\6EA2\51FA\65F6\81EA\52A8\663E\793A\6EDA\52A8\6761\FF08\63A8\8350\FF09 */'),
unistr('  /* overflow: scroll;  \5F3A\5236\59CB\7EC8\663E\793A\6EDA\52A8\6761 */'),
'}',
'',
'#ft-tree {',
'    width: 13vw;',
'}',
'',
'.task-sort-cell {',
'    white-space: nowrap;',
'    cursor: grab;',
'    user-select: none;',
'}',
'.task-sort-cell:active {',
'    cursor: grabbing;',
'}',
'.js-task-drag-handle {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    width: 18px;',
'    height: 18px;',
'    margin-right: 6px;',
'    color: #4b5f7a;',
'    cursor: grab;',
'    user-select: none;',
'}',
'.task-sort-cell input,',
'.task-sort-cell .a-GV-columnItem {',
'    cursor: inherit !important;',
'}',
'.js-task-drag-handle:active {',
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
'    background: #fff;',
'    box-shadow: 0 8px 20px rgba(0, 0, 0, .18);',
'    overflow: hidden;',
'}',
'.task-drag-ghost-table {',
'    width: 100%;',
'    table-layout: fixed;',
'    border-collapse: collapse;',
'    background: #fff;',
'}',
'.task-drag-ghost-table td {',
'    box-sizing: border-box;',
'}',
'/* .fancytree-title{',
'    white-space: pre;',
'} */',
'',
'span.fancytree-title {',
'    white-space: pre !important;',
'}',
'#upload_btn_wrapper {',
'    position: relative;',
'    display: inline-block;',
'}',
'#upload_dropdown {',
'    display: none;',
'    position: absolute;',
'    top: 100%;',
'    left: 0;',
'    z-index: 999;',
'    min-width: 150px;',
'    background: #fff;',
'    border: 1px solid #ccc;',
'    border-radius: 4px;',
'    box-shadow: 0 2px 8px rgba(0,0,0,0.15);',
'}',
'#upload_dropdown a {',
'    display: block;',
'    padding: 8px 16px;',
'    color: #333;',
'    text-decoration: none;',
'    font-size: 14px;',
'    cursor: pointer;',
'}',
'#upload_dropdown a:hover {',
'    background: #f0f0f0;',
'    color: #1a73e8;',
'}',
'#upload_drop_zone {',
'    border: 2px dashed #ccc;',
'    border-radius: 8px;',
'    padding: 30px;',
'    text-align: center;',
'    margin-bottom: 10px;',
'    cursor: pointer;',
'    transition: all 0.3s;',
'    background: #fafafa;',
'}',
'#upload_drop_zone:hover {',
'    border-color: #1a73e8;',
'    background: #e8f0fe;',
'}',
'#upload_drop_zone.drag-over {',
'    border-color: #1a73e8;',
'    background: #e8f0fe;',
'    border-style: solid;',
'}',
'#upload_drop_zone .drop-text {',
'    font-size: 20px;',
'    color: #666;',
'    margin: 0;',
'}',
'.p133-upload-inline {',
'    margin-bottom: 16px;',
'}'))
,p_page_css_classes=>'ja-bpoint-btn'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326089761286737626)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326089869927737627)
,p_plug_name=>unistr('\6587\4EF6\7ED3\6784\6811')
,p_region_name=>'tree'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>160
,p_plug_grid_column_span=>2
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT FILE_ID          AS ID,          --\6570\636EID'),
unistr('       PARENT_FOLDER_ID AS PARENT_ID,   --\7236ID'),
unistr('       FILE_NAME        AS TITLE,       --\663E\793A\7684\6807\9898'),
unistr('       FILE_ID          AS VALUE,       --\6807\9898\5BF9\5E94\7684\503C'),
'       1                AS TYPE,',
unistr('       DECODE(FILE_ID,:P133_PARENT_FOLDER_ID,1,0) AS SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(NULL): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('       0                AS EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(NULL): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('       1                AS CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(NULL): \7981\7528 1:\542F\7528'),
unistr('       0                AS UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(NULL): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'FROM STS_FILE',
'WHERE (ROOT_FOLDER_ID = :P133_ROOT_FOLDER_ID OR FILE_ID= :P133_ROOT_FOLDER_ID)',
'  AND TENANT_ID = :USER_TENANT',
'  AND DEL_FLAG = 0',
'  AND FILE_TYPE = ''FOLDER''',
'START WITH FILE_ID  = :P133_ROOT_FOLDER_ID',
'CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'AND DEL_FLAG =0',
'and PRIOR DEL_FLAG =0 ',
'ORDER SIBLINGS BY NVL(SORT_NUM, 999999), FILE_ID'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_ajax_items_to_submit=>'P133_ROOT_FOLDER_ID,P133_PARENT_FOLDER_ID,P133_FILE_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "animationDuration": 200,',
    '  "autoExpand2Level": 0,',
    '  "checkbox": "fa-square-o",',
    '  "checkboxSelected": "fa-check-square",',
    '  "checkboxUnknown": "fa-square",',
    '  "enableCheckBox": true,',
    '  "forceSelectionSet": true,',
    '  "forceRefreshEventOnStart": false,',
    '  "markNodesWithChildren": false,',
    '  "markerModifier": "fam-plus fam-is-info",',
    '  "openParentOfActiveNode": true,',
    '  "openParentOfSelected": true,',
    '  "refresh": 0,',
    '  "search": {',
    '    "autoExpand": true,',
    '    "leavesOnly": false,',
    '    "highlight": true,',
    '    "counter": true,',
    '    "hideUnmatched": true,',
    '    "debounce": {',
    '      "enabled": true,',
    '      "time": 400',
    '    }',
    '  },',
    '  "selectMode": 1,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P133_PARENT_FOLDER_ID",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9000000000000000010)
,p_plug_name=>unistr('\62D6\62FD\4E0A\4F20\533A\57DF')
,p_region_name=>'upload_drop_zone'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>165
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_location=>null
,p_plug_source=>'<div class="drop-text">将文件或文件夹拖拽到此处上传</div>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326089920385737628)
,p_plug_name=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>170
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH folder_latest AS (',
'    SELECT root_folder_id,',
'           MAX(latest_update_date) AS update_date,',
'           MAX(latest_updated_by) KEEP (DENSE_RANK LAST ORDER BY latest_update_date, file_id) AS updated_by',
'      FROM (SELECT root_folder_id,',
'                   file_id,',
'                   latest_update_date,',
'                   latest_updated_by',
'              FROM (SELECT CONNECT_BY_ROOT file_id AS root_folder_id,',
'                           file_id,',
'                           file_type,',
'                           NVL(update_date, creation_date) AS latest_update_date,',
'                           NVL(updated_by, created_by) AS latest_updated_by',
'                      FROM sts_file',
'                     WHERE tenant_id = :USER_TENANT',
'                       AND del_flag = 0',
'                    START WITH parent_folder_id = :P133_PARENT_FOLDER_ID',
'                           AND file_type = ''FOLDER''',
'                    CONNECT BY PRIOR file_id = parent_folder_id',
'                           AND del_flag = 0',
'                           AND tenant_id = :USER_TENANT)',
'             WHERE file_type = ''FILE'')',
'     GROUP BY root_folder_id)',
'SELECT A.FILE_ID,',
'       A.ROOT_FOLDER_ID,',
'       A.PARENT_FOLDER_ID,',
'       A.SORT_NUM,',
'       A.FILE_NAME,',
'       CASE',
unistr('           WHEN A.FILE_TYPE = ''FOLDER'' THEN ''\6587\4EF6\5939'''),
'           ELSE A.FILE_FORMAT',
'       END AS FILE_FORMAT,',
'       A.FILE_STATUS,',
'       A.FILE_TYPE,',
'       CASE',
'           WHEN A.FILE_TYPE = ''FOLDER'' THEN FL.UPDATED_BY',
unistr('           ELSE NVL(A.UPDATED_BY, A.CREATED_BY) END AS UPDATED_BY,  --\6587\4EF6\5939\53D6\9012\5F52\5B50\6587\4EF6\6700\65B0\64CD\4F5C\4EBA'),
unistr('       decode(A.PLANS_FILE_TYPE,null,''\2014\2014'',''NEVER'',''\6C38\4E0D\5F52\6863'',''IMMEDIATELY'',''\5DF2\5F52\6863'',''ONE_YEAR_LATER'',''1\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'''),
unistr('           ,''TWO_YEAR_LATER'',''2\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'',''THREE_YEAR_LATER'',''3\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'') PLANS_FILE_TYPE,'),
'       CASE',
'           WHEN A.FILE_TYPE = ''FOLDER'' THEN FL.UPDATE_DATE',
'           ELSE NVL(A.UPDATE_DATE, A.CREATION_DATE)',
'       END AS UPDATE_DATE,',
'       A.SCOPE_TYPE,',
'       A.FILE_VERSION_TAG,',
'       ''''             AS                   OPERATE,',
'       CASE',
'           WHEN FILE_TYPE = ''FOLDER'' THEN 0',
'           WHEN FILE_TYPE = ''FILE'' AND FILE_STATUS = ''ARCHIVE'' THEN 0',
'           ELSE 1 END AS                   IS_HIDE,',
'       CASE WHEN FILE_TYPE = ''FOLDER'' THEN 0 ELSE 1 END AS IS_FILE_TYPE,',
'      DECODE(:ROLE_CODE, ''VIEW_REPORT'', 0, ''SYSTEM_ADMIN'', 1, ''SUPER_ADMIN'', 1, (select COUNT(1)',
'                                                                          from (select RANGE_TYPE, RANGE_ID',
'                                                                                from STS_SCOPE F',
'                                                                                where F.REFERENCE_TYPE = ''FILE''',
'                                                                                  and F.PERMISSIONS_TYPE = ''MANAGE''',
'                                                                                  AND A.FILE_ID = F.REFERENCE_ID) C',
'                                                                                   left join BASIC_JA_DING_DEPT_USER D',
'                                                                                             on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
'                                                                          where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))) IS_PERMISSIONS',
'FROM STS_FILE A',
'LEFT JOIN folder_latest FL',
'       ON FL.root_folder_id = A.file_id',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND A.DEL_FLAG = 0',
'  AND A.PARENT_FOLDER_ID = :P133_PARENT_FOLDER_ID',
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
,p_ajax_items_to_submit=>'P133_PARENT_FOLDER_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15400185871463801)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\66F4\65B0\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(15400254915463802)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(9795107552321853914)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341218742271566393)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341218861155566394)
,p_name=>'ROOT_FOLDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOT_FOLDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341218963424566395)
,p_name=>'PARENT_FOLDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_FOLDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(9000000000000000021)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6392\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>55
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
 p_id=>wwv_flow_imp.id(3341219071826566396)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"  onclick="btnClick(''preview'',''&FILE_ID.'',''&FILE_TYPE.'')" style="text-dcoration:none;">',
    '		&FILE_NAME.',
    '	</a>',
    '</span>')))).to_clob
,p_link_target=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&FILE_ID.'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341219128177566397)
,p_name=>'FILE_FORMAT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_FORMAT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341219252984566398)
,p_name=>'FILE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341219332233566399)
,p_name=>'FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341219606774566402)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341219750649566403)
,p_name=>'FILE_VERSION_TAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_VERSION_TAG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341220002633566406)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341220116156566407)
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
 p_id=>wwv_flow_imp.id(3341220824848566414)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE. is_permissions_&IS_PERMISSIONS.''  onclick="btnClick(''update'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\66F4\65B0'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" class=''is_modify_&IS_FILE_TYPE. is_permissions_&IS_PERMISSIONS.'' onclick="btnClick(''versions'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5386\53F2\7248\672C'),
    '	</a>',
    '	&nbsp;',
    '    <a href="#" class=''is_modify_&IS_HIDE. is_permissions_&IS_PERMISSIONS.'' onclick="btnClick(''multilingual'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\591A\8BED\8A00'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" class=''is_permissions_&IS_PERMISSIONS.'' onclick="btnClick(''rename'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\91CD\547D\540D'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_FILE_TYPE. is_permissions_&IS_PERMISSIONS.'' onclick="btnClick(''pigeonhole'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5F52\6863\8BBE\7F6E'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_permissions_&IS_PERMISSIONS.'' onclick="btnClick(''settings'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\6743\9650\8BBE\7F6E'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341437438739325719)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341770348900124281)
,p_name=>'PLANS_FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANS_FILE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5F52\6863\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341773159035124309)
,p_name=>'IS_PERMISSIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PERMISSIONS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341774295928124321)
,p_name=>'IS_FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_FILE_TYPE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3341218612873566392)
,p_internal_uid=>468613640998220114
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3341248576197630504)
,p_interactive_grid_id=>wwv_flow_imp.id(3341218612873566392)
,p_static_id=>'4686437'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3341248786946630506)
,p_report_id=>wwv_flow_imp.id(3341248576197630504)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15202024647468250)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(15400185871463801)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(15204005985493577)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(15400254915463802)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2872607162039374250)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3341220002633566406)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341249315267630525)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3341218742271566393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341250268314630531)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3341218861155566394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341251132499630533)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3341218963424566395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(9000000000000000022)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(9000000000000000021)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341251997650630536)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3341219071826566396)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>165
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341252950700630538)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3341219128177566397)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>139.195
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341253818133630540)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3341219252984566398)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341254730519630543)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3341219332233566399)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341257406214630549)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3341219606774566402)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341258309020630552)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3341219750649566403)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341281615605874191)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3341220824848566414)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341747772386949982)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3341437438739325719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341787766758185137)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3341770348900124281)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3342336278457030172)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(3341773159035124309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3342576796334265090)
,p_view_id=>wwv_flow_imp.id(3341248786946630506)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(3341774295928124321)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3341218292976566389)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(986905443843024790)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(7202106302155903)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>'to_155'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>'To 155'
,p_button_redirect_url=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'to_155'
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341221461117566420)
,p_button_sequence=>180
,p_button_name=>unistr('\66F4\65B0')
,p_button_static_id=>'btn_update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341221496795566421)
,p_button_sequence=>190
,p_button_name=>unistr('\5386\53F2\7248\672C')
,p_button_static_id=>'btn_versions'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\5386\53F2\7248\672C')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2904977521167913720)
,p_button_sequence=>200
,p_button_name=>unistr('\591A\8BED\8A00')
,p_button_static_id=>'btn_multilingual'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\591A\8BED\8A00')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341221605249566422)
,p_button_sequence=>210
,p_button_name=>unistr('\91CD\547D\540D')
,p_button_static_id=>'btn_rename'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\91CD\547D\540D')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341221748349566423)
,p_button_sequence=>220
,p_button_name=>unistr('\5F52\6863\8BBE\7F6E1')
,p_button_static_id=>'btn_pigeonhole'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\5F52\6863\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341221820311566424)
,p_button_sequence=>230
,p_button_name=>unistr('\6743\9650\8BBE\7F6E')
,p_button_static_id=>'btn_settings'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341435186058325697)
,p_button_sequence=>300
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341217548207566381)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341217663481566382)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\4E0A\4F20\6587\4EF6')

,p_button_static_id=>'btn_upload'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341217704807566383)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341217980899566386)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\6279\91CF\5F52\6863')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5F52\6863')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341218096890566387)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3326089761286737626)
,p_button_name=>unistr('\56DE\6536\7AD9')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\56DE\6536\7AD9')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341220310762566409)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(3341218292976566389)
,p_button_name=>unistr('\8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_image_alt=>unistr('<  \8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:130::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341222159656566427)
,p_branch_name=>unistr('\8F6C\5230\9875 135')
,p_branch_action=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_FILE_ID,P135_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341221605249566422)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341853716051835079)
,p_branch_name=>unistr('\66F4\65B0\6587\4EF6-\8F6C\5230\9875 144')
,p_branch_action=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:144:P144_FILE_ID,P144_PARENT_FOLDER_ID,P144_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_PARENT_FOLDER_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341221461117566420)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341853946069835081)
,p_branch_name=>unistr('\5386\53F2\7248\672C-\8F6C\5230\9875 148')
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:148:P148_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341221496795566421)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341853840270835080)
,p_branch_name=>unistr('\5355\4E2A\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 143')
,p_branch_action=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:143:P143_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341221748349566423)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341855746944835099)
,p_branch_name=>unistr('\6279\91CF\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 141')
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:141:P141_FILE_ID,P141_FILE_IDS,P141_FILE_TYPES:&P133_FILE_ID.,&P133_FILE_IDS.,&P133_FILE_TYPES.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341217980899566386)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341854915919835091)
,p_branch_name=>unistr('\56DE\6536\7AD9-\8F6C\5230\9875 149')
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_FILE_ID,P149_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341218096890566387)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3343004565464659984)
,p_branch_name=>unistr('\8F6C\5230\9875 139')
,p_branch_action=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:139:P139_FILE_ID,P139_ROOT_FOLDER_ID,P139_PARENT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.,&P133_PARENT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341221820311566424)
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341221042913566416)
,p_branch_name=>unistr('\8F6C\5230\9875 134')
,p_branch_action=>'f?p=&APP_ID.:134:&SESSION.::&DEBUG.:134:P134_PARENT_FOLDER_ID:&P133_PARENT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>80
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P133_PAGE'
,p_branch_condition_text=>'134'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341222225449566428)
,p_branch_name=>unistr('\8F6C\5230\9875 136-\4E0A\4F20\6587\4EF6')
,p_branch_action=>'f?p=&APP_ID.:136:&SESSION.::&DEBUG.:136:P136_ROOT_FOLDER_ID,P136_PARENT_FOLDER_ID:&P133_ROOT_FOLDER_ID.,&P133_PARENT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>90
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P133_PAGE'
,p_branch_condition_text=>'136'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341436309614325708)
,p_branch_name=>unistr('\8F6C\5230\9875 137')
,p_branch_action=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>100
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P133_PAGE'
,p_branch_condition_text=>'137'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2904977702307913721)
,p_branch_name=>unistr('\591A\8BED\8A00-\8F6C\5230\9875 145')
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2904977521167913720)
,p_branch_sequence=>110
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(986906457551024800)
,p_branch_name=>unistr('\6587\4EF6\8FC1\79FB-\8F6C\5230\9875 155')
,p_branch_action=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:155:P155_FILE_IDS:&P133_FILE_IDS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(986905443843024790)
,p_branch_sequence=>120
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3327873681006065312)
,p_name=>'P133_DISPLAY'
,p_item_sequence=>280
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341217365007566379)
,p_name=>'P133_ROOT_FOLDER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341217449242566380)
,p_name=>'P133_PARENT_FOLDER_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341218513367566391)
,p_name=>'P133_FILE_ID'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341434832443325693)
,p_name=>'P133_FILE_PATH'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341435327041325698)
,p_name=>'P133_FILE_LEVEL'
,p_item_sequence=>290
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341435893780325704)
,p_name=>'P133_FILE_TYPE'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341436485886325710)
,p_name=>'P133_PAGE'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341720175378712321)
,p_name=>'P133_ROW_COUNT'
,p_item_sequence=>310
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341720306167712322)
,p_name=>'P133_FILE_IDS'
,p_item_sequence=>320
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341770553730124283)
,p_name=>'P133_ROLE_CODE'
,p_item_sequence=>270
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341774456334124322)
,p_name=>'P133_FILE_NAME'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341857959034835121)
,p_name=>'P133_FILE_TYPES'
,p_item_sequence=>330
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341219860703566404)
,p_name=>unistr('\6587\4EF6\5939\8BE6\7EC6\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_PARENT_FOLDER_ID'
,p_condition_element=>'P133_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341219879161566405)
,p_event_id=>wwv_flow_imp.id(3341219860703566404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089920385737628)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341434949326325694)
,p_event_id=>wwv_flow_imp.id(3341219860703566404)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_FILE_PATH,P133_FILE_LEVEL,P133_FILE_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILE_PATH,FILE_LEVEL,FILE_NAME',
'FROM STS_FILE',
'WHERE FILE_ID =:P133_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873845410065313)
,p_event_id=>wwv_flow_imp.id(3341219860703566404)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_DISPLAY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DECODE(:ROLE_CODE, ''SYSTEM_ADMIN'', 1, ''SUPER_ADMIN'', 1, ''FOLDER_REPORT'', COUNT(1), 0)',
'from STS_SCOPE A',
'where REFERENCE_TYPE = ''FILE''',
'  and REFERENCE_ID = :P133_PARENT_FOLDER_ID',
'  and PERMISSIONS_TYPE = ''MANAGE''',
'  AND ((RANGE_TYPE = ''USER'' AND RANGE_ID = :DIAN_USER_ID) OR',
'       (RANGE_TYPE = ''DEPT'' AND exists(select 1',
'                                       from BASIC_JA_DING_DEPT_USER B',
'                                       where TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                                         AND B.USER_ID = :DIAN_USER_ID)));'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341434973940325695)
,p_event_id=>wwv_flow_imp.id(3341219860703566404)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P133_FILE_LEVEL'')>1){',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_PATH'')+''/''+$v(''P133_FILE_NAME''))',
'}else{',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME''))',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341221092269566417)
,p_name=>unistr('\5237\65B0\62A5\8868\548C\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341221208310566418)
,p_event_id=>wwv_flow_imp.id(3341221092269566417)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089869927737627)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341221357176566419)
,p_event_id=>wwv_flow_imp.id(3341221092269566417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089920385737628)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341433678091325682)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341435186058325697)
,p_condition_element=>'P133_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341433853106325683)
,p_event_id=>wwv_flow_imp.id(3341433678091325682)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_PARENT_FOLDER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P133_FILE_ID FROM DUAL;'
,p_attribute_07=>'P133_FILE_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341436460264325709)
,p_event_id=>wwv_flow_imp.id(3341433678091325682)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'137'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341436259717325707)
,p_event_id=>wwv_flow_imp.id(3341433678091325682)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341433970706325684)
,p_event_id=>wwv_flow_imp.id(3341433678091325682)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089869927737627)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341434026553325685)
,p_event_id=>wwv_flow_imp.id(3341433678091325682)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089869927737627)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341435469014325699)
,p_name=>unistr('\6821\9A8C\5C42\7EA7')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_FILE_LEVEL'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'(utils.checkNull($v(''P133_FILE_LEVEL'')) ||$v(''P133_FILE_LEVEL'')<=14) && $v(''P133_DISPLAY'') >0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341435503548325700)
,p_event_id=>wwv_flow_imp.id(3341435469014325699)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217548207566381)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341435708334325702)
,p_event_id=>wwv_flow_imp.id(3341435469014325699)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217548207566381)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341437615524325721)
,p_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341217548207566381)
,p_condition_element=>'P133_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341437690236325722)
,p_event_id=>wwv_flow_imp.id(3341437615524325721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\5C42\7EA7'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341437829314325723)
,p_event_id=>wwv_flow_imp.id(3341437615524325721)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'134'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341437925083325724)
,p_event_id=>wwv_flow_imp.id(3341437615524325721)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341437989611325725)
,p_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341217663481566382)
,p_condition_element=>'P133_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341438202611325727)
,p_event_id=>wwv_flow_imp.id(3341437989611325725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\5C42\7EA7'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341438280189325728)
,p_event_id=>wwv_flow_imp.id(3341437989611325725)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'136'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341770135117124279)
,p_event_id=>wwv_flow_imp.id(3341437989611325725)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'triggerFileUpload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341719811303712317)
,p_name=>unistr('\5220\9664\9009\4E2D\6587\4EF6\5230\56DE\6536\7AD9')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341217704807566383)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719965162712318)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P133_FILE_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
'        return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719984721712319)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341720171271712320)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
unistr('     * describe:p133 \6587\4EF6\5E93-\5220\9664\6570\636E\81F3\56DE\6536\7AD9'),
'     */',
'begin',
'        update STS_FILE',
'        set DEL_FLAG     = -1,        ',
'            DEL_DATE = sysdate,',
'            UPDATED_BY  = :MPF_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where  FILE_ID IN  (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P133_FILE_IDS,'',''))',
'        and TENANT_ID = :USER_TENANT',
'        and DEL_FLAG = 0;',
'   v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P133_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'  rollback;',
'        apex_util.set_session_state(''P133_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P133_FILE_IDS'
,p_attribute_03=>'P133_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341720373250712323)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P133_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341720514844712324)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089920385737628)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341772966931124307)
,p_event_id=>wwv_flow_imp.id(3341719811303712317)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3326089869927737627)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341854193827835084)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3326089920385737628)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341854358567835085)
,p_event_id=>wwv_flow_imp.id(3341854193827835084)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P133_FILE_IDS'', ''FILE_ID'');',
'map.set(''P133_FILE_TYPES'', ''FILE_TYPE'');',
'utils.set(this.data, map);',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P133_FILE_IDS''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341855848545835100)
,p_name=>unistr('\6279\91CF\5F52\6863\8BBE\7F6E')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341217980899566386)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341855922720835101)
,p_event_id=>wwv_flow_imp.id(3341855848545835100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// 1. \68C0\67E5\662F\5426\9009\62E9\4E86\6587\4EF6'),
'if (utils.checkNull($v(''P133_FILE_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\8BBE\7F6E\5F52\6863\7684\6570\636E\FF08\81F3\5C11\4E00\884C\FF09'');'),
'    return false;',
'} ',
unistr('// 2. \68C0\67E5\662F\5426\5305\542B\6587\4EF6\5939\FF08FOLDER\FF09'),
'else if ($v(''P133_FILE_TYPES'') && $v(''P133_FILE_TYPES'').split('','').some(type => type.trim() === ''FOLDER'')) {',
unistr('    alert(''\9009\4E2D\7684\5185\5BB9\5305\542B\6587\4EF6\5939\FF0C\4EC5\652F\6301\6587\4EF6\5F52\6863\FF01'');'),
'    return false;',
'}',
unistr('// 3. \6240\6709\68C0\67E5\901A\8FC7'),
'else {',
'    return true;',
'}',
'',
'',
'// if (utils.checkNull($v(''P133_FILE_IDS''))) {',
unistr('//     alert(''\8BF7\9009\62E9\8981\8BBE\7F6E\5F52\6863\7684\6570\636E\FF08\81F3\5C11\4E00\884C\FF09'');'),
'//     return false;',
'// } else {',
'//         return true;',
'',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341856001193835102)
,p_event_id=>wwv_flow_imp.id(3341855848545835100)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986906577542024801)
,p_event_id=>wwv_flow_imp.id(3341855848545835100)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DE8\9875\4F20\53C2')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P141_FILE_ID'',:P133_FILE_ID);',
'    apex_util.set_session_state(''P141_FILE_IDS'',:P133_FILE_IDS);',
'end;'))
,p_attribute_02=>'P133_FILE_ID,P133_FILE_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341856171652835103)
,p_event_id=>wwv_flow_imp.id(3341855848545835100)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\6279\91CF\5F52\6863\8BBE\7F6E')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:141:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327872830561065303)
,p_name=>unistr('\6743\9650\5224\65AD')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_DISPLAY'
,p_condition_element=>'P133_DISPLAY'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873017822065305)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217663481566382)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873436112065309)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217663481566382)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873170342065306)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217704807566383)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873491689065310)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217704807566383)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873240670065307)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217980899566386)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327873645336065311)
,p_event_id=>wwv_flow_imp.id(3327872830561065303)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217980899566386)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327874083150065316)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>110
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'BEGIN',
'',
'    SELECT DECODE(:ROLE_CODE, ''SYSTEM_ADMIN'', 1, ''SUPER_ADMIN'', 1, ''FOLDER_REPORT'', COUNT(1), 0)',
'    INTO V_COUNT',
'    FROM STS_SCOPE A',
'    WHERE REFERENCE_TYPE = ''FILE''',
'      AND REFERENCE_ID = :P133_PARENT_FOLDER_ID',
'      AND PERMISSIONS_TYPE = ''MANAGE''',
'      AND ((RANGE_TYPE = ''USER'' AND RANGE_ID = :DIAN_USER_ID) OR',
'           (RANGE_TYPE = ''DEPT'' AND EXISTS(SELECT 1',
'                                           FROM BASIC_JA_DING_DEPT_USER B',
'                                           WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                                             AND B.USER_ID = :DIAN_USER_ID)));',
'',
'    IF V_COUNT > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327874218035065317)
,p_event_id=>wwv_flow_imp.id(3327874083150065316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3341217548207566381)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(986905549567024791)
,p_name=>unistr('\6267\884C\8FC1\79FB')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(986905443843024790)
,p_condition_element=>'P133_FILE_IDS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986905666610024792)
,p_event_id=>wwv_flow_imp.id(986905549567024791)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\662F\5426\9009\4E2D\6587\4EF6')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\6570\636E'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986905800610024793)
,p_event_id=>wwv_flow_imp.id(986905549567024791)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'155'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341856185098835104)
,p_event_id=>wwv_flow_imp.id(986905549567024791)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DE8\9875\4F20\53C2')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P155_FILE_IDS'',:P133_FILE_IDS);',
'end;'))
,p_attribute_02=>'P133_FILE_IDS'
,p_attribute_03=>'P155_FILE_IDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986905989131024795)
,p_event_id=>wwv_flow_imp.id(986905549567024791)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\6279\91CF\6587\4EF6\8FC1\79FB')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:155:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7202024752155902)
,p_event_id=>wwv_flow_imp.id(986905549567024791)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.to_155'').click()'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3341220250284566408)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3326089920385737628)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5939\8BE6\7EC6 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>468615278409220130
);
wwv_flow_imp.component_end;

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9000000000000000023)
,p_process_sequence=>5
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_FILE_CHILD_ORDER'
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
'       and parent_folder_id = :P133_PARENT_FOLDER_ID',
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
'           set sort_num = i,',
'               updated_by = :MPF_USER_ID,',
'               update_date = sysdate',
'         where file_id = to_number(l_final_ids(i))',
'           and tenant_id = :USER_TENANT',
'           and parent_folder_id = :P133_PARENT_FOLDER_ID;',
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
,p_process_when_button_id=>null
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9000000000000000023
);

wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9000000000000000020)
,p_process_sequence=>50
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_SAVE_UPLOAD'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_URL VARCHAR2(4000) := apex_application.g_x01;',
'  V_NAME VARCHAR2(4000) := apex_application.g_x02;',
'  V_TYPE VARCHAR2(4000) := apex_application.g_x03;',
'  V_SIZE VARCHAR2(4000) := apex_application.g_x04;',
'  V_QUANTITY VARCHAR2(100) := apex_application.g_x05;',
'  V_PARENT_FOLDER_ID NUMBER := :APP_P133_PARENT_FOLDER_ID;',
'  V_ROOT_FOLDER_ID NUMBER := :APP_P133_ROOT_FOLDER_ID;',
'  V_SCOPE_TYPE VARCHAR2(100);',
'  V_FILE_PATH VARCHAR2(4000);',
'  V_FILE_LEVEL NUMBER;',
'  V_FILE_ID NUMBER;',
'  V_FILE_VERSION_TAG VARCHAR2(100);',
'  V_FILE_IDS VARCHAR2(2000) := ''['';',
'  V_ERR_MSG VARCHAR2(2000);',
'BEGIN',
'  SELECT SCOPE_TYPE, DECODE(FILE_PATH, NULL, FILE_NAME, FILE_PATH||''/''||FILE_NAME), FILE_LEVEL',
'  INTO V_SCOPE_TYPE, V_FILE_PATH, V_FILE_LEVEL',
'  FROM STS_FILE WHERE FILE_ID = V_PARENT_FOLDER_ID;',
'  FOR I IN 0..TO_NUMBER(V_QUANTITY) LOOP',
'    V_URL := SUBSTRING_INSTR2(V_URL, '','', I, I+1);',
'    V_NAME := SUBSTRING_INSTR2(V_NAME, '','', I, I+1);',
'    V_TYPE := SUBSTRING_INSTR2(V_TYPE, '','', I, I+1);',
'    V_SIZE := SUBSTRING_INSTR2(V_SIZE, '','', I, I+1);',
'    SELECT TO_CHAR(SYSDATE,''YYYY-MM-DD HH24:MI:SSSS'')||''-''||DBMS_RANDOM.STRING(''A'',32)',
'    INTO V_FILE_VERSION_TAG FROM DUAL;',
'    SELECT UTL_URL.UNESCAPE(url => V_NAME, URL_CHARSET => ''AL32UTF8'') INTO V_NAME FROM DUAL;',
'    INSERT INTO STS_FILE(FILE_NAME, ROOT_FOLDER_ID, PARENT_FOLDER_ID, FILE_FORMAT, FILE_STATUS,',
'        FILE_URL, FILE_TYPE, DEL_FLAG, TENANT_ID, CREATED_BY, CREATION_DATE,',
'        SCOPE_TYPE, FILE_SIZE, FILE_VERSION_TAG, FILE_PATH, FILE_LEVEL,',
'        UPLOADER_DING_ID, UPLOAD_DATE, ADD_METHOD)',
'    VALUES(V_NAME,',
'        DECODE(V_FILE_LEVEL, 1, V_PARENT_FOLDER_ID, V_ROOT_FOLDER_ID),',
'        V_PARENT_FOLDER_ID, V_TYPE, ''NORMAL'', V_URL, ''FILE'', 0,',
'        :USER_TENANT, :MPF_USER_ID, SYSDATE, V_SCOPE_TYPE, TO_NUMBER(V_SIZE),',
'        V_FILE_VERSION_TAG, V_FILE_PATH, (V_FILE_LEVEL)+1,',
'        :DIAN_USER_ID, SYSDATE, ''UPLOAD'')',
'    RETURNING FILE_ID INTO V_FILE_ID;',
'    V_FILE_IDS := V_FILE_IDS || V_FILE_ID || '','';',
'    INSERT INTO STS_SCOPE(REFERENCE_ID, REFERENCE_TYPE, USER_ID, SOURCE_USER_ID, PERMISSIONS_TYPE,',
'        CREATED_BY, CREATION_DATE, UPDATED_BY, UPDATE_DATE, RANGE_TYPE, RANGE_ID)',
'    SELECT V_FILE_ID, REFERENCE_TYPE, USER_ID, SOURCE_USER_ID, PERMISSIONS_TYPE,',
'        :MPF_USER_ID, SYSDATE, :MPF_USER_ID, SYSDATE, RANGE_TYPE, RANGE_ID',
'    FROM STS_SCOPE WHERE REFERENCE_TYPE=''FILE'' AND REFERENCE_ID=V_PARENT_FOLDER_ID;',
'  END LOOP;',
'  COMMIT;',
'  HTP.P(''OK'');',
'EXCEPTION WHEN OTHERS THEN',
'  ROLLBACK;',
'  V_ERR_MSG := SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'  HTP.P(''ERROR: ''||V_ERR_MSG);',
'END;'))
,p_process_when_button_id=>null
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9000000000000000020
);

wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9000000000000000001)
,p_name=>'P133_URL'
,p_item_sequence=>300
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9000000000000000002)
,p_name=>'P133_NAME'
,p_item_sequence=>310
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9000000000000000003)
,p_name=>'P133_TYPE'
,p_item_sequence=>320
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9000000000000000004)
,p_name=>'P133_SIZE'
,p_item_sequence=>330
,p_display_as=>'NATIVE_HIDDEN'
,p_data_type=>'CLOB'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9000000000000000005)
,p_name=>'P133_FILE_QUANTITY'
,p_item_sequence=>340
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
end;
/


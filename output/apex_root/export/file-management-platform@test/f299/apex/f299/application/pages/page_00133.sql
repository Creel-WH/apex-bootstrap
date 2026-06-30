prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>133
,p_name=>unistr('\6587\4EF6\5E93')
,p_alias=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_step_title=>unistr('\6587\4EF6\5E93')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3709714323410859806)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME'') || ''\u6587\u4EF6\u5E93'')',
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId,fileType) {',
'    if (name !== ''settings'' && !p133CanManageEntry(objId)) {',
unistr('        alert(''\5F53\524D\6CA1\6709\53EF\6267\884C\8BE5\64CD\4F5C\7684\7BA1\7406\6743\9650'');'),
'        return;',
'    }',
'    if (name === ''settings'') {',
'        p133OpenPermissionDialog(objId);',
'        return;',
'    }',
'    fileType = fileType || (p133FindRow(objId) || {}).type || '''';',
'    $s(''P133_FILE_ID'', objId);',
'    $s(''P133_FILE_TYPE'', fileType);',
'    $(''#btn_'' + name).click();',
'}',
'var p133ApplyingGridSelection = false;',
'',
'function p133SplitCsv(value) {',
'    return String(value || '''').split('','').map(function(entry) {',
'        return String(entry || '''').trim();',
'    }).filter(function(entry) {',
'        return entry !== '''';',
'    });',
'}',
'',
'function p133NormalizeCellValue(value) {',
'    if (value && typeof value === ''object'' && Object.prototype.hasOwnProperty.call(value, ''v'')) {',
'        return value.v;',
'    }',
'    return value;',
'}',
'',
'function p133TryGetRegion(staticId) {',
'    var regionId = String(staticId || '''').trim();',
'    if (!regionId || typeof apex === ''undefined'' || !apex.region || !document.getElementById(regionId)) {',
'        return null;',
'    }',
'    try {',
'        return apex.region(regionId);',
'    } catch (e) {',
'        return null;',
'    }',
'}',
'',
'function p133GetRegionModel() {',
'    var region;',
'    var widget;',
'    var gridView;',
'    try {',
'        region = p133TryGetRegion(''content'');',
'        widget = region && region.widget ? region.widget() : null;',
'        gridView = widget ? widget.interactiveGrid(''getViews'', ''grid'') : null;',
'        return gridView ? gridView.model : null;',
'    } catch (e) {',
'        return null;',
'    }',
'}',
'',
'function p133GetCurrentRows() {',
'    var model = p133GetRegionModel();',
'    var rows = [];',
'    if (!model) {',
'        return rows;',
'    }',
'    model.forEach(function(record) {',
'        rows.push({',
'            id: String(p133NormalizeCellValue(model.getValue(record, ''FILE_ID'')) || ''''),',
'            type: String(p133NormalizeCellValue(model.getValue(record, ''FILE_TYPE'')) || ''''),',
'            name: String(p133NormalizeCellValue(model.getValue(record, ''FILE_NAME'')) || ''''),',
'            icon: String(p133NormalizeCellValue(model.getValue(record, ''ICON_CLASS'')) || ''''),',
'            canOpen: Number(p133NormalizeCellValue(model.getValue(record, ''CAN_OPEN'')) || 0) > 0,',
'            canManage: Number(p133NormalizeCellValue(model.getValue(record, ''IS_PERMISSIONS'')) || 0) > 0',
'        });',
'    });',
'    return rows;',
'}',
'',
'function p133FindRow(fileId) {',
'    var targetId = String(fileId || '''');',
'    var rows = p133GetCurrentRows();',
'    var i;',
'    for (i = 0; i < rows.length; i += 1) {',
'        if (rows[i].id === targetId) {',
'            return rows[i];',
'        }',
'    }',
'    return null;',
'}',
'',
'function p133SetSelection(ids, types) {',
'    var nextIds = (ids || []).map(function(entry) {',
'        return String(entry || '''').trim();',
'    }).filter(function(entry) {',
'        return entry !== '''';',
'    });',
'    var nextTypes = (types || []).map(function(entry) {',
'        return String(entry || '''').trim();',
'    }).filter(function(entry, index) {',
'        return nextIds[index];',
'    });',
'    $s(''P133_FILE_IDS'', nextIds.join('',''));',
'    $s(''P133_FILE_TYPES'', nextTypes.join('',''));',
'    $s(''P133_FILE_ID'', nextIds[0] || '''');',
'    $s(''P133_FILE_TYPE'', nextTypes[0] || '''');',
'}',
'',
'function p133GetSelectionState() {',
'    var ids = p133SplitCsv($v(''P133_FILE_IDS''));',
'    var types = p133SplitCsv($v(''P133_FILE_TYPES''));',
'    return {',
'        ids: ids,',
'        types: types.slice(0, ids.length),',
'        count: ids.length,',
'        singleId: ids[0] || '''',',
'        singleType: (types[0] || '''').toUpperCase(),',
'        hasFolder: types.some(function(type) {',
'            return String(type || '''').toUpperCase() === ''FOLDER'';',
'        })',
'    };',
'}',
'',
'function p133EnsureValidSelection() {',
'    var rows = p133GetCurrentRows();',
'    var rowTypeMap = {};',
'    var state = p133GetSelectionState();',
'    var nextIds = [];',
'    var nextTypes = [];',
'    var nextSingleId;',
'    var nextSingleType;',
'    rows.forEach(function(row) {',
'        rowTypeMap[row.id] = row.type;',
'    });',
'    state.ids.forEach(function(id) {',
'        if (rowTypeMap[id]) {',
'            nextIds.push(id);',
'            nextTypes.push(rowTypeMap[id]);',
'        }',
'    });',
'    nextSingleId = nextIds[0] || '''';',
'    nextSingleType = nextTypes[0] || '''';',
'    if (nextIds.join('','') !== state.ids.join('','') ||',
'        nextTypes.join('','') !== state.types.join('','') ||',
'        String($v(''P133_FILE_ID'') || '''') !== nextSingleId ||',
'        String($v(''P133_FILE_TYPE'') || '''') !== nextSingleType) {',
'        p133SetSelection(nextIds, nextTypes);',
'    }',
'    return p133GetSelectionState();',
'}',
'',
'function p133ClearSelection() {',
'    p133SetSelection([], []);',
'}',
'',
'function p133RefreshContent() {',
'    var region = p133TryGetRegion(''content'');',
'    try {',
'        if (region) {',
'            region.refresh();',
'            return;',
'        }',
'    } catch (e) {',
'        // ignore and use fallback below',
'    }',
'    if ($(''#content_ig'').length) {',
'        $(''#content_ig'').trigger(''apexrefresh'');',
'    }',
'}',
'',
'var p133DragSortConfig = {',
'    regionStaticId: ''content'',',
'    idColumn: ''FILE_ID'',',
'    handleColumn: ''SORT_NUM'',',
'    processName: ''SAVE_FILE_LIBRARY_ORDER'',',
'    pageItems: ''#P133_PARENT_FOLDER_ID,#P133_ROOT_FOLDER_ID,#P133_SORT_BY,#P133_DISPLAY'',',
'    rebindDelay: 250,',
'    rebindAttempts: 8',
'};',
'',
'function p133HasManagePermission() {',
'    return Number($v(''P133_DISPLAY'') || 0) > 0;',
'}',
'',
'function p133CanCreateFolder() {',
'    return p133HasManagePermission();',
'}',
'',
'function p133ReadSortValue() {',
'    var value = String($v(''P133_SORT_BY'') || ''MANUAL'').toUpperCase();',
'    var allowed = [''NAME_ASC'', ''UPDATE_DESC'', ''UPDATE_ASC'', ''CREATION_DESC'', ''CREATION_ASC'', ''MANUAL''];',
'    return allowed.indexOf(value) >= 0 ? value : ''MANUAL'';',
'}',
'',
'function p133ReadSortLabel() {',
'    var labels = {',
unistr('        NAME_ASC: ''\6587\4EF6\540D'','),
unistr('        UPDATE_DESC: ''\66F4\65B0\65F6\95F4\4ECE\8FD1\5230\8FDC'','),
unistr('        UPDATE_ASC: ''\66F4\65B0\65F6\95F4\4ECE\8FDC\5230\8FD1'','),
unistr('        CREATION_DESC: ''\521B\5EFA\65F6\95F4\4ECE\8FD1\5230\8FDC'','),
unistr('        CREATION_ASC: ''\521B\5EFA\65F6\95F4\4ECE\8FDC\5230\8FD1'','),
unistr('        MANUAL: ''\9ED8\8BA4'''),
'    };',
'    return labels[p133ReadSortValue()] || labels.MANUAL;',
'}',
'',
'function p133ToggleSortMenu(forceState) {',
'    var $menu = $(''#p133_toolbar .p133-sort-menu'');',
'    if (!$menu.length) {',
'        return;',
'    }',
'    var shouldOpen = typeof forceState === ''boolean'' ? forceState : !$menu.hasClass(''is-open'');',
'    $menu.toggleClass(''is-open'', shouldOpen);',
'}',
'',
'function p133SetSortValue(value) {',
'    var nextValue = String(value || '''').toUpperCase();',
'    if (!nextValue || nextValue === p133ReadSortValue()) {',
'        p133ToggleSortMenu(false);',
'        return;',
'    }',
'    apex.item(''P133_SORT_BY'').setValue(nextValue);',
'    p133ToggleSortMenu(false);',
'    p133UpdateToolbarState();',
'    p133RefreshContent();',
'    window.setTimeout(function() {',
'        var parentFolderId = String($v(''P133_PARENT_FOLDER_ID'') || '''');',
'        var parentItem$ = $(''#P133_PARENT_FOLDER_ID'');',
'',
'        if (parentFolderId && parentItem$.length) {',
'            apex.event.trigger(parentItem$, ''change'');',
'            return;',
'        }',
'',
'        p133ApplyRootState(true);',
'        if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); }',
'    }, 0);',
'}',
'',
'function p133TriggerButton(staticId) {',
'    var button = document.getElementById(staticId);',
'    if (button && typeof button.click === ''function'') {',
'        button.click();',
'        return;',
'    }',
'    var $button = $(''#'' + staticId);',
'    if ($button.length) {',
'        $button.trigger(''click'');',
'    }',
'}',
'',
'function p133ClearRootState(skipViewSync) {',
'    $s(''P133_FILE_LEVEL'', '''');',
'    $s(''P133_FILE_NAME'', '''');',
'    $s(''P133_FILE_PATH'', '''');',
'    $s(''P133_UP_FOLDER_ID'', '''');',
'    $s(''P133_BREADCRUMB_JSON'', ''[]'');',
'    $(''h1[class="t-Breadcrumb-label"]'').text('''');',
'    p133RenderPathbar();',
'    if (!skipViewSync) {',
'        if (window.p133SyncView) { window.p133SyncView(); }',
'        else if (window.p133SyncViewImpl) { window.p133SyncViewImpl(); }',
'    }',
'}',
'',
'function p133ResolveRootState(skipViewSync) {',
'    var systemId = String($(''#stsTenantSelect'').val() || '''');',
'    apex.server.process(''P133_RESOLVE_ROOT_FOLDER'', {',
'        x01: systemId',
'    }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (resp && resp.status === ''success'' && resp.rootFolderId) {',
'                var rootId = String(resp.rootFolderId);',
'                $s(''P133_ROOT_FOLDER_ID'', rootId);',
'                $s(''P133_PARENT_FOLDER_ID'', rootId);',
'                $s(''P133_FILE_ID'', rootId);',
'                $s(''P133_FILE_TYPE'', ''FOLDER'');',
'                apex.event.trigger($(''#P133_PARENT_FOLDER_ID''), ''change'');',
'                return;',
'            }',
'            p133ClearRootState(skipViewSync);',
'        },',
'        error: function() {',
'            p133ClearRootState(skipViewSync);',
'        }',
'    });',
'}',
'',
'function p133ApplyRootState(skipViewSync) {',
'    var rootId = String($v(''P133_ROOT_FOLDER_ID'') || $v(''P133_PARENT_FOLDER_ID'') || '''');',
'    if (rootId) {',
'        $s(''P133_ROOT_FOLDER_ID'', rootId);',
'        $s(''P133_PARENT_FOLDER_ID'', rootId);',
'        $s(''P133_FILE_ID'', rootId);',
'        $s(''P133_FILE_TYPE'', ''FOLDER'');',
'        apex.event.trigger($(''#P133_PARENT_FOLDER_ID''), ''change'');',
'        return;',
'    }',
'    p133ResolveRootState(skipViewSync);',
'}',
'',
'function p133NavigateFolder(folderId) {',
'    var nextFolderId = String(folderId || '''');',
'    p133ClearSelection();',
'    if (!nextFolderId) {',
'        nextFolderId = String($v(''P133_ROOT_FOLDER_ID'') || '''');',
'    }',
'    if (!nextFolderId) {',
'        p133ApplyRootState(true);',
'        p133RefreshContent();',
'        if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); }',
'        return;',
'    }',
'    $s(''P133_PARENT_FOLDER_ID'', nextFolderId);',
'    $s(''P133_FILE_ID'', nextFolderId);',
'    $s(''P133_FILE_TYPE'', ''FOLDER'');',
'    apex.event.trigger($(''#P133_PARENT_FOLDER_ID''), ''change'');',
'    if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); }',
'}',
'',
'function p133OpenFile(fileId) {',
'    if (!p133CanOpenEntry(fileId)) {',
unistr('        alert(''\5F53\524D\4EC5\53EF\67E5\770B\5217\8868\FF0C\65E0\6743\67E5\770B\8BE5\6587\4EF6\8BE6\60C5'');'),
'        return;',
'    }',
'    p133ClearSelection();',
'    $s(''P133_FILE_ID'', fileId);',
'    $s(''P133_FILE_TYPE'', ''FILE'');',
'    p133OpenActionUrl(''PREVIEW'');',
'}',
'',
'function p133OpenPermissionDialog(fileId) {',
'    var targetFileId = String(fileId || $v(''P133_FILE_ID'') || '''').trim();',
'',
'    if (!targetFileId) {',
unistr('        alert(''\8BF7\5148\9009\62E9\8981\8BBE\7F6E\6743\9650\7684\6587\4EF6\6216\6587\4EF6\5939'');'),
'        return;',
'    }',
'',
'    if (!p133CanManageEntry(targetFileId)) {',
unistr('        alert(''\5F53\524D\6CA1\6709\53EF\6267\884C\8BE5\64CD\4F5C\7684\7BA1\7406\6743\9650'');'),
'        return;',
'    }',
'',
'    $s(''P133_FILE_ID'', targetFileId);',
'    p133OpenActionUrl(''PERMISSION'');',
'}',
'',
'function p133RedirectToRename(fileId) { if (window.p133RedirectToRenameImpl) { return window.p133RedirectToRenameImpl(fileId); } }',
'function p133RedirectToMove(fileIds) { if (window.p133RedirectToMoveImpl) { return window.p133RedirectToMoveImpl(fileIds); } }',
'function p133DeleteSelection() { if (window.p133DeleteSelectionImpl) { return window.p133DeleteSelectionImpl(); } }',
'function p133OpenActionUrl(actionName) { if (window.p133OpenActionUrlImpl) { return window.p133OpenActionUrlImpl(actionName); } }',
'function p133RunAction(actionName) { if (window.p133RunActionImpl) { return window.p133RunActionImpl(actionName); } }',
'',
'function p133OpenEntry(objId, fileType) {',
'    if (!p133CanOpenEntry(objId)) {',
unistr('        alert(''\5F53\524D\4EC5\53EF\67E5\770B\5217\8868\FF0C\65E0\6743\67E5\770B\8BE5\5BF9\8C61\8BE6\60C5'');'),
'        return;',
'    }',
'    if (String(fileType || '''').toUpperCase() === ''FOLDER'') {',
'        p133NavigateFolder(objId);',
'        return;',
'    }',
'    p133OpenFile(objId);',
'}',
'',
'function p133CanOpenEntry(fileId) {',
'    var row = p133FindRow(fileId);',
'    return !!(row && row.canOpen);',
'}',
'',
'function p133CanManageEntry(fileId) {',
'    var row = p133FindRow(fileId);',
'    return !!(row && row.canManage);',
'}',
'',
'function p133SelectionCanManage(state) {',
'    var ids = (state && state.ids) || [];',
'    var i;',
'    if (!ids.length) {',
'        return false;',
'    }',
'    for (i = 0; i < ids.length; i += 1) {',
'        if (!p133CanManageEntry(ids[i])) {',
'            return false;',
'        }',
'    }',
'    return true;',
'}',
'',
'function p133CanDragSort() {',
'    return p133ReadViewMode() === ''list'' && p133ReadSortValue() === ''MANUAL'' && p133HasManagePermission();',
'}',
'',
'function p133IsDragPermissionReady() {',
'    var permissionValue = String($v(''P133_DISPLAY'') || '''');',
'    return permissionValue !== '''';',
'}',
'',
'function p133PathText() {',
'    var currentName = $v(''P133_FILE_NAME'') || '''';',
'    var currentPath = $v(''P133_FILE_PATH'') || '''';',
'    if (Number($v(''P133_FILE_LEVEL'') || 0) > 1 && currentPath) {',
'        return currentPath + ''/'' + currentName;',
'    }',
'    return currentName || '''';',
'}',
'',
'function p133IsRootLevel() {',
'    var rootId = String($v(''P133_ROOT_FOLDER_ID'') || '''');',
'    var parentId = String($v(''P133_PARENT_FOLDER_ID'') || rootId || '''');',
'    return !rootId || parentId === rootId || Number($v(''P133_FILE_LEVEL'') || 0) <= 1;',
'}',
'',
'function p133RenderToolbar() {',
'    var $toolbar = $(''#p133_toolbar'');',
'    return $toolbar;',
'}',
'',
'function p133RenderPathbar() {',
'    var pathText = p133PathText();',
'    var rootId = $v(''P133_ROOT_FOLDER_ID'');',
'    var parentId = $v(''P133_PARENT_FOLDER_ID'') || rootId;',
'    var parts = pathText.split(''/'').filter(function(part) { return part; });',
'    var crumbs = [];',
'    try {',
'        crumbs = JSON.parse($v(''P133_BREADCRUMB_JSON'') || ''[]'');',
'    } catch (e) {',
'        crumbs = [];',
'    }',
'    var $bar = $(''#p133_pathbar'');',
'    if (!$bar.length) { return; }',
'    $bar.off(''click.p133pathbar'', ''.p133-up'').on(''click.p133pathbar'', ''.p133-up'', function(event) {',
'        event.preventDefault();',
'        event.stopPropagation();',
'        var currentRootId = $v(''P133_ROOT_FOLDER_ID'');',
'        var currentParentId = $v(''P133_PARENT_FOLDER_ID'') || currentRootId;',
'        var upId = $v(''P133_UP_FOLDER_ID'') || currentRootId;',
'        if (Number($v(''P133_FILE_LEVEL'') || 0) <= 1) {',
'            p133NavigateFolder('''');',
'        } else if (currentParentId && currentParentId !== currentRootId) {',
'            p133NavigateFolder(upId);',
'        } else {',
'            p133NavigateFolder('''');',
'        }',
'    });',
'    $bar.off(''click.p133pathbar'', ''.p133-crumb'').on(''click.p133pathbar'', ''.p133-crumb'', function(event) {',
'        event.preventDefault();',
'        event.stopPropagation();',
'        if ($(this).hasClass(''p133-root'')) {',
'            p133NavigateFolder('''');',
'            return;',
'        }',
'        var targetId = $(this).data(''folderId'');',
'        if (targetId) {',
'            p133NavigateFolder(String(targetId));',
'        }',
'    });',
'    if (crumbs.length) {',
'        var childCrumbs = crumbs.map(function(crumb, index) {',
'            var label = apex.util.escapeHTML(crumb.name || ''/'');',
'            var id = apex.util.escapeHTML(String(crumb.id || ''''));',
'            var current = String(crumb.id || '''') === String(parentId || '''');',
'            var separator = index > 0 ? ''<span class="p133-sep"><span class="fa fa-angle-right" aria-hidden="true"></span></span>'' : '''';',
'            return separator + ''<button type="button" class="p133-crumb'' + (current ? '' is-current'' : '''') + ''" data-folder-id="'' + id + ''">'' + label + ''</button>'';',
'        }).join('''');',
'        $bar.find(''.p133-crumbs'').html(childCrumbs);',
'    } else {',
'        $bar.find(''.p133-crumbs'').html(''<button type="button" class="p133-crumb is-current" data-folder-id="'' + apex.util.escapeHTML(String(rootId || '''')) + ''">'' + apex.util.escapeHTML(parts.join('' / '') || pathText || '''') + ''</butto'
||'n>'');',
'    }',
'    $bar.toggleClass(''is-root'', parentId === rootId);',
'}',
'',
'function p133ReadViewMode() {',
'    var mode = sessionStorage.getItem(''p133:view_mode'') || ''list'';',
'    return mode === ''grid'' ? ''grid'' : ''list'';',
'}',
'',
'function p133SetViewMode(mode) {',
'    var nextMode = mode === ''grid'' ? ''grid'' : ''list'';',
'    sessionStorage.setItem(''p133:view_mode'', nextMode);',
'    if (window.p133SyncView) { window.p133SyncView(); }',
'    else if (window.p133SyncViewImpl) { window.p133SyncViewImpl(); }',
'}',
'',
'function p133RenderGridCards() {',
'    var rows = p133GetCurrentRows();',
'    var state = p133EnsureValidSelection();',
'    var selectedMap = {};',
'    var cards = [];',
'    var $region = $(''#content'');',
'    var $gridView = $(''#p133_grid_view'');',
'    if (!$gridView.length) {',
'        $region.after(''<div id="p133_grid_view" class="p133-grid-view" style="display:none;"></div>'');',
'        $gridView = $(''#p133_grid_view'');',
'    }',
'    state.ids.forEach(function(id) {',
'        selectedMap[id] = true;',
'    });',
'    if (!rows.length) {',
unistr('        $gridView.html(''<div class="p133-grid-empty">\672A\627E\5230\6570\636E</div>'');'),
'        return;',
'    }',
'    rows.forEach(function(row) {',
'        var id = row.id;',
'        var type = row.type;',
'        var icon = row.icon || (type === ''FOLDER'' ? ''fa-folder-o'' : ''fa-file-o'');',
'        var checked = !!selectedMap[id];',
'        cards.push(',
'            ''<div class="p133-card'' + (checked ? '' is-selected'' : '''') + ''" data-file-id="'' + apex.util.escapeHTML(String(id || '''')) + ''" data-file-type="'' + apex.util.escapeHTML(String(type || '''')) + ''">'' +',
'            ''<label class="p133-card-check"><input type="checkbox" class="p133-card-checkbox" data-file-id="'' + apex.util.escapeHTML(String(id || '''')) + ''" data-file-type="'' + apex.util.escapeHTML(String(type || '''')) + ''"'' + (checked ? '' checked'' : '''
||''') + '' /></label>'' +',
'            ''<button type="button" class="p133-card-open'' + (row.canOpen ? '''' : '' is-disabled'') + ''" data-file-id="'' + apex.util.escapeHTML(String(id || '''')) + ''" data-file-type="'' + apex.util.escapeHTML(String(type || '''')) + ''"'' + (row.canOpen ? '''' '
||': '' disabled'') + ''>'' +',
'            ''<span class="fa '' + apex.util.escapeHTML(String(icon)) + ''" aria-hidden="true"></span>'' +',
'            ''<span class="p133-card-name">'' + apex.util.escapeHTML(String(row.name || '''')) + ''</span>'' +',
'            ''</button>'' +',
'            ''</div>''',
'        );',
'    });',
'    $gridView.html(cards.join(''''));',
'}',
'',
'function p133ApplyGridColumnState() {',
'    var contentRegion;',
'    var gridView;',
'    var isManualSort;',
'    try {',
'        contentRegion = p133TryGetRegion(''content'');',
'        gridView = contentRegion ? contentRegion.call(''getViews'').grid : null;',
'        isManualSort = p133ReadSortValue() === ''MANUAL'';',
'        if (gridView && gridView.view$ && gridView.view$.grid) {',
'            gridView.view$.grid(''hideColumn'', ''OPERATE'');',
'            if (isManualSort) {',
'                gridView.view$.grid(''showColumn'', ''SORT_NUM'');',
'            } else {',
'                gridView.view$.grid(''hideColumn'', ''SORT_NUM'');',
'            }',
'        }',
'    } catch (e) {',
'        // ignore grid presentation failures',
'    }',
'}',
'',
'function p133UpdateToolbarState() {',
'    var $toolbar = p133RenderToolbar();',
'    var state = p133EnsureValidSelection();',
'    var viewMode = p133ReadViewMode();',
'    var canManage = p133HasManagePermission();',
'    var selectionCanManage = state.count > 0 && p133SelectionCanManage(state);',
    '    var selectionSingleReadonly = state.count === 1 && !selectionCanManage;',
'    var isRootLevel = p133IsRootLevel();',
'    var $shareButton;',
'    var $renameButton;',
'    var $moveButton;',
'    var $settingsButton;',
'    var $deleteButton;',
'    var $selectionInline;',
'',
'    if (!$toolbar.length) {',
'        return;',
'    }',
'',
'    $toolbar.toggleClass(''is-selection-active'', state.count > 0);',
'    $toolbar.find(''.p133-selection-count-value'').text(state.count);',
'    $toolbar.find(''.p133-sort-label'').text(p133ReadSortLabel());',
'    $toolbar.find(''.p133-sort-option'').removeClass(''is-active'');',
'    $toolbar.find(''.p133-sort-option[data-sort="'' + p133ReadSortValue() + ''"]'').addClass(''is-active'');',
'    $toolbar.find(''.p133-view-btn'').removeClass(''is-active'');',
'    $toolbar.find(''.p133-view-btn[data-view-mode="'' + viewMode + ''"]'').addClass(''is-active'');',
'    $shareButton = $toolbar.find(''[data-p133-action="share"]'');',
'    $renameButton = $toolbar.find(''[data-p133-action="rename"]'');',
'    $moveButton = $toolbar.find(''[data-p133-action="move"]'');',
'    $settingsButton = $toolbar.find(''[data-p133-action="settings"]'');',
'    $deleteButton = $toolbar.find(''[data-p133-action="delete"]'');',
'    $selectionInline = $toolbar.find(''.p133-selection-inline'');',
'',
'    $toolbar.find(''[data-p133-action="create_folder"]'').css(''display'', p133CanCreateFolder() ? ''inline-flex'' : ''none'');',
'    $toolbar.find(''[data-p133-action="upload"]'').css(''display'', canManage ? ''inline-flex'' : ''none'');',
'    $selectionInline.css(''display'', state.count > 0 ? ''flex'' : ''none'');',
'    $toolbar.find(''.p133-toolbar-actions'').css(''display'', selectionCanManage || selectionSingleReadonly ? ''flex'' : ''none'');',
'    $shareButton.prop(''disabled'', false).css(''display'', state.count === 1 ? ''inline-flex'' : ''none'');',
'    $settingsButton.prop(''disabled'', false).css(''display'', state.count === 1 ? ''inline-flex'' : ''none'');',
'    $renameButton.prop(''disabled'', false).css(''display'', selectionCanManage && state.count === 1 ? ''inline-flex'' : ''none'');',
'    $moveButton.prop(''disabled'', false).css(''display'', selectionCanManage && state.count > 0 ? ''inline-flex'' : ''none'');',
'    $deleteButton.prop(''disabled'', false).css(''display'', selectionCanManage && state.count > 0 ? ''inline-flex'' : ''none'');',
'',
'    if (!selectionCanManage) {',
'        $renameButton.add($moveButton).add($deleteButton).prop(''disabled'', true);',
'        $shareButton.prop(''disabled'', state.count !== 1);',
'        $settingsButton.prop(''disabled'', state.count !== 1);',
'        return;',
'    }',
'',
'    $shareButton.prop(''disabled'', state.count !== 1);',
'    $renameButton.prop(''disabled'', state.count !== 1);',
'    $settingsButton.prop(''disabled'', state.count !== 1);',
'    $moveButton.prop(''disabled'', state.count < 1);',
'    $deleteButton.prop(''disabled'', state.count < 1);',
'}',
'',
'function p133SyncSelectionUi() {',
'    p133EnsureValidSelection();',
'    if (window.p133ApplyGridSelectionFromState) {',
'        window.p133ApplyGridSelectionFromState();',
'    }',
'    p133RenderGridCards();',
'    p133UpdateToolbarState();',
'}',
'',
'function p133RunSingleAction(actionName, fileId, fileType) {',
'    var targetId = String(fileId || '''').trim();',
'    var targetType = String(fileType || '''').trim();',
'    p133SetSelection([targetId], [targetType]);',
'    p133SyncSelectionUi();',
'    if (actionName === ''rename'') {',
'        p133RedirectToRename(targetId);',
'        return;',
'    }',
'    if (actionName === ''move'') {',
'        p133RedirectToMove([targetId]);',
'        return;',
'    }',
'    if (actionName === ''delete'') {',
unistr('        apex.message.confirm(''\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F'', function(okPressed) {'),
'            if (!okPressed) {',
'                return;',
'            }',
'            apex.server.process(''P133_DELETE_SELECTION'', { pageItems: ''#P133_FILE_IDS'' }, {',
'                dataType: ''json'',',
'                success: function(resp) {',
'                    if (resp && resp.status === ''success'') {',
'                        p133ClearSelection();',
'                        p133SyncSelectionUi();',
unistr('                        apex.message.showPageSuccess(''\5220\9664\6210\529F\FF01'');'),
'                        p133RefreshContent();',
'                        return;',
'                    }',
unistr('                    apex.message.alert((resp && resp.message) || ''\5220\9664\5931\8D25\FF01'');'),
'                },',
unistr('                error: function(jqXHR, textStatus, errorThrown) { apex.message.alert(errorThrown || textStatus || ''\5220\9664\5931\8D25\FF01''); }'),
'            });',
'        });',
'        return;',
'    }',
'    if (actionName === ''share'' || actionName === ''settings'') {',
'        p133OpenPermissionDialog(targetId);',
'        return;',
'    }',
'    p133RunAction(actionName);',
'}', 
'',
'function p133EnsureRowMenu() {',
'    var $menu = $(''#p133_row_menu'');',
'    if (!$menu.length) {',
'        $(''body'').append(''<div id="p133_row_menu" class="p133-row-menu" style="display:none;"></div>'');',
'        $menu = $(''#p133_row_menu'');',
'    }',
'    return $menu;',
'}',
'',
'function p133HideRowMenu() {',
'    p133EnsureRowMenu().removeClass(''is-open'').hide().empty();',
'}',
'',
'function p133OpenRowMenu(event, fileId, fileType, canManage) {',
'    var id = String(fileId || '''');',
'    var type = String(fileType || '''');',
'    var manageFlag = String(canManage || ''0'') === ''1'';',
'    var items = [];',
'    var $menu;',
'',
'    event.preventDefault();',
'    event.stopPropagation();',
'',
'    if (manageFlag) {',
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="rename" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-pencil" aria-hidden="true"></span><span>\91CD\547D\540D</span></button>'');'),
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="share" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-share-alt" aria-hidden="true"></span><span>\5206\4EAB</span></button>'');'),
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="move" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-exchange" aria-hidden="true"></span><span>\79FB\52A8\5230...</span></button>'');'),
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="settings" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-lock" aria-hidden="true"></span><span>\6743\9650\8BBE\7F6E</span></button>'');'),
unistr('        items.push(''<button type="button" class="p133-row-menu-item is-danger" data-p133-row-action="delete" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-trash-o" aria-hidden="true"></span><span>\5220\9664</span></button>'');'),
'    } else {',
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="share" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-share-alt" aria-hidden="true"></span><span>\5206\4EAB</span></button>'');'),
unistr('        items.push(''<button type="button" class="p133-row-menu-item" data-p133-row-action="settings" data-file-id="'' + apex.util.escapeHTML(id) + ''" data-file-type="'' + apex.util.escapeHTML(type) + ''"><span class="fa fa-lock" aria-hidden="true"></span><span>\6743\9650\8BBE\7F6E</span></button>'');'),
'    }',
'',
'    $menu = p133EnsureRowMenu();',
'    $menu.html(items.join('''')).css({ left: event.pageX + ''px'', top: event.pageY + ''px'' }).show().addClass(''is-open'');',
'',
'    window.setTimeout(function() {',
'        var menuRect = $menu[0].getBoundingClientRect();',
'        var nextLeft = event.pageX;',
'        var nextTop = event.pageY;',
'        if (menuRect.right > window.innerWidth - 12) {',
'            nextLeft = Math.max(12, event.pageX - menuRect.width);',
'        }',
'        if (menuRect.bottom > window.innerHeight - 12) {',
'            nextTop = Math.max(12, event.pageY - menuRect.height);',
'        }',
'        $menu.css({ left: nextLeft + ''px'', top: nextTop + ''px'' });',
'    }, 0);',
'}',
'',
'window.p133SyncView = function() { if (window.p133SyncViewImpl) { return window.p133SyncViewImpl(); } };',
'window.p133ScheduleViewSync = function() { if (window.p133ScheduleViewSyncImpl) { return window.p133ScheduleViewSyncImpl(); } };',
'window.p133InitViewMode = function() { if (window.p133InitViewModeImpl) { return window.p133InitViewModeImpl(); } };',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.p133ApplyGridSelectionFromState = function() {',
'    var region;',
'    var gridView;',
'    var model;',
'    var state;',
'    var wanted = {};',
'    var records = [];',
'',
'    try {',
'        region = p133TryGetRegion(''content'');',
'        gridView = region && region.widget ? region.widget().interactiveGrid(''getViews'', ''grid'') : null;',
'        model = gridView ? gridView.model : null;',
'    } catch (e) {',
'        return;',
'    }',
'',
'    if (!gridView || !model || typeof gridView.setSelectedRecords !== ''function'') {',
'        return;',
'    }',
'',
'    state = p133GetSelectionState();',
'    state.ids.forEach(function(id) {',
'        wanted[String(id)] = true;',
'    });',
'',
'    model.forEach(function(record) {',
'        var recordId = String(p133NormalizeCellValue(model.getValue(record, ''FILE_ID'')) || '''');',
'        if (wanted[recordId]) {',
'            records.push(record);',
'        }',
'    });',
'',
'    p133ApplyingGridSelection = true;',
'    window.p133ApplyingGridSelection = true;',
'    try {',
'        gridView.setSelectedRecords(records, false, true);',
'    } finally {',
'        window.setTimeout(function() {',
'            p133ApplyingGridSelection = false;',
'            window.p133ApplyingGridSelection = false;',
'        }, 0);',
'    }',
'};',
'',
'window.p133RedirectToRenameImpl = function(fileId) {',
'    var targetFileId = String(fileId || '''').trim();',
'    if (!targetFileId) { return; }',
'    $s(''P133_FILE_ID'', targetFileId);',
'    p133OpenActionUrl(''RENAME'');',
'};',
'',
'window.p133RedirectToMoveImpl = function(fileIds) {',
'    var targetIds = (fileIds || []).map(function(entry) { return String(entry || '''').trim(); }).filter(function(entry) { return entry !== ''''; });',
'    if (!targetIds.length) { return; }',
'    $s(''P133_FILE_IDS'', targetIds.join('',''));',
'    $s(''P133_FILE_ID'', targetIds[0] || '''');',
'    p133OpenActionUrl(''MOVE'');',
'};',
'',
'window.p133DeleteSelectionImpl = function() {',
unistr('    apex.message.confirm(''\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F'', function(okPressed) {'),
'        if (!okPressed) { return; }',
'        apex.server.process(''P133_DELETE_SELECTION'', { pageItems: ''#P133_FILE_IDS'' }, {',
'            dataType: ''json'',',
'            success: function(resp) {',
'                if (resp && resp.status === ''success'') {',
'                    p133ClearSelection();',
'                    p133SyncSelectionUi();',
unistr('                    apex.message.showPageSuccess(''\5220\9664\6210\529F\FF01'');'),
'                    p133RefreshContent();',
'                    window.setTimeout(function() { if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); } }, 250);',
'                    return;',
'                }',
unistr('                apex.message.alert((resp && resp.message) || ''\5220\9664\5931\8D25\FF01'');'),
'            },',
unistr('            error: function(jqXHR, textStatus, errorThrown) { apex.message.alert(errorThrown || textStatus || ''\5220\9664\5931\8D25\FF01''); }'),
'        });',
'    });',
'};',
'',
'window.p133RunActionImpl = function(actionName) {',
'    var state = p133EnsureValidSelection();',
'    var singleOnly = [''rename'', ''share'', ''settings''];',
'    var managerActions = [''create_folder'', ''upload'', ''share'', ''rename'', ''move'', ''settings'', ''delete''];',
'    if (actionName === ''create_folder'' && !p133CanCreateFolder()) { alert(''\5F53\524D\6CA1\6709\53EF\6267\884C\8BE5\64CD\4F5C\7684\7BA1\7406\6743\9650''); return; }',
'    if (actionName === ''create_folder'') { p133TriggerButton(''btn_create_folder''); return; }',
'    if (actionName === ''upload'' && !p133HasManagePermission()) { alert(''\5F53\524D\6CA1\6709\53EF\6267\884C\8BE5\64CD\4F5C\7684\7BA1\7406\6743\9650''); return; }',
'    if (actionName === ''upload'') { p133TriggerButton(''btn_upload''); return; }',
unistr('    if (!state.count) { alert(''\8BF7\9009\62E9\8981\64CD\4F5C\7684\6587\4EF6\6216\6587\4EF6\5939''); return; }'),
unistr('    if (singleOnly.indexOf(actionName) >= 0 && state.count !== 1) { alert(''\8BE5\64CD\4F5C\4EC5\652F\6301\5355\9009''); return; }'),
unistr('    if (managerActions.indexOf(actionName) >= 0 && actionName !== ''create_folder'' && !p133SelectionCanManage(state)) { alert(''\5F53\524D\9009\4E2D\5BF9\8C61\4E2D\5B58\5728\65E0\7BA1\7406\6743\9650\9879\FF0C\65E0\6CD5\6267\884C\8BE5\64CD\4F5C''); return; }'),
'    if (!String($v(''P133_PARENT_FOLDER_ID'') || '''') && state.singleType === ''FOLDER'' && state.singleId) { $s(''P133_ROOT_FOLDER_ID'', state.singleId); }',
'    if (actionName === ''share'') { p133OpenPermissionDialog(state.singleId); return; }',
'    if (actionName === ''rename'') { p133RedirectToRename(state.singleId); return; }',
'    if (actionName === ''move'') { p133RedirectToMove(state.ids); return; }',
'    if (actionName === ''settings'') { p133OpenPermissionDialog(state.singleId); return; }',
'    if (actionName === ''delete'') { p133DeleteSelection(); }',
'};',
'',
'function p133RunPreparedUrl(targetUrl) {',
'    var nextUrl = String(targetUrl || '''').trim();',
'    if (!nextUrl) { return; }',
'    if (nextUrl.indexOf(''javascript:'') === 0) {',
'        window.eval(nextUrl.substring(11));',
'        return;',
'    }',
'    apex.navigation.redirect(nextUrl);',
'}',
'',
'window.p133OpenActionUrlImpl = function(actionName) {',
'    apex.server.process(''P133_GET_ACTION_URL'', {',
'        x01: actionName,',
'        pageItems: ''#P133_FILE_ID,#P133_FILE_IDS,#P133_ROOT_FOLDER_ID,#P133_PARENT_FOLDER_ID''',
'    }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (resp && resp.status === ''success'' && resp.url) {',
'                p133RunPreparedUrl(resp.url);',
'                return;',
'            }',
unistr('            apex.message.alert((resp && resp.message) || ''\64CD\4F5C\94FE\63A5\751F\6210\5931\8D25'');'),
'        },',
unistr('        error: function(jqXHR, textStatus, errorThrown) { apex.message.alert(errorThrown || textStatus || ''\64CD\4F5C\94FE\63A5\751F\6210\5931\8D25''); }'),
'    });',
'};',
'',
'function p133BindGridSelectionGuard() {',
'    var region = p133TryGetRegion(''content'');',
'    var rootEl;',
 '    var bindGuard;',
'    var views = region ? region.call(''getViews'') : null;',
'    var gridView = views && views.grid;',
'    var grid$ = gridView && gridView.view$;',
'    if (!grid$ || !grid$.get) { return; }',
'    rootEl = grid$.get(0);',
'    if (!rootEl) { return; }',
'    bindGuard = function(event) {',
'        var target = event.target;',
'        var rowEl = target && target.closest ? target.closest(''tr.a-GV-row'') : null;',
'        var selectorCell = target && target.closest ? target.closest(''td.a-GV-selHeader, td.a-GV-rowSelector, th.a-GV-selHeader, .a-GV-rowSelector'') : null;',
'        var selectorInput = target && target.closest ? target.closest(''input[type="checkbox"]'') : null;',
'        var allowedAction = target && target.closest ? target.closest(''.p133-row-action-btn, .p133-row-menu-item, .p133-file-open, a, button'') : null;',
'        if (rowEl && !selectorCell && !selectorInput && !allowedAction) { event.preventDefault(); event.stopPropagation(); }',
'    };',
'    if (rootEl._p133SelectionGuardMouseDown) { rootEl.removeEventListener(''mousedown'', rootEl._p133SelectionGuardMouseDown, true); }',
'    if (rootEl._p133SelectionGuardClick) { rootEl.removeEventListener(''click'', rootEl._p133SelectionGuardClick, true); }',
'    rootEl._p133SelectionGuardMouseDown = bindGuard;',
'    rootEl._p133SelectionGuardClick = bindGuard;',
'    rootEl.addEventListener(''mousedown'', rootEl._p133SelectionGuardMouseDown, true);',
'    rootEl.addEventListener(''click'', rootEl._p133SelectionGuardClick, true);',
'}',
'',
'window.p133SyncViewImpl = function() {',
'    var mode = p133ReadViewMode();',
'    var $region = $(''#content'');',
'    var $gridView = $(''#p133_grid_view'');',
'    p133RenderToolbar();',
'    p133RenderPathbar();',
'    p133RenderGridCards();',
'    $gridView = $(''#p133_grid_view'');',
'    if (mode === ''grid'') {',
'        $region.addClass(''p133-content-hidden'');',
'        $gridView.show();',
'    } else {',
'        $gridView.hide();',
'        $region.removeClass(''p133-content-hidden'');',
'        window.setTimeout(function() { apex.event.trigger(window, ''apexwindowresized''); }, 0);',
'    }',
'    p133ApplyGridColumnState();',
'    if (window.p133ApplyGridSelectionFromState) { window.p133ApplyGridSelectionFromState(); }',
'    p133BindGridSelectionGuard();',
'    p133UpdateToolbarState();',
'    if (window.p133ScheduleDragSortInit) { window.p133ScheduleDragSortInit(0); }',
'};',
'',
'window.p133ScheduleViewSyncImpl = function() {',
'    [0, 120, 320].forEach(function(delay) { window.setTimeout(function() { if (window.p133SyncView) { window.p133SyncView(); } }, delay); });',
'};',
'',
'window.p133InitViewModeImpl = function() {',
'    $(document).off(''click.p133toolbar'', ''#p133_toolbar [data-p133-action]'').on(''click.p133toolbar'', ''#p133_toolbar [data-p133-action]'', function() { p133RunAction($(this).data(''p133Action'')); });',
'    $(document).off(''click.p133view'', ''#p133_toolbar .p133-view-btn'').on(''click.p133view'', ''#p133_toolbar .p133-view-btn'', function() { p133SetViewMode($(this).data(''viewMode'') || ''list''); });',
'    $(document).off(''click.p133sort'', ''#p133_toolbar .p133-sort-trigger'').on(''click.p133sort'', ''#p133_toolbar .p133-sort-trigger'', function(event) { event.preventDefault(); event.stopPropagation(); p133ToggleSortMenu(); });',
'    $(document).off(''click.p133sortoption'', ''#p133_toolbar .p133-sort-option'').on(''click.p133sortoption'', ''#p133_toolbar .p133-sort-option'', function(event) { event.preventDefault(); event.stopPropagation(); p133SetSortValue($(this).data(''sort'')); });',
'    $(document).off(''click.p133refresh'', ''#p133_toolbar .p133-refresh'').on(''click.p133refresh'', ''#p133_toolbar .p133-refresh'', function() { p133RefreshContent(); });',
'    $(document).off(''click.p133rowmenu'', ''#p133_row_menu [data-p133-row-action]'').on(''click.p133rowmenu'', ''#p133_row_menu [data-p133-row-action]'', function(event) { event.preventDefault(); event.stopPropagation(); p133HideRowMenu(); p133RunSingleAction($(this).data(''p133RowAction''), $(this).data(''fileId''), $(this).data(''fileType'')); });',
'    $(document).off(''change.p133cards'', ''#p133_grid_view .p133-card-checkbox'').on(''change.p133cards'', ''#p133_grid_view .p133-card-checkbox'', function(event) {',
'        var state = p133GetSelectionState();',
'        var ids = state.ids.slice();',
'        var types = state.types.slice();',
'        var id = String($(this).data(''fileId'') || '''');',
'        var type = String($(this).data(''fileType'') || '''');',
'        var index = ids.indexOf(id);',
'        event.stopPropagation();',
'        if (this.checked && index < 0) { ids.push(id); types.push(type); }',
'        else if (!this.checked && index >= 0) { ids.splice(index, 1); types.splice(index, 1); }',
'        p133SetSelection(ids, types);',
'        p133SyncSelectionUi();',
'    });',
'    $(document).off(''click.p133fileopen'', ''#content .p133-file-open'').on(''click.p133fileopen'', ''#content .p133-file-open'', function(event) { event.preventDefault(); event.stopPropagation(); });',
'    $(document).off(''dblclick.p133fileopen'', ''#content .p133-file-open'').on(''dblclick.p133fileopen'', ''#content .p133-file-open'', function(event) { event.preventDefault(); event.stopPropagation(); p133OpenEntry($(this).data(''fileId''), $(this).data(''fileType'')); });',
'    $(document).off(''dblclick.p133cardopen'', ''#p133_grid_view .p133-card-open'').on(''dblclick.p133cardopen'', ''#p133_grid_view .p133-card-open'', function(event) { event.preventDefault(); event.stopPropagation(); p133OpenEntry($(this).data(''fileId''), $(this).data(''fileType'')); });',
'    $(document).off(''click.p133sortdismiss'').on(''click.p133sortdismiss'', function(event) {',
'        if (!$(event.target).closest(''#p133_toolbar .p133-sort-box'').length) { p133ToggleSortMenu(false); }',
'        if (!$(event.target).closest(''#p133_row_menu, .p133-row-action-btn'').length) { p133HideRowMenu(); }',
'    });',
'    $(document).off(''change.p133permstate'', ''#P133_DISPLAY, #P133_PARENT_FOLDER_ID, #P133_FILE_LEVEL'').on(''change.p133permstate'', ''#P133_DISPLAY, #P133_PARENT_FOLDER_ID, #P133_FILE_LEVEL'', function() {',
'        if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); }',
'    });',
'    $(document).off(''apexafterrefresh.p133'', ''#content, #content_ig'').on(''apexafterrefresh.p133'', ''#content, #content_ig'', function() { if (window.p133ScheduleViewSync) { window.p133ScheduleViewSync(); } });',
'    if (window.p133SyncView) { window.p133SyncView(); }',
'};',
'',
'function p133GetDragRows(rowContainer$) {',
'    return rowContainer$.children(''tr.a-GV-row'').filter(function() {',
'        return !!(this.getAttribute(''data-id'') || this.getAttribute(''data-row-id''));',
'    });',
'}',
'',
'function p133CollectDragIds(rows$) {',
'    return rows$.toArray().map(function(rowEl) {',
'        return String(rowEl.getAttribute(''data-id'') || rowEl.getAttribute(''data-row-id'') || '''');',
'    }).filter(Boolean);',
'}',
'',
'function p133GetHandleCellSelector(region, grid$, handleColumn) {',
'    var headerIds = region.element.find(''th[data-column="'' + handleColumn + ''"]'').map(function() {',
'        return apex.jQuery(this).attr(''id'');',
'    }).get().filter(Boolean);',
'    var header$ = region.element.find(''th[data-column="'' + handleColumn + ''"]'').first();',
'    var columnIndex;',
'    var selectors;',
'',
'    if (headerIds.length) {',
'        selectors = headerIds.map(function(headerId) {',
'            return ''td[headers~="'' + headerId + ''"],td[headers*="'' + headerId + ''"]'';',
'        });',
'        return selectors.join('','');',
'    }',
'',
'    if (!header$.length) {',
'        header$ = grid$.find(''.a-GV-w-scroll thead tr'').first().children().filter(function() {',
unistr('            return apex.jQuery(this).text().replace(/\005Cs+/g, '''') === ''\6392\5E8F'';'),
'        }).first();',
'    }',
'',
'    if (!header$.length) {',
'        header$ = region.element.find(''th[data-column="SORT_NUM"]'').first();',
'    }',
'',
'    if (header$.length) {',
'        columnIndex = header$.index() + 1;',
'        if (columnIndex > 0) {',
'            return ''td:nth-child('' + columnIndex + ''),th:nth-child('' + columnIndex + '')'';',
'        }',
'    }',
'',
'    return ''td:nth-child(2),th:nth-child(2)'';',
'}',
'',
'function p133GetRowHandleCell(rowEl, cellSelector, handleColumn) {',
'    var row$ = apex.jQuery(rowEl);',
'    var cell$ = row$.children(''td[data-column="'' + handleColumn + ''"]'').first();',
'',
'    if (!cell$.length && cellSelector) {',
'        cell$ = row$.children(cellSelector).first();',
'    }',
'',
'    if (!cell$.length && cellSelector) {',
'        cell$ = row$.find(cellSelector).first();',
'    }',
'',
'    return cell$;',
'}',
'',
'function p133GetGridContainers(region, grid$, handleColumn) {',
'    var candidateBodies$ = grid$.find(''.a-GV-w-scroll tbody, .a-GV-w-frozen tbody'').filter(function() {',
'        return p133GetDragRows(apex.jQuery(this)).length > 0;',
'    });',
'    var mainBody$ = candidateBodies$.filter(function() {',
'        return !!this.closest(''.a-GV-w-scroll'');',
'    }).first();',
'    var mainRowIds;',
'    var mirrorBodies = [];',
'',
'    if (!mainBody$.length) {',
'        mainBody$ = candidateBodies$.first();',
'    }',
'',
'    mainRowIds = p133CollectDragIds(p133GetDragRows(mainBody$));',
'',
'    candidateBodies$.each(function() {',
'        var body$ = apex.jQuery(this);',
'        var bodyIds = p133CollectDragIds(p133GetDragRows(body$));',
'',
'        if (bodyIds.length === mainRowIds.length && bodyIds.join('','') === mainRowIds.join('','')) {',
'            mirrorBodies.push(this);',
'        }',
'    });',
'',
'    return {',
'        mainBody$: mainBody$,',
'        mirrorBodies$: apex.jQuery(mirrorBodies.length ? mirrorBodies : mainBody$.toArray()),',
'        allBodies$: candidateBodies$,',
'        mirrorRowsReady: !!mainRowIds.length',
'    };',
'}',
'',
'function p133DecorateDragHandles(region, grid$, bodyContainers$, handleColumn) {',
'    var cellSelector = p133GetHandleCellSelector(region, grid$, handleColumn);',
'    var cells$ = apex.jQuery();',
'    var decoratedCount = 0;',
'',
'    bodyContainers$.each(function() {',
'        p133GetDragRows(apex.jQuery(this)).each(function() {',
'            var cell$ = p133GetRowHandleCell(this, cellSelector, handleColumn);',
'            if (cell$.length) {',
'                cells$ = cells$.add(cell$);',
'            }',
'        });',
'    });',
'',
'    cells$.each(function() {',
'        var cell = this;',
'        var handleWrapEl;',
'        var labelText;',
'',
'        if (!cell || cell.classList.contains(''is-hidden'')) {',
'            return;',
'        }',
'',
'        labelText = String(cell.textContent || '''').trim();',
'        cell.classList.add(''task-sort-cell'');',
'        decoratedCount += 1;',
unistr('        cell.setAttribute(''title'', ''\62D6\62FD\6392\5E8F'');'),
'        if (!cell.querySelector(''.p133-sort-handle'')) {',
'            cell.innerHTML = ''<span class="p133-sort-handle"><span class="fa fa-sort js-task-drag-handle" aria-hidden="true"></span><span class="p133-sort-value">'' + apex.util.escapeHTML(labelText) + ''</span></span>'';',
'        } else {',
'            handleWrapEl = cell.querySelector(''.p133-sort-handle'');',
'            if (handleWrapEl && !handleWrapEl.querySelector(''.js-task-drag-handle'')) {',
'                handleWrapEl.insertAdjacentHTML(''afterbegin'', ''<span class="fa fa-sort js-task-drag-handle" aria-hidden="true"></span>'');',
'            }',
'        }',
'    });',
'',
'    return decoratedCount;',
'}',
'',
'function p133BuildDragGhost(mirrors) {',
'    var ghostWidth = 0;',
'    var ghostEl = document.createElement(''div'');',
'    var ghostTableEl = document.createElement(''table'');',
'    var ghostBodyEl = document.createElement(''tbody'');',
'    var ghostRowEl = document.createElement(''tr'');',
'',
'    ghostEl.className = ''task-drag-ghost'';',
'    ghostTableEl.className = ''task-drag-ghost-table'';',
'',
'    mirrors.forEach(function(rowEl) {',
'        Array.prototype.forEach.call(rowEl.children, function(cellEl) {',
'            var ghostCellEl = cellEl.cloneNode(true);',
'            var cellWidth = Math.max(cellEl.getBoundingClientRect().width, cellEl.offsetWidth, 24);',
'',
'            ghostWidth += cellWidth;',
'            ghostCellEl.style.width = cellWidth + ''px'';',
'            ghostCellEl.style.minWidth = cellWidth + ''px'';',
'            ghostCellEl.style.maxWidth = cellWidth + ''px'';',
'            ghostRowEl.appendChild(ghostCellEl);',
'        });',
'    });',
'',
'    ghostWidth = Math.max(ghostWidth, 320);',
'    ghostEl.style.width = ghostWidth + ''px'';',
'    ghostTableEl.style.width = ghostWidth + ''px'';',
'    ghostBodyEl.appendChild(ghostRowEl);',
'    ghostTableEl.appendChild(ghostBodyEl);',
'    ghostEl.appendChild(ghostTableEl);',
'    document.body.appendChild(ghostEl);',
'    return ghostEl;',
'}',
'',
'function p133MoveMirrorRows(gridContainers, sourceRowId, targetRowId, placeAfter) {',
'    gridContainers.mirrorBodies$.each(function() {',
'        var bodyEl = this;',
'        var sourceRowEl = bodyEl.querySelector(''tr[data-id="'' + sourceRowId + ''"], tr[data-row-id="'' + sourceRowId + ''"]'');',
'        var targetRowEl = targetRowId ? bodyEl.querySelector(''tr[data-id="'' + targetRowId + ''"], tr[data-row-id="'' + targetRowId + ''"]'') : null;',
'        var referenceRowEl;',
'',
'        if (!sourceRowEl || !targetRowEl || sourceRowEl === targetRowEl) {',
'            return;',
'        }',
'',
'        referenceRowEl = placeAfter ? targetRowEl.nextElementSibling : targetRowEl;',
'        if (referenceRowEl === sourceRowEl) {',
'            return;',
'        }',
'',
'        bodyEl.insertBefore(sourceRowEl, referenceRowEl || null);',
'    });',
'}',
'',
'function p133NormalizeDragResponse(responseText) {',
'    if (!responseText) {',
'        return null;',
'    }',
'',
'    if (typeof responseText === ''object'') {',
'        return responseText;',
'    }',
'',
'    try {',
'        return JSON.parse(responseText);',
'    } catch (e) {',
'        return {',
'            status: ''error'',',
'            message: String(responseText)',
'        };',
'    }',
'}',
'',
'function p133GetDragErrorMessage(jqXHR, textStatus, errorThrown) {',
'    var responseText = jqXHR && jqXHR.responseText ? jqXHR.responseText : '''';',
'    var response = p133NormalizeDragResponse(responseText);',
'',
'    if (response && response.message) {',
'        return response.message;',
'    }',
'',
unistr('    return errorThrown || textStatus || ''\4FDD\5B58\6392\5E8F\5931\8D25'';'),
'}',
'',
'function p133SaveDragOrder(region, gridView, grid$, rowContainer$, originalIds, currentIds, config) {',
'    var pageInfo = grid$.grid(''getPageInfo'') || {};',
'',
'    apex.server.process(config.processName, {',
'        x01: String(pageInfo.offset || 0),',
'        pageItems: config.pageItems,',
'        f01: currentIds,',
'        f02: originalIds',
'    }, {',
'        dataType: ''text'',',
'        success: function(responseText) {',
'            var response = p133NormalizeDragResponse(responseText);',
'',
'            if (response && response.status && response.status !== ''success'') {',
unistr('                apex.message.alert(response.message || ''\4FDD\5B58\6392\5E8F\5931\8D25'');'),
'                region.refresh();',
'                return;',
'            }',
'',
unistr('            apex.message.showPageSuccess(''\6392\5E8F\5DF2\4FDD\5B58'');'),
'            region.refresh();',
'        },',
'        error: function(jqXHR, textStatus, errorThrown) {',
'            apex.message.alert(p133GetDragErrorMessage(jqXHR, textStatus, errorThrown));',
'            region.refresh();',
'        }',
'    });',
'}',
'',
'function p133BindNativeDnd(region, gridView, grid$, gridContainers, config) {',
'    var rowContainer$ = gridContainers.mainBody$;',
'    var dragBodies$ = gridContainers.mirrorBodies$;',
'    var rootEl = grid$.get(0);',
'    var dragState = null;',
'',
'    if (!rowContainer$.length || !dragBodies$.length || !rootEl) {',
'        return;',
'    }',
'',
'    if (rootEl._p133DragSortCleanup) {',
'        rootEl._p133DragSortCleanup();',
'    }',
'',
'    function clearDropTarget() {',
'        dragBodies$.children(''tr.a-GV-row'').removeClass(''is-drop-target'');',
'    }',
'',
'    function cleanupDrag() {',
'        if (!dragState) {',
'            return;',
'        }',
'',
'        document.removeEventListener(''mousemove'', dragState.onMouseMove);',
'        document.removeEventListener(''mouseup'', dragState.onMouseUp);',
'        clearDropTarget();',
'        dragState.rows.forEach(function(rowEl) {',
'            rowEl.classList.remove(''is-dragging'');',
'        });',
'',
'        if (dragState.ghostEl && dragState.ghostEl.parentNode) {',
'            dragState.ghostEl.parentNode.removeChild(dragState.ghostEl);',
'        }',
'',
'        dragState = null;',
'        window._p133DragSortDragging = false;',
'',
'        if (window._p133DragSortPendingRebind) {',
'            window._p133DragSortPendingRebind = false;',
'            p133ScheduleDragSortInit(0);',
'        }',
'    }',
'',
'    function onMouseDown(event) {',
'        var handleEl = event.target.closest(''td.task-sort-cell, .js-task-drag-handle, .p133-sort-handle, .p133-sort-value'');',
'        var rowEl;',
'        var sourceRowEl;',
'        var sourceRowId;',
'        var mirrors = [];',
'        var originalIds;',
'',
'        if (event.button !== 0 || !handleEl || !p133CanDragSort()) {',
'            return;',
'        }',
'',
'        rowEl = handleEl.closest(''tr.a-GV-row'');',
'        if (!rowEl) {',
'            return;',
'        }',
'',
'        sourceRowId = String(rowEl.getAttribute(''data-id'') || rowEl.getAttribute(''data-row-id'') || '''');',
'        if (!sourceRowId) {',
'            return;',
'        }',
'',
'        sourceRowEl = rowContainer$.get(0).querySelector(''tr[data-id="'' + sourceRowId + ''"], tr[data-row-id="'' + sourceRowId + ''"]'');',
'        if (!sourceRowEl) {',
'            return;',
'        }',
'',
'        originalIds = p133CollectDragIds(p133GetDragRows(rowContainer$));',
'        dragBodies$.each(function() {',
'            var mirrorRowEl = this.querySelector(''tr[data-id="'' + sourceRowId + ''"], tr[data-row-id="'' + sourceRowId + ''"]'');',
'            if (mirrorRowEl) {',
'                mirrors.push(mirrorRowEl);',
'            }',
'        });',
'',
'        dragState = {',
'            sourceRowId: sourceRowId,',
'            sourceRowEl: sourceRowEl,',
'            rows: mirrors.length ? mirrors : [rowEl],',
'            ghostEl: p133BuildDragGhost(mirrors.length ? mirrors : [rowEl]),',
'            originalIds: originalIds,',
'            hasMoved: false,',
'            onMouseMove: null,',
'            onMouseUp: null',
'        };',
'',
'        window._p133DragSortDragging = true;',
'        event.preventDefault();',
'        event.stopPropagation();',
'',
'        dragState.rows.forEach(function(activeRowEl) {',
'            activeRowEl.classList.add(''is-dragging'');',
'        });',
'',
'        dragState.onMouseMove = function(moveEvent) {',
'            var hoveredEl = document.elementFromPoint(moveEvent.clientX, moveEvent.clientY);',
'            var targetMirrorRowEl = hoveredEl ? hoveredEl.closest(''tr.a-GV-row'') : null;',
'            var targetRowId = targetMirrorRowEl ? String(targetMirrorRowEl.getAttribute(''data-id'') || targetMirrorRowEl.getAttribute(''data-row-id'') || '''') : '''';',
'            var targetRowEl = targetRowId ? rowContainer$.get(0).querySelector(''tr[data-id="'' + targetRowId + ''"], tr[data-row-id="'' + targetRowId + ''"]'') : null;',
'            var placeAfter = false;',
'            var referenceRowEl;',
'',
'            if (!dragState) {',
'                return;',
'            }',
'',
'            dragState.ghostEl.style.left = (moveEvent.clientX + 16) + ''px'';',
'            dragState.ghostEl.style.top = (moveEvent.clientY + 16) + ''px'';',
'',
'            clearDropTarget();',
'            if (!targetMirrorRowEl || !targetRowEl || targetRowId === dragState.sourceRowId) {',
'                return;',
'            }',
'',
'            placeAfter = moveEvent.clientY > targetMirrorRowEl.getBoundingClientRect().top + (targetMirrorRowEl.getBoundingClientRect().height / 2);',
'            dragBodies$.each(function() {',
'                var mirrorTargetRowEl = this.querySelector(''tr[data-id="'' + targetRowId + ''"], tr[data-row-id="'' + targetRowId + ''"]'');',
'                if (mirrorTargetRowEl) {',
'                    mirrorTargetRowEl.classList.add(''is-drop-target'');',
'                }',
'            });',
'',
'            referenceRowEl = placeAfter ? targetRowEl.nextElementSibling : targetRowEl;',
'            if (referenceRowEl !== dragState.sourceRowEl) {',
'                rowContainer$.get(0).insertBefore(dragState.sourceRowEl, referenceRowEl || null);',
'                p133MoveMirrorRows(gridContainers, dragState.sourceRowId, targetRowId, placeAfter);',
'                dragState.hasMoved = true;',
'            }',
'        };',
'',
'        dragState.onMouseUp = function() {',
'            var currentIds = p133CollectDragIds(p133GetDragRows(rowContainer$));',
'            var changed = dragState.hasMoved && currentIds.join('','') !== dragState.originalIds.join('','');',
'',
'            if (changed) {',
'                p133SaveDragOrder(region, gridView, grid$, rowContainer$, dragState.originalIds, currentIds, config);',
'            }',
'',
'            cleanupDrag();',
'        };',
'',
'        document.addEventListener(''mousemove'', dragState.onMouseMove);',
'        document.addEventListener(''mouseup'', dragState.onMouseUp);',
'    }',
'',
'    rootEl.addEventListener(''mousedown'', onMouseDown, true);',
'    rootEl._p133DragSortCleanup = function() {',
'        rootEl.removeEventListener(''mousedown'', onMouseDown, true);',
'        clearDropTarget();',
'        if (dragState) {',
'            cleanupDrag();',
'        }',
'    };',
'}',
'',
'function p133ScheduleDragSortInit(attempt) {',
'    var nextAttempt = attempt || 0;',
'',
'    window.clearTimeout(window._p133DragSortTimer);',
'    window._p133DragSortTimer = window.setTimeout(function() {',
'        if (window._p133DragSortDragging) {',
'            window._p133DragSortPendingRebind = true;',
'            return;',
'        }',
'',
'        p133InitDragSort(nextAttempt);',
'    }, p133DragSortConfig.rebindDelay);',
'}',
'',
'function p133InitDragSort(attempt) {',
'    var config = p133DragSortConfig;',
'    var currentAttempt = attempt || 0;',
'    var handleCount;',
'    var region = p133TryGetRegion(config.regionStaticId);',
'    var views;',
'    var gridView;',
'    var grid$;',
'    var gridContainers;',
'    var rowContainer$;',
'',
'    if (!region) {',
'        return;',
'    }',
'',
'    views = region.call(''getViews'');',
'    gridView = views && views.grid;',
'    grid$ = gridView && gridView.view$;',
'',
'    if (!p133CanDragSort()) {',
'        if (p133ReadViewMode() === ''list'' && p133ReadSortValue() === ''MANUAL'' && !p133IsDragPermissionReady() && currentAttempt < config.rebindAttempts) {',
'            p133ScheduleDragSortInit(currentAttempt + 1);',
'            return;',
'        }',
'        if (grid$ && grid$.get(0) && grid$.get(0)._p133DragSortCleanup) {',
'            grid$.get(0)._p133DragSortCleanup();',
'        }',
'        return;',
'    }',
'',
'    if (!grid$ || !grid$.length) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            p133ScheduleDragSortInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    gridContainers = p133GetGridContainers(region, grid$, config.handleColumn);',
'    rowContainer$ = gridContainers.mainBody$;',
'',
'    if (!rowContainer$.length || !gridContainers.mirrorRowsReady || !p133GetDragRows(rowContainer$).length) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            p133ScheduleDragSortInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'',
'    handleCount = p133DecorateDragHandles(region, grid$, gridContainers.allBodies$ || gridContainers.mirrorBodies$, config.handleColumn);',
'    if (!handleCount) {',
'        if (currentAttempt < config.rebindAttempts) {',
'            p133ScheduleDragSortInit(currentAttempt + 1);',
'        }',
'        return;',
'    }',
'    p133BindNativeDnd(region, gridView, grid$, gridContainers, config);',
'    region.element.off(''apexafterrefresh.p133drag'').on(''apexafterrefresh.p133drag'', function() {',
'        p133ScheduleDragSortInit(0);',
'    });',
'    grid$.off(''gridpagechange.p133drag'').on(''gridpagechange.p133drag'', function() {',
'        p133ScheduleDragSortInit(0);',
'    });',
'}',
'',
'window.p133ScheduleDragSortInit = p133ScheduleDragSortInit;',
'',
'if (window.sessionStorage && sessionStorage.p133fr === ''1'') {',
'    delete sessionStorage.p133fr;',
'    $s(''P133_PARENT_FOLDER_ID'', '''');',
'    $s(''P133_FILE_ID'', '''');',
'    $s(''P133_FILE_TYPE'', '''');',
'    p133ApplyRootState();',
'} else if (!$v(''P133_PARENT_FOLDER_ID'')) {',
'    p133ApplyRootState();',
'}',
'p133ClearSelection();',
'p133RenderPathbar();',
'p133RenderToolbar();',
'if (window.p133InitViewMode) { window.p133InitViewMode(); }',
'if (window.p133SyncView) { window.p133SyncView(); }',
'$(document).off(''change.p133systemswitch'', ''#stsTenantSelect'').on(''change.p133systemswitch'', ''#stsTenantSelect'', function() {',
'    window.setTimeout(function() {',
'        if (!$v(''P133_PARENT_FOLDER_ID'')) { return; }',
'        $s(''P133_PARENT_FOLDER_ID'', '''');',
'        $s(''P133_FILE_ID'', '''');',
'        $s(''P133_FILE_TYPE'', '''');',
'        p133ApplyRootState(true);',
'        if (window.p133RefreshContent) { p133RefreshContent(); }',
'    }, 600);',
'});',
'if (window.p133ScheduleDragSortInit) {',
'    window.p133ScheduleDragSortInit(0);',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.is_modify_0 , .is_permissions_0 {',
'    display: none;',
'}',
'',
'.hide_btn {',
'    display: none !important;',
'}',
'',
'.task-sort-cell {',
'    white-space: nowrap;',
'    cursor: grab;',
'    user-select: none;',
'}',
'',
'#content .a-GV-table td.task-sort-cell,',
'#content .a-GV-table td.task-sort-cell *,',
'#content .a-GV-table td.task-sort-cell .p133-sort-handle,',
'#content .a-GV-table td.task-sort-cell .p133-sort-value,',
'#content .a-GV-table td.task-sort-cell .js-task-drag-handle {',
'    cursor: grab !important;',
'}',
'',
'.task-sort-cell:active,',
'.task-sort-cell.is-dragging {',
'    cursor: grabbing;',
'}',
'',
'#content .a-GV-table td.task-sort-cell:active,',
'#content .a-GV-table td.task-sort-cell:active *,',
'#content .a-GV-table td.task-sort-cell.is-dragging,',
'#content .a-GV-table td.task-sort-cell.is-dragging * {',
'    cursor: grabbing !important;',
'}',
'',
'.task-sort-cell input,',
'.task-sort-cell .a-GV-columnItem,',
'.task-sort-cell .p133-sort-handle,',
'.task-sort-cell .p133-sort-value,',
'.task-sort-cell .js-task-drag-handle {',
'    cursor: inherit !important;',
'}',
'',
'.p133-sort-handle {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 6px;',
'}',
'',
'.js-task-drag-handle {',
'    color: #999;',
'    font-size: 12px;',
'}',
'',
'.a-GV-row.is-dragging {',
'    opacity: .45;',
'}',
'',
'.a-GV-row.is-drop-target > td {',
'    border-top: 2px solid #2f73d9 !important;',
'}',
'',
'.task-drag-ghost {',
'    position: fixed;',
'    pointer-events: none;',
'    z-index: 9999;',
'    opacity: .92;',
'    background: #fff;',
'    box-shadow: 0 8px 20px rgba(0, 0, 0, .18);',
'    overflow: hidden;',
'}',
'',
'.task-drag-ghost-table {',
'    width: 100%;',
'    table-layout: fixed;',
'    border-collapse: collapse;',
'    background: #fff;',
'}',
'',
'.task-drag-ghost-table td {',
'    box-sizing: border-box;',
'}',
'',
'body,',
'.t-Body-content {',
'    background: #f0f2f5;',
'}',
'',
'.t-BreadcrumbRegion {',
'    display: none;',
'}',
'',
'#p133_toolbar {',
'    display: flex;',
'    flex-direction: column;',
'    gap: 0;',
'    margin: 0 0 16px 0;',
'    width: 100%;',
'    clear: both;',
'    box-sizing: border-box;',
'    position: relative;',
'    z-index: 400;',
'}',
'',
'#p133_toolbar .p133-toolbar-top,',
'#p133_toolbar .p133-toolbar-left,',
'#p133_toolbar .p133-toolbar-right,',
'#p133_toolbar .p133-toolbar-actions,',
'#p133_toolbar .p133-toolbar-controls,',
'#p133_toolbar .p133-view-toggle,',
'#p133_toolbar .p133-selection-inline {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    flex-wrap: wrap;',
'}',
'',
'#p133_toolbar .p133-toolbar-top {',
'    justify-content: space-between;',
'    padding: 0;',
'}',
'',
'#p133_toolbar .p133-toolbar-left {',
'    gap: 12px;',
'}',
'',
'#p133_toolbar .p133-toolbar-right {',
'    justify-content: flex-end;',
'    flex: 1;',
'    min-width: 0;',
'}',
'',
'#p133_toolbar .p133-selection-inline {',
'    display: none;',
'    padding: 8px 14px;',
'    border: 1px solid #91d5ff;',
'    border-radius: 8px;',
'    background: linear-gradient(135deg, #e6f7ff 0%, #f7fbff 100%);',
'}',
'',
'#p133_toolbar .p133-selection-count {',
'    color: #0050b3;',
'    font-size: 14px;',
'    font-weight: 600;',
'}',
'',
'#p133_toolbar .p133-selection-divider {',
'    width: 1px;',
'    height: 20px;',
'    background: #91d5ff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn,',
'#p133_toolbar .p133-control-btn,',
'#p133_toolbar .p133-view-btn,',
'#p133_pathbar button {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    gap: 6px;',
'    min-height: 36px;',
'    padding: 0 14px;',
'    border: 1px solid #d9d9d9;',
'    border-radius: 6px;',
'    background: #fff;',
'    color: #666;',
'    cursor: pointer;',
'    font-size: 13px;',
'    line-height: 1;',
'    transition: all 0.2s ease;',
'}',
'',
'#p133_toolbar .p133-control-btn,',
'#p133_toolbar .p133-view-btn {',
'    min-width: 36px;',
'    padding: 0 12px;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-inline {',
'    min-height: 32px;',
'    padding: 0 10px;',
'    border-color: transparent;',
'    background: transparent;',
'    color: #0050b3;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-danger {',
'    color: #ff4d4f;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-primary {',
'    border-color: #1890ff;',
'    background: #1890ff;',
'    color: #fff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn:hover:not(:disabled),',
'#p133_toolbar .p133-control-btn:hover:not(:disabled),',
'#p133_toolbar .p133-view-btn:hover:not(:disabled),',
'#p133_pathbar button:hover:not(:disabled) {',
'    border-color: #1890ff;',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-inline:hover:not(:disabled) {',
'    border-color: transparent;',
'    background: rgba(24,144,255,0.12);',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-inline.is-danger:hover:not(:disabled) {',
'    background: rgba(255,77,79,0.10);',
'    color: #ff4d4f;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-primary:hover:not(:disabled) {',
'    background: #40a9ff;',
'    color: #fff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn:focus,',
'#p133_toolbar .p133-toolbar-btn:focus-visible,',
'#p133_toolbar .p133-control-btn:focus,',
'#p133_toolbar .p133-control-btn:focus-visible,',
'#p133_toolbar .p133-view-btn:focus,',
'#p133_toolbar .p133-view-btn:focus-visible,',
'#p133_pathbar button:focus,',
'#p133_pathbar button:focus-visible,',
'.p133-card-open:focus,',
'.p133-card-open:focus-visible,',
'.p133-card-checkbox:focus,',
'.p133-card-checkbox:focus-visible {',
'    outline: none;',
'    box-shadow: none;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn:disabled,',
'#p133_toolbar .p133-control-btn:disabled,',
'#p133_toolbar .p133-view-btn:disabled {',
'    cursor: not-allowed;',
'    opacity: .45;',
'}',
'',
'#p133_toolbar .p133-view-btn.is-active {',
'    border-color: #1890ff;',
'    background: #e6f7ff;',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .p133-sort-box {',
'    position: relative;',
'    z-index: 410;',
'}',
'',
'#p133_toolbar .p133-sort-trigger {',
'    gap: 6px;',
'}',
'',
'#p133_toolbar .p133-sort-menu {',
'    display: none;',
'    position: absolute;',
'    right: 0;',
'    top: calc(100% + 6px);',
'    min-width: 220px;',
'    padding: 8px;',
'    border: 1px solid #d9d9d9;',
'    border-radius: 8px;',
'    background: #fff;',
'    box-shadow: 0 12px 48px rgba(0,0,0,0.15);',
'    z-index: 2400;',
'}',
'',
'#p133_toolbar .p133-sort-menu.is-open {',
'    display: block;',
'}',
'',
'#p133_toolbar .p133-sort-title {',
'    padding: 4px 8px 8px;',
'    color: #999;',
'    font-size: 12px;',
'}',
'',
'#p133_toolbar .p133-sort-option {',
'    width: 100%;',
'    display: block;',
'    padding: 8px;',
'    border: 0;',
'    border-radius: 6px;',
'    background: transparent;',
'    color: #333;',
'    cursor: pointer;',
'    font-size: 13px;',
'    text-align: left;',
'}',
'',
'#p133_toolbar .p133-sort-option:hover {',
'    background: #f5f5f5;',
'}',
'',
'#p133_toolbar .p133-sort-option.is-active {',
'    background: #e6f7ff;',
'    color: #1890ff;',
'    font-weight: 600;',
'}',
'',
'#p133_pathbar {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    position: relative;',
'    z-index: 2;',
'    min-height: 32px;',
'    margin: 0 0 16px 0;',
'    padding: 0;',
'    border: 0;',
'    border-radius: 0;',
'    background: transparent;',
'    width: 100%;',
'    clear: both;',
'    box-sizing: border-box;',
'    box-shadow: none;',
'}',
'',
'#p133_pathbar .p133-crumbs {',
'    display: flex;',
'    align-items: center;',
'    flex: 1;',
'    min-width: 0;',
'    color: #666;',
'    font-size: 14px;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'#p133_pathbar button {',
'    min-width: 28px;',
'    height: 28px;',
'    padding: 0 6px;',
'    border: 0;',
'    background: transparent;',
'}',
'',
'#p133_pathbar .p133-crumb {',
'    width: auto;',
'    max-width: 320px;',
'    padding: 0;',
'    border: 0;',
'    background: transparent;',
'    color: #1890ff;',
'    font: inherit;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'    vertical-align: middle;',
'}',
'',
'#p133_pathbar .p133-crumb.is-current {',
'    color: #333;',
'    font-weight: 600;',
'    cursor: default;',
'}',
'',
'#p133_pathbar .p133-sep {',
'    color: #bfbfbf;',
'    display: inline-flex;',
'    align-items: center;',
'    margin: 0 6px;',
'}',
'',
'#R888001330000000001 {',
'    display: none !important;',
'}',
'',
'#content {',
'    width: 100%;',
'    border-radius: 10px;',
'    overflow: hidden;',
'    background: #fff;',
'    border: 1px solid #e8e8e8;',
'    box-shadow: 0 1px 4px rgba(0,0,0,0.06);',
'}',
'',
'#content_ig_toolbar {',
'    display: none !important;',
'}',
'',
'#content .t-Region-header,',
'#content .t-Region-title {',
'    display: none;',
'}',
'',
'#content .t-Region-bodyWrap,',
'#content .t-Region-body,',
'#content .a-IG {',
'    border: 0;',
'    box-shadow: none;',
'    background: #fff;',
'}',
'',
'#content .a-GV-header,',
'#content .a-GV-table th,',
'#content .a-GV-table .a-GV-headerLabel {',
'    background: #fafafa;',
'    color: #666;',
'    font-size: 13px;',
'    font-weight: 500;',
'}',
'',
'#content .a-GV-table th,',
'#content .a-GV-cell {',
'    border-bottom: 1px solid #f5f5f5;',
'}',
'',
'#content .a-GV-cell {',
'    padding-top: 14px;',
'    padding-bottom: 14px;',
'    color: #333;',
'    vertical-align: middle;',
'}',
'',
'#content .a-GV-row:hover .a-GV-cell {',
'    background: #fafafa;',
'}',
'',
'#content .a-GV-cell.is-active,',
'#content .a-GV-cell:focus,',
'#content .a-GV-table td:focus,',
'#content .a-GV-w-scroll:focus,',
'#content .a-GV-rowSelector:focus,',
'#content .a-GV-rowSelector:focus-visible,',
'#content a:focus,',
'#content a:focus-visible,',
'#content a span:focus,',
'#content a span:focus-visible {',
'    outline: none !important;',
'    box-shadow: none !important;',
'}',
'',
'.p133-grid-view {',
'    display: grid;',
'    grid-template-columns: repeat(auto-fill, minmax(132px, 1fr));',
'    gap: 14px;',
'    padding: 18px;',
'    border: 1px solid #e8e8e8;',
'    border-radius: 10px;',
'    background: #fff;',
'    box-shadow: 0 1px 4px rgba(0,0,0,0.06);',
'}',
'',
'.p133-card {',
'    position: relative;',
'    display: flex;',
'    flex-direction: column;',
'    align-items: stretch;',
'    min-height: 108px;',
'    padding: 10px 8px 8px;',
'    border: 1px solid #e5e7eb;',
'    border-radius: 6px;',
'    background: #fff;',
'    color: #334155;',
'}',
'',
'.p133-card:hover {',
'    border-color: #91d5ff;',
'    background: #fafafa;',
'}',
'',
'.p133-card.is-selected {',
'    border-color: #1890ff;',
'    box-shadow: inset 0 0 0 1px #1890ff;',
'    background: #e6f7ff;',
'}',
'',
'.p133-card-check {',
'    position: absolute;',
'    left: 8px;',
'    top: 8px;',
'    z-index: 1;',
'}',
'',
'.p133-card-checkbox {',
'    position: relative;',
'    display: block;',
'    width: 14px;',
'    height: 14px;',
'    margin: 0;',
'    border: 1px solid #94a3b8;',
'    border-radius: 3px;',
'    background: #fff;',
'    box-shadow: none;',
'    outline: none;',
'    cursor: pointer;',
'    -webkit-appearance: none;',
'    appearance: none;',
'}',
'',
'.p133-card-checkbox:checked {',
'    border-color: #1890ff;',
'    background: #1890ff;',
'}',
'',
'.p133-card-checkbox:checked::after {',
'    content: "";',
'    position: absolute;',
'    left: 50%;',
'    top: 50%;',
'    width: 3px;',
'    height: 7px;',
'    border: solid #fff;',
'    border-width: 0 2px 2px 0;',
'    transform: translate(-50%, -58%) rotate(45deg);',
'}',
'',
'.p133-content-hidden {',
'    position: absolute !important;',
'    left: -99999px !important;',
'    top: 0 !important;',
'    width: 1px !important;',
'    height: 1px !important;',
'    overflow: hidden !important;',
'    opacity: 0 !important;',
'    pointer-events: none !important;',
'}',
'',
'.p133-card-open {',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    justify-content: center;',
'    width: 100%;',
'    min-height: 88px;',
'    padding: 10px 0 0;',
'    border: 0;',
'    background: transparent;',
'    color: inherit;',
'    cursor: pointer;',
'    box-shadow: none;',
'    outline: none;',
'}',
'',
'.p133-card-open:focus,',
'.p133-card-open:focus-visible {',
'    outline: none;',
'    box-shadow: none;',
'}',
'',
'.p133-card-open .fa {',
'    font-size: 30px;',
'    color: #1890ff;',
'    margin-bottom: 8px;',
'}',
'',
'.p133-card-name {',
'    width: 100%;',
'    text-align: center;',
'    line-height: 1.35;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'}',
'',
'.p133-grid-empty {',
'    display: flex;',
'    align-items: center;',
'    justify-content: center;',
'    min-height: 120px;',
'    border: 1px dashed #d9d9d9;',
'    border-radius: 8px;',
'    color: #999;',
'    background: #fff;',
'}',
'',
'#p133_pathbar.is-root .p133-up {',
'    opacity: .45;',
'    cursor: default;',
'}',
'',
'.p133-file-name {',
'    display: inline-flex;',
'    align-items: center;',
'    width: 100%;',
'    gap: 8px;',
'    color: #333;',
'    text-decoration: none;',
'}',
'',
'.p133-file-cell {',
'    display: flex;',
'    align-items: center;',
'    justify-content: space-between;',
'    gap: 12px;',
'    width: 100%;',
'}',
'',
'.p133-file-label {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    min-width: 0;',
'}',
'',
'.p133-file-label span:last-child {',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'}',
'',
'.p133-row-actions {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 4px;',
'    opacity: 0;',
'    pointer-events: none;',
'    transition: opacity 0.15s ease;',
'}',
'',
'#content .a-GV-row:hover .p133-row-actions,',
'#content .a-GV-row.is-selected .p133-row-actions {',
'    opacity: 1;',
'    pointer-events: auto;',
'}',
'',
'.p133-row-action-btn {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    width: 28px;',
'    height: 28px;',
'    border: 0;',
'    border-radius: 6px;',
'    background: transparent;',
'    color: #999;',
'    cursor: pointer;',
'    transition: all 0.2s ease;',
'}',
'',
'.p133-row-action-btn[data-can-manage="0"] {',
'    display: none;',
'}',
'',
'.p133-row-action-btn:hover {',
'    background: #f0f0f0;',
'    color: #1890ff;',
'}',
'',
'.p133-row-menu {',
'    position: absolute;',
'    z-index: 3000;',
'    min-width: 176px;',
'    padding: 8px;',
'    border: 1px solid #e8e8e8;',
'    border-radius: 10px;',
'    background: #fff;',
'    box-shadow: 0 8px 24px rgba(0,0,0,0.12);',
'}',
'',
'.p133-row-menu-item {',
'    display: flex;',
'    align-items: center;',
'    gap: 10px;',
'    width: 100%;',
'    padding: 10px 12px;',
'    border: 0;',
'    border-radius: 8px;',
'    background: transparent;',
'    color: #333;',
'    cursor: pointer;',
'    font-size: 14px;',
'    text-align: left;',
'}',
'',
'.p133-row-menu-item:hover {',
'    background: #f5f7fa;',
'}',
'',
'.p133-row-menu-item.is-danger {',
'    color: #ff4d4f;',
'}',
'',
'.p133-row-menu-item.is-danger:hover {',
'    background: #fff1f0;',
'}',
'',
'.p133-file-name:hover,',
'.p133-file-name:active,',
'.p133-file-name:focus,',
'.p133-file-name:focus-visible,',
'.p133-file-name span:focus,',
'.p133-file-name span:focus-visible {',
'    outline: none !important;',
'    box-shadow: none !important;',
'    text-decoration: none;',
'}',
'',
'.p133-file-name .fa {',
'    color: #1890ff;',
'    font-size: 18px;',
'}',
'',
'@media (max-width: 960px) {',
'    #p133_toolbar .p133-toolbar-top {',
'        align-items: flex-start;',
'        flex-direction: column;',
'    }',
'',
'    #p133_toolbar .p133-toolbar-right {',
'        justify-content: flex-start;',
'        width: 100%;',
'    }',
'',
'    #p133_toolbar .p133-selection-inline {',
'        width: 100%;',
'    }',
'}',
'}'))
,p_page_css_classes=>'ja-bpoint-btn'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(821088635529155495)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>150
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="p133_toolbar" class="p133-toolbar">',
'  <div class="p133-toolbar-top">',
'    <div class="p133-toolbar-left">',
unistr('      <button type="button" class="p133-toolbar-btn is-primary" data-p133-action="upload"><span class="fa fa-upload" aria-hidden="true"></span><span class="p133-btn-text">\4E0A\4F20\6587\4EF6</span></button>'),
unistr('      <button type="button" class="p133-toolbar-btn" data-p133-action="create_folder"><span class="fa fa-folder-o" aria-hidden="true"></span><span class="p133-btn-text">\65B0\5EFA\6587\4EF6\5939</span></button>'),
'    </div>',
'    <div class="p133-toolbar-right">',
'      <div class="p133-selection-inline">',
unistr('        <span class="p133-selection-count">\5DF2\9009\4E2D <span class="p133-selection-count-value">0</span> \9879</span>'),
'        <span class="p133-selection-divider" aria-hidden="true"></span>',
'        <div class="p133-toolbar-actions">',
unistr('          <button type="button" class="p133-toolbar-btn is-inline" data-p133-action="share"><span class="fa fa-share-alt" aria-hidden="true"></span><span class="p133-btn-text">\5206\4EAB</span></button>'),
unistr('          <button type="button" class="p133-toolbar-btn is-inline" data-p133-action="rename"><span class="fa fa-pencil" aria-hidden="true"></span><span class="p133-btn-text">\91CD\547D\540D</span></button>'),
unistr('          <button type="button" class="p133-toolbar-btn is-inline" data-p133-action="move"><span class="fa fa-exchange" aria-hidden="true"></span><span class="p133-btn-text">\79FB\52A8\5230...</span></button>'),
unistr('          <button type="button" class="p133-toolbar-btn is-inline" data-p133-action="settings"><span class="fa fa-lock" aria-hidden="true"></span><span class="p133-btn-text">\6743\9650\8BBE\7F6E</span></button>'),
unistr('          <button type="button" class="p133-toolbar-btn is-inline is-danger" data-p133-action="delete"><span class="fa fa-trash-o" aria-hidden="true"></span><span class="p133-btn-text">\5220\9664</span></button>'),
'        </div>',
'      </div>',
'      <div class="p133-toolbar-controls">',
'        <div class="p133-sort-box">',
unistr('          <button type="button" class="p133-control-btn p133-sort-trigger" title="\6392\5E8F\65B9\6848"><span class="p133-sort-label">\9ED8\8BA4</span><span class="fa fa-angle-down" aria-hidden="true"></span></button>'),
'          <div class="p133-sort-menu">',
unistr('            <div class="p133-sort-title">\89C4\5219\6392\5E8F</div>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="NAME_ASC">\6587\4EF6\540D</button>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="UPDATE_DESC">\66F4\65B0\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="UPDATE_ASC">\66F4\65B0\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="CREATION_DESC">\521B\5EFA\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="CREATION_ASC">\521B\5EFA\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'),
unistr('            <button type="button" class="p133-sort-option" data-sort="MANUAL">\9ED8\8BA4</button>'),
'          </div>',
'        </div>',
'        <div class="p133-view-toggle">',
unistr('          <button type="button" class="p133-view-btn" data-view-mode="list" title="\5217\8868\89C6\56FE" aria-label="\5217\8868\89C6\56FE"><span class="fa fa-list" aria-hidden="true"></span></button>'),
unistr('          <button type="button" class="p133-view-btn" data-view-mode="grid" title="\7F51\683C\89C6\56FE" aria-label="\7F51\683C\89C6\56FE"><span class="fa fa-th-large" aria-hidden="true"></span></button>'),
'        </div>',
unistr('        <button type="button" class="p133-control-btn p133-refresh" title="\5237\65B0\5F53\524D\76EE\5F55" aria-label="\5237\65B0\5F53\524D\76EE\5F55"><span class="fa fa-refresh" aria-hidden="true"></span></button>'),
'      </div>',
'    </div>',
'  </div>',
'</div>',
unistr('<div id="p133_pathbar" class="p133-pathbar"><button type="button" class="p133-up" title="\8FD4\56DE\4E0A\4E00\7EA7" aria-label="\8FD4\56DE\4E0A\4E00\7EA7"><span class="fa fa-arrow-up" aria-hidden="true"></span></button><div class="p133-crumbs"></div></div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(821088635529155496)
,p_plug_name=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>170
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FILE_ID,',
'       A.ROOT_FOLDER_ID,',
'       A.PARENT_FOLDER_ID,',
'       A.FILE_NAME,',
'       A.FILE_FORMAT,',
'       ROW_NUMBER() OVER (ORDER BY NVL(A.SORT_NUM, 999999999), A.FILE_ID) AS SORT_NUM,',
'       A.FILE_TYPE,',
'       CASE WHEN A.FILE_TYPE = ''FOLDER'' THEN CAST(unistr(''\6587\4EF6\5939'') AS VARCHAR2(30 CHAR)) ELSE NVL(A.FILE_FORMAT,CAST(unistr(''\6587\4EF6'') AS VARCHAR2(30 CHAR))) END AS TYPE_LABEL,',
'       CASE WHEN A.FILE_TYPE = ''FOLDER'' THEN ''fa-folder-o'' ELSE ''fa-file-o'' END AS ICON_CLASS,',
'       --        A.UPDATED_BY,       ',
unistr('       NVL(U.NAME, TO_CHAR(NVL(A.UPDATED_BY, A.CREATED_BY))) AS UPDATED_BY,  -- \5217\8868\66F4\65B0\4EBA\5C55\793A\4EBA\540D'),
'       A.UPDATE_DATE,',
'       A.SCOPE_TYPE,',
'       A.FILE_VERSION_TAG,',
'       ''''             AS                   OPERATE,',
'       CASE',
'           WHEN FILE_TYPE = ''FOLDER'' THEN 0',
'           ELSE 1 END AS                   IS_HIDE,',
'       CASE  WHEN FILE_TYPE = ''FOLDER'' THEN 0 ELSE 1 END AS IS_FILE_TYPE,',
'       fmp_is_file_manager(A.FILE_ID, :USER_TENANT, V(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE) AS IS_PERMISSIONS,',
'       CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'', ''VIEW_REPORT'') THEN 1',
'           WHEN A.SCOPE_TYPE IN (''VIEW_DOWN'', ''VIEW'') THEN 1',
'           WHEN EXISTS (SELECT 1',
'                          FROM FMP_SCOPE SB',
'                         WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                           AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                           AND SB.PERMISSIONS_TYPE IN (''MANAGE'', ''VIEW_DOWN'', ''VIEW'')',
'                           AND ((SB.RANGE_TYPE = ''USER'' AND (SB.RANGE_ID = :DIAN_USER_ID',
'                             OR SB.RANGE_ID = V(''MPF_USER_ID'')',
'                             OR SB.RANGE_ID = (SELECT FU.EXT_USER_ID',
'                                                 FROM FMP_USER FU',
'                                                WHERE FU.TENANT_ID = :USER_TENANT',
'                                                  AND FU.USER_ID = TO_NUMBER(NULLIF(V(''MPF_USER_ID''), ''''))',
'                                                  AND NVL(FU.DEL_FLAG, 0) = 0)',
'                             OR SB.RANGE_ID = (SELECT BD.UNION_ID',
'                                                 FROM BASIC_JA_DING_USER BD',
'                                                WHERE TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID)',
'                                                  AND NVL(BD.TENANT_ID, :USER_TENANT) = :USER_TENANT)))',
'                             OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                        FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                       WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                         AND TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'           WHEN EXISTS (SELECT 1',
'                          FROM FMP_SCOPE FS',
'                         WHERE FS.REFERENCE_TYPE = ''FILE''',
'                           AND FS.REFERENCE_ID = A.FILE_ID',
'                           AND FS.PERMISSIONS_TYPE IN (''MANAGE'', ''VIEW_DOWN'', ''VIEW'')',
'                           AND ((FS.RANGE_TYPE = ''USER'' AND (FS.RANGE_ID = :DIAN_USER_ID',
'                             OR FS.RANGE_ID = V(''MPF_USER_ID'')',
'                             OR FS.RANGE_ID = (SELECT FU.EXT_USER_ID',
'                                                 FROM FMP_USER FU',
'                                                WHERE FU.TENANT_ID = :USER_TENANT',
'                                                  AND FU.USER_ID = TO_NUMBER(NULLIF(V(''MPF_USER_ID''), ''''))',
'                                                  AND NVL(FU.DEL_FLAG, 0) = 0)',
'                             OR FS.RANGE_ID = (SELECT BD.UNION_ID',
'                                                 FROM BASIC_JA_DING_USER BD',
'                                                WHERE TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID)',
'                                                  AND NVL(BD.TENANT_ID, :USER_TENANT) = :USER_TENANT)))',
'                             OR (FS.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                        FROM BASIC_JA_DING_DEPT_USER BU',
'                                                                       WHERE TO_CHAR(BU.DEPT_ID) = FS.RANGE_ID',
'                                                                         AND TO_CHAR(BU.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'           ELSE 0',
'       END AS CAN_OPEN',
'FROM FMP_FILE A',
'LEFT JOIN BASIC_USER U',
'  ON U.USER_ID = NVL(A.UPDATED_BY, A.CREATED_BY)',
' AND U.TENANT_ID = :USER_TENANT',
' AND U.DEL_FLAG = 0',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND A.SYSTEM_ID = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'  AND A.DEL_FLAG = 0',
'  AND :P133_PARENT_FOLDER_ID IS NOT NULL',
'  AND A.PARENT_FOLDER_ID = :P133_PARENT_FOLDER_ID',
'ORDER BY CASE WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN 0',
'              WHEN A.FILE_TYPE = ''FOLDER'' THEN 0',
'              ELSE 1 END,',
'         CASE WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN NVL(A.SORT_NUM, 999999999) END ASC,',
'         CASE WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''NAME_ASC'' THEN LOWER(A.FILE_NAME) END ASC,',
'         CASE WHEN :P133_SORT_BY = ''UPDATE_DESC'' THEN A.UPDATE_DATE END DESC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''UPDATE_ASC'' THEN A.UPDATE_DATE END ASC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''CREATION_DESC'' THEN A.CREATION_DATE END DESC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''CREATION_ASC'' THEN A.CREATION_DATE END ASC NULLS LAST,',
'         LOWER(A.FILE_NAME),',
'         A.FILE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P133_PARENT_FOLDER_ID,P133_SORT_BY'
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
 p_id=>wwv_flow_imp.id(821088635529155498)
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
 p_id=>wwv_flow_imp.id(821088635529155499)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(821088635529155500)
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
 p_id=>wwv_flow_imp.id(821088635529155501)
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
 p_id=>wwv_flow_imp.id(821088635529155502)
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
 p_id=>wwv_flow_imp.id(821088635529155503)
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
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="p133-file-cell">',
    '	<a href="javascript:void(0)" class="p133-file-name p133-file-open p133-file-type-&FILE_TYPE." data-file-id="&FILE_ID." data-file-type="&FILE_TYPE.">',
    '      <span class="p133-file-label">',
    '        <span class="fa &ICON_CLASS." aria-hidden="true"></span>',
    '		  <span>&FILE_NAME.</span>',
    '      </span>',
    '	</a>',
    '  <span class="p133-row-actions" data-can-manage="&IS_PERMISSIONS.">',
    '    <button type="button" class="p133-row-action-btn" data-can-manage="&IS_PERMISSIONS." onclick="p133RunSingleAction(''rename'',''&FILE_ID.'',''&FILE_TYPE.''); return false;" title="&#37325;&#21629;&#21517;" aria-label="&#37325;&#21629;&#21517;"><span class="fa fa-pencil" aria-hidden="true"></span></button>',
    '    <button type="button" class="p133-row-action-btn" onclick="p133RunSingleAction(''settings'',''&FILE_ID.'',''&FILE_TYPE.''); return false;" title="&#26435;&#38480;&#35774;&#32622;" aria-label="&#26435;&#38480;&#35774;&#32622;"><span class="fa fa-lock" aria-hidden="true"></span></button>',
    '    <button type="button" class="p133-row-action-btn" onclick="p133OpenRowMenu(event,''&FILE_ID.'',''&FILE_TYPE.'',''&IS_PERMISSIONS.''); return false;" title="&#26356;&#22810;&#25805;&#20316;" aria-label="&#26356;&#22810;&#25805;&#20316;"><span class="fa fa-ellipsis-v" aria-hidden="true"></span></button>',
    '  </span>',
    '</span>')))).to_clob
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
 p_id=>wwv_flow_imp.id(821088635529155504)
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
 p_id=>wwv_flow_imp.id(821088635529155505)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6392\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>15
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(821088635529155507)
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
 p_id=>wwv_flow_imp.id(821088635529155508)
,p_name=>'TYPE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>95
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(821088635529155509)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>96
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(821088635529155510)
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
 p_id=>wwv_flow_imp.id(821088635529155511)
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
 p_id=>wwv_flow_imp.id(821088635529155512)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(821088635529155513)
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
 p_id=>wwv_flow_imp.id(821088635529155514)
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
 p_id=>wwv_flow_imp.id(821088635529155515)
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
 p_id=>wwv_flow_imp.id(821088635529155517)
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
 p_id=>wwv_flow_imp.id(821088635529155518)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(821088635529155519)
,p_name=>'CAN_OPEN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CAN_OPEN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>175
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(821088635529155519)
,p_internal_uid=>468613640998220114
,p_is_editable=>false
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
 p_id=>wwv_flow_imp.id(821088635529155520)
,p_interactive_grid_id=>wwv_flow_imp.id(821088635529155519)
,p_static_id=>'4686437'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(821088635529155521)
,p_report_id=>wwv_flow_imp.id(821088635529155520)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155522)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(821088635529155498)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155523)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(821088635529155499)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155524)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(821088635529155512)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155525)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(821088635529155500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155526)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(821088635529155501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155527)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(821088635529155502)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155528)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(821088635529155503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>360
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155529)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(821088635529155504)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>139.195
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155530)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(821088635529155505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155532)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(821088635529155507)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155533)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(821088635529155508)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155534)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(821088635529155509)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155535)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(821088635529155510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155536)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(821088635529155511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155537)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(821088635529155514)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155538)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(821088635529155515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155540)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(821088635529155517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(821088635529155541)
,p_view_id=>wwv_flow_imp.id(821088635529155521)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(821088635529155518)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(821088635529155497)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_static_id=>'btn_create_folder'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155551)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_static_id=>'btn_upload'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155549)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155555)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(821088635529155497)
,p_button_name=>unistr('\8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('<  \8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:133::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155568)
,p_name=>'P133_DISPLAY'
,p_item_sequence=>280
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155569)
,p_name=>'P133_ROOT_FOLDER_ID'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MIN(f.file_id)',
'  FROM fmp_file f',
'  JOIN fmp_system s',
'    ON s.system_id = f.system_id',
'   AND NVL(s.del_flag, 0) = 0',
'   AND NVL(s.is_enable, 1) = 1',
' WHERE f.tenant_id = :USER_TENANT',
'   AND f.system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'   AND f.file_type = ''FOLDER''',
'   AND f.parent_folder_id IS NULL',
'   AND f.file_name = s.system_name',
'   AND NVL(f.del_flag, 0) = 0'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155570)
,p_name=>'P133_PARENT_FOLDER_ID'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MIN(f.file_id)',
'  FROM fmp_file f',
'  JOIN fmp_system s',
'    ON s.system_id = f.system_id',
'   AND NVL(s.del_flag, 0) = 0',
'   AND NVL(s.is_enable, 1) = 1',
' WHERE f.tenant_id = :USER_TENANT',
'   AND f.system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'   AND f.file_type = ''FOLDER''',
'   AND f.parent_folder_id IS NULL',
'   AND f.file_name = s.system_name',
'   AND NVL(f.del_flag, 0) = 0'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155571)
,p_name=>'P133_UP_FOLDER_ID'
,p_item_sequence=>125
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155572)
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
 p_id=>wwv_flow_imp.id(821088635529155573)
,p_name=>'P133_FILE_PATH'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155574)
,p_name=>'P133_FILE_LEVEL'
,p_item_sequence=>290
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155575)
,p_name=>'P133_FILE_TYPE'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155578)
,p_name=>'P133_FILE_IDS'
,p_item_sequence=>320
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155580)
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
 p_id=>wwv_flow_imp.id(821088635529155581)
,p_name=>'P133_FILE_TYPES'
,p_item_sequence=>330
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155636)
,p_name=>'P133_SORT_BY'
,p_item_sequence=>340
,p_use_cache_before_default=>'NO'
,p_item_default=>'MANUAL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529156905)
,p_name=>'P133_BREADCRUMB_JSON'
,p_item_sequence=>126
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155582)
,p_name=>unistr('\6587\4EF6\5939\8BE6\7EC6\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P133_PARENT_FOLDER_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155595)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_FILE_PATH,P133_FILE_LEVEL,P133_FILE_NAME,P133_UP_FOLDER_ID,P133_BREADCRUMB_JSON'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILE_PATH,FILE_LEVEL,FILE_NAME,NVL(PARENT_FOLDER_ID,FILE_ID),',
'       (SELECT JSON_ARRAYAGG(JSON_OBJECT(''id'' VALUE FILE_ID, ''name'' VALUE FILE_NAME) ORDER BY FILE_LEVEL RETURNING VARCHAR2(4000))',
'          FROM (SELECT FILE_ID, FILE_NAME, FILE_LEVEL',
'                  FROM FMP_FILE',
'                 WHERE TENANT_ID = :USER_TENANT',
'                 START WITH FILE_ID = :P133_PARENT_FOLDER_ID',
'               CONNECT BY PRIOR PARENT_FOLDER_ID = FILE_ID))',
'FROM FMP_FILE',
'WHERE FILE_ID =:P133_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155596)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_DISPLAY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT fmp_is_file_manager(:P133_PARENT_FOLDER_ID, :USER_TENANT, V(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE) AS P133_DISPLAY',
'FROM DUAL;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155597)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P133_FILE_LEVEL'')>1){',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_PATH'')+''/''+$v(''P133_FILE_NAME''))',
'}else{',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME''))',
'}',
'p133RenderPathbar();',
'apex.server.process(''P133_SYNC_FOLDER_STATE'', {',
'    pageItems: ''#P133_ROOT_FOLDER_ID,#P133_PARENT_FOLDER_ID,#P133_FILE_PATH,#P133_FILE_LEVEL,#P133_FILE_NAME,#P133_UP_FOLDER_ID,#P133_BREADCRUMB_JSON,#P133_DISPLAY''',
'}, {',
'    dataType: ''json'',',
'    error: function(jqXHR, textStatus, errorThrown) {',
'        if (window.console) { console.warn(''P133 folder state sync failed'', textStatus, errorThrown); }',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155594)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155583)
,p_name=>unistr('\5237\65B0\62A5\8868\548C\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155598)
,p_event_id=>wwv_flow_imp.id(821088635529155583)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155599)
,p_event_id=>wwv_flow_imp.id(821088635529155583)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155584)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529155549)
,p_condition_element=>'P133_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155600)
,p_event_id=>wwv_flow_imp.id(821088635529155584)
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
 p_id=>wwv_flow_imp.id(821088635529155601)
,p_event_id=>wwv_flow_imp.id(821088635529155584)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133OpenActionUrl(''PREVIEW'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155603)
,p_event_id=>wwv_flow_imp.id(821088635529155584)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155604)
,p_event_id=>wwv_flow_imp.id(821088635529155584)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155585)
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
 p_id=>wwv_flow_imp.id(821088635529155605)
,p_event_id=>wwv_flow_imp.id(821088635529155585)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(821088635529155550)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155606)
,p_event_id=>wwv_flow_imp.id(821088635529155585)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(821088635529155550)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155586)
,p_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529155550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155607)
,p_event_id=>wwv_flow_imp.id(821088635529155586)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133OpenActionUrl(''CREATE_FOLDER'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155587)
,p_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529155551)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155610)
,p_event_id=>wwv_flow_imp.id(821088635529155587)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133OpenActionUrl(''UPLOAD'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529155589)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(821088635529155496)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155619)
,p_event_id=>wwv_flow_imp.id(821088635529155589)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (window.p133ApplyingGridSelection) {',
'    return;',
'}',
'var map = new Map();',
'',
'map.set(''P133_FILE_IDS'', ''FILE_ID'');',
'map.set(''P133_FILE_TYPES'', ''FILE_TYPE'');',
'utils.set(this.data, map);',
'p133SyncSelectionUi();',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P133_FILE_IDS''));')))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529155635)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(821088635529155496)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5939\8BE6\7EC6 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>468615278409220130
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529156906)
,p_process_sequence=>4
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_DELETE_SELECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_row_count number := 0;',
'    v_denied    number := 0;',
'    v_err_msg   nvarchar2(2000);',
'begin',
'    if :P133_FILE_IDS is null then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
unistr('        apex_json.write(''message'', ''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    select count(*)',
'      into v_denied',
'      from ja_utils_pkg.split_str(:P133_FILE_IDS, '','') ids',
'     where fmp_is_file_manager(',
'               to_number(ids.data_val),',
'               :USER_TENANT,',
'               V(''MPF_USER_ID''),',
'               :DIAN_USER_ID,',
'               :ROLE_CODE',
'           ) = 0;',
'',
'    if v_denied > 0 then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
unistr('        apex_json.write(''message'', ''\5F53\524D\9009\4E2D\5BF9\8C61\4E2D\5B58\5728\65E0\7BA1\7406\6743\9650\9879\FF0C\65E0\6CD5\5220\9664'');'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    update fmp_file',
'       set del_flag    = -1,',
'           del_date    = sysdate,',
'           updated_by  = :MPF_USER_ID,',
'           update_date = sysdate',
'     where file_id in (select data_val from ja_utils_pkg.split_str(:P133_FILE_IDS, '',''))',
'       and tenant_id = :USER_TENANT',
'       and del_flag = 0;',
'',
'    v_row_count := sql%rowcount;',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', case when v_row_count > 0 then ''success'' else ''error'' end);',
'    apex_json.write(''rowCount'', v_row_count);',
unistr('    apex_json.write(''message'', case when v_row_count > 0 then ''\5220\9664\6210\529F\FF01'' else ''\5220\9664\5931\8D25\FF01'' end);'),
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        ja_write_log(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', v_err_msg);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579121
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529156908)
,p_process_sequence=>5
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_SYNC_FOLDER_STATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
'    apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579123
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529156909)
,p_process_sequence=>6
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_RESOLVE_ROOT_FOLDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id number := to_number(nullif(apex_application.g_x01, ''''));',
'    v_user_id   number := to_number(nullif(v(''USER_ID''), ''''));',
'    v_root_id   number;',
'    v_err_msg   varchar2(4000);',
'begin',
'    if v_system_id is null and v_user_id is not null then',
'        begin',
'            select x.system_id',
'              into v_system_id',
'              from (',
'                    select fu.last_system_id as system_id',
'                      from fmp_user fu',
'                      join fmp_system s',
'                        on s.system_id = fu.last_system_id',
'                       and nvl(s.is_enable, 1) = 1',
'                       and nvl(s.del_flag, 0) = 0',
'                     where fu.tenant_id = :USER_TENANT',
'                       and fu.user_id = v_user_id',
'                       and nvl(fu.del_flag, 0) = 0',
'                       and fu.last_system_id is not null',
'                     order by fu.update_date desc, fu.user_id desc',
'              ) x',
'             where rownum = 1;',
'        exception',
'            when no_data_found then',
'                null;',
'        end;',
'    end if;',
'',
'    if v_system_id is null then',
'        select min(system_id)',
'          into v_system_id',
'          from fmp_system',
'         where nvl(is_enable, 1) = 1',
'           and nvl(del_flag, 0) = 0;',
'    end if;',
'',
'    select min(f.file_id)',
'      into v_root_id',
'      from fmp_file f',
'      join fmp_system s',
'        on s.system_id = f.system_id',
'       and nvl(s.del_flag, 0) = 0',
'       and nvl(s.is_enable, 1) = 1',
'     where f.tenant_id = :USER_TENANT',
'       and f.system_id = v_system_id',
'       and f.file_type = ''FOLDER''',
'       and f.parent_folder_id is null',
'       and f.file_name = s.system_name',
'       and nvl(f.del_flag, 0) = 0;',
'',
'    apex_json.open_object;',
'    if v_root_id is not null then',
'        apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'        apex_util.set_session_state(''P133_ROOT_FOLDER_ID'', v_root_id);',
'        apex_util.set_session_state(''P133_PARENT_FOLDER_ID'', v_root_id);',
'        apex_util.set_session_state(''P133_FILE_ID'', v_root_id);',
'        apex_util.set_session_state(''P133_FILE_TYPE'', ''FOLDER'');',
'        apex_json.write(''status'', ''success'');',
'        apex_json.write(''systemId'', v_system_id);',
'        apex_json.write(''rootFolderId'', v_root_id);',
'    else',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', ''Root folder not found'');',
'    end if;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(10) || dbms_utility.format_error_backtrace;',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', v_err_msg);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579124
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529156907)
,p_process_sequence=>7
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_GET_ACTION_URL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_action   varchar2(30) := upper(apex_application.g_x01);',
'    v_url      varchar2(32767);',
'    v_err_msg  varchar2(4000);',
'begin',
'    if v_action = ''CREATE_FOLDER'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':134:'' || :APP_SESSION || ''::'' || :DEBUG || '':134:P134_PARENT_FOLDER_ID:'' || :P133_PARENT_FOLDER_ID,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''UPLOAD'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':136:'' || :APP_SESSION || ''::'' || :DEBUG || '':136:P136_ROOT_FOLDER_ID,P136_PARENT_FOLDER_ID:'' || nvl(:P133_ROOT_FOLDER_ID, '''') || '','' || nvl(:P133_PARENT_FOLDER_ID, ''''),',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''RENAME'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':135:'' || :APP_SESSION || ''::'' || :DEBUG || '':135:P135_FILE_ID,P135_ROOT_FOLDER_ID:'' || :P133_FILE_ID || '','' || nvl(:P133_ROOT_FOLDER_ID, ''''),',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''PREVIEW'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || ''::'' || :DEBUG || '':137:P137_FILE_ID:'' || :P133_FILE_ID,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''MOVE'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':155:'' || :APP_SESSION || ''::'' || :DEBUG || '':155:P155_FILE_IDS:'' || :P133_FILE_IDS,',
'            p_plain_url => false',
'        );',
'    elsif v_action in (''PERMISSION'', ''SHARE'', ''SETTINGS'') then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':156:'' || :APP_SESSION || ''::'' || :DEBUG || '':156:P156_FILE_ID,P156_ROOT_FOLDER_ID,P156_PARENT_FOLDER_ID:'' || :P133_FILE_ID || '','' || nvl(:P133_ROOT_FOLDER_ID, '''') || '','' || nvl(:P133_PARENT_FOLDER_ID, ''''),',
'            p_plain_url => false',
'        );',
'    else',
unistr('        raise_application_error(-20001, ''\4E0D\652F\6301\7684\64CD\4F5C\7C7B\578B: '' || v_action);'),
'    end if;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
'    apex_json.write(''url'', v_url);',
'    apex_json.close_object;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', v_err_msg);',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579122
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529156867)
,p_process_sequence=>5
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE_FILE_LIBRARY_ORDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_all_ids        apex_t_varchar2;',
'    l_final_ids      apex_t_varchar2 := apex_t_varchar2();',
'    l_window_count   pls_integer := nvl(apex_application.g_f02.count, 0);',
'    l_offset         pls_integer := nvl(to_number(apex_application.g_x01), 0);',
'    l_start          pls_integer := 0;',
'    l_parent_folder  number := to_number(nullif(:P133_PARENT_FOLDER_ID, ''''));',
'    l_system_id      number := to_number(nvl(nullif(:SYSTEM_ID, ''''), ''1''));',
'    l_has_manage     number := fmp_is_file_manager(l_parent_folder, :USER_TENANT, V(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE);',
'',
'    type t_seen is table of pls_integer index by varchar2(32767);',
'    l_seen t_seen;',
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
'    if upper(nvl(:P133_SORT_BY, ''MANUAL'')) <> ''MANUAL'' then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', unistr(''\5F53\524D\4E0D\5904\4E8E\624B\52A8\6392\5E8F\6A21\5F0F''));',
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    if l_has_manage <= 0 then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', unistr(''\5F53\524D\6CA1\6709\4FDD\5B58\6392\5E8F\7684\7BA1\7406\6743\9650''));',
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    select to_char(file_id)',
'      bulk collect into l_all_ids',
'      from fmp_file',
'     where tenant_id = :USER_TENANT',
'       and system_id = l_system_id',
'       and del_flag = 0',
'       and l_parent_folder is not null',
'       and parent_folder_id = l_parent_folder',
'     order by nvl(sort_num, 999999999), file_id;',
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
'    if l_final_ids.count <> l_all_ids.count then',
'        l_final_ids := l_all_ids;',
'    end if;',
'',
'    for i in 1 .. l_final_ids.count loop',
'        update fmp_file',
'           set sort_num = i',
'         where file_id = to_number(l_final_ids(i))',
'           and tenant_id = :USER_TENANT',
'           and system_id = l_system_id',
'           and del_flag = 0;',
'    end loop;',
'',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
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
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579120
);
wwv_flow_imp.component_end;
end;
/

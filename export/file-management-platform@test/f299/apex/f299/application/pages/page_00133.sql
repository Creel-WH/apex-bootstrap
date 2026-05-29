prompt --application/pages/page_00133
begin
--   Manifest
--     PAGE: 00133
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>133
,p_name=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_alias=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_step_title=>unistr('\6587\4EF6\5E93\8BE6\60C5')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME''))',
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId,fileType) {',
'    $s(''P133_FILE_ID'', objId);',
'    $s(''P133_FILE_TYPE'', fileType);',
'    $(''#btn_'' + name).click();',
'}',
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
'function p133GetRegionModel() {',
'    try {',
'        var region = apex.region(''content'');',
'        var views = region ? region.call(''getViews'') : null;',
'        var gridView = views ? views.grid : null;',
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
'            icon: String(p133NormalizeCellValue(model.getValue(record, ''ICON_CLASS'')) || '''')',
'        });',
'    });',
'    return rows;',
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
'function p133HasManagePermission() {',
'    return Number($v(''P133_DISPLAY'') || 0) > 0;',
'}',
'',
'function p133ReadSortValue() {',
'    var value = String($v(''P133_SORT_BY'') || ''NAME_ASC'').toUpperCase();',
'    var allowed = [''NAME_ASC'', ''UPDATE_DESC'', ''UPDATE_ASC'', ''CREATION_DESC'', ''CREATION_ASC''];',
'    return allowed.indexOf(value) >= 0 ? value : ''NAME_ASC'';',
'}',
'',
'function p133ReadSortLabel() {',
'    var labels = {',
unistr('        NAME_ASC: ''\6587\4EF6\540D'','),
unistr('        UPDATE_DESC: ''\66F4\65B0\65F6\95F4\4ECE\8FD1\5230\8FDC'','),
unistr('        UPDATE_ASC: ''\66F4\65B0\65F6\95F4\4ECE\8FDC\5230\8FD1'','),
unistr('        CREATION_DESC: ''\521B\5EFA\65F6\95F4\4ECE\8FD1\5230\8FDC'','),
unistr('        CREATION_ASC: ''\521B\5EFA\65F6\95F4\4ECE\8FDC\5230\8FD1'''),
'    };',
'    return labels[p133ReadSortValue()] || labels.NAME_ASC;',
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
'    try {',
'        apex.region(''content'').refresh();',
'    } catch (e) {',
'        $(''#content_ig'').trigger(''apexrefresh'');',
'    }',
'}',
'',
'function p133TriggerButton(staticId) {',
'    var $button = $(''#'' + staticId);',
'    if ($button.length) {',
'        $button.trigger(''click'');',
'    }',
'}',
'',
'function p133NavigateFolder(folderId) {',
'    var nextFolderId = String(folderId || '''');',
'    if (!nextFolderId) {',
'        return;',
'    }',
'    p133ClearSelection();',
'    $s(''P133_FILE_ID'', nextFolderId);',
'    $s(''P133_FILE_TYPE'', ''FOLDER'');',
'    p133TriggerButton(''btn_preview'');',
'}',
'',
'function p133OpenFile(fileId) {',
'    p133ClearSelection();',
'    $s(''P133_FILE_ID'', fileId);',
'    $s(''P133_FILE_TYPE'', ''FILE'');',
'    p133TriggerButton(''btn_preview'');',
'}',
'',
'function p133RunAction(actionName) {',
'    var state = p133EnsureValidSelection();',
'    var singleOnly = [''rename'', ''share'', ''settings''];',
'    var managerActions = [''create_folder'', ''upload'', ''share'', ''rename'', ''move'', ''settings'', ''delete'', ''archive''];',
'',
'    if (managerActions.indexOf(actionName) >= 0 && !p133HasManagePermission()) {',
unistr('        alert(''\5F53\524D\6CA1\6709\53EF\6267\884C\8BE5\64CD\4F5C\7684\7BA1\7406\6743\9650'');'),
'        return;',
'    }',
'',
'    if (actionName === ''create_folder'') {',
'        p133TriggerButton(''btn_create_folder'');',
'        return;',
'    }',
'',
'    if (actionName === ''upload'') {',
'        p133TriggerButton(''btn_upload'');',
'        return;',
'    }',
'',
'    if (actionName === ''recycle'') {',
'        $s(''P133_FILE_ID'', '''');',
'        p133TriggerButton(''btn_recycle'');',
'        return;',
'    }',
'',
'    if (!state.count) {',
unistr('        alert(''\8BF7\9009\62E9\8981\64CD\4F5C\7684\6587\4EF6\6216\6587\4EF6\5939'');'),
'        return;',
'    }',
'',
'    if (singleOnly.indexOf(actionName) >= 0 && state.count !== 1) {',
unistr('        alert(''\8BE5\64CD\4F5C\4EC5\652F\6301\5355\9009'');'),
'        return;',
'    }',
'',
'    if (actionName === ''archive'' && state.hasFolder) {',
unistr('        alert(''\9009\4E2D\7684\5185\5BB9\5305\542B\6587\4EF6\5939\FF0C\4EC5\652F\6301\6587\4EF6\5F52\6863'');'),
'        return;',
'    }',
'',
'    if (actionName === ''share'') {',
'        p133TriggerButton(''btn_settings'');',
'        return;',
'    }',
'',
'    if (actionName === ''rename'') {',
'        p133TriggerButton(''btn_rename'');',
'        return;',
'    }',
'',
'    if (actionName === ''move'') {',
'        p133TriggerButton(''btn_move'');',
'        return;',
'    }',
'',
'    if (actionName === ''settings'') {',
'        p133TriggerButton(''btn_settings'');',
'        return;',
'    }',
'',
'    if (actionName === ''delete'') {',
'        p133TriggerButton(''btn_delete'');',
'        return;',
'    }',
'',
'    if (actionName === ''archive'') {',
'        p133TriggerButton(''btn_archive'');',
'    }',
'}',
'',
'function p133OpenEntry(objId, fileType) {',
'    if (String(fileType || '''').toUpperCase() === ''FOLDER'') {',
'        p133NavigateFolder(objId);',
'        return;',
'    }',
'    p133OpenFile(objId);',
'}',
'',
'function p133PathText() {',
'    var currentName = $v(''P133_FILE_NAME'') || '''';',
'    var currentPath = $v(''P133_FILE_PATH'') || '''';',
'    if (Number($v(''P133_FILE_LEVEL'') || 0) > 1 && currentPath) {',
'        return currentPath + ''/'' + currentName;',
'    }',
'    return currentName || ''/'';',
'}',
'',
'function p133RenderToolbar() {',
'    var $anchor = $(''#content, #content_ig'').first();',
'    var $toolbar = $(''#p133_toolbar'');',
'    if (!$toolbar.length) {',
'        var toolbarHtml = [',
'            ''<div id="p133_toolbar" class="p133-toolbar">'',',
'            ''  <div class="p133-toolbar-left">'',',
unistr('            ''    <button type="button" class="p133-toolbar-btn is-primary" data-p133-action="create_folder">\65B0\5EFA\6587\4EF6\5939</button>'','),
unistr('            ''    <button type="button" class="p133-toolbar-btn" data-p133-action="upload">\4E0A\4F20\6587\4EF6</button>'','),
unistr('            ''    <button type="button" class="p133-toolbar-btn" data-p133-action="recycle">\56DE\6536\7AD9</button>'','),
'            ''  </div>'',',
'            ''  <div class="p133-toolbar-right">'',',
unistr('            ''    <span class="p133-selection-text">\672A\9009\62E9\6587\4EF6\6216\6587\4EF6\5939</span>'','),
'            ''    <div class="p133-toolbar-actions">'',',
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="share">\5206\4EAB</button>'','),
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="rename">\91CD\547D\540D</button>'','),
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="move">\79FB\52A8\5230...</button>'','),
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="settings">\6743\9650\8BBE\7F6E</button>'','),
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="delete">\5220\9664</button>'','),
unistr('            ''      <button type="button" class="p133-toolbar-btn" data-p133-action="archive">\5F52\6863</button>'','),
'            ''    </div>'',',
'            ''    <div class="p133-toolbar-controls">'',',
'            ''      <div class="p133-sort-box">'',',
unistr('            ''        <button type="button" class="p133-control-btn p133-sort-trigger" title="\6392\5E8F\65B9\6848"><span class="p133-sort-label">\6587\4EF6\540D</span><span class="fa fa-angle-down" aria-hidden="true"></span></button>'','),
'            ''        <div class="p133-sort-menu">'',',
unistr('            ''          <div class="p133-sort-title">\89C4\5219\6392\5E8F</div>'','),
unistr('            ''          <button type="button" class="p133-sort-option" data-sort="NAME_ASC">\6587\4EF6\540D</button>'','),
unistr('            ''          <button type="button" class="p133-sort-option" data-sort="UPDATE_DESC">\66F4\65B0\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'','),
unistr('            ''          <button type="button" class="p133-sort-option" data-sort="UPDATE_ASC">\66F4\65B0\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'','),
unistr('            ''          <button type="button" class="p133-sort-option" data-sort="CREATION_DESC">\521B\5EFA\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'','),
unistr('            ''          <button type="button" class="p133-sort-option" data-sort="CREATION_ASC">\521B\5EFA\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'','),
'            ''        </div>'',',
'            ''      </div>'',',
'            ''      <div class="p133-view-toggle">'',',
unistr('            ''        <button type="button" class="p133-view-btn" data-view-mode="list" title="\5217\8868\89C6\56FE" aria-label="\5217\8868\89C6\56FE"><span class="fa fa-list" aria-hidden="true"></span></button>'','),
unistr('            ''        <button type="button" class="p133-view-btn" data-view-mode="grid" title="\7F51\683C\89C6\56FE" aria-label="\7F51\683C\89C6\56FE"><span class="fa fa-th-large" aria-hidden="true"></span></button>'','),
'            ''      </div>'',',
unistr('            ''      <button type="button" class="p133-control-btn p133-refresh" title="\5237\65B0\5F53\524D\76EE\5F55" aria-label="\5237\65B0\5F53\524D\76EE\5F55"><span class="fa fa-refresh" aria-hidden="true"></span></button>'','),
'            ''    </div>'',',
'            ''  </div>'',',
'            ''</div>''',
'        ].join('''');',
'        $anchor.before(toolbarHtml);',
'        $toolbar = $(''#p133_toolbar'');',
'    }',
'    return $toolbar;',
'}',
'',
'function p133RenderPathbar() {',
'    var pathText = p133PathText();',
'    var rootId = $v(''P133_ROOT_FOLDER_ID'');',
'    var parentId = $v(''P133_PARENT_FOLDER_ID'') || rootId;',
'    var parts = pathText.split(''/'').filter(function(part) { return part; });',
'    var crumbs = [];',
'    var $anchor = $(''#content, #content_ig'').first();',
'    try {',
'        crumbs = JSON.parse($v(''P133_BREADCRUMB_JSON'') || ''[]'');',
'    } catch (e) {',
'        crumbs = [];',
'    }',
'    var $bar = $(''#p133_pathbar'');',
'    if (!$bar.length) {',
unistr('        $anchor.before(''<div id="p133_pathbar" class="p133-pathbar"><button type="button" class="p133-up" title="\8FD4\56DE\4E0A\4E00\7EA7" aria-label="\8FD4\56DE\4E0A\4E00\7EA7"><span class="fa fa-arrow-up" aria-hidden="true"></span></button><div class="p133-crumbs"></div></div>'');'),
'        $bar = $(''#p133_pathbar'');',
'        $bar.on(''click'', ''.p133-up'', function() {',
'            var currentParentId = $v(''P133_PARENT_FOLDER_ID'') || rootId;',
'            var upId = $v(''P133_UP_FOLDER_ID'') || rootId;',
'            if (currentParentId && currentParentId !== rootId) {',
'                p133NavigateFolder(upId);',
'            } else {',
'                p133NavigateFolder(rootId);',
'            }',
'        });',
'        $bar.on(''click'', ''.p133-crumb'', function() {',
'            var targetId = $(this).data(''folderId'');',
'            if (targetId) {',
'                p133NavigateFolder(String(targetId));',
'            }',
'        });',
'    }',
'    if (!$bar.length) { return; }',
'    if (crumbs.length) {',
'        $bar.find(''.p133-crumbs'').html(crumbs.map(function(crumb, index) {',
'            var label = apex.util.escapeHTML(crumb.name || ''/'');',
'            var id = apex.util.escapeHTML(String(crumb.id || ''''));',
'            var current = String(crumb.id || '''') === String(parentId || '''');',
'            var separator = index === 0 ? '''' : ''<span class="p133-sep">/</span>'';',
'            return separator + ''<button type="button" class="p133-crumb'' + (current ? '' is-current'' : '''') + ''" data-folder-id="'' + id + ''">'' + label + ''</button>'';',
'        }).join(''''));',
'    } else {',
'        $bar.find(''.p133-crumbs'').html(''<button type="button" class="p133-crumb is-current" data-folder-id="'' + apex.util.escapeHTML(String(rootId || '''')) + ''">'' + apex.util.escapeHTML(parts.join('' / '') || pathText || ''/'') + ''</button>'');',
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
'    p133SyncView();',
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
'            ''<button type="button" class="p133-card-open" data-file-id="'' + apex.util.escapeHTML(String(id || '''')) + ''" data-file-type="'' + apex.util.escapeHTML(String(type || '''')) + ''">'' +',
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
'    try {',
'        var contentRegion = apex.region(''content'');',
'        var gridView = contentRegion ? contentRegion.call(''getViews'').grid : null;',
'        if (gridView && gridView.view$ && gridView.view$.grid) {',
'            gridView.view$.grid(''hideColumn'', ''OPERATE'');',
'            gridView.view$.grid(''hideColumn'', ''APEX$ROW_ACTION'');',
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
'',
'    if (!$toolbar.length) {',
'        return;',
'    }',
'',
unistr('    $toolbar.find(''.p133-selection-text'').text(state.count ? ''\5DF2\9009\4E2D '' + state.count + '' \9879'' : ''\672A\9009\62E9\6587\4EF6\6216\6587\4EF6\5939'');'),
'    $toolbar.find(''.p133-sort-label'').text(p133ReadSortLabel());',
'    $toolbar.find(''.p133-sort-option'').removeClass(''is-active'');',
'    $toolbar.find(''.p133-sort-option[data-sort="'' + p133ReadSortValue() + ''"]'').addClass(''is-active'');',
'    $toolbar.find(''.p133-view-btn'').removeClass(''is-active'');',
'    $toolbar.find(''.p133-view-btn[data-view-mode="'' + viewMode + ''"]'').addClass(''is-active'');',
'',
'    $toolbar.find(''[data-p133-action="create_folder"], [data-p133-action="upload"], [data-p133-action="share"], [data-p133-action="rename"], [data-p133-action="move"], [data-p133-action="settings"], [data-p133-action="delete"], [data-p133-action="arc'
||'hive"]'').prop(''disabled'', false);',
'',
'    if (!canManage) {',
'        $toolbar.find(''[data-p133-action="create_folder"], [data-p133-action="upload"], [data-p133-action="share"], [data-p133-action="rename"], [data-p133-action="move"], [data-p133-action="settings"], [data-p133-action="delete"], [data-p133-action='
||'"archive"]'').prop(''disabled'', true);',
'        return;',
'    }',
'',
'    $toolbar.find(''[data-p133-action="share"], [data-p133-action="rename"], [data-p133-action="settings"]'').prop(''disabled'', state.count !== 1);',
'    $toolbar.find(''[data-p133-action="move"], [data-p133-action="delete"]'').prop(''disabled'', state.count < 1);',
'    $toolbar.find(''[data-p133-action="archive"]'').prop(''disabled'', state.count < 1 || state.hasFolder);',
'}',
'',
'function p133SyncSelectionUi() {',
'    p133EnsureValidSelection();',
'    p133RenderGridCards();',
'    p133UpdateToolbarState();',
'}',
'',
'function p133SyncView() {',
'    var mode = p133ReadViewMode();',
'    var $region = $(''#content'');',
'    var $gridView = $(''#p133_grid_view'');',
'    p133RenderToolbar();',
'    p133RenderPathbar();',
'    p133RenderGridCards();',
'    $gridView = $(''#p133_grid_view'');',
'    if (mode === ''grid'') {',
'        $region.hide();',
'        $gridView.show();',
'    } else {',
'        $gridView.hide();',
'        $region.show();',
'    }',
'    p133ApplyGridColumnState();',
'    p133UpdateToolbarState();',
'}',
'',
'function p133InitViewMode() {',
'    $(document).off(''click.p133toolbar'', ''#p133_toolbar [data-p133-action]'').on(''click.p133toolbar'', ''#p133_toolbar [data-p133-action]'', function() {',
'        p133RunAction($(this).data(''p133Action''));',
'    });',
'    $(document).off(''click.p133view'', ''#p133_toolbar .p133-view-btn'').on(''click.p133view'', ''#p133_toolbar .p133-view-btn'', function() {',
'        p133SetViewMode($(this).data(''viewMode'') || ''list'');',
'    });',
'    $(document).off(''click.p133sort'', ''#p133_toolbar .p133-sort-trigger'').on(''click.p133sort'', ''#p133_toolbar .p133-sort-trigger'', function(event) {',
'        event.preventDefault();',
'        event.stopPropagation();',
'        p133ToggleSortMenu();',
'    });',
'    $(document).off(''click.p133sortoption'', ''#p133_toolbar .p133-sort-option'').on(''click.p133sortoption'', ''#p133_toolbar .p133-sort-option'', function(event) {',
'        event.preventDefault();',
'        event.stopPropagation();',
'        p133SetSortValue($(this).data(''sort''));',
'    });',
'    $(document).off(''click.p133refresh'', ''#p133_toolbar .p133-refresh'').on(''click.p133refresh'', ''#p133_toolbar .p133-refresh'', function() {',
'        try {',
'            apex.region(''content'').refresh();',
'        } catch (e) {',
'            $(''#content_ig'').trigger(''apexrefresh'');',
'        }',
'    });',
'    $(document).off(''change.p133cards'', ''#p133_grid_view .p133-card-checkbox'').on(''change.p133cards'', ''#p133_grid_view .p133-card-checkbox'', function(event) {',
'        var state = p133GetSelectionState();',
'        var ids = state.ids.slice();',
'        var types = state.types.slice();',
'        var id = String($(this).data(''fileId'') || '''');',
'        var type = String($(this).data(''fileType'') || '''');',
'        var index = ids.indexOf(id);',
'        event.stopPropagation();',
'        if (this.checked && index < 0) {',
'            ids.push(id);',
'            types.push(type);',
'        } else if (!this.checked && index >= 0) {',
'            ids.splice(index, 1);',
'            types.splice(index, 1);',
'        }',
'        p133SetSelection(ids, types);',
'        p133SyncSelectionUi();',
'    });',
'    $(document).off(''click.p133cardopen'', ''#p133_grid_view .p133-card-open'').on(''click.p133cardopen'', ''#p133_grid_view .p133-card-open'', function(event) {',
'        event.preventDefault();',
'        p133OpenEntry($(this).data(''fileId''), $(this).data(''fileType''));',
'    });',
'    $(document).off(''click.p133sortdismiss'').on(''click.p133sortdismiss'', function(event) {',
'        if (!$(event.target).closest(''#p133_toolbar .p133-sort-box'').length) {',
'            p133ToggleSortMenu(false);',
'        }',
'    });',
'    $(document).off(''apexafterrefresh.p133'', ''#content, #content_ig'').on(''apexafterrefresh.p133'', ''#content, #content_ig'', function() {',
'        window.setTimeout(function() {',
'            p133SyncView();',
'        }, 0);',
'    });',
'    p133SyncView();',
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
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'p133RenderPathbar();',
'p133RenderToolbar();',
'p133InitViewMode();',
'p133SyncView();',
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
'#p133_toolbar {',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'    gap: 12px;',
'    flex-wrap: wrap;',
'    margin: 0 0 10px 0;',
'    width: 100%;',
'    clear: both;',
'    box-sizing: border-box;',
'    position: relative;',
'    z-index: 400;',
'}',
'',
'#p133_toolbar .p133-toolbar-left,',
'#p133_toolbar .p133-toolbar-right,',
'#p133_toolbar .p133-toolbar-actions,',
'#p133_toolbar .p133-toolbar-controls,',
'#p133_toolbar .p133-view-toggle {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    flex-wrap: wrap;',
'}',
'',
'#p133_toolbar .p133-toolbar-right {',
'    justify-content: flex-end;',
'    flex: 1;',
'    min-width: 0;',
'}',
'',
'#p133_toolbar .p133-selection-text {',
'    color: #4b5563;',
'    font-size: 13px;',
'    margin-right: 4px;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn,',
'#p133_toolbar .p133-control-btn,',
'#p133_toolbar .p133-view-btn {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    min-height: 32px;',
'    padding: 0 12px;',
'    border: 1px solid #d0d7e2;',
'    border-radius: 6px;',
'    background: #fff;',
'    color: #1f2937;',
'    cursor: pointer;',
'    font-size: 13px;',
'    line-height: 1;',
'}',
'',
'#p133_toolbar .p133-control-btn,',
'#p133_toolbar .p133-view-btn {',
'    min-width: 32px;',
'    padding: 0 10px;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-primary {',
'    border-color: #2563eb;',
'    background: #2563eb;',
'    color: #fff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn:hover:not(:disabled),',
'#p133_toolbar .p133-control-btn:hover:not(:disabled),',
'#p133_toolbar .p133-view-btn:hover:not(:disabled) {',
'    border-color: #93c5fd;',
'    background: #f8fbff;',
'}',
'',
'#p133_toolbar .p133-toolbar-btn.is-primary:hover:not(:disabled) {',
'    background: #1d4ed8;',
'    color: #fff;',
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
'    border-color: #93c5fd;',
'    background: #dbeafe;',
'    color: #1d4ed8;',
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
'    border: 1px solid #d0d7e2;',
'    border-radius: 8px;',
'    background: #fff;',
'    box-shadow: 0 10px 24px rgba(15, 23, 42, 0.12);',
'    z-index: 2400;',
'}',
'',
'#p133_toolbar .p133-sort-menu.is-open {',
'    display: block;',
'}',
'',
'#p133_toolbar .p133-sort-title {',
'    padding: 4px 8px 8px;',
'    color: #6b7280;',
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
'    color: #111827;',
'    cursor: pointer;',
'    font-size: 13px;',
'    text-align: left;',
'}',
'',
'#p133_toolbar .p133-sort-option:hover {',
'    background: #f3f6fb;',
'}',
'',
'#p133_toolbar .p133-sort-option.is-active {',
'    background: #eff6ff;',
'    color: #1d4ed8;',
'    font-weight: 600;',
'}',
'',
'#p133_pathbar {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    min-height: 40px;',
'    margin: 0 0 10px 0;',
'    padding: 6px 8px;',
'    border: 1px solid #d8dde6;',
'    border-radius: 4px;',
'    background: #fff;',
'    width: 100%;',
'    clear: both;',
'    box-sizing: border-box;',
'}',
'',
'#p133_pathbar .p133-crumbs {',
'    flex: 1;',
'    min-width: 0;',
'    color: #32363a;',
'    font-size: 14px;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'#p133_pathbar button {',
'    width: 28px;',
'    height: 28px;',
'    border: 0;',
'    border-radius: 4px;',
'    background: #eef1f5;',
'    color: #4b5563;',
'    cursor: pointer;',
'}',
'',
'#p133_pathbar .p133-crumb {',
'    width: auto;',
'    max-width: 320px;',
'    padding: 0 4px;',
'    background: transparent;',
'    color: #2563eb;',
'    font: inherit;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'    vertical-align: middle;',
'}',
'',
'#p133_pathbar .p133-crumb.is-current {',
'    color: #32363a;',
'    font-weight: 600;',
'    cursor: default;',
'}',
'',
'#p133_pathbar .p133-sep {',
'    color: #8a94a6;',
'    margin: 0 2px;',
'}',
'',
'#R888001330000000001 {',
'    display: none !important;',
'}',
'',
'#content {',
'    width: 100%;',
'}',
'',
'#content_ig_toolbar {',
'    display: none !important;',
'}',
'',
'.p133-grid-view {',
'    display: grid;',
'    grid-template-columns: repeat(auto-fill, minmax(132px, 1fr));',
'    gap: 14px;',
'    padding: 8px 4px;',
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
'    border-color: #93c5fd;',
'    background: #f8fbff;',
'}',
'',
'.p133-card.is-selected {',
'    border-color: #2563eb;',
'    box-shadow: inset 0 0 0 1px #2563eb;',
'    background: #eff6ff;',
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
'    width: 14px;',
'    height: 14px;',
'}',
'',
'.p133-card-open {',
'    display: flex;',
'    flex-direction: column;',
'    align-items: center;',
'    justify-content: center;',
'    min-height: 88px;',
'    border: 0;',
'    background: transparent;',
'    color: inherit;',
'    cursor: pointer;',
'}',
'',
'.p133-card-open .fa {',
'    font-size: 30px;',
'    color: #2d9bf0;',
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
'    border: 1px dashed #d0d7e2;',
'    border-radius: 8px;',
'    color: #6b7280;',
'    background: #fff;',
'}',
'',
'#p133_pathbar.is-root .p133-up {',
'    opacity: .45;',
'    cursor: default;',
'}',
'',
'#content .a-GV-cell {',
'    vertical-align: middle;',
'}',
'',
'.p133-file-name {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    color: #2f3b4c;',
'    text-decoration: none;',
'}',
'',
'.p133-file-name .fa {',
'    color: #2d9bf0;',
'    font-size: 18px;',
'}'))
,p_page_css_classes=>'ja-bpoint-btn'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(888001330000000001)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(888001330000000002)
,p_plug_name=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>170
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FILE_ID,',
'       A.ROOT_FOLDER_ID,',
'       A.PARENT_FOLDER_ID,',
'       A.FILE_NAME,',
'       A.FILE_FORMAT,',
'       A.FILE_SIZE,',
'       A.FILE_STATUS,',
'       A.FILE_TYPE,',
'       CASE WHEN A.FILE_TYPE = ''FOLDER'' THEN CAST(unistr(''\6587\4EF6\5939'') AS VARCHAR2(30 CHAR)) ELSE NVL(A.FILE_FORMAT,CAST(unistr(''\6587\4EF6'') AS VARCHAR2(30 CHAR))) END AS TYPE_LABEL,',
'       CASE WHEN A.FILE_TYPE = ''FOLDER'' THEN ''fa-folder-o'' ELSE ''fa-file-o'' END AS ICON_CLASS,',
'       --        A.UPDATED_BY,       ',
unistr('       NVL(U.NAME, TO_CHAR(NVL(A.UPDATED_BY, A.CREATED_BY))) AS UPDATED_BY,  -- \5217\8868\66F4\65B0\4EBA\5C55\793A\4EBA\540D'),
unistr('       decode(A.PLANS_FILE_TYPE,null,''\2014\2014'',''NEVER'',''\6C38\4E0D\5F52\6863'',''IMMEDIATELY'',''\5DF2\5F52\6863'',''ONE_YEAR_LATER'',''1\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'''),
unistr('           ,''TWO_YEAR_LATER'',''2\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'',''THREE_YEAR_LATER'',''3\5E74\540E\FF08''||TO_CHAR(PLANS_FILE_DATE,''YYYY-MM-DD HH24:MI'')||'')'') PLANS_FILE_TYPE,'),
'       A.UPDATE_DATE,',
'       A.SCOPE_TYPE,',
'       A.FILE_VERSION_TAG,',
'       ''''             AS                   OPERATE,',
'       CASE',
'           WHEN FILE_TYPE = ''FOLDER'' THEN 0',
'           WHEN FILE_TYPE = ''FILE'' AND FILE_STATUS = ''ARCHIVE'' THEN 0',
'           ELSE 1 END AS                   IS_HIDE,',
'       CASE  WHEN FILE_TYPE = ''FOLDER'' THEN 0 ELSE 1 END AS IS_FILE_TYPE,',
'       1 AS IS_PERMISSIONS',
'FROM STS_FILE A',
'LEFT JOIN BASIC_USER U',
'  ON U.USER_ID = NVL(A.UPDATED_BY, A.CREATED_BY)',
' AND U.TENANT_ID = :USER_TENANT',
' AND U.DEL_FLAG = 0',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND A.DEL_FLAG = 0',
'  AND A.PARENT_FOLDER_ID = :P133_PARENT_FOLDER_ID',
'  AND (:ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'', ''VIEW_REPORT'')',
'       OR A.SCOPE_TYPE IN (''VIEW_DOWN'', ''VIEW'')',
'       OR EXISTS (SELECT 1',
'                  FROM STS_SCOPE SB',
'                  WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                    AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                    AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                    AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                      OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                 FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                 WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                   AND TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID))))))',
'ORDER BY CASE WHEN A.FILE_TYPE = ''FOLDER'' THEN 0 ELSE 1 END,',
'         CASE WHEN NVL(:P133_SORT_BY, ''NAME_ASC'') = ''NAME_ASC'' THEN LOWER(A.FILE_NAME) END ASC,',
'         CASE WHEN :P133_SORT_BY = ''UPDATE_DESC'' THEN A.UPDATE_DATE END DESC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''UPDATE_ASC'' THEN A.UPDATE_DATE END ASC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''CREATION_DESC'' THEN A.CREATION_DATE END DESC NULLS LAST,',
'         CASE WHEN :P133_SORT_BY = ''CREATION_ASC'' THEN A.CREATION_DATE END ASC NULLS LAST,',
'         LOWER(A.FILE_NAME);'))
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
 p_id=>wwv_flow_imp.id(888001330000000004)
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
 p_id=>wwv_flow_imp.id(888001330000000005)
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
 p_id=>wwv_flow_imp.id(888001330000000006)
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
 p_id=>wwv_flow_imp.id(888001330000000007)
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
 p_id=>wwv_flow_imp.id(888001330000000008)
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
 p_id=>wwv_flow_imp.id(888001330000000009)
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
    '	<a href="#" class="p133-file-name p133-file-type-&FILE_TYPE." onclick="p133OpenEntry(''&FILE_ID.'',''&FILE_TYPE.''); return false;">',
    '       <span class="fa &ICON_CLASS." aria-hidden="true"></span>',
    '		<span>&FILE_NAME.</span>',
    '	</a>',
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
 p_id=>wwv_flow_imp.id(888001330000000010)
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
 p_id=>wwv_flow_imp.id(888001330000000011)
,p_name=>'FILE_SIZE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_SIZE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5927\5C0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>75
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
 p_id=>wwv_flow_imp.id(888001330000000012)
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
 p_id=>wwv_flow_imp.id(888001330000000013)
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
 p_id=>wwv_flow_imp.id(888001330000000014)
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
 p_id=>wwv_flow_imp.id(888001330000000015)
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
 p_id=>wwv_flow_imp.id(888001330000000016)
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
 p_id=>wwv_flow_imp.id(888001330000000017)
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
 p_id=>wwv_flow_imp.id(888001330000000018)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(888001330000000019)
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
 p_id=>wwv_flow_imp.id(888001330000000020)
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
 p_id=>wwv_flow_imp.id(888001330000000021)
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
 p_id=>wwv_flow_imp.id(888001330000000022)
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
 p_id=>wwv_flow_imp.id(888001330000000023)
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
 p_id=>wwv_flow_imp.id(888001330000000024)
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
 p_id=>wwv_flow_imp.id(888001330000000025)
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
 p_id=>wwv_flow_imp.id(888001330000000026)
,p_interactive_grid_id=>wwv_flow_imp.id(888001330000000025)
,p_static_id=>'4686437'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(888001330000000027)
,p_report_id=>wwv_flow_imp.id(888001330000000026)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000028)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(888001330000000004)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000029)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(888001330000000005)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>136.219
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000030)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(888001330000000018)
,p_is_visible=>false
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000031)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(888001330000000006)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000032)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(888001330000000007)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000033)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(888001330000000008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000034)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(888001330000000009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>360
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000035)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(888001330000000010)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>139.195
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000036)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(888001330000000011)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000037)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(888001330000000012)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000038)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(888001330000000013)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000039)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(888001330000000014)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000040)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(888001330000000015)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000041)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(888001330000000016)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000042)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(888001330000000017)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000043)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(888001330000000020)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000044)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(888001330000000021)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000045)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(888001330000000022)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000046)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(888001330000000023)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(888001330000000047)
,p_view_id=>wwv_flow_imp.id(888001330000000027)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(888001330000000024)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(888001330000000003)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>150
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000056)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_static_id=>'btn_create_folder'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000057)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_static_id=>'btn_upload'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000058)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000059)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\6279\91CF\5F52\6863')
,p_button_static_id=>'btn_archive'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5F52\6863')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000048)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_static_id=>'btn_move'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000060)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\56DE\6536\7AD9')
,p_button_static_id=>'btn_recycle'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\56DE\6536\7AD9')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000049)
,p_button_sequence=>180
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\66F4\65B0')
,p_button_static_id=>'btn_update'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000050)
,p_button_sequence=>190
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\5386\53F2\7248\672C')
,p_button_static_id=>'btn_versions'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5386\53F2\7248\672C')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000051)
,p_button_sequence=>200
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\591A\8BED\8A00')
,p_button_static_id=>'btn_multilingual'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\591A\8BED\8A00')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000052)
,p_button_sequence=>210
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\91CD\547D\540D')
,p_button_static_id=>'btn_rename'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\91CD\547D\540D')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000053)
,p_button_sequence=>220
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\5F52\6863\8BBE\7F6E1')
,p_button_static_id=>'btn_pigeonhole'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5F52\6863\8BBE\7F6E')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000054)
,p_button_sequence=>230
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\6743\9650\8BBE\7F6E')
,p_button_static_id=>'btn_settings'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000055)
,p_button_sequence=>300
,p_button_plug_id=>wwv_flow_imp.id(888001330000000001)
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(888001330000000061)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(888001330000000003)
,p_button_name=>unistr('\8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('<  \8FD4\56DE\6587\4EF6\5E93\76EE\5F55')
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:130:&SESSION.::&DEBUG.:130::'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000062)
,p_branch_name=>unistr('\8F6C\5230\9875 135')
,p_branch_action=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_FILE_ID,P135_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000052)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000063)
,p_branch_name=>unistr('\66F4\65B0\6587\4EF6-\8F6C\5230\9875 144')
,p_branch_action=>'f?p=&APP_ID.:144:&SESSION.::&DEBUG.:144:P144_FILE_ID,P144_PARENT_FOLDER_ID,P144_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_PARENT_FOLDER_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000049)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000064)
,p_branch_name=>unistr('\5386\53F2\7248\672C-\8F6C\5230\9875 148')
,p_branch_action=>'f?p=&APP_ID.:148:&SESSION.::&DEBUG.:148:P148_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000050)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000065)
,p_branch_name=>unistr('\5355\4E2A\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 143')
,p_branch_action=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:143:P143_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000053)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000066)
,p_branch_name=>unistr('\6279\91CF\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 141')
,p_branch_action=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:141:P141_FILE_ID,P141_FILE_IDS,P141_FILE_TYPES:&P133_FILE_ID.,&P133_FILE_IDS.,&P133_FILE_TYPES.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000059)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000067)
,p_branch_name=>unistr('\56DE\6536\7AD9-\8F6C\5230\9875 149')
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_FILE_ID,P149_ROOT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000060)
,p_branch_sequence=>60
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000068)
,p_branch_name=>unistr('\8F6C\5230\9875 139')
,p_branch_action=>'f?p=&APP_ID.:139:&SESSION.::&DEBUG.:139:P139_FILE_ID,P139_ROOT_FOLDER_ID,P139_PARENT_FOLDER_ID:&P133_FILE_ID.,&P133_ROOT_FOLDER_ID.,&P133_PARENT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000054)
,p_branch_sequence=>70
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000069)
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
 p_id=>wwv_flow_imp.id(888001330000000070)
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
 p_id=>wwv_flow_imp.id(888001330000000071)
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
 p_id=>wwv_flow_imp.id(888001330000000072)
,p_branch_name=>unistr('\591A\8BED\8A00-\8F6C\5230\9875 145')
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_FILE_ID:&P133_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000051)
,p_branch_sequence=>110
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(888001330000000073)
,p_branch_name=>unistr('\6587\4EF6\8FC1\79FB-\8F6C\5230\9875 155')
,p_branch_action=>'f?p=&APP_ID.:155:&SESSION.::&DEBUG.:155:P155_FILE_IDS:&P133_FILE_IDS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(888001330000000048)
,p_branch_sequence=>120
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000011)
,p_name=>'P133_BREADCRUMB_JSON'
,p_item_sequence=>126
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000074)
,p_name=>'P133_DISPLAY'
,p_item_sequence=>280
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000075)
,p_name=>'P133_ROOT_FOLDER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000076)
,p_name=>'P133_PARENT_FOLDER_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000077)
,p_name=>'P133_UP_FOLDER_ID'
,p_item_sequence=>125
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000078)
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
 p_id=>wwv_flow_imp.id(888001330000000079)
,p_name=>'P133_FILE_PATH'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000080)
,p_name=>'P133_FILE_LEVEL'
,p_item_sequence=>290
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000081)
,p_name=>'P133_FILE_TYPE'
,p_item_sequence=>250
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000082)
,p_name=>'P133_PAGE'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000083)
,p_name=>'P133_ROW_COUNT'
,p_item_sequence=>310
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000084)
,p_name=>'P133_FILE_IDS'
,p_item_sequence=>320
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000085)
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
 p_id=>wwv_flow_imp.id(888001330000000086)
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
 p_id=>wwv_flow_imp.id(888001330000000087)
,p_name=>'P133_FILE_TYPES'
,p_item_sequence=>330
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(888001330000000142)
,p_name=>'P133_SORT_BY'
,p_item_sequence=>340
,p_use_cache_before_default=>'NO'
,p_item_default=>'NAME_ASC'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000088)
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
 p_id=>wwv_flow_imp.id(888001330000000100)
,p_event_id=>wwv_flow_imp.id(888001330000000088)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000101)
,p_event_id=>wwv_flow_imp.id(888001330000000088)
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
'                  FROM STS_FILE',
'                 WHERE TENANT_ID = :USER_TENANT',
'                 START WITH FILE_ID = :P133_PARENT_FOLDER_ID',
'               CONNECT BY PRIOR PARENT_FOLDER_ID = FILE_ID))',
'FROM STS_FILE',
'WHERE FILE_ID =:P133_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000102)
,p_event_id=>wwv_flow_imp.id(888001330000000088)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_DISPLAY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN 1',
'           WHEN EXISTS (SELECT 1',
'                              FROM STS_SCOPE SB',
'                             WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                               AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                               AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                               AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                                 OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                            FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                           WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                             AND TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'           WHEN EXISTS (SELECT 1',
'                          FROM STS_SCOPE A',
'                         WHERE A.REFERENCE_TYPE = ''FILE''',
'                           AND A.REFERENCE_ID = :P133_PARENT_FOLDER_ID',
'                           AND A.PERMISSIONS_TYPE = ''MANAGE''',
'                           AND ((A.RANGE_TYPE = ''USER'' AND A.RANGE_ID = :DIAN_USER_ID)',
'                             OR (A.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                        FROM BASIC_JA_DING_DEPT_USER B',
'                                                                       WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                                                                         AND TO_CHAR(B.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'           ELSE 0',
'       END AS P133_DISPLAY',
'FROM DUAL;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000103)
,p_event_id=>wwv_flow_imp.id(888001330000000088)
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
'p133SyncView();',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000089)
,p_name=>unistr('\5237\65B0\62A5\8868\548C\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000104)
,p_event_id=>wwv_flow_imp.id(888001330000000089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000105)
,p_event_id=>wwv_flow_imp.id(888001330000000089)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000090)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000055)
,p_condition_element=>'P133_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000106)
,p_event_id=>wwv_flow_imp.id(888001330000000090)
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
 p_id=>wwv_flow_imp.id(888001330000000107)
,p_event_id=>wwv_flow_imp.id(888001330000000090)
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
 p_id=>wwv_flow_imp.id(888001330000000108)
,p_event_id=>wwv_flow_imp.id(888001330000000090)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000109)
,p_event_id=>wwv_flow_imp.id(888001330000000090)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000110)
,p_event_id=>wwv_flow_imp.id(888001330000000090)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000091)
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
 p_id=>wwv_flow_imp.id(888001330000000111)
,p_event_id=>wwv_flow_imp.id(888001330000000091)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000056)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000112)
,p_event_id=>wwv_flow_imp.id(888001330000000091)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000056)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000092)
,p_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000056)
,p_condition_element=>'P133_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000113)
,p_event_id=>wwv_flow_imp.id(888001330000000092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\5C42\7EA7'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000114)
,p_event_id=>wwv_flow_imp.id(888001330000000092)
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
 p_id=>wwv_flow_imp.id(888001330000000115)
,p_event_id=>wwv_flow_imp.id(888001330000000092)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000093)
,p_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000057)
,p_condition_element=>'P133_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000116)
,p_event_id=>wwv_flow_imp.id(888001330000000093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\5C42\7EA7'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000117)
,p_event_id=>wwv_flow_imp.id(888001330000000093)
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
 p_id=>wwv_flow_imp.id(888001330000000118)
,p_event_id=>wwv_flow_imp.id(888001330000000093)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000094)
,p_name=>unistr('\5220\9664\9009\4E2D\6587\4EF6\5230\56DE\6536\7AD9')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000058)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000119)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
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
 p_id=>wwv_flow_imp.id(888001330000000120)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000121)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
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
 p_id=>wwv_flow_imp.id(888001330000000122)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
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
 p_id=>wwv_flow_imp.id(888001330000000123)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000124)
,p_event_id=>wwv_flow_imp.id(888001330000000094)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(888001330000000002)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000095)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(888001330000000002)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000125)
,p_event_id=>wwv_flow_imp.id(888001330000000095)
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
'p133SyncSelectionUi();',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P133_FILE_IDS''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000096)
,p_name=>unistr('\6279\91CF\5F52\6863\8BBE\7F6E')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000059)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000126)
,p_event_id=>wwv_flow_imp.id(888001330000000096)
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
 p_id=>wwv_flow_imp.id(888001330000000127)
,p_event_id=>wwv_flow_imp.id(888001330000000096)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000128)
,p_event_id=>wwv_flow_imp.id(888001330000000096)
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
 p_id=>wwv_flow_imp.id(888001330000000129)
,p_event_id=>wwv_flow_imp.id(888001330000000096)
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
 p_id=>wwv_flow_imp.id(888001330000000097)
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
 p_id=>wwv_flow_imp.id(888001330000000130)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000057)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000131)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000057)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000132)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000058)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000133)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000058)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000134)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000059)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000135)
,p_event_id=>wwv_flow_imp.id(888001330000000097)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000059)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000098)
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
'    SELECT CASE',
'               WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN 1',
'               WHEN EXISTS (SELECT 1',
'                                  FROM STS_SCOPE SB',
'                                 WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                                   AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                                   AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                                   AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                                     OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                                FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                               WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                                 AND TO_CHAR(BD.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'               WHEN EXISTS (SELECT 1',
'                              FROM STS_SCOPE A',
'                             WHERE A.REFERENCE_TYPE = ''FILE''',
'                               AND A.REFERENCE_ID = :P133_PARENT_FOLDER_ID',
'                               AND A.PERMISSIONS_TYPE = ''MANAGE''',
'                               AND ((A.RANGE_TYPE = ''USER'' AND A.RANGE_ID = :DIAN_USER_ID)',
'                                 OR (A.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                            FROM BASIC_JA_DING_DEPT_USER B',
'                                                                           WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                                                                             AND TO_CHAR(B.USER_ID) = TO_CHAR(:DIAN_USER_ID))))) THEN 1',
'               ELSE 0',
'           END',
'    INTO V_COUNT',
'    FROM DUAL;',
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
 p_id=>wwv_flow_imp.id(888001330000000136)
,p_event_id=>wwv_flow_imp.id(888001330000000098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(888001330000000056)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(888001330000000099)
,p_name=>unistr('\6267\884C\8FC1\79FB')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(888001330000000048)
,p_condition_element=>'P133_FILE_IDS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000137)
,p_event_id=>wwv_flow_imp.id(888001330000000099)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\662F\5426\9009\4E2D\6587\4EF6')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\6570\636E'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(888001330000000138)
,p_event_id=>wwv_flow_imp.id(888001330000000099)
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
 p_id=>wwv_flow_imp.id(888001330000000139)
,p_event_id=>wwv_flow_imp.id(888001330000000099)
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
 p_id=>wwv_flow_imp.id(888001330000000140)
,p_event_id=>wwv_flow_imp.id(888001330000000099)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\6279\91CF\6587\4EF6\8FC1\79FB')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:155:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(888001330000000141)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(888001330000000002)
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
end;
/

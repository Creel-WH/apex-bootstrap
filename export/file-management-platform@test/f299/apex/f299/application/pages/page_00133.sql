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
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#APP_FILES#static/js/p133-file-library.js',
''))
,p_css_file_urls=>'#APP_FILES#static/vendor/remixicon/remixicon.css'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// P133 helpers are loaded from #APP_FILES#static/js/p133-file-library.js',
'function p133CanUploadCurrentFolder() {',
'    return Number($v(''P133_DISPLAY'') || 0) > 0 && Number($v(''P133_FILE_LEVEL'') || 0) !== 1;',
'}',
'',
'function p133CanCreateFolderCurrentFolder() {',
'    return Number($v(''P133_DISPLAY'') || 0) > 0;',
'}',
'',
'function p133ApplyUploadGuard() {',
'    var canCreateFolder = p133CanCreateFolderCurrentFolder();',
'    var canUpload = p133CanUploadCurrentFolder();',
'    $(''#btn_create_folder, [data-p133-action="create-folder"]'').css(''display'', canCreateFolder ? ''inline-flex'' : ''none'').prop(''disabled'', !canCreateFolder);',
'    $(''#btn_upload, [data-p133-action="upload"]'').css(''display'', canUpload ? ''inline-flex'' : ''none'').prop(''disabled'', !canUpload);',
'}',
'',
'function p133PatchPathbarRenderer() {',
'    window.p133RenderPathbar = function() {',
'        var pathText = typeof window.p133PathText === ''function'' ? window.p133PathText() : '''';',
'        var rootId = $v(''P133_ROOT_FOLDER_ID'');',
'        var parentId = $v(''P133_PARENT_FOLDER_ID'') || rootId;',
'        var parts = String(pathText || '''').split(''/'').filter(function(part) { return part; });',
'        var crumbs = [];',
'        var $bar = $(''#p133_titlebar_path'');',
'',
'        $(''#p133_pathbar'').remove();',
'',
'        if (!$bar.length) {',
'            return;',
'        }',
'',
'        try {',
'            crumbs = JSON.parse($v(''P133_BREADCRUMB_JSON'') || ''[]'');',
'        } catch (e) {',
'            crumbs = [];',
'        }',
'',
'        if (!$bar.data(''p133PathbarBound'')) {',
'            $bar.on(''click'', ''.p133-up'', function(event) {',
'                event.preventDefault();',
'                event.stopPropagation();',
'                var currentParentId = $v(''P133_PARENT_FOLDER_ID'') || rootId;',
'                var upId = $v(''P133_UP_FOLDER_ID'') || rootId;',
'                if (Number($v(''P133_FILE_LEVEL'') || 0) <= 1) {',
'                    if (typeof window.p133NavigateFolder === ''function'') { window.p133NavigateFolder(''''); }',
'                } else if (currentParentId && currentParentId !== rootId) {',
'                    if (typeof window.p133NavigateFolder === ''function'') { window.p133NavigateFolder(upId); }',
'                } else {',
'                    if (typeof window.p133NavigateFolder === ''function'') { window.p133NavigateFolder(''''); }',
'                }',
'            });',
'',
'            $bar.on(''click'', ''.p133-crumb'', function(event) {',
'                event.preventDefault();',
'                event.stopPropagation();',
'                if ($(this).hasClass(''p133-root'')) {',
'                    if (typeof window.p133NavigateFolder === ''function'') { window.p133NavigateFolder(''''); }',
'                    return;',
'                }',
'                var targetId = $(this).data(''folderId'');',
'                if (targetId && typeof window.p133NavigateFolder === ''function'') {',
'                    window.p133NavigateFolder(String(targetId));',
'                }',
'            });',
'',
'            $bar.data(''p133PathbarBound'', true);',
'        }',
'',
'        if (crumbs.length) {',
'            var childCrumbs = crumbs.map(function(crumb, index) {',
'                var label = apex.util.escapeHTML(crumb.name || ''/'');',
'                var id = apex.util.escapeHTML(String(crumb.id || ''''));',
'                var current = String(crumb.id || '''') === String(parentId || '''');',
'                var separator = ''<span class="p133-sep"><span class="fa fa-angle-right" aria-hidden="true"></span></span>'';',
'                return (index ? separator : '''') + ''<span class="p133-crumb'' + (current ? '' is-current'' : '''') + ''" data-folder-id="'' + id + ''">'' + label + ''</span>'';',
'            }).join('''');',
'            $bar.find(''.p133-crumbs'').html(childCrumbs);',
'        } else {',
unistr('            $bar.find(''.p133-crumbs'').html(''<span class="p133-crumb is-current" data-folder-id="'' + apex.util.escapeHTML(String(rootId || '''')) + ''">'' + apex.util.escapeHTML(parts.join('' / '') || pathText || ''\6587\4EF6\5E93'') + ''</span>'');'),
'        }',
'',
'        $bar.toggleClass(''is-root'', parentId === rootId);',
'    };',
'}',
'',
'function p133PatchUploadGuard() {',
'    if (window.p133UploadGuardPatched) {',
'        return;',
'    }',
'    window.p133UploadGuardPatched = true;',
'',
'    if (typeof window.p133UpdateToolbarState === ''function'') {',
'        var originalUpdateToolbarState = window.p133UpdateToolbarState;',
'        window.p133UpdateToolbarState = function() {',
'            var result = originalUpdateToolbarState.apply(this, arguments);',
'            p133ApplyUploadGuard();',
'            return result;',
'        };',
'    }',
'',
'    if (typeof window.p133RunActionImpl === ''function'') {',
'        var originalRunActionImpl = window.p133RunActionImpl;',
'        window.p133RunActionImpl = function(actionName) {',
'            if (actionName === ''upload'' && !p133CanUploadCurrentFolder()) {',
unistr('                alert(''\5F53\524D\76EE\5F55\4E0D\652F\6301\4E0A\4F20\6587\4EF6'');'),
'                return;',
'            }',
'            if (actionName === ''share'' || actionName === ''settings'') {',
'                var state = typeof p133EnsureValidSelection === ''function'' ? p133EnsureValidSelection() : { count: 0 };',
unistr('                if (!state.count) { alert(''\8BF7\9009\62E9\8981\64CD\4F5C\7684\6587\4EF6\6216\6587\4EF6\5939''); return; }'),
unistr('                if (state.count !== 1) { alert(''\8BE5\64CD\4F5C\4EC5\652F\6301\5355\9009''); return; }'),
'                if (!String($v(''P133_PARENT_FOLDER_ID'') || '''') && state.singleType === ''FOLDER'' && state.singleId) {',
'                    $s(''P133_ROOT_FOLDER_ID'', state.singleId);',
'                }',
'                if (typeof p133OpenPermissionDialog === ''function'') {',
'                    p133OpenPermissionDialog(state.singleId);',
'                    return;',
'                }',
'            }',
'            return originalRunActionImpl.apply(this, arguments);',
'        };',
'    }',
'',
'    if (typeof window.p133OpenPermissionDialog === ''function'') {',
'        window.p133OpenPermissionDialog = function(fileId) {',
'            var targetFileId = String(fileId || $v(''P133_FILE_ID'') || '''').trim();',
'',
'            if (!targetFileId) {',
unistr('                alert(''\8BF7\5148\9009\62E9\8981\8BBE\7F6E\6743\9650\7684\6587\4EF6\6216\6587\4EF6\5939'');'),
'                return;',
'            }',
'',
'            $s(''P133_FILE_ID'', targetFileId);',
'            if (typeof p133OpenActionUrl === ''function'') {',
'                p133OpenActionUrl(''SETTINGS'');',
'                return;',
'            }',
'        };',
'    }',
'',
'    if (typeof window.p133ActionSettingsSelectedImpl === ''function'') {',
'        window.p133ActionSettingsSelectedImpl = function() {',
'            var state = typeof p133RequireSelectedAction === ''function''',
'                ? p133RequireSelectedAction({ singleOnly: true, manageRequired: false })',
'                : null;',
'            if (state) {',
'                p133OpenPermissionDialog(state.singleId);',
'            }',
'        };',
'    }',
'',
'    if (typeof window.p133ActionShareSelectedImpl === ''function'') {',
'        window.p133ActionShareSelectedImpl = function() {',
'            var state = typeof p133RequireSelectedAction === ''function''',
'                ? p133RequireSelectedAction({ singleOnly: true, manageRequired: false })',
'                : null;',
'            if (state) {',
'                p133OpenPermissionDialog(state.singleId);',
'            }',
'        };',
'    }',
'}',
'',
'function p133ShowShareNotReady() {',
unistr('    apex.message.alert(''\5206\4EAB\529F\80FD\6682\672A\5F00\53D1'');'),
'}',
'',
'function p133OpenPreparedDialogUrl(targetUrl) {',
'    var nextUrl = String(targetUrl || '''').trim();',
'',
'    if (!nextUrl) {',
'        return;',
'    }',
'',
'    if (nextUrl.indexOf(''javascript:'') === 0) {',
'        window.eval(nextUrl.substring(11));',
'        return;',
'    }',
'',
'    apex.navigation.redirect(nextUrl);',
'}',
'',
'function p133OpenPermissionEntry(fileId) {',
'    var targetFileId = String(fileId || $v(''P133_FILE_ID'') || '''').trim();',
'',
'    if (!targetFileId) {',
unistr('        alert(''\8BF7\5148\9009\62E9\8981\8BBE\7F6E\6743\9650\7684\6587\4EF6\6216\6587\4EF6\5939'');'),
'        return;',
'    }',
'',
'    $s(''P133_FILE_ID'', targetFileId);',
'    apex.server.process(''P133_GET_ACTION_URL'', {',
'        x01: ''SETTINGS'',',
'        x02: targetFileId,',
'        pageItems: ''#P133_FILE_ID,#P133_ROOT_FOLDER_ID,#P133_PARENT_FOLDER_ID''',
'    }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (resp && resp.status === ''success'' && resp.url) {',
'                p133OpenPreparedDialogUrl(resp.url);',
'                return;',
'            }',
unistr('            apex.message.alert((resp && resp.message) || ''\64CD\4F5C\94FE\63A5\751F\6210\5931\8D25'');'),
'        },',
unistr('        error: function(jqXHR, textStatus, errorThrown) { apex.message.alert(errorThrown || textStatus || ''\64CD\4F5C\94FE\63A5\751F\6210\5931\8D25''); }'),
'    });',
'}',
'',
'function p133ReadSinglePermissionSelection() {',
'    var state = typeof window.p133GetSelectionState === ''function''',
'        ? window.p133GetSelectionState()',
'        : null;',
'',
'    if (!state || !state.count) {',
unistr('        alert(''\8BF7\9009\62E9\8981\64CD\4F5C\7684\6587\4EF6\6216\6587\4EF6\5939'');'),
'        return null;',
'    }',
'',
'    if (state.count !== 1) {',
unistr('        alert(''\8BE5\64CD\4F5C\4EC5\652F\6301\5355\9009'');'),
'        return null;',
'    }',
'',
'    return state;',
'}',
'',
'function p133BindPermissionToolbarButtons() {',
'    var settingsBtn = document.getElementById(''p133_btn_settings'');',
'    var shareBtn = document.getElementById(''p133_btn_share'');',
'',
'    if (settingsBtn) {',
'        if (!settingsBtn.p133PermissionInterceptBound) {',
'            settingsBtn.addEventListener(''click'', function(event) {',
'                if (event && typeof event.preventDefault === ''function'') {',
'                    event.preventDefault();',
'                }',
'                if (event && typeof event.stopImmediatePropagation === ''function'') {',
'                    event.stopImmediatePropagation();',
'                }',
'                if (event && typeof event.stopPropagation === ''function'') {',
'                    event.stopPropagation();',
'                }',
'                p133ActionSettingsSelected();',
'                return false;',
'            }, true);',
'            settingsBtn.p133PermissionInterceptBound = true;',
'        }',
'    }',
'',
'    if (shareBtn) {',
'        if (!shareBtn.p133PermissionInterceptBound) {',
'            shareBtn.addEventListener(''click'', function(event) {',
'            if (event && typeof event.preventDefault === ''function'') {',
'                event.preventDefault();',
'            }',
'                if (event && typeof event.stopImmediatePropagation === ''function'') {',
'                    event.stopImmediatePropagation();',
'                }',
'                if (event && typeof event.stopPropagation === ''function'') {',
'                    event.stopPropagation();',
'                }',
'                p133ActionShareSelected();',
'                return false;',
'            }, true);',
'            shareBtn.p133PermissionInterceptBound = true;',
'            }',
'    }',
'}',
'',
'function p133PatchPermissionEntryGuards() {',
'    if (typeof window.p133OpenPermissionDialog === ''function'') {',
'        window.p133OpenPermissionDialog = function(fileId) {',
'            p133OpenPermissionEntry(fileId);',
'        };',
'    }',
'',
'    if (typeof window.p133ActionSettingsSelectedImpl === ''function'') {',
'        window.p133ActionSettingsSelectedImpl = function() {',
'            var state = p133ReadSinglePermissionSelection();',
'            if (state) {',
'                p133OpenPermissionEntry(state.singleId);',
'            }',
'        };',
'    }',
'',
'    if (typeof window.p133ActionShareSelectedImpl === ''function'') {',
'        window.p133ActionShareSelectedImpl = function() {',
'            p133ShowShareNotReady();',
'        };',
'    }',
'}' 
))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p133InitialViewMode = sessionStorage.getItem(''p133:view_mode'');',
'if (p133InitialViewMode === ''grid'') {',
'    $s(''P133_CARDS_READY'', ''Y'');',
'}',
'p133PatchPathbarRenderer();',
'if (window.p133InitPage) { window.p133InitPage(); }',
'if (p133InitialViewMode === ''grid'') {',
'    window.setTimeout(function() {',
'        var cardsRegion = apex.region(''p133_cards'');',
'        if (cardsRegion) {',
'            cardsRegion.refresh();',
'        }',
'    }, 0);',
'}',
'p133PatchUploadGuard();',
'p133PatchPermissionEntryGuards();',
'p133BindPermissionToolbarButtons();',
'$(document).off(''change.p133uploadguard'').on(''change.p133uploadguard'', ''#P133_FILE_LEVEL, #P133_DISPLAY'', p133ApplyUploadGuard);',
'window.setTimeout(p133ApplyUploadGuard, 0);',
'window.setTimeout(p133BindPermissionToolbarButtons, 0);',
'window.setTimeout(p133PatchPermissionEntryGuards, 300);',
'window.setTimeout(p133BindPermissionToolbarButtons, 300);',
'window.setTimeout(p133PatchPermissionEntryGuards, 1200);',
'window.setTimeout(p133BindPermissionToolbarButtons, 1200);'
))
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
'.t-BreadcrumbRegion:not(#p133_titlebar) {',
'    display: none;',
'}',
'',
'#p133_titlebar {',
'    display: block;',
'    margin: 0 0 8px 0;',
'    background: transparent;',
'    border: 0;',
'}',
'',
'#p133_titlebar .t-BreadcrumbRegion-top {',
'    min-height: 0;',
'    padding: 0;',
'}',
'',
'#p133_titlebar .t-BreadcrumbRegion-body {',
'    min-width: 0;',
'    padding: 0;',
'}',
'',
'#p133_titlebar .t-BreadcrumbRegion-breadcrumb {',
'    display: block;',
'    margin: 0;',
'}',
'',
'#p133_titlebar .t-BreadcrumbRegion-title {',
'    display: none;',
'}',
'',
'#p133_titlebar .t-BreadcrumbRegion-buttons {',
'    display: none;',
'}',
'',
'#p133_toolbar {',
'    margin: 0 0 6px 0;',
'    width: 100%;',
'    clear: both;',
'    box-sizing: border-box;',
'    position: relative;',
'    z-index: 400;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-wrap,',
'#p133_toolbar .t-ButtonRegion-buttons,',
'#p133_toolbar .t-ButtonRegion-col,',
'#p133_toolbar .p133-selection-panel,',
'#p133_toolbar .p133-selection-actions,',
'#p133_toolbar .p133-selection-inline {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    flex-wrap: wrap;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-wrap {',
'    justify-content: space-between;',
'    padding: 0;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-col--left .t-ButtonRegion-buttons {',
'    gap: 12px;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-col--content {',
'    justify-content: flex-end;',
'    flex: 1;',
'    min-width: 0;',
'    gap: 8px;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-col--content > .t-ButtonRegion-buttons {',
'    order: 2;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-col--content > .t-ButtonRegion-buttons:empty {',
'    display: none;',
'}',
'',
'#p133_toolbar .t-ButtonRegion-col--right .t-ButtonRegion-buttons {',
'    justify-content: flex-end;',
'    gap: 0;',
'}',
'',
'#p133_toolbar .p133-toolbar-body {',
'    display: contents;',
'}',
'',
'#p133_toolbar .p133-selection-panel {',
'    display: none;',
'    order: 1;',
'    padding: 8px 14px;',
'    border: 1px solid #91d5ff;',
'    border-radius: 8px;',
'    background: linear-gradient(135deg, #e6f7ff 0%, #f7fbff 100%);',
'}',
'',
'#p133_toolbar .p133-selection-inline,',
'#p133_toolbar .p133-selection-actions {',
'    gap: 8px;',
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
'#p133_toolbar .t-Button.p133-toolbar-btn,',
'#p133_toolbar .t-Button.p133-control-btn,',
'#p133_toolbar .t-Button.p133-view-btn,',
'#p133_toolbar .p133-sort-trigger {',
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
'#p133_toolbar .t-Button.p133-control-btn,',
'#p133_toolbar .t-Button.p133-view-btn,',
'#p133_toolbar .p133-sort-trigger {',
'    min-width: 36px;',
'    padding: 0 12px;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-inline {',
'    min-height: 32px;',
'    padding: 0 10px;',
'    border-color: transparent;',
'    background: transparent;',
'    color: #0050b3;',
'}',
'',
'#p133_toolbar .t-Button.p133-selection-action {',
'    display: none;',
'}',
'',
'#p133_toolbar #btn_upload,',
'#p133_toolbar #btn_create_folder {',
'    display: none;',
'}',
'',
'#p133_toolbar #p133_btn_refresh {',
'    margin-left: 8px;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-danger {',
'    color: #ff4d4f;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-primary {',
'    border-color: #1890ff;',
'    background: #1890ff;',
'    color: #fff;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn:hover:not(:disabled),',
'#p133_toolbar .t-Button.p133-control-btn:hover:not(:disabled),',
'#p133_toolbar .t-Button.p133-view-btn:hover:not(:disabled),',
'#p133_toolbar .p133-sort-trigger:hover:not(:disabled),',
'#p133_titlebar_path button:hover:not(:disabled) {',
'    border-color: #1890ff;',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-inline:hover:not(:disabled) {',
'    border-color: transparent;',
'    background: rgba(24,144,255,0.12);',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-inline.is-danger:hover:not(:disabled) {',
'    background: rgba(255,77,79,0.10);',
'    color: #ff4d4f;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn.is-primary:hover:not(:disabled) {',
'    background: #40a9ff;',
'    color: #fff;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn:focus,',
'#p133_toolbar .t-Button.p133-toolbar-btn:focus-visible,',
'#p133_toolbar .t-Button.p133-control-btn:focus,',
'#p133_toolbar .t-Button.p133-control-btn:focus-visible,',
'#p133_toolbar .t-Button.p133-view-btn:focus,',
'#p133_toolbar .t-Button.p133-view-btn:focus-visible,',
'#p133_toolbar .p133-sort-trigger:focus,',
'#p133_toolbar .p133-sort-trigger:focus-visible,',
'#p133_titlebar_path button:focus,',
'#p133_titlebar_path button:focus-visible,',
'.p133-card-open:focus,',
'.p133-card-open:focus-visible,',
'.p133-card-checkbox:focus,',
'.p133-card-checkbox:focus-visible {',
'    outline: none;',
'    box-shadow: none;',
'}',
'',
'#p133_toolbar .t-Button.p133-toolbar-btn:disabled,',
'#p133_toolbar .t-Button.p133-control-btn:disabled,',
'#p133_toolbar .t-Button.p133-view-btn:disabled,',
'#p133_toolbar .p133-sort-trigger:disabled {',
'    cursor: not-allowed;',
'    opacity: .45;',
'}',
'',
'#p133_toolbar .t-Button.p133-view-btn.is-active {',
'    border-color: #1890ff;',
'    background: #e6f7ff;',
'    color: #1890ff;',
'}',
'',
'#p133_toolbar .p133-sort-box {',
'    position: relative;',
'    order: 3;',
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
'#p133_titlebar_path {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    position: relative;',
'    z-index: 2;',
'    min-height: 24px;',
'    margin: 0;',
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
'#p133_titlebar_path .p133-crumbs {',
'    display: flex;',
'    align-items: center;',
'    flex: 1;',
'    min-width: 0;',
'    color: #666;',
'    font-size: 13px;',
'    font-family: "Microsoft YaHei", "PingFang SC", Arial, sans-serif;',
'    white-space: nowrap;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'}',
'',
'#p133_titlebar_path button {',
'    min-width: 28px;',
'    height: 24px;',
'    padding: 0 4px;',
'    border: 0;',
'    background: transparent;',
'}',
'',
'#p133_titlebar_path .p133-up {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    flex: 0 0 auto;',
'    min-width: 24px;',
'    height: 24px;',
'    padding: 0 4px;',
'    color: #666;',
'}',
'',
'#p133_titlebar_path .p133-crumb {',
'    width: auto;',
'    max-width: 320px;',
'    padding: 0;',
'    border: 0;',
'    background: transparent;',
'    color: #1890ff;',
'    font: inherit;',
'    font-family: "Microsoft YaHei", "PingFang SC", Arial, sans-serif;',
'    text-decoration: none;',
'    cursor: pointer;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'    vertical-align: middle;',
'}',
'',
'#p133_titlebar_path .p133-crumb.is-current {',
'    color: #333;',
'    font-weight: 600;',
'    cursor: default;',
'}',
'',
'#p133_titlebar_path .p133-sep {',
'    color: #bfbfbf;',
'    display: inline-flex;',
'    align-items: center;',
'    margin: 0 4px;',
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
'#p133_cards .a-CardView-items,',
'#p133_cards .t-Cards {',
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
'#p133_cards .a-CardView-item,',
'#p133_cards .t-Cards-item {',
'    list-style: none;',
'}',
'',
'#p133_cards .a-CardView-card,',
'#p133_cards .t-Card {',
'    height: 100%;',
'    border: 0;',
'    background: transparent;',
'    box-shadow: none;',
'}',
'',
'#p133_cards .a-CardView-header,',
'#p133_cards .t-Card-header {',
'    display: none;',
'}',
'',
'#p133_cards .a-CardView-body,',
'#p133_cards .t-Card-body {',
'    padding: 0;',
'}',
'',
'.p133-card-body {',
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
'.p133-card-body:hover {',
'    border-color: #91d5ff;',
'    background: #fafafa;',
'}',
'',
'.p133-card-body.is-selected {',
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
'.p133-card-open .p133-doc-icon {',
'    width: 48px;',
'    height: 48px;',
'    border-radius: 10px;',
'    font-size: 26px;',
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
'.p133-card-menu-handle {',
'    position: absolute;',
'    right: 8px;',
'    top: 8px;',
'    z-index: 2;',
'    width: 24px;',
'    height: 24px;',
'    border: 0;',
'    border-radius: 6px;',
'    background: transparent;',
'    color: #64748b;',
'    cursor: pointer;',
'    box-shadow: none;',
'}',
'',
'.p133-card-menu-handle:hover,',
'.p133-card-menu-handle:focus {',
'    background: #eef6ff;',
'    color: #1677ff;',
'    outline: none;',
'}',
'',
'.p133-card-body.is-card-dragging,',
'.p133-card.is-card-dragging .p133-card-body,',
'#p133_cards .t-Cards-item.is-card-dragging .p133-card-body,',
'#p133_cards .a-CardView-item.is-card-dragging .p133-card-body {',
'    opacity: .45;',
'}',
'',
'.p133-card-drag-ghost {',
'    position: fixed !important;',
'    z-index: 9999;',
'    width: 150px;',
'    pointer-events: none;',
'    opacity: .82;',
'    transform: rotate(1deg);',
'}',
'',
'#p133_titlebar_path.is-root .p133-up {',
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
'.p133-doc-icon {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    flex-shrink: 0;',
'    width: 24px;',
'    height: 24px;',
'    border-radius: 6px;',
'    font-size: 15px;',
'    line-height: 1;',
'}',
'',
'.p133-doc-icon.word { background: #e6f7ff; color: #1890ff; }',
'.p133-doc-icon.pdf { background: #fff1f0; color: #ff4d4f; }',
'.p133-doc-icon.excel { background: #f6ffed; color: #52c41a; }',
'.p133-doc-icon.ppt { background: #fff7e6; color: #fa8c16; }',
'.p133-doc-icon.txt,',
'.p133-doc-icon.md,',
'.p133-doc-icon.zip,',
'.p133-doc-icon.other { background: #f5f5f5; color: #595959; }',
'.p133-doc-icon.image { background: #fff0f6; color: #eb2f96; }',
'.p133-doc-icon.video { background: #e6fffb; color: #13c2c2; }',
'.p133-doc-icon.audio { background: #fff7e6; color: #fa8c16; }',
'.p133-doc-icon.code { background: #f0f5ff; color: #722ed1; }',
'.p133-doc-icon.folder { background: #fffbe6; color: #faad14; }',
'',
'.p133-doc-icon i {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    line-height: 1;',
'}',
'',
'@media (max-width: 960px) {',
'    #p133_toolbar .t-ButtonRegion-wrap {',
'        align-items: flex-start;',
'        flex-direction: column;',
'    }',
'',
'    #p133_toolbar .t-ButtonRegion-col--content,',
'    #p133_toolbar .t-ButtonRegion-col--right {',
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
 p_id=>wwv_flow_imp.id(821088635529156930)
,p_plug_name=>unistr('\76EE\5F55\8DEF\5F84')
,p_region_name=>'p133_titlebar'
,p_region_css_classes=>'p133-titlebar'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--useRegionTitle'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>150
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div id="p133_titlebar_path" class="p133-titlebar-path"><button type="button" class="p133-up" title="\8FD4\56DE\4E0A\4E00\7EA7" aria-label="\8FD4\56DE\4E0A\4E00\7EA7"><span class="fa fa-arrow-up" aria-hidden="true"></span></button><div class="p133-crumbs"></div></div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(821088635529155495)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_name=>'p133_toolbar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>145
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="p133-toolbar-body">',
'  <div class="p133-selection-panel">',
'    <div class="p133-selection-inline">',
unistr('      <span class="p133-selection-count">\5DF2\9009\4E2D <span class="p133-selection-count-value">0</span> \9879</span>'),
'      <span class="p133-selection-divider" aria-hidden="true"></span>',
'    </div>',
'    <div class="p133-selection-actions"></div>',
'  </div>',
'  <div class="p133-sort-box">',
unistr('    <button type="button" class="p133-sort-trigger" title="\6392\5E8F\65B9\6848"><span class="p133-sort-label">\9ED8\8BA4</span><span class="fa fa-angle-down" aria-hidden="true"></span></button>'),
'    <div class="p133-sort-menu">',
unistr('      <div class="p133-sort-title">\89C4\5219\6392\5E8F</div>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="NAME_ASC">\6587\4EF6\540D</button>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="UPDATE_DESC">\66F4\65B0\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="UPDATE_ASC">\66F4\65B0\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="CREATION_DESC">\521B\5EFA\65F6\95F4\4ECE\8FD1\5230\8FDC</button>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="CREATION_ASC">\521B\5EFA\65F6\95F4\4ECE\8FDC\5230\8FD1</button>'),
unistr('      <button type="button" class="p133-sort-option" data-sort="MANUAL">\9ED8\8BA4</button>'),
'    </div>',
'  </div>',
'</div>'))
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
'WITH user_context AS (',
'    SELECT CASE',
'               WHEN REGEXP_LIKE(TRIM(V(''MPF_USER_ID'')), ''^\d+$'') THEN TO_NUMBER(TRIM(V(''MPF_USER_ID'')))',
'           END AS mpf_user_id_num,',
'           (SELECT MAX(ext_user_id)',
'              FROM fmp_user',
'             WHERE tenant_id = :USER_TENANT',
'               AND user_id = CASE',
'                                 WHEN REGEXP_LIKE(TRIM(V(''MPF_USER_ID'')), ''^\d+$'') THEN TO_NUMBER(TRIM(V(''MPF_USER_ID'')))',
'                             END',
'               AND NVL(del_flag, 0) = 0) AS ext_user_id,',
'           (SELECT MAX(union_id)',
'              FROM basic_ja_ding_user',
'             WHERE TO_CHAR(user_id) = TO_CHAR(:DIAN_USER_ID)',
'               AND NVL(tenant_id, :USER_TENANT) = :USER_TENANT',
'               AND NVL(is_leave, 0) = 0) AS union_id',
'      FROM dual',
'),',
'scope_subjects AS (',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)) AS range_type,',
'           CAST(TRIM(:DIAN_USER_ID) AS VARCHAR2(256 CHAR)) AS range_id',
'      FROM dual',
'     WHERE TRIM(:DIAN_USER_ID) IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(TRIM(V(''MPF_USER_ID'')) AS VARCHAR2(256 CHAR))',
'      FROM dual',
'     WHERE TRIM(V(''MPF_USER_ID'')) IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(ext_user_id AS VARCHAR2(256 CHAR))',
'      FROM user_context',
'     WHERE ext_user_id IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(union_id AS VARCHAR2(256 CHAR))',
'      FROM user_context',
'     WHERE union_id IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''DEPT'' AS VARCHAR2(10 CHAR)),',
'           CAST(TO_CHAR(du.dept_id) AS VARCHAR2(256 CHAR))',
'      FROM basic_ja_ding_dept_user du',
'     WHERE TO_CHAR(du.user_id) = TO_CHAR(:DIAN_USER_ID)',
'),',
'matching_scope AS (',
'    SELECT s.reference_type,',
'           s.reference_id,',
'           MAX(CASE WHEN TO_CHAR(s.permissions_type) = ''MANAGE'' THEN 1 ELSE 0 END) AS can_manage,',
'           1 AS can_open',
'      FROM fmp_scope s',
'      JOIN scope_subjects ss',
'        ON ss.range_type = CAST(s.range_type AS VARCHAR2(10 CHAR))',
'       AND ss.range_id = CAST(s.range_id AS VARCHAR2(256 CHAR))',
'     WHERE TO_CHAR(s.permissions_type) IN (''MANAGE'', ''VIEW_DOWN'', ''VIEW'')',
'     GROUP BY s.reference_type, s.reference_id',
'),',
'system_scope_access AS (',
'    SELECT NVL(MAX(can_open), 0) AS can_open',
'      FROM matching_scope',
'     WHERE reference_type = ''SYSTEM''',
'       AND TO_CHAR(reference_id) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'),',
'file_scope_refs AS (',
'    SELECT DISTINCT reference_id',
'      FROM fmp_scope',
'     WHERE reference_type = ''FILE''',
'),',
'base_files AS (',
'    SELECT *',
'      FROM fmp_p133_file_library_v',
'     WHERE tenant_id = :USER_TENANT',
'       AND system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'       AND del_flag = 0',
'       AND :P133_PARENT_FOLDER_ID IS NOT NULL',
'       AND parent_folder_id = :P133_PARENT_FOLDER_ID',
'),',
'ancestor_chain AS (',
'    SELECT CONNECT_BY_ROOT file_id AS target_file_id,',
'           file_id AS ancestor_file_id,',
'           is_permission_changes,',
'           LEVEL AS lvl',
'      FROM fmp_file',
'     WHERE tenant_id = :USER_TENANT',
'       AND NVL(del_flag, 0) = 0',
'     START WITH parent_folder_id = :P133_PARENT_FOLDER_ID',
'            AND tenant_id = :USER_TENANT',
'            AND system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'            AND NVL(del_flag, 0) = 0',
'   CONNECT BY PRIOR parent_folder_id = file_id',
'          AND tenant_id = :USER_TENANT',
'          AND NVL(del_flag, 0) = 0',
'),',
'effective_scope_targets AS (',
'    SELECT ac.target_file_id,',
'           ac.ancestor_file_id,',
'           ROW_NUMBER() OVER (PARTITION BY ac.target_file_id ORDER BY ac.lvl) AS rn',
'      FROM ancestor_chain ac',
'      LEFT JOIN file_scope_refs fsr',
'        ON fsr.reference_id = ac.ancestor_file_id',
'     WHERE (ac.lvl = 1 AND NVL(ac.is_permission_changes, 0) = 1)',
'        OR fsr.reference_id IS NOT NULL',
'),',
'effective_files AS (',
'    SELECT bf.file_id AS target_file_id,',
'           NVL(est.ancestor_file_id, bf.file_id) AS effective_file_id',
'      FROM base_files bf',
'      LEFT JOIN effective_scope_targets est',
'        ON est.target_file_id = bf.file_id',
'       AND est.rn = 1',
')',
'SELECT bf.file_id,',
'       bf.root_folder_id,',
'       bf.parent_folder_id,',
'       bf.file_name,',
'       bf.file_display_name,',
'       bf.card_display_name,',
'       bf.file_format,',
'       ROW_NUMBER() OVER (ORDER BY NVL(bf.sort_num_value, 999999999), bf.file_id) AS sort_num,',
'       bf.file_type,',
'       bf.type_label,',
'       bf.icon_type,',
'       bf.icon_class,',
'       bf.updated_by_display AS updated_by,',
'       bf.update_date,',
'       bf.scope_type,',
'       bf.file_version_tag,',
'       '''' AS operate,',
'       bf.is_hide,',
'       bf.is_file_type,',
'       CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN 1',
'           WHEN NVL(ms.can_manage, 0) = 1 THEN 1',
'           ELSE 0',
'       END AS is_permissions,',
'       CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'', ''VIEW_REPORT'') THEN 1',
'           WHEN TO_CHAR(bf.scope_type) IN (''VIEW_DOWN'', ''VIEW'') THEN 1',
'           WHEN ssa.can_open = 1 THEN 1',
'           WHEN NVL(os.can_open, 0) = 1 THEN 1',
'           ELSE 0',
'       END AS can_open',
'  FROM base_files bf',
'  LEFT JOIN effective_files ef',
'    ON ef.target_file_id = bf.file_id',
'  LEFT JOIN matching_scope ms',
'    ON ms.reference_type = ''FILE''',
'   AND ms.reference_id = ef.effective_file_id',
'  LEFT JOIN matching_scope os',
'    ON os.reference_type = ''FILE''',
'   AND os.reference_id = bf.file_id',
' CROSS JOIN system_scope_access ssa',
' ORDER BY CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN 0',
'              WHEN bf.file_type = ''FOLDER'' THEN 0',
'              ELSE 1',
'          END,',
'          CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN NVL(bf.sort_num_value, 999999999)',
'          END ASC,',
'          CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''NAME_ASC'' THEN LOWER(bf.file_name)',
'          END ASC,',
'          CASE',
'              WHEN :P133_SORT_BY = ''UPDATE_DESC'' THEN bf.update_date',
'          END DESC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''UPDATE_ASC'' THEN bf.update_date',
'          END ASC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''CREATION_DESC'' THEN bf.creation_date',
'          END DESC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''CREATION_ASC'' THEN bf.creation_date',
'          END ASC NULLS LAST,',
'          LOWER(bf.file_name),',
'          bf.file_id'))
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
    '	<a href="javascript:void(0)" class="p133-file-name p133-file-open p133-file-type-&FILE_TYPE." data-file-id="&FILE_ID." data-file-type="&FILE_TYPE." title="&FILE_NAME!ATTR.">',
    '      <span class="p133-file-label">',
    '        <span class="p133-doc-icon &ICON_TYPE." aria-hidden="true"><i class="&ICON_CLASS."></i></span>',
    '		  <span>&FILE_DISPLAY_NAME!HTML.</span>',
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
 p_id=>wwv_flow_imp.id(821088635529156931)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>61
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
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
 p_id=>wwv_flow_imp.id(821088635529156912)
,p_name=>'ICON_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>95
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
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
 p_id=>wwv_flow_imp.id(821088635529158201)
,p_plug_name=>unistr('\7F51\683C\89C6\56FE')
,p_region_name=>'p133_cards'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>175
,p_lazy_loading=>true
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH user_context AS (',
'    SELECT CASE',
'               WHEN REGEXP_LIKE(TRIM(V(''MPF_USER_ID'')), ''^\d+$'') THEN TO_NUMBER(TRIM(V(''MPF_USER_ID'')))',
'           END AS mpf_user_id_num,',
'           (SELECT MAX(ext_user_id)',
'              FROM fmp_user',
'             WHERE tenant_id = :USER_TENANT',
'               AND user_id = CASE',
'                                 WHEN REGEXP_LIKE(TRIM(V(''MPF_USER_ID'')), ''^\d+$'') THEN TO_NUMBER(TRIM(V(''MPF_USER_ID'')))',
'                             END',
'               AND NVL(del_flag, 0) = 0) AS ext_user_id,',
'           (SELECT MAX(union_id)',
'              FROM basic_ja_ding_user',
'             WHERE TO_CHAR(user_id) = TO_CHAR(:DIAN_USER_ID)',
'               AND NVL(tenant_id, :USER_TENANT) = :USER_TENANT',
'               AND NVL(is_leave, 0) = 0) AS union_id',
'      FROM dual',
'),',
'scope_subjects AS (',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)) AS range_type,',
'           CAST(TRIM(:DIAN_USER_ID) AS VARCHAR2(256 CHAR)) AS range_id',
'      FROM dual',
'     WHERE TRIM(:DIAN_USER_ID) IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(TRIM(V(''MPF_USER_ID'')) AS VARCHAR2(256 CHAR))',
'      FROM dual',
'     WHERE TRIM(V(''MPF_USER_ID'')) IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(ext_user_id AS VARCHAR2(256 CHAR))',
'      FROM user_context',
'     WHERE ext_user_id IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''USER'' AS VARCHAR2(10 CHAR)),',
'           CAST(union_id AS VARCHAR2(256 CHAR))',
'      FROM user_context',
'     WHERE union_id IS NOT NULL',
'    UNION ALL',
'    SELECT CAST(''DEPT'' AS VARCHAR2(10 CHAR)),',
'           CAST(TO_CHAR(du.dept_id) AS VARCHAR2(256 CHAR))',
'      FROM basic_ja_ding_dept_user du',
'     WHERE TO_CHAR(du.user_id) = TO_CHAR(:DIAN_USER_ID)',
'),',
'matching_scope AS (',
'    SELECT s.reference_type,',
'           s.reference_id,',
'           MAX(CASE WHEN TO_CHAR(s.permissions_type) = ''MANAGE'' THEN 1 ELSE 0 END) AS can_manage,',
'           1 AS can_open',
'      FROM fmp_scope s',
'      JOIN scope_subjects ss',
'        ON ss.range_type = CAST(s.range_type AS VARCHAR2(10 CHAR))',
'       AND ss.range_id = CAST(s.range_id AS VARCHAR2(256 CHAR))',
'     WHERE TO_CHAR(s.permissions_type) IN (''MANAGE'', ''VIEW_DOWN'', ''VIEW'')',
'     GROUP BY s.reference_type, s.reference_id',
'),',
'system_scope_access AS (',
'    SELECT NVL(MAX(can_open), 0) AS can_open',
'      FROM matching_scope',
'     WHERE reference_type = ''SYSTEM''',
'       AND TO_CHAR(reference_id) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'),',
'file_scope_refs AS (',
'    SELECT DISTINCT reference_id',
'      FROM fmp_scope',
'     WHERE reference_type = ''FILE''',
'),',
'base_files AS (',
'    SELECT *',
'      FROM fmp_p133_file_library_v',
'     WHERE tenant_id = :USER_TENANT',
'       AND system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'       AND del_flag = 0',
'       AND :P133_PARENT_FOLDER_ID IS NOT NULL',
'       AND :P133_CARDS_READY = ''Y''',
'       AND parent_folder_id = :P133_PARENT_FOLDER_ID',
'),',
'ancestor_chain AS (',
'    SELECT CONNECT_BY_ROOT file_id AS target_file_id,',
'           file_id AS ancestor_file_id,',
'           is_permission_changes,',
'           LEVEL AS lvl',
'      FROM fmp_file',
'     WHERE tenant_id = :USER_TENANT',
'       AND NVL(del_flag, 0) = 0',
'     START WITH parent_folder_id = :P133_PARENT_FOLDER_ID',
'            AND tenant_id = :USER_TENANT',
'            AND system_id = TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'            AND NVL(del_flag, 0) = 0',
'   CONNECT BY PRIOR parent_folder_id = file_id',
'          AND tenant_id = :USER_TENANT',
'          AND NVL(del_flag, 0) = 0',
'),',
'effective_scope_targets AS (',
'    SELECT ac.target_file_id,',
'           ac.ancestor_file_id,',
'           ROW_NUMBER() OVER (PARTITION BY ac.target_file_id ORDER BY ac.lvl) AS rn',
'      FROM ancestor_chain ac',
'      LEFT JOIN file_scope_refs fsr',
'        ON fsr.reference_id = ac.ancestor_file_id',
'     WHERE (ac.lvl = 1 AND NVL(ac.is_permission_changes, 0) = 1)',
'        OR fsr.reference_id IS NOT NULL',
'),',
'effective_files AS (',
'    SELECT bf.file_id AS target_file_id,',
'           NVL(est.ancestor_file_id, bf.file_id) AS effective_file_id',
'      FROM base_files bf',
'      LEFT JOIN effective_scope_targets est',
'        ON est.target_file_id = bf.file_id',
'       AND est.rn = 1',
')',
'SELECT bf.file_id,',
'       bf.root_folder_id,',
'       bf.parent_folder_id,',
'       bf.file_name,',
'       bf.file_display_name,',
'       bf.card_display_name,',
'       bf.file_format,',
'       ROW_NUMBER() OVER (ORDER BY NVL(bf.sort_num_value, 999999999), bf.file_id) AS sort_num,',
'       bf.file_type,',
'       bf.type_label,',
'       bf.icon_type,',
'       bf.icon_class,',
'       bf.updated_by_display AS updated_by,',
'       bf.update_date,',
'       bf.scope_type,',
'       bf.file_version_tag,',
'       '''' AS operate,',
'       bf.is_hide,',
'       bf.is_file_type,',
'       CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN 1',
'           WHEN NVL(ms.can_manage, 0) = 1 THEN 1',
'           ELSE 0',
'       END AS is_permissions,',
'       CASE',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'', ''VIEW_REPORT'') THEN 1',
'           WHEN TO_CHAR(bf.scope_type) IN (''VIEW_DOWN'', ''VIEW'') THEN 1',
'           WHEN ssa.can_open = 1 THEN 1',
'           WHEN NVL(os.can_open, 0) = 1 THEN 1',
'           ELSE 0',
'       END AS can_open',
'  FROM base_files bf',
'  LEFT JOIN effective_files ef',
'    ON ef.target_file_id = bf.file_id',
'  LEFT JOIN matching_scope ms',
'    ON ms.reference_type = ''FILE''',
'   AND ms.reference_id = ef.effective_file_id',
'  LEFT JOIN matching_scope os',
'    ON os.reference_type = ''FILE''',
'   AND os.reference_id = bf.file_id',
' CROSS JOIN system_scope_access ssa',
' ORDER BY CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN 0',
'              WHEN bf.file_type = ''FOLDER'' THEN 0',
'              ELSE 1',
'          END,',
'          CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''MANUAL'' THEN NVL(bf.sort_num_value, 999999999)',
'          END ASC,',
'          CASE',
'              WHEN NVL(:P133_SORT_BY, ''MANUAL'') = ''NAME_ASC'' THEN LOWER(bf.file_name)',
'          END ASC,',
'          CASE',
'              WHEN :P133_SORT_BY = ''UPDATE_DESC'' THEN bf.update_date',
'          END DESC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''UPDATE_ASC'' THEN bf.update_date',
'          END ASC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''CREATION_DESC'' THEN bf.creation_date',
'          END DESC NULLS LAST,',
'          CASE',
'              WHEN :P133_SORT_BY = ''CREATION_ASC'' THEN bf.creation_date',
'          END ASC NULLS LAST,',
'          LOWER(bf.file_name),',
'          bf.file_id'))

,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P133_PARENT_FOLDER_ID,P133_SORT_BY,P133_CARDS_READY'
,p_plug_query_num_rows=>40
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(821088635529158202)
,p_region_id=>wwv_flow_imp.id(821088635529158201)
,p_layout_type=>'GRID'
,p_component_css_classes=>'p133-cards-component'
,p_card_css_classes=>'p133-card'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="p133-card-body" data-file-id="&FILE_ID!ATTR." data-file-type="&FILE_TYPE!ATTR." data-can-manage="&IS_PERMISSIONS!ATTR." data-can-open="&CAN_OPEN!ATTR." data-file-name="&FILE_NAME!ATTR." data-display-name="&CARD_DISPLAY_NAME!ATTR." data-icon-type="&ICON_TYPE!ATTR." data-icon-class="&ICON_CLASS!ATTR.">',
'  <label class="p133-card-check" aria-label="&#36873;&#25321; &FILE_NAME!ATTR."><input type="checkbox" class="p133-card-checkbox" data-file-id="&FILE_ID!ATTR." data-file-type="&FILE_TYPE!ATTR."></label>',
'  <button type="button" class="p133-card-menu-handle" data-file-id="&FILE_ID!ATTR." data-file-type="&FILE_TYPE!ATTR." data-can-manage="&IS_PERMISSIONS!ATTR." title="&#26356;&#22810;&#25805;&#20316;" aria-label="&#26356;&#22810;&#25805;&#20316;"><span class="fa fa-ellipsis-v" aria-hidden="true"></span></button>',
'  <button type="button" class="p133-card-open" data-file-id="&FILE_ID!ATTR." data-file-type="&FILE_TYPE!ATTR." data-can-open="&CAN_OPEN!ATTR.">',
'    <span class="p133-doc-icon &ICON_TYPE!ATTR." aria-hidden="true"><i class="&ICON_CLASS!ATTR."></i></span>',
'    <span class="p133-card-name" title="&FILE_NAME!ATTR.">&CARD_DISPLAY_NAME!HTML.</span>',
'  </button>',
'</div>'))
,p_pk1_column_name=>'FILE_ID'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_static_id=>'btn_create_folder'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5939')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn'
,p_icon_css_classes=>'fa-folder-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529155551)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_static_id=>'btn_upload'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-primary'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157003)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_SHARE'
,p_button_static_id=>'p133_btn_share'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\5206\4EAB')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-inline p133-selection-action'
,p_icon_css_classes=>'fa-share-alt'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157004)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_RENAME'
,p_button_static_id=>'p133_btn_rename'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\91CD\547D\540D')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-inline p133-selection-action'
,p_icon_css_classes=>'fa-pencil'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157005)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_MOVE'
,p_button_static_id=>'p133_btn_move'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\79FB\52A8\5230...')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-inline p133-selection-action'
,p_icon_css_classes=>'fa-exchange'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157006)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_SETTINGS'
,p_button_static_id=>'p133_btn_settings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-inline p133-selection-action'
,p_icon_css_classes=>'fa-lock'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157007)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_DELETE'
,p_button_static_id=>'p133_btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-toolbar-btn is-inline is-danger p133-selection-action'
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157008)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_VIEW_LIST'
,p_button_static_id=>'p133_btn_view_list'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillStart'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\5217\8868\89C6\56FE')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-view-btn'
,p_icon_css_classes=>'fa-list'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157009)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_VIEW_GRID'
,p_button_static_id=>'p133_btn_view_grid'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\7F51\683C\89C6\56FE')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-view-btn'
,p_icon_css_classes=>'fa-th-large'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(821088635529157010)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(821088635529155495)
,p_button_name=>'P133_BTN_REFRESH'
,p_button_static_id=>'p133_btn_refresh'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760158496296264297)
,p_button_image_alt=>unistr('\5237\65B0\5F53\524D\76EE\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p133-control-btn p133-refresh'
,p_icon_css_classes=>'fa-refresh'
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
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(821088635529155570)
,p_name=>'P133_PARENT_FOLDER_ID'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
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
 p_id=>wwv_flow_imp.id(821088635529158260)
,p_name=>'P133_CARDS_READY'
,p_item_sequence=>350
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
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
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P133_FILE_PATH,P133_FILE_LEVEL,P133_FILE_NAME,P133_UP_FOLDER_ID,P133_BREADCRUMB_JSON,P133_DISPLAY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILE_PATH,FILE_LEVEL,FILE_NAME,NVL(PARENT_FOLDER_ID,FILE_ID),',
'       (SELECT JSON_ARRAYAGG(JSON_OBJECT(''id'' VALUE FILE_ID, ''name'' VALUE FILE_NAME) ORDER BY FILE_LEVEL RETURNING VARCHAR2(4000))',
'          FROM (SELECT FILE_ID, FILE_NAME, FILE_LEVEL',
'                  FROM FMP_FILE',
'                 WHERE TENANT_ID = :USER_TENANT',
'                 START WITH FILE_ID = :P133_PARENT_FOLDER_ID',
'               CONNECT BY PRIOR PARENT_FOLDER_ID = FILE_ID)),',
'       fmp_is_file_manager(FILE_ID, :USER_TENANT, V(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE)',
'FROM FMP_FILE',
'WHERE FILE_ID =:P133_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P133_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155597)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P133_FILE_LEVEL'')>1){',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_PATH'')+''/''+$v(''P133_FILE_NAME''))',
'}else{',
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_NAME''))',
'}',
'p133RenderPathbar();'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155594)
,p_event_id=>wwv_flow_imp.id(821088635529155582)
,p_event_result=>'TRUE'
,p_action_sequence=>50
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
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(821088635529155550)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529155606)
,p_event_id=>wwv_flow_imp.id(821088635529155585)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
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
 p_id=>wwv_flow_imp.id(821088635529157101)
,p_name=>'P133_ACTION_SHARE'
,p_event_sequence=>61
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157003)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157102)
,p_event_id=>wwv_flow_imp.id(821088635529157101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133ActionShareSelected();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157103)
,p_name=>'P133_ACTION_RENAME'
,p_event_sequence=>62
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157004)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157104)
,p_event_id=>wwv_flow_imp.id(821088635529157103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133ActionRenameSelected();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157105)
,p_name=>'P133_ACTION_MOVE'
,p_event_sequence=>63
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157005)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157106)
,p_event_id=>wwv_flow_imp.id(821088635529157105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133ActionMoveSelected();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157107)
,p_name=>'P133_ACTION_SETTINGS'
,p_event_sequence=>64
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157006)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157108)
,p_event_id=>wwv_flow_imp.id(821088635529157107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133ActionSettingsSelected();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157109)
,p_name=>'P133_ACTION_DELETE'
,p_event_sequence=>65
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157007)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157110)
,p_event_id=>wwv_flow_imp.id(821088635529157109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p133ActionDeleteSelected();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157111)
,p_name=>'P133_VIEW_LIST'
,p_event_sequence=>66
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157008)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157112)
,p_event_id=>wwv_flow_imp.id(821088635529157111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sessionStorage.setItem(''p133:view_mode'', ''list'');',
'if (window.p133SyncView) { window.p133SyncView(); }',
'else if (window.p133SyncViewImpl) { window.p133SyncViewImpl(); }'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157113)
,p_name=>'P133_VIEW_GRID'
,p_event_sequence=>67
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157009)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157114)
,p_event_id=>wwv_flow_imp.id(821088635529157113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'sessionStorage.setItem(''p133:view_mode'', ''grid'');',
'var shouldRefreshCards = $v(''P133_CARDS_READY'') !== ''Y'';',
'$s(''P133_CARDS_READY'', ''Y'');',
'if (window.p133SyncView) { window.p133SyncView(); }',
'else if (window.p133SyncViewImpl) { window.p133SyncViewImpl(); }',
'if (shouldRefreshCards) {',
'    var cardsRegion = apex.region(''p133_cards'');',
'    if (cardsRegion) {',
'        cardsRegion.refresh();',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157115)
,p_name=>'P133_REFRESH_LIST_VIEW'
,p_event_sequence=>68
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157010)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'p133ReadViewMode() === ''list'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157116)
,p_event_id=>wwv_flow_imp.id(821088635529157115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529155496)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(821088635529157117)
,p_name=>'P133_REFRESH_GRID_VIEW'
,p_event_sequence=>69
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(821088635529157010)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'p133ReadViewMode() === ''grid'''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(821088635529157118)
,p_event_id=>wwv_flow_imp.id(821088635529157117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(821088635529158201)
,p_attribute_01=>'N'
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
,p_attribute_01=>'p133HandleIgSelectionChange(this.data);'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(821088635529158601)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P133_INIT_ROOT_FOLDER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_system_id number := to_number(nullif(coalesce(:P0_SYSTEM_SWITCH, :SYSTEM_ID), ''''));',
'    l_user_id   number := to_number(nullif(v(''USER_ID''), ''''));',
'    l_root_id   number;',
'    l_display   number := 0;',
'begin',
'    if l_system_id is null and :P133_PARENT_FOLDER_ID is not null then',
'        begin',
'            select system_id',
'              into l_system_id',
'              from fmp_file',
'             where file_id = :P133_PARENT_FOLDER_ID',
'               and tenant_id = :USER_TENANT',
'               and nvl(del_flag, 0) = 0;',
'        exception',
'            when no_data_found then',
'                null;',
'        end;',
'    end if;',
'',
'    if l_system_id is not null then',
'        apex_util.set_session_state(''SYSTEM_ID'', l_system_id);',
'        apex_util.set_session_state(''P0_SYSTEM_SWITCH'', l_system_id);',
'    end if;',
'',
'    if :P133_PARENT_FOLDER_ID is null then',
'        if l_system_id is null and l_user_id is not null then',
'            begin',
'                select x.system_id',
'                  into l_system_id',
'                  from (',
'                        select fu.last_system_id as system_id',
'                          from fmp_user fu',
'                          join fmp_system s',
'                            on s.system_id = fu.last_system_id',
'                           and nvl(s.is_enable, 1) = 1',
'                           and nvl(s.del_flag, 0) = 0',
'                         where fu.tenant_id = :USER_TENANT',
'                           and fu.user_id = l_user_id',
'                           and nvl(fu.del_flag, 0) = 0',
'                           and fu.last_system_id is not null',
'                         order by fu.update_date desc, fu.user_id desc',
'                  ) x',
'                 where rownum = 1;',
'            exception',
'                when no_data_found then',
'                    null;',
'            end;',
'        end if;',
'',
'        if l_system_id is null then',
'            select min(system_id)',
'              into l_system_id',
'              from fmp_system',
'             where nvl(is_enable, 1) = 1',
'               and nvl(del_flag, 0) = 0;',
'        end if;',
'',
'        select coalesce(',
'                   (',
'                       select f.file_id',
'                         from fmp_file f',
'                        where f.file_id = s.root_folder_file_id',
'                          and f.tenant_id = :USER_TENANT',
'                          and nvl(f.del_flag, 0) = 0',
'                   ),',
'                   (',
'                       select min(f.file_id)',
'                         from fmp_file f',
'                        where f.tenant_id = :USER_TENANT',
'                          and f.system_id = s.system_id',
'                          and f.file_type = ''FOLDER''',
'                          and f.parent_folder_id is null',
'                          and nvl(f.del_flag, 0) = 0',
'                   )',
'               )',
'          into l_root_id',
'          from fmp_system s',
'         where s.system_id = l_system_id',
'           and nvl(s.del_flag, 0) = 0',
'           and nvl(s.is_enable, 1) = 1;',
'',
'        if l_root_id is not null then',
'            apex_util.set_session_state(''SYSTEM_ID'', l_system_id);',
'            apex_util.set_session_state(''P0_SYSTEM_SWITCH'', l_system_id);',
'            apex_util.set_session_state(''P133_ROOT_FOLDER_ID'', l_root_id);',
'            apex_util.set_session_state(''P133_PARENT_FOLDER_ID'', l_root_id);',
'            apex_util.set_session_state(''P133_FILE_ID'', l_root_id);',
'            apex_util.set_session_state(''P133_FILE_TYPE'', ''FOLDER'');',
'        end if;',
'    end if;',
'',
'    if :P133_PARENT_FOLDER_ID is not null then',
'        select file_path,',
'               file_level,',
'               file_name,',
'               nvl(parent_folder_id, file_id),',
'               (select json_arrayagg(json_object(''id'' value file_id, ''name'' value file_name) order by file_level returning varchar2(4000))',
'                  from (select file_id, file_name, file_level',
'                          from fmp_file',
'                         where tenant_id = :USER_TENANT',
'                         start with file_id = :P133_PARENT_FOLDER_ID',
'                       connect by prior parent_folder_id = file_id))',
'          into :P133_FILE_PATH,',
'               :P133_FILE_LEVEL,',
'               :P133_FILE_NAME,',
'               :P133_UP_FOLDER_ID,',
'               :P133_BREADCRUMB_JSON',
'          from fmp_file',
'         where file_id = :P133_PARENT_FOLDER_ID;',
'',
'        l_display := fmp_is_file_manager(:P133_PARENT_FOLDER_ID, :USER_TENANT, v(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE);',
'    else',
'        apex_util.set_session_state(''P133_BREADCRUMB_JSON'', ''[]'');',
'    end if;',
'',
'    apex_util.set_session_state(''P133_DISPLAY'', nvl(l_display, 0));',
'exception',
'    when no_data_found then',
'        apex_util.set_session_state(''P133_BREADCRUMB_JSON'', ''[]'');',
'        apex_util.set_session_state(''P133_DISPLAY'', 0);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>854544982764579316
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
'    select coalesce(',
'               (',
'                   select f.file_id',
'                     from fmp_file f',
'                    where f.file_id = s.root_folder_file_id',
'                      and f.tenant_id = :USER_TENANT',
'                      and nvl(f.del_flag, 0) = 0',
'               ),',
'               (',
'                   select min(f.file_id)',
'                     from fmp_file f',
'                    where f.tenant_id = :USER_TENANT',
'                      and f.system_id = s.system_id',
'                      and f.file_type = ''FOLDER''',
'                      and f.parent_folder_id is null',
'                      and nvl(f.del_flag, 0) = 0',
'               )',
'           )',
'      into v_root_id',
'      from fmp_system s',
'     where s.system_id = v_system_id',
'       and nvl(s.del_flag, 0) = 0',
'       and nvl(s.is_enable, 1) = 1;',
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
'    v_file_id  varchar2(32767) := nvl(nullif(apex_application.g_x02, ''''), nvl(:P133_FILE_ID, ''''));',
'    v_file_ids varchar2(32767) := nvl(nullif(apex_application.g_x03, ''''), nvl(:P133_FILE_IDS, ''''));',
'    v_root_id  varchar2(32767) := nvl(:P133_ROOT_FOLDER_ID, '''');',
'    v_parent_id varchar2(32767) := nvl(:P133_PARENT_FOLDER_ID, '''');',
'    v_url      varchar2(32767);',
'    v_err_msg  varchar2(4000);',
'begin',
'    if v_action = ''CREATE_FOLDER'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':134:'' || :APP_SESSION || ''::'' || :DEBUG || '':134:P134_PARENT_FOLDER_ID:'' || v_parent_id,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''UPLOAD'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':136:'' || :APP_SESSION || ''::'' || :DEBUG || '':136:P136_ROOT_FOLDER_ID,P136_PARENT_FOLDER_ID:'' || v_root_id || '','' || v_parent_id,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''RENAME'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':135:'' || :APP_SESSION || ''::'' || :DEBUG || '':135:P135_FILE_ID,P135_ROOT_FOLDER_ID:'' || v_file_id || '','' || v_root_id,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''PREVIEW'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':137:'' || :APP_SESSION || ''::'' || :DEBUG || '':137:P137_FILE_ID,P137_SOURCE_PAGE,P137_SOURCE_PARENT_FOLDER_ID:'' || v_file_id || '',133,'' || v_parent_id,',
'            p_plain_url => false',
'        );',
'    elsif v_action = ''MOVE'' then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':155:'' || :APP_SESSION || ''::'' || :DEBUG || '':155:P155_FILE_IDS:'' || v_file_ids,',
'            p_plain_url => false',
'        );',
'    elsif v_action in (''PERMISSION'', ''SHARE'', ''SETTINGS'') then',
'        v_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':156:'' || :APP_SESSION || ''::'' || :DEBUG || '':156:P156_FILE_ID,P156_ROOT_FOLDER_ID,P156_PARENT_FOLDER_ID:'' || v_file_id || '','' || v_root_id || '','' || v_parent_id,',
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

prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
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
 p_id=>149
,p_name=>unistr('\56DE\6536\7AD9')
,p_alias=>'RECYCLE_BIN'
,p_step_title=>unistr('\56DE\6536\7AD9')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3709714323410859806)
,p_css_file_urls=>'#APP_FILES#static/vendor/remixicon/remixicon.css'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var p149SelectedIds = [];',
'',
'function p149Region() {',
'    try {',
'        return apex.region(''content'');',
'    } catch (e) {',
'        return null;',
'    }',
'}',
'',
'function p149GridView() {',
'    var region = p149Region();',
'    if (!region || !region.widget) {',
'        return null;',
'    }',
'    try {',
'        return region.widget().interactiveGrid(''getViews'', ''grid'');',
'    } catch (e) {',
'        return null;',
'    }',
'}',
'',
'function p149CellValue(value) {',
'    if (value && typeof value === ''object'' && Object.prototype.hasOwnProperty.call(value, ''v'')) {',
'        return value.v;',
'    }',
'    return value;',
'}',
'',
'function p149SetSelectedIds(ids) {',
'    p149SelectedIds = (ids || []).map(function(id) {',
'        return String(id || '''').trim();',
'    }).filter(function(id) {',
'        return id !== '''';',
'    });',
'}',
'',
'function p149UpdateSelectionBar() {',
'    var panel = document.querySelector(''#p149_toolbar .p149-selection-panel'');',
'    var countNode = document.querySelector(''#p149_toolbar .p149-selection-count-value'');',
'    if (!panel || !countNode) {',
'        return;',
'    }',
'    countNode.textContent = String(p149SelectedIds.length);',
'    panel.style.display = p149SelectedIds.length > 0 ? ''flex'' : ''none'';',
'}',
'',
'function p149HandleSelection(data) {',
'    var view = p149GridView();',
'    var model = view && view.model;',
'    var selected = data && data.selectedRecords ? data.selectedRecords : [];',
'    var ids = [];',
'',
'    if (model) {',
'        selected.forEach(function(record) {',
'            var fileId = String(p149CellValue(model.getValue(record, ''FILE_ID'')) || '''').trim();',
'            if (fileId) {',
'                ids.push(fileId);',
'            }',
'        });',
'    }',
'',
'    p149SetSelectedIds(ids);',
'    p149UpdateSelectionBar();',
'}',
'',
'function p149ClearSelectionUi() {',
'    p149SetSelectedIds([]);',
'    p149UpdateSelectionBar();',
'}',
'',
'function p149Confirm(message, onConfirm) {',
'    if (window.confirm(message) && typeof onConfirm === ''function'') {',
'        onConfirm();',
'    }',
'}',
'',
'function p149Refresh(successMessage) {',
'    var region = p149Region();',
'    p149ClearSelectionUi();',
'    if (region) {',
'        region.refresh();',
'    }',
'',
'    if (successMessage) {',
'        p149ShowSuccess(successMessage);',
'    }',
'}',
'',
'function p149ShowSuccess(message) {',
'    apex.message.clearErrors();',
'    apex.message.showPageSuccess(message);',
'}',
'',
'function p149ShowError(message) {',
unistr('    apex.message.alert(message || ''\64CD\4F5C\5931\8D25'');'),
'}',
'',
'function p149CallProcess(processName, ids, successMessage) {',
'    apex.server.process(processName, {',
'        x01: (ids || []).join('','')',
'    }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (resp && resp.status === ''success'') {',
'                p149Refresh();',
unistr('                p149ShowSuccess(resp.message || successMessage || ''\64CD\4F5C\6210\529F'');'),
'                return;',
'            }',
unistr('            p149ShowError(resp && resp.message ? resp.message : ''\64CD\4F5C\5931\8D25'');'),
'        },',
'        error: function(jqXHR, textStatus, errorThrown) {',
unistr('            p149ShowError(errorThrown || textStatus || ''\64CD\4F5C\5931\8D25'');'),
'        }',
'    });',
'}',
'',
'function p149RestoreSelection(singleId) {',
'    var ids = singleId ? [String(singleId)] : p149SelectedIds.slice();',
'    if (!ids.length) {',
unistr('        p149ShowError(''\8BF7\5148\9009\62E9\8981\8FD8\539F\7684\6587\4EF6'');'),
'        return;',
'    }',
unistr('    p149Confirm(''\786E\5B9A\8981\8FD8\539F\9009\4E2D\7684\6587\4EF6\5417\FF1F'', function() {'),
unistr('        p149CallProcess(''P149_RESTORE_SELECTION'', ids, ''\8FD8\539F\6210\529F'');'),
'    });',
'}',
'',
'function p149PurgeSelection(singleId) {',
'    var ids = singleId ? [String(singleId)] : p149SelectedIds.slice();',
'    if (!ids.length) {',
unistr('        p149ShowError(''\8BF7\5148\9009\62E9\8981\5220\9664\7684\6587\4EF6'');'),
'        return;',
'    }',
unistr('    p149Confirm(''\786E\5B9A\8981\5F7B\5E95\5220\9664\9009\4E2D\7684\6587\4EF6\5417\FF1F\6B64\64CD\4F5C\4E0D\53EF\6062\590D\3002'', function() {'),
unistr('        p149CallProcess(''P149_PURGE_SELECTION'', ids, ''\5F7B\5E95\5220\9664\6210\529F'');'),
'    });',
'}',
'',
'function p149EmptyRecycleBin() {',
unistr('    p149Confirm(''\786E\5B9A\8981\6E05\7A7A\5F53\524D\56DE\6536\7AD9\5417\FF1F\6B64\64CD\4F5C\4E0D\53EF\6062\590D\3002'', function() {'),
'        apex.server.process(''P149_PURGE_ALL'', {}, {',
'            dataType: ''json'',',
'            success: function(resp) {',
'                if (resp && resp.status === ''success'') {',
'                    p149Refresh();',
unistr('                p149ShowSuccess(resp.message || ''\56DE\6536\7AD9\5DF2\6E05\7A7A'');'),
 '                    return;',
 '                }',
unistr('            p149ShowError(resp && resp.message ? resp.message : ''\64CD\4F5C\5931\8D25'');'),
 '            },',
 '            error: function(jqXHR, textStatus, errorThrown) {',
unistr('            p149ShowError(errorThrown || textStatus || ''\64CD\4F5C\5931\8D25'');'),
 '            }',
 '        });',
 '    });',
'}',
'',
'$(function() {',
'    $(''#content'').on(''interactivegridselectionchange'', function(event, data) {',
'        p149HandleSelection(data);',
'    });',
'    $(''#content'').on(''apexafterrefresh'', function() {',
'        p149ClearSelectionUi();',
'    });',
'    p149UpdateSelectionBar();',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'body,',
'.t-Body-content {',
'    background: #f3f6fa;',
'}',
'',
'#p149_toolbar {',
'    margin-bottom: 12px;',
'}',
'',
'#p149_toolbar .t-ButtonRegion-wrap,',
'#p149_toolbar .t-ButtonRegion-buttons,',
'#p149_toolbar .t-ButtonRegion-col,',
'#p149_toolbar .p149-toolbar-body,',
'#p149_toolbar .p149-selection-panel,',
'#p149_toolbar .p149-selection-actions {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    flex-wrap: wrap;',
'}',
'',
'#p149_toolbar .t-ButtonRegion-wrap {',
'    justify-content: space-between;',
'    padding: 0;',
'}',
'',
'#p149_toolbar .t-ButtonRegion-col--content {',
'    justify-content: flex-end;',
'    flex: 1;',
'}',
'',
'#p149_toolbar .t-ButtonRegion-col--content > .t-ButtonRegion-buttons {',
'    display: none;',
'}',
'',
'#p149_toolbar .p149-toolbar-body {',
'    width: 100%;',
'    justify-content: space-between;',
'}',
'',
'#p149_toolbar .p149-toolbar-left,',
'#p149_toolbar .p149-toolbar-right {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    flex-wrap: wrap;',
'}',
'',
'#p149_toolbar .p149-btn {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 6px;',
'    min-height: 36px;',
'    padding: 0 14px;',
'    border: 1px solid #d9d9d9;',
'    border-radius: 6px;',
'    background: #fff;',
'    color: #4a4a4a;',
'    cursor: pointer;',
'    font-size: 13px;',
'    transition: all .2s ease;',
'}',
'',
'#p149_toolbar .p149-btn:hover {',
'    border-color: #1677ff;',
'    color: #1677ff;',
'}',
'',
'#p149_toolbar .p149-btn.is-danger {',
'    border-color: #cb1100;',
'    background: #cb1100;',
'    color: #fff;',
'}',
'',
'#p149_toolbar .p149-btn.is-danger:hover {',
'    background: #a70e00;',
'    border-color: #a70e00;',
'    color: #fff;',
'}',
'',
'#p149_toolbar .p149-btn.is-inline {',
'    min-height: 32px;',
'    border-color: transparent;',
'    background: transparent;',
'    color: #1677ff;',
'    padding: 0 8px;',
'}',
'',
'#p149_toolbar .p149-btn.is-inline.is-danger {',
'    color: #cb1100;',
'}',
'',
'#p149_toolbar .p149-selection-panel {',
'    display: none;',
'    padding: 8px 12px;',
'    border: 1px solid #91d5ff;',
'    border-radius: 8px;',
'    background: linear-gradient(135deg, #e6f7ff 0%, #f7fbff 100%);',
'}',
'',
'#p149_toolbar .p149-selection-count {',
'    color: #0050b3;',
'    font-size: 13px;',
'    font-weight: 600;',
'}',
'',
'#p149_tip {',
'    margin-bottom: 16px;',
'}',
'',
'#p149_tip .t-Region-bodyWrap,',
'#p149_tip .t-Region-body {',
'    background: transparent;',
'}',
'',
'#p149_tip .p149-tip {',
'    display: flex;',
'    align-items: center;',
'    gap: 8px;',
'    color: #8c8c8c;',
'    font-size: 13px;',
'    line-height: 1.6;',
'}',
'',
'#content .a-GV-table td,',
'#content .a-GV-table th {',
'    vertical-align: middle;',
'}',
'',
'#content .a-GV-header {',
'    background: #fafafa;',
'}',
'',
'.p149-file-cell {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    min-width: 0;',
'}',
'',
'.p149-file-icon {',
'    width: 28px;',
'    height: 28px;',
'    border-radius: 4px;',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    font-size: 16px;',
'}',
'',
'.p149-file-icon.folder {',
'    background: #fff8e1;',
'    color: #f9a825;',
'}',
'',
'.p149-file-icon.word {',
'    background: #e6f0fa;',
'    color: #056ac8;',
'}',
'',
'.p149-file-icon.excel {',
'    background: #eef7ec;',
'    color: #388729;',
'}',
'',
'.p149-file-icon.pdf {',
'    background: #fdecea;',
'    color: #cb1100;',
'}',
'',
'.p149-file-icon.image {',
'    background: #fce4ec;',
'    color: #e91e63;',
'}',
'',
'.p149-file-icon.ppt {',
'    background: #fff1e6;',
'    color: #fa8c16;',
'}',
'',
'.p149-file-icon.video,',
'.p149-file-icon.audio,',
'.p149-file-icon.code,',
'.p149-file-icon.zip,',
'.p149-file-icon.other {',
'    background: #f0f2f5;',
'    color: #7f8c99;',
'}',
'',
'.p149-file-name {',
'    display: inline-block;',
'    max-width: 420px;',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'}',
'',
'.p149-days-danger {',
'    color: #ff4d4f;',
'}',
'',
'.p149-days-normal {',
'    color: #8c8c8c;',
'}',
'',
'.p149-row-actions {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 10px;',
'}',
'',
'.p149-row-link {',
'    border: 0;',
'    background: transparent;',
'    color: #1677ff;',
'    cursor: pointer;',
'    padding: 0;',
'    font-size: 12px;',
'}',
'',
'.p149-row-link.is-danger {',
'    color: #cb1100;',
'}',
'',
'@media (max-width: 768px) {',
'    #p149_toolbar .p149-toolbar-body {',
'        flex-direction: column;',
'        align-items: stretch;',
'    }',
'',
'    #p149_toolbar .p149-toolbar-left,',
'    #p149_toolbar .p149-toolbar-right {',
'        justify-content: space-between;',
'    }',
'',
'    .p149-file-name {',
'        max-width: 180px;',
'    }',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001490000000001)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_name=>'p149_toolbar'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="p149-toolbar-body">',
'  <div class="p149-toolbar-left">',
unistr('    <button type="button" class="p149-btn is-danger" onclick="p149EmptyRecycleBin()"><i class="ri-delete-bin-2-line" aria-hidden="true"></i><span>\6E05\7A7A\56DE\6536\7AD9</span></button>'),
'  </div>',
'  <div class="p149-toolbar-right">',
'    <div class="p149-selection-panel">',
unistr('      <span class="p149-selection-count">\5DF2\9009\4E2D <span class="p149-selection-count-value">0</span> \9879</span>'),
'      <div class="p149-selection-actions">',
unistr('        <button type="button" class="p149-btn is-inline" onclick="p149RestoreSelection()">\8FD8\539F</button>'),
unistr('        <button type="button" class="p149-btn is-inline is-danger" onclick="p149PurgeSelection()">\5F7B\5E95\5220\9664</button>'),
'      </div>',
'    </div>',
unistr('    <button type="button" class="p149-btn" onclick="p149Refresh(''\56DE\6536\7AD9\5DF2\5237\65B0'')" title="\5237\65B0"><i class="ri-refresh-line" aria-hidden="true"></i></button>'),
'  </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001490000000002)
,p_plug_name=>unistr('\63D0\793A')
,p_region_name=>'p149_tip'
,p_region_template_options=>'#DEFAULT#:t-Region--noBorder'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<div class="p149-tip"><i class="ri-information-line" aria-hidden="true"></i><span>\63D0\793A\FF1A\56DE\6536\7AD9\4E2D\7684\6587\4EF6\5C06\5728 120 \5929\540E\81EA\52A8\5220\9664\3002\60A8\53EF\4EE5\5C06\6587\4EF6\8FD8\539F\5230\539F\4F4D\7F6E\3002</span></div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001490000000003)
,p_plug_name=>unistr('\56DE\6536\7AD9\5217\8868')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select v.file_id,',
'       v.file_name,',
'       v.file_display_name,',
'       v.file_type,',
'       v.icon_type,',
'       v.icon_class,',
'       case',
'           when f.file_size is null then ''--''',
'           when f.file_size < 1024 then to_char(f.file_size) || '' B''',
'           when f.file_size < 1048576 then to_char(round(f.file_size / 1024, 1), ''FM999999990D0'') || '' KB''',
'           when f.file_size < 1073741824 then to_char(round(f.file_size / 1048576, 1), ''FM999999990D0'') || '' MB''',
'           else to_char(round(f.file_size / 1073741824, 1), ''FM999999990D0'') || '' GB''',
'       end as file_size_display,',
'       v.updated_by_display as deleted_by,',
'       greatest(0, 120 - trunc(sysdate - nvl(f.del_date, f.update_date))) as remaining_days,',
'       case',
'           when greatest(0, 120 - trunc(sysdate - nvl(f.del_date, f.update_date))) <= 7 then ''p149-days-danger''',
'           else ''p149-days-normal''',
'       end as remaining_days_class,',
'       to_char(nvl(f.del_date, f.update_date), ''YYYY-MM-DD'') as deleted_at_display,',
'       '''' as operate',
'  from fmp_p133_file_library_v v',
'  join fmp_file f',
'    on f.file_id = v.file_id',
' where v.tenant_id = :USER_TENANT',
'   and v.system_id = to_number(nvl(nullif(:SYSTEM_ID, ''''), ''1''))',
'   and v.del_flag = -1',
'   and (',
'       :ROLE_CODE in (''SYSTEM_ADMIN'', ''SUPER_ADMIN'')',
'       or fmp_is_file_manager(v.file_id, :USER_TENANT, v(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE) > 0',
'   )',
' order by nvl(f.del_date, f.update_date) desc, v.file_id desc'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'SYSTEM_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\56DE\6536\7AD9\5217\8868')
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
 p_id=>wwv_flow_imp.id(910001490000000004)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
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
 p_id=>wwv_flow_imp.id(910001490000000005)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
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
 p_id=>wwv_flow_imp.id(910001490000000006)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6\540D')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="p149-file-cell">',
    '  <span class="p149-file-icon &ICON_TYPE."><i class="&ICON_CLASS." aria-hidden="true"></i></span>',
    '  <span class="p149-file-name" title="&FILE_NAME.">&FILE_DISPLAY_NAME.</span>',
    '</div>')))).to_clob
,p_is_required=>false
,p_max_length=>500
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(910001490000000007)
,p_name=>'FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(910001490000000008)
,p_name=>'ICON_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_TYPE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(910001490000000009)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(910001490000000010)
,p_name=>'FILE_SIZE_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_SIZE_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5927\5C0F')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>30
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(910001490000000011)
,p_name=>'DELETED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETED_BY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5220\9664\4EBA')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(910001490000000012)
,p_name=>'REMAINING_DAYS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_DAYS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\5269\4F59\5929\6570')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>90
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span class="&REMAINING_DAYS_CLASS.">&REMAINING_DAYS. ' || unistr('\5929') || '</span>')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'EQ:NEQ:LT:LTE:GT:GTE'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001490000000013)
,p_name=>'REMAINING_DAYS_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMAINING_DAYS_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(910001490000000014)
,p_name=>'DELETED_AT_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DELETED_AT_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5220\9664\65F6\95F4')
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>110
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>10
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(910001490000000015)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="p149-row-actions">',
    '  <button type="button" class="p149-row-link" onclick="p149RestoreSelection(''&FILE_ID.'')">' || unistr('\8FD8\539F') || '</button>',
    '  <button type="button" class="p149-row-link is-danger" onclick="p149PurgeSelection(''&FILE_ID.'')">' || unistr('\5F7B\5E95\5220\9664') || '</button>',
    '</div>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001490000000016)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(910001490000000017)
,p_internal_uid=>625416275457430992
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>false
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(910001490000000018)
,p_interactive_grid_id=>wwv_flow_imp.id(910001490000000017)
,p_static_id=>'recycle-bin-primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>15
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(910001490000000019)
,p_report_id=>wwv_flow_imp.id(910001490000000018)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000020)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(910001490000000016)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>36
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000021)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(910001490000000006)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>420
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000022)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(910001490000000010)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000023)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(910001490000000011)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000024)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(910001490000000012)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000025)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(910001490000000014)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>110
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001490000000026)
,p_view_id=>wwv_flow_imp.id(910001490000000019)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(910001490000000015)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001490000000050)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P149_RESTORE_SELECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ids       varchar2(32767) := trim(apex_application.g_x01);',
'    l_row_count number := 0;',
'    l_blockers  varchar2(4000);',
'    l_err_msg   varchar2(4000);',
'begin',
'    if l_ids is null then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
unistr('        apex_json.write(''message'', ''\8BF7\9009\62E9\8981\8FD8\539F\7684\6587\4EF6'');'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    select listagg(file_name, '', '') within group(order by file_name)',
'      into l_blockers',
'      from (',
'            select distinct file_id, file_name',
'              from (',
'                    select file_id,',
'                           file_name,',
'                           del_flag,',
'                           level as lvl',
'                      from fmp_file',
'                     where tenant_id = :USER_TENANT',
'                     start with file_id in (select to_number(data_val) from ja_utils_pkg.split_str(l_ids, '',''))',
'                   connect by prior parent_folder_id = file_id',
'              )',
'             where lvl > 1',
'               and del_flag = -1',
'               and file_id not in (select to_number(data_val) from ja_utils_pkg.split_str(l_ids, '',''))',
'      );',
'',
'    if l_blockers is not null then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
unistr('        apex_json.write(''message'', ''\8BF7\5148\8FD8\539F\4EE5\4E0B\7236\6587\4EF6\5939\FF1A'' || l_blockers);'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    update fmp_file',
'       set del_flag    = 0,',
'           del_date    = null,',
'           updated_by  = :MPF_USER_ID,',
'           update_date = sysdate',
'     where tenant_id = :USER_TENANT',
'       and del_flag = -1',
'       and file_id in (',
'            select distinct file_id',
'              from fmp_file',
'             where tenant_id = :USER_TENANT',
'             start with file_id in (select to_number(data_val) from ja_utils_pkg.split_str(l_ids, '',''))',
'           connect by prior file_id = parent_folder_id',
'       );',
'',
'    l_row_count := sql%rowcount;',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
unistr('    apex_json.write(''message'', ''\6210\529F\8FD8\539F '' || l_row_count || '' \9879'');'),
'    apex_json.write(''rowCount'', l_row_count);',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        l_err_msg := sqlerrm || chr(10) || dbms_utility.format_error_backtrace;',
'        ja_write_log(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', l_err_msg, :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', substr(l_err_msg, 1, 2000));',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001490000000051)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P149_PURGE_SELECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_ids       varchar2(32767) := trim(apex_application.g_x01);',
'    l_row_count number := 0;',
'    l_err_msg   varchar2(4000);',
'begin',
'    if l_ids is null then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
unistr('        apex_json.write(''message'', ''\8BF7\9009\62E9\8981\5220\9664\7684\6587\4EF6'');'),
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    delete from fmp_scope',
'     where reference_type = ''FILE''',
'       and reference_id in (',
'            select distinct file_id',
'              from fmp_file',
'             where tenant_id = :USER_TENANT',
'             start with file_id in (select to_number(data_val) from ja_utils_pkg.split_str(l_ids, '',''))',
'           connect by prior file_id = parent_folder_id',
'       );',
'',
'    delete from fmp_file',
'     where tenant_id = :USER_TENANT',
'       and file_id in (',
'            select distinct file_id',
'              from fmp_file',
'             where tenant_id = :USER_TENANT',
'             start with file_id in (select to_number(data_val) from ja_utils_pkg.split_str(l_ids, '',''))',
'           connect by prior file_id = parent_folder_id',
'       );',
'',
'    l_row_count := sql%rowcount;',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
unistr('    apex_json.write(''message'', ''\6210\529F\5F7B\5E95\5220\9664 '' || l_row_count || '' \9879'');'),
'    apex_json.write(''rowCount'', l_row_count);',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        l_err_msg := sqlerrm || chr(10) || dbms_utility.format_error_backtrace;',
'        ja_write_log(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', l_err_msg, :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', substr(l_err_msg, 1, 2000));',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001490000000052)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P149_PURGE_ALL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_system_id number := to_number(nvl(nullif(:SYSTEM_ID, ''''), ''1''));',
'    l_target_ids sys.odcinumberlist := sys.odcinumberlist();',
'    l_row_count number := 0;',
'    l_err_msg   varchar2(4000);',
'begin',
'    select file_id',
'      bulk collect into l_target_ids',
'      from (',
'            select distinct file_id',
'              from fmp_file',
'             where tenant_id = :USER_TENANT',
'             start with file_id in (',
'                    select f.file_id',
'                      from fmp_file f',
'                     where f.tenant_id = :USER_TENANT',
'                       and f.system_id = l_system_id',
'                       and f.del_flag = -1',
'                       and (',
'                            :ROLE_CODE in (''SYSTEM_ADMIN'', ''SUPER_ADMIN'')',
'                            or fmp_is_file_manager(f.file_id, :USER_TENANT, v(''MPF_USER_ID''), :DIAN_USER_ID, :ROLE_CODE) > 0',
'                       )',
'             )',
'           connect by prior file_id = parent_folder_id',
'      );',
'',
'    if l_target_ids.count = 0 then',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''success'');',
unistr('        apex_json.write(''message'', ''\6210\529F\6E05\7A7A\56DE\6536\7AD9\FF0C\5171\5220\9664 0 \9879'');'),
'        apex_json.write(''rowCount'', 0);',
'        apex_json.close_object;',
'        return;',
'    end if;',
'',
'    delete from fmp_scope',
'     where reference_type = ''FILE''',
'       and reference_id in (select column_value from table(l_target_ids));',
'',
'    delete from fmp_file',
'     where tenant_id = :USER_TENANT',
'       and file_id in (select column_value from table(l_target_ids));',
'',
'    l_row_count := sql%rowcount;',
'    commit;',
'',
'    apex_json.open_object;',
'    apex_json.write(''status'', ''success'');',
unistr('    apex_json.write(''message'', ''\6210\529F\6E05\7A7A\56DE\6536\7AD9\FF0C\5171\5220\9664 '' || l_row_count || '' \9879'');'),
'    apex_json.write(''rowCount'', l_row_count);',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        l_err_msg := sqlerrm || chr(10) || dbms_utility.format_error_backtrace;',
'        ja_write_log(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', l_err_msg, :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'        apex_json.open_object;',
'        apex_json.write(''status'', ''error'');',
'        apex_json.write(''message'', substr(l_err_msg, 1, 2000));',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

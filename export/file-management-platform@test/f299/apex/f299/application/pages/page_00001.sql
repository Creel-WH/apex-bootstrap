prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>unistr('\4E3B\9875')
,p_alias=>'HOME'
,p_step_title=>unistr('\6587\4EF6\7BA1\7406\5E73\53F0')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9760302564294878734)
,p_css_file_urls=>'#APP_FILES#static/vendor/remixicon/remixicon.css'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function p1ShowSuccess(message) {',
'    if (message) {',
'        apex.message.showPageSuccess(message);',
'    }',
'}',
'',
'function p1CurrentFavoriteGroupId() {',
'    return String($v(''P1_FAVORITE_GROUP_ID'') || '''');',
'}',
'',
'function p1SyncFavoriteToolbar() {',
'    var hasGroup = !!p1CurrentFavoriteGroupId();',
'    $(''#P1_BTN_EDIT_GROUP, #P1_BTN_DELETE_GROUP'').prop(''disabled'', !hasGroup).toggleClass(''is-disabled'', !hasGroup);',
'}',
'',
'function p1RefreshHomeRegions() {',
'    [''p1_favorite_groups_rpt'', ''p1_favorite_files_rpt'', ''p1_shared_to_me_rpt'', ''p1_shared_by_me_rpt''].forEach(function(regionId) {',
'        var region = apex.region(regionId);',
'        if (region) {',
'            region.refresh();',
'        }',
'    });',
'    p1SyncFavoriteToolbar();',
'}',
'',
'function p1RefreshFavoriteRegions() {',
'    p1RefreshHomeRegions();',
'}',
'',
'function p1SelectFavoriteGroup(groupId) {',
'    $s(''P1_FAVORITE_GROUP_ID'', groupId || '''');',
'    p1RefreshFavoriteRegions();',
'}',
'',
'function p1ToggleFavorite(fileId, action, groupId) {',
'    apex.server.process(''P1_TOGGLE_FAVORITE'', {',
'        x01: fileId,',
'        x02: groupId || p1CurrentFavoriteGroupId(),',
'        x03: action',
'    }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (!resp || resp.code !== ''200'') {',
'                alert((resp && resp.message) || ''\64CD\4F5C\5931\8D25'');',
'                return;',
'            }',
'            p1ShowSuccess(resp.message);',
'            p1RefreshFavoriteRegions();',
'        },',
'        error: function() {',
'            alert(''\5173\6CE8\64CD\4F5C\5931\8D25'');',
'        }',
'    });',
'}',
'',
'function p1DeleteFavoriteGroup() {',
'    var groupId = p1CurrentFavoriteGroupId();',
'    if (!groupId) {',
'        return;',
'    }',
'    if (!confirm(''\786E\8BA4\5220\9664\5F53\524D\5173\6CE8\5206\7EC4\5417\FF1F'')) {',
'        return;',
'    }',
'    apex.server.process(''P1_DELETE_FAVORITE_GROUP'', { x01: groupId }, {',
'        dataType: ''json'',',
'        success: function(resp) {',
'            if (!resp || resp.code !== ''200'') {',
'                alert((resp && resp.message) || ''\5220\9664\5931\8D25'');',
'                return;',
'            }',
'            $s(''P1_FAVORITE_GROUP_ID'', '''');',
'            p1ShowSuccess(resp.message);',
'            p1RefreshFavoriteRegions();',
'        },',
'        error: function() {',
'            alert(''\5220\9664\5173\6CE8\5206\7EC4\5931\8D25'');',
'        }',
'    });',
'}',
'',
'function p1FavoriteGroupDialogUrl(groupId) {',
'    return apex.util.makeApplicationUrl({',
'        pageId: 157,',
'        itemNames: [''P157_FAVORITE_GROUP_ID''],',
'        itemValues: [groupId || '''']',
'    });',
'}',
'',
'function p1OpenFavoriteGroupDialog(groupId) {',
'    apex.navigation.dialog(p1FavoriteGroupDialogUrl(groupId), {',
'        title: groupId ? ''\7F16\8F91\5173\6CE8\5206\7EC4'' : ''\65B0\589E\5173\6CE8\5206\7EC4'',',
'        height: ''280'',',
'        width: ''480'',',
'        modal: true',
'    });',
'}',
'',
'function p1OpenPermissionDialog(fileId, rootFolderId, parentFolderId) {',
'    var url = apex.util.makeApplicationUrl({',
'        pageId: 156,',
'        itemNames: [''P156_FILE_ID'', ''P156_ROOT_FOLDER_ID'', ''P156_PARENT_FOLDER_ID''],',
'        itemValues: [fileId, rootFolderId || '''', parentFolderId || '''']',
'    });',
'    apex.navigation.dialog(url, { title: ''\5206\4EAB\4E0E\6743\9650'', height: ''720'', width: ''960'', modal: true });',
'}',
'',
'function p1InitPage() {',
'    const parentElement = $(''body'')[0];',
'    parentElement.addEventListener(''click'', function (event) {',
'        event.stopPropagation();',
'        if (event.target.className === ''ui-widget-overlay ui-front'') {',
'            $(''.ui-icon-closethick'').click();',
'        }',
'    });',
'    apex.gPageContext$.on(''apexafterclosedialog'', function() {',
'        p1RefreshHomeRegions();',
'    });',
'    p1SyncFavoriteToolbar();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// const elements = $(''.t-BadgeList-item'');',
'',
'// elements.each(function (i, element) {',
'//     element.addEventListener(''click'', function (event, e) {',
unistr('//         console.log(''element\FF1A'', $(element).find(''.t-BadgeList-label'').text());'),
'//         var area = $(element).find(''.t-BadgeList-label'').text();',
unistr('//         if (area == ''\4EFB\52A1\603B\6570'') {'),
'',
unistr('//         } else if (area == ''\5E73\53F0\9879\76EE\6570'') {'),
'',
unistr('//         } else if (area == '' \53C2\4E0E\4EBA\6570'') {'),
'',
'//         }',
'//     });',
'// })',
'',
'if (window.p1InitPage) { window.p1InitPage(); }'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body-content {',
'    background: #f0f2f5;',
'}',
'',
'.p1-placeholder {',
'    padding: 36px 24px;',
'    border: 1px dashed #d7e2ee;',
'    border-radius: 18px;',
'    background: #ffffff;',
'    color: #94a3b8;',
'    text-align: center;',
'    font-size: 14px;',
'}',
'',
'.p1-tabs-region {',
'    margin-top: 0;',
'    background: transparent;',
'    border: 0;',
'    box-shadow: none;',
'}',
'',
'.p1-tabs-region .t-Region-body {',
'    padding: 0;',
'}',
'',
'.p1-tabs-region .apex-rds-container {',
'    border-bottom: 1px solid #dfe6ef;',
'    margin-bottom: 16px;',
'}',
'',
'.p1-tabs-region a:focus:not(:focus-visible),',
'.p1-tabs-region button:focus:not(:focus-visible) {',
'    outline: none;',
'    box-shadow: none;',
'}',
'',
'.p1-group-cards .t-Cards {',
'    display: flex;',
'    flex-wrap: wrap;',
'    gap: 8px;',
'    list-style: none;',
'    margin: 0;',
'    padding: 0;',
'}',
'',
'.p1-group-cards .t-Cards-item {',
'    width: auto;',
'    margin: 0;',
'}',
'',
'.p1-group-cards .t-Card,',
'.p1-group-cards .t-Card-wrap {',
'    border: 0;',
'    box-shadow: none;',
'    background: transparent;',
'    padding: 0;',
'}',
'',
'.p1-group-pill {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 8px;',
'    min-height: 32px;',
'    padding: 0 16px;',
'    border-radius: 16px;',
'    border: 0;',
'    background: #f5f5f5;',
'    color: #666;',
'    text-decoration: none;',
'    font-size: 13px;',
'    font-weight: 500;',
'    transition: all .2s;',
'}',
'',
'.p1-group-pill:hover {',
'    background: #e6f7ff;',
'    color: #1890ff;',
'}',
'',
'.p1-group-pill.is-active {',
'    background: #1890ff;',
'    color: #fff;',
'}',
'',
'.p1-pill-count {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    min-width: 20px;',
'    height: 20px;',
'    padding: 0 6px;',
'    border-radius: 999px;',
'    background: rgba(15, 23, 42, 0.06);',
'    font-size: 12px;',
'}',
'',
'.p1-group-pill.is-active .p1-pill-count {',
'    background: rgba(255,255,255,.2);',
'}',
'',
'.p1-favorite-toolbar {',
'    margin: -44px 0 16px;',
'    display: flex;',
'    justify-content: flex-end;',
'    background: transparent;',
'    border: 0;',
'    box-shadow: none;',
'}',
'',
'.p1-favorite-toolbar .t-ButtonRegion,',
'.p1-favorite-toolbar .t-ButtonRegion-wrap {',
'    background: transparent;',
'    border: 0;',
'    box-shadow: none;',
'    padding: 0;',
'}',
'',
'.p1-favorite-toolbar .t-Button {',
'    height: 28px;',
'    min-width: 28px;',
'    padding: 0 10px;',
'    border-radius: 14px;',
'    border-color: transparent;',
'    background: transparent;',
'    color: #8c8c8c;',
'    font-size: 12px;',
'}',
'',
'.p1-favorite-toolbar .t-Button:hover {',
'    background: #f0f7ff;',
'    color: #1890ff;',
'}',
'',
'.p1-row-actions {',
'    margin-top: 6px;',
'}',
'',
'.p1-row-link {',
'    color: #1677ff;',
'    text-decoration: none;',
'    font-size: 12px;',
'}',
'',
'.is-disabled {',
'    opacity: .5;',
'}',
'',
'.p1-file-grid {',
'    overflow: hidden;',
'    border-radius: 10px;',
'    background: #fff;',
'    box-shadow: 0 1px 4px rgba(0,0,0,0.06);',
'}',
'',
'.p1-file-grid .t-Region-body {',
'    padding: 0;',
'}',
'',
'.p1-file-grid .a-IG,',
'.p1-file-grid .a-GV,',
'.p1-file-grid .a-GV-table {',
'    border: 0;',
'}',
'',
'.p1-file-grid .a-GV-header {',
'    background: #fff;',
'    color: #6b7280;',
'    font-weight: 600;',
'}',
'',
'.p1-file-grid .a-GV-table tr:hover .a-GV-cell {',
'    background: #fafcff;',
'}',
'',
'.p1-file-grid .a-GV-cell {',
'    vertical-align: middle;',
'    height: 64px;',
'    border-color: #f5f5f5;',
'    color: #64748b;',
'}',
'',
'.p1-file-cell {',
'    display: inline-flex;',
'    align-items: center;',
'    max-width: 100%;',
'    min-width: 0;',
'}',
'',
'.p1-file-name {',
'    display: inline-flex;',
'    align-items: center;',
'    gap: 10px;',
'    max-width: 100%;',
'    color: #0f172a;',
'    text-decoration: none;',
'    font-weight: 600;',
'}',
'',
'.p1-file-name:hover {',
'    color: #1677ff;',
'}',
'',
'.p1-doc-icon {',
'    display: inline-flex;',
'    align-items: center;',
'    justify-content: center;',
'    width: 40px;',
'    height: 40px;',
'    flex: 0 0 auto;',
'    border-radius: 8px;',
'    background: #eef6ff;',
'    color: #2563eb;',
'    font-size: 20px;',
'}',
'',
'.p1-doc-icon .ri-file-pdf-2-fill { color: #e11d48; }',
'.p1-doc-icon .ri-file-word-2-fill { color: #2563eb; }',
'.p1-doc-icon .ri-file-excel-2-fill { color: #16a34a; }',
'.p1-doc-icon .ri-file-ppt-2-fill { color: #ea580c; }',
'.p1-doc-icon .ri-image-fill { color: #0891b2; }',
'.p1-doc-icon .ri-video-fill { color: #7c3aed; }',
'.p1-doc-icon .ri-music-fill { color: #db2777; }',
'.p1-doc-icon .ri-folder-zip-fill { color: #ca8a04; }',
'',
'.p1-file-label {',
'    overflow: hidden;',
'    text-overflow: ellipsis;',
'    white-space: nowrap;',
'}',
'',
'.p1-ig-action {',
'    color: #1677ff;',
'    text-decoration: none;',
'    font-size: 12px;',
'    font-weight: 500;',
'}',
'',
'.p1-ig-action + .p1-ig-action {',
'    margin-left: 10px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000304)
,p_plug_name=>unistr('\9996\9875\6807\7B7E')
,p_region_name=>'p1_tabs_region'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9760095805010264254)
,p_plug_display_sequence=>10
,p_region_css_classes=>'p1-tabs-region'
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000305)
,p_plug_name=>unistr('\6700\8FD1\8BBF\95EE')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000304)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000306)
,p_plug_name=>unistr('\6211\7684\5173\6CE8')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000304)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000307)
,p_plug_name=>unistr('\4E0E\6211\5206\4EAB')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000304)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000308)
,p_plug_name=>unistr('\6211\5206\4EAB\7684')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000304)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000301)
,p_plug_name=>unistr('\6700\8FD1\8BBF\95EE')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000305)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_region_css_classes=>'p1-file-grid'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with recent_logs as (',
'    select l.operation_reference_id file_id,',
'           max(l.creation_date) recent_open_date',
'      from fmp_operation_log l',
'     where nvl(l.del_flag, 0) = 0',
'       and l.tenant_id = :USER_TENANT',
'       and to_char(l.created_by) = :DIAN_USER_ID',
'       and l.operation_reference_id is not null',
'     group by l.operation_reference_id',
')',
'select file_id,',
'       file_name,',
'       file_display_name,',
'       open_url,',
'       file_size_label,',
'       type_label,',
'       updated_by_name,',
'       icon_class,',
'       update_time',
'  from (',
'        select f.file_id,',
'               f.file_name,',
'               case when length(f.file_name) > 50 then substr(f.file_name, 1, 50) || ''...'' else f.file_name end file_display_name,',
'               apex_page.get_url(p_page => 137, p_items => ''P137_FILE_ID'', p_values => to_char(f.file_id)) open_url,',
'               case',
'                   when f.file_size is null then ''-''',
'                   when f.file_size >= 1073741824 then to_char(round(f.file_size / 1073741824, 1)) || '' GB''',
'                   when f.file_size >= 1048576 then to_char(round(f.file_size / 1048576, 1)) || '' MB''',
'                   when f.file_size >= 1024 then to_char(round(f.file_size / 1024, 1)) || '' KB''',
'                   else to_char(f.file_size) || '' B''',
'               end file_size_label,',
'               nvl(f.file_format, regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)) type_label,',
'               nvl(u.name, to_char(nvl(f.updated_by, f.created_by))) updated_by_name,',
'               case',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''doc'', ''docx'', ''wps'') then ''ri-file-word-2-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''pdf'' then ''ri-file-pdf-2-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''xls'', ''xlsx'', ''csv'') then ''ri-file-excel-2-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''ppt'', ''pptx'') then ''ri-file-ppt-2-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''txt'', ''rtf'') then ''ri-file-text-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''md'' then ''ri-markdown-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''png'', ''jpg'', ''jpeg'', ''gif'', ''bmp'', ''webp'', ''svg'') then ''ri-image-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp4'', ''avi'', ''mov'', ''wmv'', ''mkv'', ''flv'') then ''ri-video-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp3'', ''wav'', ''flac'', ''aac'', ''ogg'') then ''ri-music-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''html'', ''css'', ''js'', ''ts'', ''json'', ''xml'', ''sql'', ''java'', ''py'', ''cs'', ''cpp'', ''c'', ''go'', ''php'', ''vue'') then ''ri-file-code-fill''',
'                   when lower(ltrim(nvl(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''zip'', ''rar'', ''7z'', ''tar'', ''gz'') then ''ri-folder-zip-fill''',
'                   else ''ri-file-3-fill''',
'               end icon_class,',
'               to_char(r.recent_open_date, ''yyyy-mm-dd hh24:mi'') update_time',
'          from recent_logs r',
'          join fmp_file f',
'            on f.file_id = r.file_id',
'          left join basic_user u',
'            on u.user_id = nvl(f.updated_by, f.created_by)',
'           and u.tenant_id = :USER_TENANT',
'           and nvl(u.del_flag, 0) = 0',
'         where nvl(f.del_flag, 0) = 0',
'           and f.tenant_id = :USER_TENANT',
'           and f.system_id = to_number(nvl(nullif(:SYSTEM_ID, ''''), ''1''))',
'           and upper(nvl(f.file_type, ''FILE'')) <> ''FOLDER''',
'         order by r.recent_open_date desc, f.file_id desc',
'       )',
' where rownum <= 5'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_num_rows=>5
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000350)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000351)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="p1-file-cell">',
    '  <a class="p1-file-name" href="&OPEN_URL!ATTR." title="&FILE_NAME!ATTR.">',
    '    <span class="p1-doc-icon" aria-hidden="true"><i class="&ICON_CLASS!ATTR."></i></span>',
    '    <span class="p1-file-label">&FILE_DISPLAY_NAME!HTML.</span>',
    '  </a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000352)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000353)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000354)
,p_name=>'OPEN_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000363)
,p_name=>'FILE_SIZE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_SIZE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5927\5C0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>55
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
 p_id=>wwv_flow_imp.id(910001000000000355)
,p_name=>'TYPE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(910001000000000364)
,p_name=>'UPDATED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>65
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
 p_id=>wwv_flow_imp.id(910001000000000356)
,p_name=>'UPDATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6700\8FD1\6253\5F00\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(910001000000000357)
,p_internal_uid=>910001000000000357
,p_is_editable=>false
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(910001000000000358)
,p_interactive_grid_id=>wwv_flow_imp.id(910001000000000357)
,p_static_id=>'p1_recent_ig'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(910001000000000359)
,p_report_id=>wwv_flow_imp.id(910001000000000358)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000360)
,p_view_id=>wwv_flow_imp.id(910001000000000359)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(910001000000000351)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000361)
,p_view_id=>wwv_flow_imp.id(910001000000000359)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(910001000000000363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000365)
,p_view_id=>wwv_flow_imp.id(910001000000000359)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(910001000000000355)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000362)
,p_view_id=>wwv_flow_imp.id(910001000000000359)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(910001000000000356)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000366)
,p_view_id=>wwv_flow_imp.id(910001000000000359)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(910001000000000364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000309)
,p_plug_name=>unistr('\5173\6CE8\5206\7EC4')
,p_region_name=>'p1_favorite_groups_rpt'
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000306)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>10
,p_region_css_classes=>'p1-group-cards'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with all_groups as (',
'    select cast(null as number) favorite_group_id,',
unistr('           ''\5168\90E8'' group_name,'),
'           count(*) favorite_count,',
'           0 sort_no',
'      from fmp_favorite_file',
'     where user_id = :DIAN_USER_ID',
'    union all',
'    select g.favorite_group_id,',
'           g.group_name,',
'           count(ff.favorite_id) favorite_count,',
'           nvl(g.sort, 0) + 1 sort_no',
'      from fmp_favorite_group g',
'      left join fmp_favorite_file ff',
'        on ff.group_id = g.favorite_group_id',
'       and ff.user_id = :DIAN_USER_ID',
'     where g.user_id = :DIAN_USER_ID',
'       and nvl(g.del_flag, 0) = 0',
'     group by g.favorite_group_id, g.group_name, g.sort',
')',
'select nvl(to_char(favorite_group_id), '''') favorite_group_id,',
'       group_name,',
'       favorite_count,',
'       case',
'           when (favorite_group_id is null and :P1_FAVORITE_GROUP_ID is null)',
'             or to_char(favorite_group_id) = :P1_FAVORITE_GROUP_ID then ''is-active''',
'           else ''''',
'       end active_class',
'  from all_groups',
' order by sort_no, favorite_group_id'))
,p_plug_source_type=>'NATIVE_CARDS'
,p_ajax_items_to_submit=>'P1_FAVORITE_GROUP_ID'
,p_plug_query_num_rows=>50
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(910001000000000312)
,p_region_id=>wwv_flow_imp.id(910001000000000309)
,p_layout_type=>'GRID'
,p_body_adv_formatting=>true
,p_body_html_expr=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<a class="p1-group-pill &ACTIVE_CLASS!ATTR." href="javascript:p1SelectFavoriteGroup(''&FAVORITE_GROUP_ID!ATTR.'');void(0);">',
'  <span>&GROUP_NAME!HTML.</span>',
'  <span class="p1-pill-count">&FAVORITE_COUNT!HTML.</span>',
'</a>'))
,p_pk1_column_name=>'FAVORITE_GROUP_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000313)
,p_plug_name=>unistr('\5173\6CE8\5206\7EC4\64CD\4F5C')
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000306)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_region_css_classes=>'p1-favorite-toolbar'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout', 'HORIZONTAL',
  'size', 'SMALL')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001000000000314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910001000000000313)
,p_button_name=>'P1_BTN_ADD_GROUP'
,p_button_static_id=>'P1_BTN_ADD_GROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\65B0\589E\5206\7EC4')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001000000000315)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(910001000000000313)
,p_button_name=>'P1_BTN_EDIT_GROUP'
,p_button_static_id=>'P1_BTN_EDIT_GROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\7F16\8F91\5206\7EC4')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001000000000316)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(910001000000000313)
,p_button_name=>'P1_BTN_DELETE_GROUP'
,p_button_static_id=>'P1_BTN_DELETE_GROUP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\5220\9664\5206\7EC4')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000317)
,p_plug_name=>unistr('\5173\6CE8\6587\4EF6')
,p_region_name=>'p1_favorite_files_rpt'
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000306)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_region_css_classes=>'p1-file-grid'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select file_id,',
'       file_name,',
'       case when length(file_name) > 50 then substr(file_name, 1, 50) || ''...'' else file_name end file_display_name,',
'       apex_page.get_url(p_page => 137, p_items => ''P137_FILE_ID'', p_values => to_char(file_id)) open_url,',
'       file_size_label,',
'       nvl(file_format, regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)) type_label,',
'       updated_by_name,',
'       case',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''doc'', ''docx'', ''wps'') then ''ri-file-word-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''pdf'' then ''ri-file-pdf-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''xls'', ''xlsx'', ''csv'') then ''ri-file-excel-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''ppt'', ''pptx'') then ''ri-file-ppt-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''txt'', ''rtf'') then ''ri-file-text-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''md'' then ''ri-markdown-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''png'', ''jpg'', ''jpeg'', ''gif'', ''bmp'', ''webp'', ''svg'') then ''ri-image-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp4'', ''avi'', ''mov'', ''wmv'', ''mkv'', ''flv'') then ''ri-video-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp3'', ''wav'', ''flac'', ''aac'', ''ogg'') then ''ri-music-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''html'', ''css'', ''js'', ''ts'', ''json'', ''xml'', ''sql'', ''java'', ''py'', ''cs'', ''cpp'', ''c'', ''go'', ''php'', ''vue'') then ''ri-file-code-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''zip'', ''rar'', ''7z'', ''tar'', ''gz'') then ''ri-folder-zip-fill''',
'           else ''ri-file-3-fill''',
'       end icon_class,',
'       to_char(favorite_date, ''yyyy-mm-dd hh24:mi'') update_time,',
'       nvl(to_char(group_id), ''null'') group_id_js,',
'       null actions',
'  from (',
'        select f.file_id,',
'               f.file_name,',
'               f.file_format,',
'               case',
'                   when f.file_size is null then ''-''',
'                   when f.file_size >= 1073741824 then to_char(round(f.file_size / 1073741824, 1)) || '' GB''',
'                   when f.file_size >= 1048576 then to_char(round(f.file_size / 1048576, 1)) || '' MB''',
'                   when f.file_size >= 1024 then to_char(round(f.file_size / 1024, 1)) || '' KB''',
'                   else to_char(f.file_size) || '' B''',
'               end file_size_label,',
'               nvl(u.name, to_char(nvl(f.updated_by, f.created_by))) updated_by_name,',
'               ff.favorite_date,',
'               ff.group_id',
'          from fmp_favorite_file ff',
'          join fmp_file f',
'            on f.file_id = ff.file_id',
'           and nvl(f.del_flag, 0) = 0',
'          left join basic_user u',
'            on u.user_id = nvl(f.updated_by, f.created_by)',
'           and u.tenant_id = :USER_TENANT',
'           and nvl(u.del_flag, 0) = 0',
'         where ff.user_id = :DIAN_USER_ID',
'           and (:P1_FAVORITE_GROUP_ID is null or ff.group_id = to_number(:P1_FAVORITE_GROUP_ID))',
'         order by ff.favorite_date desc, f.file_id desc',
'       )',
' where rownum <= 20'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P1_FAVORITE_GROUP_ID'
,p_plug_query_num_rows=>20
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000370)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000371)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="p1-file-cell">',
    '  <a class="p1-file-name" href="&OPEN_URL!ATTR." title="&FILE_NAME!ATTR.">',
    '    <span class="p1-doc-icon" aria-hidden="true"><i class="&ICON_CLASS!ATTR."></i></span>',
    '    <span class="p1-file-label">&FILE_DISPLAY_NAME!HTML.</span>',
    '  </a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000372)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000373)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000374)
,p_name=>'OPEN_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000386)
,p_name=>'FILE_SIZE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_SIZE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5927\5C0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>55
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
 p_id=>wwv_flow_imp.id(910001000000000375)
,p_name=>'TYPE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(910001000000000387)
,p_name=>'UPDATED_BY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>65
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
 p_id=>wwv_flow_imp.id(910001000000000376)
,p_name=>'UPDATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5173\6CE8\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(910001000000000377)
,p_name=>'GROUP_ID_JS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GROUP_ID_JS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000378)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a class="p1-ig-action" href="javascript:p1ToggleFavorite(''&FILE_ID!ATTR.'',''REMOVE'',&GROUP_ID_JS!ATTR.);void(0);">'||unistr('\53D6\6D88\5173\6CE8')||'</a>')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(910001000000000379)
,p_internal_uid=>910001000000000379
,p_is_editable=>false
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(910001000000000380)
,p_interactive_grid_id=>wwv_flow_imp.id(910001000000000379)
,p_static_id=>'p1_favorite_files_ig'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(910001000000000381)
,p_report_id=>wwv_flow_imp.id(910001000000000380)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000382)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(910001000000000371)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000383)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(910001000000000386)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000388)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(910001000000000375)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000384)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(910001000000000376)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000389)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(910001000000000387)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000385)
,p_view_id=>wwv_flow_imp.id(910001000000000381)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(910001000000000378)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000310)
,p_plug_name=>unistr('\4E0E\6211\5206\4EAB')
,p_region_name=>'p1_shared_to_me_rpt'
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000307)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_region_css_classes=>'p1-file-grid'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with base_rows as (',
'    select f.file_id,',
'           f.file_name,',
'           f.file_format,',
'           f.root_folder_id,',
'           f.parent_folder_id,',
'           nvl(to_char(src.name), nvl(to_char(src_ding.name), ''-'')) source_name,',
'           s.permissions_type share_type,',
'           nvl(s.update_date, s.creation_date) action_time',
'      from fmp_scope s',
'      join fmp_file f',
'        on f.file_id = s.reference_id',
'       and nvl(f.del_flag, 0) = 0',
'      left join basic_user src',
'        on src.user_id = s.source_user_id',
'       and src.tenant_id = :USER_TENANT',
'       and nvl(src.del_flag, 0) = 0',
'      left join basic_ja_ding_user src_ding',
'        on src_ding.user_id = s.source_user_id',
'       and nvl(src_ding.tenant_id, :USER_TENANT) = :USER_TENANT',
'     where s.reference_type = ''FILE''',
'       and s.source_user_id <> :DIAN_USER_ID',
'       and (',
'            (s.range_type = ''USER'' and s.range_id in (',
'                 :DIAN_USER_ID,',
'                 v(''MPF_USER_ID''),',
'                 (select fu.ext_user_id',
'                    from fmp_user fu',
'                   where fu.tenant_id = :USER_TENANT',
'                     and fu.user_id = to_number(nullif(v(''MPF_USER_ID''), ''''))',
'                     and nvl(fu.del_flag, 0) = 0),',
'                 (select bd.union_id',
'                    from basic_ja_ding_user bd',
'                   where to_char(bd.user_id) = to_char(:DIAN_USER_ID)',
'                     and nvl(bd.tenant_id, :USER_TENANT) = :USER_TENANT)',
'            ))',
'         or (s.range_type = ''DEPT'' and exists (',
'                 select 1',
'                   from basic_ja_ding_dept_user du',
'                  where to_char(du.dept_id) = s.range_id',
'                    and to_char(du.user_id) = to_char(:DIAN_USER_ID)',
'            ))',
'       )',
'     order by nvl(s.update_date, s.creation_date) desc, f.file_id desc',
')',
'select file_id,',
'       file_name,',
'       case when length(file_name) > 50 then substr(file_name, 1, 50) || ''...'' else file_name end file_display_name,',
'       apex_page.get_url(p_page => 137, p_items => ''P137_FILE_ID'', p_values => to_char(file_id)) open_url,',
'       nvl(file_format, regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)) type_label,',
'       case',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''doc'', ''docx'', ''wps'') then ''ri-file-word-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''pdf'' then ''ri-file-pdf-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''xls'', ''xlsx'', ''csv'') then ''ri-file-excel-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''ppt'', ''pptx'') then ''ri-file-ppt-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''txt'', ''rtf'') then ''ri-file-text-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''md'' then ''ri-markdown-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''png'', ''jpg'', ''jpeg'', ''gif'', ''bmp'', ''webp'', ''svg'') then ''ri-image-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp4'', ''avi'', ''mov'', ''wmv'', ''mkv'', ''flv'') then ''ri-video-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp3'', ''wav'', ''flac'', ''aac'', ''ogg'') then ''ri-music-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''html'', ''css'', ''js'', ''ts'', ''json'', ''xml'', ''sql'', ''java'', ''py'', ''cs'', ''cpp'', ''c'', ''go'', ''php'', ''vue'') then ''ri-file-code-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''zip'', ''rar'', ''7z'', ''tar'', ''gz'') then ''ri-folder-zip-fill''',
'           else ''ri-file-3-fill''',
'       end icon_class,',
'       to_char(action_time, ''yyyy-mm-dd hh24:mi'') update_time,',
'       source_name || '' / '' || share_type meta_text,',
'       nvl(to_char(root_folder_id), ''null'') root_folder_id_js,',
'       nvl(to_char(parent_folder_id), ''null'') parent_folder_id_js,',
'       null actions',
'  from base_rows',
' where rownum <= 20'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_num_rows=>20
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000390)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000391)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="p1-file-cell">',
    '  <a class="p1-file-name" href="&OPEN_URL!ATTR." title="&FILE_NAME!ATTR.">',
    '    <span class="p1-doc-icon" aria-hidden="true"><i class="&ICON_CLASS!ATTR."></i></span>',
    '    <span class="p1-file-label">&FILE_DISPLAY_NAME!HTML.</span>',
    '  </a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000392)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000393)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000394)
,p_name=>'OPEN_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000395)
,p_name=>'TYPE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(910001000000000396)
,p_name=>'UPDATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5206\4EAB\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(910001000000000397)
,p_name=>'META_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'META_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6765\6E90')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(910001000000000398)
,p_name=>'ROOT_FOLDER_ID_JS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOT_FOLDER_ID_JS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
 p_id=>wwv_flow_imp.id(910001000000000399)
,p_name=>'PARENT_FOLDER_ID_JS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_FOLDER_ID_JS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000400)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a class="p1-ig-action" href="javascript:p1OpenPermissionDialog(''&FILE_ID!ATTR.'',&ROOT_FOLDER_ID_JS!ATTR.,&PARENT_FOLDER_ID_JS!ATTR.);void(0);">'||unistr('\6743\9650\8BE6\60C5')||'</a>')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(910001000000000401)
,p_internal_uid=>910001000000000401
,p_is_editable=>false
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(910001000000000402)
,p_interactive_grid_id=>wwv_flow_imp.id(910001000000000401)
,p_static_id=>'p1_shared_to_me_ig'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(910001000000000403)
,p_report_id=>wwv_flow_imp.id(910001000000000402)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000404)
,p_view_id=>wwv_flow_imp.id(910001000000000403)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(910001000000000391)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000405)
,p_view_id=>wwv_flow_imp.id(910001000000000403)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(910001000000000397)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000406)
,p_view_id=>wwv_flow_imp.id(910001000000000403)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(910001000000000396)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000407)
,p_view_id=>wwv_flow_imp.id(910001000000000403)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(910001000000000400)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001000000000311)
,p_plug_name=>unistr('\6211\5206\4EAB\7684')
,p_region_name=>'p1_shared_by_me_rpt'
,p_parent_plug_id=>wwv_flow_imp.id(910001000000000308)
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
,p_plug_display_sequence=>10
,p_plug_new_grid_row=>false
,p_region_css_classes=>'p1-file-grid'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'with base_rows as (',
'    select f.file_id,',
'           f.file_name,',
'           f.file_format,',
'           f.root_folder_id,',
'           f.parent_folder_id,',
'           count(*) scope_count,',
'           listagg(distinct s.permissions_type, '', '') within group (order by s.permissions_type) scope_text,',
'           max(nvl(s.update_date, s.creation_date)) action_time',
'      from fmp_scope s',
'      join fmp_file f',
'        on f.file_id = s.reference_id',
'       and nvl(f.del_flag, 0) = 0',
'     where s.reference_type = ''FILE''',
'       and to_char(s.source_user_id) = to_char(:DIAN_USER_ID)',
'     group by f.file_id, f.file_name, f.file_format, f.root_folder_id, f.parent_folder_id',
'     order by max(nvl(s.update_date, s.creation_date)) desc, f.file_id desc',
')',
'select file_id,',
'       file_name,',
'       case when length(file_name) > 50 then substr(file_name, 1, 50) || ''...'' else file_name end file_display_name,',
'       apex_page.get_url(p_page => 137, p_items => ''P137_FILE_ID'', p_values => to_char(file_id)) open_url,',
'       nvl(file_format, regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)) type_label,',
'       case',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''doc'', ''docx'', ''wps'') then ''ri-file-word-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''pdf'' then ''ri-file-pdf-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''xls'', ''xlsx'', ''csv'') then ''ri-file-excel-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''ppt'', ''pptx'') then ''ri-file-ppt-2-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''txt'', ''rtf'') then ''ri-file-text-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) = ''md'' then ''ri-markdown-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''png'', ''jpg'', ''jpeg'', ''gif'', ''bmp'', ''webp'', ''svg'') then ''ri-image-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp4'', ''avi'', ''mov'', ''wmv'', ''mkv'', ''flv'') then ''ri-video-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''mp3'', ''wav'', ''flac'', ''aac'', ''ogg'') then ''ri-music-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''html'', ''css'', ''js'', ''ts'', ''json'', ''xml'', ''sql'', ''java'', ''py'', ''cs'', ''cpp'', ''c'', ''go'', ''php'', ''vue'') then ''ri-file-code-fill''',
'           when lower(ltrim(nvl(nullif(file_format, ''''), regexp_substr(file_name, ''\.([^.]+)$'', 1, 1, null, 1)), ''.'')) in (''zip'', ''rar'', ''7z'', ''tar'', ''gz'') then ''ri-folder-zip-fill''',
'           else ''ri-file-3-fill''',
'       end icon_class,',
'       to_char(action_time, ''yyyy-mm-dd hh24:mi'') update_time,',
'       scope_count || '' / '' || scope_text meta_text,',
'       nvl(to_char(root_folder_id), ''null'') root_folder_id_js,',
'       nvl(to_char(parent_folder_id), ''null'') parent_folder_id_js,',
'       null actions',
'  from base_rows',
' where rownum <= 20'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_num_rows=>20
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000410)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000411)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span class="p1-file-cell">',
    '  <a class="p1-file-name" href="&OPEN_URL!ATTR." title="&FILE_NAME!ATTR.">',
    '    <span class="p1-doc-icon" aria-hidden="true"><i class="&ICON_CLASS!ATTR."></i></span>',
    '    <span class="p1-file-label">&FILE_DISPLAY_NAME!HTML.</span>',
    '  </a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>true
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000412)
,p_name=>'FILE_DISPLAY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_DISPLAY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000413)
,p_name=>'ICON_CLASS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ICON_CLASS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000414)
,p_name=>'OPEN_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPEN_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000415)
,p_name=>'TYPE_LABEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE_LABEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(910001000000000416)
,p_name=>'UPDATE_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(910001000000000417)
,p_name=>'META_TEXT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'META_TEXT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\8303\56F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(910001000000000418)
,p_name=>'ROOT_FOLDER_ID_JS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOT_FOLDER_ID_JS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
 p_id=>wwv_flow_imp.id(910001000000000419)
,p_name=>'PARENT_FOLDER_ID_JS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_FOLDER_ID_JS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(910001000000000420)
,p_name=>'ACTIONS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIONS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a class="p1-ig-action" href="javascript:p1OpenPermissionDialog(''&FILE_ID!ATTR.'',&ROOT_FOLDER_ID_JS!ATTR.,&PARENT_FOLDER_ID_JS!ATTR.);void(0);">'||unistr('\7F16\8F91\5206\4EAB')||'</a>')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(910001000000000421)
,p_internal_uid=>910001000000000421
,p_is_editable=>false
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>false
,p_enable_save_public_report=>false
,p_enable_subscriptions=>false
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(910001000000000422)
,p_interactive_grid_id=>wwv_flow_imp.id(910001000000000421)
,p_static_id=>'p1_shared_by_me_ig'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(910001000000000423)
,p_report_id=>wwv_flow_imp.id(910001000000000422)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000424)
,p_view_id=>wwv_flow_imp.id(910001000000000423)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(910001000000000411)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000425)
,p_view_id=>wwv_flow_imp.id(910001000000000423)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(910001000000000417)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000426)
,p_view_id=>wwv_flow_imp.id(910001000000000423)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(910001000000000416)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(910001000000000427)
,p_view_id=>wwv_flow_imp.id(910001000000000423)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(910001000000000420)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001000000000319)
,p_name=>'P1_FAVORITE_GROUP_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9484951614507710861)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7089657132754472660)
,p_name=>unistr('\66F4\6539\4E3B\5BFC\5355\4F4D')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6392870469226849134)
,p_name=>unistr('\66F4\6539\9879\76EE\7C7B\522B')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_CATEGORY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6392871459118849144)
,p_name=>unistr('\66F4\6539\4EA7\4E1A\94FE')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PROCESS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6392873335149849163)
,p_name=>unistr('\66F4\6539\4E3B\5BFC\5355\4F4D3')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6519272595791533967)
,p_name=>unistr('\5237\65B0\9879\76EE')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001000000000320)
,p_name=>'P1_ADD_GROUP'
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001000000000314)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001000000000321)
,p_event_id=>wwv_flow_imp.id(910001000000000320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p1OpenFavoriteGroupDialog('''');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001000000000322)
,p_name=>'P1_EDIT_GROUP'
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001000000000315)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001000000000323)
,p_event_id=>wwv_flow_imp.id(910001000000000322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p1OpenFavoriteGroupDialog(p1CurrentFavoriteGroupId());'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001000000000324)
,p_name=>'P1_DELETE_GROUP'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001000000000316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001000000000325)
,p_event_id=>wwv_flow_imp.id(910001000000000324)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'p1DeleteFavoriteGroup();'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001000000000326)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P1_TOGGLE_FAVORITE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_file_id  number := to_number(nullif(apex_application.g_x01, ''''));',
'    l_group_id number := to_number(nullif(apex_application.g_x02, ''''));',
'    l_action   varchar2(20) := upper(trim(apex_application.g_x03));',
'    l_exists   number := 0;',
'begin',
'    apex_json.initialize_clob_output;',
'',
'    if l_file_id is null then',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''400'');',
unistr('        apex_json.write(''message'', ''\672A\63A5\6536\5230\6587\4EF6\4FE1\606F'');'),
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'        return;',
'    end if;',
'',
'    if l_action = ''ADD'' then',
'        select count(*)',
'          into l_exists',
'          from fmp_favorite_file',
'         where user_id = :DIAN_USER_ID',
'           and file_id = l_file_id',
'           and ((l_group_id is null and group_id is null) or group_id = l_group_id);',
'',
'        if l_exists = 0 then',
'            insert into fmp_favorite_file (group_id, user_id, file_id, favorite_date)',
'            values (l_group_id, :DIAN_USER_ID, l_file_id, sysdate);',
'        end if;',
'',
'        commit;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''200'');',
unistr('        apex_json.write(''message'', case when l_exists = 0 then ''\5DF2\52A0\5165\5173\6CE8'' else ''\5F53\524D\5206\7EC4\5DF2\5173\6CE8\8BE5\6587\4EF6'' end);'),
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'        return;',
'    end if;',
'',
'    if l_group_id is null then',
'        delete from fmp_favorite_file',
'         where user_id = :DIAN_USER_ID',
'           and file_id = l_file_id;',
'    else',
'        delete from fmp_favorite_file',
'         where user_id = :DIAN_USER_ID',
'           and file_id = l_file_id',
'           and group_id = l_group_id;',
'    end if;',
'',
'    commit;',
'    apex_json.open_object;',
'    apex_json.write(''code'', ''200'');',
unistr('    apex_json.write(''message'', ''\5DF2\53D6\6D88\5173\6CE8'');'),
'    apex_json.close_object;',
'    sys.htp.p(apex_json.get_clob_output);',
'    apex_json.free_output;',
'exception',
'    when others then',
'        rollback;',
'        begin',
'            apex_json.free_output;',
'        exception when others then null; end;',
'        apex_json.initialize_clob_output;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001000000000327)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P1_DELETE_FAVORITE_GROUP'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_group_id number := to_number(nullif(apex_application.g_x01, ''''));',
'begin',
'    apex_json.initialize_clob_output;',
'',
'    if l_group_id is null then',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''400'');',
unistr('        apex_json.write(''message'', ''\672A\9009\62E9\5173\6CE8\5206\7EC4'');'),
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'        return;',
'    end if;',
'',
'    delete from fmp_favorite_file',
'     where group_id = l_group_id',
'       and user_id = :DIAN_USER_ID;',
'',
'    update fmp_favorite_group',
'       set del_flag = 1,',
'           update_date = sysdate',
'     where favorite_group_id = l_group_id',
'       and user_id = :DIAN_USER_ID',
'       and nvl(del_flag, 0) = 0;',
'',
'    commit;',
'    apex_json.open_object;',
'    apex_json.write(''code'', ''200'');',
unistr('    apex_json.write(''message'', ''\5173\6CE8\5206\7EC4\5DF2\5220\9664'');'),
'    apex_json.close_object;',
'    sys.htp.p(apex_json.get_clob_output);',
'    apex_json.free_output;',
'exception',
'    when others then',
'        rollback;',
'        begin',
'            apex_json.free_output;',
'        exception when others then null; end;',
'        apex_json.initialize_clob_output;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_page.create_page(
 p_id=>150
,p_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E')
,p_alias=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E')
,p_step_title=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function fileDownload(url, name) {',
'  return new Promise((resolve, reject) => {',
'    var xhr = new XMLHttpRequest();',
unistr('    xhr.open("GET", url, true); // \4E5F\53EF\4EE5\4F7F\7528POST\65B9\5F0F\FF0C\6839\636E\63A5\53E3'),
unistr('    xhr.responseType = "blob"; // \8FD4\56DE\7C7B\578Bblob'),
unistr('    // \5B9A\4E49\8BF7\6C42\5B8C\6210\7684\5904\7406\51FD\6570\FF0C\8BF7\6C42\524D\4E5F\53EF\4EE5\589E\52A0\52A0\8F7D\6846/\7981\7528\4E0B\8F7D\6309\94AE\903B\8F91'),
'    xhr.onload = function () {',
unistr('      // \8BF7\6C42\5B8C\6210'),
'      if (this.status === 200) {',
unistr('        // \8FD4\56DE200'),
'        var blob = this.response;',
'        var reader = new FileReader();',
unistr('        reader.readAsDataURL(blob); // \8F6C\6362\4E3Abase64\FF0C\53EF\4EE5\76F4\63A5\653E\5165a\8868\60C5href'),
'        reader.onload = function (e) {',
unistr('          // \8F6C\6362\5B8C\6210\FF0C\521B\5EFA\4E00\4E2Aa\6807\7B7E\7528\4E8E\4E0B\8F7D'),
'          var a = document.createElement("a");',
'          a.download = name;',
'          a.href = e.target.result;',
unistr('          $("body").append(a); // \4FEE\590Dfirefox\4E2D\65E0\6CD5\89E6\53D1click'),
'          a.click();',
'          resolve(200)',
'          $(a).remove();',
'        };',
'      }',
'    };',
unistr('    // \53D1\9001ajax\8BF7\6C42'),
'    xhr.send();',
'  })',
'};'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235104391442263358)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235105006259263359)
,p_plug_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E')
,p_region_name=>'MyGrid'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.*,B.BASE_ID,B.FAB_ID,B.MAP_AREA_Y_ID,B.MAP_AREA_X_ID',
'  FROM FND_MAPS_WORK_STATION A ',
'  LEFT JOIN  FND_MAPS_AREAS_ASSO_V B ON A.MAP_ID = B.MAP_ID',
' WHERE A.TENANT_ID = :USERTENANT'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2225892860965880458)
,p_name=>'MAPS_WORK_STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAPS_WORK_STATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2226186192357927426)
,p_name=>'MAP_X_PIXEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_X_PIXEL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5750\6807(X,\5355\4F4D:px)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2226186306129927427)
,p_name=>'MAP_Y_PIXEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_Y_PIXEL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5750\6807(Y,\5355\4F4D:px)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2226186419081927428)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(2226186510141927429)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2226186629517927430)
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
 p_id=>wwv_flow_imp.id(2227514739996587059)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\505C\5C97')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\505C\5C97;0,\542F\7528;1')
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2231110014590376915)
,p_name=>'DAY_MAX_USERS_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DAY_MAX_USERS_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\767D\73ED\6700\5927\4EBA\6570')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2231110159790376916)
,p_name=>'NIGHT_MAX_USERS_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NIGHT_MAX_USERS_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\591C\73ED\6700\5927\4EBA\6570')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2231110255907376917)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110290979376918)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110436216376919)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>240
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110501806376920)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>250
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110626036376921)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110705772376922)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>260
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USERTENANT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2231110826122376923)
,p_name=>'WORK_STATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORK_STATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5DE5\4F4D')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,WORK_STATION_ID FROM FND_WORK_STATION WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2231110929251376924)
,p_name=>'MAP_Y_ID_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\4EA7\7EBF\9690\85CF\5217')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_areaS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND DEL_FLAG = 0 AND TYPE = 2'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2231111080363376925)
,p_name=>'FAB_ID_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5382\533A\9690\85CF\5217')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND IS_ENABLE = 1 AND BASE_DEPT_ID= :BASE_DEPT_ID'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2231111187650376926)
,p_name=>'MAP_X_ID_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5DE5\6BB5\9690\85CF\5217')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_areaS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND DEL_FLAG = 0 AND TYPE = 1'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2235107377486263360)
,p_name=>'BASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\57FA\5730')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,BASE_ID FROM TENANT_BASE WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID'
,p_lov_display_extra=>true
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235109305192263361)
,p_name=>'MAP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235110387402263362)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND IS_ENABLE = 1 AND BASE_ID = :BASE_ID AND BASE_DEPT_ID= :BASE_DEPT_ID'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'BASE_ID'
,p_ajax_items_to_submit=>'BASE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235112345852263363)
,p_name=>'MAP_AREA_Y_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\4EA7\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_areaS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND DEL_FLAG = 0 AND TYPE = 2 AND FAB_ID = :FAB_ID'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'FAB_ID'
,p_ajax_items_to_submit=>'FAB_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235114364478263364)
,p_name=>'MAP_AREA_X_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5DE5\6BB5')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_areaS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND DEL_FLAG = 0 AND TYPE = 1 AND FAB_ID = :FAB_ID'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'FAB_ID'
,p_ajax_items_to_submit=>'FAB_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2235119316553263366)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\9690\85CF')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;1,\5426;0')
,p_lov_display_extra=>true
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2235105510802263359)
,p_internal_uid=>14058120795793350
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_add_authorization_scheme=>wwv_flow_imp.id(2232511370371217774)
,p_update_authorization_scheme=>wwv_flow_imp.id(2232511595445217774)
,p_delete_authorization_scheme=>wwv_flow_imp.id(2232511983914217775)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
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
,p_define_chart_view=>false
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2235105906849263359)
,p_interactive_grid_id=>wwv_flow_imp.id(2235105510802263359)
,p_static_id=>'140586'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2235106146707263359)
,p_report_id=>wwv_flow_imp.id(2235105906849263359)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2226176200623849909)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2225892860965880458)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2226319995070534689)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2226186192357927426)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2226320950729534696)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2226186306129927427)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2226321814706534699)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2226186419081927428)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2226338972139645746)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2226186510141927429)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227665014742322144)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2227514739996587059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231151441083770085)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2231110014590376915)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231152366884770088)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2231110159790376916)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231155532551788407)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2231110255907376917)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231156455828788410)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(2231110290979376918)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231157379856788412)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(2231110436216376919)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231158222922788414)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>25
,p_column_id=>wwv_flow_imp.id(2231110501806376920)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231159110162788417)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>26
,p_column_id=>wwv_flow_imp.id(2231110626036376921)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231160010425788419)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>27
,p_column_id=>wwv_flow_imp.id(2231110705772376922)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231160955599788421)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>28
,p_column_id=>wwv_flow_imp.id(2231110826122376923)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231168789061855090)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>29
,p_column_id=>wwv_flow_imp.id(2231110929251376924)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231169646010855094)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>30
,p_column_id=>wwv_flow_imp.id(2231111080363376925)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2231170511705855096)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>31
,p_column_id=>wwv_flow_imp.id(2231111187650376926)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235107784167263361)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2235107377486263360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235109772345263361)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2235109305192263361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235110716125263362)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2235110387402263362)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235112703591263363)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2235112345852263363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235114762161263364)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2235114364478263364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2235119755717263366)
,p_view_id=>wwv_flow_imp.id(2235106146707263359)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2235119316553263366)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2235120279517281710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:151::'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226577860537366528)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2235120331593281711)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\6279\91CF\5BFC\5165')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5BFC\5165')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:152:&SESSION.::&DEBUG.:152::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-cloud-upload'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2234036171054895138)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2225892934611880459)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227669417952331340)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2235105006259263359)
,p_button_name=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:168:&SESSION.::&DEBUG.:168::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2226579104493366541)
,p_branch_name=>unistr('\8F6C\5230165')
,p_branch_action=>'f?p=&APP_ID.:165:&SESSION.::&DEBUG.:RR,165:P165_MAPS_WORK_STATION_ID,P165_FAB,P165_LINE,P165_OPT,P165_BASE:&P150_MAPS_WORK_STATION_ID.,&P150_FAB.,&P150_LINE.,&P150_OPT.,&P150_BASE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226184910740927413)
,p_name=>'P150_FILE_NAME'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226185467016927418)
,p_name=>'P150_ROW_COUNT'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2234036704478895144)
,p_name=>'P150_MAPS_WORK_STATION_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2234036793776895145)
,p_name=>'P150_FILE_URL'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2234036199640895139)
,p_name=>unistr('\4E0B\8F7D\51C6\5907')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234036318007895140)
,p_event_id=>wwv_flow_imp.id(2234036199640895139)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FILE VARCHAR2(128);',
'  V_URL  VARCHAR2(256);',
'BEGIN',
'  SELECT FILE_NAME,FILE_URL INTO V_FILE,V_URL ',
'    FROM APEX_UPLOAD_FILE_CONFIG',
'   WHERE FILE_ID = 161;',
'  apex_util.set_session_state(''P150_FILE_NAME'', V_FILE);',
'  apex_util.set_session_state(''P150_FILE_URL'', V_URL);',
'END;'))
,p_attribute_02=>'P150_FILE_NAME,P150_FILE_URL'
,p_attribute_03=>'P150_FILE_URL,P150_FILE_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234036617889895143)
,p_event_id=>wwv_flow_imp.id(2234036199640895139)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileName = $v(''P150_FILE_NAME'');',
'var url = $v(''P150_FILE_URL'');',
unistr('var a = `<a href="javascript:void(0)" style="display:none" id="a_file" onclick="fileDownload(''${url}'',''${fileName }'')">\4E0B\8F7D\6587\4EF6</a>`;'),
'$("body").append(a);',
unistr('var b = ''<button style="display:none" id="myButton2">\9690\85CF</button>'';'),
'$("body").append(b);',
'',
'$(''#myButton2'').on(''click'', function (params) {',
'',
'    var ig$ = apex.region("MyGrid").widget();',
'    var view = ig$.interactiveGrid("getCurrentView");',
'    var gridView = apex.region("MyGrid").call("getViews").grid;',
'    gridView.view$.grid("hideColumn", "MAP_X_ID_HIDE");',
'    gridView.view$.grid("hideColumn", "MAP_Y_ID_HIDE");',
'    gridView.view$.grid("hideColumn", "FAB_ID_HIDE");',
'});',
'',
'',
'document.getElementById("myButton2").click();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2234036966976895146)
,p_name=>unistr('\70B9\51FB\4E0B\8F7D')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2234036171054895138)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234036992704895147)
,p_event_id=>wwv_flow_imp.id(2234036966976895146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#a_file'')[0].onclick();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226184639917927410)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2225892934611880459)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P150_MAPS_WORK_STATION_ID'')) '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226184743589927411)
,p_event_id=>wwv_flow_imp.id(2226184639917927410)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\5220\9664'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226185003764927414)
,p_event_id=>wwv_flow_imp.id(2226184639917927410)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER(3) := 0;',
'BEGIN',
'    DELETE FROM FND_MAPS_WORK_STATION WHERE MAPS_WORK_STATION_ID IN (SELECT * FROM TABLE(SPLITSTR(:P150_MAPS_WORK_STATION_ID, '','')));',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P150_ROW_COUNT'', ROW_COUNT);',
'END;'))
,p_attribute_02=>'P150_MAPS_WORK_STATION_ID'
,p_attribute_03=>'P150_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226185519895927419)
,p_event_id=>wwv_flow_imp.id(2226184639917927410)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P150_ROW_COUNT'') == 0) {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\5220\9664\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226185605844927420)
,p_event_id=>wwv_flow_imp.id(2226184639917927410)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2235105006259263359)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226185783833927421)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2235105006259263359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_display_when_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226185842803927422)
,p_event_id=>wwv_flow_imp.id(2226185783833927421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P150_MAPS_WORK_STATION_ID'', ''MAPS_WORK_STATION_ID'');',
'map.set(''P150_FAB'', ''FAB_ID'');',
'map.set(''P150_LINE'', ''MAP_AREA_Y_ID'');',
'map.set(''P150_OPT'', ''MAP_AREA_X_ID'');',
'map.set(''P150_BASE'', ''BASE_ID'');',
'utils.set(this.data, map);',
'// console.log($v(''P150_MAPS_WORK_STATION_ID''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226578806081366538)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226577860537366528)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P150_MAPS_WORK_STATION_ID'')) && $v(''P150_MAPS_WORK_STATION_ID'').split('','').length==1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226579087676366540)
,p_event_id=>wwv_flow_imp.id(2226578806081366538)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P150_MAPS_WORK_STATION_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\4FEE\6539\7684\6570\636E'');'),
'} else {',
unistr('    alert(''\8BF7\9009\62E9\5355\6761\6570\636E\8FDB\884C\4FEE\6539'');'),
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226578892151366539)
,p_event_id=>wwv_flow_imp.id(2226578806081366538)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226580106809366551)
,p_name=>unistr('\5237\65B0\503C')
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226580239868366552)
,p_event_id=>wwv_flow_imp.id(2226580106809366551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P150_MAPS_WORK_STATION_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227666762540331313)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>80
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227666867774331314)
,p_event_id=>wwv_flow_imp.id(2227666762540331313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2235105006259263359)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226186768119927431)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2235105006259263359)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_MAP NUMBER;',
'    V_COUNT NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    case :APEX$ROW_STATUS',
'    -- insert',
'    when ''C'' then',
'        SELECT MAP_ID INTO V_MAP FROM FND_MAPS WHERE TENANT_ID = :USERTENANT AND FAB_ID = :FAB_ID AND MAP_AREA_X_ID = :MAP_AREA_X_ID AND MAP_AREA_Y_ID = :MAP_AREA_Y_ID;',
'        SELECT COUNT(*) INTO V_COUNT FROM FND_MAPS_WORK_STATION WHERE TENANT_ID = :USERTENANT AND MAP_ID = V_MAP AND WORK_STATION_ID = :WORK_STATION_ID;',
'        IF V_COUNT = 0 THEN',
'            INSERT INTO FND_MAPS_WORK_STATION (CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,REMARK,TENANT_ID,MAP_ID,WORK_STATION_ID,MAP_X_PIXEL,MAP_Y_PIXEL,DAY_MAX_USERS_COUNT,NIGHT_MAX_USERS_COUNT,IS_HIDE,IS_ENABLE)',
'            VALUES (:CREATED_BY,:CREATION_DATE,:UPDATED_BY,:UPDATE_DATE,:REMARK,:TENANT_ID,V_MAP,:WORK_STATION_ID,:MAP_X_PIXEL,:MAP_Y_PIXEL,:DAY_MAX_USERS_COUNT,:NIGHT_MAX_USERS_COUNT,:IS_HIDE,:IS_ENABLE);',
'        END IF;',
'    -- update',
'    when ''U'' then',
'        UPDATE FND_MAPS_WORK_STATION',
'           SET UPDATED_BY = :UPDATED_BY,',
'               UPDATE_DATE = :UPDATE_DATE,',
'               REMARK = :REMARK,',
'               MAP_X_PIXEL = :MAP_X_PIXEL,',
'               MAP_Y_PIXEL = :MAP_Y_PIXEL,',
'               DAY_MAX_USERS_COUNT = :DAY_MAX_USERS_COUNT,',
'               NIGHT_MAX_USERS_COUNT = :NIGHT_MAX_USERS_COUNT,',
'               IS_HIDE = :IS_HIDE,',
'               IS_ENABLE = :IS_ENABLE',
'         WHERE MAPS_WORK_STATION_ID = :MAPS_WORK_STATION_ID;',
'    end case;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42862165365843477
);
wwv_flow_imp.component_end;
end;
/

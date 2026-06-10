prompt --application/pages/page_00181
begin
--   Manifest
--     PAGE: 00181
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
 p_id=>181
,p_name=>unistr('EAP\8BBE\5907\7BA1\7406(\65B0)')
,p_alias=>unistr('EAP\8BBE\5907\7BA1\7406-\65B0')
,p_step_title=>unistr('EAP\8BBE\5907\7BA1\7406(\65B0)')
,p_autocomplete_on_off=>'OFF'
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
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197277798195903680)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197278393256903681)
,p_plug_name=>unistr('\6309\94AE\680F')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>10
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P181_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197280365081903683)
,p_plug_name=>unistr('\6570\636E\6E90')
,p_region_name=>'P181_DATA_UPLOAD'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197280774628903683)
,p_plug_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2197280365081903683)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>30
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P181_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197282917288903685)
,p_plug_name=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_parent_plug_id=>wwv_flow_imp.id(2197280365081903683)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>40
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P181_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2197285817104903687)
,p_name=>unistr('\9884\89C8')
,p_template=>wwv_flow_imp.id(2302045568724836200)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--horizontalBorders:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.line_number,',
'       p.col001, p.col002, p.col003, p.col004, p.col005, p.col006, p.col007, p.col008, p.col009, p.col010, p.col011, p.col012',
'       -- add more columns (col011 to col300) here.',
'  from apex_application_temp_files f, ',
'       table( apex_data_parser.parse(',
'                  p_content           => f.blob_content,',
'                  p_file_name         => f.filename,',
'                  p_xlsx_sheet_name   => case when :P181_XLSX_WORKSHEET is not null then :P181_XLSX_WORKSHEET end,',
'                  p_file_profile      => apex_data_loading.get_file_profile( p_static_id => ''data_upload_test''),',
'                  p_max_rows          => 100 ) ) p',
' where f.name = :P181_FILE'))
,p_display_when_condition=>'P181_FILE'
,p_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2302068286936836209)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('\672A\627E\5230\6570\636E')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185838035221995472)
,p_query_column_id=>1
,p_column_alias=>'LINE_NUMBER'
,p_column_display_sequence=>1
,p_column_heading=>'Line Number'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185838436817995472)
,p_query_column_id=>2
,p_column_alias=>'COL001'
,p_column_display_sequence=>2
,p_column_heading=>'Col001'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185838887875995472)
,p_query_column_id=>3
,p_column_alias=>'COL002'
,p_column_display_sequence=>3
,p_column_heading=>'Col002'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185839256644995472)
,p_query_column_id=>4
,p_column_alias=>'COL003'
,p_column_display_sequence=>4
,p_column_heading=>'Col003'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185839654144995471)
,p_query_column_id=>5
,p_column_alias=>'COL004'
,p_column_display_sequence=>5
,p_column_heading=>'Col004'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185840104698995471)
,p_query_column_id=>6
,p_column_alias=>'COL005'
,p_column_display_sequence=>6
,p_column_heading=>'Col005'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185840453578995471)
,p_query_column_id=>7
,p_column_alias=>'COL006'
,p_column_display_sequence=>7
,p_column_heading=>'Col006'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185840844641995471)
,p_query_column_id=>8
,p_column_alias=>'COL007'
,p_column_display_sequence=>8
,p_column_heading=>'Col007'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185841251516995471)
,p_query_column_id=>9
,p_column_alias=>'COL008'
,p_column_display_sequence=>9
,p_column_heading=>'Col008'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185841684528995470)
,p_query_column_id=>10
,p_column_alias=>'COL009'
,p_column_display_sequence=>10
,p_column_heading=>'Col009'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2185842032089995470)
,p_query_column_id=>11
,p_column_alias=>'COL010'
,p_column_display_sequence=>11
,p_column_heading=>'Col010'
,p_heading_alignment=>'LEFT'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197992557482706090)
,p_plug_name=>unistr('EAP\8BBE\5907\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>'select DEVICE_ID,TENANT_ID,DEVICE_CODE,DEVICE_NAME,IP,FAB_ID,MAP_AREA_X_ID,MAP_AREA_Y_ID,MANAGEMENT_EXT_ORG_ID,CATEGORY_FIRST_CODE,CATEGORY_SECOND_CODE,REMARK,IS_ENABLE,PROJECT_ID from BASIC_DEVICE WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BAS'
||'E_DEPT_ID;'
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('EAP\8BBE\5907\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197993935980706093)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197994441324706093)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197996431030706097)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197997410657706098)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USERTENANT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197998428585706098)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>32
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2197999404851706099)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2198000376966706099)
,p_name=>'IP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BBE\5907IP')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2198001389355706100)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select name,fab_id from fnd_fab where tenant_id = :usertenant and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(2198002435741706100)
,p_name=>'MAP_AREA_X_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select distinct map_area_X_name ,map_area_X_id  from fnd_maps_areas_asso_v where tenant_id = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID and fab_id =:FAB_ID order by map_area_X_id asc'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'FAB_ID'
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
 p_id=>wwv_flow_imp.id(2198003447178706101)
,p_name=>'MAP_AREA_Y_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\4EA7\7EBF')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select distinct map_area_y_name ,map_area_y_id  from fnd_maps_areas_asso_v where tenant_id = :USERTENANT and BASE_DEPT_ID = :BASE_DEPT_ID and fab_id =:FAB_ID order by map_area_y_id asc'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'FAB_ID'
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
 p_id=>wwv_flow_imp.id(2198004418581706101)
,p_name=>'MANAGEMENT_EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGEMENT_EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\8BBE\5907\8D1F\8D23\90E8\95E8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME ,ext_org_id FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(2198005395590706101)
,p_name=>'CATEGORY_FIRST_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_FIRST_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5927\7C7B\7F16\7801')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,CODE FROM TENANT_EVENT_CATEGORY WHERE NODE_LEVEL =1 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(2198006400827706102)
,p_name=>'CATEGORY_SECOND_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_SECOND_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5C0F\7C7B\7F16\7801')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>50
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,CODE FROM TENANT_EVENT_CATEGORY WHERE NODE_LEVEL =2 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND parent_code = :CATEGORY_FIRST_CODE;'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'CATEGORY_FIRST_CODE'
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
 p_id=>wwv_flow_imp.id(2198007389185706102)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>160
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2198008431614706103)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\751F\6548')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;1,\5426;0')
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
 p_id=>wwv_flow_imp.id(2207945868900967936)
,p_name=>'PROJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PROJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\9879\76EE\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT PROJECT_NAME,PROJECT_ID FROM TENANT_PROJECT WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID AND IS_ENABLE = 1'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2197993123312706091)
,p_internal_uid=>34707195489535180
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_add_authorization_scheme=>wwv_flow_imp.id(2174749908187918676)
,p_update_authorization_scheme=>wwv_flow_imp.id(2174750133261918676)
,p_delete_authorization_scheme=>wwv_flow_imp.id(2174750521730918677)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
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
 p_id=>wwv_flow_imp.id(2197993496185706092)
,p_interactive_grid_id=>wwv_flow_imp.id(2197993123312706091)
,p_static_id=>'120970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2197993715137706092)
,p_report_id=>wwv_flow_imp.id(2197993496185706092)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2197994763169706094)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2197994441324706093)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2197996762460706097)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2197996431030706097)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2197997768147706098)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2197997410657706098)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2197998802869706098)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2197998428585706098)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2197999800157706099)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2197999404851706099)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198000812702706099)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2198000376966706099)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198001753847706100)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2198001389355706100)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198002761210706100)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2198002435741706100)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198003841614706101)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2198003447178706101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198004781475706101)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2198004418581706101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198005827323706102)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2198005395590706101)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198006827104706102)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2198006400827706102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198007775314706103)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2198007389185706102)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2198008768289706103)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2198008431614706103)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2208289148302620387)
,p_view_id=>wwv_flow_imp.id(2197993715137706092)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2207945868900967936)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2185834911766995479)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2197278393256903681)
,p_button_name=>'CLEAR'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\6E05\9664')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2185834460937995480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2197278393256903681)
,p_button_name=>'LOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\52A0\8F7D\6570\636E')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2185922933970694993)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2197992557482706090)
,p_button_name=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2185923320712693603)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2197992557482706090)
,p_button_name=>unistr('\6279\91CF\5BFC\5165')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5BFC\5165')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-cloud-upload'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185835877491995478)
,p_name=>'P181_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2197280774628903683)
,p_prompt=>unistr('\4E0A\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_FILE'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'content_disposition', 'attachment',
  'display_as', 'DROPZONE_BLOCK',
  'display_download_link', 'Y',
  'dropzone_description', unistr('\652F\6301\7684\683C\5F0F XLSX'),
  'max_file_size', '5000',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185836287334995475)
,p_name=>'P181_ERROR_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2197280774628903683)
,p_display_as=>'NATIVE_HIDDEN'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185836994503995475)
,p_name=>'P181_FILE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2197282917288903685)
,p_item_default=>unistr('\7C98\8D34\7684\6570\636E')
,p_prompt=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185837351383995474)
,p_name=>'P181_XLSX_WORKSHEET'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2197282917288903685)
,p_prompt=>unistr('XLSX \5DE5\4F5C\8868')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P181_FILE'))
,p_cHeight=>1
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_sheet_count number;',
'begin',
'    select count(*)',
'      into l_sheet_count',
'      from apex_application_temp_files f,',
'           table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
'     where f.name = :P181_FILE;',
'    ',
'     -- display if the XSLX file contains multiple worksheets',
'    return ( l_sheet_count > 1 );',
'exception',
'    when others then ',
'        return false;',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'execute_validations', 'Y',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185851358233995448)
,p_name=>'P181_FLAG'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185851796352995448)
,p_name=>'P181_HIDDEN'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185852168640995447)
,p_name=>'P181_FILENAME'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185852605862995447)
,p_name=>'P181_URL'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185853004891995447)
,p_name=>'P181_ERROR'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(2185853428484995445)
,p_computation_sequence=>10
,p_computation_item=>'P181_FILE_NAME'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select filename',
'  from apex_application_temp_files ',
' where name = :P181_FILE'))
,p_compute_when=>'P181_FILE'
,p_compute_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2185853886024995444)
,p_validation_name=>'Is valid file type'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if apex_data_parser.assert_file_type(',
'       p_file_name => :P181_FILE_NAME,',
'       p_file_type => apex_data_parser.c_file_type_xlsx )',
'then',
'    return true;',
'else',
'    :P181_FILE := null;',
'    return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\6587\4EF6\7C7B\578B\65E0\6548\3002\652F\6301\7684\6587\4EF6\5927\5C0F\4E3A XLSX\3002')
,p_associated_item=>wwv_flow_imp.id(2185835877491995478)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185854548695995442)
,p_name=>unistr('\4E0A\8F7D\6587\4EF6')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P181_FILE'
,p_condition_element=>'P181_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185855103432995440)
,p_event_id=>wwv_flow_imp.id(2185854548695995442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185855446480995439)
,p_name=>'Submit worksheet on change'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P181_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185856017893995438)
,p_event_id=>wwv_flow_imp.id(2185855446480995439)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185856373429995438)
,p_name=>unistr('\83B7\53D6\6587\4EF6URL')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185856910363995438)
,p_event_id=>wwv_flow_imp.id(2185856373429995438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$("#P181_DATA_UPLOAD").parent(''div'').parent(''div'').hide();'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185857387789995437)
,p_event_id=>wwv_flow_imp.id(2185856373429995438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',181,''EAP\8BBE\5907\7BA1\7406'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185857863886995437)
,p_event_id=>wwv_flow_imp.id(2185856373429995438)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FILE VARCHAR2(128);',
'  V_URL  VARCHAR2(256);',
'BEGIN',
'  SELECT FILE_NAME,FILE_URL INTO V_FILE,V_URL ',
'    FROM APEX_UPLOAD_FILE_CONFIG',
'   WHERE FILE_ID = 421;',
'  apex_util.set_session_state(''P181_FILENAME'', V_FILE);',
'  apex_util.set_session_state(''P181_URL'', V_URL);',
'END;'))
,p_attribute_02=>'P181_FILENAME,P181_URL'
,p_attribute_03=>'P181_FILENAME,P181_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185858408174995436)
,p_event_id=>wwv_flow_imp.id(2185856373429995438)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileName = $v(''P181_FILENAME'');',
'var url = $v(''P181_URL'');',
unistr('var a = `<a href="javascript:void(0)" style="display:none" id="a_file" onclick="fileDownload(''${url}'',''${fileName }'')">\4E0B\8F7D\6587\4EF6</a>`;'),
'$("body").append(a);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185859704143995436)
,p_name=>unistr('\5BFC\5165\6570\636E')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2185834460937995480)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185860198663995435)
,p_event_id=>wwv_flow_imp.id(2185859704143995436)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_FAB_ID      NUMBER;',
'V_X_ID        NUMBER;',
'V_Y_ID        NUMBER;',
'V_PROJECT_ID  NUMBER;',
'V_ORG_ID      NUMBER;',
'V_FIRST_CODE  VARCHAR2(32);',
'V_SECOND_CODE VARCHAR2(32);',
'ERROR_DATE    VARCHAR2(1024);',
'BEGIN',
'FOR ITEM IN (SELECT P.LINE_NUMBER,P.COL001, P.COL002, P.COL003,P.COL004, P.COL005, P.COL006,P.COL007, P.COL008, P.COL009,P.COL010, P.COL011, P.COL012',
'   FROM APEX_APPLICATION_TEMP_FILES F,',
'        TABLE( APEX_DATA_PARSER.PARSE(',
'                  P_CONTENT           => F.BLOB_CONTENT,',
'                  P_FILE_NAME         => F.FILENAME,',
'                  P_XLSX_SHEET_NAME   => CASE WHEN :P181_XLSX_WORKSHEET IS NOT NULL THEN :P181_XLSX_WORKSHEET END,',
'                  P_SKIP_ROWS   => 1,',
'                  P_MAX_ROWS          => 10000 ) ) P',
'  WHERE F.NAME = :P181_FILE) LOOP',
unistr('ERROR_DATE := ''\9519\8BEF\6570\636E\FF1A''||TRIM(ITEM.COL001)||'' - ''||TRIM(ITEM.COL002)||'' - ''||TRIM(ITEM.COL003)||'' - ''||TRIM(ITEM.COL004)||'' - ''||TRIM(ITEM.COL005)||'' - ''||TRIM(ITEM.COL006);'),
'SELECT FAB_ID INTO V_FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG = 0 AND NAME = TRIM(ITEM.COL005);',
'SELECT AREA_ID INTO V_X_ID FROM FND_AREAS WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND TYPE = 1 AND FAB_ID = V_FAB_ID AND NAME = TRIM(ITEM.COL007);',
'SELECT AREA_ID INTO V_Y_ID FROM FND_AREAS WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND TYPE = 2 AND FAB_ID = V_FAB_ID AND NAME = TRIM(ITEM.COL006);',
'SELECT PROJECT_ID INTO V_PROJECT_ID FROM TENANT_PROJECT WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND IS_ENABLE = 1 AND  PROJECT_NAME = TRIM(ITEM.COL001);',
'SELECT EXT_ORG_ID INTO V_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG = 0 AND NAME = TRIM(ITEM.COL008);',
'SELECT CODE INTO V_FIRST_CODE FROM TENANT_EVENT_CATEGORY WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND NODE_LEVEL = 1 AND NAME = TRIM(ITEM.COL009);',
'SELECT CODE INTO V_SECOND_CODE FROM TENANT_EVENT_CATEGORY WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND NODE_LEVEL = 2 AND NAME = TRIM(ITEM.COL010) AND PARENT_CODE = V_FIRST_CODE;',
'',
'MERGE INTO BASIC_DEVICE A',
'USING (SELECT V_PROJECT_ID PROJECT_ID,TRIM(ITEM.COL002) DEVICE_CODE,TRIM(ITEM.COL003) DEVICE_NAME,TRIM(ITEM.COL004) IP,V_FAB_ID FAB_ID,',
'      V_Y_ID MAP_AREA_Y_ID,V_X_ID MAP_AREA_X_ID,V_ORG_ID MANAGEMENT_EXT_ORG_ID,V_FIRST_CODE CATEGORY_FIRST_CODE,V_SECOND_CODE CATEGORY_SECOND_CODE,',
unistr('      TRIM(ITEM.COL011) REMARK,DECODE(TRIM(ITEM.COL012),''\662F'',1,0) IS_ENABLE  FROM DUAL) B'),
'ON (A.DEVICE_CODE = B.DEVICE_CODE)',
'WHEN NOT MATCHED THEN',
'INSERT (A.CREATED_BY,A.UPDATED_BY,A.TENANT_ID,A.BASE_DEPT_ID,A.PROJECT_ID,A.DEVICE_CODE,A.DEVICE_NAME,A.IP,A.FAB_ID,A.MAP_AREA_Y_ID,A.MAP_AREA_X_ID,',
'  A.MANAGEMENT_EXT_ORG_ID,A.CATEGORY_FIRST_CODE,A.CATEGORY_SECOND_CODE,A.REMARK,A.IS_ENABLE)',
'VALUES (:USER_ID,:USER_ID,:USERTENANT,:BASE_DEPT_ID,B.PROJECT_ID,B.DEVICE_CODE,B.DEVICE_NAME,B.IP,B.FAB_ID,B.MAP_AREA_Y_ID,B.MAP_AREA_X_ID,',
'  B.MANAGEMENT_EXT_ORG_ID,B.CATEGORY_FIRST_CODE,B.CATEGORY_SECOND_CODE,B.REMARK,B.IS_ENABLE);',
'END LOOP;',
':P181_FLAG := 0;',
'APEX_UTIL.SET_SESSION_STATE(''P181_ERROR'',ERROR_DATE);',
'EXCEPTION',
'WHEN NO_DATA_FOUND THEN',
':P181_FLAG := 1;',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P181_ERROR'',ERROR_DATE);',
'WHEN OTHERS THEN',
'IF (SQLCODE = ''-1'') THEN',
':P181_FLAG := 2;',
'ELSE',
':P181_FLAG := 3;',
'END IF;',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P181_ERROR'',ERROR_DATE);',
'END;',
'APEX_UTIL.SET_SESSION_STATE(''P181_ERROR_ROW_COUNT '',0);'))
,p_attribute_02=>'P181_FLAG,P181_FILE,P181_XLSX_WORKSHEET'
,p_attribute_03=>'P181_FLAG,P181_ERROR,P181_ERROR_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185860677467995435)
,p_event_id=>wwv_flow_imp.id(2185859704143995436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var err_flg = $v(''P181_FLAG'');',
'// console.log(err_flg);',
'if (err_flg == 1){',
unistr('    alert(''\6570\636E\4E0D\5B58\5728!\005Cn''+$v(''P181_ERROR''));'),
'    return false;',
'} ',
'else if (err_flg == 2){',
unistr('    alert(''\6570\636E\5DF2\5B58\5728\FF01\005Cn''+$v(''P181_ERROR''));'),
'    return false;',
'}',
'else if (err_flg == 3){',
unistr('    alert(''\51FA\73B0\672A\77E5\5F02\5E38\FF0C\6570\636E\63D2\5165\5931\8D25\FF01\005Cn''+$v(''P181_ERROR''));'),
'    return false;',
'}',
'else if (err_flg == 0){',
'    return true;',
'}',
'else {',
'    return false;',
'};',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185861199739995434)
,p_event_id=>wwv_flow_imp.id(2185859704143995436)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185924169816688248)
,p_name=>unistr('\4E0B\8F7D')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2185922933970694993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185924621329688247)
,p_event_id=>wwv_flow_imp.id(2185924169816688248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#a_file'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185924978234686424)
,p_name=>unistr('\52A8\6001\9690\85CF')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2185923320712693603)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185925347183686424)
,p_event_id=>wwv_flow_imp.id(2185924978234686424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag = $v(''P181_HIDDEN'');',
'// console.log(flag);',
'if (flag == 0){',
'    $("#P181_DATA_UPLOAD").parent(''div'').parent(''div'').show();',
'',
'} else{',
'    $("#P181_DATA_UPLOAD").parent(''div'').parent(''div'').hide();',
'};',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185925882063686424)
,p_event_id=>wwv_flow_imp.id(2185924978234686424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    if :P181_HIDDEN = 0 then',
'        :P181_HIDDEN := 1;',
'    else',
'        :P181_HIDDEN := 0;',
'    end if;',
'end;'))
,p_attribute_02=>'P181_HIDDEN'
,p_attribute_03=>'P181_HIDDEN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2185854138064995443)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':REQUEST = ''CLEAR'' or :P181_ERROR_ROW_COUNT = 0'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>60290997494210587
);
wwv_flow_imp.component_end;
end;
/

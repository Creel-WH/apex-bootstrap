prompt --application/pages/page_00905
begin
--   Manifest
--     PAGE: 00905
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
 p_id=>905
,p_name=>unistr('\95EE\9898\53CD\9988\5217\8868\FF08\5907\7528\FF09')
,p_alias=>unistr('\95EE\9898\53CD\9988\5217\88681')
,p_step_title=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8030595363029337901)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\64CD\4F5C\FF08\6D4B\8BD5\6570\636E\8DEF\3001\63D0\9192\89C4\5219\3001\4FEE\6539\FF09 wxx'),
'function btn_operate(objId,status) {',
unistr('    console.log("FB_ID\FF1A" + objId);'),
'    $s(''P905_FB_ID'', objId);',
'    $(''#btn_''+status).click();',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.s_1{',
unistr('    white-space: nowrap; /* \4E0D\6362\884C */'),
unistr('    overflow: hidden; /* \9690\85CF\8D85\51FA\7684\5185\5BB9 */'),
unistr('    text-overflow: ellipsis; /* \7528\7701\7565\53F7\8868\793A\88AB\9690\85CF\7684\90E8\5206 */'),
unistr('    max-width: 300px; /* \8BBE\7F6E\6700\5927\5BBD\5EA6\4EE5\9650\5236\6587\672C\7684\663E\793A\957F\5EA6 */'),
'}',
'.hide_btn{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7818210326009096948)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9712259798899207070)
,p_plug_name=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select * from(',
'select FB_ID,',
'       FB_DATE,',
'       u.NAME REQUESTOR,',
'       aale.application_name,',
'       aale.page_name,',
'       REQ_TYPE,',
'       DETAIL,',
'       SEVERITY,',
'       ASSIGNEDTO,',
'       ESTIMATE_DATE,',
'       ACTUAL_DATE,',
'       STATUS,',
'       RESULT,',
'       COMM',
'from JAS_APP_FEEDBACK jas',
'         left join apex_application_pages aale on aale.page_id = jas.page_id and aale.application_id = jas.app_id',
'         left join BASIC_USER u on jas.REQUESTOR = u.JOB_NUMBER and u.DEL_FLAG = 0 and u.TENANT_ID = :USER_TENANT',
'where jas.app_id = :APP_ID',
'  and jas.REQUESTOR = (',
'    case',
'        when :USER_JOB_NUMBER in (''JA015845'', ''JA043586'', ''JA057965'', ''JA045660'', ''JA015929'') then',
'            jas.REQUESTOR',
'        else',
'            :USER_JOB_NUMBER end',
'    ) order by FB_ID desc',
')'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\95EE\9898\53CD\9988\5217\8868')
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
 p_id=>wwv_flow_imp.id(7454004839446727498)
,p_name=>'FB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FB_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454004876444727499)
,p_name=>'FB_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FB_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\53CD\9988\65E5\671F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454004993051727500)
,p_name=>'REQUESTOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQUESTOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\53CD\9988\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(7454005078044727501)
,p_name=>'APPLICATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APPLICATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(7454005259007727503)
,p_name=>'PAGE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAGE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\529F\80FD\9875\9762')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454005435547727504)
,p_name=>'REQ_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REQ_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\9700\6C42\7C7B\578B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(7454005500244727505)
,p_name=>'DETAIL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DETAIL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\95EE\9898\63CF\8FF0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_value_css_classes=>'s_1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_item_width=>300
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(7454005639444727506)
,p_name=>'Severity'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEVERITY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5F71\54CD\7A0B\5EA6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>64
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
 p_id=>wwv_flow_imp.id(7454005649947727507)
,p_name=>'ASSIGNEDTO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ASSIGNEDTO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\95EE\9898\8D1F\8D23\4EBA')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>256
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
 p_id=>wwv_flow_imp.id(7454005758105727508)
,p_name=>'ESTIMATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTIMATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\9884\8BA1\89E3\51B3\65F6\95F4')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454005879988727509)
,p_name=>'ACTUAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTUAL_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\5B9E\9645\89E3\51B3\65F6\95F4')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454005950486727510)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>64
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
 p_id=>wwv_flow_imp.id(7454006113523727511)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7ED3\679C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7454006227656727512)
,p_name=>'COMM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COMM'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7524004643945958864)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(7524004835582958865)
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
 p_id=>wwv_flow_imp.id(7524005025529958867)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span >',
    unistr('    <a href="#" onclick="btn_operate(''&FB_ID.'',''modify'')" style="text-dcoration:none;"> \7F16\8F91  </a>'),
    unistr('    <!-- \67E5\770B\622A\5C4F   -->'),
    unistr('    <a href="#" onclick="btn_operate(''&FB_ID.'',''img'')" style="text-dcoration:none;">  \622A\5C4F  </a>'),
    '    <!-- <img src="#APEX_FILES#app_ui/img/icons/apex-edit-view.png" class="apex-edit-view" alt=""> -->',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(7454004716841727497)
,p_internal_uid=>1228102866512786117
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(7524010657713960506)
,p_interactive_grid_id=>wwv_flow_imp.id(7454004716841727497)
,p_static_id=>'3820215'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(7524010915430960506)
,p_report_id=>wwv_flow_imp.id(7524010657713960506)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7141990966861999371)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(7524005025529958867)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524011369277960514)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(7454004839446727498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524012242300960523)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(7454004876444727499)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>99.359
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524013228906960526)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(7454004993051727500)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.3438
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524014111756960528)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(7454005078044727501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524015875062960533)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(7454005259007727503)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>124.3594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524016784390960535)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(7454005435547727504)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524017708453960537)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(7454005500244727505)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>316.922
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524018587489960540)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(7454005639444727506)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>95.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524019507694960542)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(7454005649947727507)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>87.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524020365893960545)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(7454005758105727508)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524021300337960547)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(7454005879988727509)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524022155271960549)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(7454005950486727510)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78.344
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524023068688960552)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(7454006113523727511)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>240.312
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524024025646960554)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(7454006227656727512)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>132.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(7524025830836960559)
,p_view_id=>wwv_flow_imp.id(7524010915430960506)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(7524004643945958864)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6492133398966577742)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9712259798899207070)
,p_button_name=>unistr('\7F16\8F91')
,p_button_static_id=>'btn_modify'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\7F16\8F91')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6492133759144577744)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(9712259798899207070)
,p_button_name=>unistr('\622A\5C4F')
,p_button_static_id=>'btn_img'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\622A\5C4F')
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6492134163200577744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(9712259798899207070)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.:10902::'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6492137518472577783)
,p_branch_name=>unistr('\7F16\8F91-\8F6C\5230\9875 902')
,p_branch_action=>'f?p=&APP_ID.:902:&SESSION.::&DEBUG.:902:P902_FB_ID:&P905_FB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6492133398966577742)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(6492137853413577783)
,p_branch_name=>unistr('\622A\5C4F-\8F6C\5230\9875 903')
,p_branch_action=>'f?p=&APP_ID.:903:&SESSION.::&DEBUG.:903:P903_FB_ID:&P905_FB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(6492133759144577744)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7524024174964959040)
,p_name=>'P905_FB_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9712259798899207070)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6492136461582577776)
,p_name=>unistr('\7F16\8F91\62A5\8868 - \5BF9\8BDD\6846\5DF2\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6492137028600577780)
,p_event_id=>wwv_flow_imp.id(6492136461582577776)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(9712259798899207070)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6492134987739577760)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(9712259798899207070)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\95EE\9898\53CD\9988\5217\8868 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>266233137410636380
);
wwv_flow_imp.component_end;
end;
/

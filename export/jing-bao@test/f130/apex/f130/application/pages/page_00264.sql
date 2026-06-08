prompt --application/pages/page_00264
begin
--   Manifest
--     PAGE: 00264
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
 p_id=>264
,p_name=>unistr('\8BBE\5907\6570\636E')
,p_alias=>unistr('\8BBE\5907\6570\636E')
,p_step_title=>unistr('\8BBE\5907\6570\636E')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// var $tdElements_1 = $("td:contains(''\672A\70B9\68C0''), td:contains(''\8FC7\671F\672A\70B9\68C0'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\70B9\68C0'')");'),
'// $tdElements_2.addClass("green");',
'',
unistr('// var $tdElements_3 = $("td:contains(''\5F02\5E38''),td:contains(''\505C\673A'')");'),
'// $tdElements_3.addClass("red");',
'',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\70B9\68C0''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\70B9\68C0'' || $(e).text() == ''\8FC7\671F\672A\70B9\68C0''  || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.green{',
'    background-color: #2AB200;',
'    color: white;',
'}',
'',
'.yellow{',
'    background-color: #FA9100;',
'    color: red;',
'}',
'',
'.red{',
'    color: red;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1578002586446288980)
,p_plug_name=>unistr('\8BBE\5907\5DE1\68C0')
,p_region_name=>'patrol'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>150
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT C.RECORD_ID,   --wxx  2024-12-03  \7528\751F\6548\65F6\95F4\67E5'),
'       C.DEVICE_ID,',
'       C.DEVICE_CODE,',
'       C.DEVICE_NAME,',
'       C.FORM_ID,',
'       C.FORM_NAME,',
'       C.FAB_ID,',
'       C.FAB_NAME,',
'       C.DEPT_ID   EXT_ORG_ID,',
'       C.DEPT_NAME EXT_ORG_NAME,',
'       C.AREA_ID,',
'       C.AREA_NAME,',
'       C.LINE_ID,',
'       C.LINE_NAME,',
'       C.STATUS,',
'       C.RESULT,',
'       CASE',
'           WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'           ELSE CHECK_USER_JOB_NUMBER || ''-'' || C.CHECK_USER_NAME',
'           END AS  CHECK_USER_NAME,',
'       C.CHECK_EXPIRE_DATE,',
'       C.CREATION_DATE,',
'       C.CHECK_DATE',
'FROM CHECK_RECORD C',
'         LEFT JOIN CHECK_FORM F ON C.FORM_ID = F.FORM_ID',
'         LEFT JOIN CHECK_CLASSIFY Y ON F.CLASSIFY_ID = Y.CLASSIFY_ID',
'WHERE C.TENANT_ID = :USERTENANT',
'  AND C.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND Y.CODE = ''PATROL''',
unistr('  AND (C.STATUS = :P264_STATUS OR nvl(:P264_STATUS,''ALL'') = ''ALL'')  --wxx  2024-12-09 \7B5B\9009\6761\4EF6\4E0D\751F\6548'),
'  AND (C.RESULT = :P264_RESULT OR nvl(:P264_RESULT,''ALL'') = ''ALL'')',
'--   AND (:P264_STATUS = ''ALL'' OR C.STATUS = :P264_STATUS)',
'--   AND (:P264_RESULT = ''ALL'' OR C.RESULT = :P264_RESULT)',
'  AND C.RECORD_ID IN (SELECT R.RECORD_ID',
'                      FROM CHECK_RECORD R',
'                      WHERE (:P264_DEPT = 0 OR R.DEPT_ID = NVL(:P264_DEPT, :USERDEPT))',
'                        AND R.CREATION_DATE >= TO_DATE(:P264_START_DATE, ''YYYY-MM-DD HH24:MI'')',
'                        AND R.CREATION_DATE < TO_DATE(:P264_END_DATE, ''YYYY-MM-DD HH24:MI'') ',
'                        AND R.CHECK_EXPIRE_DATE IS NOT NULL',
'                      GROUP BY R.FORM_ID, R.DEVICE_CODE, R.RECORD_ID)',
'  AND C.CREATION_DATE >= TO_DATE(:P264_START_DATE, ''YYYY-MM-DD HH24:MI'')',
'  AND C.CREATION_DATE < TO_DATE(:P264_END_DATE, ''YYYY-MM-DD HH24:MI'') ',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P264_DEPT,P264_STATUS,P264_RESULT,P264_START_DATE,P264_END_DATE'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\8BBE\5907\5DE1\68C0')
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
 p_id=>wwv_flow_imp.id(847639792163824400)
,p_name=>'CHECK_EXPIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_EXPIRE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5931\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(878183640980210679)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\70B9\68C0\65E5\671F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(1578002771677288982)
,p_name=>'RECORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578002920490288983)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578002970206288984)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>125
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
 p_id=>wwv_flow_imp.id(1578003040588288985)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003184751288986)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8868\5355\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(1578003279516288987)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003365861288988)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003480111288989)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003559084288990)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003686822288991)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003736601288992)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578003908305288993)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578004011285288994)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578004056900288995)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\70B9\68C0\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(308006499265578071)
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
 p_id=>wwv_flow_imp.id(1578004190508288996)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\70B9\68C0\7ED3\679C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5F02\5E38;ERROR,\6B63\5E38;NORMAL,\590D\68C0\6B63\5E38;RECHECK_NORMAL,\505C\673A;STOP')
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
 p_id=>wwv_flow_imp.id(1578004333038288997)
,p_name=>'CHECK_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578004487546288999)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\751F\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1578004595804289000)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_link_target=>'f?p=&APP_ID.:265:&SESSION.::&DEBUG.:265:P265_DEVICE_ID,P265_TYPT,P265_DEPT_ID:&DEVICE_ID.,PATROL,&EXT_ORG_ID.'
,p_link_text=>'&DEVICE_CODE.'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1578002721910288981)
,p_internal_uid=>980540853392507466
,p_is_editable=>false
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
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(1518662005311507961)
,p_interactive_grid_id=>wwv_flow_imp.id(1578002721910288981)
,p_static_id=>'112731'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1518662216225507961)
,p_report_id=>wwv_flow_imp.id(1518662005311507961)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(788789951770889085)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(878183640980210679)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>130
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873415076042218043)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(847639792163824400)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518662718616507956)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1578002771677288982)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518663606500507952)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1578002920490288983)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518664493017507950)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1578002970206288984)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518665367126507947)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1578003040588288985)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518666316114507944)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1578003184751288986)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518667148118507941)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1578003279516288987)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518668058339507939)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1578003365861288988)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>92
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518669028940507936)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1578003480111288989)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518669885388507933)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1578003559084288990)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518670805258507930)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1578003686822288991)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518671656983507927)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1578003736601288992)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518672614526507924)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1578003908305288993)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518673515239507921)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1578004011285288994)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518674373784507918)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(1578004056900288995)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518675247406507916)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(1578004190508288996)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>105
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518676170686507913)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(1578004333038288997)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518677990131507907)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(1578004487546288999)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>180
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1518678933964507905)
,p_view_id=>wwv_flow_imp.id(1518662216225507961)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1578004595804289000)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2634056880869224508)
,p_plug_name=>unistr('\8BBE\5907\7EF4\4FDD')
,p_region_name=>'maintenance'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>160
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT C.RECORD_ID,      --wxx  2024-12-03  \7528\751F\6548\3001\5931\6548\65F6\95F4\67E5'),
'       C.DEVICE_ID,',
'       C.DEVICE_CODE,',
'       C.DEVICE_NAME,',
'       C.FORM_ID,',
'       C.FORM_NAME,',
'       C.FAB_ID,',
'       C.FAB_NAME,',
'       C.DEPT_ID EXT_ORG_ID,',
'       C.DEPT_NAME EXT_ORG_NAME,',
'       C.AREA_ID,',
'       C.AREA_NAME,',
'       C.LINE_ID,',
'       C.LINE_NAME,',
'       C.STATUS,',
'       C.RESULT,',
'       CASE',
'           WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'           ELSE CHECK_USER_JOB_NUMBER || ''-'' || C.CHECK_USER_NAME',
'           END AS CHECK_USER_NAME,',
'       C.CHECK_EXPIRE_DATE,',
'       C.CREATION_DATE,',
'	   C.CHECK_DATE',
'FROM CHECK_RECORD C',
'left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'WHERE C.TENANT_ID = :USERTENANT',
'  and C.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and Y.CODE=''MAINTENANCE''',
unistr('  AND (C.STATUS = :P264_STATUS OR nvl(:P264_STATUS,''ALL'') = ''ALL'')  --wxx  2024-12-09 \7B5B\9009\6761\4EF6\4E0D\751F\6548'),
'  AND (C.RESULT = :P264_RESULT OR nvl(:P264_RESULT,''ALL'') = ''ALL'')',
'--   AND (:P264_STATUS = ''ALL'' OR c.STATUS = :P264_STATUS)',
'--   AND (:P264_RESULT = ''ALL'' OR c.RESULT =:P264_RESULT)',
'  AND C.RECORD_ID IN (SELECT R.RECORD_ID',
'                      FROM CHECK_RECORD R',
'                      WHERE (:P264_DEPT = 0 OR R.DEPT_ID = NVL(:P264_DEPT, :USERDEPT))',
'                        AND R.CREATION_DATE >= TO_DATE(:P264_START_DATE, ''YYYY-MM-DD HH24:MI'')',
'                        AND R.CREATION_DATE < TO_DATE(:P264_END_DATE, ''YYYY-MM-DD HH24:MI'') ',
'                        AND R.CHECK_EXPIRE_DATE IS NOT NULL',
'                      GROUP BY R.FORM_ID, R.DEVICE_CODE, R.RECORD_ID)',
'  AND C.CREATION_DATE >= TO_DATE(:P264_START_DATE, ''YYYY-MM-DD HH24:MI'')',
'  AND C.CREATION_DATE < TO_DATE(:P264_END_DATE, ''YYYY-MM-DD HH24:MI'') ',
'',
'',
'',
unistr('--   and c.RECORD_ID in (       --\7528\7EF4\4FDD\65F6\95F4\67E5'),
'--     select max(r.RECORD_ID)',
'--     from CHECK_RECORD r',
'--     where (:P264_DEPT = 0 OR r.DEPT_ID = nvl(:P264_DEPT, :USERDEPT))',
'--       and NVL(r.CHECK_DATE,r.CREATION_DATE) >= TO_DATE(:P264_DATE, ''YYYY-MM-DD HH24:MI'')',
'--       AND NVL(r.CHECK_DATE,r.CREATION_DATE) <= TO_DATE(:P264_DATE, ''YYYY-MM-DD HH24:MI'') + 1',
'--       and r.CHECK_EXPIRE_DATE is not null',
'--     group by r.FORM_ID, r.DEVICE_CODE',
'-- )and NVL(c.CHECK_DATE,c.CREATION_DATE) >= TO_DATE(:P264_DATE, ''YYYY-MM-DD HH24:MI'')',
'--       AND NVL(c.CHECK_DATE,c.CREATION_DATE) <= TO_DATE(:P264_DATE, ''YYYY-MM-DD HH24:MI'') + 1',
'-- ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P264_DEPT,P264_STATUS,P264_DATE,P264_RESULT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\8BBE\5907\7EF4\4FDD')
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
 p_id=>wwv_flow_imp.id(847639898748824401)
,p_name=>'CHECK_EXPIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_EXPIRE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5931\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(878183756157210680)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\68C0\67E5\65E5\671F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(2634057119460224510)
,p_name=>'RECORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057172869224511)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057271077224512)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>125
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
 p_id=>wwv_flow_imp.id(2634057459296224513)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057485230224514)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8868\5355\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(2634057584659224515)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057698115224516)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057795495224517)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2634057910431224518)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636858774682140669)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636858913765140670)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636859012197140671)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636859076927140672)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636859247524140673)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EF4\4FDD\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(232199720684498451)
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
 p_id=>wwv_flow_imp.id(2636859302789140674)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EF4\4FDD\7ED3\679C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5F02\5E38;ERROR,\6B63\5E38;NORMAL,\590D\68C0\6B63\5E38;RECHECK_NORMAL,\505C\673A;STOP')
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
 p_id=>wwv_flow_imp.id(2636859379746140675)
,p_name=>'CHECK_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636859615482140677)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\751F\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>true
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
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636859716173140678)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_link_target=>'f?p=&APP_ID.:265:&SESSION.::&DEBUG.:265:P265_DEVICE_ID,P265_TYPT,P265_DEPT_ID:&DEVICE_ID.,MAINTENANCE,&EXT_ORG_ID.'
,p_link_text=>'&DEVICE_CODE.'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2634056994642224509)
,p_internal_uid=>2036595126124442994
,p_is_editable=>false
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
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2636864681652143594)
,p_interactive_grid_id=>wwv_flow_imp.id(2634056994642224509)
,p_static_id=>'2911009'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2636864920676143595)
,p_report_id=>wwv_flow_imp.id(2636864681652143594)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(873820455323916154)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(847639898748824401)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>76.00001831054688
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(878191299055217185)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(878183756157210680)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636865800569143602)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2634057119460224510)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636866667323143607)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2634057172869224511)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636867619107143610)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2634057271077224512)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636868506812143614)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2634057459296224513)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636869418436143617)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2634057485230224514)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>115.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636870350910143620)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2634057584659224515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636871183646143623)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2634057698115224516)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636872088086143626)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2634057795495224517)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636872968841143629)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2634057910431224518)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636873907469143632)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2636858774682140669)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636874773145143635)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2636858913765140670)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>68.1328
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636875752549143638)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2636859012197140671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636876573267143641)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2636859076927140672)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>71.13300000000001
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636877526784143645)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2636859247524140673)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>126.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636878436457143649)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2636859302789140674)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636879292699143652)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2636859379746140675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636881108532143658)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2636859615482140677)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90.075
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636881993610143662)
,p_view_id=>wwv_flow_imp.id(2636864920676143595)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2636859716173140678)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101.625
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2901851531977263193)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(466012792391515738)
,p_button_sequence=>140
,p_button_name=>unistr('\4E0B\8F7D')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--stretch:t-Button--gapLeft'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D')
,p_button_alignment=>'RIGHT'
,p_grid_new_row=>'N'
,p_grid_column_span=>1
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(466012888068515739)
,p_branch_action=>'f?p=&APP_ID.:1000:&SESSION.::&DEBUG.:1000:P1000_CODE:&P264_STATUS_NAME.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228980210046966655)
,p_name=>'P264_START_DATE'
,p_item_sequence=>110
,p_item_default=>'select sysdate from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\751F\6548\5F00\59CB\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P264_END_DATE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'time_increment', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(228980960788966662)
,p_name=>'P264_END_DATE'
,p_item_sequence=>120
,p_item_default=>'select sysdate+1 from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\751F\6548\7ED3\675F\65F6\95F4')
,p_format_mask=>'YYYY-MM-DD HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P264_START_DATE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'Y',
  'time_increment', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(847659265973824374)
,p_name=>'P264_RESULT'
,p_item_sequence=>90
,p_prompt=>unistr('\7ED3\679C')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\5168\90E8'' result,''ALL'' ids from dual'),
'union all',
unistr('select  ''\6B63\5E38'' result, ''NORMAL'' ids from dual'),
'union all',
unistr('select ''\5F02\5E38'' result,''ERROR'' ids from dual'),
'union all',
unistr('select ''\505C\673A'' result,''STOP'' ids from dual'),
'union all',
unistr('select  ''\590D\68C0\6B63\5E38'' result,''RECHECK_NORMAL'' ids from dual')))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2446181947845021051)
,p_name=>'P264_STATUS_NAME'
,p_item_sequence=>130
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:\8BBE\5907\5DE1\68C0;PATROL,\8BBE\5907\7EF4\4FDD;MAINTENANCE')
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629724731886535575)
,p_name=>'P264_DEPT'
,p_item_sequence=>70
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT ''\5168\90E8'', 0'),
'FROM DUAL',
'UNION ALL',
'SELECT TO_CHAR(NAME) NAME, EXT_ORG_ID',
'FROM MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID =:BASE_DEPT_ID',
'AND DEL_FLAG = 0',
unistr('--   and PARENT_ID is not null  --\751F\4EA7\73AF\5883\9700\89E3\9664\6CE8\91CA'),
';'))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'null',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629725200338535576)
,p_name=>'P264_STATUS'
,p_item_sequence=>80
,p_prompt=>unistr('\72B6\6001')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\5168\90E8'' names ,''ALL'' ids from dual'),
'union all',
unistr('select decode(:P264_STATUS_NAME,''MAINTENANCE'',''\672A\5B8C\6210'',''\672A\70B9\68C0'') names ,''WAIT'' ids from dual'),
'union all',
unistr('select decode(:P264_STATUS_NAME,''MAINTENANCE'',''\5DF2\5B8C\6210'',''\5DF2\70B9\68C0'') names ,''COMPLETED'' ids from dual'),
'union all',
unistr('select decode(:P264_STATUS_NAME,''MAINTENANCE'',''\8FC7\671F\672A\5B8C\6210'',''\8FC7\671F\672A\70B9\68C0'') names ,''OVERDUE'' ids from dual'),
'union all',
unistr('select decode(:P264_STATUS_NAME,''MAINTENANCE'',''\5BA1\6838\4E2D'',''\5BA1\6838\4E2D'') names ,''WAIT_REVIEW'' ids from dual'),
'union all',
unistr('select decode(:P264_STATUS_NAME,''MAINTENANCE'',''\5BA1\6838\672A\901A\8FC7'',''\5BA1\6838\672A\901A\8FC7'') names ,''REJECT'' ids from dual;')))
,p_lov_cascade_parent_items=>'P264_STATUS_NAME'
,p_ajax_items_to_submit=>'P264_STATUS_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629725523610535576)
,p_name=>'P264_DATE'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_item_default=>'select sysdate from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\65E5\671F\7B5B\9009')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629725976126535576)
,p_name=>'P264_ROW_COUNT'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633350720126690624)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633351265268690624)
,p_event_id=>wwv_flow_imp.id(633350720126690624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P264_STATUS_NAME'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'PATROL'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228981305719966666)
,p_event_id=>wwv_flow_imp.id(633350720126690624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228981380509966667)
,p_event_id=>wwv_flow_imp.id(633350720126690624)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633351662445690624)
,p_name=>unistr('\9690\85CF')
,p_event_sequence=>15
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_STATUS_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633352164307690624)
,p_event_id=>wwv_flow_imp.id(633351662445690624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P264_STATUS'',''ALL'');',
'$s(''P264_RESULT'',''ALL'');',
'if($v(''P264_STATUS_NAME'') ==''PATROL''){',
'    $x_Show("patrol"); ',
'    $x_Hide("maintenance");',
'}else{',
'    $x_Show("maintenance");',
'    $x_Hide("patrol");',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633352585790690623)
,p_event_id=>wwv_flow_imp.id(633351662445690624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633353161801690623)
,p_event_id=>wwv_flow_imp.id(633351662445690624)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633353549341690623)
,p_name=>unistr('\5237\65B0\90E8\95E8')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_DEPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633353994902690623)
,p_event_id=>wwv_flow_imp.id(633353549341690623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633354546822690623)
,p_event_id=>wwv_flow_imp.id(633353549341690623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633354937608690623)
,p_name=>unistr('\5237\65B0\72B6\6001')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633355414080690622)
,p_event_id=>wwv_flow_imp.id(633354937608690623)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633355898211690622)
,p_event_id=>wwv_flow_imp.id(633354937608690623)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633356313548690622)
,p_name=>unistr('\5237\65B0\65E5\671F')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633356865513690621)
,p_event_id=>wwv_flow_imp.id(633356313548690622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633357298115690621)
,p_event_id=>wwv_flow_imp.id(633356313548690622)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633357764313690621)
,p_name=>unistr('\589E\52A0\989C\82721')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633358244510690621)
,p_event_id=>wwv_flow_imp.id(633357764313690621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// var $tdElements_1 = $("td:contains(''\672A\70B9\68C0''), td:contains(''\8FC7\671F\672A\70B9\68C0'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\70B9\68C0'')");'),
'// $tdElements_2.addClass("green");',
'',
unistr('// var $tdElements_3 = $("td:contains(''\5F02\5E38''),td:contains(''\505C\673A'')");'),
'// var $tdElements_3 = $("td");',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\70B9\68C0''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\70B9\68C0'' || $(e).text() == ''\8FC7\671F\672A\70B9\68C0'' || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})',
'// $tdElements_3.addClass("red");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633358596577690621)
,p_name=>unistr('\589E\52A0\989C\8272_\7EF4\4FDD1')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633359126310690620)
,p_event_id=>wwv_flow_imp.id(633358596577690621)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// var $tdElements_1 = $("td:contains(''\672A\5B8C\6210''), td:contains(''\8FC7\671F\672A\5B8C\6210'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\5B8C\6210'')");'),
'// $tdElements_2.addClass("green");',
'',
unistr('// var $tdElements_3 = $("td:contains(''\5F02\5E38''),td:contains(''\505C\673A'')");'),
'// $tdElements_3.addClass("red");',
'',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\5B8C\6210''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\5B8C\6210'' || $(e).text() == ''\8FC7\671F\672A\5B8C\6210'' || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633359557548690620)
,p_name=>unistr('\589E\52A0\989C\82722')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridreportchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633360062813690620)
,p_event_id=>wwv_flow_imp.id(633359557548690620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// var $tdElements_1 = $("td:contains(''\672A\70B9\68C0''), td:contains(''\8FC7\671F\672A\70B9\68C0'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\70B9\68C0'')");'),
'// $tdElements_2.addClass("green");',
'',
unistr('// var $tdElements_3 = $("td:contains(''\5F02\5E38''),td:contains(''\505C\673A'')");'),
'// $tdElements_3.addClass("red");',
'',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\70B9\68C0''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\70B9\68C0'' || $(e).text() == ''\8FC7\671F\672A\70B9\68C0'' || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633360433015690620)
,p_name=>unistr('\589E\52A0\989C\8272_\7EF4\4FDD2')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridreportchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633360955447690620)
,p_event_id=>wwv_flow_imp.id(633360433015690620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// var $tdElements_1 = $("td:contains(''\672A\5B8C\6210''), td:contains(''\8FC7\671F\672A\5B8C\6210'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\5B8C\6210'')");'),
'// $tdElements_2.addClass("green");',
'',
unistr('// var $tdElements_3 = $("td:contains(''\5F02\5E38''),td:contains(''\505C\673A'')");'),
'// $tdElements_3.addClass("red");',
'',
'',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\5B8C\6210''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\5B8C\6210'' || $(e).text() == ''\8FC7\671F\672A\5B8C\6210''  || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633361325889690619)
,p_name=>unistr('\5237\65B0\7ED3\679C')
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_RESULT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633361776785690619)
,p_event_id=>wwv_flow_imp.id(633361325889690619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633362357193690619)
,p_event_id=>wwv_flow_imp.id(633361325889690619)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228980655218966659)
,p_name=>unistr('\5237\65B0\751F\6548\65F6\95F4')
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228980681468966660)
,p_event_id=>wwv_flow_imp.id(228980655218966659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228980773747966661)
,p_event_id=>wwv_flow_imp.id(228980655218966659)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(228980988184966663)
,p_name=>unistr('\5237\65B0\5931\6548\65F6\95F4')
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P264_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228981106064966664)
,p_event_id=>wwv_flow_imp.id(228980988184966663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2634056880869224508)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(228981173482966665)
,p_event_id=>wwv_flow_imp.id(228980988184966663)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1578002586446288980)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

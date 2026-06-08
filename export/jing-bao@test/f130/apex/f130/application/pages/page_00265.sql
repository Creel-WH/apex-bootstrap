prompt --application/pages/page_00265
begin
--   Manifest
--     PAGE: 00265
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
 p_id=>265
,p_name=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5')
,p_alias=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5')
,p_step_title=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P265_DEVICE_CODE''));',
'var itemValue = $(''#P265_DEVICE_CODE'').val(); ',
unistr('$(".t-Breadcrumb-label:contains(''\67E5\770B\8BE6\60C5'')").text(itemValue);'),
'',
unistr('// var $tdElements_1 = $("td:contains(''\672A\70B9\68C0''), td:contains(''\8FC7\671F\672A\70B9\68C0'')");'),
'// $tdElements_1.addClass("yellow");',
'',
unistr('// var $tdElements_2 = $("td:contains(''\5DF2\70B9\68C0'')");'),
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
unistr('    if($(e).text() == ''\5DF2\70B9\68C0''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\70B9\68C0'' || $(e).text() == ''\8FC7\671F\672A\70B9\68C0''){'),
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
 p_id=>wwv_flow_imp.id(2636901677249120663)
,p_plug_name=>unistr('\8BB0\5F55\8BE6\60C5-\7EF4\4FDD')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT C.RECORD_ID,',
'       C.DEVICE_ID,',
'       C.DEVICE_CODE,',
'       C.DEVICE_NAME,',
'       C.FORM_ID,',
'       C.FORM_NAME,',
'       C.STATUS,',
'       C.RESULT,',
'       CASE',
'           WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'           ELSE CHECK_USER_JOB_NUMBER || ''-'' || C.CHECK_USER_NAME',
'           END AS CHECK_USER_NAME,',
'       C.CHECK_DATE,',
'       C.CREATION_DATE,',
'	   C.CHECK_EXPIRE_DATE',
'FROM CHECK_RECORD C',
' left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'        left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'WHERE C.TENANT_ID = :USERTENANT and c.DEPT_ID=:P265_DEPT_ID',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND C.DEVICE_ID = :P265_DEVICE_ID',
'  and Y.CODE=''MAINTENANCE''',
'  AND (:P265_FORM_WEIBAO = 0 OR C.FORM_ID = :P265_FORM_WEIBAO)',
'  AND (:P265_RESULT = ''ALL'' OR C.RESULT = :P265_RESULT)',
'      AND (:P265_STATUS = ''ALL'' OR C.STATUS = :P265_STATUS)',
'  AND C.CREATION_DATE >= TO_DATE(:P265_START_DATE, ''YYYY-MM-DD'')',
'  AND C.CREATION_DATE <= TO_DATE(:P265_END_DATE, ''YYYY-MM-DD'') + 1',
' and c.CHECK_EXPIRE_DATE is not null',
' ;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P265_DEVICE_ID,P265_RESULT,P265_START_DATE,P265_END_DATE,P265_FORM_WEIBAO,P265_DEPT_ID,P265_STATUS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P265_TYPT'
,p_plug_display_when_cond2=>'MAINTENANCE'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\8BB0\5F55\8BE6\60C5-\7EF4\4FDD')
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
 p_id=>wwv_flow_imp.id(466013137293515741)
,p_name=>'CHECK_EXPIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_EXPIRE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\5931\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(2636901873304120665)
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
 p_id=>wwv_flow_imp.id(2636902029120120666)
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
 p_id=>wwv_flow_imp.id(2636902158435120667)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636902167937120668)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
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
 p_id=>wwv_flow_imp.id(2636902299000120669)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636902439750120670)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8868\5355\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(2636902499817120671)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EF4\4FDD\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(2636902641784120672)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7EF4\4FDD\7ED3\679C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\6B63\5E38;NORMAL,\5F02\5E38;ERROR,\590D\68C0\6B63\5E38;RECHECK_NORMAL,\505C\673A;STOP')
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
 p_id=>wwv_flow_imp.id(2636902703913120673)
,p_name=>'CHECK_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\68C0\67E5\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>71
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
 p_id=>wwv_flow_imp.id(2636902783717120674)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\68C0\67E5\65E5\671F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(2636902883501120675)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\751F\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2636903044871120676)
,p_name=>'OPERATE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_label=>unistr('\67E5\770B\70B9\68C0\9879')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', unistr('<span>\67E5\770B\660E\7EC6</span>'))).to_clob
,p_link_target=>'f?p=&APP_ID.:266:&SESSION.::&DEBUG.:266:P266_RECORD_ID,P266_TYPE:&RECORD_ID.,MAINTENANCE'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2636901781855120664)
,p_internal_uid=>2039439913337339149
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2636960476670224767)
,p_interactive_grid_id=>wwv_flow_imp.id(2636901781855120664)
,p_static_id=>'2911557'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2636960700103224767)
,p_report_id=>wwv_flow_imp.id(2636960476670224767)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(409237639588498085)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(466013137293515741)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636961176815224770)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2636901873304120665)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636962154548224773)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2636902029120120666)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636963046377224776)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2636902158435120667)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636963902200224779)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2636902167937120668)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636964849424224782)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2636902299000120669)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636965676096224786)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2636902439750120670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636966629083224789)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2636902499817120671)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636967494896224792)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2636902641784120672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636968384217224795)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2636902703913120673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636969362723224798)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2636902783717120674)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636970249732224801)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2636902883501120675)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2636971082360224805)
,p_view_id=>wwv_flow_imp.id(2636960700103224767)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2636903044871120676)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2901911100227258348)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3165124577259128992)
,p_plug_name=>unistr('\8BB0\5F55\8BE6\60C5-\70B9\68C0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' SELECT C.RECORD_ID,',
'                C.DEVICE_ID,',
'                C.DEVICE_CODE,',
'                C.DEVICE_NAME,',
'                C.FORM_ID,',
'                C.FORM_NAME,',
'                C.STATUS,',
'                C.RESULT,',
'                CASE',
'                    WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'                    ELSE CHECK_USER_JOB_NUMBER || ''-'' || C.CHECK_USER_NAME',
'                    END AS CHECK_USER_NAME,',
'                C.CHECK_DATE,',
'                C.CREATION_DATE,',
'	            C.CHECK_EXPIRE_DATE',
'         FROM CHECK_RECORD C',
'                  left join CHECK_FORM F on C.FORM_ID = F.FORM_ID',
'                  left join CHECK_CLASSIFY Y on F.CLASSIFY_ID = Y.CLASSIFY_ID',
'         WHERE C.TENANT_ID = :USERTENANT',
'           and c.DEPT_ID = :P265_DEPT_ID',
'           and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'           AND C.DEVICE_ID = :P265_DEVICE_ID',
'           and Y.CODE = ''PATROL''',
'           AND (:P265_FORM = 0 OR C.FORM_ID = :P265_FORM)',
'           AND (:P265_RESULT = ''ALL'' OR C.RESULT = :P265_RESULT)',
'           AND (:P265_STATUS = ''ALL'' OR C.STATUS = :P265_STATUS)',
'           AND C.CREATION_DATE >= TO_DATE(:P265_START_DATE, ''YYYY-MM-DD'')',
'           AND C.CREATION_DATE <= TO_DATE(:P265_END_DATE, ''YYYY-MM-DD'') + 1',
' and c.CHECK_EXPIRE_DATE is not null',
' ;',
'',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P265_DEVICE_ID,P265_RESULT,P265_START_DATE,P265_END_DATE,P265_FORM,P265_DEPT_ID,P265_STATUS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P265_TYPT'
,p_plug_display_when_cond2=>'PATROL'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\8BB0\5F55\8BE6\60C5-\70B9\68C0')
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
 p_id=>wwv_flow_imp.id(466012959590515740)
,p_name=>'CHECK_EXPIRE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_EXPIRE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\5931\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(2907019538707830477)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2907019559294830478)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2907019654124830479)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(2907019828695830480)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(2907019869033830481)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(2907020035366830482)
,p_name=>'FORM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8868\5355\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(2907020340442830485)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\70B9\68C0\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(308006499265578071)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(2907020345275830486)
,p_name=>'RESULT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RESULT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\70B9\68C0\7ED3\679C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\6B63\5E38;NORMAL,\5F02\5E38;ERROR,\590D\68C0\6B63\5E38;RECHECK_NORMAL,\505C\673A;STOP')
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
 p_id=>wwv_flow_imp.id(2907020479689830487)
,p_name=>'CHECK_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\70B9\68C0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>71
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
 p_id=>wwv_flow_imp.id(2907020615352830488)
,p_name=>'CHECK_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\70B9\68C0\65E5\671F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2907627026776003939)
,p_name=>'OPERATE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_label=>unistr('\67E5\770B\70B9\68C0\9879')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', unistr('<span>\67E5\770B\660E\7EC6</span>'))).to_clob
,p_link_target=>'f?p=&APP_ID.:266:&SESSION.::&DEBUG.:266:P266_RECORD_ID,P266_TYPE:&RECORD_ID.,PATROL'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2908429194249602041)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\751F\6548\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3165125291204128999)
,p_internal_uid=>2567663422686347484
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3172790783665170886)
,p_interactive_grid_id=>wwv_flow_imp.id(3165125291204128999)
,p_static_id=>'2673637'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3172791018032170886)
,p_report_id=>wwv_flow_imp.id(3172790783665170886)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(409236685118498091)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(466012959590515740)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907604430590980699)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2907019538707830477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907605303732980703)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2907019559294830478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907606148686980706)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2907019654124830479)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907607099542980709)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2907019828695830480)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907607995724980712)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2907019869033830481)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907608866770980715)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2907020035366830482)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907611597780980724)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2907020340442830485)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907612523001980727)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2907020345275830486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907613444838980730)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2907020479689830487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907614330027980733)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2907020615352830488)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2907633216009013008)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2907627026776003939)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2908466072199944838)
,p_view_id=>wwv_flow_imp.id(3172791018032170886)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2908429194249602041)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(847694121182804366)
,p_name=>'P265_STATUS'
,p_item_sequence=>40
,p_item_default=>'ALL'
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
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629774171440530735)
,p_name=>'P265_FORM'
,p_item_sequence=>10
,p_item_default=>'0'
,p_prompt=>unistr('\70B9\68C0\8868')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT to_nchar(''\5168\90E8''), to_nchar(0)'),
'FROM DUAL',
'UNION all',
'select FORM_NAME, FORM_ID',
'from (SELECT FORM_NAME ,  C.FORM_ID',
'      FROM CHECK_RECORD C',
'        left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'        left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'      WHERE C.TENANT_ID = :USERTENANT',
'          and C.BASE_DEPT_ID =:BASE_DEPT_ID',
'          and Y.CODE=''PATROL''',
'          and DEVICE_CODE = :P265_DEVICE_CODE',
'        and DEVICE_CODE = REGEXP_REPLACE(:P265_DEVICE_CODE,''%2B'',''#'')',
'        AND C.CREATION_DATE >= TO_DATE(:P265_START_DATE, ''YYYY-MM-DD'')',
'        AND C.CREATION_DATE <= TO_DATE(:P265_END_DATE, ''YYYY-MM-DD'') + 1',
'      group by FORM_NAME, C.FORM_ID);'))
,p_lov_cascade_parent_items=>'P265_DEVICE_CODE'
,p_ajax_items_to_submit=>'P265_DEVICE_CODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_colspan=>2
,p_display_when=>'P265_TYPT'
,p_display_when2=>'PATROL'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(2629774476721530735)
,p_name=>'P265_RESULT'
,p_item_sequence=>50
,p_item_default=>'ALL'
,p_prompt=>unistr('\7ED3\679C')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:\5168\90E8;ALL,\6B63\5E38;NORMAL,\5F02\5E38;ERROR,\505C\673A;STOP,\590D\68C0\6B63\5E38;RECHECK_NORMAL')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629774883682530735)
,p_name=>'P265_START_DATE'
,p_item_sequence=>60
,p_item_default=>'SYSDATE-6'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P265_END_DATE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629775342235530735)
,p_name=>'P265_END_DATE'
,p_item_sequence=>70
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\7ED3\675F\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P265_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629775749531530736)
,p_name=>'P265_DEVICE_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629776134304530736)
,p_name=>'P265_DEVICE_CODE'
,p_item_sequence=>90
,p_item_default=>'select DEVICE_CODE from CODE_DEVICE where DEVICE_ID=:P265_DEVICE_ID ;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629776498899530736)
,p_name=>'P265_RECORD_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2636916187430120666)
,p_name=>'P265_TYPT'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\533A\5206\663E\793A\7EF4\4FDD\8FD8\662F\70B9\68C0')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2636916893487120673)
,p_name=>'P265_FORM_WEIBAO'
,p_item_sequence=>20
,p_item_default=>'0'
,p_prompt=>unistr('\7EF4\4FDD\8868')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT to_nchar(''\5168\90E8''), to_nchar(0)'),
'FROM DUAL',
'UNION all',
'select FORM_NAME, FORM_ID',
'from (SELECT FORM_NAME ,  C.FORM_ID',
'      FROM CHECK_RECORD C',
'        left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'        left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'      WHERE C.TENANT_ID = :USERTENANT',
'        and C.BASE_DEPT_ID=:BASE_DEPT_ID',
'          and Y.CODE=''MAINTENANCE''',
'        and DEVICE_CODE = :P265_DEVICE_CODE',
'        AND C.CREATION_DATE >= TO_DATE(:P265_START_DATE, ''YYYY-MM-DD'')',
'        AND C.CREATION_DATE <= TO_DATE(:P265_END_DATE, ''YYYY-MM-DD'') + 1',
'      group by FORM_NAME, C.FORM_ID);',
''))
,p_lov_cascade_parent_items=>'P265_DEVICE_CODE'
,p_ajax_items_to_submit=>'P265_DEVICE_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_display_when=>'P265_TYPT'
,p_display_when2=>'MAINTENANCE'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(2671321604095466929)
,p_name=>'P265_DEPT_ID'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633386463284670609)
,p_name=>unistr('\589E\52A0\989C\82721')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633386928311670609)
,p_event_id=>wwv_flow_imp.id(633386463284670609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
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
'',
'$.each($("td"), function (i, e) {',
unistr('    if ($(e).text() == ''\5F02\5E38'' || $(e).text() == ''\505C\673A'') {'),
'        $(e).addClass("red");',
'    }',
unistr('    if($(e).text() == ''\5DF2\70B9\68C0''){'),
'         $(e).addClass("green");',
'    }',
unistr('    if($(e).text() == ''\672A\70B9\68C0'' || $(e).text() == ''\8FC7\671F\672A\70B9\68C0'' || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7'' ){'),
'         $(e).addClass("yellow");',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633387280182670609)
,p_name=>unistr('\589E\52A0\989C\8272\7EF4\4FDD_1')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633387798765670608)
,p_event_id=>wwv_flow_imp.id(633387280182670609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
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
unistr('    if($(e).text() == ''\672A\5B8C\6210'' || $(e).text() == ''\8FC7\671F\672A\5B8C\6210'' || $(e).text() == ''\5BA1\6838\4E2D'' || $(e).text() == ''\5BA1\6838\672A\901A\8FC7''){'),
'         $(e).addClass("yellow");',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633388176610670608)
,p_name=>unistr('\589E\52A0\989C\82722')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633388679671670608)
,p_event_id=>wwv_flow_imp.id(633388176610670608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
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
 p_id=>wwv_flow_imp.id(633389143434670608)
,p_name=>unistr('\589E\52A0\989C\8272\7EF4\4FDD_2')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633389608480670608)
,p_event_id=>wwv_flow_imp.id(633389143434670608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
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
'})'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633390008544670608)
,p_name=>unistr('\5237\65B0\70B9\68C0\8868')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_FORM'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633390506351670607)
,p_event_id=>wwv_flow_imp.id(633390008544670608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633390919880670607)
,p_name=>unistr('\5237\65B0\72B6\6001')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_RESULT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633391466051670607)
,p_event_id=>wwv_flow_imp.id(633390919880670607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633391912179670607)
,p_event_id=>wwv_flow_imp.id(633390919880670607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633392331376670607)
,p_name=>unistr('\5237\65B0\5F00\59CB\65F6\95F4')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_START_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633392781428670606)
,p_event_id=>wwv_flow_imp.id(633392331376670607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633393359962670606)
,p_event_id=>wwv_flow_imp.id(633392331376670607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633393750435670606)
,p_name=>unistr('\5237\65B0\7ED3\675F\65F6\95F4')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_END_DATE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633394216700670606)
,p_event_id=>wwv_flow_imp.id(633393750435670606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633394746006670606)
,p_event_id=>wwv_flow_imp.id(633393750435670606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633395093372670606)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633395574081670605)
,p_event_id=>wwv_flow_imp.id(633395093372670606)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P265_DEVICE_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633395986253670605)
,p_name=>unistr('\5237\65B0\7EF4\4FDD\8868')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_FORM_WEIBAO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633396530902670605)
,p_event_id=>wwv_flow_imp.id(633395986253670605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633396952906670605)
,p_name=>unistr('\5237\65B0\72B6\60011')
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P265_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633397415735670605)
,p_event_id=>wwv_flow_imp.id(633396952906670605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3165124577259128992)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633397879101670604)
,p_event_id=>wwv_flow_imp.id(633396952906670605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2636901677249120663)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

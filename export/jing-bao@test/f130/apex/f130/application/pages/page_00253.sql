prompt --application/pages/page_00253
begin
--   Manifest
--     PAGE: 00253
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
 p_id=>253
,p_name=>unistr('\70B9\68C0\8868\5355-\7F16\8F91')
,p_alias=>unistr('\70B9\68C0\8868\5355-\7F16\8F91')
,p_step_title=>unistr('\70B9\68C0\8868\5355-\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function click_span_op(id, op) {',
'',
'    if (op == ''edit'') {',
'        $s(''P253_FORM_ITEM_ID'', id);',
'        $(''#update_btn'').click();',
'    } else {',
'        $s(''P253_FORM_ITEM_IDS'', id);',
'        $(''#del_btn'').click();',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .a-GV-hdr--fixed{',
'    width: auto !important;',
'    position: static !important;',
'} */'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710176598499746933)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FORM_ID,',
'       FORM_SERIAL_NO,',
'       NAME,',
'       CLASSIFY_ID',
'from CHECK_FORM where TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710176974118746937)
,p_plug_name=>unistr('\70B9\68C0\9879\76EE\533A\57DF')
,p_region_name=>'check_item_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710177105113746938)
,p_plug_name=>unistr('\70B9\68C0\9879\76EE')
,p_region_name=>'form_item'
,p_parent_plug_id=>wwv_flow_imp.id(2710176974118746937)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       FORM_ITEM_ID,',
'       FORM_ID,',
'       NAME,',
'       TYPE,',
'       NUMBER_VALUE_MAX,',
'       NUMBER_VALUE_MIN,',
'       NUMBER_UNIT,',
'       ABNORMAL_SHOW,',
'       IMAGE_SHOW,',
'       IMAGE_NUM,',
'       SORT_NUM,',
'       ''operate'' operate',
'from CHECK_FORM_ITEM where TENANT_ID=:USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID and FORM_ID=:P253_FORM_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_translate_title=>'N'
,p_ajax_items_to_submit=>'P253_FORM_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\70B9\68C0\9879\76EE')
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
 p_id=>wwv_flow_imp.id(2713678264005572149)
,p_name=>'FORM_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2713678369194572150)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(2713678448642572151)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\9879\76EE\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
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
 p_id=>wwv_flow_imp.id(2713678561010572152)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\586B\5199\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\6587\672C;TEXT,\6570\503C;NUMBER,OK/NG;COMMON')
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
 p_id=>wwv_flow_imp.id(2713678676462572153)
,p_name=>'NUMBER_VALUE_MAX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMBER_VALUE_MAX'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2713678824587572154)
,p_name=>'NUMBER_VALUE_MIN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMBER_VALUE_MIN'
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
 p_id=>wwv_flow_imp.id(2713678837778572155)
,p_name=>'NUMBER_UNIT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NUMBER_UNIT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2713678955678572156)
,p_name=>'ABNORMAL_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ABNORMAL_SHOW'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5F02\5E38\5F00\5173')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC2:\9690\85CF;0,\663E\793A;1')
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
 p_id=>wwv_flow_imp.id(2713679060825572157)
,p_name=>'IMAGE_SHOW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMAGE_SHOW'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\662F\5426\56FE\7247\4E0A\4F20')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5426;0,\662F;1')
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
 p_id=>wwv_flow_imp.id(2713679135394572158)
,p_name=>'IMAGE_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMAGE_NUM'
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
 p_id=>wwv_flow_imp.id(2713679303794572159)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(2713679354514572160)
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
    unistr('<!-- <span onclick="click_span_op(''&FORM_ITEM_ID.'',''edit'')" style=''color:#009AFE;font-size: 14px;''>\7F16\8F91</span>&nbsp;&nbsp;'),
    unistr('<span onclick="click_span_op(''&FORM_ITEM_ID.'',''delete'')" style=''color:#009AFE;font-size: 14px;''>\5220\9664</span> -->'),
    '',
    '<span>',
    '',
    '	<a href="#" onclick="click_span_op(''&FORM_ITEM_ID.'',''edit'')" style="text-dcoration:none;">',
    unistr('		\7F16\8F91'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="click_span_op(''&FORM_ITEM_ID.'',''delete'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>',
    '')))).to_clob
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
 p_id=>wwv_flow_imp.id(2715266848288147345)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2715266971781147346)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2710177170426746939)
,p_internal_uid=>555733298764312534
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>true
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
 p_id=>wwv_flow_imp.id(2713738772923837780)
,p_interactive_grid_id=>wwv_flow_imp.id(2710177170426746939)
,p_static_id=>'2757199'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2713739009780837780)
,p_report_id=>wwv_flow_imp.id(2713738772923837780)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713860082514688959)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2713678264005572149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713860992349688962)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2713678369194572150)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713861856757688964)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2713678448642572151)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713862806804688967)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2713678561010572152)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713863649338688970)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2713678676462572153)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713864593445688973)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2713678824587572154)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713865527655688976)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2713678837778572155)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713866431370688978)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2713678955678572156)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713867248368688981)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2713679060825572157)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713868156845688984)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2713679135394572158)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2713869075262688987)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2713679303794572159)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>111.39100000000002
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2714534674494303334)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2713679354514572160)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2715781768266148976)
,p_view_id=>wwv_flow_imp.id(2713739009780837780)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2715266848288147345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2710178056337746948)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_column=>4
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2713721768759714074)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2330871170826485717)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438034829808019330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2710177105113746938)
,p_button_name=>'hide-update'
,p_button_static_id=>'update_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>'hide-update'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438035909824019331)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2710178056337746948)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:252:&SESSION.::&DEBUG.:252::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438036317201019331)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2710178056337746948)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438036750851019331)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2710178056337746948)
,p_button_name=>unistr('\4E0B\4E00\6B65')
,p_button_static_id=>'next_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438033201369019330)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2710177105113746938)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438033615842019330)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2710177105113746938)
,p_button_name=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6A21\677F\4E0B\8F7D')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438033989819019330)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2710177105113746938)
,p_button_name=>unistr('\6279\91CF\5BFC\5165')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5BFC\5165')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2438034401661019330)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2710177105113746938)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'del_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2438055364784019342)
,p_branch_name=>unistr('\8F6C\5230\9875 254-\7F16\8F91')
,p_branch_action=>'f?p=&APP_ID.:254:&SESSION.::&DEBUG.:254:P254_FORM_ID,P254_FORM_ITEM_ID:&P253_FORM_ID.,&P253_FORM_ITEM_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2438034829808019330)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2438055689449019342)
,p_branch_name=>unistr('\8F6C\5230\9875 254-\65B0\589E')
,p_branch_action=>'f?p=&APP_ID.:254:&SESSION.::&DEBUG.:254:P254_FORM_ID:&P253_IS_SHOW.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2438033201369019330)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2438056146240019342)
,p_branch_name=>unistr('\8F6C\5230\9875 255-\6279\91CF\5BFC\5165')
,p_branch_action=>'f?p=&APP_ID.:255:&SESSION.::&DEBUG.:255:P255_FORM_ID:&P253_IS_SHOW.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2438033989819019330)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438020297872019319)
,p_name=>'P253_IS_SHOW'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438020704927019319)
,p_name=>'P253_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438021107716019319)
,p_name=>'P253_MESSAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438021547645019320)
,p_name=>'P253_FORM_ITEM_IDS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438021929629019320)
,p_name=>'P253_FORM_ITEM_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438022358359019320)
,p_name=>'P253_FILE_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438022736658019320)
,p_name=>'P253_FORM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_item_source_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_source=>'FORM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438023122944019321)
,p_name=>'P253_FILE_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438023528138019321)
,p_name=>'P253_FORM_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_item_source_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_prompt=>unistr('\8868\5355\540D\79F0\FF1A')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438023965410019321)
,p_name=>'P253_FORM_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_item_source_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_prompt=>unistr('\8868\5355\7F16\53F7\FF1A')
,p_placeholder=>unistr('\7F16\53F7\4E0D\586B\5199\9ED8\8BA4\81EA\52A8\751F\6210')
,p_source=>'FORM_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2438024295635019322)
,p_name=>'P253_CLASSIFY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_item_source_plug_id=>wwv_flow_imp.id(2710176598499746933)
,p_prompt=>unistr('\7C7B\522B\540D\79F0\FF1A')
,p_source=>'CLASSIFY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(DEL_FLAG,0,NAME,NAME||to_nchar(''\FF08\5DF2\5931\6548\FF09'')) key, CLASSIFY_ID val'),
'from CHECK_CLASSIFY',
'where TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID and DEL_FLAG=0 order by DEL_FLAG'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438037988808019333)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438039044543019333)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  V_FILE VARCHAR2(256);',
'  V_URL  VARCHAR2(512);',
'BEGIN',
'  SELECT FILE_NAME,FILE_URL INTO V_FILE,V_URL',
'    FROM APEX_UPLOAD_FILE_CONFIG',
'   WHERE FILE_ID = 21;',
'  apex_util.set_session_state(''P253_FILE_NAME'', V_FILE);',
'  apex_util.set_session_state(''P253_FILE_URL'', V_URL);',
'',
'END;'))
,p_attribute_03=>'P253_FILE_NAME,P253_FILE_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438038516091019333)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fileName = $v(''P253_FILE_NAME'');',
'var url = $v(''P253_FILE_URL'');',
unistr('var a = `<a href="javascript:void(0)" style="display:none" id="a_file" onclick="utils.fileDownload(''${url}'',''${fileName }'')">\4E0B\8F7D\6587\4EF6</a>`;'),
'$("body").append(a);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438040542496019334)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2438034829808019330)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438041006833019334)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2710176974118746937)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P253_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438039499590019333)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2438036317201019331)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P253_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438040034784019334)
,p_event_id=>wwv_flow_imp.id(2438037988808019333)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2438036750851019331)
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P253_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438042339436019335)
,p_name=>unistr('\53EA\80FD\8F93\5165\5B57\6BCD\6570\5B57')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P253_FORM_SERIAL_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438042829164019335)
,p_event_id=>wwv_flow_imp.id(2438042339436019335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!/^[a-zA-Z0-9]*$/.test($v(''P253_FORM_ID''))) {',
unistr('    alert("\53EA\652F\6301\8F93\516520\4F4D\82F1\6587\548C\6570\5B57\7684\5185\5BB9\FF0C\8BF7\91CD\65B0\8F93\5165");'),
unistr('    $s(''P253_FORM_ID'', ''''); // \6E05\7A7A\8F93\5165\6846\7684\5185\5BB9'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438043258449019335)
,p_name=>unistr('\9A8C\8BC1')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2438036317201019331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438045716648019337)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8868\5355\540D\79F0\4E0D\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P253_FORM_NAME''))) {',
unistr('    alert("\8868\5355\540D\79F0\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P253_FORM_NAME'').focus();',
'    return false;',
'}',
'if (utils.checkNull($v(''P253_CLASSIFY_ID'')) ) {',
unistr('    alert(''\7C7B\522B\540D\79F0\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438044750282019336)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    if :P253_FORM_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM',
'            where TENANT_ID = :USERTENANT',
'            and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and FORM_SERIAL_NO = :P253_FORM_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0',
'          and FORM_ID != :P253_FORM_ID;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and FORM_SERIAL_NO = :P253_FORM_SERIAL_NO',
'              and DEL_FLAG = 0',
'              and FORM_ID != :P253_FORM_ID;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P253_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_FORM_ID'
,p_attribute_03=>'P253_ROW_COUNT,P253_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2175125064677575914)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1685403411601794329)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    if :P253_FORM_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'           null;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0',
'          and FORM_ID != :P253_FORM_ID;',
'        if v_count = 0 then',
'            null;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P253_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_FORM_ID'
,p_attribute_03=>'P253_ROW_COUNT,P253_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438045173045019337)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P253_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
'    alert($v(''P253_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438044175807019336)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    v_form_id        number(20) ;',
'    row_count        number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    -- insert or update',
'    if :P253_FORM_ID is null then',
'        insert into CHECK_FORM(created_by,UPDATED_BY, remark, tenant_id,BASE_DEPT_ID, form_serial_no, name,',
'                               classify_id)',
'        values (:USER_ID, :USER_ID, null, :USERTENANT,:BASE_DEPT_ID, v_form_serial_no, :P253_FORM_NAME, :P253_CLASSIFY_ID)',
'        returning FORM_ID into v_form_id;',
'        row_count := SQL%ROWCOUNT;',
'        apex_util.set_session_state(''P253_FORM_ID'', v_form_id);',
'    else',
'        update CHECK_FORM',
'        set UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate,',
'            form_serial_no=v_form_serial_no,',
'            NAME=:P253_FORM_NAME,',
'            classify_id=:P253_CLASSIFY_ID',
'        where FORM_ID = :P253_FORM_ID;',
'        row_count := SQL%ROWCOUNT;',
'        v_form_id :=:P253_FORM_ID;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P253_FORM_ID'', v_form_id);',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_CLASSIFY_ID,P253_FORM_ID'
,p_attribute_03=>'P253_ROW_COUNT,P253_FORM_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438043720914019335)
,p_event_id=>wwv_flow_imp.id(2438043258449019335)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P253_ROW_COUNT'') > 0) {',
unistr('    // alert(''\64CD\4F5C\6210\529F'');'),
'    window.location.href="f?p=&APP_ID.:252:&APP_SESSION.:::::";',
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438049409605019338)
,p_name=>unistr('\4E0B\8F7D\6A21\677F')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2438033615842019330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438049921733019339)
,p_event_id=>wwv_flow_imp.id(2438049409605019338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#a_file'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438050363083019339)
,p_name=>unistr('\70B9\51FB\4E0B\4E00\6B65')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2438036750851019331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438051798597019340)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P253_FORM_NAME'')) ) {',
unistr('    alert(''\8BF7\8F93\5165\8868\5355\540D\79F0'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P253_CLASSIFY_ID'')) ) {',
unistr('    alert(''\8BF7\9009\62E9\7C7B\522B\540D\79F0'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438052354774019340)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    if :P253_FORM_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and FORM_SERIAL_NO = :P253_FORM_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                -- row_count := -1;',
'                row_count := 1;',
unistr('                apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0',
'          and FORM_ID != :P253_FORM_ID;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and FORM_SERIAL_NO = :P253_FORM_SERIAL_NO',
'              and DEL_FLAG = 0',
'              and FORM_ID != :P253_FORM_ID;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P253_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_FORM_ID'
,p_attribute_03=>'P253_ROW_COUNT,P253_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2175125064677575914)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1685403526175794330)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    if :P253_FORM_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID ',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'           null;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and NAME = :P253_FORM_NAME',
'          and DEL_FLAG = 0',
'          and FORM_ID != :P253_FORM_ID;',
'        if v_count = 0 then',
'            null;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P253_MESSAGE'', ''\8868\5355\540D\79F0\91CD\590D'');'),
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P253_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_FORM_ID'
,p_attribute_03=>'P253_ROW_COUNT,P253_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438052794337019340)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P253_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
'    alert($v(''P253_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438050821631019339)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_form_serial_no nvarchar2(32);',
'    v_form_id        number(20) ;',
'    row_count        number(20) := 0;',
'begin',
'',
'    if :P253_FORM_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_form_serial_no from dual;',
'    else',
'        v_form_serial_no := :P253_FORM_SERIAL_NO;',
'    end if;',
'    -- insert or update',
'    if :P253_FORM_ID is null then',
'        insert into CHECK_FORM(created_by,UPDATED_BY, remark, tenant_id,BASE_DEPT_ID, form_serial_no, name,',
'                               classify_id)',
'        values (:USER_ID, :USER_ID, null, :USERTENANT,:BASE_DEPT_ID, v_form_serial_no, :P253_FORM_NAME, :P253_CLASSIFY_ID)',
'        returning FORM_ID into v_form_id;',
'        row_count := SQL%ROWCOUNT;',
'        -- apex_util.set_session_state(''P253_FORM_ID'', v_form_id);',
'    else',
'        update CHECK_FORM',
'        set UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate,',
'            form_serial_no=v_form_serial_no,',
'            NAME=:P253_FORM_NAME,',
'            classify_id=:P253_CLASSIFY_ID',
'        where FORM_ID = :P253_FORM_ID;',
'        row_count := SQL%ROWCOUNT;',
'        v_form_id :=:P253_FORM_ID;',
'    end if;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P253_FORM_ID'', v_form_id);',
'    apex_util.set_session_state(''P253_IS_SHOW'', v_form_id);',
'    apex_util.set_session_state(''P253_FORM_SERIAL_NO'', v_form_serial_no);',
'',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P253_FORM_NAME,P253_FORM_SERIAL_NO,P253_CLASSIFY_ID,P253_FORM_ID,P253_IS_SHOW'
,p_attribute_03=>'P253_ROW_COUNT,P253_FORM_ID,P253_IS_SHOW,P253_FORM_SERIAL_NO'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438054280993019341)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P253_ROW_COUNT'') == 0) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} else {',
'    $(''#check_item_div'').show();',
'    apex.event.trigger(this.triggeringElement, "apexwindowresized");',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438051275467019340)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P253_FORM_SERIAL_NO'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438054786416019341)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2710176974118746937)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438053813465019341)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2438036317201019331)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438053320501019341)
,p_event_id=>wwv_flow_imp.id(2438050363083019339)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2438036750851019331)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438041463187019334)
,p_name=>unistr('\5237\65B0\7F51\683C')
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438041929438019334)
,p_event_id=>wwv_flow_imp.id(2438041463187019334)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2710177105113746938)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438046075534019337)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2438034401661019330)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438047606272019338)
,p_event_id=>wwv_flow_imp.id(2438046075534019337)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P253_FORM_ITEM_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\662F\5426\786E\8BA4\5220\9664?'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438046582593019337)
,p_event_id=>wwv_flow_imp.id(2438046075534019337)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'begin',
'',
'    delete CHECK_FORM_ITEM',
'    where FORM_ITEM_ID in (select * from UTILS_PKG.SPLIT_STR(:P253_FORM_ITEM_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P253_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P253_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P253_FORM_ITEM_IDS'
,p_attribute_03=>'P253_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438047138804019337)
,p_event_id=>wwv_flow_imp.id(2438046075534019337)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P253_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438048130965019338)
,p_event_id=>wwv_flow_imp.id(2438046075534019337)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2710177105113746938)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2438048499260019338)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2710177105113746938)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2438049039812019338)
,p_event_id=>wwv_flow_imp.id(2438048499260019338)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P253_FORM_ITEM_IDS'',''FORM_ITEM_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2438035260837019331)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2710177105113746938)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\68C0\9879\76EE - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283591389174584926
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2438025911961019324)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2710176598499746933)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\8868\5355-\7F16\8F91')
,p_internal_uid=>283582040298584919
);
wwv_flow_imp.component_end;
end;
/

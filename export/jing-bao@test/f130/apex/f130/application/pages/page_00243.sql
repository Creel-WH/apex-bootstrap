prompt --application/pages/page_00243
begin
--   Manifest
--     PAGE: 00243
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
 p_id=>243
,p_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_alias=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2417170125829601836)
,p_plug_name=>unistr('\7528\6237')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select a.OPERATION_AUTH_ID, a.JOB_NUMBER, a.AUTH_NAME, v.EXT_ORG_NAME',
'from CODE_SYSTEM_OPERATION_AUTH a',
'         inner join MPF_USER_DEPT_MAIN_ASSO_V v on a.JOB_NUMBER = v.JOB_NUMBER and v.TENANT_ID = :USERTENANT and v.BASE_DEPT_ID =:BASE_DEPT_ID',
'where a.SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID',
'  and a.TENANT_ID = :USERTENANT ',
'  and a.BASE_DEPT_ID =:BASE_DEPT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P243_SYSTEM_OPERATION_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\7528\6237')
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
 p_id=>wwv_flow_imp.id(2417170347281601838)
,p_name=>'OPERATION_AUTH_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATION_AUTH_ID'
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
 p_id=>wwv_flow_imp.id(2417170418719601839)
,p_name=>'JOB_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JOB_NUMBER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(2417170481255601840)
,p_name=>'AUTH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTH_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7528\6237\540D')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(2417170627404601841)
,p_name=>'EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(2417170750859601842)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2417170869790601843)
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
 p_id=>wwv_flow_imp.id(2417170268304601837)
,p_internal_uid=>262726396642167432
,p_is_editable=>true
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
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2417965400761127790)
,p_interactive_grid_id=>wwv_flow_imp.id(2417170268304601837)
,p_static_id=>'2635216'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2417965601222127789)
,p_report_id=>wwv_flow_imp.id(2417965400761127790)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2417966132186127787)
,p_view_id=>wwv_flow_imp.id(2417965601222127789)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2417170347281601838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2417967069594127783)
,p_view_id=>wwv_flow_imp.id(2417965601222127789)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2417170418719601839)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2417967962056127780)
,p_view_id=>wwv_flow_imp.id(2417965601222127789)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2417170481255601840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2417968808279127777)
,p_view_id=>wwv_flow_imp.id(2417965601222127789)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2417170627404601841)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2417969753911127774)
,p_view_id=>wwv_flow_imp.id(2417965601222127789)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2417170750859601842)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2925334593129428082)
,p_plug_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_OPERATION_ID,',
'       SYSTEM_ID,',
'       OPERATION_NAME,',
'       DESCRIPTION,',
'       ENTRY_URL,',
'       AUTH_RANGE,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       IS_ENABLE,',
'       TENANT_ID,',
'       DEL_FLAG',
'  from CODE_SYSTEM_OPERATION',
'WHERE TENANT_ID = :USERTENANT and DEL_FLAG=0',
'and BASE_DEPT_ID =:BASE_DEPT_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2925343383777428072)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330908303567485743)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2414392571677961274)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2925343383777428072)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2414393003106961274)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2925343383777428072)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P243_SYSTEM_OPERATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2417171106999601846)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2417170125829601836)
,p_button_name=>unistr('\6DFB\52A0')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:247:&SESSION.::&DEBUG.:247:P247_SYSTEM_OPERATION_ID:&P243_SYSTEM_OPERATION_ID.'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2417171222346601847)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2417170125829601836)
,p_button_name=>unistr('\5220\9664')
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2413642242713942729)
,p_name=>'AUTH_RANGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2413642291068942730)
,p_name=>'AUTH_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2413642428266942731)
,p_name=>'AUTH_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414381620261961281)
,p_name=>'P243_SYSTEM_OPERATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'SYSTEM_OPERATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414382062456961281)
,p_name=>'P243_SYSTEM_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_prompt=>unistr('\5DF2\63A5\5165\7CFB\7EDF')
,p_source=>'SYSTEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_NAME, SYSTEM_ID',
'from CODE_SYSTEM',
'where DEL_FLAG = 0;'))
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414382389802961280)
,p_name=>'P243_OPERATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_prompt=>unistr('\64CD\4F5C\9879\540D\79F0')
,p_source=>'OPERATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414382821382961280)
,p_name=>'P243_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_prompt=>unistr('\64CD\4F5C\9879\63CF\8FF0')
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414383209684961280)
,p_name=>'P243_ENTRY_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'ENTRY_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414383614879961279)
,p_name=>'P243_AUTH_RANGE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select decode(count(1), 1, ''IS_ALL'', ''OTHER'') val',
'from CODE_SYSTEM_OPERATION',
'where SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID',
'  and DEL_FLAG = 0;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\53EF\64CD\4F5C\5BF9\8C61')
,p_source=>'AUTH_RANGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4EFB\4F55\4EBA;IS_ALL,\6307\5B9A\4EBA\5458;OTHER')
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414384046586961279)
,p_name=>'P243_AUTH_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_prompt=>unistr('\9009\62E9\6307\5B9A\90E8\95E8')
,p_placeholder=>unistr('-\5F85\9009\62E9-')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EXT_ORG_LOV1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_org_id',
'from MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  and del_flag = 0',
'--   and PARENT_ID is not null',
'  and DEPT_TYPE = ''DEPT''',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414384402216961279)
,p_name=>'P243_AUTH_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_prompt=>unistr('\9009\62E9\6307\5B9A\7528\6237')
,p_placeholder=>unistr('-\5F85\9009\62E9-')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME, EXT_USER_ID',
'FROM MPF_USER_DEPT_MAIN_ASSO_V',
'WHERE TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414384841484961279)
,p_name=>'P243_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414385208505961279)
,p_name=>'P243_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414385599519961278)
,p_name=>'P243_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414386382050961278)
,p_name=>'P243_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414387264782961278)
,p_name=>'P243_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_default=>':USERTENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414599626962448008)
,p_name=>'P243_ROW_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2417171038545601845)
,p_name=>'P243_OPERATION_AUTH_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2417170125829601836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2418528478004236115)
,p_name=>'P243_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2418528617361236116)
,p_name=>'P243_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_item_source_plug_id=>wwv_flow_imp.id(2925334593129428082)
,p_source=>'UPDATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2418530715470236137)
,p_name=>'P243_EXISTS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2417170125829601836)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414396062191961266)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2414392571677961274)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414396534996961266)
,p_event_id=>wwv_flow_imp.id(2414396062191961266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414394255206961267)
,p_name=>unistr('\4FDD\5B58\6570\636E')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2414393003106961274)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2418530788223236138)
,p_event_id=>wwv_flow_imp.id(2414394255206961267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P243_EXISTS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OPERATION_AUTH_ID)',
'from CODE_SYSTEM_OPERATION_AUTH',
'where SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID',
'  and TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID fetch next 1 rows only;'))
,p_attribute_07=>'P243_SYSTEM_OPERATION_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2411532388845176639)
,p_event_id=>wwv_flow_imp.id(2414394255206961267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// if (utils.checkNull($v(''P243_OPERATION_NAME''))) {',
unistr('//     alert(''\8BF7\9009\62E9\64CD\4F5C\9879'');'),
'//     return false;',
'// }',
'',
'',
'if ($v(''P243_AUTH_RANGE'') == ''OTHER'' && $v(''P243_EXISTS'')==0) {',
unistr('     alert(''\8BF7\5148\6DFB\52A0\6307\5B9A\4EBA\5458'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414599425625448006)
,p_event_id=>wwv_flow_imp.id(2414394255206961267)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\4FEE\6539')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_row_count number(10) := 1;',
'',
'begin',
'',
'    update CODE_SYSTEM_OPERATION',
'    set OPERATION_NAME = :P243_OPERATION_NAME,',
'        DESCRIPTION    =:P243_DESCRIPTION,',
'        AUTH_RANGE     =:P243_AUTH_RANGE',
'    where SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID;',
'',
'    if :P243_AUTH_RANGE = ''IS_ALL'' then',
'',
'        delete CODE_SYSTEM_OPERATION_AUTH',
'        where SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID',
'          and TENANT_ID = :USERTENANT ',
'          and BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    else',
'',
unistr('        --- \67E5\8BE2\672C\6B21\8981\65B0\589E\7684\4EBA\5458\6570\636E'),
'        for c in ( select u.EXT_USER_ID,u.JOB_NUMBER, u.NAME',
'                   from (select EXT_USER_ID,JOB_NUMBER, NAME, :P243_SYSTEM_OPERATION_ID SYSTEM_OPERATION_ID',
'                         from MPF_USER_DEPT_MAIN_ASSO_V',
'                         where EXT_USER_ID in (',
'                             select *',
'                             from JA_UTILS_PKG.SPLIT_STR(:P243_AUTH_NAME, '':'')',
'                         )',
'                         union',
'                         select EXT_USER_ID,JOB_NUMBER, NAME, :P243_SYSTEM_OPERATION_ID SYSTEM_OPERATION_ID',
'                         from MPF_USER_DEPT_MAIN_ASSO_V',
'                         where EXT_ORG_ID in (',
'                             select *',
'                             from JA_UTILS_PKG.SPLIT_STR(:P243_AUTH_ID, '':'')',
'                         )) u',
'                            left join CODE_SYSTEM_OPERATION_AUTH a',
'                                      on u.EXT_USER_ID=a.AUTH_ID AND u.JOB_NUMBER = a.JOB_NUMBER and a.TENANT_ID = :USERTENANT and A.BASE_DEPT_ID=:BASE_DEPT_ID',
'                   and a.SYSTEM_OPERATION_ID = :P243_SYSTEM_OPERATION_ID)',
'',
'            loop',
'                insert into CODE_SYSTEM_OPERATION_AUTH(system_operation_id, auth_id, auth_name, job_number, tenant_id,BASE_DEPT_ID,',
'                                                       created_by, CREATION_DATE)',
'                values (:P243_SYSTEM_OPERATION_ID, c.EXT_USER_ID, c.NAME, c.JOB_NUMBER, :USERTENANT,:BASE_DEPT_ID, :USER_ID, sysdate);',
'',
'            end loop;',
'    end if;',
'    apex_util.set_session_state(''P243_ROW_COUNT'', v_row_count);',
'exception',
'    when',
'        others then',
'        apex_util.set_session_state(''P243_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'end;'))
,p_attribute_02=>'P243_OPERATION_NAME,P243_DESCRIPTION,P243_AUTH_RANGE,P243_SYSTEM_OPERATION_ID,P243_AUTH_ID,P243_AUTH_NAME'
,p_attribute_03=>'P243_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414599554420448007)
,p_event_id=>wwv_flow_imp.id(2414394255206961267)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8BBE\7F6E\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P243_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414599671883448009)
,p_event_id=>wwv_flow_imp.id(2414394255206961267)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2411532128322176636)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417172066540601855)
,p_event_id=>wwv_flow_imp.id(2411532128322176636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P243_AUTH_ID,P243_AUTH_NAME'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2417171354492601848)
,p_name=>unistr('\5220\9664\7528\6237\6570\636E')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2417171222346601847)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417171414366601849)
,p_event_id=>wwv_flow_imp.id(2417171354492601848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P243_OPERATION_AUTH_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\4EBA\5458'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417171522068601850)
,p_event_id=>wwv_flow_imp.id(2417171354492601848)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(20) := 1;',
'begin',
'',
'',
'    delete CODE_SYSTEM_OPERATION_AUTH',
'    where OPERATION_AUTH_ID in (select *',
'                                from JA_UTILS_PKG.SPLIT_STR(:P243_OPERATION_AUTH_IDS, '',''));',
'',
'    apex_util.set_session_state(''P243_ROW_COUNT'', v_count);',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P243_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P243_OPERATION_AUTH_IDS'
,p_attribute_03=>'P243_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417171604178601851)
,p_event_id=>wwv_flow_imp.id(2417171354492601848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P243_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417171758720601852)
,p_event_id=>wwv_flow_imp.id(2417171354492601848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2417978810839059406)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417978945827059407)
,p_event_id=>wwv_flow_imp.id(2417978810839059406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P243_OPERATION_AUTH_IDS'', ''OPERATION_AUTH_ID'');',
'utils.set(this.data, map);',
'',
'console.log($v(''P243_OPERATION_AUTH_IDS''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2417980960537059427)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2417980971875059428)
,p_event_id=>wwv_flow_imp.id(2417980960537059427)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2423180411922491607)
,p_name=>unistr('\6307\5B9A\53EF\64CD\4F5C\5BF9\8C61')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P243_AUTH_RANGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2423180656831491609)
,p_event_id=>wwv_flow_imp.id(2423180411922491607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P243_AUTH_RANGE'
,p_client_condition_expression=>'IS_ALL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2423180544133491608)
,p_event_id=>wwv_flow_imp.id(2423180411922491607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P243_AUTH_RANGE'
,p_client_condition_expression=>'OTHER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2414391900402961275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2925334593129428082)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>259948028740526870
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2414393800258961268)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>259949928596526863
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2417170925924601844)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2417170125829601836)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\7528\6237 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>262727054262167439
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2414391519220961275)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2925334593129428082)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>259947647558526870
);
wwv_flow_imp.component_end;
end;
/

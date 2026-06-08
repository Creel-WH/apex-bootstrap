prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>61
,p_name=>unistr('\5BA1\8BA1\4E8B\4EF6\5B57\5178')
,p_alias=>unistr('\5BA1\8BA1\4E8B\4EF6\5B57\5178')
,p_step_title=>unistr('\5BA1\8BA1\4E8B\4EF6\5B57\5178')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807341837507710)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3280320921214930890)
,p_plug_name=>unistr('\4E8B\4EF6\7C7B\578B\5B57\5178')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_DICT_ID,DICT_CODE,BUSINESS_TYPE,CODE_VALUE from JW_SYSTEM_DICT ',
'where DICT_TYPE = ''EVENT_TYPE'' AND DEL_FLAG = 0',
'and ((NVL(:P61_DICT_CODE,''0'')<>''0'' AND BUSINESS_TYPE = :P61_DICT_CODE) OR',
'        (NVL(:P61_DICT_CODE,''0'')=''0'' AND BUSINESS_TYPE is not null)) ',
'--AND BUSINESS_TYPE = :P61_DICT_CODE',
'--AND BUSINESS_TYPE = to_char(nvl(decode(:P61_DICT_CODE,''t1000'',''null'',:P61_DICT_CODE),''-1''));'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P61_DICT_CODE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\7C7B\578B\5B57\5178')
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
 p_id=>wwv_flow_imp.id(3280321076710930892)
,p_name=>'SYSTEM_DICT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYSTEM_DICT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3280321236583930893)
,p_name=>'CODE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3280321301632930894)
,p_name=>'DICT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DICT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E8B\4EF6\6807\8BC6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3280322281515930904)
,p_name=>'BUSINESS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BUSINESS_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5173\8054\6A21\5757')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select CODE_VALUE,DICT_CODE from JW_SYSTEM_DICT where DICT_TYPE = ''EVENT_MODULE'';'
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
 p_id=>wwv_flow_imp.id(3280322403131930905)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3280322502670930906)
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
 p_id=>wwv_flow_imp.id(3280320995643930891)
,p_internal_uid=>820188157456080625
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
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
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3438717483126036774)
,p_interactive_grid_id=>wwv_flow_imp.id(3280320995643930891)
,p_static_id=>'3245841'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3438717726225036775)
,p_report_id=>wwv_flow_imp.id(3438717483126036774)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438718227812036780)
,p_view_id=>wwv_flow_imp.id(3438717726225036775)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3280321076710930892)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438719142857036784)
,p_view_id=>wwv_flow_imp.id(3438717726225036775)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3280321236583930893)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438720014448036787)
,p_view_id=>wwv_flow_imp.id(3438717726225036775)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3280321301632930894)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438742245251399596)
,p_view_id=>wwv_flow_imp.id(3438717726225036775)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3280322281515930904)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438745646457459725)
,p_view_id=>wwv_flow_imp.id(3438717726225036775)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3280322403131930905)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3438695102331405753)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3438695809872405757)
,p_plug_name=>unistr('\4E8B\4EF6\6A21\5757\5B57\5178')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_DICT_ID, DICT_CODE, CODE_VALUE',
'from JW_SYSTEM_DICT',
'where DICT_TYPE = ''EVENT_MODULE''',
'  AND DEL_FLAG = 0'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\6A21\5757\5B57\5178')
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
 p_id=>wwv_flow_imp.id(3280321416702930895)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3280321541481930896)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'N',
  'hide_control', 'N')).to_clob
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438697133555405765)
,p_name=>'SYSTEM_DICT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYSTEM_DICT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3438701976269405770)
,p_name=>'CODE_VALUE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CODE_VALUE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\6A21\5757\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(3438704036084405771)
,p_name=>'DICT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DICT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6A21\5757\6807\8BC6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3438696352740405757)
,p_internal_uid=>978563514552555491
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3438696687976405758)
,p_interactive_grid_id=>wwv_flow_imp.id(3438696352740405757)
,p_static_id=>'3245633'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3438696878058405760)
,p_report_id=>wwv_flow_imp.id(3438696687976405758)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438697557824405767)
,p_view_id=>wwv_flow_imp.id(3438696878058405760)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3438697133555405765)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438702445914405770)
,p_view_id=>wwv_flow_imp.id(3438696878058405760)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3438701976269405770)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438704402386405771)
,p_view_id=>wwv_flow_imp.id(3438696878058405760)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3438704036084405771)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3438722128089041348)
,p_view_id=>wwv_flow_imp.id(3438696878058405760)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3280321416702930895)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3280329555782930899)
,p_name=>'P61_DICT_CODE'
,p_item_sequence=>20
,p_item_default=>'-1'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789601557742390650)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3438695809872405757)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789602121977390651)
,p_event_id=>wwv_flow_imp.id(2789601557742390650)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var map = new Map();',
'map.set(''P61_DICT_CODE'', ''DICT_CODE'');',
'utils.set(this.data, map);',
'',
'if ($v(''P61_DICT_CODE'') && $v(''P61_DICT_CODE'') == ''t1000'') {',
'    $s(''P61_DICT_CODE'', ''0'')',
'    console.log(0);',
'    return false;',
'} else {',
'    console.log(1);',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789602626362390651)
,p_event_id=>wwv_flow_imp.id(2789601557742390650)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3280320921214930890)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2789600503912390649)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3438695809872405757)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E8B\4EF6\6A21\5757\5B57\5178 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: DUL',
'    * CREATE DATE: 2025/2/19 15:42',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4E8B\4EF6\6A21\5757\5B57\5178\914D\7F6E'),
'    */',
'BEGIN',
'',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''C''',
'            THEN INSERT INTO JW_SYSTEM_DICT(CODE_VALUE, DICT_CODE,DICT_TYPE, REMARK, TENANT_ID, CREATED_BY, CREATION_DATE)',
'                 VALUES (:CODE_VALUE, :DICT_CODE,''EVENT_MODULE'', :REMARK, :USER_TENANT, :USER_ID, SYSDATE)',
'                 RETURNING SYSTEM_DICT_ID INTO :SYSTEM_DICT_ID;',
'',
'        WHEN ''U'' THEN UPDATE JW_SYSTEM_DICT',
'                      SET UPDATED_BY   = :USER_ID,',
'                          UPDATE_DATE = SYSDATE,',
'                          CODE_VALUE     = :CODE_VALUE,',
'                          DICT_CODE     = :DICT_CODE,',
'                          REMARK       = :REMARK',
'                      WHERE SYSTEM_DICT_ID = :SYSTEM_DICT_ID;',
'',
'        WHEN ''D'' THEN UPDATE JW_SYSTEM_DICT',
'                      SET UPDATED_BY   = :USER_ID,',
'                          UPDATE_DATE = SYSDATE,',
'                          DEL_FLAG=1',
'                      WHERE SYSTEM_DICT_ID = :SYSTEM_DICT_ID;',
'        END CASE;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4E8B\4EF6\6A21\5757\5B57\5178\914D\7F6E'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>329467665724540383
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2789596556750390645)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3280320921214930890)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E8B\4EF6\7C7B\578B\5B57\5178 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: DUL',
'    * CREATE DATE: 2025/2/19 15:42',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4E8B\4EF6\7C7B\578B\5B57\5178\914D\7F6E'),
'    */',
'BEGIN',
'    if :P61_DICT_CODE is null then',
'        apex_error.add_error(',
unistr('                p_message => ''\8BF7\5148\9009\62E9\4E8B\4EF6\6A21\5757\FF0C\518D\8FDB\884C\6DFB\52A0'','),
unistr('                p_additional_info=>''\9644\52A0\6D88\606F'','),
'                p_ignore_ora_error=> true,',
'                p_display_location => apex_error.c_inline_in_notification);',
'    else',
'        CASE :APEX$ROW_STATUS',
'            WHEN ''C''',
'                THEN INSERT INTO JW_SYSTEM_DICT(CODE_VALUE, DICT_CODE,DICT_TYPE,BUSINESS_TYPE, REMARK, TENANT_ID, CREATED_BY, CREATION_DATE)',
'                     VALUES (:CODE_VALUE, :DICT_CODE,''EVENT_TYPE'',:P61_DICT_CODE, :REMARK, :USER_TENANT, :USER_ID, SYSDATE)',
'                     RETURNING SYSTEM_DICT_ID INTO :SYSTEM_DICT_ID;',
'',
'            WHEN ''U'' THEN UPDATE JW_SYSTEM_DICT',
'                          SET UPDATED_BY   = :USER_ID,',
'                              UPDATE_DATE = SYSDATE,',
'                              CODE_VALUE     = :CODE_VALUE,',
'                              DICT_CODE     = :DICT_CODE,',
'                              REMARK       = :REMARK',
'                          WHERE SYSTEM_DICT_ID = :SYSTEM_DICT_ID;',
'',
'            WHEN ''D'' THEN UPDATE JW_SYSTEM_DICT',
'                          SET UPDATED_BY   = :USER_ID,',
'                              UPDATE_DATE = SYSDATE,',
'                              DEL_FLAG=1',
'                          WHERE SYSTEM_DICT_ID = :SYSTEM_DICT_ID;',
'            END CASE;',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4E8B\4EF6\7C7B\578B\5B57\5178\914D\7F6E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>329463718562540379
);
wwv_flow_imp.component_end;
end;
/

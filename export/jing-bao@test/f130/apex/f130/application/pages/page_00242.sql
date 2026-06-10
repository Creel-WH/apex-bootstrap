prompt --application/pages/page_00242
begin
--   Manifest
--     PAGE: 00242
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
 p_id=>242
,p_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3')
,p_alias=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3')
,p_step_title=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2644362132526543697)
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
 p_id=>wwv_flow_imp.id(3401237912649699236)
,p_plug_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select c.SYSTEM_OPERATION_ID,',
'       c.SYSTEM_ID,',
'       c.IS_ENABLE,',
'       c.OPERATION_NAME,',
'       c.DESCRIPTION,',
'       c.ENTRY_URL,',
'       c.AUTH_RANGE,',
'       case',
'           when c.AUTH_RANGE = ''IS_ALL'' then',
unistr('               ''\4EFB\4F55\4EBA'''),
'           else',
'               (select listagg(a.AUTH_NAME || '' '' || a.JOB_NUMBER, '','')',
'                from CODE_SYSTEM_OPERATION_AUTH a',
'                where a.TENANT_ID = :USERTENANT',
'                  and a.BASE_DEPT_ID =:BASE_DEPT_ID ',
'                  and a.SYSTEM_OPERATION_ID = c.SYSTEM_OPERATION_ID and a.JOB_NUMBER is not null',
'                  and rownum < 5) end option_range,',
'       c.DEL_FLAG,',
'       c.TENANT_ID',
'from CODE_SYSTEM_OPERATION c',
'WHERE c.TENANT_ID = :USERTENANT',
'  AND c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND c.DEL_FLAG = 0;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2384761118094293176)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USERTENANT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2388289287002952286)
,p_name=>'OPTION_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPTION_RANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\53EF\64CD\4F5C\5BF9\8C61')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(3401239218145699234)
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
 p_id=>wwv_flow_imp.id(3401239641257699234)
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
 p_id=>wwv_flow_imp.id(3401240668438699232)
,p_name=>'SYSTEM_OPERATION_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYSTEM_OPERATION_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401241619462699231)
,p_name=>'SYSTEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SYSTEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\7CFB\7EDF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT SYSTEM_NAME, SYSTEM_ID I FROM CODE_SYSTEM WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG = 0;'
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'SQL_QUERY'
,p_filter_lov_query=>'select SYSTEM_NAME from CODE_SYSTEM where SYSTEM_ID =: P242_SYSTEM_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401242554499699230)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_YES_NO'
,p_heading=>unistr('\542F\7528\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', unistr('\5DF2\7981\7528'),
  'off_value', '0',
  'on_label', unistr('\5DF2\542F\7528'),
  'on_value', '1',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(3401243561507699230)
,p_name=>'OPERATION_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATION_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\64CD\4F5C\9879\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401244567327699229)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\64CD\4F5C\9879\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(3401245587474699229)
,p_name=>'ENTRY_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTRY_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401246551365699228)
,p_name=>'AUTH_RANGE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUTH_RANGE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401251558839699226)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3401260022292638543)
,p_name=>'BUTTON_COL'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', unistr('<button onclick="void(0);" class="t-Button t-Button--hot" type="button" ><span class="t-Button-label">\8BBE\7F6E</span></button>'))).to_clob
,p_link_target=>'f?p=&APP_ID.:243:&SESSION.::&DEBUG.:243:P243_SYSTEM_OPERATION_ID:&SYSTEM_OPERATION_ID.'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3401238405426699236)
,p_internal_uid=>1275675264855914380
,p_is_editable=>true
,p_edit_operations=>'u:d'
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3401238803335699235)
,p_interactive_grid_id=>wwv_flow_imp.id(3401238405426699236)
,p_static_id=>'2481447'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3401239009472699235)
,p_report_id=>wwv_flow_imp.id(3401238803335699235)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2385851417889478901)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2384761118094293176)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2389081091253508963)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2388289287002952286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401240113059699233)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3401239641257699234)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401241076433699231)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3401240668438699232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401241960792699230)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3401241619462699231)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401243012326699230)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3401242554499699230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401243944557699229)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3401243561507699230)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401244967153699229)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3401244567327699229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401246022816699228)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3401245587474699229)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401246967439699228)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3401246551365699228)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401252009802699225)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3401251558839699226)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3401265731139625235)
,p_view_id=>wwv_flow_imp.id(3401239009472699235)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3401260022292638543)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2384761308348293178)
,p_name=>'P242_SYSTEM_OPERATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3401237912649699236)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2385494981368330068)
,p_name=>'P242_SYSTEM_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3401237912649699236)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2385498129900330066)
,p_name=>unistr('\4FDD\5B58\540E\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2385498540612330066)
,p_event_id=>wwv_flow_imp.id(2385498129900330066)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3401237912649699236)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2385496661763330067)
,p_name=>unistr('\70B9\51FB\8BBE\7F6E')
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3401237912649699236)
,p_triggering_element=>'BUTTON_COL'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P242_SYSTEM_ID'')) && $v(''P242_SYSTEM_ID'').split('','').length == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2385497181774330066)
,p_event_id=>wwv_flow_imp.id(2385496661763330067)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012SYSTEM_OPERATION_ID')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P243_SYSTEM_OPERATION_ID'', :P242_SYSTEM_OPERATION_ID);',
'end;'))
,p_attribute_02=>'SYSTEM_OPERATION_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2385497734950330066)
,p_event_id=>wwv_flow_imp.id(2385496661763330067)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2385495345114330068)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3401237912649699236)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'        when ''C'' then insert into CODE_SYSTEM_OPERATION(system_id, operation_name, description, entry_url, AUTH_RANGE,',
'                                                        tenant_id,BASE_DEPT_ID, created_by, CREATION_DATE, is_enable, del_flag)',
'                      values (:SYSTEM_ID, :OPERATION_NAME, :DESCRIPTION, :ENTRY_URL, ''IS_ALL'',',
'                              :USERTENANT,:BASE_DEPT_ID, :USER_ID, SYSDATE,',
'                              :IS_ENABLE, 0)',
'                      returning SYSTEM_OPERATION_ID into :SYSTEM_OPERATION_ID;',
'        when ''U'' then update CODE_SYSTEM_OPERATION',
'                      SET SYSTEM_ID      = :SYSTEM_ID,',
'                          OPERATION_NAME = :OPERATION_NAME,',
'                          DESCRIPTION    = :DESCRIPTION,',
'                          IS_ENABLE      = :IS_ENABLE,',
'                          UPDATED_DATE   = SYSDATE,',
'                          UPDATED_BY     =:USER_ID',
'                      where SYSTEM_OPERATION_ID = :SYSTEM_OPERATION_ID;',
'        when ''D'' then update CODE_SYSTEM_OPERATION',
'                      set DEL_FLAG     = 1,',
'                          UPDATED_DATE = SYSDATE,',
'                          UPDATED_BY   =:USER_ID',
'                      where SYSTEM_OPERATION_ID = :SYSTEM_OPERATION_ID;',
'        end case;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>259932204543545212
);
wwv_flow_imp.component_end;
end;
/

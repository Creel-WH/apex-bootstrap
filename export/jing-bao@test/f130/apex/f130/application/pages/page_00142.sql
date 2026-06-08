prompt --application/pages/page_00142
begin
--   Manifest
--     PAGE: 00142
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
 p_id=>142
,p_name=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
,p_alias=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
,p_step_title=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2234366176382074159)
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
 p_id=>wwv_flow_imp.id(2234366704379074161)
,p_plug_name=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
,p_region_name=>'my_grid'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_UPGRADE_LOGIC_CONFIG_ID,',
'       LOGIC_NAME_CODE LOGIC_NAME_ID,',
'       TENANT_ID,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UP_TIME/60 UP_TIME,',
'       IS_ENABLE,',
'       SORT_NUM,',
'       DEL_FLAG,',
'       IS_STOP_LINE,',
'       IS_KEY_PROCESS,',
'       IS_DING_NOTICE,',
'       IS_TASK_NOTICE,',
'       IS_PHONE_NOTICE',
'  from TENANT_EVENT_UPGRADE_LOGIC_CONFIG',
' where DEL_FLAG = 0',
'  and TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID= :BASE_DEPT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2234033508054895112)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2234033593999895113)
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
 p_id=>wwv_flow_imp.id(2234372044011074169)
,p_name=>'UP_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UP_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5347\7EA7\65F6\95F4(\5C0F\65F6)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
,p_format_mask=>'999G999G999G999G990D00'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(2234373027818074169)
,p_name=>'IS_STOP_LINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\505C\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;TRUE,\5426;FALSE')
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2234374079661074170)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5347\7EA7\987A\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2234376015681074171)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(2239220649701622815)
,p_name=>'EVENT_UPGRADE_LOGIC_CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_UPGRADE_LOGIC_CONFIG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239220834678622817)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239220938239622818)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
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
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239221008458622819)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(2239221152577622820)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\5347\7EA7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;1,\5426;0')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239221288913622821)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'STATIC'
,p_default_expression=>'0'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239221388586622822)
,p_name=>'IS_KEY_PROCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\74F6\9888')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;TRUE,\5426;FALSE')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239221467183622823)
,p_name=>'LOGIC_NAME_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGIC_NAME_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\5347\7EA7\89C4\5219\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\76F4\5C5E\9886\5BFC;DIRECT_LEADER,\534F\8C03\4EBA;COORDINATOR,\7ECF\7406\52A9\7406;ASSISTANT,\90E8\95E8\7ECF\7406;DEPARTMENT_MANAGER,\526F\603B\7ECF\7406;VICE_GENERAL_MANAGER,\603B\7ECF\7406;GENERAL_MANAGER')
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2239221533937622824)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2357565927456905189)
,p_name=>'IS_DING_NOTICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_DING_NOTICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\9489\9489\901A\77E5')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5426;0,\662F;1')
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
 p_id=>wwv_flow_imp.id(2357566009734905190)
,p_name=>'IS_TASK_NOTICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_TASK_NOTICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\521B\5EFA\9489\9489\5F85\529E')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5426;0,\662F;1')
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
 p_id=>wwv_flow_imp.id(2357566172424905191)
,p_name=>'IS_PHONE_NOTICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_PHONE_NOTICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\7535\8BDD\63D0\9192')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\5426;0,\662F;1')
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2234367206420074161)
,p_internal_uid=>13319816413604152
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_add_authorization_scheme=>wwv_flow_imp.id(2232511370371217774)
,p_update_authorization_scheme=>wwv_flow_imp.id(2232511595445217774)
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
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
 p_id=>wwv_flow_imp.id(2234367680735074162)
,p_interactive_grid_id=>wwv_flow_imp.id(2234367206420074161)
,p_static_id=>'133203'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2234367844446074162)
,p_report_id=>wwv_flow_imp.id(2234367680735074162)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2234372395470074169)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2234372044011074169)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2234373406646074169)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2234373027818074169)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2234374406164074170)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2234374079661074170)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>2
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2234376417554074171)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2234376015681074171)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2234380225533113037)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2234033508054895112)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>40
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240330656585311556)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2239220649701622815)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240331522787311562)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2239220834678622817)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240332447772311565)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2239220938239622818)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240333315897311568)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2239221008458622819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240334202032311570)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2239221152577622820)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240335099625311572)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2239221288913622821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240336072452311575)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2239221388586622822)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240336947653311578)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2239221467183622823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2240337884573311581)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2239221533937622824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2366598412620042898)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2357565927456905189)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2366599358754042892)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2357566009734905190)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2366600271581042889)
,p_view_id=>wwv_flow_imp.id(2234367844446074162)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2357566172424905191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2239222109689622830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2234366704379074161)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-trash-o'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2239222420533622833)
,p_name=>'P142_EVENT_UPGRADE_LOGIC_CONFIG_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2234366704379074161)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2239222490871622834)
,p_name=>'P142_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2234366704379074161)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2239222229367622831)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2239222109689622830)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P142_EVENT_UPGRADE_LOGIC_CONFIG_ID''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239222385543622832)
,p_event_id=>wwv_flow_imp.id(2239222229367622831)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if(confirm("\786E\5B9A\5220\9664\FF1F")){'),
'    return true;',
'}else{',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239224170028622850)
,p_event_id=>wwv_flow_imp.id(2239222229367622831)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert("\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E\FF01")')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239223992891622849)
,p_event_id=>wwv_flow_imp.id(2239222229367622831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_EVENT_UPGRADE_LOGIC_CONFIG',
'    set del_flag = 1,',
'        UPDATED_BY = :USER_ID,',
'        UPDATE_DATE = SYSDATE',
'    where EVENT_UPGRADE_LOGIC_CONFIG_ID in (select * from table(splitstr(:P142_EVENT_UPGRADE_LOGIC_CONFIG_ID,'','')));',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P142_ROW_COUNT'',row_count);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P142_ROW_COUNT'',-1);',
'end;'))
,p_attribute_02=>'P142_EVENT_UPGRADE_LOGIC_CONFIG_ID,P142_ROW_COUNT'
,p_attribute_03=>'P142_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239223970862622848)
,p_event_id=>wwv_flow_imp.id(2239222229367622831)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P142_ROW_COUNT'')>0){',
unistr('    alert("\5220\9664\6210\529F");'),
'}else{',
unistr('    alert("\5220\9664\5931\8D25");'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239223874794622847)
,p_event_id=>wwv_flow_imp.id(2239222229367622831)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2234366704379074161)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2239224258815622851)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2234366704379074161)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239224352379622852)
,p_event_id=>wwv_flow_imp.id(2239224258815622851)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P142_EVENT_UPGRADE_LOGIC_CONFIG_ID'',''EVENT_UPGRADE_LOGIC_CONFIG_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2239224432315622853)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2234366704379074161)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridsave'
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2239224564738622854)
,p_event_id=>wwv_flow_imp.id(2239224432315622853)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload("#my_grid");'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2234033781774895114)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2234366704379074161)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5347\7EA7\89C4\5219\914D\7F6E - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    case :APEX$ROW_STATUS',
'        -- insert',
'        when ''C''',
'            -- then INSERT INTO TENANT_EVENT_UPGRADE_LOGIC_CONFIG (LOGIC_NAME_CODE, TENANT_ID, UPDATED_BY, CREATED_BY,',
'            --                                                     CREATION_DATE,',
'            --                                                     UP_TIME, IS_ENABLE, SORT_NUM, DEL_FLAG, IS_STOP_LINE,',
'            --                                                     IS_KEY_PROCESS, IS_DING_NOTICE, IS_TASK_NOTICE,',
'            --                                                     IS_PHONE_NOTICE)',
'            --      VALUES (:LOGIC_NAME_ID, :TENANT_ID, :USER_ID, :USER_ID, SYSDATE,',
'            --              :UP_TIME * 60, :IS_ENABLE, :SORT_NUM, :DEL_FLAG, :IS_STOP_LINE, :IS_KEY_PROCESS,',
'            --              :IS_DING_NOTICE, :IS_TASK_NOTICE, :IS_PHONE_NOTICE);',
'              then INSERT INTO TENANT_EVENT_UPGRADE_LOGIC_CONFIG (LOGIC_NAME_CODE, TENANT_ID,BASE_DEPT_ID, UPDATED_BY, CREATED_BY,',
'                                                                CREATION_DATE,',
'                                                                UP_TIME, IS_ENABLE, SORT_NUM, DEL_FLAG, IS_STOP_LINE,',
'                                                                IS_KEY_PROCESS, IS_DING_NOTICE, IS_TASK_NOTICE,',
'                                                                IS_PHONE_NOTICE)',
'                 VALUES (:LOGIC_NAME_ID, :USERTENANT ,:BASE_DEPT_ID , :USER_ID, :USER_ID, SYSDATE,',
'                         :UP_TIME * 60, :IS_ENABLE, :SORT_NUM, :DEL_FLAG, :IS_STOP_LINE, :IS_KEY_PROCESS,',
'                         :IS_DING_NOTICE, :IS_TASK_NOTICE, :IS_PHONE_NOTICE);',
'        -- update',
'        when ''U'' then UPDATE TENANT_EVENT_UPGRADE_LOGIC_CONFIG',
'                      SET LOGIC_NAME_CODE = :LOGIC_NAME_ID,',
'                          UPDATED_BY      = :USER_ID,',
'                          UPDATE_DATE     = SYSDATE,',
'                          IS_KEY_PROCESS  = :IS_KEY_PROCESS,',
'                          IS_STOP_LINE    = :IS_STOP_LINE,',
'                          UP_TIME         = :UP_TIME * 60,',
'                          IS_ENABLE       = :IS_ENABLE,',
'                          SORT_NUM        = :SORT_NUM,',
'                          IS_DING_NOTICE  =:IS_DING_NOTICE,',
'                          IS_TASK_NOTICE  =:IS_TASK_NOTICE,',
'                          IS_PHONE_NOTICE =:IS_PHONE_NOTICE',
'                      WHERE EVENT_UPGRADE_LOGIC_CONFIG_ID = :EVENT_UPGRADE_LOGIC_CONFIG_ID;',
'        end case;',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50709179020811160
);
wwv_flow_imp.component_end;
end;
/

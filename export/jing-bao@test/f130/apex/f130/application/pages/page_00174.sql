prompt --application/pages/page_00174
begin
--   Manifest
--     PAGE: 00174
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
 p_id=>174
,p_name=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219')
,p_alias=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219')
,p_step_title=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2233745662548817541)
,p_plug_name=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FRONT_LINE_POLICY_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       REMARK,',
'       TENANT_ID,',
'       POLICY,',
'       EXT_ORG_ID',
'from TENANT_FRONT_LINE_POLICY where TENANT_ID=V(''USERTENANT'')',
'and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233746900239817545)
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
 p_id=>wwv_flow_imp.id(2233747482206817545)
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
 p_id=>wwv_flow_imp.id(2233748485841817547)
,p_name=>'FRONT_LINE_POLICY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FRONT_LINE_POLICY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_is_primary_key=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233749420933817548)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(2233750472365817548)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(2233751420612817549)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\64CD\4F5C\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,EXT_USER_ID from APEX_TENANT_USERS where TENANT_ID=V(''USERTENANT'') AND BASE_DEPT_ID= :BASE_DEPT_ID'
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233752483032817550)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\521B\5EFA\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233753473825817550)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(2233754424257817551)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(2233755421389817551)
,p_name=>'POLICY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'POLICY'
,p_data_type=>'CLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\804C\4F4D')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>32767
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2233756439299817552)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,EXT_ORG_ID from MPF_SHARE_DEPT_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2233746123171817541)
,p_internal_uid=>12698733165347532
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(2232511595445217774)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
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
 p_id=>wwv_flow_imp.id(2233746576426817542)
,p_interactive_grid_id=>wwv_flow_imp.id(2233746123171817541)
,p_static_id=>'126992'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2233746714006817542)
,p_report_id=>wwv_flow_imp.id(2233746576426817542)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233747855394817546)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2233747482206817545)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233748874009817548)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2233748485841817547)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>164.656
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233749831026817548)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2233749420933817548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233750828013817549)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2233750472365817548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233751851390817549)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2233751420612817549)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>113.656
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233752800542817550)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2233752483032817550)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>162.352
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233753833087817550)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2233753473825817550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233754848387817551)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2233754424257817551)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233755830715817551)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2233755421389817551)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>486.352
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2233756832323817552)
,p_view_id=>wwv_flow_imp.id(2233746714006817542)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2233756439299817552)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>156.656
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2231581165009989714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:174::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-plus-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2231581259661989715)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-edit'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2231581321013989716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_button_name=>unistr('\540C\6B65\4EBA\5458')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\540C\6B65\4EBA\5458')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-users'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2231581415981989717)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2233745662548817541)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2231584774403989750)
,p_branch_action=>'f?p=&APP_ID.:175:&SESSION.::&DEBUG.:174:P175_FRONT_LINE_POLICY_ID:&P174_RFRONT_LINE_POLICY_IDS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2231581563780989718)
,p_name=>'P174_ROW_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2231581622460989719)
,p_name=>'P174_RESP_TEXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2231581695515989720)
,p_name=>'P174_RFRONT_LINE_POLICY_IDS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2233745662548817541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231581836283989721)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2233745662548817541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231581934544989722)
,p_event_id=>wwv_flow_imp.id(2231581836283989721)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P174_RFRONT_LINE_POLICY_IDS'', ''FRONT_LINE_POLICY_ID'');',
'utils.set(this.data, map);',
'console.log($v(''P174_RFRONT_LINE_POLICY_IDS''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231582001914989723)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582132721989724)
,p_event_id=>wwv_flow_imp.id(2231582001914989723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2233745662548817541)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231582209906989725)
,p_name=>unistr('\540C\6B65')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2231581321013989716)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P174_RFRONT_LINE_POLICY_IDS'')) '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582343916989726)
,p_event_id=>wwv_flow_imp.id(2231582209906989725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\540C\6B65\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582477642989727)
,p_event_id=>wwv_flow_imp.id(2231582209906989725)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    resp_test nvarchar2(256);',
'',
'begin',
'    select CRON_SYNC_FRONT_LINE(:P174_RFRONT_LINE_POLICY_IDS, V(''USERTENANT''), V(''USER_ID'')) into resp_test  from dual;',
'    apex_util.set_session_state(''P174_RESP_TEXT'',resp_test);',
'end;'))
,p_attribute_02=>'P174_RFRONT_LINE_POLICY_IDS,P174_RESP_TEXT'
,p_attribute_03=>'P174_RESP_TEXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582499640989728)
,p_event_id=>wwv_flow_imp.id(2231582209906989725)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P174_RESP_TEXT'').indexOf(''error'') != -1) {',
unistr('    alert(''\540C\6B65\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\540C\6B65\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231582683315989729)
,p_name=>unistr('\4FEE\6539\6570\636E')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2231581259661989715)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P174_RFRONT_LINE_POLICY_IDS'')) && $v(''P174_RFRONT_LINE_POLICY_IDS'').split('','').length==1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582776531989730)
,p_event_id=>wwv_flow_imp.id(2231582683315989729)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231582878360989731)
,p_event_id=>wwv_flow_imp.id(2231582683315989729)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P174_RFRONT_LINE_POLICY_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\4FEE\6539\7684\6570\636E'');'),
'} else {',
unistr('    alert(''\8BF7\9009\62E9\5355\6761\6570\636E\8FDB\884C\4FEE\6539'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2231582974730989732)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2231581415981989717)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P174_RFRONT_LINE_POLICY_IDS'')) '
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231583036883989733)
,p_event_id=>wwv_flow_imp.id(2231582974730989732)
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
 p_id=>wwv_flow_imp.id(2231583140067989734)
,p_event_id=>wwv_flow_imp.id(2231582974730989732)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10):=0;',
'begin',
'    delete',
'    from TENANT_FRONT_LINE_POLICY',
'    where FRONT_LINE_POLICY_ID in (select * from table( SPLITSTR(:P174_RFRONT_LINE_POLICY_IDS, '','')))',
'    and TENANT_ID = V(''USERTENANT'')',
'    and BASE_DEPT_ID =:BASE_DEPT_ID;',
'    row_count:=SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P174_ROW_COUNT'',row_count);',
'end;'))
,p_attribute_02=>'P174_RFRONT_LINE_POLICY_IDS'
,p_attribute_03=>'P174_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231583263742989735)
,p_event_id=>wwv_flow_imp.id(2231582974730989732)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P174_ROW_COUNT'') == 0) {',
unistr('    alert(''\5220\9664\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\5220\9664\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2231583383330989736)
,p_event_id=>wwv_flow_imp.id(2231582974730989732)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2233745662548817541)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2233757405111817554)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2233745662548817541)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\4E00\7EBF\5458\5DE5\540C\6B65\89C4\5219 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50432802357733600
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_name=>unistr('\6807\7B7E\5E93NEW')
,p_alias=>unistr('\6807\7B7E\5E93NEW')
,p_step_title=>unistr('\6807\7B7E\5E93NEW')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2227894169704493123)
,p_plug_name=>unistr('\6807\7B7E\8868\5355-\65B0\589E')
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(2359799455309135295)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    LABEL_LIBRARY_ID,',
'    UPDATED_BY,',
'    UPDATE_DATE,',
'    REMARK,',
'    TENANT_ID,',
'    NAME,',
'    TYPE',
'  from TENANT_LABEL_LIBRARY where tenant_id = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2227911570331639346)
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
 p_id=>wwv_flow_imp.id(2227912148046639346)
,p_plug_name=>unistr('\6807\7B7E\5E93NEW')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    LABEL_LIBRARY_ID,',
'    UPDATED_BY,',
'    UPDATE_DATE,',
'    REMARK,',
'    TENANT_ID,',
'    NAME,',
'    TYPE',
'  from TENANT_LABEL_LIBRARY',
'  WHERE TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\6807\7B7E\5E93NEW')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2227893767645493119)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2227893883600493120)
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
 p_id=>wwv_flow_imp.id(2227914400252639352)
,p_name=>'LABEL_LIBRARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LABEL_LIBRARY_ID'
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
 p_id=>wwv_flow_imp.id(2227915453083639353)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
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
,p_default_expression=>':APP_USER'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2227916453641639353)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
,p_default_expression=>'SYSDATE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2227917466634639354)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(2227918469795639354)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(2227919423616639355)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\6807\7B7E\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2227920411983639355)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6807\7B7E\7C7B\522B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2227912676400639347)
,p_internal_uid=>6865286394169338
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_update_authorization_scheme=>wwv_flow_imp.id(2232511595445217774)
,p_delete_authorization_scheme=>wwv_flow_imp.id(2232511983914217775)
,p_lost_update_check_type=>'VALUES'
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2227913030974639347)
,p_interactive_grid_id=>wwv_flow_imp.id(2227912676400639347)
,p_static_id=>'68657'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2227913197673639347)
,p_report_id=>wwv_flow_imp.id(2227913030974639347)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227914811630639352)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2227914400252639352)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227915878442639353)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2227915453083639353)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227916869500639354)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2227916453641639353)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227917885527639354)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2227917466634639354)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227918879433639355)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2227918469795639354)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227919889744639355)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2227919423616639355)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227920876313639355)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2227920411983639355)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2227922363955648136)
,p_view_id=>wwv_flow_imp.id(2227913197673639347)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(2227893767645493119)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227895439527493136)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227895566224493137)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_button_name=>unistr('\521B\5EFA')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227894068794493122)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2227912148046639346)
,p_button_name=>unistr('\6DFB\52A0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894383476493125)
,p_name=>'P122_LABEL_LIBRARY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_source=>'LABEL_LIBRARY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894414375493126)
,p_name=>'P122_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894522354493127)
,p_name=>'P122_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894614494493128)
,p_name=>'P122_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>512
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894748397493129)
,p_name=>'P122_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_default=>':USERTENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894879116493130)
,p_name=>'P122_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_prompt=>unistr('\6807\7B7E\540D\79F0   (\4F7F\7528","\5206\5272\53C2\6570,\53EF\65B0\589E\591A\4E2A)')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>128
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227894891245493131)
,p_name=>'P122_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_item_source_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_prompt=>unistr('\6807\7B7E\7C7B\522B')
,p_source=>'TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227896070821493142)
,p_name=>'P122_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2227894169704493123)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227895004185493132)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2227894068794493122)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227895142931493133)
,p_event_id=>wwv_flow_imp.id(2227895004185493132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2227894169704493123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227895202425493134)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227895323759493135)
,p_event_id=>wwv_flow_imp.id(2227895202425493134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',122,''\6807\7B7E\6863\6848'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227895637363493138)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2227895439527493136)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227895777678493139)
,p_event_id=>wwv_flow_imp.id(2227895637363493138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2227894169704493123)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227895854489493140)
,p_name=>unistr('\65B0\5EFA_3')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2227895566224493137)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227895973231493141)
,p_event_id=>wwv_flow_imp.id(2227895854489493140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    count1    number(3);',
'    row_count number(3):=0;',
'    cursor c_job is select *',
'                    from (select * from table ( SPLITSTR(:P122_NAME, '','') ));',
'',
'begin',
'',
'    for c_row in c_job',
'        loop',
'            select count(*) into count1 from TENANT_LABEL_LIBRARY where type = :P122_TYPE and name = c_row.COLUMN_VALUE and TENANT_ID=:USERTENANT',
'            and BASE_DEPT_ID = :BASE_DEPT_ID;',
'            if count1 = 0 then',
'                insert into TENANT_LABEL_LIBRARY(CREATED_BY,',
'                                                 UPDATED_BY,',
'                                                 REMARK,',
'                                                 TENANT_ID,',
'                                                 NAME,',
'                                                 TYPE,',
'                                                 BASE_DEPT_ID)',
'                values (APEX_CUSTOM_AUTH.GET_USER,',
'                        APEX_CUSTOM_AUTH.GET_USER,',
'                        :P122_REMARK,',
'                        apex_util.get_session_state(''USERTENANT''),',
'                        c_row.COLUMN_VALUE,',
'                        :P122_TYPE,',
'                        :ASE_DEPT_ID);',
'',
'                row_count := row_count + SQL%ROWCOUNT;',
'            end if;',
'',
'        end loop;',
'    apex_util.set_session_state(''P122_COUNT'', row_count);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P122_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P122_NAME,P122_TYPE,P122_REMARK'
,p_attribute_03=>'P122_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2224943846653264559)
,p_event_id=>wwv_flow_imp.id(2227895854489493140)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P122_COUNT'') == 0) {',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2229197064654242511)
,p_event_id=>wwv_flow_imp.id(2227895854489493140)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2227894169704493123)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2229198369415242524)
,p_event_id=>wwv_flow_imp.id(2227895854489493140)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2227912148046639346)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2229198488633242525)
,p_event_id=>wwv_flow_imp.id(2227895854489493140)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P122_NAME,P122_TYPE,P122_REMARK,P122_COUNT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2227893956169493121)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2227912148046639346)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6807\7B7E\5E93NEW - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44569353415409167
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2227894211837493124)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2227894169704493123)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6807\7B7E\5E93NEW')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>44569609083409170
);
wwv_flow_imp.component_end;
end;
/

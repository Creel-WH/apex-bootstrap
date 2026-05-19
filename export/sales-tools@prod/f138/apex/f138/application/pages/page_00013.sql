prompt --application/pages/page_00013
begin
--   Manifest
--     PAGE: 00013
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>unistr('\81EA\5B9A\4E49\5206\7C7B-\6309\94AE\6D4B\8BD5')
,p_alias=>unistr('\81EA\5B9A\4E49\5206\7C7B-\6309\94AE\6D4B\8BD5')
,p_step_title=>unistr('\81EA\5B9A\4E49\5206\7C7B-\6309\94AE\6D4B\8BD5')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3241923283210633167)
,p_javascript_code_onload=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P103_FOLDER_CLASS_NAME''))'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696860070166553611)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9258838591544615359)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696860149143553612)
,p_plug_name=>unistr('\6210\5458\53CA\6743\9650')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9258838591544615359)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3696860257214553613)
,p_plug_name=>unistr('\6210\5458\6743\9650')
,p_parent_plug_id=>wwv_flow_imp.id(3696860149143553612)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258828789579615356)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCOPE_ID,',
'       ROLE_ID,',
'       USER_ID,',
'       '''' V_SOURCE_USER_ID,',
'       PERMISSIONS_TYPE',
'from STS_SCOPE',
'where REFERENCE_TYPE = ''FOLDER_CLASS''',
'  and REFERENCE_ID = :P13_FOLDER_CLASS_ID',
'  and ROLE_ID in (select ROLE_ID',
'                  from STS_ROLE',
'                  where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'union all',
'select SCOPE_ID,',
'       ROLE_ID,',
'       USER_ID,',
unistr('       ''\7531\300C'' || (select USER_NAME || ''-'' || JOB_NUMBER JOB_NUMBER_NAME from STS_USER where EXT_USER_ID = SOURCE_USER_ID and TENANT_ID = 3 and IS_LEAVE = 0 and DEL_FLAG = 0)  || ''\300D\6DFB\52A0'' V_SOURCE_USER_ID,'),
'       PERMISSIONS_TYPE',
'from STS_SCOPE',
'where REFERENCE_TYPE = ''FOLDER_CLASS''',
'  and REFERENCE_ID = :P13_FOLDER_CLASS_ID',
'  and ROLE_ID not in (select ROLE_ID',
'                  from STS_ROLE',
'                  where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P13_FOLDER_CLASS_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6210\5458\6743\9650')
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
 p_id=>wwv_flow_imp.id(3696860420784553615)
,p_name=>'SCOPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3696861019059553621)
,p_name=>'PERMISSIONS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMISSIONS_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\6743\9650')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3243322632514788516)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
,p_readonly_condition_type=>'FUNCTION_BODY'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_role_id number(20):=0;',
'begin',
'    select count(1) into l_role_id from STS_ROLE where ROLE_TYPE = ''SUPER_ADMIN'' and ROLE_ID = :ROLE_ID and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
'    if l_role_id > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3697102101945913881)
,p_name=>'V_SOURCE_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_SOURCE_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6765\6E90')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3697102166296913882)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7528\6237')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3243247049916433126)
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
 p_id=>wwv_flow_imp.id(3697102301960913883)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3697102345032913884)
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
 p_id=>wwv_flow_imp.id(3697102543756913886)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3696860338119553614)
,p_internal_uid=>907178534783519022
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(3243841974979743282)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(3697106950404914062)
,p_interactive_grid_id=>wwv_flow_imp.id(3696860338119553614)
,p_static_id=>'4536202'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3697107176327914063)
,p_report_id=>wwv_flow_imp.id(3697106950404914062)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697107682464914066)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3696860420784553615)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697113098742914080)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3696861019059553621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697140652811176994)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3697102101945913881)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697143220857182328)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3697102166296913882)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697146979769200523)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3697102301960913883)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3697152153102223321)
,p_view_id=>wwv_flow_imp.id(3697107176327914063)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3697102543756913886)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3697056816598707675)
,p_plug_name=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258771969765615337)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FOLDER_CLASS_ID,',
'       FOLDER_CLASS_NAME,',
'       FOLDER_CLASS_LEVEL,',
'       DEL_FLAG,',
'       TENANT_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       SCOPE_TYPE',
'  from STS_FOLDER_CLASS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3243493831508235180)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3696860070166553611)
,p_button_name=>unistr('\66F4\65B0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_image_alt=>unistr('\66F4\65B0')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3243499719527235185)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3696860257214553613)
,p_button_name=>unistr('\6DFB\52A0')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9258911908620615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_imp.id(3243841974979743282)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3243506202515235188)
,p_branch_action=>'f?p=&APP_ID.:101:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3696873996159553620)
,p_name=>'P13_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697058366545707678)
,p_name=>'P13_FOLDER_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_prompt=>unistr('\65B0\5EFA')
,p_source=>'FOLDER_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
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
 p_id=>wwv_flow_imp.id(3697059172183707682)
,p_name=>'P13_FOLDER_CLASS_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'FOLDER_CLASS_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697059528748707682)
,p_name=>'P13_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697059886927707683)
,p_name=>'P13_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697060337370707683)
,p_name=>'P13_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697060741459707683)
,p_name=>'P13_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697061119378707684)
,p_name=>'P13_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697061575459707684)
,p_name=>'P13_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697065149952707685)
,p_name=>'P13_FOLDER_CLASS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3696860070166553611)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_prompt=>unistr('\540D\79F0')
,p_source=>'FOLDER_CLASS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(9258909426021615403)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697068306551707688)
,p_name=>'P13_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3696860070166553611)
,p_item_source_plug_id=>wwv_flow_imp.id(3697056816598707675)
,p_prompt=>unistr('\5206\7C7B\53EF\89C1\8303\56F4')
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>unistr('STS_SYS_CONFIG\FF08\53EF\89C1\8303\56F4\FF09')
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CONFIG_NAME,CONFIG_CODE',
'from STS_SYS_CONFIG where CONFIG_TYPE = 25 and DEL_FLAG = 0 and IS_ENABLE = 1 and TENANT_ID = 3 order by SORT_NUM asc;'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(9258909426021615403)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3243501351401235186)
,p_name=>unistr('\76D1\542C\5BF9\8BDD\6846\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243501875570235186)
,p_event_id=>wwv_flow_imp.id(3243501351401235186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P13_FOLDER_CLASS_NAME''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3243504165430235187)
,p_name=>unistr('\4FEE\6539\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3243493831508235180)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2802754279484527774)
,p_event_id=>wwv_flow_imp.id(3243504165430235187)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\4FEE\6539\540D\79F0\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243505160622235187)
,p_event_id=>wwv_flow_imp.id(3243504165430235187)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\8981\4FEE\6539\540D\79F0\5417\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9258734674635615287)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243504688103235187)
,p_event_id=>wwv_flow_imp.id(3243504165430235187)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P13_ROW_COUNT'') == 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'    return true;',
'}  else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243505612240235187)
,p_event_id=>wwv_flow_imp.id(3243504165430235187)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3697056816598707675)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3243502262793235186)
,p_name=>unistr('\5206\7C7B\6743\9650')
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3696860257214553613)
,p_triggering_element=>'PERMISSIONS_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243503260718235186)
,p_event_id=>wwv_flow_imp.id(3243502262793235186)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                 NVARCHAR2(2000);',
'    V_ROW_COUNT               NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID         NUMBER(20) := 0;',
'    V_ACTION_NAME             NVARCHAR2(100);',
'    V_ACTION_CODE             NVARCHAR2(100);',
'    V_MODULE_NAME             NVARCHAR2(100);',
'    V_MODULE_CODE             NVARCHAR2(100);',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2025/3/19 11:36',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6210\5458\6743\9650\4FEE\6539\64CD\4F5C'),
'     */',
'BEGIN',
unistr('        -- #\64CD\4F5C\65E5\5FD7\8BB0\5F55 \5206\7C7B\6743\9650\64CD\4F5C'),
unistr('        -- \884C\4E3A\FF08\4FEE\6539\FF09'),
'        select CONFIG_NAME, CONFIG_CODE',
'        INTO V_ACTION_NAME,V_ACTION_CODE',
'        from STS_SYS_CONFIG',
'        where CONFIG_TYPE = 15',
'          and CONFIG_CODE = ''UPDATE''',
'          and IS_ENABLE = 1',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- \5185\5BB9\FF08\81EA\5B9A\4E49\5206\7C7B\FF09'),
'        select CONFIG_NAME, CONFIG_CODE',
'        INTO V_MODULE_NAME,V_MODULE_CODE',
'        from STS_SYS_CONFIG',
'        where CONFIG_TYPE = 30',
'          and CONFIG_CODE = ''FOLDER_CLASS''',
'          and IS_ENABLE = 1',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- #\65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C \5206\7C7B\6743\9650\4FEE\6539'),
unistr('        insert into STS_OPERATION_LOG (operation_action, -- \589E\5220\6539\67E5\3001\79FB\9664\3001\6062\590D\3001\5F52\6863\7B49'),
unistr('                                       operation_module, operation_content, -- \5220\9664\5206\7C7B\300C\6280\672F\652F\6301\300D'),
'                                       OPERATION_REFERENCE_ID, tenant_id, created_by, creation_date, updated_by, update_date)',
unistr('        values (V_ACTION_CODE, V_MODULE_CODE, ''\6210\5458\300C\675C\4E3D-JA043586\300D\4FEE\6539\5206\7C7B\300C\6280\672F\652F\6301\300D\6743\9650\4E3A\300C\53EF\67E5\770B/\53EF\4E0B\8F7D\300D'' , V_FOLDER_CLASS_ID, :USER_TENANT, :MPF_USER_ID, sysdate, :MPF_USER_ID, sysdate);'),
'',
unistr('        -- \4FEE\6539\64CD\4F5C'),
'        update STS_SCOPE set PERMISSIONS_TYPE=:PERMISSIONS_TYPE, UPDATED_BY=:MPF_USER_ID, UPDATE_DATE=sysdate where REFERENCE_TYPE = ''FOLDER_CLASS'' and REFERENCE_ID = :P13_FOLDER_CLASS_ID',
'         and ROLE_ID = :ROLE_ID;',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P13_ROW_COUNT'', V_ROW_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P13_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P13_FOLDER_CLASS_ID'
,p_attribute_03=>'P13_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243502747182235186)
,p_event_id=>wwv_flow_imp.id(3243502262793235186)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P13_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3243503793357235187)
,p_event_id=>wwv_flow_imp.id(3243502262793235186)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3696860257214553613)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3243493167601235179)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3697056816598707675)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \81EA\5B9A\4E49\5206\7C7B')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453811364265200587
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3243500292905235185)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3696860257214553613)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6210\5458\6743\9650 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453818489569200593
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3243492781454235179)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3697056816598707675)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \81EA\5B9A\4E49\5206\7C7B')
,p_internal_uid=>453810978118200587
);
wwv_flow_imp.component_end;
end;
/

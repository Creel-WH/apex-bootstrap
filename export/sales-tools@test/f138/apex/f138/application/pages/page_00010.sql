prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406-\6309\94AE\6D4B\8BD5')
,p_alias=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406-\6309\94AE\6D4B\8BD5')
,p_step_title=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406-\6309\94AE\6D4B\8BD5')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId) {',
'    console.log("P101_FOLDER_CLASS_ID: " + objId);',
'    $s(''P101_FOLDER_CLASS_ID'', objId);',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.is_modify_1 {',
'  color: red;',
'  /* text-align: center; */',
'}',
'',
'.hide_btn {',
'    display: none;',
'}',
'.is_modify_0  {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4229589551134627713)
,p_plug_name=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FOLDER_CLASS_ID,',
unistr('       FOLDER_CLASS_NAME || ''\FF08ID\FF1A'' || FOLDER_CLASS_ID || ''\FF09'' FOLDER_CLASS_NAME,'),
'       FOLDER_CLASS_LEVEL,',
'       DEL_FLAG,',
'       TENANT_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       SCOPE_TYPE,',
unistr('       decode(:ROLE_CODE,''VIEW_REPORT'',0,1) IS_HIDE  --\5982\679C\662F\67E5\770B\7EC4VIEW_REPORT\FF0C\9690\85CF\5220\9664\6309\94AE\FF0C\5426\5219\5C55\793A'),
'  from STS_FOLDER_CLASS where DEL_FLAG = 0 and TENANT_ID=:USER_TENANT;'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\81EA\5B9A\4E49\5206\7C7B\7BA1\7406')
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
 p_id=>wwv_flow_imp.id(3774604924626063242)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229589720788627715)
,p_name=>'FOLDER_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229589953999627717)
,p_name=>'FOLDER_CLASS_LEVEL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_LEVEL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590012830627718)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590191981627719)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590246129627720)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590394910627721)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590465587627722)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590571890627723)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4229590692810627724)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4231547003298621477)
,p_name=>'FOLDER_CLASS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>56
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
 p_id=>wwv_flow_imp.id(4231547251583621480)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.''  onclick="btnClick(''delete'',''&FOLDER_CLASS_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="btnClick(''manager'',''&FOLDER_CLASS_ID.'')" style="text-dcoration:none;">',
    unistr('		\7BA1\7406'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4229589655679627714)
,p_internal_uid=>905204117672521977
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
 p_id=>wwv_flow_imp.id(4231532911071610036)
,p_interactive_grid_id=>wwv_flow_imp.id(4229589655679627714)
,p_static_id=>'4533558'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4231533173007610036)
,p_report_id=>wwv_flow_imp.id(4231532911071610036)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778213127685361081)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3774604924626063242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231533624626610037)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4229589720788627715)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231535409229610042)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4229589953999627717)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231536402350610044)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4229590012830627718)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231537109355610046)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4229590191981627719)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231538011634610048)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4229590246129627720)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231538964869610050)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4229590394910627721)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231539807978610052)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4229590465587627722)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231540741226610055)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4229590571890627723)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231541704414610057)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4229590692810627724)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231555604292623664)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4231547003298621477)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4231585405038696757)
,p_view_id=>wwv_flow_imp.id(4231533173007610036)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4231547251583621480)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3778183311365303103)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4229589551134627713)
,p_button_name=>unistr('\521B\5EFA\5206\7C7B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\5206\7C7B')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:102:&SESSION.::&DEBUG.:102::'
,p_security_scheme=>wwv_flow_imp.id(3778545709650814427)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3778183674885303103)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4229589551134627713)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3778184123079303104)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4229589551134627713)
,p_button_name=>unistr('\7BA1\7406')
,p_button_static_id=>'btn_manager'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\7BA1\7406')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:13:P13_FOLDER_CLASS_ID:&P10_FOLDER_CLASS_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4231554365245621508)
,p_name=>'P10_FOLDER_CLASS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4229589551134627713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4231555406250621518)
,p_name=>'P10_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4229589551134627713)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778185515610303113)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778185942784303115)
,p_event_id=>wwv_flow_imp.id(3778185515610303113)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3778183674885303103)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778186471164303115)
,p_event_id=>wwv_flow_imp.id(3778185515610303113)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3778184123079303104)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778186908365303115)
,p_name=>unistr('\5220\9664\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3778183674885303103)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337457937447598918)
,p_event_id=>wwv_flow_imp.id(3778186908365303115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\5220\9664\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778187413960303115)
,p_event_id=>wwv_flow_imp.id(3778186908365303115)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\8981\5220\9664\6570\636E\5417\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778188373402303116)
,p_event_id=>wwv_flow_imp.id(3778186908365303115)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   NVARCHAR2(2000);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID           NUMBER(20) := 0;',
'    V_FOLDER_LIB_COUNT          NUMBER(10) := 0;',
'    V_ACTION_NAME               NVARCHAR2(100);',
'    V_ACTION_CODE               NVARCHAR2(100);',
'    V_MODULE_NAME               NVARCHAR2(100);',
'    V_MODULE_CODE               NVARCHAR2(100);',
'    V_CURRENT_FOLDER_CLASS_NAME NVARCHAR2(100);',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2025/3/19 11:36',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6279\91CF\5220\9664\64CD\4F5C'),
'     */',
'BEGIN',
unistr('    -- \67E5\8BE2\5168\90E8\5206\7C7B\FF08\65E0\5206\7C7BID\FF09'),
'    select FOLDER_CLASS_ID into V_FOLDER_CLASS_ID from STS_FOLDER_CLASS where FOLDER_CLASS_LEVEL = 0 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \65E0\5206\7C7BID \5B58\5728\7684\60C5\51B5\4E0B'),
'    if V_FOLDER_CLASS_ID > 0 then',
unistr('        -- \67E5\8BE2\5206\7C7B\4E0B\662F\5426\6709\6587\4EF6\5E93'),
'        select count(1) into V_FOLDER_LIB_COUNT from STS_FOLDER_LIB where FOLDER_CLASS_ID = :P10_FOLDER_CLASS_ID and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- \5206\7C7B\4E0B\6587\4EF6\5E93\5C06\81EA\52A8\4FEE\6539\4E3A\201C\65E0\5206\7C7B\201D \903B\8F91\5904\7406'),
'        if V_FOLDER_LIB_COUNT > 0 then',
'            update STS_FOLDER_LIB set FOLDER_CLASS_ID = V_FOLDER_CLASS_ID, UPDATED_BY = :MPF_USER_ID, UPDATE_DATE = sysdate',
'            where FOLDER_CLASS_ID = :P10_FOLDER_CLASS_ID and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'        end if;',
'',
unistr('        -- \64CD\4F5C\65E5\5FD7\8BB0\5F55 \5220\9664\5206\7C7B\64CD\4F5C'),
unistr('        -- \67E5\8BE2\5F53\524D\5206\7C7B\540D\79F0'),
'        select FOLDER_CLASS_NAME into V_CURRENT_FOLDER_CLASS_NAME from STS_FOLDER_CLASS where FOLDER_CLASS_ID = :P10_FOLDER_CLASS_ID and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
'        if V_CURRENT_FOLDER_CLASS_NAME is not null then',
unistr('            -- \884C\4E3A\FF08\5220\9664\FF09'),
'            select CONFIG_NAME, CONFIG_CODE INTO V_ACTION_NAME,V_ACTION_CODE from STS_SYS_CONFIG where CONFIG_TYPE = 15 and CONFIG_CODE = ''DELETE'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
unistr('            -- \5185\5BB9\FF08\81EA\5B9A\4E49\5206\7C7B\FF09'),
'            select CONFIG_NAME, CONFIG_CODE',
'            INTO V_MODULE_NAME,V_MODULE_CODE',
'            from STS_SYS_CONFIG',
'            where CONFIG_TYPE = 30',
'              and CONFIG_CODE = ''FOLDER_CLASS''',
'              and IS_ENABLE = 1',
'              and DEL_FLAG = 0',
'              and TENANT_ID = :USER_TENANT;',
'',
unistr('            -- \65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C'),
unistr('            insert into STS_OPERATION_LOG (operation_action, -- \589E\5220\6539\67E5\3001\79FB\9664\3001\6062\590D\3001\5F52\6863\7B49'),
unistr('                                           operation_module, operation_content, -- \5220\9664\5206\7C7B\300C\6280\672F\652F\6301\300D'),
'                                           OPERATION_REFERENCE_ID,tenant_id, created_by, creation_date, updated_by, update_date)',
'            values (V_ACTION_CODE, V_MODULE_CODE,',
unistr('                    V_ACTION_NAME || V_MODULE_NAME || ''\300C'' || V_CURRENT_FOLDER_CLASS_NAME || ''\300D'',:P10_FOLDER_CLASS_ID, :USER_TENANT, :MPF_USER_ID, sysdate, :MPF_USER_ID, sysdate);'),
'',
unistr('            -- \5220\9664\81EA\5B9A\4E49\5206\7C7B\64CD\4F5C'),
'            update STS_FOLDER_CLASS',
'            set DEL_FLAG    = 1,',
'                UPDATED_BY  = :MPF_USER_ID,',
'                UPDATE_DATE = sysdate',
'            where FOLDER_CLASS_ID = :P10_FOLDER_CLASS_ID',
'              and DEL_FLAG = 0',
'              and TENANT_ID = :USER_TENANT;',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'        end if;',
'    else',
unistr('        -- \5F39\7A97\63D0\9192\7BA1\7406\5458\521B\5EFA\5168\90E8\5206\7C7B'),
'        V_ROW_COUNT := 2;',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P10_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P10_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P10_FOLDER_CLASS_ID'
,p_attribute_03=>'P10_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778188900121303117)
,p_event_id=>wwv_flow_imp.id(3778186908365303115)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P10_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778187875630303116)
,p_event_id=>wwv_flow_imp.id(3778186908365303115)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4229589551134627713)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778189330830303117)
,p_name=>unistr('\5237\65B0\7F51\683C\6570\636E')
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778189746382303117)
,p_event_id=>wwv_flow_imp.id(3778189330830303117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4229589551134627713)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

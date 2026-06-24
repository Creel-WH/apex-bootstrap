prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
,p_alias=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
,p_step_title=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807208866505119)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function removeBlacklist(appId){',
'    $s(''P42_SELECT_ID'', appId)',
'    $("#remove_blacklist_btn").click()',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.app_name {',
'    display: flex;',
'    justify-content: flex-start;',
'    align-items: center;',
'}',
'',
'#remove_blacklist_btn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4193758272147196936)
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
 p_id=>wwv_flow_imp.id(4193758916730196939)
,p_plug_name=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JW_APP_ID,',
'       APP_ICON,',
'       APP_NAME,',
'       APP_TYPE',
'FROM JW_APP',
'WHERE DEL_FLAG = 0',
'  AND IS_BLACKLIST = 1',
'  AND (:JW_IS_ADMIN = 1 OR JW_APP_ID IN (SELECT REFERENCE_ID',
'                                           FROM JW_ADMIN',
'                                           WHERE REFERENCE_TYPE = ''APP''',
'                                             AND USER_ID = :JW_USER_ID));'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4188371001670837309)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', unistr('<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="removeBlacklist(''&JW_APP_ID.'')">\79FB\51FA\9ED1\540D\5355</span>'))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4193760296913196944)
,p_name=>'JW_APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JW_APP_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4193761236214196947)
,p_name=>'APP_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\5E94\7528\56FE\6807')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="app_name">',
    '  <img style=''height: 40px;margin-right: 20px'' src="&APP_ICON." title="&APP_ICON."/>',
    '  <!-- <span>&APP_NAME.</span> -->',
    '</div>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4193762247995196948)
,p_name=>'APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5E94\7528\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(4193763255217196948)
,p_name=>'APP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5E94\7528\5217\8868')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3864973736453971115)
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
 p_id=>wwv_flow_imp.id(4193759447768196940)
,p_internal_uid=>1733626609580346674
,p_is_editable=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
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
 p_id=>wwv_flow_imp.id(4193759906019196941)
,p_interactive_grid_id=>wwv_flow_imp.id(4193759447768196940)
,p_static_id=>'2594139'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4193760058201196941)
,p_report_id=>wwv_flow_imp.id(4193759906019196941)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4193760689678196946)
,p_view_id=>wwv_flow_imp.id(4193760058201196941)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4193760296913196944)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4193761613169196947)
,p_view_id=>wwv_flow_imp.id(4193760058201196941)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4193761236214196947)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4193762637505196948)
,p_view_id=>wwv_flow_imp.id(4193760058201196941)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4193762247995196948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4193763616932196948)
,p_view_id=>wwv_flow_imp.id(4193760058201196941)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4193763255217196948)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4193785870812239760)
,p_view_id=>wwv_flow_imp.id(4193760058201196941)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4188371001670837309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788942204262107312)
,p_button_sequence=>60
,p_button_name=>unistr('\79FB\51FA\9ED1\540D\5355')
,p_button_static_id=>'remove_blacklist_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\79FB\51FA\9ED1\540D\5355')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4188375969667837315)
,p_name=>'P42_SELECT_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788946833586107317)
,p_name=>unistr('\79FB\51FA\9ED1\540D\5355')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788942204262107312)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788947285768107318)
,p_event_id=>wwv_flow_imp.id(2788946833586107317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update JW_APP ',
'set IS_BLACKLIST=0,',
'    UPDATE_DATE=SYSDATE,',
'    UPDATED_BY=:JW_USER_ID',
'where JW_APP_ID=:P42_SELECT_ID;'))
,p_attribute_02=>'P42_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788947768456107318)
,p_event_id=>wwv_flow_imp.id(2788946833586107317)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4193758916730196939)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2462030772858922488)
,p_name=>unistr('\5E94\7528\56FE\6807-\56FE\7247\9884\89C8\521D\59CB\5316')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2462030859039922489)
,p_event_id=>wwv_flow_imp.id(2462030772858922488)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\56FE\7247\5143\7D20'),
'var images = document.querySelectorAll(''img'');',
'',
unistr('// \4E3A\6BCF\4E2A\56FE\7247\5143\7D20\6DFB\52A0\70B9\51FB\4E8B\4EF6\76D1\542C\5668'),
'images.forEach(function(image) {',
unistr('    // \6DFB\52A0\9F20\6807\60AC\505C\65F6\7684\6307\9488\6837\5F0F'),
'    image.style.cursor = ''pointer'';',
'',
'    image.addEventListener(''click'', function() {',
unistr('        // \521B\5EFA\6A21\6001\6846\5E76\8BBE\7F6E\5176\5185\5BB9\4E3A\88AB\70B9\51FB\7684\56FE\7247'),
'        var modal = document.createElement(''div'');',
'        modal.style.position = ''fixed'';',
'        modal.style.top = ''0'';',
'        modal.style.left = ''0'';',
'        modal.style.width = ''100%'';',
'        modal.style.height = ''100%'';',
'        modal.style.backgroundColor = ''rgba(0, 0, 0, 0.8)'';',
'        modal.style.display = ''flex'';',
'        modal.style.justifyContent = ''center'';',
'        modal.style.alignItems = ''center'';',
'        modal.style.zIndex = ''9999'';',
'',
'        var modalImage = document.createElement(''img'');',
'        modalImage.src = this.src;',
'        modalImage.style.maxWidth = ''100%'';',
'        modalImage.style.maxHeight = ''100%'';',
'        modalImage.style.borderRadius = ''5px'';',
'        modalImage.style.boxShadow = ''0 4px 6px rgba(0, 0, 0, 0.1)'';',
'',
'        modal.appendChild(modalImage);',
'        document.body.appendChild(modal);',
'',
unistr('        // \70B9\51FB\6A21\6001\6846\5173\95ED\5B83'),
'        modal.addEventListener(''click'', function() {',
'            document.body.removeChild(modal);',
'        });',
'    });',
'});'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_name=>unistr('\9009\62E9\5E94\7528')
,p_alias=>unistr('\9009\62E9\5E94\7528')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\9009\62E9\5E94\7528')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807299148506566)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function addApp(appId, is_add) {',
unistr('    if (is_add === ''\6DFB\52A0'') {'),
'        $s(''P53_SELECT_APP_IDS'', appId)',
'        $(''#add-btn'').click()',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.app_name {',
'    display: flex;',
'    justify-content: flex-start;',
'    align-items: center;',
'}',
'',
'#add-btn {',
'    margin-top: 20px;',
'}',
'',
unistr('.\5DF2\6DFB\52A0 {'),
'   color:#494949; ',
'}',
'',
unistr('.\6DFB\52A0 {'),
'   color:#0576FF;',
'   cursor: pointer; ',
'}',
'',
'#add-btn {',
'    display: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4791911575609708826)
,p_plug_name=>unistr('\9009\62E9\5E94\7528')
,p_region_name=>'app-grid'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT w.JW_APP_ID,',
'       w.APP_ICON,',
'       w.APP_NAME,',
'       CASE',
'           WHEN EXISTS (SELECT 1',
'                        FROM JW_APP_GROUP_ASSO asso',
'                                 JOIN JW_APP_GROUP g ON asso.APP_GROUP_ID = g.APP_GROUP_ID',
'                        WHERE asso.APP_ID = w.JW_APP_ID',
'                          AND g.WORKBENCH_ID = :P53_WORKBENCH_ID',
unistr('                          AND asso.DEL_FLAG = 0) THEN ''\5DF2\6DFB\52A0'''),
unistr('           ELSE ''\6DFB\52A0'''),
'           END AS IS_ADD',
'FROM JW_APP w',
'WHERE w.DEL_FLAG = 0 and w.IS_BLACKLIST = 0;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P53_WORKBENCH_ID'
,p_prn_page_header=>unistr('\9009\62E9\5E94\7528')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4305150837828567296)
,p_name=>'APP_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\56FE\6807')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="app_name">',
    '  <img style=''height: 40px;margin-right: 20px'' src="&APP_ICON." title="&APP_ICON."/>',
    '</div>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4305150874524567297)
,p_name=>'IS_ADD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ADD'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span class="&IS_ADD."  onclick="addApp(&JW_APP_ID.,''&IS_ADD.'')">&IS_ADD.</span>')).to_clob
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
 p_id=>wwv_flow_imp.id(4791914416477708838)
,p_name=>'JW_APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JW_APP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4791916423245708840)
,p_name=>'APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5E94\7528\540D\79F0')
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4791912123989708829)
,p_internal_uid=>2331779285801858563
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
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4791912540205708830)
,p_interactive_grid_id=>wwv_flow_imp.id(4791912123989708829)
,p_static_id=>'2375279'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4791912707261708830)
,p_report_id=>wwv_flow_imp.id(4791912540205708830)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4307295026930845192)
,p_view_id=>wwv_flow_imp.id(4791912707261708830)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4305150837828567296)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4307300960808913532)
,p_view_id=>wwv_flow_imp.id(4791912707261708830)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4305150874524567297)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791914860676708839)
,p_view_id=>wwv_flow_imp.id(4791912707261708830)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4791914416477708838)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791916865657708840)
,p_view_id=>wwv_flow_imp.id(4791912707261708830)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4791916423245708840)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788577527006022722)
,p_button_sequence=>60
,p_button_name=>unistr('\6DFB\52A0')
,p_button_static_id=>'add-btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\6DFB\52A0')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791876833723805214)
,p_name=>'P53_SELECT_APP_IDS'
,p_item_sequence=>10
,p_item_default=>''''''
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791876878097805215)
,p_name=>'P53_WORKBENCH_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788581290259022734)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788581772390022735)
,p_event_id=>wwv_flow_imp.id(2788581290259022734)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P53_SELECT_APP_IDS'','''')'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788582150567022735)
,p_name=>unistr('\6DFB\52A0')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788577527006022722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788582680220022735)
,p_event_id=>wwv_flow_imp.id(2788582150567022735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var element = $(''[data-id="'' + $v(''P53_SELECT_APP_IDS'') + ''"]'');',
'',
unistr('// \67E5\627E\8BE5\5143\7D20\4E0B class \4E3A "\6DFB\52A0" \7684\5B50\5143\7D20'),
unistr('var childElement = element.find(''.\6DFB\52A0'');'),
'',
unistr('// \4FEE\6539\5B50\5143\7D20\7684\6587\672C\5185\5BB9\548C\7C7B'),
unistr('childElement.text(''\5DF2\6DFB\52A0'').removeClass(''\6DFB\52A0'').addClass(''\5DF2\6DFB\52A0'');')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788583201835022735)
,p_event_id=>wwv_flow_imp.id(2788582150567022735)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\6DFB\52A0 \65E5\5FD7'),
'    */',
'    v_app_group_id   number(20);',
'    v_app_name       varchar2(255);',
'    v_workbench_name varchar2(255);',
'begin',
'    select APP_GROUP_ID',
'    into v_app_group_id',
'    from JW_APP_GROUP',
'    where WORKBENCH_ID = :P53_WORKBENCH_ID',
'      and IS_DEFAULT = 1',
'      and DEL_FLAG = 0;',
'',
'    insert into JW_APP_GROUP_ASSO(TENANT_ID,',
'                                  CREATED_BY,',
'                                  UPDATED_BY,',
'                                  APP_GROUP_ID,',
'                                  APP_ID)',
'    values (:JW_USER_TENANT,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
'            v_app_group_id,',
'            :P53_SELECT_APP_IDS);',
'    select APP_NAME into v_app_name from JW_APP where JW_APP_ID = :P53_SELECT_APP_IDS;',
'',
'    select WORKBENCH_NAME into v_workbench_name from JW_WORKBENCH where WORKBENCH_ID = :P53_WORKBENCH_ID;',
unistr('    save_audit_log(:JW_USER_ID, ''WAM'', ''WORKBENCH_ADD_APP'', ''\5DE5\4F5C\53F0\FF1A'' || v_workbench_name || ''\FF1B\5E94\7528\FF1A'' || v_app_name);'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6DFB\52A0'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P53_WORKBENCH_ID,P53_SELECT_APP_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

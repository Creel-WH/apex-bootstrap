prompt --application/pages/page_00307
begin
--   Manifest
--     PAGE: 00307
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
 p_id=>307
,p_name=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_alias=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_step_title=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(184138933701488475)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(184139639532488480)
,p_plug_name=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PRESET_ID,',
'       AREA_ID,',
'       AREA_NAME,',
'       IMPACT_TIME,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       REMARK',
'from CHECK_CHANGE_IMPACT_TIME_PRESET',
'where tenant_id = :USERTENANT',
'  AND DEL_FLAG = 0',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(162876343338415179)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT FA1.NAME, FM.MAP_AREA_X_ID',
'FROM FND_MAPS FM',
'         JOIN FND_AREAS FA1 ON FA1.AREA_ID = FM.MAP_AREA_X_ID',
'         JOIN FND_FAB FF ON FF.FAB_ID = FM.FAB_ID',
'WHERE FM.TENANT_ID = :USERTENANT',
'  AND FM.DEL_FLAG = 0',
'  AND FM.BASE_DEPT_ID = :ORG_ID',
'  AND FA1.BASE_DEPT_ID = :ORG_ID',
'  AND FA1.TENANT_ID = :USERTENANT',
'  AND FM.DEL_FLAG = 0',
'  AND FF.DEL_FLAG = 0',
'  AND FF.TENANT_ID = :USERTENANT',
'  AND FF.BASE_DEPT_ID = :ORG_ID',
unistr('--   \4ECE\7F51\683C\7BA1\7406\6765'),
'',
unistr('-- \4ECE\5173\8054\53D8\66F4\70B9\6765'),
'-- SELECT distinct',
'--  FA.NAME    AREA_NAME,',
'--        CCL.AREA_ID      ',
'-- FROM CHECK_CHANGE_LIBRARY CCL',
'--          LEFT JOIN FND_AREAS FA ON CCL.AREA_ID = FA.AREA_ID',
'-- WHERE CCL.DEL_FLAG = 0',
'--   AND CCL.TENANT_ID = :USERTENANT',
'--   AND CCL.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND FA.TENANT_ID = :USERTENANT',
'--   AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND FA.TYPE =1',
'--   AND FA.DEL_FLAG = 0',
'--   AND (:P307_DEPT = -1 OR CCL.DEPT_ID = :P307_DEPT)',
'--   AND (:P307_AREA = -1 OR CCL.AREA_ID = :P307_AREA)',
'-- ;'))
,p_lov_display_extra=>true
,p_lov_display_null=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(162877680839415193)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\533A\57DF\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_max_length=>200
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT NAME key,NAME value',
'from FND_AREAS',
'where type = 1',
'  AND DEL_FLAG = 0',
'  and tenant_id = :USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
unistr('-- \4ECE\5DE5\6BB5\7BA1\7406\6765'),
'',
'-- SELECT DISTINCT FA1.NAME key, FA1.NAME value',
'-- FROM FND_MAPS FM',
'--          JOIN FND_AREAS FA1 ON FA1.AREA_ID = FM.MAP_AREA_X_ID',
'--          JOIN FND_FAB FF ON FF.FAB_ID = FM.FAB_ID',
'-- WHERE FM.TENANT_ID = :USERTENANT',
'--   AND FM.DEL_FLAG = 0',
'--   AND FM.BASE_DEPT_ID = :ORG_ID',
'--   AND FA1.BASE_DEPT_ID = :ORG_ID',
'--   AND FA1.TENANT_ID = :USERTENANT',
'--   AND FM.DEL_FLAG = 0',
'--   AND FF.DEL_FLAG = 0',
'--   AND FF.TENANT_ID = :USERTENANT',
'--   AND FF.BASE_DEPT_ID = :ORG_ID',
unistr('-- --   \4ECE\7F51\683C\7BA1\7406\6765')))
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
 p_id=>wwv_flow_imp.id(184140886687488484)
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
 p_id=>wwv_flow_imp.id(184141351300488484)
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
 p_id=>wwv_flow_imp.id(184142368278488486)
,p_name=>'PRESET_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRESET_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(184145393551488488)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(184146360823488488)
,p_name=>'IMPACT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMPACT_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(184147379277488489)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(184148398483488490)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(184149409852488490)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(184150431956488491)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(184140125828488480)
,p_internal_uid=>111017577351907937
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
 p_id=>wwv_flow_imp.id(184140533608488481)
,p_interactive_grid_id=>wwv_flow_imp.id(184140125828488480)
,p_static_id=>'1110180'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(184140747499488481)
,p_report_id=>wwv_flow_imp.id(184140533608488481)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184141764651488485)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(184141351300488484)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184142807132488486)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(184142368278488486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184145761457488488)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(184145393551488488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184146829506488488)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(184146360823488488)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184147843965488489)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(184147379277488489)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184148795573488490)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(184148398483488490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184149766156488491)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(184149409852488490)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184150829723488491)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(184150431956488491)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184162417439006150)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(162876343338415179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(184732057199993447)
,p_view_id=>wwv_flow_imp.id(184140747499488481)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(162877680839415193)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(184736695094035644)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(184139639532488480)
,p_button_name=>unistr('\5237\65B0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5237\65B0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162875846954415174)
,p_name=>'P307_DEPT'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(162876021519415176)
,p_name=>'P307_AREA'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(184737190551035649)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(184736695094035644)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184737315092035650)
,p_event_id=>wwv_flow_imp.id(184737190551035649)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    -- \901A\8FC7\6E38\6807\904D\5386\6240\6709\533A\57DF\540D'),
'    CURSOR area_cursor IS',
unistr('    -- \5DE5\6BB5\7BA1\7406'),
'select  DISTINCT NAME AS area_name',
'from FND_AREAS',
'where type = 1',
'  AND DEL_FLAG = 0',
'  and tenant_id = :USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'',
unistr('    -- \7F51\683C\7BA1\7406'),
'--         SELECT DISTINCT FA1.NAME AS area_name',
'--         FROM FND_MAPS FM',
'--              JOIN FND_AREAS FA1 ON FA1.AREA_ID = FM.MAP_AREA_X_ID',
'-- --              JOIN FND_FAB FF ON FF.FAB_ID = FM.FAB_ID',
'--         WHERE FM.TENANT_ID = :USERTENANT',
'--           AND FM.DEL_FLAG = 0',
'--           AND FM.BASE_DEPT_ID = :BASE_DEPT_ID',
'--           AND FA1.BASE_DEPT_ID = :BASE_DEPT_ID',
'--           AND FA1.TENANT_ID = :USERTENANT',
'--           AND FM.DEL_FLAG = 0',
'-- --           AND FF.DEL_FLAG = 0',
'-- --           AND FF.TENANT_ID = :USERTENANT',
'-- --           AND FF.BASE_DEPT_ID = :BASE_DEPT_ID',
';',
'       area_record area_cursor%ROWTYPE;',
'    v_err_msg NVARCHAR2(2000);',
'BEGIN',
unistr('    -- \5220\9664\6240\6709 IMPACT_TIME \4E3A0\7684\6570\636E'),
'    DELETE FROM CHECK_CHANGE_IMPACT_TIME_PRESET',
'    WHERE ',
'--         IMPACT_TIME = 0',
'--       AND ',
'        TENANT_ID = :USERTENANT',
'    AND DEL_FLAG = 1;',
'',
unistr('    -- \6253\5F00\6E38\6807\5E76\5FAA\73AF\5904\7406'),
'    OPEN area_cursor;',
'    LOOP',
'        FETCH area_cursor INTO area_record;',
'        EXIT WHEN area_cursor%NOTFOUND;',
'',
unistr('        -- \4F7F\7528 MERGE \8BED\53E5\786E\4FDD\4E0D\91CD\590D\63D2\5165'),
'        MERGE INTO CHECK_CHANGE_IMPACT_TIME_PRESET tgt',
'        USING (SELECT area_record.area_name AS area_name FROM dual) src',
'        ON (tgt.AREA_NAME = src.area_name)',
'        WHEN NOT MATCHED THEN',
'            INSERT (AREA_NAME, IMPACT_TIME, TENANT_ID, CREATED_BY, CREATION_DATE, BASE_DEPT_ID)',
'            VALUES (src.area_name, 0, :USERTENANT, :USER_ID, SYSDATE, :BASE_DEPT_ID);',
'    END LOOP;',
'    CLOSE area_cursor;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(184737439792035651)
,p_event_id=>wwv_flow_imp.id(184737190551035649)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(184139639532488480)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(184153432383488496)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(184139639532488480)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    /**',
'     * create by: wxx',
'     * create date:2024/11/26 10:00',
'     * modify by:',
'     * modify date:',
unistr('     * describe:p307 \5F71\54CD\65F6\95F4\9884\8BBE'),
'     */',
'begin',
'    case:APEX$ROW_STATUS',
'        --insert',
'               when''C''',
'            then insert into CHECK_CHANGE_IMPACT_TIME_PRESET(CREATED_BY,',
'                                                UPDATED_BY,',
'                                                TENANT_ID,',
'                                                AREA_NAME,',
'                                                IMPACT_TIME,',
'                                                BASE_DEPT_ID)',
'                 values (:USER_ID,',
'                         :USER_ID,',
'                         :USERTENANT,',
'                         :AREA_NAME,',
'                         :IMPACT_TIME,',
'                         :BASE_DEPT_ID)',
'                 returning PRESET_ID into :PRESET_ID;',
'',
'        --update',
'        when''U''',
'            then update CHECK_CHANGE_IMPACT_TIME_PRESET',
'                 set UPDATE_DATE=sysdate,',
'                 UPDATED_BY=:USER_ID,',
'                 AREA_NAME = :AREA_NAME,',
'                 IMPACT_TIME=:IMPACT_TIME',
'                 where PRESET_ID = :PRESET_ID;',
'',
'        --delete',
'        when''D''',
'            then update CHECK_CHANGE_IMPACT_TIME_PRESET',
'                 set UPDATE_DATE=sysdate,',
'                 UPDATED_BY=:USER_ID,',
'                 DEL_FLAG = 1',
'                 where PRESET_ID = :PRESET_ID;',
'',
'        end case;',
'exception',
'    when others then',
'  rollback;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>111030883906907953
);
wwv_flow_imp.component_end;
end;
/

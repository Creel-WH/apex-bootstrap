prompt --application/pages/page_00234
begin
--   Manifest
--     PAGE: 00234
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
 p_id=>234
,p_name=>unistr('\6211\7684\5BA1\6838')
,p_alias=>unistr('\6211\7684\5BA1\68381')
,p_step_title=>unistr('\6211\7684\5BA1\6838')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function turnPage(event_id, event_analyze_id,analyze_template_org_id, audit_state) {',
'',
'    console.log(event_id);',
'    console.log(audit_state);',
'    $s(''P234_EVENT_ID'', event_id);',
'    $s(''P234_EVENT_ANALYZE_ID'', event_analyze_id);',
'    $s(''P234_ANALYZE_TEMPLATE_ORG_ID'', analyze_template_org_id);',
'    $s(''P234_AUDIT_STATE'', audit_state);',
'    $(''#btnTurn'').click();',
'}',
'',
''))
,p_css_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-labelContainer {',
'    max-width: 45% !important;',
'    flex-basis: 45% !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2303223548784049203)
,p_plug_name=>unistr('\5206\6790\603B\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from (',
'         select a.EVENT_ANALYZE_ID,',
'                a.EVENT_ID,',
'                e.EVENT_SERIAL_NO,',
'                a.ANALYZE_TEMPLATE_ORG_ID,',
'                org.TEMPLATE_ALIAS_NAME,',
'                a.SUBMIT_USER_ID,',
'                a.AUDIT_STATE,',
'                a.AUDIT_USER_ID,',
'                a.APEX_PAGE_ID,',
'                b.NAME                                                                    BASE_NAME,',
'                f.NAME                                                                    FAB_NAME,',
'                map.MAP_AREA_Y_NAME,',
'                map.MAP_AREA_X_NAME,',
'                basic.NAME                                                                SUBMIT_NAME,',
'                e.FIRST_EVENT_CODE,',
'                e.SECOND_EVENT_CODE,',
'                e.PHENOMENON_CODE,',
unistr('                DECODE(a.AUDIT_STATE, ''AUDIT'', ''\5BA1\6838'', null)                                OP,'),
unistr('                TO_CHAR(e.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' ||'),
'                TO_CHAR(e.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')                              EVENT_DATE,',
'                TO_CHAR(ROUND((e.END_TIME - e.BEGIN_TIME) * 24 * 60, 1), ''FM99999990.09'') EVENT_TIME,',
unistr('                decode(e.IS_KEY_PROCESS, ''TRUE'', ''\662F'', ''\5426'')                                IS_KEY_PROCESS,'),
unistr('                decode(e.IS_STOP_LINE, ''TRUE'', ''\662F'', ''\5426'')                                  IS_STOP_LINE,'),
'                e.DESCRIPTION',
'         from TENANT_EVENT_ANALYZE a',
'                  left join TENANT_EVENT e on a.EVENT_ID = e.EVENT_ID and e.TENANT_ID = a.TENANT_ID',
'                  left join TENANT_ANALYZE_TEMPLATE_ORG org',
'                            on a.ANALYZE_TEMPLATE_ORG_ID = org.ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = a.TENANT_ID',
'                  left join FND_FAB f on e.FAB_ID = f.FAB_ID',
'                  left join TENANT_BASE b on b.BASE_ID = f.BASE_ID',
'                  left join MPF_USER_BASIC_V basic on e.SUBMIT_USER_ID = basic.EXT_USER_ID',
'                  left join FND_MAPS_AREAS_ASSO_V map on e.MAP_ID = map.MAP_ID',
'         where a.TENANT_ID = :USERTENANT',
'           and a.DEL_FLAG = 0',
'           and a.AUDIT_USER_ID = :USER_ID',
'           and a.AUDIT_STATE in (''REJECT'', ''COMPLETE'', ''AUDIT'')',
'           AND a.BASE_DEPT_ID=:BASE_DEPT_ID',
'           AND basic.BASE_DEPT_ID=:BASE_DEPT_ID)',
'where AUDIT_STATE IN (SELECT * FROM TABLE (SPLITSTR(:P234_AUDIT_STATE, '','')))',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P234_AUDIT_STATE,P234_DEPT_ID'
,p_prn_page_header=>unistr('\5206\6790\603B\8868')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2176259905630149817)
,p_name=>'OP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5BA1\6838')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>6
,p_link_target=>'f?p=&APP_ID.:236:&SESSION.::&DEBUG.::P236_EVENT_ANALYZE_ID,P236_EVENT_ID:&EVENT_ANALYZE_ID.,&EVENT_ID.'
,p_link_text=>'&OP.'
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
 p_id=>wwv_flow_imp.id(2303224821663049202)
,p_name=>'EVENT_ANALYZE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ANALYZE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
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
 p_id=>wwv_flow_imp.id(2303225845135049201)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(2303227773988049200)
,p_name=>'ANALYZE_TEMPLATE_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ANALYZE_TEMPLATE_ORG_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(2303230837661049199)
,p_name=>'SUBMIT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\590D\76D8\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2160585133408381273)
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303231820373049198)
,p_name=>'AUDIT_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_STATE'
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
 p_id=>wwv_flow_imp.id(2303232807516049198)
,p_name=>'AUDIT_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5BA1\6838\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2160585133408381273)
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
 p_id=>wwv_flow_imp.id(2303239787592049194)
,p_name=>'APEX_PAGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APEX_PAGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2303356474507730823)
,p_name=>'EVENT_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\4E8B\4EF6\7F16\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a href="javascript:void(0);" onclick="turnPage(''&EVENT_ID.'',''&EVENT_ANALYZE_ID.'',''&ANALYZE_TEMPLATE_ORG_ID.'',''&AUDIT_STATE.'')">&EVENT_SERIAL_NO.</a>')).to_clob
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
 p_id=>wwv_flow_imp.id(2303356614438730824)
,p_name=>'TEMPLATE_ALIAS_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_ALIAS_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\6A21\677F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303357119408730829)
,p_name=>'BASE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303357171141730830)
,p_name=>'MAP_AREA_Y_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303357325431730831)
,p_name=>'MAP_AREA_X_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\6BB5')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303357393123730832)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6545\969C\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>43
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
 p_id=>wwv_flow_imp.id(2303357533517730833)
,p_name=>'EVENT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6301\7EED\65F6\95F4(\5206\949F)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_max_length=>12
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303357778964730836)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>2000
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
 p_id=>wwv_flow_imp.id(2303357860917730837)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303358005148730838)
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
 p_id=>wwv_flow_imp.id(2303358155643730840)
,p_name=>'IS_KEY_PROCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\662F\5426\74F6\9888')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(2303358289382730841)
,p_name=>'IS_STOP_LINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\662F\5426\505C\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>3
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
 p_id=>wwv_flow_imp.id(2303980254768887432)
,p_name=>'SUBMIT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E0A\62A5\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2303980381027887433)
,p_name=>'FIRST_EVENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_EVENT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5927\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_CATEGORY where TENANT_ID=:USERTENANT and DEL_FLAG=0  AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2303980453172887434)
,p_name=>'SECOND_EVENT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECOND_EVENT_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5C0F\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_CATEGORY where TENANT_ID=:USERTENANT and DEL_FLAG=0  AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2303980615304887435)
,p_name=>'PHENOMENON_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHENOMENON_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\73B0\8C61')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_PHENOMENON where  TENANT_ID=:USERTENANT and DEL_FLAG=0  AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2325563620456568061)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2303224023101049202)
,p_internal_uid=>193021968823545791
,p_is_editable=>true
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
 p_id=>wwv_flow_imp.id(2303224423942049202)
,p_interactive_grid_id=>wwv_flow_imp.id(2303224023101049202)
,p_static_id=>'606975'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2303224582057049202)
,p_report_id=>wwv_flow_imp.id(2303224423942049202)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2177020020706212232)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2176259905630149817)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303225180579049201)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2303224821663049202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303226212994049201)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2303225845135049201)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303228155127049200)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2303227773988049200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303231229571049199)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2303230837661049199)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303232174984049198)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2303231820373049198)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>69
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303233239190049198)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2303232807516049198)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303240199820049194)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2303239787592049194)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303362487280730707)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2303356474507730823)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303363433658730704)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2303356614438730824)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303393864291920858)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2303357119408730829)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.6875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303394821202920852)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2303357171141730830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303395677387920848)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2303357325431730831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303396606930920846)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2303357393123730832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>290
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303397481733920843)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2303357533517730833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303400223296920832)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2303357778964730836)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303425449396908647)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2303357860917730837)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303441043906879120)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2303358155643730840)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2303441885093879117)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(2303358289382730841)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2304043521289860817)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(2303980254768887432)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2304044443746860814)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2303980381027887433)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2304045218604860811)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2303980453172887434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2304046114550860808)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2303980615304887435)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2334390149103255674)
,p_view_id=>wwv_flow_imp.id(2303224582057049202)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2325563620456568061)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176418737206361770)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2303223548784049203)
,p_button_name=>unistr('\5168\90E8')
,p_button_static_id=>'btn_c_all'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pillStart'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\5168\90E8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176419471961361769)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2303223548784049203)
,p_button_name=>unistr('\5BA1\6838\4E2D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\5BA1\6838\4E2D')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176419895118361769)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2303223548784049203)
,p_button_name=>unistr('\5DF2\9A73\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\5DF2\9A73\56DE')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176420753633361768)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2303223548784049203)
,p_button_name=>unistr('\5DF2\5B8C\6210')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\5DF2\5B8C\6210')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176421078157361768)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2303223548784049203)
,p_button_name=>unistr('\8DF3\8F6C\6A21\677F\9875')
,p_button_static_id=>'btnTurn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8DF3\8F6C\6A21\677F\9875')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176423873100361749)
,p_name=>'P234_DEPT_ID'
,p_item_sequence=>30
,p_item_default=>':USERDEPT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176424322199361749)
,p_name=>'P234_AUDIT_STATE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176424716850361749)
,p_name=>'P234_EVENT_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176425088562361749)
,p_name=>'P234_EVENT_IDS'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176425521651361749)
,p_name=>'P234_APEX_PAGE_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176425888908361748)
,p_name=>'P234_EVENT_ANALYZE_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176426325016361748)
,p_name=>'P234_EVENT_ANALYZE_IDS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176426694138361748)
,p_name=>'P234_ANALYZE_TEMPLATE_ORG_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176427101225361748)
,p_name=>'P234_FLAG'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176429309320361745)
,p_name=>unistr('\67E5\8BE2\5168\90E8')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176418737206361770)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176429796116361744)
,p_event_id=>wwv_flow_imp.id(2176429309320361745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'WAIT,COMPLETE,REJECT,AUDIT,UNREVIEW'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176430275601361744)
,p_event_id=>wwv_flow_imp.id(2176429309320361745)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176432148675361743)
,p_name=>unistr('\67E5\8BE2\5BA1\6838\4E2D')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176419471961361769)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176432635931361743)
,p_event_id=>wwv_flow_imp.id(2176432148675361743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'AUDIT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176433084537361743)
,p_event_id=>wwv_flow_imp.id(2176432148675361743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176433518556361743)
,p_name=>unistr('\63D2\53D9\5DF2\9A73\56DE')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176419895118361769)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176434021349361743)
,p_event_id=>wwv_flow_imp.id(2176433518556361743)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'REJECT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176434481189361742)
,p_event_id=>wwv_flow_imp.id(2176433518556361743)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176436339442361742)
,p_name=>unistr('\67E5\8BE2\5DF2\5B8C\6210')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176420753633361768)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176436843720361742)
,p_event_id=>wwv_flow_imp.id(2176436339442361742)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'COMPLETE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176437277897361741)
,p_event_id=>wwv_flow_imp.id(2176436339442361742)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176437674371361741)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176438179654361741)
,p_event_id=>wwv_flow_imp.id(2176437674371361741)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tds = $(''.status_cs'');',
'// console.log(tds);',
'tds.each(function (index, e) {',
'    var val = $(e).text();',
'    // console.log(index, val);',
'    if (val) {',
unistr('        if (val == ''\5F85\590D\76D8'') {'),
'            $(e).css({ ''color'': ''red'' });',
'           ',
'        }',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176439456966361740)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176442974483361738)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P234_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'COMPLETE,REJECT,AUDIT,UNREVIEW'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P234_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176443548805361738)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#myBtn'').hide();',
'$(''#btnTurn'').hide();',
'$(''#btn_edit'').hide();',
'$(''#btn_assgin'').hide();',
'',
'',
'',
'',
'var tds = $(''.status_cs'');',
'tds.each(function (index, e) {',
'    var val = $(e).text();',
'    if (val) {',
unistr('        if (val == ''\5F85\590D\76D8'') {'),
'            $(e).css({ ''color'': ''red'' });          ',
'        }',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176443987180361738)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.onload=function(){',
'    $(''#btnSelect'').click()',
'}',
''))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P234_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176444481742361738)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2176418737206361770)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_AUDIT_STATE'
,p_client_condition_expression=>'COMPLETE,REJECT,AUDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176440004691361740)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2176419471961361769)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_AUDIT_STATE'
,p_client_condition_expression=>'AUDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176440973559361739)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2176419895118361769)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_AUDIT_STATE'
,p_client_condition_expression=>'REJECT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176441534836361739)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2176420753633361768)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_AUDIT_STATE'
,p_client_condition_expression=>'COMPLETE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176442045666361739)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2176421078157361768)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176442503705361739)
,p_event_id=>wwv_flow_imp.id(2176439456966361740)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176445430495361737)
,p_name=>unistr('\8DF3\8F6C')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176421078157361768)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176446367964361737)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65AD\662F\5426\62E5\6709\590D\76D8\6570\636E')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P234_EVENT_ANALYZE_ID''))){',
unistr('  // \5F39\51FA\6846\FF0C\8BA9\7528\6237\9009\62E9\672C\6B21\8981\4F7F\7528\7684\6A21\677F'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176447375174361737)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg                 nvarchar2(2000);',
'    v_analyze_template_org_id number(20);',
'',
'begin',
'',
'    if :P234_ANALYZE_TEMPLATE_ORG_ID is null then',
'        select max(ANALYZE_TEMPLATE_ORG_ID)',
'        into v_analyze_template_org_id',
'        from TENANT_ANALYZE_TEMPLATE_ORG',
'        where EXT_ORG_ID = :USERDEPT',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    else',
'        if :P234_AUDIT_STATE in (''COMPLETE'',''REJECT'',''AUDIT'') then',
'             select ANALYZE_TEMPLATE_ORG_ID into v_analyze_template_org_id from TENANT_EVENT_ANALYZE',
'             where EVENT_ANALYZE_ID=:P234_EVENT_ANALYZE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        else',
'             v_analyze_template_org_id := :P234_ANALYZE_TEMPLATE_ORG_ID;',
'        end if;',
'       ',
'    end if;',
'    apex_util.set_session_state(''P234_ANALYZE_TEMPLATE_ORG_ID'', v_analyze_template_org_id);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_03=>'P234_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176447895141361736)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_count            number(10) := 0;',
'    v_event_analyze_id number(20);',
'    v_page_id          number(20);',
'    v_begin_time       date;',
'    v_end_time         date;',
'',
'begin',
'',
unistr('    --\5224\65AD\662F\5426\62E5\6709\590D\76D8'),
'    select count(1)',
'    into v_count',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and TENANT_ID = :USERTENANT',
'      and DEL_FLAG = 0',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and ROWNUM = 1;',
'',
'    select t.APEX_PAGE_ID into v_page_id',
'    from TENANT_ANALYZE_TEMPLATE_ORG org',
'        inner join TENANT_ANALYZE_TEMPLATE_V2 t',
'            on org.ANALYZE_TEMPLATE_ID = t.ANALYZE_TEMPLATE_ID and t.TENANT_ID = org.TENANT_ID and t.DEL_FLAG = 0 and t.BASE_DEPT_ID=:BASE_DEPT_ID',
'        where org.ANALYZE_TEMPLATE_ORG_ID = :P234_ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = :USERTENANT AND org.BASE_DEPT_ID=:BASE_DEPT_ID ;',
'',
'    if v_count = 0 then',
'        ',
'        select max(BEGIN_TIME), max(END_TIME)',
'        into v_begin_time,v_end_time',
'        from TENANT_EVENT_V',
'        where TENANT_ID = :USERTENANT',
'          and EVENT_ID = :P234_EVENT_ID',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'        insert into TENANT_EVENT_ANALYZE(event_id, ext_org_id, analyze_template_org_id, created_time, end_time,',
'                                         submit_user_id, audit_state, audit_user_id, audit_opinion, apex_page_id,',
'                                         created_by, del_flag, tenant_id, BASE_DEPT_ID)',
'        values (:P234_EVENT_ID, :USERDEPT, :P234_ANALYZE_TEMPLATE_ORG_ID, v_begin_time, v_end_time, :USER_ID, ''WAIT'', null, null,',
'                v_page_id, :USER_ID, 0, :USERTENANT, :BASE_DEPT_ID) returning EVENT_ANALYZE_ID into v_event_analyze_id;',
'    else',
'        v_event_analyze_id:=:P234_EVENT_ANALYZE_ID;',
'    end if;',
'    apex_util.set_session_state(''P234_EVENT_ANALYZE_ID'', v_event_analyze_id);',
'    -- apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_page_id);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_AUDIT_STATE,P234_EVENT_ID,P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_EVENT_ANALYZE_ID,P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2573385182562426418)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>'page id'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_apex_page_id number(10);',
'begin',
'',
' select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'    where a.EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT  and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_apex_page_id);',
'end;'))
,p_attribute_02=>'P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176446933027361737)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230227')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_apex_page_id         number(20);',
'',
'begin',
'    select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'    where a.EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'      AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 227 then',
'        apex_util.set_session_state(''P227_EVENT_ANALYZE_ID'', :P234_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P227_EVENT_ID'', :P234_EVENT_ID);',
'        apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_EVENT_ID,P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_APEX_PAGE_ID'
,p_client_condition_expression=>'227'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176261539148149833)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230 237')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_apex_page_id         number(20);',
'',
'begin',
'    select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'    where a.EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'      AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 237 then',
'        apex_util.set_session_state(''P237_EVENT_ANALYZE_ID'', :P234_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P237_EVENT_ID'', :P234_EVENT_ID);',
'        apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_EVENT_ID,P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_APEX_PAGE_ID'
,p_client_condition_expression=>'237'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2178306917566399724)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230 238')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_apex_page_id         number(20);',
'',
'begin',
'    select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'    where a.EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'      AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P234_APEX_PAGE_ID = 238 then',
'        apex_util.set_session_state(''P238_EVENT_ANALYZE_ID'', :P234_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P238_EVENT_ID'', :P234_EVENT_ID);',
'        apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_EVENT_ID,P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_APEX_PAGE_ID'
,p_client_condition_expression=>'238'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3186580940176215614)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230 228')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_apex_page_id         number(20);',
'',
'begin',
'    select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID',
'    where a.EVENT_ANALYZE_ID = :P234_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'      AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P234_APEX_PAGE_ID = 228 then',
'        apex_util.set_session_state(''P228_EVENT_ANALYZE_ID'', :P234_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P228_EVENT_ID'', :P234_EVENT_ID);',
'        apex_util.set_session_state(''P234_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P234_EVENT_ID,P234_EVENT_ANALYZE_ID'
,p_attribute_03=>'P234_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P234_APEX_PAGE_ID'
,p_client_condition_expression=>'228'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176445911999361737)
,p_event_id=>wwv_flow_imp.id(2176445430495361737)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\9875\9762')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var id=$v(''P234_APEX_PAGE_ID'');',
'window.location.href=`f?p=&APP_ID.:${id}:&APP_SESSION.:::::`;'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176428359618361745)
,p_name=>unistr('\5237\65B0\8868\683C')
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176428944807361745)
,p_event_id=>wwv_flow_imp.id(2176428359618361745)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2176422295090361762)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2303223548784049203)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5206\6790\603B\8868 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>66220240812858351
);
wwv_flow_imp.component_end;
end;
/

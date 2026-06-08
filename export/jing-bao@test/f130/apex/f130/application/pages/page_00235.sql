prompt --application/pages/page_00235
begin
--   Manifest
--     PAGE: 00235
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
 p_id=>235
,p_name=>unistr('\590D\76D8\603B\8868')
,p_alias=>unistr('\590D\76D8\603B\8868')
,p_step_title=>unistr('\590D\76D8\603B\8868')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'function turnPage(event_id, event_analyze_id, analyze_template_org_id, audit_state) {',
'',
'    // console.log(''event_id:'' + event_id);',
'    // console.log(''event_analyze_id:'' + event_analyze_id);',
'    // console.log(''audit_state:'' + audit_state);',
'',
'    $s(''P235_EVENT_ID'', event_id);',
'    $s(''P235_EVENT_ANALYZE_ID'', event_analyze_id);',
'    $s(''P235_ANALYZE_TEMPLATE_ORG_ID'', analyze_template_org_id);',
'    $s(''P235_AUDIT_STATE'', audit_state);',
'',
'    if (audit_state == ''UNREVIEW'') {',
unistr('        alert(''\8BE5\5DE5\5355\65E0\9700\590D\76D8'');'),
'        return false;',
'    } else {',
'',
'        if (utils.checkNull(event_analyze_id)) {',
unistr('            alert(''\672A\6307\6D3E\7684\5DE5\5355\4E0D\80FD\590D\76D8\FF01'');'),
'            return false;',
'        }',
'        if (!map.get(event_id)) {',
'            map.set(event_id, 1);',
'            $(''#btnTurn'').click();',
'        } else {',
unistr('            console.log(''\91CD\590D\70B9\51FB'');'),
'        }',
'',
'    }',
'}',
'',
'',
'var start_date = $v(''P235_START_DATE'') ? new Date($v(''P235_START_DATE'')) : new Date(Date.now() - 3600 * 7 * 20 * 1000);',
'var end_date = $v(''P235_END_DATE'') ? new Date($v(''P235_END_DATE'')) : new Date(Date.now());',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P235_START_DATE'',',
'        type: ''date'',',
'        value: start_date,',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P235_START_DATE'', value);',
'        }',
'    });',
'})',
'',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P235_END_DATE'',',
'        type: ''date'',',
'        value: end_date,',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P235_END_DATE'', value);',
'        }',
'    });',
'})'))
,p_css_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-labelContainer {',
'    max-width: 45% !important;',
'    flex-basis: 45% !important;',
'}',
'',
'/* #P235_EVENT_CONDITION {',
'    margin-top: 0 !important;',
'} */',
'',
'.hide_btn{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2244020573906295835)
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
 p_id=>wwv_flow_imp.id(2244021201041295835)
,p_plug_name=>unistr('\5206\6790\603B\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>170
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
'                e.BASE_NAME,',
'                e.FAB_NAME,',
'                e.MAP_AREA_Y_NAME,',
'                e.MAP_AREA_X_NAME,',
'                e.SUBMIT_NAME,',
'                e.FIRST_EVENT_CODE,',
'                e.SECOND_EVENT_CODE,',
'                e.PHENOMENON_CODE,',
unistr('                TO_CHAR(e.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' ||'),
'                TO_CHAR(e.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')                              EVENT_DATE,',
'                TO_CHAR(ROUND((e.END_TIME - e.BEGIN_TIME) * 24 * 60, 1), ''FM99999990.09'') EVENT_TIME,',
unistr('                decode(e.IS_KEY_PROCESS, ''TRUE'', ''\662F'', ''\5426'')                                IS_KEY_PROCESS,'),
unistr('                decode(e.IS_STOP_LINE, ''TRUE'', ''\662F'', ''\5426'')                                  IS_STOP_LINE,'),
'                e.DESCRIPTION,',
'                decode(rec.EVENT_ID, null, 0, 1)                                          is_upgrade',
'         from TENANT_EVENT_ANALYZE a',
'                  left join TENANT_EVENT_V2 e on a.EVENT_ID = e.EVENT_ID and e.TENANT_ID = a.TENANT_ID',
'                  left join TENANT_ANALYZE_TEMPLATE_ORG org',
'                            on a.ANALYZE_TEMPLATE_ORG_ID = org.ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = a.TENANT_ID',
'                  left join (select distinct re.EVENT_ID',
'                             from TENANT_EVENT_UPGRADE_RECORDS re',
'                             where re.STATUS = ''DONE''',
'                               and re.TENANT_ID = :USERTENANT) rec on rec.EVENT_ID = a.EVENT_ID',
'         where a.TENANT_ID = :USERTENANT',
'           AND a.BASE_DEPT_ID=:BASE_DEPT_ID',
'           and a.DEL_FLAG = 0',
'           and a.EXT_ORG_ID = nvl(:P235_DEPT_ID, :USERDEPT)',
'           and e.BEGIN_TIME >= TO_DATE(:P235_START_DATE, ''YYYY-MM-DD'')',
'           and e.BEGIN_TIME < TO_DATE(:P235_END_DATE, ''YYYY-MM-DD'') + 1',
'',
'',
'         union all',
'',
'         select null                                                                      EVENT_ANALYZE_ID,',
'                e.EVENT_ID,',
'                e.EVENT_SERIAL_NO,',
'                null                                                                      ANALYZE_TEMPLATE_ORG_ID,',
'                null                                                                      TEMPLATE_ALIAS_NAME,',
'                null                                                                      SUBMIT_USER_ID,',
'                ''WAIT''                                                                    AUDIT_STATE,',
'                null                                                                      AUDIT_USER_ID,',
'                null                                                                      APEX_PAGE_ID,',
'                e.BASE_NAME,',
'                e.FAB_NAME,',
'                e.MAP_AREA_Y_NAME,',
'                e.MAP_AREA_X_NAME,',
'                e.SUBMIT_NAME,',
'                e.FIRST_EVENT_CODE,',
'                e.SECOND_EVENT_CODE,',
'                e.PHENOMENON_CODE,',
unistr('                TO_CHAR(e.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' ||'),
'                TO_CHAR(e.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')                              EVENT_DATE,',
'                TO_CHAR(ROUND((e.END_TIME - e.BEGIN_TIME) * 24 * 60, 1), ''FM99999990.09'') EVENT_TIME,',
unistr('                decode(e.IS_KEY_PROCESS, ''TRUE'', ''\662F'', ''\5426'')                                IS_KEY_PROCESS,'),
unistr('                decode(e.IS_STOP_LINE, ''TRUE'', ''\662F'', ''\5426'')                                  IS_STOP_LINE,'),
'                e.DESCRIPTION,',
'                decode(rec.EVENT_ID, null, 0, 1)                                          is_upgrade',
'         from TENANT_EVENT_V2 e',
'                  left join (select distinct re.EVENT_ID',
'                             from TENANT_EVENT_UPGRADE_RECORDS re',
'                             where re.STATUS = ''DONE''',
'                               and re.TENANT_ID = :USERTENANT) rec on rec.EVENT_ID = e.EVENT_ID',
'         where e.TENANT_ID = :USERTENANT',
'           --AND e.BASE_DEPT_ID=:BASE_DEPT_ID',
'           and e.STATUS != ''CLOSED''',
'           and not exists(select a.EVENT_ID',
'                          from TENANT_EVENT_ANALYZE a',
'                          where a.DEL_FLAG = 0',
'                            and a.TENANT_ID = :USERTENANT',
'                            and a.EVENT_ID = e.EVENT_ID)',
'           and e.MAIN_ORG_ID = NVL(:P235_DEPT_ID, :USERDEPT)',
'           and e.BEGIN_TIME >= TO_DATE(:P235_START_DATE, ''YYYY-MM-DD'')',
'           and e.BEGIN_TIME < TO_DATE(:P235_END_DATE, ''YYYY-MM-DD'') + 1)',
'where instr(:P235_AUDIT_STATE, AUDIT_STATE) > 0 ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P235_DEPT_ID,P235_START_DATE,P235_END_DATE,P235_AUDIT_STATE'
,p_prn_page_header=>unistr('\5206\6790\603B\8868')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2244022473920295834)
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
 p_id=>wwv_flow_imp.id(2244023497392295833)
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
 p_id=>wwv_flow_imp.id(2244025426245295832)
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
 p_id=>wwv_flow_imp.id(2244028489918295831)
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
,p_lov_id=>wwv_flow_imp.id(2233707681884961816)
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
 p_id=>wwv_flow_imp.id(2244029472630295830)
,p_name=>'AUDIT_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'status_cs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC2:\5F85\590D\76D8;WAIT,\5DF2\5B8C\6210;COMPLETE,\5DF2\9A73\56DE;REJECT,\5BA1\6838\4E2D;AUDIT,\65E0\9700\590D\76D8;UNREVIEW')
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
 p_id=>wwv_flow_imp.id(2244030459773295830)
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
,p_lov_id=>wwv_flow_imp.id(2233707681884961816)
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
 p_id=>wwv_flow_imp.id(2244037439849295826)
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
 p_id=>wwv_flow_imp.id(2244154126764977455)
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
 p_id=>wwv_flow_imp.id(2244154266695977456)
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
 p_id=>wwv_flow_imp.id(2244154771665977461)
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
 p_id=>wwv_flow_imp.id(2244154823398977462)
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
 p_id=>wwv_flow_imp.id(2244154977688977463)
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
 p_id=>wwv_flow_imp.id(2244155045380977464)
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
 p_id=>wwv_flow_imp.id(2244155185774977465)
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
 p_id=>wwv_flow_imp.id(2244155431221977468)
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
 p_id=>wwv_flow_imp.id(2244155513174977469)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2244155657405977470)
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
 p_id=>wwv_flow_imp.id(2244155807900977472)
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
 p_id=>wwv_flow_imp.id(2244155941639977473)
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
 p_id=>wwv_flow_imp.id(2244777907026134064)
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
 p_id=>wwv_flow_imp.id(2244778033285134065)
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
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_CATEGORY where TENANT_ID=:USERTENANT and DEL_FLAG=0 AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2244778105430134066)
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
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_CATEGORY where TENANT_ID=:USERTENANT and DEL_FLAG=0 AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2244778267562134067)
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
,p_lov_source=>'select NAME,CODE from TENANT_EVENT_PHENOMENON where  TENANT_ID=:USERTENANT and DEL_FLAG=0 AND BASE_DEPT_ID=:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2258760985737590473)
,p_name=>'IS_UPGRADE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_UPGRADE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5347\7EA7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\662F;1,\5426;0')
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
 p_id=>wwv_flow_imp.id(2398685940648148602)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
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
 p_id=>wwv_flow_imp.id(2244021675358295834)
,p_internal_uid=>60697072604211880
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
,p_enable_save_public_report=>true
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
 p_id=>wwv_flow_imp.id(2244022076199295834)
,p_interactive_grid_id=>wwv_flow_imp.id(2244021675358295834)
,p_static_id=>'606975'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2244022234314295834)
,p_report_id=>wwv_flow_imp.id(2244022076199295834)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183335534849078350)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2398685940648148602)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244022832836295833)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2244022473920295834)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244023865251295833)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2244023497392295833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244025807384295832)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2244025426245295832)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244028881828295831)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2244028489918295831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>67
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244029827241295830)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2244029472630295830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244030891447295830)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2244030459773295830)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244037852077295826)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2244037439849295826)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244160139537977339)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2244154126764977455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244161085915977336)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2244154266695977456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>196
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244191516549167490)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2244154771665977461)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88.6875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244192473460167484)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2244154823398977462)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244193329645167480)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2244154977688977463)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>73
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244194259188167478)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2244155045380977464)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>361
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244195133991167475)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2244155185774977465)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>98
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244197875554167464)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2244155431221977468)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244223101654155279)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2244155513174977469)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244238696164125752)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2244155807900977472)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244239537351125749)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>23
,p_column_id=>wwv_flow_imp.id(2244155941639977473)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>78
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244841173547107449)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>24
,p_column_id=>wwv_flow_imp.id(2244777907026134064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>93
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244842096004107446)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2244778033285134065)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244842870862107443)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2244778105430134066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2244843766808107440)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2244778267562134067)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>118
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2264671592599636232)
,p_view_id=>wwv_flow_imp.id(2244022234314295834)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2258760985737590473)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>77
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244246102311051279)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\5168\90E8')
,p_button_static_id=>'btn_c_all'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pillStart'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5168\90E8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244246400250049786)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\5F85\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5F85\590D\76D8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244246644851048672)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\5BA1\6838\4E2D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5BA1\6838\4E2D')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244246923520047691)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\5DF2\9A73\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5DF2\9A73\56DE')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244247419777046560)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\65E0\9700\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\65E0\9700\590D\76D8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244247771111045507)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\5DF2\5B8C\6210')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pillEnd'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5DF2\5B8C\6210')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244154670837977460)
,p_button_sequence=>160
,p_button_name=>unistr('\67E5\8BE2')
,p_button_static_id=>'btnSelect'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244778377631134068)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\8DF3\8F6C\6A21\677F\9875')
,p_button_static_id=>'btnTurn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8DF3\8F6C\6A21\677F\9875')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2245957841235831485)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\6307\6D3E-\9690\85CF')
,p_button_static_id=>'btn_assgin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6307\6D3E-\9690\85CF')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:226:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2245959151051831498)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_static_id=>'btn_edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:230:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2251430701129980279)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\8DF3\8F6C\8BE6\60C5\9875_\514D\767B')
,p_button_static_id=>'jump_btn_hide'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8DF3\8F6C\8BE6\60C5\9875_\514D\767B')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2245957382411831480)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\6307\6D3E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6307\6D3E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER :=0;',
'BEGIN',
'    SELECT COUNT(1) INTO V_COUNT FROM MPF_USER_DEPT_MAIN_ASSO_V ',
'    WHERE JOB_LEVEL_CODE <=30 AND TENANT_ID = V(''USERTENANT'') AND EXT_USER_ID = V(''USER_ID'') AND BASE_DEPT_ID=:BASE_DEPT_ID;',
unistr('    if :USERAUTH in (0,1,2,3) or V_COUNT>0 then-- 1\FF1A\540E\53F0\4E3B\7BA1\53CA\4EE5\4E0A 2\FF1A\6676\8C79\534F\8C03\4EBA \4E3B\7BA1\53CA\4EE5\4E0A'),
'            return true;',
'       else',
'            return false;',
'    end if;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2245959031079831497)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2244021201041295835)
,p_button_name=>unistr('\4FEE\6539\72B6\6001')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539\72B6\6001')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER :=0;',
'BEGIN',
'    SELECT COUNT(1) INTO V_COUNT FROM MPF_USER_DEPT_MAIN_ASSO_V ',
'    WHERE JOB_LEVEL_CODE <=30 AND TENANT_ID = V(''USERTENANT'') AND EXT_USER_ID = V(''USER_ID'') AND BASE_DEPT_ID=:BASE_DEPT_ID;',
unistr('    if :USERAUTH in (0,1,2,3) or V_COUNT>0 then-- 1\FF1A\540E\53F0\4E3B\7BA1\53CA\4EE5\4E0A 2\FF1A\6676\8C79\534F\8C03\4EBA \4E3B\7BA1\53CA\4EE5\4E0A'),
'            return true;',
'       else',
'            return false;',
'    end if;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244156258370977476)
,p_name=>'P235_AUDIT_STATE'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244184524376268172)
,p_name=>'P235_START_DATE'
,p_item_sequence=>10
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A\4ECE')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244184824651263360)
,p_name=>'P235_END_DATE'
,p_item_sequence=>20
,p_prompt=>unistr('\81F3')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244185315023261740)
,p_name=>'P235_DEPT_ID'
,p_item_sequence=>40
,p_item_default=>':USERDEPT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = V(''USERTENANT'') AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when=>':USERAUTH <= 1'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244778645358134071)
,p_name=>'P235_EVENT_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244778705162134072)
,p_name=>'P235_EVENT_ANALYZE_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244779133119134076)
,p_name=>'P235_ANALYZE_TEMPLATE_ORG_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244779622379134081)
,p_name=>'P235_APEX_PAGE_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2245958092250831487)
,p_name=>'P235_EVENT_IDS'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2245958193049831488)
,p_name=>'P235_EVENT_ANALYZE_IDS'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2245958649140831493)
,p_name=>'P235_FLAG'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2247958045325423668)
,p_name=>'P235_ROW_COUNT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2251430216646980275)
,p_name=>'P235_JUMP'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2409993920875975289)
,p_name=>'P235_EVENT_CONDITION'
,p_item_sequence=>50
,p_item_default=>'UPGRADE'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\5347\7EA7\5DE5\5355;UPGRADE')
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_css_classes=>'event_condtion'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244156093011977474)
,p_name=>unistr('\67E5\8BE2\5168\90E8')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244246102311051279)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244156188182977475)
,p_event_id=>wwv_flow_imp.id(2244156093011977474)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'WAIT,COMPLETE,REJECT,AUDIT,UNREVIEW'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244156368722977477)
,p_event_id=>wwv_flow_imp.id(2244156093011977474)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244156501513977478)
,p_name=>unistr('\67E5\8BE2\5F85\590D\76D8')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244246400250049786)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157065911977484)
,p_event_id=>wwv_flow_imp.id(2244156501513977478)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'WAIT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157163062977485)
,p_event_id=>wwv_flow_imp.id(2244156501513977478)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244156664178977480)
,p_name=>unistr('\67E5\8BE2\5BA1\6838\4E2D')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244246644851048672)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244156883723977482)
,p_event_id=>wwv_flow_imp.id(2244156664178977480)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'AUDIT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244156927693977483)
,p_event_id=>wwv_flow_imp.id(2244156664178977480)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244157270645977486)
,p_name=>unistr('\63D2\53D9\5DF2\9A73\56DE')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244246923520047691)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157434211977488)
,p_event_id=>wwv_flow_imp.id(2244157270645977486)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'REJECT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157557587977489)
,p_event_id=>wwv_flow_imp.id(2244157270645977486)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244157692782977490)
,p_name=>unistr('\67E5\8BE2\65E0\9700\590D\76D8')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244247419777046560)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157855411977492)
,p_event_id=>wwv_flow_imp.id(2244157692782977490)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'UNREVIEW'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244157950767977493)
,p_event_id=>wwv_flow_imp.id(2244157692782977490)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244158073224977494)
,p_name=>unistr('\67E5\8BE2\5DF2\5B8C\6210')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244247771111045507)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244158298657977496)
,p_event_id=>wwv_flow_imp.id(2244158073224977494)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'COMPLETE'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244158374211977497)
,p_event_id=>wwv_flow_imp.id(2244158073224977494)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244158640494977500)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244158740518977501)
,p_event_id=>wwv_flow_imp.id(2244158640494977500)
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
 p_id=>wwv_flow_imp.id(2244158806732977502)
,p_name=>unistr('\67E5\8BE2\6570\636E')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244154670837977460)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244158922215977503)
,p_event_id=>wwv_flow_imp.id(2244158806732977502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244305312990747172)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244306289148747166)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>10
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
 p_id=>wwv_flow_imp.id(2244778961901134074)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244778377631134068)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251430393613980276)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  apex_util.set_session_state(''P235_APEX_PAGE_ID'', null);',
'  if :P235_JUMP=''true'' then',
'      apex_util.set_session_state(''P235_JUMP'', :P235_JUMP);',
'  end if;',
'',
'end;'))
,p_attribute_02=>'P235_JUMP,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_JUMP,P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251430556872980278)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#jump_btn_hide'').hide();',
'console.log(''jump:'' + $v(''P235_JUMP''));',
'',
'if ($v(''P235_JUMP'') == ''true'') {',
'    $(''#jump_btn_hide'').click();',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251430436312980277)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'  if :P235_JUMP=''true'' then',
'      apex_util.set_session_state(''P235_JUMP'', ''false'');',
'  end if;',
'',
'end;'))
,p_attribute_02=>'P235_JUMP'
,p_attribute_03=>'P235_JUMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244305732511747167)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P235_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'WAIT,COMPLETE,REJECT,AUDIT,UNREVIEW'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P235_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244306795580747166)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.onload=function(){',
'    $(''#btnSelect'').click()',
'}',
''))
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P235_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244307228337747165)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244246102311051279)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'WAIT,COMPLETE,REJECT,AUDIT,UNREVIEW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244307762775747165)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244246400250049786)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244308249351747165)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244246644851048672)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'AUDIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244308784664747165)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244247419777046560)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'UNREVIEW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244309255448747165)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244246923520047691)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'REJECT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244309762944747164)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2244247771111045507)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_AUDIT_STATE'
,p_client_condition_expression=>'COMPLETE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245954840395831455)
,p_event_id=>wwv_flow_imp.id(2244305312990747172)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244778451910134069)
,p_name=>unistr('\8DF3\8F6C')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244778377631134068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244778809608134073)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65AD\662F\5426\62E5\6709\590D\76D8\6570\636E')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10) := 0;',
'begin',
'',
'    select count(EVENT_ANALYZE_ID)',
'    into v_count',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ID = :P235_EVENT_ID',
'      and DEL_FLAG = 0',
'      and SUBMIT_USER_ID != :USER_ID',
'      and AUDIT_STATE = ''WAIT''',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P235_ROW_COUNT'', v_count);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID'
,p_attribute_03=>'P235_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2247958106752423669)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P235_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BE5\4E8B\4EF6\5DF2\6709\7528\6237\5728\590D\76D8\FF0C\8BF7\9009\62E9\5176\5B83\4E8B\4EF6\590D\76D8'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244779239252134077)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg                 nvarchar2(2000);',
'    v_analyze_template_org_id number(20);',
'',
'begin',
'',
'    if :P235_ANALYZE_TEMPLATE_ORG_ID is null then',
'        select max(ANALYZE_TEMPLATE_ORG_ID)',
'        into v_analyze_template_org_id',
'        from TENANT_ANALYZE_TEMPLATE_ORG',
'        where EXT_ORG_ID = :USERDEPT',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    else',
'        if :P235_AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'') then',
'            select ANALYZE_TEMPLATE_ORG_ID',
'            into v_analyze_template_org_id',
'            from TENANT_EVENT_ANALYZE',
'            where EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'              and TENANT_ID = :USERTENANT',
'              and DEL_FLAG = 0',
'               AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        else',
'            v_analyze_template_org_id := :P235_ANALYZE_TEMPLATE_ORG_ID;',
'        end if;',
'',
'    end if;',
'    apex_util.set_session_state(''P235_ANALYZE_TEMPLATE_ORG_ID'', v_analyze_template_org_id);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''USERDEPT:'' || :USERDEPT || chr(13) || ''v_analyze_template_org_id:'' || v_analyze_template_org_id ||',
'                  chr(13) || ''P235_EVENT_ANALYZE_ID'' || :P235_EVENT_ANALYZE_ID || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_ANALYZE_TEMPLATE_ORG_ID,P235_AUDIT_STATE,P235_EVENT_ANALYZE_ID'
,p_attribute_03=>'P235_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244778536861134070)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
'    where EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and TENANT_ID = :USERTENANT',
'      and DEL_FLAG = 0',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and ROWNUM = 1;',
'',
'    select t.APEX_PAGE_ID into v_page_id',
'    from TENANT_ANALYZE_TEMPLATE_ORG org',
'        inner join TENANT_ANALYZE_TEMPLATE_V2 t',
'            on org.ANALYZE_TEMPLATE_ID = t.ANALYZE_TEMPLATE_ID and t.TENANT_ID = org.TENANT_ID and t.DEL_FLAG = 0',
'        where org.ANALYZE_TEMPLATE_ORG_ID = :P235_ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = :USERTENANT',
'         AND org.BASE_DEPT_ID=:BASE_DEPT_ID and t.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    if v_count = 0 then',
'        ',
'        select max(BEGIN_TIME), max(END_TIME)',
'        into v_begin_time,v_end_time',
'        from TENANT_EVENT_V',
'        where TENANT_ID = :USERTENANT',
'          and EVENT_ID = :P235_EVENT_ID',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'        insert into TENANT_EVENT_ANALYZE(event_id, ext_org_id, analyze_template_org_id, created_time, end_time,',
'                                         submit_user_id, audit_state, audit_user_id, audit_opinion, apex_page_id,',
'                                         created_by, del_flag, tenant_id, BASE_DEPT_ID)',
'        values (:P235_EVENT_ID, :USERDEPT, :P235_ANALYZE_TEMPLATE_ORG_ID, v_begin_time, v_end_time, :USER_ID, ''WAIT'', null, null,',
'                v_page_id, :USER_ID, 0, :USERTENANT, :BASE_DEPT_ID) returning EVENT_ANALYZE_ID into v_event_analyze_id;',
'    else',
'        v_event_analyze_id:=:P235_EVENT_ANALYZE_ID;',
'    end if;',
'    apex_util.set_session_state(''P235_EVENT_ANALYZE_ID'', v_event_analyze_id);',
'    -- apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_page_id);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''P235_EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)||',
'        ''P235_ANALYZE_TEMPLATE_ORG_ID:''||:P235_ANALYZE_TEMPLATE_ORG_ID||chr(13) ||v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_AUDIT_STATE,P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_03=>'P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2646507280471006956)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65ADpage id')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_apex_page_id number(10);',
'begin',
'',
' select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'end;'))
,p_attribute_02=>'P235_EVENT_ANALYZE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2646507324321006957)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>80
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 227 then',
'        apex_util.set_session_state(''P227_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P227_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'227'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2249382809267730364)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230237')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 237 then',
'        apex_util.set_session_state(''P237_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P237_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'237'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251429263096980265)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230238')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P235_APEX_PAGE_ID = 238 then',
'        apex_util.set_session_state(''P238_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P238_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'238'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409993427223975284)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230228')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P235_APEX_PAGE_ID = 228 then',
'        apex_util.set_session_state(''P228_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P228_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'		apex_util.set_session_state(''P228_STATUS'', :P235_AUDIT_STATE);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID,P235_AUDIT_STATE'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'228'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244779059188134075)
,p_event_id=>wwv_flow_imp.id(2244778451910134069)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\9875\9762')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var id = $v(''P235_APEX_PAGE_ID'');',
'console.log(''id:'' + id);',
'if (!id) {',
unistr('    alert(''\8BF7\5148\914D\7F6E\90E8\95E8\5206\6790\6A21\677F'');'),
'    return false;',
'} else {',
'    window.location.href = `f?p=&APP_ID.:${id}:&APP_SESSION.:::::`;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2251430933211980282)
,p_name=>unistr('\8DF3\8F6C_1')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2251430701129980279)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2247958222800423670)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65AD\662F\5426\62E5\6709\590D\76D8\6570\636E')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10) := 0;',
'begin',
'',
'    select count(EVENT_ANALYZE_ID)',
'    into v_count',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ID = :P235_EVENT_ID',
'      and DEL_FLAG = 0',
'      and SUBMIT_USER_ID != :USER_ID',
'      and AUDIT_STATE = ''WAIT''',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P235_ROW_COUNT'', v_count);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID'
,p_attribute_03=>'P235_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2247958382637423671)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P235_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BE5\4E8B\4EF6\5DF2\6709\7528\6237\5728\590D\76D8\FF0C\8BF7\9009\62E9\5176\5B83\4E8B\4EF6\590D\76D8'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251431251724980285)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'    where EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and TENANT_ID = :USERTENANT',
'      and DEL_FLAG = 0',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and ROWNUM = 1;',
'',
'    select t.APEX_PAGE_ID into v_page_id',
'    from TENANT_ANALYZE_TEMPLATE_ORG org',
'        inner join TENANT_ANALYZE_TEMPLATE_V2 t',
'            on org.ANALYZE_TEMPLATE_ID = t.ANALYZE_TEMPLATE_ID and t.TENANT_ID = org.TENANT_ID and t.DEL_FLAG = 0',
'        where org.ANALYZE_TEMPLATE_ORG_ID = :P235_ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = :USERTENANT',
'         AND org.BASE_DEPT_ID=:BASE_DEPT_ID and t.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    if v_count = 0 then',
'        ',
'        select max(BEGIN_TIME), max(END_TIME)',
'        into v_begin_time,v_end_time',
'        from TENANT_EVENT_V',
'        where TENANT_ID = :USERTENANT',
'          and EVENT_ID = :P235_EVENT_ID;',
'',
'        insert into TENANT_EVENT_ANALYZE(event_id, ext_org_id, analyze_template_org_id, created_time, end_time,',
'                                         submit_user_id, audit_state, audit_user_id, audit_opinion, apex_page_id,',
'                                         created_by, del_flag, tenant_id, BASE_DEPT_ID)',
'        values (:P235_EVENT_ID, :USERDEPT, :P235_ANALYZE_TEMPLATE_ORG_ID, v_begin_time, v_end_time, :USER_ID, ''WAIT'', null, null,',
'                v_page_id, :USER_ID, 0, :USERTENANT, :BASE_DEPT_ID) returning EVENT_ANALYZE_ID into v_event_analyze_id;',
'    else',
'        v_event_analyze_id:=:P235_EVENT_ANALYZE_ID;',
'    end if;',
'    apex_util.set_session_state(''P235_EVENT_ANALYZE_ID'', v_event_analyze_id);',
'    -- apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_page_id);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;        ',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''P235_EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)||',
'        ''P235_ANALYZE_TEMPLATE_ORG_ID:''||:P235_ANALYZE_TEMPLATE_ORG_ID||chr(13) ||v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_AUDIT_STATE,P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_03=>'P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2646507160347006955)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65ADpage id')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'  v_apex_page_id number(10);',
'begin',
'',
' select a.APEX_PAGE_ID',
'    into v_apex_page_id',
'    from TENANT_EVENT_ANALYZE a',
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'end;'))
,p_attribute_02=>'P235_EVENT_ANALYZE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244779720562134082)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>60
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'      AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 227 then',
'        apex_util.set_session_state(''P227_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P227_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'227'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2646507438345006958)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230237')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_apex_page_id = 237 then',
'        apex_util.set_session_state(''P237_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P237_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'237'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2646507569304006959)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230238')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P235_APEX_PAGE_ID = 238 then',
'        apex_util.set_session_state(''P238_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P238_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'238'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409993580527975285)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\53C2\6570\5230228')
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
'    left join TENANT_ANALYZE_TEMPLATE_V2 v on a.APEX_PAGE_ID=v.APEX_PAGE_ID',
'    where a.EVENT_ANALYZE_ID = :P235_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT and v.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID and v.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if :P235_APEX_PAGE_ID = 228 then',
'        apex_util.set_session_state(''P228_EVENT_ANALYZE_ID'', :P235_EVENT_ANALYZE_ID);',
'        apex_util.set_session_state(''P228_EVENT_ID'', :P235_EVENT_ID);',
'        apex_util.set_session_state(''P235_APEX_PAGE_ID'', v_apex_page_id);',
'    end if ;',
'    ',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''EVENT_ANALYZE_ID:''||:P235_EVENT_ANALYZE_ID||chr(13)|| v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ID,P235_EVENT_ANALYZE_ID,P235_APEX_PAGE_ID'
,p_attribute_03=>'P235_APEX_PAGE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P235_APEX_PAGE_ID'
,p_client_condition_expression=>'228'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2251431661975980289)
,p_event_id=>wwv_flow_imp.id(2251430933211980282)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\9875\9762')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var id = $v(''P235_APEX_PAGE_ID'');',
'console.log(''id:'' + id);',
'if (!id) {',
unistr('    alert(''\8BF7\5148\914D\7F6E\90E8\95E8\5206\6790\6A21\677F'');'),
'    return false;',
'} else {',
'    window.location.href = `f?p=&APP_ID.:${id}:&APP_SESSION.::YES:::`;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2249164740378543956)
,p_name=>unistr('\70B9\51FB\6307\6D3E\6309\94AE')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2245957382411831480)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P235_EVENT_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245958562938831492)
,p_event_id=>wwv_flow_imp.id(2249164740378543956)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(10) := 0;',
'',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ANALYZE_ID in (',
'        select COLUMN_VALUE from table (SPLITSTR(:P235_EVENT_ANALYZE_IDS, '',''))',
'    )',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and DEL_FLAG = 0',
'      and AUDIT_STATE != ''WAIT'';',
unistr('    -- \4E0D\53EF\6307\6D3E\7684\6570\91CF'),
'',
'    apex_util.set_session_state(''P235_FLAG'', v_count);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P235_FLAG'', -1);',
'end;'))
,p_attribute_02=>'P235_EVENT_ANALYZE_IDS'
,p_attribute_03=>'P235_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2249165169481543955)
,p_event_id=>wwv_flow_imp.id(2249164740378543956)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\6307\6D3E\7684\5DE5\5355\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245958754729831494)
,p_event_id=>wwv_flow_imp.id(2249164740378543956)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P235_FLAG'') > 0) {',
unistr('    alert(''\53EA\80FD\6307\6D3E\5F85\590D\76D8\7684\5DE5\5355'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2249165631563543955)
,p_event_id=>wwv_flow_imp.id(2249164740378543956)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(''P226_EVENT_ID'',:P235_EVENT_IDS);',
'    APEX_UTIL.SET_SESSION_STATE(''P226_EVENT_ANALYZE_ID'',:P235_EVENT_ANALYZE_IDS);',
'END;'))
,p_attribute_02=>'P235_EVENT_IDS,P235_EVENT_ANALYZE_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2249166185237543955)
,p_event_id=>wwv_flow_imp.id(2249164740378543956)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_assgin'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2245957489976831481)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245957575266831482)
,p_event_id=>wwv_flow_imp.id(2245957489976831481)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P235_EVENT_IDS'', ''EVENT_ID'');',
'map.set(''P235_EVENT_ANALYZE_IDS'', ''EVENT_ANALYZE_ID'');',
'map.set(''P235_AUDIT_STATE'', ''AUDIT_STATE'');',
'utils.set(this.data, map);',
'console.log(''P235_EVENT_IDS:''+$v(''P235_EVENT_IDS''));',
'console.log(''P235_EVENT_ANALYZE_IDS:''+$v(''P235_EVENT_ANALYZE_IDS''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2245958864314831495)
,p_name=>unistr('\5237\65B0\8868\683C')
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245958978384831496)
,p_event_id=>wwv_flow_imp.id(2245958864314831495)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2245959230118831499)
,p_name=>unistr('\70B9\51FB\4FEE\6539\72B6\6001\6309\94AE')
,p_event_sequence=>160
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2245959031079831497)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P235_EVENT_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245959417536831501)
,p_event_id=>wwv_flow_imp.id(2245959230118831499)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(10) := 0;',
'',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ANALYZE_ID in (',
'        select COLUMN_VALUE from table (SPLITSTR(:P235_EVENT_ANALYZE_IDS, '',''))',
'    )',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and DEL_FLAG = 0',
'      and AUDIT_STATE not in (''WAIT'',''UNREVIEW'');',
unistr('    -- \4E0D\53EF\6307\6D3E\7684\6570\91CF'),
'',
'    apex_util.set_session_state(''P235_FLAG'', v_count);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P235_EVENT_ANALYZE_IDS'
,p_attribute_03=>'P235_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2249381932541730355)
,p_event_id=>wwv_flow_imp.id(2245959230118831499)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\4FEE\6539\7684\5DE5\5355\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245959509222831502)
,p_event_id=>wwv_flow_imp.id(2245959230118831499)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P235_FLAG'') > 0) {',
unistr('    alert(''\53EA\80FD\4FEE\6539\5F85\590D\76D8\548C\65E0\9700\590D\76D8\7684\5DE5\5355'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245959694567831503)
,p_event_id=>wwv_flow_imp.id(2245959230118831499)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(''P230_EVENT_ID'',:P235_EVENT_IDS);',
'    APEX_UTIL.SET_SESSION_STATE(''P230_EVENT_ANALYZE_ID'',:P235_EVENT_ANALYZE_IDS);',
'    APEX_UTIL.SET_SESSION_STATE(''P230_DEPT_ID'',:P235_DEPT_ID);',
'END;'))
,p_attribute_02=>'P235_EVENT_IDS,P235_EVENT_ANALYZE_IDS,P235_DEPT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2245959751530831504)
,p_event_id=>wwv_flow_imp.id(2245959230118831499)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_edit'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2409994049215975290)
,p_name=>unistr('\66F4\6539')
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P235_EVENT_CONDITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2409994186638975291)
,p_event_id=>wwv_flow_imp.id(2409994049215975290)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2244155729715977471)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2244021201041295835)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5206\6790\603B\8868 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>60831126961893517
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2251430146936980274)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    ',
'',
'    select instr(v_url, ''EVENT_ID'') into v_count from dual;',
'',
unistr('    -- --\8BB0\5F55\65E5\5FD7'),
'    -- WRITE_LOG(GET_FN_NAME(), ''debug'',',
'    --           ''url: '' || v_url || chr(13) ||''count:''||v_count|| chr(13) || ''date: '' || sysdate, -1, -1);',
'',
unistr('    --\89E3\6790URL\FF0C\6267\884C\767B\5F55\9A8C\8BC1'),
'',
'    if v_count = 0 then',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := check_parse_url_login(v_url);',
'        ',
'        if v_name != ''error'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 235);',
'        end if;',
'',
'    end if;',
'',
'exception',
'    when no_data_found then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);     ',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
,p_internal_uid=>68105544182896320
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00205
begin
--   Manifest
--     PAGE: 00205
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
 p_id=>205
,p_name=>unistr('\6676\8C79\590D\76D8\603B\8868')
,p_alias=>unistr('\6676\8C79\590D\76D8\603B\8868')
,p_step_title=>unistr('\6676\8C79\590D\76D8\603B\8868')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function turnPage(event_id, audit_state, status, active, audit_type, ppt_url, created_by) {',
'    $s(''P205_TRUN_EVENT_ID'', event_id);',
'    $s(''P205_TRUN_AUDIT_STATE'', audit_state);',
'    $s(''P205_TURN_STATUS'', status);',
'    $s(''P205_TRUN_ACTIVE'', active);',
'    $s(''P205_AUDIT_TYPE'', audit_type);',
'    $s(''P205_PPT_URL'', ppt_url);',
'    $s(''P205_CREATED_BY'', created_by);',
'    $(''#btnTurn'').click();',
'}',
'',
'// console.log(''P205_START_DATE : '' + $v(''P205_START_DATE''));',
'// console.log(''P205_END_DATE : '' + $v(''P205_END_DATE''));',
'',
'var start_date = $v(''P205_START_DATE'')?new Date($v(''P205_START_DATE'')):new Date(Date.now() - 3600 * 7 * 20 * 1000);',
'var end_date = $v(''P205_END_DATE'')?new Date($v(''P205_END_DATE'')):new Date(Date.now());',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P205_START_DATE'',',
'        type: ''date'',',
'        value: start_date,',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P205_START_DATE'', value);',
'        }',
'    });',
'})',
'',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P205_END_DATE'',',
'        type: ''date'',',
'        value: end_date,',
'        done: function (value, date, endDate) {',
'            console.log(value);',
'            $s(''P205_END_DATE'', value);',
'        }',
'    });',
'})'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'))
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
 p_id=>wwv_flow_imp.id(2225020936307563651)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2347071016030712102)
,p_plug_name=>unistr('\4E8B\4EF6\590D\76D8\603B\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FLAG NUMBER;',
'    V_FLAG_TMP NUMBER;',
'BEGIN',
unistr('    SELECT COUNT(1) INTO V_FLAG FROM MPF_SHARE_DEPT_V WHERE NAME LIKE ''%\516C\53F8'' AND PARENT_ID IS NULL AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND EXT_ORG_ID = :P205_DEPT_ID;'),
'    IF V_FLAG > 0 THEN',
'        return q''~',
'        SELECT EVENT_ID,EVENT_SERIAL_NO,FAB_NAME,MAP_AREA_Y_NAME,MAP_AREA_X_NAME,FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_CATEGORY_NAME,EVENT_PHENOMENON_NAME,',
'               DESCRIPTION,SUBMIT_NAME,IS_STOP_LINE,IS_KEY_PROCESS,EVENT_DATE,EVENT_TIME,AUDIT_STATE,ACTIVE,status,AUDIT_TYPE,PPT_URL,CREATED_BY',
'          FROM (SELECT A.EVENT_ID,',
'                       EVENT_SERIAL_NO,',
'                       FAB_NAME,',
'                       MAP_AREA_Y_NAME,',
'                       MAP_AREA_X_NAME,',
'                       FIRST_EVENT_CATEGORY_NAME,',
'                       SECOND_EVENT_CATEGORY_NAME,',
'                       EVENT_PHENOMENON_NAME,',
'                       DESCRIPTION,',
'                       SUBMIT_NAME,',
'                       IS_STOP_LINE,',
'                       IS_KEY_PROCESS,',
'                       EXT_ORG_ID,',
unistr('                       TO_CHAR(A.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' || TO_CHAR(A.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')   EVENT_DATE,'),
'                       ROUND((A.END_TIME - A.BEGIN_TIME)*24*60,1) EVENT_TIME,',
unistr('                       DECODE(B.AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''REJECT'', ''\5DF2\9A73\56DE'', ''AUDIT'', ''\5BA1\6838\4E2D'', ''UNREVIEW'', ''\65E0\9700\590D\76D8'',''\5F85\590D\76D8'') AUDIT_STATE,'),
unistr('                       DECODE(NVL(B.AUDIT_STATE,''WAIT''),''WAIT'',''\53BB\590D\76D8'',''\8BE6\60C5'')  ACTIVE,'),
'                       NVL(B.AUDIT_STATE,''WAIT'') as  status,',
'                       B.AUDIT_TYPE,B.PPT_URL,B.CREATED_BY',
'                  FROM TENANT_EVENT_REVIEW_V    A',
'                  LEFT JOIN TENANT_EVENT_REVIEW B',
'                    ON A.EVENT_ID = B.EVENT_ID',
'                 WHERE A.TENANT_ID = :USERTENANT',
'                   AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'                   AND A.BEGIN_TIME >= TO_DATE(:P205_START_DATE,''YYYY-MM-DD'')',
'                   AND A.BEGIN_TIME < TO_DATE(:P205_END_DATE,''YYYY-MM-DD'') + 1) t',
'        WHERE INSTR(:P205_AUDIT_STATE,AUDIT_STATE) > 0',
'        ~'';',
'    ELSE',
'        SELECT DECODE(V(''USERAUTH''),0,1,0) INTO V_FLAG_TMP FROM DUAL;',
'        V_FLAG := V_FLAG + V_FLAG_TMP;',
'        IF V_FLAG = 0 THEN',
'            SELECT COUNT(1) INTO V_FLAG_TMP FROM MPF_USER_DEPT_MAIN_ASSO_V WHERE JOB_LEVEL_CODE IN (20,30) AND TENANT_ID = V(''USERTENANT'') AND BASE_DEPT_ID =:BASE_DEPT_ID AND EXT_USER_ID = V(''USER_ID'');',
'            V_FLAG := V_FLAG + V_FLAG_TMP;',
'            -- IF V_FLAG = 0 THEN',
'            --     SELECT COUNT(1) INTO V_FLAG_TMP FROM TENANT_AREA_UPGRADE_USERS_V WHERE UPGRADE_LEVEL IN (1,2) AND TENANT_ID = V(''USERTENANT'') AND EXT_USER_ID = V(''USER_ID'');',
'            --     V_FLAG := V_FLAG + V_FLAG_TMP;',
'            -- END IF;',
'        END IF;',
'        IF V_FLAG > 0 THEN',
'            return q''~',
'            SELECT EVENT_ID,EVENT_SERIAL_NO,FAB_NAME,MAP_AREA_Y_NAME,MAP_AREA_X_NAME,FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_CATEGORY_NAME,EVENT_PHENOMENON_NAME,',
'                   DESCRIPTION,SUBMIT_NAME,IS_STOP_LINE,IS_KEY_PROCESS,EVENT_DATE,EVENT_TIME,AUDIT_STATE,ACTIVE,status,AUDIT_TYPE,PPT_URL,CREATED_BY',
'              FROM (SELECT A.EVENT_ID,',
'                           EVENT_SERIAL_NO,',
'                           FAB_NAME,',
'                           MAP_AREA_Y_NAME,',
'                           MAP_AREA_X_NAME,',
'                           FIRST_EVENT_CATEGORY_NAME,',
'                           SECOND_EVENT_CATEGORY_NAME,',
'                           EVENT_PHENOMENON_NAME,',
'                           DESCRIPTION,',
'                           SUBMIT_NAME,',
'                           IS_STOP_LINE,',
'                           IS_KEY_PROCESS,',
unistr('                           TO_CHAR(A.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' || TO_CHAR(A.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')   EVENT_DATE,'),
'                           ROUND((A.END_TIME - A.BEGIN_TIME)*24*60,1) EVENT_TIME,',
unistr('                           DECODE(B.AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''REJECT'', ''\5DF2\9A73\56DE'', ''AUDIT'', ''\5BA1\6838\4E2D'', ''UNREVIEW'', ''\65E0\9700\590D\76D8'',''\5F85\590D\76D8'') AUDIT_STATE,'),
unistr('                           DECODE(NVL(B.AUDIT_STATE,''WAIT''),''WAIT'',''\53BB\590D\76D8'',''\8BE6\60C5'')  ACTIVE,'),
'                           NVL(B.AUDIT_STATE,''WAIT'') as  status,',
'                           B.AUDIT_TYPE,B.PPT_URL,B.CREATED_BY',
'                      FROM TENANT_EVENT_REVIEW_V    A',
'                      LEFT JOIN TENANT_EVENT_REVIEW B',
'                        ON A.EVENT_ID = B.EVENT_ID',
'                     WHERE A.MAIN_ORG_ID = NVL(:P205_DEPT_ID,:USERDEPT)',
'                       AND A.TENANT_ID = :USERTENANT',
'                       AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'                       AND A.BEGIN_TIME >= TO_DATE(:P205_START_DATE,''YYYY-MM-DD'')',
'                       AND A.BEGIN_TIME < TO_DATE(:P205_END_DATE,''YYYY-MM-DD'') + 1) t',
'            WHERE INSTR(:P205_AUDIT_STATE,AUDIT_STATE) > 0',
'            ~'';',
'        ELSE',
'            return q''~',
'            SELECT EVENT_ID,EVENT_SERIAL_NO,FAB_NAME,MAP_AREA_Y_NAME,MAP_AREA_X_NAME,FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_CATEGORY_NAME,EVENT_PHENOMENON_NAME,',
'                   DESCRIPTION,SUBMIT_NAME,IS_STOP_LINE,IS_KEY_PROCESS,EVENT_DATE,EVENT_TIME,AUDIT_STATE,ACTIVE,status,AUDIT_TYPE,PPT_URL,CREATED_BY',
'              FROM (SELECT A.EVENT_ID,',
'                           EVENT_SERIAL_NO,',
'                           FAB_NAME,',
'                           MAP_AREA_Y_NAME,',
'                           MAP_AREA_X_NAME,',
'                           FIRST_EVENT_CATEGORY_NAME,',
'                           SECOND_EVENT_CATEGORY_NAME,',
'                           EVENT_PHENOMENON_NAME,',
'                           DESCRIPTION,',
'                           SUBMIT_NAME,',
'                           IS_STOP_LINE,',
'                           IS_KEY_PROCESS,',
unistr('                           TO_CHAR(A.BEGIN_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' || TO_CHAR(A.END_TIME, ''YYYY-MM-DD HH24:MI:SS'')   EVENT_DATE,'),
'                           ROUND((A.END_TIME - A.BEGIN_TIME)*24*60,1) EVENT_TIME,',
unistr('                           DECODE(B.AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''REJECT'', ''\5DF2\9A73\56DE'', ''AUDIT'', ''\5BA1\6838\4E2D'', ''UNREVIEW'', ''\65E0\9700\590D\76D8'',''\5F85\590D\76D8'') AUDIT_STATE,'),
unistr('                           ''\8BE6\60C5''  ACTIVE,'),
'                           NVL(B.AUDIT_STATE,''WAIT'') as  status,',
'                           B.AUDIT_TYPE,B.PPT_URL,B.CREATED_BY',
'                      FROM TENANT_EVENT_REVIEW_V    A',
'                      LEFT JOIN TENANT_EVENT_REVIEW B',
'                        ON A.EVENT_ID = B.EVENT_ID',
'                     WHERE A.MAIN_ORG_ID = NVL(:P205_DEPT_ID,:USERDEPT)',
'                       AND A.TENANT_ID = :USERTENANT',
'                       AND A.BASE_DEPT_ID =:BASE_DEPT_ID',
'                       AND A.BEGIN_TIME >= TO_DATE(:P205_START_DATE,''YYYY-MM-DD'')',
'                       AND A.BEGIN_TIME < TO_DATE(:P205_END_DATE,''YYYY-MM-DD'') + 1) t',
'            WHERE INSTR(:P205_AUDIT_STATE,AUDIT_STATE) > 0',
'            ~'';',
'        END IF;',
'    END IF;',
'END;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P205_START_DATE,P205_END_DATE,P205_AUDIT_STATE,P205_DEPT_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\4E8B\4EF6\590D\76D8\603B\8868')
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
 p_id=>wwv_flow_imp.id(2200585818673820501)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2200585923183820502)
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
 p_id=>wwv_flow_imp.id(2245745602597554512)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(2256899348345202498)
,p_name=>'AUDIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2262571576028726367)
,p_name=>'PPT_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PPT_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>210
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
 p_id=>wwv_flow_imp.id(2262572183985726373)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(2349925652231788182)
,p_name=>'EVENT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_ID'
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2349925689396788183)
,p_name=>'EVENT_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\4E8B\4EF6ID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a href="javascript:void(0);" onclick="turnPage(''&EVENT_ID.'',''&AUDIT_STATE.'',''&STATUS.'',''&ACTIVE.'',''&AUDIT_TYPE.'',''&PPT_URL.'',''&CREATED_BY.'')">&EVENT_SERIAL_NO.</a>')).to_clob
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
 p_id=>wwv_flow_imp.id(2349925818761788184)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4EA7\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(2349925879140788185)
,p_name=>'MAP_AREA_Y_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_Y_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(2349926032439788186)
,p_name=>'MAP_AREA_X_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MAP_AREA_X_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5DE5\6BB5')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(2349926083849788187)
,p_name=>'FIRST_EVENT_CATEGORY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_EVENT_CATEGORY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\5927\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2349926188932788188)
,p_name=>'SECOND_EVENT_CATEGORY_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECOND_EVENT_CATEGORY_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2349926307970788189)
,p_name=>'EVENT_PHENOMENON_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_PHENOMENON_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\73B0\8C61')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>300
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
 p_id=>wwv_flow_imp.id(2349926447438788190)
,p_name=>'DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(2349926507908788191)
,p_name=>'SUBMIT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUBMIT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4E0A\62A5\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2349926647205788192)
,p_name=>'IS_STOP_LINE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_STOP_LINE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\662F\5426\505C\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2225847443372718052)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2349926739519788193)
,p_name=>'IS_KEY_PROCESS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_KEY_PROCESS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\662F\5426\74F6\9888\5DE5\5E8F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>true
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2225847443372718052)
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2349926795712788194)
,p_name=>'EVENT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\65F6\95F4\6301\7EED\65F6\95F4(\5206\949F)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>46
,p_enable_filter=>true
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(2349926871495788195)
,p_name=>'AUDIT_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_value_css_classes=>'status_cs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>12
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
 p_id=>wwv_flow_imp.id(2349926962561788196)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(2349927138832788197)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6545\969C\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(2788130614902807657)
,p_name=>'EVENT_SERIAL_NO_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_SERIAL_NO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\4E8B\4EF6ID\641C\7D22\5217')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>230
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2349925517207788181)
,p_internal_uid=>166600914453704227
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_imp.id(2349934626846817780)
,p_interactive_grid_id=>wwv_flow_imp.id(2349925517207788181)
,p_static_id=>'1125977'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2349934781367817781)
,p_report_id=>wwv_flow_imp.id(2349934626846817780)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183374049706089622)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2788130614902807657)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2196515102356262844)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2200585818673820501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2246259394092306457)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245745602597554512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2261800442651115935)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2256899348345202498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2266990606150493413)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2262571576028726367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2267149049300891166)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2262572183985726373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349935261726817786)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2349925652231788182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349936220954817792)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2349925689396788183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349937070785817795)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2349925818761788184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349937979996817798)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2349925879140788185)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349938945744817800)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2349926032439788186)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349939793988817802)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2349926083849788187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349940689899817804)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2349926188932788188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349941659285817806)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2349926307970788189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349942542275817809)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2349926447438788190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349943376480817811)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2349926507908788191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349944335656817813)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349945181406817816)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349946146124817818)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349946962700817820)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2349926871495788195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349947945351817823)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2349926962561788196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2349955435191855122)
,p_view_id=>wwv_flow_imp.id(2349934781367817781)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2349927138832788197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3550006606942779738)
,p_interactive_grid_id=>wwv_flow_imp.id(2349925517207788181)
,p_name=>unistr('\505C\7EBF-\74F6\9888-60\5206')
,p_static_id=>'6000603'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3550006761463779739)
,p_report_id=>wwv_flow_imp.id(3550006606942779738)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3396587082452224802)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2200585818673820501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3446331374188268415)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245745602597554512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3461872422747077893)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2256899348345202498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3467062586246455371)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2262571576028726367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3467221029396853124)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2262572183985726373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550007241822779744)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2349925652231788182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550008201050779750)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2349925689396788183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550009050881779753)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2349925818761788184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550009960092779756)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2349925879140788185)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550010925840779758)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2349926032439788186)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550011774084779760)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2349926083849788187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550012669995779762)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2349926188932788188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550013639381779764)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2349926307970788189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550014522371779767)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2349926447438788190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550015356576779769)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2349926507908788191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550016315752779771)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550017161502779774)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550018126220779776)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550018942796779778)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2349926871495788195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550019925447779781)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2349926962561788196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3550027415287817080)
,p_view_id=>wwv_flow_imp.id(3550006761463779739)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2349927138832788197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3383397046689045912)
,p_report_id=>wwv_flow_imp.id(3550006606942779738)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3383406595226046198)
,p_report_id=>wwv_flow_imp.id(3550006606942779738)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3383416349943055134)
,p_report_id=>wwv_flow_imp.id(3550006606942779738)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'60'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4150066328610260841)
,p_interactive_grid_id=>wwv_flow_imp.id(2349925517207788181)
,p_name=>unistr('\74F6\9888-120\5206')
,p_static_id=>'6000608'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4150066483131260842)
,p_report_id=>wwv_flow_imp.id(4150066328610260841)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3996646804119705905)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2200585818673820501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4046391095855749518)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245745602597554512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4061932144414558996)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2256899348345202498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4067122307913936474)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2262571576028726367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4067280751064334227)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2262572183985726373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150066963490260847)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2349925652231788182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150067922718260853)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2349925689396788183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150068772549260856)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2349925818761788184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150069681760260859)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2349925879140788185)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150070647508260861)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2349926032439788186)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150071495752260863)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2349926083849788187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150072391663260865)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2349926188932788188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150073361049260867)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2349926307970788189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150074244039260870)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2349926447438788190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150075078244260872)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2349926507908788191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150076037420260874)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150076883170260877)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150077847888260879)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150078664464260881)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2349926871495788195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150079647115260884)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2349926962561788196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4150087136955298183)
,p_view_id=>wwv_flow_imp.id(4150066483131260842)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2349927138832788197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3983456768356527015)
,p_report_id=>wwv_flow_imp.id(4150066328610260841)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3983466316893527301)
,p_report_id=>wwv_flow_imp.id(4150066328610260841)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3983476071610536237)
,p_report_id=>wwv_flow_imp.id(4150066328610260841)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'120'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4750124719935741679)
,p_interactive_grid_id=>wwv_flow_imp.id(2349925517207788181)
,p_name=>unistr('\505C\7EBF-120\5206')
,p_static_id=>'6000598'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4750124874456741680)
,p_report_id=>wwv_flow_imp.id(4750124719935741679)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4596705195445186743)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2200585818673820501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4646449487181230356)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245745602597554512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4661990535740039834)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2256899348345202498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4667180699239417312)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2262571576028726367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4667339142389815065)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2262572183985726373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750125354815741685)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2349925652231788182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750126314043741691)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2349925689396788183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750127163874741694)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2349925818761788184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750128073085741697)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2349925879140788185)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750129038833741699)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2349926032439788186)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750129887077741701)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2349926083849788187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750130782988741703)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2349926188932788188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750131752374741705)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2349926307970788189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750132635364741708)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2349926447438788190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750133469569741710)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2349926507908788191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750134428745741712)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750135274495741715)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750136239213741717)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750137055789741719)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2349926871495788195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750138038440741722)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2349926962561788196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4750145528280779021)
,p_view_id=>wwv_flow_imp.id(4750124874456741680)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2349927138832788197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4583515159682007853)
,p_report_id=>wwv_flow_imp.id(4750124719935741679)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4583524708219008139)
,p_report_id=>wwv_flow_imp.id(4750124719935741679)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4583534462936017075)
,p_report_id=>wwv_flow_imp.id(4750124719935741679)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'120'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5350185629611232069)
,p_interactive_grid_id=>wwv_flow_imp.id(2349925517207788181)
,p_name=>unistr('\975E\505C\7EBF-\975E\74F6\9888-180\5206')
,p_static_id=>'6000613'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5350185784132232070)
,p_report_id=>wwv_flow_imp.id(5350185629611232069)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5196766105120677133)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2200585818673820501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5246510396856720746)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2245745602597554512)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5262051445415530224)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2256899348345202498)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5267241608914907702)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2262571576028726367)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5267400052065305455)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2262572183985726373)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350186264491232075)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2349925652231788182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350187223719232081)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2349925689396788183)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350188073550232084)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2349925818761788184)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350188982761232087)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2349925879140788185)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350189948509232089)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2349926032439788186)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350190796753232091)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2349926083849788187)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350191692664232093)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2349926188932788188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350192662050232095)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2349926307970788189)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350193545040232098)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2349926447438788190)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350194379245232100)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2349926507908788191)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350195338421232102)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350196184171232105)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350197148889232107)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350197965465232109)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2349926871495788195)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350198948116232112)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2349926962561788196)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5350206437956269411)
,p_view_id=>wwv_flow_imp.id(5350185784132232070)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2349927138832788197)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5183576069357498243)
,p_report_id=>wwv_flow_imp.id(5350185629611232069)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926647205788192)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5183585617894498529)
,p_report_id=>wwv_flow_imp.id(5350185629611232069)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926739519788193)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5183595372611507465)
,p_report_id=>wwv_flow_imp.id(5350185629611232069)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2349926795712788194)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'180'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2190056672841300737)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
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
 p_id=>wwv_flow_imp.id(2190057071363300737)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\5F85\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5F85\590D\76D8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2190057442779300737)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
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
 p_id=>wwv_flow_imp.id(2190057856288300736)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
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
 p_id=>wwv_flow_imp.id(2192399084946479476)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
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
 p_id=>wwv_flow_imp.id(2190058273204300736)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
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
 p_id=>wwv_flow_imp.id(2189984661340392256)
,p_button_sequence=>70
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
 p_id=>wwv_flow_imp.id(2244686428186594283)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\6307\6D3E-\9690\85CF')
,p_button_static_id=>'btn_assgin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\6307\6D3E-\9690\85CF')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244686579733594284)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_static_id=>'btn_edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2256896707847202472)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\4F20\503C')
,p_button_static_id=>'btnTurn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\4F20\503C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2221292906616349597)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\6307\6D3E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6307\6D3E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FLAG NUMBER :=0;',
'    V_FLAG_TMP NUMBER :=0;',
'BEGIN',
'    SELECT DECODE(V(''USERAUTH''),0,1,0) INTO V_FLAG_TMP FROM DUAL;',
'    V_FLAG := V_FLAG + V_FLAG_TMP;',
'    IF V_FLAG = 0 THEN',
'        SELECT COUNT(1) INTO V_FLAG_TMP FROM MPF_USER_DEPT_MAIN_ASSO_V WHERE JOB_LEVEL_CODE IN (20, 30) AND TENANT_ID = V(''USERTENANT'') AND BASE_DEPT_ID =:BASE_DEPT_ID AND EXT_USER_ID = V(''USER_ID'');',
'        V_FLAG := V_FLAG + V_FLAG_TMP;',
'        -- IF V_FLAG = 0 THEN',
'        --     SELECT COUNT(1) INTO V_FLAG_TMP FROM TENANT_AREA_UPGRADE_USERS_V WHERE UPGRADE_LEVEL IN (1,2) AND TENANT_ID = V(''USERTENANT'') AND EXT_USER_ID = V(''USER_ID'');',
'        --     V_FLAG := V_FLAG + V_FLAG_TMP;',
'        -- END IF;',
'    END IF;',
'    IF V_FLAG > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244684698110594265)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_button_name=>unistr('\72B6\6001\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\72B6\6001\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FLAG NUMBER :=0;',
'    V_FLAG_TMP NUMBER :=0;',
'BEGIN',
'    SELECT DECODE(V(''USERAUTH''),0,1,0) INTO V_FLAG_TMP FROM DUAL;',
'    V_FLAG := V_FLAG + V_FLAG_TMP;',
'    IF V_FLAG = 0 THEN',
'        SELECT COUNT(1) INTO V_FLAG_TMP FROM MPF_USER_DEPT_MAIN_ASSO_V WHERE JOB_LEVEL_CODE IN (20,30) AND TENANT_ID = V(''USERTENANT'') AND BASE_DEPT_ID =:BASE_DEPT_ID AND EXT_USER_ID = V(''USER_ID'');',
'        V_FLAG := V_FLAG + V_FLAG_TMP;',
'        -- IF V_FLAG = 0 THEN',
'        --     SELECT COUNT(1) INTO V_FLAG_TMP FROM TENANT_AREA_UPGRADE_USERS_V WHERE UPGRADE_LEVEL IN (1,2) AND TENANT_ID = V(''USERTENANT'') AND EXT_USER_ID = V(''USER_ID'');',
'        --     V_FLAG := V_FLAG + V_FLAG_TMP;',
'        -- END IF;',
'    END IF;',
'    IF V_FLAG > 0 THEN',
'        RETURN TRUE;',
'    ELSE',
'        RETURN FALSE;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2187298998148177604)
,p_name=>'P205_START_DATE'
,p_item_sequence=>10
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A\4ECE')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189984527404392255)
,p_name=>'P205_END_DATE'
,p_item_sequence=>20
,p_prompt=>unistr('\81F3')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189985386594392263)
,p_name=>'P205_AUDIT_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2190059824417300731)
,p_name=>'P205_EVENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244684490879594263)
,p_name=>'P205_DEPT_ID'
,p_item_sequence=>60
,p_item_default=>':USERDEPT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = V(''USERTENANT'') AND BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG = 0'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_display_when=>':USERAUTH = 0'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2244685746983594276)
,p_name=>'P205_STATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2256896391532202468)
,p_name=>'P205_TRUN_EVENT_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2256896455420202469)
,p_name=>'P205_TRUN_AUDIT_STATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2256896538561202470)
,p_name=>'P205_TURN_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2256896658869202471)
,p_name=>'P205_TRUN_ACTIVE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2256899429577202499)
,p_name=>'P205_AUDIT_TYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2262571697116726368)
,p_name=>'P205_PPT_URL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2262572206040726374)
,p_name=>'P205_CREATED_BY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2347071016030712102)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226093259451311983)
,p_name=>unistr('\521D\59CB\5316\503C')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226093749299311982)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>'back1'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D,\5F85\590D\76D8,\65E0\9700\590D\76D8')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P205_AUDIT_STATE'
,p_build_option_id=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2255366258947091063)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D,\65E0\9700\590D\76D8')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P205_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189984922137392259)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288259585275537880)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.onload=function(){',
'    $(''#btnSelect'').click()',
'}',
''))
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P205_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288259679973537881)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2190056672841300737)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D,\65E0\9700\590D\76D8')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288259781462537882)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2190057071363300737)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5F85\590D\76D8')
,p_build_option_id=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288259819775537883)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2190057442779300737)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5BA1\6838\4E2D')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288259911374537884)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2190057856288300736)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\9A73\56DE')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288260093388537885)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2192399084946479476)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\65E0\9700\590D\76D8')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288260114404537886)
,p_event_id=>wwv_flow_imp.id(2226093259451311983)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2190058273204300736)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189986365182392273)
,p_name=>unistr('\5168\90E8')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2190056672841300737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189986464944392274)
,p_event_id=>wwv_flow_imp.id(2189986365182392273)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D,\65E0\9700\590D\76D8')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189986535046392275)
,p_event_id=>wwv_flow_imp.id(2189986365182392273)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189986680831392276)
,p_name=>unistr('\5F85\590D\76D8')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2190057071363300737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189986716052392277)
,p_event_id=>wwv_flow_imp.id(2189986680831392276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5F85\590D\76D8')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189986846580392278)
,p_event_id=>wwv_flow_imp.id(2189986680831392276)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189987000813392279)
,p_name=>unistr('\5BA1\6838\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2190057442779300737)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987078399392280)
,p_event_id=>wwv_flow_imp.id(2189987000813392279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5BA1\6838\4E2D')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987133152392281)
,p_event_id=>wwv_flow_imp.id(2189987000813392279)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189987217038392282)
,p_name=>unistr('\5DF2\9A73\56DE')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2190057856288300736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987402185392283)
,p_event_id=>wwv_flow_imp.id(2189987217038392282)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\9A73\56DE')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987404478392284)
,p_event_id=>wwv_flow_imp.id(2189987217038392282)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2189987502989392285)
,p_name=>unistr('\5DF2\5B8C\6210')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2190058273204300736)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987620722392286)
,p_event_id=>wwv_flow_imp.id(2189987502989392285)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2189987722857392287)
,p_event_id=>wwv_flow_imp.id(2189987502989392285)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2197313735486115093)
,p_name=>unistr('\5237\65B0\6570\636E')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2189984661340392256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197313847958115094)
,p_event_id=>wwv_flow_imp.id(2197313735486115093)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'    apex_util.set_session_state(''P205_START_DATE'',:P205_START_DATE);',
'    apex_util.set_session_state(''P205_END_DATE'',:P205_END_DATE);',
'end;'))
,p_attribute_02=>'P205_START_DATE,P205_END_DATE'
,p_attribute_03=>'P205_START_DATE,P205_END_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197313903996115095)
,p_event_id=>wwv_flow_imp.id(2197313735486115093)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2221293400127349601)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221293421188349602)
,p_event_id=>wwv_flow_imp.id(2221293400127349601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P205_EVENT_ID'',''EVENT_ID'');',
'map.set(''P205_STATE'',''AUDIT_STATE'');',
'utils.set(this.data,map);',
'console.log($v(''P205_EVENT_ID''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244684278095594261)
,p_name=>unistr('\5BF9\8BDD\6846\5173\95ED\5237\65B0')
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244684343468594262)
,p_event_id=>wwv_flow_imp.id(2244684278095594261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2192399131006479477)
,p_name=>unistr('\65E0\9700\590D\76D8')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2192399084946479476)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2192399342016479479)
,p_event_id=>wwv_flow_imp.id(2192399131006479477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P205_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\65E0\9700\590D\76D8')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2192399577223479481)
,p_event_id=>wwv_flow_imp.id(2192399131006479477)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244685847223594277)
,p_name=>unistr('\72B6\6001\4FEE\6539')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244684698110594265)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>unistr('!utils.checkNull($v(''P205_EVENT_ID'')) && $v(''P205_STATE'').search(/\5DF2|\5BA1\6838/) == -1')
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244686045579594279)
,p_event_id=>wwv_flow_imp.id(2244685847223594277)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P205_EVENT_ID''))){',
unistr('    alert(''\8BF7\9009\62E9\8981\66F4\6539\590D\76D8\72B6\6001\7684\5DE5\5355\FF01'');'),
'}else{',
unistr('   alert(''\53EA\6709\72B6\6001\4E3A\65E0\9700\590D\76D8\548C\5F85\590D\76D8\7684\5DE5\5355\624D\53EF\4EE5\4FEE\6539\72B6\6001\FF01''); '),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244687867737594297)
,p_event_id=>wwv_flow_imp.id(2244685847223594277)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(''P215_EVENT_ID'',:P205_EVENT_ID);',
'END;'))
,p_attribute_02=>'P205_EVENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244685942366594278)
,p_event_id=>wwv_flow_imp.id(2244685847223594277)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_edit'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244686103254594280)
,p_name=>unistr('\6307\6D3E')
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2221292906616349597)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P205_EVENT_ID''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244686348605594282)
,p_event_id=>wwv_flow_imp.id(2244686103254594280)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\6307\6D3E\7684\5DE5\5355\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244687906314594298)
,p_event_id=>wwv_flow_imp.id(2244686103254594280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    APEX_UTIL.SET_SESSION_STATE(''P216_EVENT_ID'',:P205_EVENT_ID);',
'END;'))
,p_attribute_02=>'P205_EVENT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244686212610594281)
,p_event_id=>wwv_flow_imp.id(2244686103254594280)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_assgin'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2256896842991202473)
,p_name=>unistr('\4F20\503C')
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2256896707847202472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2256896944426202474)
,p_event_id=>wwv_flow_imp.id(2256896842991202473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P207_EVENT_ID'', :P205_TRUN_EVENT_ID);',
'    apex_util.set_session_state(''P207_STATUS'', :P205_TURN_STATUS);',
'    apex_util.set_session_state(''P207_AUDIT_STATE'', :P205_TRUN_AUDIT_STATE);',
'    apex_util.set_session_state(''P207_PAGE_ID'', :APP_PAGE_ID);',
'    apex_util.set_session_state(''P207_ACTIVE'', :P205_TRUN_ACTIVE);',
'    apex_util.set_session_state(''P207_AUDIT_TYPE'', :P205_AUDIT_TYPE);',
'    apex_util.set_session_state(''P207_PPT_URL'', :P205_PPT_URL);',
'    apex_util.set_session_state(''P207_CREATED_BY'', :P205_CREATED_BY);',
'end;',
'',
'',
''))
,p_attribute_02=>'P205_TRUN_EVENT_ID,P205_TRUN_AUDIT_STATE,P205_TURN_STATUS,P205_TRUN_ACTIVE,P205_AUDIT_TYPE,P205_PPT_URL,P205_CREATED_BY,P205_START_DATE,P205_END_DATE,P205_DEPT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2256897176351202476)
,p_event_id=>wwv_flow_imp.id(2256896842991202473)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
unistr('    if :P205_TRUN_ACTIVE = ''\53BB\590D\76D8'' THEN'),
'        select count(*)',
'        into row_count',
'        from TENANT_EVENT_REVIEW',
'        where TENANT_ID = :USERTENANT ',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P205_TRUN_EVENT_ID',
'          and rownum = 1;',
'',
'        if row_count = 0 then',
'            insert into TENANT_EVENT_REVIEW(EVENT_ID, CREATED_TIME, END_TIME, AUDIT_STATE, CREATION_DATE, CREATED_BY,',
'                                            TENANT_ID,BASE_DEPT_ID)',
'            values (:P205_TRUN_EVENT_ID,',
'                    (select TENANT_EVENT.BEGIN_TIME',
'                     from TENANT_EVENT',
'                     where TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID and EVENT_ID = :P205_TRUN_EVENT_ID),',
'                    (select TENANT_EVENT.END_TIME',
'                     from TENANT_EVENT',
'                     where TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID and EVENT_ID = :P205_TRUN_EVENT_ID),',
'                    ''WAIT'',',
'                    sysdate,',
'                    :USERID, :USERTENANT,:BASE_DEPT_ID);',
'        else',
'',
'            select count(*)',
'            into row_count',
'            from TENANT_EVENT_REVIEW',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and AUDIT_STATE = ''WAIT''',
'              and EVENT_ID = :P205_TRUN_EVENT_ID',
'              and rownum = 1;',
'',
'            if row_count > 0 then',
'                update TENANT_EVENT_REVIEW',
'                set CREATED_BY=:USERID',
'                where EVENT_ID = :P205_TRUN_EVENT_ID and TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;',
'            end if;',
'        end if;',
'    end if;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P205_TRUN_EVENT_ID,P205_TRUN_ACTIVE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2256897258451202477)
,p_event_id=>wwv_flow_imp.id(2256896842991202473)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:207:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2282383369214848978)
,p_name=>unistr('\72B6\6001\5237\65B0')
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2347071016030712102)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2282383462577848979)
,p_event_id=>wwv_flow_imp.id(2282383369214848978)
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
'',
'        }',
'    }',
'});'))
);
wwv_flow_imp.component_end;
end;
/

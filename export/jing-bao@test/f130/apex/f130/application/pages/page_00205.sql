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
 p_id=>wwv_flow_imp.id(2151898387830983108)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2273948467554131559)
,p_plug_name=>unistr('\4E8B\4EF6\590D\76D8\603B\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
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
 p_id=>wwv_flow_imp.id(2127463270197239958)
,p_name=>'APEX$ROW_ACTION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2127463374707239959)
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
 p_id=>wwv_flow_imp.id(2172623054120973969)
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
 p_id=>wwv_flow_imp.id(2183776799868621955)
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
 p_id=>wwv_flow_imp.id(2189449027552145824)
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
 p_id=>wwv_flow_imp.id(2189449635509145830)
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
 p_id=>wwv_flow_imp.id(2276803103755207639)
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
 p_id=>wwv_flow_imp.id(2276803140920207640)
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
 p_id=>wwv_flow_imp.id(2276803270285207641)
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
 p_id=>wwv_flow_imp.id(2276803330664207642)
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
 p_id=>wwv_flow_imp.id(2276803483963207643)
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
 p_id=>wwv_flow_imp.id(2276803535373207644)
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
 p_id=>wwv_flow_imp.id(2276803640456207645)
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
 p_id=>wwv_flow_imp.id(2276803759494207646)
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
 p_id=>wwv_flow_imp.id(2276803898962207647)
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
 p_id=>wwv_flow_imp.id(2276803959432207648)
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
 p_id=>wwv_flow_imp.id(2276804098729207649)
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
,p_lov_id=>wwv_flow_imp.id(2152724894896137509)
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
 p_id=>wwv_flow_imp.id(2276804191043207650)
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
,p_lov_id=>wwv_flow_imp.id(2152724894896137509)
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
 p_id=>wwv_flow_imp.id(2276804247236207651)
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
 p_id=>wwv_flow_imp.id(2276804323019207652)
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
 p_id=>wwv_flow_imp.id(2276804414085207653)
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
 p_id=>wwv_flow_imp.id(2276804590356207654)
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
 p_id=>wwv_flow_imp.id(2715008066426227114)
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
 p_id=>wwv_flow_imp.id(2276802968731207638)
,p_internal_uid=>166600914453704227
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(2159389046968637231)
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
 p_id=>wwv_flow_imp.id(2276812078370237237)
,p_interactive_grid_id=>wwv_flow_imp.id(2276802968731207638)
,p_static_id=>'1125977'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2276812232891237238)
,p_report_id=>wwv_flow_imp.id(2276812078370237237)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2110251501229509079)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>22
,p_column_id=>wwv_flow_imp.id(2715008066426227114)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2123392553879682301)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2127463270197239958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2173136845615725914)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2172623054120973969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2188677894174535392)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2183776799868621955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2193868057673912870)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2189449027552145824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2194026500824310623)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2189449635509145830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276812713250237243)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2276803103755207639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276813672478237249)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2276803140920207640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276814522309237252)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2276803270285207641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276815431520237255)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2276803330664207642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276816397268237257)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2276803483963207643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276817245512237259)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2276803535373207644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276818141423237261)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2276803640456207645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276819110809237263)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2276803759494207646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276819993799237266)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2276803898962207647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276820828004237268)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2276803959432207648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276821787180237270)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276822632930237273)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276823597648237275)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276824414224237277)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2276804323019207652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276825396875237280)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2276804414085207653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2276832886715274579)
,p_view_id=>wwv_flow_imp.id(2276812232891237238)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2276804590356207654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3476884058466199195)
,p_interactive_grid_id=>wwv_flow_imp.id(2276802968731207638)
,p_name=>unistr('\505C\7EBF-\74F6\9888-60\5206')
,p_static_id=>'6000603'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3476884212987199196)
,p_report_id=>wwv_flow_imp.id(3476884058466199195)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3323464533975644259)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2127463270197239958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3373208825711687872)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2172623054120973969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3388749874270497350)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2183776799868621955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3393940037769874828)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2189449027552145824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3394098480920272581)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2189449635509145830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476884693346199201)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2276803103755207639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476885652574199207)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2276803140920207640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476886502405199210)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2276803270285207641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476887411616199213)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2276803330664207642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476888377364199215)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2276803483963207643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476889225608199217)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2276803535373207644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476890121519199219)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2276803640456207645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476891090905199221)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2276803759494207646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476891973895199224)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2276803898962207647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476892808100199226)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2276803959432207648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476893767276199228)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476894613026199231)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476895577744199233)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476896394320199235)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2276804323019207652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476897376971199238)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2276804414085207653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3476904866811236537)
,p_view_id=>wwv_flow_imp.id(3476884212987199196)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2276804590356207654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3310274498212465369)
,p_report_id=>wwv_flow_imp.id(3476884058466199195)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3310284046749465655)
,p_report_id=>wwv_flow_imp.id(3476884058466199195)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3310293801466474591)
,p_report_id=>wwv_flow_imp.id(3476884058466199195)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'60'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4076943780133680298)
,p_interactive_grid_id=>wwv_flow_imp.id(2276802968731207638)
,p_name=>unistr('\74F6\9888-120\5206')
,p_static_id=>'6000608'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4076943934654680299)
,p_report_id=>wwv_flow_imp.id(4076943780133680298)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3923524255643125362)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2127463270197239958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3973268547379168975)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2172623054120973969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3988809595937978453)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2183776799868621955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3993999759437355931)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2189449027552145824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3994158202587753684)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2189449635509145830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076944415013680304)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2276803103755207639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076945374241680310)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2276803140920207640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076946224072680313)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2276803270285207641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076947133283680316)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2276803330664207642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076948099031680318)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2276803483963207643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076948947275680320)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2276803535373207644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076949843186680322)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2276803640456207645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076950812572680324)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2276803759494207646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076951695562680327)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2276803898962207647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076952529767680329)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2276803959432207648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076953488943680331)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076954334693680334)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076955299411680336)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076956115987680338)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2276804323019207652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076957098638680341)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2276804414085207653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4076964588478717640)
,p_view_id=>wwv_flow_imp.id(4076943934654680299)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2276804590356207654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3910334219879946472)
,p_report_id=>wwv_flow_imp.id(4076943780133680298)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3910343768416946758)
,p_report_id=>wwv_flow_imp.id(4076943780133680298)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(3910353523133955694)
,p_report_id=>wwv_flow_imp.id(4076943780133680298)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'120'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4677002171459161136)
,p_interactive_grid_id=>wwv_flow_imp.id(2276802968731207638)
,p_name=>unistr('\505C\7EBF-120\5206')
,p_static_id=>'6000598'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_authorization_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4677002325980161137)
,p_report_id=>wwv_flow_imp.id(4677002171459161136)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4523582646968606200)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2127463270197239958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4573326938704649813)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2172623054120973969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4588867987263459291)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2183776799868621955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594058150762836769)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2189449027552145824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4594216593913234522)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2189449635509145830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677002806339161142)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2276803103755207639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677003765567161148)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2276803140920207640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677004615398161151)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2276803270285207641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677005524609161154)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2276803330664207642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677006490357161156)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2276803483963207643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677007338601161158)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2276803535373207644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677008234512161160)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2276803640456207645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677009203898161162)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2276803759494207646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677010086888161165)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2276803898962207647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677010921093161167)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2276803959432207648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677011880269161169)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677012726019161172)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677013690737161174)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677014507313161176)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2276804323019207652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677015489964161179)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2276804414085207653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4677022979804198478)
,p_view_id=>wwv_flow_imp.id(4677002325980161137)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2276804590356207654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4510392611205427310)
,p_report_id=>wwv_flow_imp.id(4677002171459161136)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\662F')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4510402159742427596)
,p_report_id=>wwv_flow_imp.id(4677002171459161136)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(4510411914459436532)
,p_report_id=>wwv_flow_imp.id(4677002171459161136)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'120'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(5277063081134651526)
,p_interactive_grid_id=>wwv_flow_imp.id(2276802968731207638)
,p_name=>unistr('\975E\505C\7EBF-\975E\74F6\9888-180\5206')
,p_static_id=>'6000613'
,p_type=>'ALTERNATIVE'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5277063235655651527)
,p_report_id=>wwv_flow_imp.id(5277063081134651526)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5123643556644096590)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2127463270197239958)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173387848380140203)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>18
,p_column_id=>wwv_flow_imp.id(2172623054120973969)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5188928896938949681)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>19
,p_column_id=>wwv_flow_imp.id(2183776799868621955)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5194119060438327159)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>20
,p_column_id=>wwv_flow_imp.id(2189449027552145824)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5194277503588724912)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>21
,p_column_id=>wwv_flow_imp.id(2189449635509145830)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277063716014651532)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2276803103755207639)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277064675242651538)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2276803140920207640)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>66
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277065525073651541)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2276803270285207641)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>74
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277066434284651544)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2276803330664207642)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>53
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277067400032651546)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2276803483963207643)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>59
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277068248276651548)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2276803535373207644)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>112
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277069144187651550)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2276803640456207645)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>137
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277070113573651552)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2276803759494207646)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>153
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277070996563651555)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2276803898962207647)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277071830768651557)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2276803959432207648)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277072789944651559)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277073635694651562)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>82
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277074600412651564)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277075416988651566)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2276804323019207652)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277076399639651569)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2276804414085207653)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86.19999999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5277083889479688868)
,p_view_id=>wwv_flow_imp.id(5277063235655651527)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2276804590356207654)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5110453520880917700)
,p_report_id=>wwv_flow_imp.id(5277063081134651526)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804098729207649)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5110463069417917986)
,p_report_id=>wwv_flow_imp.id(5277063081134651526)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804191043207650)
,p_operator=>'EQ'
,p_is_case_sensitive=>true
,p_expression=>unistr('\5426')
,p_is_enabled=>true
);
wwv_flow_imp_page.create_ig_report_filter(
 p_id=>wwv_flow_imp.id(5110472824134926922)
,p_report_id=>wwv_flow_imp.id(5277063081134651526)
,p_type=>'COLUMN'
,p_column_id=>wwv_flow_imp.id(2276804247236207651)
,p_operator=>'GTE'
,p_is_case_sensitive=>false
,p_expression=>'180'
,p_is_enabled=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2116934124364720194)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
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
 p_id=>wwv_flow_imp.id(2116934522886720194)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\5F85\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\5F85\590D\76D8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2116934894302720194)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
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
 p_id=>wwv_flow_imp.id(2116935307811720193)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
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
 p_id=>wwv_flow_imp.id(2119276536469898933)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\65E0\9700\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--noUI:t-Button--pill'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\65E0\9700\590D\76D8')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2116935724727720193)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
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
 p_id=>wwv_flow_imp.id(2116862112863811713)
,p_button_sequence=>70
,p_button_name=>unistr('\67E5\8BE2')
,p_button_static_id=>'btnSelect'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padRight:t-Button--padTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2171563879710013740)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\6307\6D3E-\9690\85CF')
,p_button_static_id=>'btn_assgin'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\6307\6D3E-\9690\85CF')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:216:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2171564031257013741)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_static_id=>'btn_edit'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\72B6\6001\4FEE\6539-\9690\85CF')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:215:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2183774159370621929)
,p_button_sequence=>170
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\4F20\503C')
,p_button_static_id=>'btnTurn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\4F20\503C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2148170358139769054)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\6307\6D3E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
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
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2171562149634013722)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_button_name=>unistr('\72B6\6001\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
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
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2114176449671597061)
,p_name=>'P205_START_DATE'
,p_item_sequence=>10
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A\4ECE')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2116861978927811712)
,p_name=>'P205_END_DATE'
,p_item_sequence=>20
,p_prompt=>unistr('\81F3')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2116862838117811720)
,p_name=>'P205_AUDIT_STATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2116937275940720188)
,p_name=>'P205_EVENT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2171561942403013720)
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
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
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
 p_id=>wwv_flow_imp.id(2171563198507013733)
,p_name=>'P205_STATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183773843055621925)
,p_name=>'P205_TRUN_EVENT_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183773906943621926)
,p_name=>'P205_TRUN_AUDIT_STATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183773990084621927)
,p_name=>'P205_TURN_STATUS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183774110392621928)
,p_name=>'P205_TRUN_ACTIVE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2183776881100621956)
,p_name=>'P205_AUDIT_TYPE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189449148640145825)
,p_name=>'P205_PPT_URL'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2189449657564145831)
,p_name=>'P205_CREATED_BY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2273948467554131559)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2152970710974731440)
,p_name=>unistr('\521D\59CB\5316\503C')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152971200822731439)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
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
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2182243710470510520)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
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
 p_id=>wwv_flow_imp.id(2116862373660811716)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
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
 p_id=>wwv_flow_imp.id(2215137036798957337)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
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
 p_id=>wwv_flow_imp.id(2215137131496957338)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2116934124364720194)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D,\65E0\9700\590D\76D8')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215137232985957339)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2116934522886720194)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5F85\590D\76D8')
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215137271298957340)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2116934894302720194)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5BA1\6838\4E2D')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215137362897957341)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2116935307811720193)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\9A73\56DE')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215137544911957342)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2119276536469898933)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\65E0\9700\590D\76D8')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215137565927957343)
,p_event_id=>wwv_flow_imp.id(2152970710974731440)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2116935724727720193)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P205_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2116863816705811730)
,p_name=>unistr('\5168\90E8')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116934124364720194)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2116863916467811731)
,p_event_id=>wwv_flow_imp.id(2116863816705811730)
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
 p_id=>wwv_flow_imp.id(2116863986569811732)
,p_event_id=>wwv_flow_imp.id(2116863816705811730)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2116864132354811733)
,p_name=>unistr('\5F85\590D\76D8')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116934522886720194)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2116864167575811734)
,p_event_id=>wwv_flow_imp.id(2116864132354811733)
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
 p_id=>wwv_flow_imp.id(2116864298103811735)
,p_event_id=>wwv_flow_imp.id(2116864132354811733)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2116864452336811736)
,p_name=>unistr('\5BA1\6838\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116934894302720194)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2116864529922811737)
,p_event_id=>wwv_flow_imp.id(2116864452336811736)
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
 p_id=>wwv_flow_imp.id(2116864584675811738)
,p_event_id=>wwv_flow_imp.id(2116864452336811736)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2116864668561811739)
,p_name=>unistr('\5DF2\9A73\56DE')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116935307811720193)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2116864853708811740)
,p_event_id=>wwv_flow_imp.id(2116864668561811739)
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
 p_id=>wwv_flow_imp.id(2116864856001811741)
,p_event_id=>wwv_flow_imp.id(2116864668561811739)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2116864954512811742)
,p_name=>unistr('\5DF2\5B8C\6210')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116935724727720193)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2116865072245811743)
,p_event_id=>wwv_flow_imp.id(2116864954512811742)
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
 p_id=>wwv_flow_imp.id(2116865174380811744)
,p_event_id=>wwv_flow_imp.id(2116864954512811742)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2124191187009534550)
,p_name=>unistr('\5237\65B0\6570\636E')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2116862112863811713)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2124191299481534551)
,p_event_id=>wwv_flow_imp.id(2124191187009534550)
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
 p_id=>wwv_flow_imp.id(2124191355519534552)
,p_event_id=>wwv_flow_imp.id(2124191187009534550)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2148170851650769058)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2148170872711769059)
,p_event_id=>wwv_flow_imp.id(2148170851650769058)
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
 p_id=>wwv_flow_imp.id(2171561729619013718)
,p_name=>unistr('\5BF9\8BDD\6846\5173\95ED\5237\65B0')
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171561794992013719)
,p_event_id=>wwv_flow_imp.id(2171561729619013718)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2119276582529898934)
,p_name=>unistr('\65E0\9700\590D\76D8')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2119276536469898933)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2119276793539898936)
,p_event_id=>wwv_flow_imp.id(2119276582529898934)
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
 p_id=>wwv_flow_imp.id(2119277028746898938)
,p_event_id=>wwv_flow_imp.id(2119276582529898934)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171563298747013734)
,p_name=>unistr('\72B6\6001\4FEE\6539')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2171562149634013722)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>unistr('!utils.checkNull($v(''P205_EVENT_ID'')) && $v(''P205_STATE'').search(/\5DF2|\5BA1\6838/) == -1')
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171563497103013736)
,p_event_id=>wwv_flow_imp.id(2171563298747013734)
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
 p_id=>wwv_flow_imp.id(2171565319261013754)
,p_event_id=>wwv_flow_imp.id(2171563298747013734)
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
 p_id=>wwv_flow_imp.id(2171563393890013735)
,p_event_id=>wwv_flow_imp.id(2171563298747013734)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_edit'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171563554778013737)
,p_name=>unistr('\6307\6D3E')
,p_event_sequence=>140
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2148170358139769054)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P205_EVENT_ID''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171563800129013739)
,p_event_id=>wwv_flow_imp.id(2171563554778013737)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\6307\6D3E\7684\5DE5\5355\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171565357838013755)
,p_event_id=>wwv_flow_imp.id(2171563554778013737)
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
 p_id=>wwv_flow_imp.id(2171563664134013738)
,p_event_id=>wwv_flow_imp.id(2171563554778013737)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#btn_assgin'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2183774294514621930)
,p_name=>unistr('\4F20\503C')
,p_event_sequence=>150
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2183774159370621929)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2183774395949621931)
,p_event_id=>wwv_flow_imp.id(2183774294514621930)
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
 p_id=>wwv_flow_imp.id(2183774627874621933)
,p_event_id=>wwv_flow_imp.id(2183774294514621930)
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
 p_id=>wwv_flow_imp.id(2183774709974621934)
,p_event_id=>wwv_flow_imp.id(2183774294514621930)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:207:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2209260820738268435)
,p_name=>unistr('\72B6\6001\5237\65B0')
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2273948467554131559)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2209260914101268436)
,p_event_id=>wwv_flow_imp.id(2209260820738268435)
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

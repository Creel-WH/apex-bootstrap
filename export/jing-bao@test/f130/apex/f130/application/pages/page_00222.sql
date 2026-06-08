prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
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
 p_id=>222
,p_name=>unistr('\5176\5B83-\6211\7684\590D\76D8')
,p_alias=>unistr('\5176\5B83-\6211\7684\590D\76D8')
,p_step_title=>unistr('\5176\5B83-\6211\7684\590D\76D8')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function turnPage(event_id, audit_state, status, active, audit_type, ppt_url,create_by) {',
'    $s(''P222_AUDIT_STATE2'', audit_state);',
'    $s(''P222_EVENT_REVIEW_ID'', event_id);',
'    $s(''P222_STATUS'', status);',
'    $s(''P222_ACTIVE'', active);',
'    $s(''P222_AUDIT_TYPE'', audit_type);',
'    $s(''P222_PPT_URL'', ppt_url);',
'    $s(''P222_CREATED_BY'', create_by);',
'    $(''#myBtn'').click();',
'}',
'',
'',
'var start_date = $v(''P222_START_DATE'')?new Date($v(''P222_START_DATE'')):new Date(Date.now() - 3600 * 7 * 20 * 1000);',
'var end_date = $v(''P222_END_DATE'')?new Date($v(''P222_END_DATE'')):new Date(Date.now());',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P222_START_DATE'',',
'        type: ''date'',',
'        value: start_date,',
'        done: function (value, date, endDate) {',
'            $s(''P222_START_DATE'', value);',
'        }',
'    });',
'})',
'',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P222_END_DATE'',',
'        type: ''date'',',
'        value: end_date,',
'        done: function (value, date, endDate) {',
'            $s(''P222_END_DATE'', value);',
'        }',
'    });',
'})'))
,p_css_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2443781616210632739)
,p_plug_name=>unistr('\6211\7684\590D\76D8')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT EVENT_REVIEW_ID,FAB_ID,AREA_Y_ID,AREA_X_ID,FIRST_EVENT_NAME,SECOND_EVENT_NAME,PHENOMENON_NAME,DESCRIPTION,',
'                   EVENT_DATE,EVENT_TIME,AUDIT_STATE,ACTIVE,status,AUDIT_TYPE,PPT_URL,CREATED_BY',
'              FROM (SELECT EVENT_REVIEW_ID,',
'                           FAB_ID,',
'                           AREA_Y_ID,',
'                           AREA_X_ID,',
'                           FIRST_EVENT_NAME,',
'                           SECOND_EVENT_NAME,',
'                           PHENOMENON_NAME,',
'                           DESCRIPTION,',
unistr('                           TO_CHAR(CREATED_TIME, ''YYYY-MM-DD HH24:MI:SS'') || '' \2014 '' || TO_CHAR(END_TIME, ''YYYY-MM-DD HH24:MI:SS'')   EVENT_DATE,'),
'                           ROUND((END_TIME - CREATED_TIME)*24*60,1) EVENT_TIME,',
unistr('                           DECODE(AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''REJECT'', ''\5DF2\9A73\56DE'', ''AUDIT'', ''\5BA1\6838\4E2D'', ''UNREVIEW'', ''\65E0\9700\590D\76D8'',''\5F85\590D\76D8'') AUDIT_STATE,'),
unistr('                           DECODE(AUDIT_STATE,''WAIT'',''\53BB\590D\76D8'',''\8BE6\60C5'')  ACTIVE,'),
'                           NVL(AUDIT_STATE,''WAIT'') as  status,',
'                           AUDIT_TYPE,PPT_URL,CREATED_BY',
'                      FROM  TENANT_EVENT_REVIEW_OTHER',
'                     WHERE CREATED_BY = :USERID',
'                       AND TENANT_ID = :USERTENANT',
'                       AND BASE_DEPT_ID=:BASE_DEPT_ID',
'                       AND CREATED_TIME >= TO_DATE(:P222_START_DATE,''YYYY-MM-DD'')',
'                       AND CREATED_TIME < TO_DATE(:P222_END_DATE,''YYYY-MM-DD'') + 1) t',
'            WHERE INSTR(:P222_AUDIT_STATE,AUDIT_STATE) > 0;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P222_START_DATE,P222_END_DATE,P222_AUDIT_STATE'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6211\7684\590D\76D8')
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
 p_id=>wwv_flow_imp.id(2287081487288229359)
,p_name=>'EVENT_REVIEW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_REVIEW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\590D\76D8ID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<a href="javascript:void(0);" onclick="turnPage(''&EVENT_REVIEW_ID.'',''&AUDIT_STATE.'',''&STATUS.'',''&ACTIVE.'',''&AUDIT_TYPE.'',''&PPT_URL.'',''&CREATED_BY.'')">&EVENT_REVIEW_ID.</a>')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2287081552465229360)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
,p_lov_source=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(2287081606407229361)
,p_name=>'AREA_Y_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_Y_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND TYPE = 2 AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(2287081749432229362)
,p_name=>'AREA_X_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_X_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5DE5\6BB5')
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
,p_lov_source=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND TYPE = 1 AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(2287081885842229363)
,p_name=>'FIRST_EVENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FIRST_EVENT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\4E8B\4EF6\5927\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(2287081908942229364)
,p_name=>'SECOND_EVENT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SECOND_EVENT_NAME'
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
 p_id=>wwv_flow_imp.id(2287082046601229365)
,p_name=>'PHENOMENON_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PHENOMENON_NAME'
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
 p_id=>wwv_flow_imp.id(2342456202777475149)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(2366005157776863802)
,p_name=>'AUDIT_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>170
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
 p_id=>wwv_flow_imp.id(2366005803273863808)
,p_name=>'PPT_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PPT_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>180
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
 p_id=>wwv_flow_imp.id(2366006002097863810)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\590D\76D8\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
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
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'SELECT NAME,EXT_USER_ID FROM MPF_USER_BASIC_V WHERE TENANT_ID = :USERTENANT AND IS_LEAVE = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2446637047618708827)
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
 p_id=>wwv_flow_imp.id(2446637395892708831)
,p_name=>'EVENT_TIME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_TIME'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\65F6\95F4\6301\7EED\65F6\95F4(\5206\949F)')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(2446637471675708832)
,p_name=>'AUDIT_STATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AUDIT_STATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(2446637562741708833)
,p_name=>'ACTIVE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ACTIVE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(2446637739012708834)
,p_name=>'EVENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6545\969C\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(2788131019540807661)
,p_name=>'EVENT_REVIEW_ID_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EVENT_REVIEW_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\590D\76D8ID\641C\7D22\5217')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2446636117387708818)
,p_internal_uid=>263311514633624864
,p_is_editable=>false
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(2446645227026738417)
,p_interactive_grid_id=>wwv_flow_imp.id(2446636117387708818)
,p_static_id=>'1125977'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2446645381547738418)
,p_report_id=>wwv_flow_imp.id(2446645227026738417)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287529486309987601)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2287081487288229359)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>90
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287530357262987607)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2287081552465229360)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287531255192987609)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2287081606407229361)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287532179755987612)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2287081749432229362)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287533094634987614)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2287081885842229363)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287533939435987617)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2287081908942229364)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2287534819267987619)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2287082046601229365)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2342969994272227094)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2342456202777475149)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2370415258146492298)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2366005157776863802)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2370427676718643653)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2366005803273863808)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2370553067750015450)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2366006002097863810)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2446653142455738446)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2446637047618708827)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2446656746304738455)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2446637395892708831)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>116
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2446657562880738457)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2446637471675708832)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>75
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2446658545531738460)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2446637562741708833)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>86
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2446666035371775759)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(2446637739012708834)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>269
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2806081677331589260)
,p_view_id=>wwv_flow_imp.id(2446645381547738418)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(2788131019540807661)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2446394546217248685)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2286768783103221422)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_button_name=>unistr('\5168\90E8')
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
 p_id=>wwv_flow_imp.id(2286769513532221422)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2443781616210632739)
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
 p_id=>wwv_flow_imp.id(2286769946916221422)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2443781616210632739)
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
 p_id=>wwv_flow_imp.id(2286770796275221423)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2443781616210632739)
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
 p_id=>wwv_flow_imp.id(2286771147853221423)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_button_name=>unistr('\4F20\503C')
,p_button_static_id=>'myBtn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\4F20\503C')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2286776582759221440)
,p_button_sequence=>40
,p_button_name=>unistr('\67E5\8BE2')
,p_button_static_id=>'btnSelect'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--pillStart:t-Button--padLeft:t-Button--padRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2287084673647229391)
,p_button_sequence=>50
,p_button_name=>unistr('\65B0\589E\590D\76D8')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\590D\76D8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286771918605221427)
,p_name=>'P222_STATUS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286772376594221430)
,p_name=>'P222_AUDIT_STATE2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286772765507221430)
,p_name=>'P222_EVENT_REVIEW_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286773560453221430)
,p_name=>'P222_STATUS_EDIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286773943565221430)
,p_name=>'P222_ACTIVE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286774337511221430)
,p_name=>'P222_AUDIT_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286774730278221431)
,p_name=>'P222_PPT_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286775184379221431)
,p_name=>'P222_CREATED_BY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2443781616210632739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286777396788221441)
,p_name=>'P222_START_DATE'
,p_item_sequence=>20
,p_item_default=>'SYSDATE - 7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(2286777764197221441)
,p_name=>'P222_END_DATE'
,p_item_sequence=>30
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
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
 p_id=>wwv_flow_imp.id(2286778159591221441)
,p_name=>'P222_AUDIT_STATE'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286780700521221446)
,p_name=>unistr('\67E5\8BE2')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286776582759221440)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286781117408221446)
,p_event_id=>wwv_flow_imp.id(2286780700521221446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286781564871221446)
,p_name=>unistr('\521D\59CB\5316\503C')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286782002899221447)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P222_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286782540082221447)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#myBtn'').hide();',
'$(''#btn_edit'').hide();',
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
 p_id=>wwv_flow_imp.id(2288259100490537875)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
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
,p_server_condition_expr1=>'P222_AUDIT_STATE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2282385410292848999)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2286769513532221422)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5BA1\6838\4E2D')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2282385292342848997)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2286768783103221422)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2282385517751849000)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2286769946916221422)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\9A73\56DE')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2282385699856849001)
,p_event_id=>wwv_flow_imp.id(2286781564871221446)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2286770796275221423)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P222_AUDIT_STATE'
,p_client_condition_expression=>unistr('\5DF2\5B8C\6210')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286782936732221447)
,p_name=>unistr('\5168\90E8')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286768783103221422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286783482170221447)
,p_event_id=>wwv_flow_imp.id(2286782936732221447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210,\5DF2\9A73\56DE,\5BA1\6838\4E2D')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286783930562221448)
,p_event_id=>wwv_flow_imp.id(2286782936732221447)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286785734680221448)
,p_name=>unistr('\5BA1\6838\4E2D')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286769513532221422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286786290988221448)
,p_event_id=>wwv_flow_imp.id(2286785734680221448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5BA1\6838\4E2D')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286786738509221449)
,p_event_id=>wwv_flow_imp.id(2286785734680221448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286787111766221449)
,p_name=>unistr('\5DF2\9A73\56DE')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286769946916221422)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286787611130221449)
,p_event_id=>wwv_flow_imp.id(2286787111766221449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\9A73\56DE')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286788128731221449)
,p_event_id=>wwv_flow_imp.id(2286787111766221449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286788514936221449)
,p_name=>unistr('\5DF2\5B8C\6210')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286770796275221423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286789024536221449)
,p_event_id=>wwv_flow_imp.id(2286788514936221449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_AUDIT_STATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>unistr('\5DF2\5B8C\6210')
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286789558930221450)
,p_event_id=>wwv_flow_imp.id(2286788514936221449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286789966382221450)
,p_name=>unistr('\4F20\503C')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2286771147853221423)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286790468331221450)
,p_event_id=>wwv_flow_imp.id(2286789966382221450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P223_EVENT_REVIEW_ID'', :P222_EVENT_REVIEW_ID);',
'    apex_util.set_session_state(''P223_STATUS'', :P222_STATUS);',
'    -- apex_util.set_session_state(''P223_AUDIT_STATE'', :P222_AUDIT_STATE2);',
'    apex_util.set_session_state(''P223_PAGE_ID'', :APP_PAGE_ID);',
'    apex_util.set_session_state(''P223_ACTIVE'', :P222_ACTIVE);',
'    apex_util.set_session_state(''P223_AUDIT_TYPE'', :P222_AUDIT_TYPE);',
'    apex_util.set_session_state(''P223_PPT_URL'', :P222_PPT_URL);',
'    apex_util.set_session_state(''P223_CREATED_BY'', :P222_CREATED_BY);',
'end;'))
,p_attribute_02=>'P222_STATUS,P222_AUDIT_STATE2,P222_EVENT_REVIEW_ID,P222_ACTIVE,P222_AUDIT_TYPE,P222_PPT_URL,P222_CREATED_BY'
,p_attribute_03=>'P222_STATUS,P222_AUDIT_STATE2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286791447803221450)
,p_event_id=>wwv_flow_imp.id(2286789966382221450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:223:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286796009125221453)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>170
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286796509717221453)
,p_event_id=>wwv_flow_imp.id(2286796009125221453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2286796986463221453)
,p_name=>unistr('\72B6\6001\5237\65B0')
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2443781616210632739)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|gridpagechange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2286797456102221453)
,p_event_id=>wwv_flow_imp.id(2286796986463221453)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2287084736744229392)
,p_name=>unistr('\65B0\589E\590D\76D8')
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2287084673647229391)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287084840999229393)
,p_event_id=>wwv_flow_imp.id(2287084736744229392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    V_EVENT_REVIEW_ID NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    INSERT INTO TENANT_EVENT_REVIEW_OTHER (DEPT_ID,AUDIT_STATE,UPDATED_BY,CREATED_BY,TENANT_ID,BASE_DEPT_ID)',
'VALUES (:USERDEPT,''WAIT'',:USER_ID,:USER_ID,:USERTENANT,:BASE_DEPT_ID) RETURNING EVENT_REVIEW_ID INTO V_EVENT_REVIEW_ID;',
'    APEX_UTIL.SET_SESSION_STATE(''P222_EVENT_REVIEW_ID'',V_EVENT_REVIEW_ID);',
'    ',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P222_EVENT_REVIEW_ID'',-1);',
'end;',
''))
,p_attribute_03=>'P222_EVENT_REVIEW_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287084913486229394)
,p_event_id=>wwv_flow_imp.id(2287084736744229392)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P223_EVENT_REVIEW_ID'', '''');',
'    apex_util.set_session_state(''P223_STATUS'', ''WAIT'');',
unistr('    apex_util.set_session_state(''P223_ACTIVE'', ''\53BB\590D\76D8'');'),
'    apex_util.set_session_state(''P223_PAGE_ID'', :APP_PAGE_ID);',
'end;',
'',
'',
''))
,p_attribute_02=>'P222_EVENT_REVIEW_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287085008880229395)
,p_event_id=>wwv_flow_imp.id(2287084736744229392)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:223:&APP_SESSION.:::::";'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00120
begin
--   Manifest
--     PAGE: 00120
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>120
,p_name=>unistr('\6587\4EF6\5E93\7BA1\7406')
,p_alias=>unistr('\6587\4EF6\5E93\7BA1\7406')
,p_step_title=>unistr('\6587\4EF6\5E93\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('-- \9489\9489\7684API'),
'-- https://g.alicdn.com/dingding/dingtalk-jsapi/2.10.3/dingtalk.open.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId, delFlag) {',
'    // console.log("P120_FOLDER_LIB_ID: " + objId);',
'    $s(''P120_FOLDER_LIB_ID'', objId);',
'    $s(''P120_DEL_FLAG'', delFlag);',
'    $(''#BTN_'' + name).click();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// my_test \7F51\683C\9759\6001ID'),
'var gridView = apex.region("my_test").call("getViews").grid;',
'if($v(''P120_ROLE_CODE'') ==''VIEW_REPORT''){',
unistr('// EDITION_TYPE_NAME\662F\60F3\8981\9690\85CF\7684\5217'),
'gridView.view$.grid("hideColumn", "OPERATE");',
'}else{',
'gridView.view$.grid("showColumn", "OPERATE");',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn {',
'    display: none;',
'}',
'',
'.is_modify_0  {',
'    display: none;',
'}',
'',
'.DELETE {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3327116185148757297)
,p_plug_name=>unistr('\67E5\8BE2\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3327116299464757298)
,p_plug_name=>unistr('\6587\4EF6\5E93\533A\57DF')
,p_region_name=>'my_test'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FOLDER_LIB_ID,',
'       NVL(A.FOLDER_CLASS_ID ,0) FOLDER_CLASS_ID,',
'       A.FOLDER_LIB_NAME,',
'       A.FOLDER_LIB_NAME_ORI,',
'       A.FOLDER_LIB_STATUS,',
unistr('       DECODE(A.FOLDER_LIB_STATUS, ''NORMAL'', ''\6B63\5E38'', ''DELETE'', ''\5DF2\5220\9664\FF08'' || TO_CHAR(90 - trunc(SYSDATE - DEL_DATE)) || ''\5929\FF09'','),
'              NULL)                                                                                                                                 STATUS,',
'       A.REMARK,',
'       A.SCOPE_TYPE,',
'       NVL(B.COUNT_NUMBER, 0)                                                                                                                       COUNT_NUMBER,',
'       A.CREATION_DATE,',
unistr('       DECODE(A.FOLDER_LIB_STATUS, ''DELETE'', ''\6062\590D'', ''NORMAL'', ''\5220\9664'', NULL)                                                                            OPERATE,'),
'       A.DEL_FLAG,',
'       CASE',
'           WHEN :ROLE_CODE = ''VIEW_REPORT'' THEN 0',
'           WHEN :ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN 1',
'           WHEN EXISTS (SELECT 1',
'                            FROM STS_SCOPE SB',
'                            WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                              AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                              AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                              AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                                OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                           FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                           WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                             AND BD.USER_ID = :DIAN_USER_ID))))) THEN 1',
'           ELSE (select COUNT(1)',
'                 from (select RANGE_TYPE, RANGE_ID',
'                       from STS_SCOPE FB',
'                       where FB.REFERENCE_TYPE = ''FOLDER_LIB''',
'                         and FB.PERMISSIONS_TYPE = ''MANAGE''',
'                         AND A.FOLDER_LIB_ID = FB.REFERENCE_ID) C',
'                          left join BASIC_JA_DING_DEPT_USER D',
'                                    on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
'                 where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))',
'       END IS_HIDE',
'FROM STS_FOLDER_LIB A',
'         left join (select FOLDER_LIB_ID, count(FOLDER_ID) COUNT_NUMBER',
'                    from STS_FOLDER',
'                    where TENANT_ID = :USER_TENANT',
'                      AND DEL_FLAG <> 1',
'                    group by FOLDER_LIB_ID) B on A.FOLDER_LIB_ID = B.FOLDER_LIB_ID',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND TO_CHAR(NVL(A.SYSTEM_ID, 1)) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'  AND A.DEL_FLAG <> 1',
'  AND (A.FOLDER_LIB_STATUS = :P120_FOLDER_LIB_STATUS OR :P120_FOLDER_LIB_STATUS = ''ALL'')',
'  AND (A.FOLDER_LIB_NAME LIKE ''%'' || :P120_FOLDER_LIB_NAME || ''%'' OR NVL(:P120_FOLDER_LIB_NAME, ''ALL'') = ''ALL'')',
'  AND (:ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN''',
'       OR EXISTS (SELECT 1',
'                  FROM STS_SCOPE SB',
'                  WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                    AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                    AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                    AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                      OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                                 FROM BASIC_JA_DING_DEPT_USER BD',
'                                                                 WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                   AND BD.USER_ID = :DIAN_USER_ID))))',
'       OR :ROLE_CODE = ''VIEW_REPORT'' OR SCOPE_TYPE = ''ALL'' OR',
'       EXISTS(SELECT 1',
'              FROM (select RANGE_TYPE, RANGE_ID',
'                    from STS_SCOPE SE',
'                    where REFERENCE_TYPE = ''FOLDER_LIB''',
'                      AND A.FOLDER_LIB_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P120_FOLDER_LIB_STATUS,P120_FOLDER_LIB_NAME'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6587\4EF6\5E93\533A\57DF')
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
 p_id=>wwv_flow_imp.id(3327116865958757303)
,p_name=>'FOLDER_LIB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_LIB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3327116892288757304)
,p_name=>'FOLDER_CLASS_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_CLASS_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\5206\7C7B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
unistr('SELECT ''\2014\2014'' FOLDER_CLASS_NAME , 0 FOLDER_CLASS_ID FROM dual'),
'UNION ALL',
'SELECT FOLDER_CLASS_NAME, FOLDER_CLASS_ID ID',
'FROM STS_FOLDER_CLASS',
'WHERE DEL_FLAG = 0',
'  AND TENANT_ID = :USER_TENANT;'))
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
 p_id=>wwv_flow_imp.id(3327117011576757305)
,p_name=>'FOLDER_LIB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_LIB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"   onclick="btnClick(''NAME'',''&FOLDER_LIB_ID.'',''&DEL_FLAG.'')" style="text-dcoration:none;">',
    '		&FOLDER_LIB_NAME.',
    '	</a>',
    '</span>')))).to_clob
,p_link_target=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:124:P124_FOLDER_LIB_ID,P124_DEL_FLAG:&FOLDER_LIB_ID.,&DEL_FLAG.'
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
 p_id=>wwv_flow_imp.id(3327117094527757306)
,p_name=>'FOLDER_LIB_NAME_ORI'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_LIB_NAME_ORI'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3327117183868757307)
,p_name=>'FOLDER_LIB_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_LIB_STATUS'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3327117293805757308)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3327117380672757309)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3327117521936757310)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.''  onclick="btnClick(''&FOLDER_LIB_STATUS.'',''&FOLDER_LIB_ID.'')" style="text-dcoration:none;">',
    '		&OPERATE.',
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE. &FOLDER_LIB_STATUS.'' onclick="btnClick(''CLASSIFY'',''&FOLDER_LIB_ID.'')" style="text-dcoration:none;">',
    unistr('		\66F4\6539\5206\7C7B'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE. &FOLDER_LIB_STATUS.'' onclick="btnClick(''SETTINGS'',''&FOLDER_LIB_ID.'')" style="text-dcoration:none;">',
    unistr('		\6587\4EF6\5E93\8BBE\7F6E'),
    '	</a>',
    '</span>')))).to_clob
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
 p_id=>wwv_flow_imp.id(3327117671270757311)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3327117759819757312)
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
 p_id=>wwv_flow_imp.id(3327117911200757314)
,p_name=>'COUNT_NUMBER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNT_NUMBER'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6587\4EF6\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3327118013003757315)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\521B\5EFA\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(3327119304350757328)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>58
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
 p_id=>wwv_flow_imp.id(3335680158602478486)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3335683026656478515)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3327116731690757302)
,p_internal_uid=>454511759815411024
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
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3327583720143304867)
,p_interactive_grid_id=>wwv_flow_imp.id(3327116731690757302)
,p_static_id=>'4549788'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3327583961416304867)
,p_report_id=>wwv_flow_imp.id(3327583720143304867)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327584394346304871)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3327116865958757303)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>91.60399999999998
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327585330697304875)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3327116892288757304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327586217833304878)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3327117011576757305)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327587104541304881)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3327117094527757306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327588006900304883)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3327117183868757307)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327588930070304885)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3327117293805757308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327589780036304887)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3327117380672757309)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327590767836304889)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3327117521936757310)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>197
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327591635966304891)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3327117671270757311)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327593779596548615)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3327117911200757314)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327598502050554227)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3327118013003757315)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327755377734677876)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3327119304350757328)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3335965157138345266)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3335680158602478486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3336140688466464563)
,p_view_id=>wwv_flow_imp.id(3327583961416304867)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3335683026656478515)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4228652410223130687)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327116666603757301)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3327116185148757297)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:121:&SESSION.::&DEBUG.:121::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'BEGIN',
'    IF :P120_ROLE_CODE = ''SYSTEM_ADMIN'' THEN',
'        RETURN TRUE;',
'    ELSIF :P120_ROLE_CODE = ''SUPER_ADMIN'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        SELECT COUNT(1)',
'        INTO V_COUNT',
'        FROM STS_SCOPE A',
'        WHERE A.REFERENCE_TYPE = ''SYSTEM''',
'          AND TO_CHAR(A.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'          AND A.PERMISSIONS_TYPE = ''MANAGE''',
'          AND ((A.RANGE_TYPE = ''USER'' AND A.RANGE_ID = :DIAN_USER_ID)',
'            OR (A.RANGE_TYPE = ''DEPT'' AND EXISTS(',
'                   SELECT 1',
'                   FROM BASIC_JA_DING_DEPT_USER B',
'                   WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                     AND B.USER_ID = :DIAN_USER_ID',
'               )));',
'        RETURN V_COUNT > 0;',
'    END IF;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327118122928757316)
,p_button_sequence=>120
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'BTN_NORMAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327118188240757317)
,p_button_sequence=>130
,p_button_name=>unistr('\6062\590D')
,p_button_static_id=>'BTN_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6062\590D')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327118332552757318)
,p_button_sequence=>140
,p_button_name=>unistr('\4FEE\6539\5206\7C7B')
,p_button_static_id=>'BTN_CLASSIFY'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\4FEE\6539\5206\7C7B')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334739521155586884)
,p_button_sequence=>150
,p_button_name=>unistr('\6587\4EF6\5E93\8BBE\7F6E')
,p_button_static_id=>'BTN_SETTINGS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6587\4EF6\5E93\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3335682418426478509)
,p_button_sequence=>160
,p_button_name=>unistr('\6587\4EF6\5217\8868')
,p_button_static_id=>'BTN_NAME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6587\4EF6\5217\8868')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3343008698362660026)
,p_button_sequence=>200
,p_button_name=>unistr('\5BFC\5165\6570\636E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5BFC\5165\6570\636E')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3327763284877768393)
,p_branch_action=>'f?p=&APP_ID.:122:&SESSION.::&DEBUG.:122:P122_FOLDER_LIB_ID:&P120_FOLDER_LIB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3327118332552757318)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3334740224060586891)
,p_branch_name=>unistr('\8F6C\5230\9875 123')
,p_branch_action=>'f?p=&APP_ID.:123:&SESSION.::&DEBUG.:123:P123_FOLDER_LIB_ID:&P120_FOLDER_LIB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3334739521155586884)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3335682805926478513)
,p_branch_name=>unistr('\8F6C\5230\9875 124')
,p_branch_action=>'f?p=&APP_ID.:124:&SESSION.::&DEBUG.:124:P124_FOLDER_LIB_ID:&P120_FOLDER_LIB_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>30
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P120_DEL_FLAG'
,p_branch_condition_text=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3327116398668757299)
,p_name=>'P120_FOLDER_LIB_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3327116185148757297)
,p_item_default=>'ALL'
,p_prompt=>unistr('\72B6\6001')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\5168\90E8;ALL,\6B63\5E38;NORMAL,\5DF2\5220\9664;DELETE')
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(3327116510407757300)
,p_name=>'P120_FOLDER_LIB_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3327116185148757297)
,p_prompt=>unistr('\6587\4EF6\5E93')
,p_placeholder=>unistr('\8BF7\8F93\5165\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>15
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3327118401757757319)
,p_name=>'P120_FOLDER_LIB_ID'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335682357029478508)
,p_name=>'P120_DEL_FLAG'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3336167696486526579)
,p_name=>'P120_ROLE_CODE'
,p_item_sequence=>190
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327118501765757320)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3327118122928757316)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337457866181598917)
,p_event_id=>wwv_flow_imp.id(3327118501765757320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\5220\9664\6587\4EF6\5E93\5C06\4F1A\628A\6587\4EF6\540C\6B65\5220\9664,\5DF2\5220\9664\6587\4EF6\5E93\5C06\4F1A\4FDD\5B5890\5929')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3118649476871345318)
,p_event_id=>wwv_flow_imp.id(3327118501765757320)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// return confirm(''\5220\9664\6587\4EF6\5E93\5C06\4F1A\628A\6587\4EF6\540C\6B65\5220\9664,\5DF2\5220\9664\6587\4EF6\5E93\5C06\4F1A\4FDD\5B5890\5929'');'),
unistr('//  \9489\9489\81EA\5B9A\4E49\7684\63D0\793A\7A97\53E3'),
'// dd.device.notification.confirm({',
unistr('//   message: "\786E\8BA4\64CD\4F5C\FF1F",'),
'//   onSuccess: (result) => {',
'//     if (result.confirm) {',
'//     return true;',
'//      }else{',
'//          return false;',
'//      }',
'    ',
'//   }',
'// });'))
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327118639198757321)
,p_event_id=>wwv_flow_imp.id(3327118501765757320)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\539F\7248-\672A\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER_LIB',
'    SET FOLDER_LIB_STATUS = ''DELETE'',',
'        DEL_DATE = SYSDATE,',
'        DEL_FLAG = -1 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_LIB_ID = :P120_FOLDER_LIB_ID;',
'END;'))
,p_attribute_02=>'P120_FOLDER_LIB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022908718978783918)
,p_event_id=>wwv_flow_imp.id(3327118501765757320)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   VARCHAR2(2000);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_CURRENT_FOLDER_LIB_NAME   VARCHAR2(45); --by:WXX   2025/04/25',
'    V_RESULT                    VARCHAR2(4000);',
'    V_JSON                      CLOB;',
'/**',
'* CREATE BY:',
'* CREATE DATE:',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/25 15:23',
unistr('* DESCRIPTION: \6587\4EF6\5E93\7BA1\7406-\6062\590D\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
unistr('-- \67E5\8BE2\6587\4EF6\5E93\540D by:WXX   2025/04/20 19:00'),
'        select FOLDER_LIB_NAME',
'        into V_CURRENT_FOLDER_LIB_NAME',
'        from STS_FOLDER_LIB',
'        where FOLDER_LIB_ID = :P120_FOLDER_LIB_ID',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
unistr('-- \6062\590D'),
'    UPDATE STS_FOLDER_LIB',
'    SET FOLDER_LIB_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_LIB_ID = :P120_FOLDER_LIB_ID;',
'',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('            if V_ROW_COUNT > 0 then --\5B58\5165\65E5\5FD7'),
'V_JSON     := ''{',
'        "current_name": " '' || V_CURRENT_FOLDER_LIB_NAME  || '' ",',
'        "old_name": "",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'                V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                        P_MODULE_CODE => ''FOLDER_LIB'',',
'                        P_OPERATION_CODE => ''FILE_LIBRARY'',',
'                        P_BEHAVIOR_CODE => ''RECOVER'',',
'                        P_ENTITY_ID => :P120_FOLDER_LIB_ID,',
'                        P_EXTRA_PARAMS => V_JSON,',
'                        P_APP_ID => :APP_ID,',
'                        P_TENANT_ID => :USER_TENANT,',
'                        P_SYS_USER_ID =>:MPF_USER_ID',
'                            );',
'            end if;',
'',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P120_FOLDER_LIB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327118710411757322)
,p_event_id=>wwv_flow_imp.id(3327118501765757320)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327118839209757323)
,p_name=>unistr('\6062\590D')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3327118188240757317)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327118912685757324)
,p_event_id=>wwv_flow_imp.id(3327118839209757323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER_LIB',
'    SET FOLDER_LIB_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_LIB_ID = :P120_FOLDER_LIB_ID;',
'END;'))
,p_attribute_02=>'P120_FOLDER_LIB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337919927272122479)
,p_event_id=>wwv_flow_imp.id(3327118839209757323)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   VARCHAR2(2000);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_CURRENT_FOLDER_LIB_NAME   VARCHAR2(45); --by:WXX   2025/04/25',
'    V_RESULT                    VARCHAR2(4000);',
'    V_JSON                      CLOB;',
'/**',
'* CREATE BY:',
'* CREATE DATE:',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/25 15:23',
unistr('* DESCRIPTION: \6587\4EF6\5E93\7BA1\7406-\6062\590D\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
unistr('-- \67E5\8BE2\6587\4EF6\5E93\540D by:WXX   2025/04/20 19:00'),
'        select FOLDER_LIB_NAME',
'        into V_CURRENT_FOLDER_LIB_NAME',
'        from STS_FOLDER_LIB',
'        where FOLDER_LIB_ID = :P120_FOLDER_LIB_ID',
unistr('        --   and DEL_FLAG = 0 --\6709\53EF\80FD\662F\5DF2\5220\9664\4EFB\52A1\6062\590D\FF0C\53BB\6389\8FD9\4E2A\6761\4EF6'),
'          and TENANT_ID = :USER_TENANT;',
unistr('-- \6062\590D'),
'    UPDATE STS_FOLDER_LIB',
'    SET FOLDER_LIB_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_LIB_ID = :P120_FOLDER_LIB_ID;',
'',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('            if V_ROW_COUNT > 0 then --\5B58\5165\65E5\5FD7'),
'V_JSON     := ''{',
'        "current_name": " '' || V_CURRENT_FOLDER_LIB_NAME  || '' ",',
'        "old_name": "",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'                V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                        P_MODULE_CODE => ''FOLDER_LIB'',',
'                        P_OPERATION_CODE => ''FILE_LIBRARY'',',
'                        P_BEHAVIOR_CODE => ''RECOVER'',',
'                        P_ENTITY_ID => :P120_FOLDER_LIB_ID,',
'                        P_EXTRA_PARAMS => V_JSON,',
'                        P_APP_ID => :APP_ID,',
'                        P_TENANT_ID => :USER_TENANT,',
'                        P_SYS_USER_ID =>:MPF_USER_ID',
'                            );',
'            end if;',
'',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P120_FOLDER_LIB_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327119023285757325)
,p_event_id=>wwv_flow_imp.id(3327118839209757323)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327763451423768394)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327763498884768395)
,p_event_id=>wwv_flow_imp.id(3327763451423768394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3334739058272586879)
,p_name=>unistr('\72B6\6001')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P120_FOLDER_LIB_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3334739142164586880)
,p_event_id=>wwv_flow_imp.id(3334739058272586879)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3334739258343586881)
,p_name=>unistr('\540D\79F0')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P120_FOLDER_LIB_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3334739288091586882)
,p_event_id=>wwv_flow_imp.id(3334739258343586881)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335682474065478510)
,p_name=>unistr('\9A8C\8BC1')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3335682418426478509)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335682654245478511)
,p_event_id=>wwv_flow_imp.id(3335682474065478510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P120_DEL_FLAG'')==-1){',
unistr('    alert(''\6587\4EF6\5E93\5DF2\88AB\5220\9664\FF0C\65E0\6CD5\8FDB\5165\67E5\770B'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335682700979478512)
,p_event_id=>wwv_flow_imp.id(3335682474065478510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3327117773735757313)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3327116299464757298)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5E93\533A\57DF - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>454512801860411035
);
wwv_flow_imp.component_end;
end;
/

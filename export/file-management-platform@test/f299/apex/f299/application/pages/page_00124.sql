prompt --application/pages/page_00124
begin
--   Manifest
--     PAGE: 00124
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
 p_id=>124
,p_name=>unistr('\6587\4EF6\7BA1\7406')
,p_alias=>unistr('\6587\4EF6\7BA1\7406')
,p_step_title=>unistr('\6587\4EF6\7BA1\7406')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function btnClick(name, objId, delFlag) {',
'    $s(''P124_FOLDER_ID'', objId);',
'    $s(''P124_DEL_FLAG'', delFlag);',
'    $(''#BTN_'' + name).click();',
'}',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$(''h1[class="t-Breadcrumb-label"]'').text($v(''P124_FOLDER_LIB_NAME'')+''(ID\FF1A''+$v(''P124_FOLDER_LIB_ID'')+'')'');'),
'',
unistr('// my_test \7F51\683C\9759\6001ID'),
'var gridView = apex.region("content").call("getViews").grid;',
'if($v(''P124_ROLE_CODE'') ==''VIEW_REPORT''){',
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
'',
'#release_div{',
'    text-align: center;',
'    margin-top: 10%;',
'}',
'',
'.is_modify_0  {',
'    display: none;',
'}',
'',
'.DELETE  {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3334742164594586910)
,p_plug_name=>unistr('\7B5B\9009\533A\57DF')
,p_region_name=>'sift'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3334987484427557635)
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
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3334988081595557654)
,p_plug_name=>unistr('\6587\4EF6\7BA1\7406')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>140
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.FOLDER_ID,',
'       A.FOLDER_LIB_ID,',
'       A.FOLDER_NAME || ''.'' || A.FOLDER_FORMAT                                                                                                      FOLDER_NAME,',
'       A.FOLDER_STATUS,',
unistr('       DECODE(A.FOLDER_STATUS, ''NORMAL'', ''\6B63\5E38'', ''DELETE'', ''\5DF2\5220\9664\FF08'' || TO_CHAR(90 - trunc(SYSDATE - DEL_DATE)) || ''\5929\FF09'','),
'              NULL)                                                                                                                                 STATUS,',
'       A.REMARK,',
'       A.SCOPE_TYPE,',
'       A.UPLOAD_DATE,',
unistr('       DECODE(A.FOLDER_STATUS, ''DELETE'', ''\6062\590D'', ''NORMAL'', ''\5220\9664'', NULL)                                                                                OPERATE,'),
'       A.FOLDER_URL,',
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
'                       from STS_SCOPE B',
'                       where B.REFERENCE_TYPE = ''FOLDER''',
'                         and B.PERMISSIONS_TYPE = ''MANAGE''',
'                         AND A.FOLDER_ID = B.REFERENCE_ID) C',
'                          left join BASIC_JA_DING_DEPT_USER D',
'                                    on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
'                 where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))',
'       END IS_HIDE',
'',
'FROM STS_FOLDER A',
'WHERE FOLDER_LIB_ID = :P124_FOLDER_LIB_ID',
'  AND A.TENANT_ID = :USER_TENANT',
'  AND EXISTS (SELECT 1',
'              FROM STS_FOLDER_LIB L',
'              WHERE L.FOLDER_LIB_ID = :P124_FOLDER_LIB_ID',
'                AND L.TENANT_ID = :USER_TENANT',
'                AND TO_CHAR(NVL(L.SYSTEM_ID, 1)) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1''))',
'  AND A.DEL_FLAG <> 1',
'  AND (A.FOLDER_STATUS = :P124_FOLDER_STATUS OR :P124_FOLDER_STATUS = ''ALL'')',
'  AND (A.FOLDER_NAME LIKE ''%'' || :P124_FOLDER_NAME || ''%'' OR NVL(:P124_FOLDER_NAME, ''ALL'') = ''ALL'')',
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
'                    where REFERENCE_TYPE = ''FOLDER''',
'                      AND A.FOLDER_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)));'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P124_FOLDER_LIB_ID,P124_FOLDER_STATUS,P124_FOLDER_NAME'
,p_prn_page_header=>unistr('\6587\4EF6\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334740326412586892)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334740383593586893)
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
 p_id=>wwv_flow_imp.id(3334989380852557666)
,p_name=>'FOLDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334990409876557667)
,p_name=>'FOLDER_LIB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_LIB_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334991446933557670)
,p_name=>'FOLDER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6587\4EF6\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"   onclick="btnClick(''NAME'',''&FOLDER_ID.'',''&DEL_FLAG.'')" style="text-dcoration:none;">',
    '		&FOLDER_NAME.',
    '	</a>',
    '</span>')))).to_clob
,p_link_target=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126:P126_FOLDER_ID:&FOLDER_ID.'
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3334992401923557670)
,p_name=>'FOLDER_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_STATUS'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334993452412557671)
,p_name=>'STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334994379157557671)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334995439345557672)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334996390383557673)
,p_name=>'UPLOAD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPLOAD_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\4E0A\4F20\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3334997427638557673)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''&FOLDER_STATUS.'',''&FOLDER_ID.'')" style="text-dcoration:none;">',
    '		&OPERATE.',
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.  &FOLDER_STATUS.'' onclick="btnClick(''SETTINGS'',''&FOLDER_ID.'')" style="text-dcoration:none;">',
    unistr('		\6587\4EF6\8BBE\7F6E'),
    '	</a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3335639461395409327)
,p_name=>'FOLDER_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FOLDER_URL'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3335683150482478516)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3335683518981478520)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3334988658885557654)
,p_internal_uid=>462383687010211376
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
 p_id=>wwv_flow_imp.id(3334989069193557655)
,p_interactive_grid_id=>wwv_flow_imp.id(3334988658885557654)
,p_static_id=>'4623841'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3334989213535557655)
,p_report_id=>wwv_flow_imp.id(3334989069193557655)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334989815254557667)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3334989380852557666)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334990821542557670)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3334990409876557667)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334991871512557670)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3334991446933557670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334992809998557671)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3334992401923557670)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334993775700557671)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3334993452412557671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334994791806557672)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3334994379157557671)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334995799352557672)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3334995439345557672)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334996787765557673)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3334996390383557673)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334997848467557676)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3334997427638557673)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3335001374099586019)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3334740326412586892)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3335674853351168116)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3335639461395409327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3336142541307476571)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3335683150482478516)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3336160091842957342)
,p_view_id=>wwv_flow_imp.id(3334989213535557655)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3335683518981478520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334740888526586898)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3334742164594586910)
,p_button_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20\6587\4EF6')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:125:&SESSION.::&DEBUG.:125:P125_FOLDER_LIB_ID:&P124_FOLDER_LIB_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'BEGIN',
'    IF :P124_ROLE_CODE IN (''SYSTEM_ADMIN'', ''SUPER_ADMIN'') THEN',
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
'        IF V_COUNT > 0 THEN',
'            RETURN TRUE;',
'        END IF;',
'    END IF;',
'',
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM STS_SCOPE A',
'    WHERE A.REFERENCE_TYPE = ''FOLDER_LIB''',
'      AND A.REFERENCE_ID = :P124_FOLDER_LIB_ID',
'      AND A.PERMISSIONS_TYPE = ''MANAGE''',
'      AND ((A.RANGE_TYPE = ''USER'' AND A.RANGE_ID = :DIAN_USER_ID)',
'        OR (A.RANGE_TYPE = ''DEPT'' AND EXISTS(',
'               SELECT 1',
'               FROM BASIC_JA_DING_DEPT_USER B',
'               WHERE TO_CHAR(B.DEPT_ID) = A.RANGE_ID',
'                 AND B.USER_ID = :DIAN_USER_ID',
'           )));',
'',
'    RETURN V_COUNT > 0;',
'END;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334741105217586900)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3334742164594586910)
,p_button_name=>unistr('\6279\91CF\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P124_ROLE_CODE'
,p_button_condition2=>'SYSTEM_ADMIN:SUPER_ADMIN'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334741215572586901)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3334742164594586910)
,p_button_name=>unistr('\6279\91CF\6062\590D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\6062\590D')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P124_ROLE_CODE'
,p_button_condition2=>'SYSTEM_ADMIN:SUPER_ADMIN'
,p_button_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334741424102586903)
,p_button_sequence=>150
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'BTN_NORMAL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334741563449586904)
,p_button_sequence=>160
,p_button_name=>unistr('\6062\590D')
,p_button_static_id=>'BTN_DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6062\590D')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3334741600724586905)
,p_button_sequence=>170
,p_button_name=>unistr('\8BBE\7F6E\6587\4EF6')
,p_button_static_id=>'BTN_SETTINGS'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\8BBE\7F6E\6587\4EF6')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3335683605765478521)
,p_button_sequence=>180
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'BTN_NAME'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3335679893266478484)
,p_branch_action=>'f?p=&APP_ID.:127:&SESSION.::&DEBUG.:127:P127_FOLDER_ID:&P124_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3334741600724586905)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3335683386824478519)
,p_branch_action=>'f?p=&APP_ID.:126:&SESSION.::&DEBUG.:126:P126_FOLDER_ID:&P124_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P124_DEL_FLAG'
,p_branch_condition_text=>'0'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3022909512636783926)
,p_name=>'P124_ROW_COUNT'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3334740737463586896)
,p_name=>'P124_FOLDER_LIB_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3334740858565586897)
,p_name=>'P124_FOLDER_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3334742164594586910)
,p_item_default=>'ALL'
,p_prompt=>unistr('\72B6\6001')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\5168\90E8;ALL,\6B63\5E38;NORMAL,\5DF2\5220\9664;DELETE')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(3334741070213586899)
,p_name=>'P124_FOLDER_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3334742164594586910)
,p_prompt=>unistr('\6587\4EF6\540D\79F0')
,p_placeholder=>unistr('\8BF7\8F93\5165\6587\4EF6\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(3335636670425409299)
,p_name=>'P124_FOLDER_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335637759888409310)
,p_name=>'P124_FOLDER_IDS'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335680189988478487)
,p_name=>'P124_DEL_FLAG'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335684172443478527)
,p_name=>'P124_FOLDER_LIB_NAME'
,p_item_sequence=>110
,p_item_default=>'select FOLDER_LIB_NAME from STS_FOLDER_LIB where FOLDER_LIB_ID =:P124_FOLDER_LIB_ID'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3336167829524526580)
,p_name=>'P124_ROLE_CODE'
,p_item_sequence=>210
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3334741709859586906)
,p_name=>unistr('\72B6\6001')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_FOLDER_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3334741836896586907)
,p_event_id=>wwv_flow_imp.id(3334741709859586906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3334741910356586908)
,p_name=>unistr('\540D\79F0')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P124_FOLDER_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3334742006744586909)
,p_event_id=>wwv_flow_imp.id(3334741910356586908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335636463521409297)
,p_name=>unistr('\5237\65B0\7F51\683C')
,p_event_sequence=>30
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335636557800409298)
,p_event_id=>wwv_flow_imp.id(3335636463521409297)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335636764714409300)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3334741424102586903)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458267306598921)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\5220\9664\540E\6587\4EF6\5C06\7EE7\7EED\4FDD\5B5890\5929')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335636873280409302)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5220\9664\540E\6587\4EF6\5C06\7EE7\7EED\4FDD\5B5890\5929'');')
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335636813349409301)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''DELETE'',',
'        DEL_DATE = SYSDATE,',
'        DEL_FLAG = -1,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_ID = :P124_FOLDER_ID;',
'END;'))
,p_attribute_02=>'P124_FOLDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022909340650783924)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG          NVARCHAR2(2000);',
'    V_ROW_COUNT        NUMBER(10) := 0;',
'    V_FOLDER_LIB_COUNT NUMBER(10) := 0;',
'    V_FOLDER_LIB_NAME  NVARCHAR2(100);',
'    V_FOLDER_NAME      NVARCHAR2(100);',
'    V_RESULT           NVARCHAR2(4000);',
'    V_JSON             CLOB;',
'/**',
'* CREATE BY: LCB',
'* CREATE DATE:',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/25 11:51',
unistr('* DESCRIPTION: \6587\4EF6\7BA1\7406-\5220\9664\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
unistr('    --     \67E5\8BE2\5F53\524D\6587\4EF6\540D --BY:wxx 2025-04-25'),
'    SELECT FOLDER_NAME',
'    INTO V_FOLDER_NAME',
'    FROM STS_FOLDER',
'    WHERE FOLDER_ID = :P124_FOLDER_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
unistr('--     \67E5\8BE2\5F53\524D\6587\4EF6\5E93\540D --BY:wxx 2025-04-25'),
'    SELECT FOLDER_LIB_NAME',
'    INTO V_FOLDER_LIB_NAME',
'    FROM STS_FOLDER_LIB',
'    WHERE FOLDER_LIB_ID = :P124_FOLDER_LIB_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''DELETE'',',
'        DEL_DATE      = SYSDATE,',
'        DEL_FLAG      = -1,',
'        UPDATED_BY    =:MPF_USER_ID,',
'        UPDATE_DATE   =SYSDATE',
'    WHERE FOLDER_ID = :P124_FOLDER_ID;',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('    if V_ROW_COUNT > 0 then --\5220\9664\6210\529F\FF0C\5B58\5165\65E5\5FD7'),
unistr('    --\5199\5165\65E5\5FD7 --BY:wxx  2025-04-25'),
'        V_JSON := ''{',
'        "current_name": "'' || V_FOLDER_NAME || ''",',
'        "old_name": " '' || V_FOLDER_LIB_NAME || '' ",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'        V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                P_MODULE_CODE => ''FOLDER'',',
'                P_OPERATION_CODE => ''FILE'',',
'                P_BEHAVIOR_CODE => ''DELETE'',',
'                P_ENTITY_ID => :P124_FOLDER_ID,',
'                P_EXTRA_PARAMS => V_JSON,',
'                P_APP_ID => :APP_ID,',
'                P_TENANT_ID => :USER_TENANT,',
'                P_SYS_USER_ID =>:MPF_USER_ID',
'                    );',
'    end if;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P124_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P124_ROW_COUNT'', -1);',
'END ;',
''))
,p_attribute_02=>'P124_FOLDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022909585416783927)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P124_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637000771409303)
,p_event_id=>wwv_flow_imp.id(3335636764714409300)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335637080088409304)
,p_name=>unistr('\6062\590D')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3334741563449586904)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458370608598922)
,p_event_id=>wwv_flow_imp.id(3335637080088409304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\5C06\88AB\5220\9664\7684\6587\4EF6\6062\590D\81F3\539F\72B6\6001')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637200538409305)
,p_event_id=>wwv_flow_imp.id(3335637080088409304)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5C06\88AB\5220\9664\7684\6587\4EF6\6062\590D\81F3\539F\72B6\6001'');')
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637288907409306)
,p_event_id=>wwv_flow_imp.id(3335637080088409304)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_ID = :P124_FOLDER_ID;',
'END;'))
,p_attribute_02=>'P124_FOLDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337920019991122480)
,p_event_id=>wwv_flow_imp.id(3335637080088409304)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                   VARCHAR2(2000);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_CURRENT_FOLDER_NAME     VARCHAR2(45); --by:WXX   2025/04/25',
'    V_RESULT                    VARCHAR2(4000);',
'    V_JSON                      CLOB;',
'/**',
'* CREATE BY:',
'* CREATE DATE:',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/25 16:23',
unistr('* DESCRIPTION: \6587\4EF6\7BA1\7406-\6062\590D\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
unistr('-- \67E5\8BE2\6587\4EF6\540D by:WXX   2025/04/25 17:00'),
'        select FOLDER_NAME',
'        into V_CURRENT_FOLDER_NAME',
'        from STS_FOLDER',
'        where FOLDER_ID = :P124_FOLDER_ID',
unistr('        --   and DEL_FLAG = 0 --\6709\53EF\80FD\662F\5DF2\5220\9664\4EFB\52A1\6062\590D\FF0C\6CE8\91CA\8FD9\4E2A\6761\4EF6  --BY:wxx 2025-04-28'),
'          and TENANT_ID = :USER_TENANT;',
unistr('-- \6062\590D'),
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_ID = :P124_FOLDER_ID;',
'',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('            if V_ROW_COUNT > 0 then --\5B58\5165\65E5\5FD7'),
'V_JSON     := ''{',
'        "current_name": " '' || V_CURRENT_FOLDER_NAME  || '' ",',
'        "old_name": "'' || :P124_FOLDER_LIB_NAME || ''",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'                V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                        P_MODULE_CODE => ''FOLDER'',',
'                        P_OPERATION_CODE => ''FILE'',',
'                        P_BEHAVIOR_CODE => ''RECOVER'',',
'                        P_ENTITY_ID => :P124_FOLDER_ID,',
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
,p_attribute_02=>'P124_FOLDER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637382092409307)
,p_event_id=>wwv_flow_imp.id(3335637080088409304)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335637549544409308)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637595888409309)
,p_event_id=>wwv_flow_imp.id(3335637549544409308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P124_FOLDER_IDS'',''FOLDER_ID'');',
'utils.set(this.data, map);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335637840551409311)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3334741105217586900)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P124_FOLDER_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638129310409314)
,p_event_id=>wwv_flow_imp.id(3335637840551409311)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458439552598923)
,p_event_id=>wwv_flow_imp.id(3335637840551409311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\5220\9664\540E\6587\4EF6\5C06\7EE7\7EED\4FDD\5B5890\5929')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637943301409312)
,p_event_id=>wwv_flow_imp.id(3335637840551409311)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5220\9664\540E\6587\4EF6\5C06\7EE7\7EED\4FDD\5B5890\5929'');')
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335637988791409313)
,p_event_id=>wwv_flow_imp.id(3335637840551409311)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''DELETE'',',
'        DEL_DATE = SYSDATE,',
'        DEL_FLAG = -1 ,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_ID in (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P124_FOLDER_IDS,'',''))',
'    AND FOLDER_STATUS =''NORMAL'';',
'END;'))
,p_attribute_02=>'P124_FOLDER_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638190620409315)
,p_event_id=>wwv_flow_imp.id(3335637840551409311)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335638303401409316)
,p_name=>unistr('\6279\91CF\6062\590D')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3334741215572586901)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P124_FOLDER_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638863308409321)
,p_event_id=>wwv_flow_imp.id(3335638303401409316)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\6062\590D\7684\6570\636E\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458544399598924)
,p_event_id=>wwv_flow_imp.id(3335638303401409316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\5C06\88AB\5220\9664\7684\6587\4EF6\6062\590D\81F3\539F\72B6\6001')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638566520409318)
,p_event_id=>wwv_flow_imp.id(3335638303401409316)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('return confirm(''\5C06\88AB\5220\9664\7684\6587\4EF6\6062\590D\81F3\539F\72B6\6001'');')
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638649387409319)
,p_event_id=>wwv_flow_imp.id(3335638303401409316)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    UPDATE STS_FOLDER',
'    SET FOLDER_STATUS = ''NORMAL'',',
'        DEL_DATE = NULL,',
'        DEL_FLAG = 0,',
'        UPDATED_BY        =:MPF_USER_ID,',
'        UPDATE_DATE       =SYSDATE',
'    WHERE FOLDER_ID in (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P124_FOLDER_IDS,'',''))',
'    and FOLDER_STATUS =''DELETE'';',
'END;'))
,p_attribute_02=>'P124_FOLDER_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335638732546409320)
,p_event_id=>wwv_flow_imp.id(3335638303401409316)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335683716301478522)
,p_name=>unistr('\9884\89C8')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3335683605765478521)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335683807265478523)
,p_event_id=>wwv_flow_imp.id(3335683716301478522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P124_DEL_FLAG'')==-1){',
unistr('    alert(''\6587\4EF6\5DF2\88AB\5220\9664\FF0C\65E0\6CD5\8FDB\5165\67E5\770B'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335683956784478524)
,p_event_id=>wwv_flow_imp.id(3335683716301478522)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3334740492929586894)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3334988081595557654)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>462135521054240616
);
wwv_flow_imp.component_end;
end;
/

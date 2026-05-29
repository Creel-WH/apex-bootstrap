prompt --application/pages/page_00130
begin
--   Manifest
--     PAGE: 00130
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
 p_id=>130
,p_name=>unistr('\6587\4EF6\5E93')
,p_alias=>unistr('\6587\4EF6\5E931')
,p_step_title=>unistr('\6587\4EF6\5E93')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId) {',
'    $s(''P130_FILE_ID'', objId);',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// my_test \7F51\683C\9759\6001ID'),
'var gridView = apex.region("content").call("getViews").grid;',
'if($v(''P130_ROLE_CODE'') ==''VIEW_REPORT''){',
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
'.is_modify_0  {',
'    display: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3340951331882682455)
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
 p_id=>wwv_flow_imp.id(3340951904548682489)
,p_plug_name=>unistr('\6587\4EF6\5E93')
,p_region_name=>'content'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>70
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH FILE_QUANTITY AS (SELECT ROOT_FOLDER_ID, COUNT(FILE_ID) FILE_COUNT',
'                       FROM (',
'                                SELECT FILE_ID,',
'                                       ROOT_FOLDER_ID,',
'                                       PARENT_FOLDER_ID,',
'                                       FILE_NAME,',
'                                       FILE_TYPE',
'                                FROM STS_FILE',
'                                WHERE TENANT_ID = :USER_TENANT',
'                                  AND DEL_FLAG = 0',
'                                  AND TO_CHAR(NVL(SYSTEM_ID, 1)) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                                START WITH ROOT_FOLDER_ID IS NULL',
'                                CONNECT BY NOCYCLE PRIOR FILE_ID = PARENT_FOLDER_ID',
'                                       AND DEL_FLAG = 0',
'                            )',
'                       WHERE FILE_TYPE = ''FILE''',
'                       GROUP BY ROOT_FOLDER_ID)',
'SELECT A.FILE_ID,',
'       A.FILE_NAME,',
'       NVL((SELECT FILE_COUNT',
'        FROM FILE_QUANTITY B',
'        WHERE A.FILE_ID = B.ROOT_FOLDER_ID),0) FILE_COUNT,',
'       A.CREATION_DATE,',
'       '''' AS                                OPERATE,',
'       FILE_PATH,',
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
'                                                                             AND BD.USER_ID = :DIAN_USER_ID)))) THEN 1',
'           ELSE (select COUNT(1)',
'                 from (select RANGE_TYPE, RANGE_ID',
'                       from STS_SCOPE F',
'                       where F.REFERENCE_TYPE = ''FILE''',
'                         and F.PERMISSIONS_TYPE = ''MANAGE''',
'                         AND A.FILE_ID = F.REFERENCE_ID) C',
'                          left join BASIC_JA_DING_DEPT_USER D',
'                                    on TO_CHAR(D.DEPT_ID) = C.RANGE_ID AND C.RANGE_TYPE = ''DEPT''',
'                 where (c.RANGE_ID = :DIAN_USER_ID OR D.USER_ID = :DIAN_USER_ID))',
'       END IS_HIDE',
'FROM STS_FILE A',
'WHERE A.TENANT_ID = :USER_TENANT',
'  AND A.DEL_FLAG = 0',
'  AND TO_CHAR(NVL(A.SYSTEM_ID, 1)) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'  AND A.FILE_LEVEL = 1',
'  AND (A.FILE_NAME LIKE ''%'' || :P130_FILE_NAME || ''%'' OR NVL(:P130_FILE_NAME, ''ALL'') = ''ALL'')',
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
'       OR :ROLE_CODE = ''VIEW_REPORT'' OR',
'       A.SCOPE_TYPE = ''VIEW_DOWN'' OR A.SCOPE_TYPE = ''VIEW'' OR',
'       EXISTS(SELECT 1',
'              FROM (select RANGE_TYPE, RANGE_ID',
'                    from STS_SCOPE SE',
'                    where REFERENCE_TYPE = ''FILE''',
'                      AND A.FILE_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)))'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P130_FILE_NAME'
,p_prn_page_header=>unistr('\6587\4EF6\5E93')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3326085356116737582)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3326085431237737583)
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
 p_id=>wwv_flow_imp.id(3340953180852682519)
,p_name=>'FILE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_ID'
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
 p_id=>wwv_flow_imp.id(3340954195907682534)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:133:P133_ROOT_FOLDER_ID,P133_FILE_ID,P133_PARENT_FOLDER_ID,P133_FILE_PATH,P133_FILE_NAME:&FILE_ID.,&FILE_ID.,&FILE_ID.,&FILE_PATH.,&FILE_NAME.'
,p_link_text=>'&FILE_NAME.'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3340955185535682535)
,p_name=>'FILE_COUNT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_COUNT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\6587\4EF6\603B\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(3340957242611682541)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\521B\5EFA\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
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
 p_id=>wwv_flow_imp.id(3340958271710682542)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr(' \64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" class=''is_modify_&IS_HIDE.''  onclick="btnClick(''delete'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''rename'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\91CD\547D\540D'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''multilingual'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\591A\8BED\8A00'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''settings'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\6743\9650\8BBE\7F6E'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''pigeonhole'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\9ED8\8BA4\5F52\6863\8BBE\7F6E'),
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
 p_id=>wwv_flow_imp.id(3341435099027325696)
,p_name=>'FILE_PATH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_PATH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341773040013124308)
,p_name=>'IS_HIDE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_HIDE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3340952412770682490)
,p_internal_uid=>468347440895336212
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
 p_id=>wwv_flow_imp.id(3340952824286682507)
,p_interactive_grid_id=>wwv_flow_imp.id(3340952412770682490)
,p_static_id=>'4683479'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3340953015181682510)
,p_report_id=>wwv_flow_imp.id(3340952824286682507)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340953575540682530)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3340953180852682519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340954665671682535)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3340954195907682534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340955608215682535)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3340955185535682535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340957619884682541)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3340957242611682541)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340958585482682542)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3340958271710682542)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>250
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3340960420087817794)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3326085356116737582)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341492320414622400)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3341435099027325696)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3342328265079891806)
,p_view_id=>wwv_flow_imp.id(3340953015181682510)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3341773040013124308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3341436866671325713)
,p_plug_name=>unistr('\6309\94AE\53CA\72B6\6001')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326085806150737587)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3341436866671325713)
,p_button_name=>unistr('\56DE\6536\7AD9')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\56DE\6536\7AD9')
,p_button_alignment=>'RIGHT'
,p_button_condition=>'ROLE_CODE'
,p_button_condition2=>'VIEW_REPORT'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>8
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326085919854737588)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3341436866671325713)
,p_button_name=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\6587\4EF6\5E93')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:131:&SESSION.::&DEBUG.:131::'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'BEGIN',
'    IF :ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN'' THEN',
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
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(986908297694024818)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3341436866671325713)
,p_button_name=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6587\4EF6\8FC1\79FB')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326085997940737589)
,p_button_sequence=>100
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'btn_delete'
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
 p_id=>wwv_flow_imp.id(3326086077546737590)
,p_button_sequence=>110
,p_button_name=>unistr('\91CD\547D\540D')
,p_button_static_id=>'btn_rename'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\91CD\547D\540D')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326086184852737591)
,p_button_sequence=>120
,p_button_name=>unistr('\591A\8BED\8A00')
,p_button_static_id=>'btn_multilingual'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\591A\8BED\8A00')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326086333243737592)
,p_button_sequence=>130
,p_button_name=>unistr('\6743\9650\8BBE\7F6E')
,p_button_static_id=>'btn_settings'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326086417364737593)
,p_button_sequence=>140
,p_button_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_button_static_id=>'btn_pigeonhole'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3326089663258737625)
,p_branch_action=>'f?p=&APP_ID.:132:&SESSION.::&DEBUG.:132:P132_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3326086077546737590)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341720848923712327)
,p_branch_name=>unistr('\591A\8BED\8A00-\8F6C\5230\9875 145')
,p_branch_action=>'f?p=&APP_ID.:145:&SESSION.::&DEBUG.:145:P145_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3326086184852737591)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341720936835712328)
,p_branch_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 140')
,p_branch_action=>'f?p=&APP_ID.:140:&SESSION.::&DEBUG.:140:P140_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3326086417364737593)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341720682652712326)
,p_branch_name=>unistr('\56DE\6536\7AD9-\8F6C\5230\9875 149')
,p_branch_action=>'f?p=&APP_ID.:149:&SESSION.::&DEBUG.:149:P149_FILE_ID,P149_FILE_LEVEL:&P130_FILE_ID.,1&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3326085806150737587)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341436574452325711)
,p_branch_name=>unistr('\8F6C\5230\9875 138')
,p_branch_action=>'f?p=&APP_ID.:138:&SESSION.::&DEBUG.:138:P138_FILE_ID:&P130_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3326086333243737592)
,p_branch_sequence=>50
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(986908986400024825)
,p_branch_name=>unistr('\6587\4EF6\8FC1\79FB-\8F6C\5230\9875 154-\4F20\53C2\4F1A\5931\8D25')
,p_branch_action=>'f?p=&APP_ID.:154:&SESSION.::&DEBUG.:154:P154_FILE_IDS:&P130_FILE_IDS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(986908297694024818)
,p_branch_sequence=>60
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(986908704954024822)
,p_name=>'P130_PAGE'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326085695677737586)
,p_name=>'P130_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3341436866671325713)
,p_prompt=>unistr('\6587\4EF6\5E93')
,p_placeholder=>unistr('\8BF7\8F93\5165\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326088091585737610)
,p_name=>'P130_FILE_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341719325203712312)
,p_name=>'P130_ROW_COUNT'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341719423438712313)
,p_name=>'P130_FILE_IDS'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341770377047124282)
,p_name=>'P130_ROLE_CODE'
,p_item_sequence=>160
,p_use_cache_before_default=>'NO'
,p_item_default=>'ROLE_CODE'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342564741946068383)
,p_name=>'P130_FILE_LEVEL'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3326087901107737608)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326088032452737609)
,p_event_id=>wwv_flow_imp.id(3326087901107737608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341436874888325714)
,p_name=>unistr('\6587\4EF6\7C7B\578B')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P130_FILE_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341437031706325715)
,p_event_id=>wwv_flow_imp.id(3341436874888325714)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341437077614325716)
,p_name=>unistr('\6587\4EF6\540D\79F0')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P130_FILE_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341437364116325718)
,p_event_id=>wwv_flow_imp.id(3341437077614325716)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341718920229712308)
,p_name=>unistr('\5220\9664\9009\4E2D\6587\4EF6\5230\56DE\6536\7AD9')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3326085997940737589)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719042818712309)
,p_event_id=>wwv_flow_imp.id(3341718920229712308)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P130_FILE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
'        return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719128262712310)
,p_event_id=>wwv_flow_imp.id(3341718920229712308)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719210571712311)
,p_event_id=>wwv_flow_imp.id(3341718920229712308)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count   number(10) := 0;',
'    /**',
'     * create by: wxx',
'     * create date:2025/5/23 15:55',
'     * modify by:',
'     * modify date:',
unistr('     * describe:p130 \6587\4EF6\5E93-\5220\9664\6570\636E\81F3\56DE\6536\7AD9'),
'     */',
'begin',
'        update STS_FILE',
'        set DEL_FLAG     = -1,',
'            DEL_DATE = sysdate,',
'            UPDATED_BY  = :MPF_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where  FILE_ID = :P130_FILE_ID',
'        and TENANT_ID = :USER_TENANT',
'        and DEL_FLAG = 0;',
'   v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P130_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'  rollback;',
'        apex_util.set_session_state(''P130_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P130_FILE_ID'
,p_attribute_03=>'P130_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719524858712314)
,p_event_id=>wwv_flow_imp.id(3341718920229712308)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P130_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341719612597712315)
,p_event_id=>wwv_flow_imp.id(3341718920229712308)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(986908335726024819)
,p_name=>unistr('\6267\884C\8FC1\79FB')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(986908297694024818)
,p_condition_element=>'P130_FILE_IDS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986908468060024820)
,p_event_id=>wwv_flow_imp.id(986908335726024819)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\662F\5426\9009\4E2D\6587\4EF6')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\6570\636E'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986908604478024821)
,p_event_id=>wwv_flow_imp.id(986908335726024819)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P130_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'154'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986908745211024823)
,p_event_id=>wwv_flow_imp.id(986908335726024819)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DE8\9875\4F20\53C2')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P154_FILE_IDS'',:P130_FILE_IDS);',
'end;'))
,p_attribute_02=>'P130_FILE_IDS'
,p_attribute_03=>'P154_FILE_IDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986908895453024824)
,p_event_id=>wwv_flow_imp.id(986908335726024819)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\6279\91CF\6587\4EF6\8FC1\79FB')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:154:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(986909058723024826)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(986909206372024827)
,p_event_id=>wwv_flow_imp.id(986909058723024826)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P130_FILE_IDS'', ''FILE_ID'');',
'utils.set(this.data, map);'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3326085524904737584)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3340951904548682489)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5E93 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453480553029391306
);
wwv_flow_imp.component_end;
end;
/

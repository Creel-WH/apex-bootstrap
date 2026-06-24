prompt --application/pages/page_00149
begin
--   Manifest
--     PAGE: 00149
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>149
,p_name=>unistr('\56DE\6536\7AD9\FF08\56DE\6536\7AD9\6587\4EF6\5C06\572890\5929\540E\5F7B\5E95\5220\9664\FF09')
,p_alias=>unistr('\56DE\6536\7AD9-\56DE\6536\7AD9\6587\4EF6\5C06\572890\5929\540E\5F7B\5E95\5220\9664')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\56DE\6536\7AD9\FF08\56DE\6536\7AD9\6587\4EF6\5C06\572890\5929\540E\5F7B\5E95\5220\9664\FF09')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P133_FILE_PATH''))',
unistr('//\5220\9664\3001\7BA1\7406'),
'function btnClick(name, objId,fileType) {',
'    $s(''P133_FILE_ID'', objId);',
'    $s(''P133_FILE_TYPE'', fileType);',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4230731951475763413)
,p_plug_name=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>140
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select A.FILE_ID,',
'       A.ROOT_FOLDER_ID,',
'       A.PARENT_FOLDER_ID,',
'       A.FILE_NAME,',
'       nvl(A.FILE_PATH,''--'') FILE_PATH,',
'       A.PLANS_FILE_TYPE,',
'       CASE',
unistr('         WHEN nvl(A.DEL_DATE,A.UPDATE_DATE) IS NULL THEN ''\672A\8BBE\7F6E\5220\9664\65F6\95F4'''),
unistr('         WHEN nvl(A.DEL_DATE,A.UPDATE_DATE)  + 90 <= SYSDATE THEN ''\5DF2\5230\671F'''),
'         ELSE TO_CHAR(',
'                GREATEST(0,',
'                  FLOOR(',
'                    (nvl(A.DEL_DATE,A.UPDATE_DATE)  + 90 - SYSDATE)',
'                  )',
'                )',
unistr('              ) || ''\5929\540E\5220\9664'''),
'       END AS COUNTDOWN,',
'       '''' AS OPERATE',
'from STS_FILE A',
'left join STS_SCOPE B on B.REFERENCE_ID = A.FILE_ID and B.REFERENCE_TYPE = ''FILE''',
'and RANGE_TYPE = ''USER'' and B.RANGE_ID = :DIAN_USER_ID',
'where A.TENANT_ID = :USER_TENANT',
'  AND A.DEL_FLAG = -1',
'  AND (',
unistr('      :P149_ROOT_FOLDER_ID IS NULL  -- \67E5\5168\90E8'),
'      OR',
unistr('      A.ROOT_FOLDER_ID = :P149_ROOT_FOLDER_ID  -- \67E5\6307\5B9A\6587\4EF6\5E93'),
'  )',
unistr('   AND (:P149_FILE_LEVEL IS NULL OR A.FILE_LEVEL = :P149_FILE_LEVEL)  -- \65B0\589E\6761\4EF6,\4F7F\6587\4EF6\5E93\56DE\6536\7AD9\53EA\80FD\770B\5230\88AB\5220\9664\7684\6587\4EF6\5E93'),
unistr('   AND (            --BY:wxx 2025-07-04  \65B0\589E\6761\4EF6\FF0C\4F7F\6587\4EF6\5E93\56DE\6536\7AD9\5B9E\73B0\6309\6743\9650\5C55\793A'),
'       :ROLE_CODE = ''SYSTEM_ADMIN'' OR :ROLE_CODE = ''SUPER_ADMIN'' OR',
'       EXISTS (SELECT 1',
'               FROM STS_SCOPE SB',
'               WHERE SB.REFERENCE_TYPE = ''SYSTEM''',
'                 AND TO_CHAR(SB.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                 AND SB.PERMISSIONS_TYPE = ''MANAGE''',
'                 AND ((SB.RANGE_TYPE = ''USER'' AND SB.RANGE_ID = :DIAN_USER_ID)',
'                   OR (SB.RANGE_TYPE = ''DEPT'' AND EXISTS (SELECT 1',
'                                                              FROM BASIC_JA_DING_DEPT_USER BD',
'                                                              WHERE TO_CHAR(BD.DEPT_ID) = SB.RANGE_ID',
'                                                                AND BD.USER_ID = :DIAN_USER_ID)))) OR',
'       EXISTS(SELECT 1',
'              FROM (select SE.RANGE_TYPE, SE.RANGE_ID',
'                    from STS_SCOPE SE',
'                    where SE.REFERENCE_TYPE = ''FILE''',
'                      and SE.PERMISSIONS_TYPE  = ''MANAGE''',
'                      AND A.FILE_ID = SE.REFERENCE_ID) E',
'                       left join BASIC_JA_DING_DEPT_USER F',
'                                 on TO_CHAR(F.DEPT_ID) = E.RANGE_ID AND E.RANGE_TYPE = ''DEPT''',
'              where (E.RANGE_ID = :DIAN_USER_ID OR F.USER_ID = :DIAN_USER_ID)));'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P149_ROOT_FOLDER_ID,P149_FILE_LEVEL'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6587\4EF6\5939\8BE6\7EC6')
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
 p_id=>wwv_flow_imp.id(3308260485469290034)
,p_name=>'COUNTDOWN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'COUNTDOWN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5F7B\5E95\5220\9664\5012\8BA1\65F6')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>52
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
 p_id=>wwv_flow_imp.id(3309108555996646132)
,p_name=>'FILE_PATH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_PATH'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5730\5740')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
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
 p_id=>wwv_flow_imp.id(4245860773361592178)
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
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4245860892245592179)
,p_name=>'ROOT_FOLDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOT_FOLDER_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4245860994514592180)
,p_name=>'PARENT_FOLDER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PARENT_FOLDER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(4245861102916592181)
,p_name=>'FILE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#"  onclick="btnClick(''preview'',''&FILE_ID.'',''&FILE_TYPE.'')" style="text-dcoration:none;">',
    '		&FILE_NAME.',
    '	</a>',
    '</span>')))).to_clob
,p_link_target=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&FILE_ID.'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4245861492069592185)
,p_name=>'PLANS_FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANS_FILE_TYPE'
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
 p_id=>wwv_flow_imp.id(4245862033723592191)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4245862147246592192)
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
 p_id=>wwv_flow_imp.id(4245862855938592199)
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
    '	<a href="#" onclick="btnClick(''restore'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\6062\590D'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_required_patch=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4245860643963592177)
,p_internal_uid=>1406712019323668152
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
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4245890607287656289)
,p_interactive_grid_id=>wwv_flow_imp.id(4245860643963592177)
,p_static_id=>'4686437'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4245890818036656291)
,p_report_id=>wwv_flow_imp.id(4245890607287656289)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3308297955077559673)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3308260485469290034)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3309239662611717253)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3309108555996646132)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>335
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3777249193129400035)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4245862033723592191)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245891346357656310)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4245860773361592178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245892299404656316)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4245860892245592179)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245893163589656318)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4245860994514592180)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245894028740656321)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4245861102916592181)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245897629839656330)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4245861492069592185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4245923646695899976)
,p_view_id=>wwv_flow_imp.id(4245890818036656291)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4245862855938592199)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3308223460324673958)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(4230731951475763413)
,p_button_name=>unistr('\6062\590D')
,p_button_static_id=>'btn_restore'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6062\590D')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3308224689454673958)
,p_button_sequence=>190
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3308242279588674005)
,p_branch_action=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&P149_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>40
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P149_PAGE'
,p_branch_condition_text=>'137'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3308260961458290039)
,p_name=>'P149_ROW_COUNT'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3308401959533412872)
,p_name=>'P149_ERROR_MSG'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3308402272853412875)
,p_name=>'P149_USER_CONFIRMED'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3309107936611646126)
,p_name=>'P149_CONFIRM_MSG'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3309108120548646127)
,p_name=>'P149_NEED_CONFIRM'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245884022621592241)
,p_name=>'P149_ROOT_FOLDER_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245884106856592242)
,p_name=>'P149_PARENT_FOLDER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4245885170981592253)
,p_name=>'P149_FILE_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4246101490057351555)
,p_name=>'P149_FILE_PATH'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4246101984655351560)
,p_name=>'P149_FILE_LEVEL'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4246102551394351566)
,p_name=>'P149_FILE_TYPE'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4246103143500351572)
,p_name=>'P149_PAGE'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308235989139674000)
,p_name=>unistr('\6587\4EF6\5939\8BE6\7EC6\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_PARENT_FOLDER_ID'
,p_condition_element=>'P149_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308236519065674001)
,p_event_id=>wwv_flow_imp.id(3308235989139674000)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4230731951475763413)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308236982393674001)
,p_event_id=>wwv_flow_imp.id(3308235989139674000)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_FILE_PATH,P149_FILE_LEVEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILE_PATH,FILE_LEVEL',
'FROM STS_FILE',
'WHERE FILE_ID =:P149_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P149_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308237435812674001)
,p_event_id=>wwv_flow_imp.id(3308235989139674000)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P149_FILE_PATH''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308239763368674002)
,p_name=>unistr('\5237\65B0\62A5\8868\548C\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308240225952674002)
,p_event_id=>wwv_flow_imp.id(3308239763368674002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4230731951475763413)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308237838017674001)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3308224689454673958)
,p_condition_element=>'P149_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308238329595674001)
,p_event_id=>wwv_flow_imp.id(3308237838017674001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_PARENT_FOLDER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P149_FILE_ID FROM DUAL;'
,p_attribute_07=>'P149_FILE_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308239333148674002)
,p_event_id=>wwv_flow_imp.id(3308237838017674001)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P149_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'137'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308238921723674002)
,p_event_id=>wwv_flow_imp.id(3308237838017674001)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308240704492674002)
,p_name=>unistr('\6821\9A8C\5C42\7EA7')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P149_FILE_LEVEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308260570097290035)
,p_name=>unistr('\6062\590D\6587\4EF6')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3308223460324673958)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308260663024290036)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P149_FILE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\6062\590D\7684\6570\636E'');'),
'    return false;',
'} else {',
'        return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308260747435290037)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\786E\8BA41')
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\6062\590D\9009\4E2D\7684\6570\636E\5417\FF1F')
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308260906650290038)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6062\590D\56DE\6536\7AD9\6570\636E 2')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count   number(10) := 0;',
'    /**',
'     * create by: wxx',
'     * create date:2025/5/23 14:16',
'     * modify by: wxx',
'     * modify date:2025/5/26 10:50',
unistr('     * describe:p149 \6062\590D\56DE\6536\7AD9\6570\636E'),
'     */',
'begin',
'        update STS_FILE',
'        set DEL_FLAG     = 0,',
'            UPDATED_BY  = :MPF_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where FILE_ID IN  (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'',''))',
'        and TENANT_ID = :USER_TENANT',
'        and DEL_FLAG = -1;',
'   v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P149_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'  rollback;',
'        apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end',
'-- declare',
'--     v_err_msg nvarchar2(2000);',
'--     v_row_count   number(10) := 0;',
'--     /**',
'--      * create by: wxx',
'--      * create date:2025/5/23 14:16',
'--      * modify by:',
'--      * modify date:',
unistr('--      * describe:p149 \6062\590D\56DE\6536\7AD9\6570\636E'),
'--      */',
'-- begin',
'--         update STS_FILE',
'--         set DEL_FLAG     = 0,',
'--             UPDATED_BY  = :MPF_USER_ID,',
'--             UPDATE_DATE = sysdate',
'--         where FILE_ID = :P149_FILE_ID;',
'--    v_row_count := SQL%ROWCOUNT;',
'--     commit;',
'--     apex_util.set_session_state(''P149_ROW_COUNT'', v_row_count);',
'',
'-- exception',
'--     when others then',
'--   rollback;',
'--         apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'--         v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'--         JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'--                     :APP_NAME , :APP_ID, :APP_CODE);',
'-- end;',
';'))
,p_attribute_02=>'P149_FILE_ID'
,p_attribute_03=>'P149_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308261053208290040)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D0\793A 2')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P149_ROW_COUNT'') > 0) {',
unistr('    alert(''\6062\590D\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\6062\590D\5931\8D25\FF01'');'),
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308401759389412870)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6062\590D\56DE\6536\7AD9\6570\636E 3-\4F1A\9677\5165\5148\6709\9E21\8FD8\662F\5148\6709\86CB\95EE\9898 \9677\5165\6B7B\5FAA\73AF')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count   number(10) := 0;',
'    v_parent_id varchar2(100);',
'    v_current_id varchar2(100);',
'    v_del_flag number;',
'    v_unrecovered_parents clob := '''';',
'    v_parent_name varchar2(255);',
'    v_has_unrecovered_parent boolean := false;',
'',
unistr('    -- \9012\5F52\67E5\627E\672A\6062\590D\7684\7236\6587\4EF6\5939'),
'    procedure check_parent(p_file_id in varchar2) is',
'        v_parent varchar2(100);',
'        v_parent_del_flag number;',
'        v_parent_file_name varchar2(255);',
'    begin',
unistr('        -- \83B7\53D6\5F53\524D\6587\4EF6\7684\7236\6587\4EF6\5939ID\548C\5220\9664\72B6\6001'),
'        select PARENT_FOLDER_ID, DEL_FLAG, FILE_NAME',
'        into v_parent, v_parent_del_flag, v_parent_file_name',
'        from STS_FILE',
'        where FILE_ID = p_file_id',
'        and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- \5982\679C\7236\6587\4EF6\5939\5B58\5728\4E14\88AB\5220\9664'),
'        if v_parent is not null and v_parent_del_flag <> 0 then',
'            v_has_unrecovered_parent := true;',
'            v_unrecovered_parents := v_unrecovered_parents || v_parent_file_name || ''('' || v_parent || ''), '';',
'',
unistr('            -- \9012\5F52\68C0\67E5\4E0A\4E00\7EA7\7236\6587\4EF6\5939'),
'            check_parent(v_parent);',
'        end if;',
'    exception',
'        when no_data_found then',
unistr('            null; -- \6CA1\6709\7236\6587\4EF6\5939\FF0C\7ED3\675F\9012\5F52'),
'    end check_parent;',
'',
'begin',
unistr('    -- \5148\68C0\67E5\6240\6709\5F85\6062\590D\6587\4EF6\7684\7236\6587\4EF6\5939\72B6\6001'),
'    for rec in (',
'        select DATA_VAL as file_id',
'        from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'','')',
'    ) loop',
'        check_parent(rec.file_id);',
'    end loop;',
'',
unistr('    -- \5982\679C\5B58\5728\672A\6062\590D\7684\7236\6587\4EF6\5939\FF0C\8FD4\56DE\9519\8BEF\4FE1\606F'),
'    if v_has_unrecovered_parent then',
unistr('        -- \53BB\9664\672B\5C3E\7684\9017\53F7\548C\7A7A\683C'),
'        v_unrecovered_parents := rtrim(v_unrecovered_parents, '', '');',
'',
unistr('        -- \8BBE\7F6E\9519\8BEF\4FE1\606F\5230\9875\9762\9879'),
'        apex_util.set_session_state(''P149_ERROR_MSG'',',
unistr('            ''\65E0\6CD5\6062\590D\9009\4E2D\7684\6587\4EF6\FF0C\8BF7\5148\6062\590D\4EE5\4E0B\7236\6587\4EF6\5939: '' || v_unrecovered_parents);'),
'        apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'        return;',
'    end if;',
'',
unistr('    -- \6240\6709\7236\6587\4EF6\5939\90FD\5DF2\6062\590D\FF0C\6267\884C\6062\590D\64CD\4F5C'),
'    update STS_FILE',
'    set DEL_FLAG     = 0,',
'        UPDATED_BY  = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where FILE_ID IN (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'',''))',
'    and TENANT_ID = :USER_TENANT',
'    and DEL_FLAG = -1;',
'',
'    v_row_count := SQL%ROWCOUNT;',
'    commit;',
'',
unistr('    -- \6E05\9664\53EF\80FD\7684\65E7\9519\8BEF\4FE1\606F'),
'    apex_util.set_session_state(''P149_ERROR_MSG'', '''');',
'    apex_util.set_session_state(''P149_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG,',
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
unistr('        apex_util.set_session_state(''P149_ERROR_MSG'', ''\7CFB\7EDF\9519\8BEF: '' || substr(v_err_msg, 1, 200));'),
'end;'))
,p_attribute_02=>'P149_FILE_ID'
,p_attribute_03=>'P149_ROW_COUNT,P149_ERROR_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308401908815412871)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D0\793A 3')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5728\63D0\4EA4\540E\6267\884C\7684\4EE3\7801\4E2D'),
'if ($v(''P149_ERROR_MSG'')) {',
'    alert($v(''P149_ERROR_MSG''));',
'    return false;',
'} else if ($v(''P149_ROW_COUNT'') > 0) {',
unistr('    alert(''\6210\529F\6062\590D\4E86 '' + $v(''P149_ROW_COUNT'') + '' \4E2A\6587\4EF6'');'),
unistr('    // \53EF\4EE5\6DFB\52A0\5237\65B0\6570\636E\7B49\64CD\4F5C'),
'}',
'',
'// if ($v(''P149_ROW_COUNT'') > 0) {',
unistr('//     alert(''\6062\590D\6210\529F\FF01'');'),
'//     return true;',
'',
'// } else {',
unistr('//     alert(''\6062\590D\5931\8D25\FF01'');'),
'//     return false;',
'// }'))
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308402071740412873)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6062\590D\56DE\6536\7AD9\6570\636E4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('-- \5B9A\4E49\5D4C\5957\8868\7C7B\578B'),
'type t_file_ids is table of varchar2(100);',
'',
'v_err_msg nvarchar2(2000);',
'v_row_count number(10) := 0;',
'v_unrecovered_parents clob := '''';',
'v_has_unrecovered_parent boolean := false;',
unistr('v_selected_file_ids t_file_ids := t_file_ids(); -- \5B58\50A8\7528\6237\6700\521D\9009\62E9\7684\6587\4EF6ID'),
'',
unistr('-- \521B\5EFA\5168\5C40\4E34\65F6\8868\5B58\50A8\9700\8981\6062\590D\7684\6587\4EF6ID'),
'procedure init_temp_table is',
'begin',
'execute immediate ''TRUNCATE TABLE TMP_RESTORE_FILE_IDS'';',
'exception',
'when others then',
'execute immediate ''CREATE GLOBAL TEMPORARY TABLE TMP_RESTORE_FILE_IDS (',
'FILE_ID VARCHAR2(100) PRIMARY KEY',
') ON COMMIT PRESERVE ROWS'';',
'end init_temp_table;',
'',
unistr('-- \9012\5F52\67E5\627E\6240\6709\9700\8981\6062\590D\7684\7236\6587\4EF6\5939'),
'procedure find_all_parents(p_file_id in varchar2) is',
'v_parent varchar2(100);',
'v_parent_del_flag number;',
'v_parent_file_name varchar2(255);',
'begin',
unistr('-- \83B7\53D6\5F53\524D\6587\4EF6\7684\7236\6587\4EF6\5939ID\548C\5220\9664\72B6\6001'),
'begin',
'select PARENT_FOLDER_ID, DEL_FLAG, FILE_NAME',
'into v_parent, v_parent_del_flag, v_parent_file_name',
'from STS_FILE',
'where FILE_ID = p_file_id',
'and TENANT_ID = :USER_TENANT;',
'',
unistr('-- \5982\679C\7236\6587\4EF6\5939\5B58\5728\4E14\88AB\5220\9664\FF0C\5E76\4E14\4E0D\662F\7528\6237\6700\521D\9009\62E9\7684\6587\4EF6'),
'if v_parent is not null and v_parent_del_flag <> 0 and ',
'not (v_parent member of v_selected_file_ids) then',
unistr('-- \6DFB\52A0\5230\672A\6062\590D\5217\8868\FF08\4EC5\7528\4E8E\63D0\793A\FF09'),
'v_unrecovered_parents := v_unrecovered_parents || v_parent_file_name || ''('' || v_parent || ''), '';',
'v_has_unrecovered_parent := true;',
'',
unistr('-- \6DFB\52A0\5230\4E34\65F6\8868\FF08\907F\514D\91CD\590D\FF09'),
'begin',
'insert into TMP_RESTORE_FILE_IDS values (v_parent);',
'exception',
'when dup_val_on_index then',
unistr('null; -- \5DF2\5B58\5728\FF0C\8DF3\8FC7'),
'end;',
'',
unistr('-- \9012\5F52\68C0\67E5\4E0A\4E00\7EA7\7236\6587\4EF6\5939'),
'find_all_parents(v_parent);',
'end if;',
'exception',
'when no_data_found then',
unistr('null; -- \6CA1\6709\7236\6587\4EF6\5939\FF0C\7ED3\675F\9012\5F52'),
'end;',
'end find_all_parents;',
'',
'begin',
unistr('-- \521D\59CB\5316\4E34\65F6\8868'),
'init_temp_table;',
'',
unistr('-- \5148\5B58\50A8\7528\6237\6700\521D\9009\62E9\7684\6587\4EF6ID'),
'select DATA_VAL bulk collect into v_selected_file_ids',
'from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'','');',
'',
unistr('-- \63D2\5165\7528\6237\9009\62E9\7684\6587\4EF6ID\5230\4E34\65F6\8868'),
'forall i in 1..v_selected_file_ids.count',
'insert into TMP_RESTORE_FILE_IDS values (v_selected_file_ids(i));',
'',
unistr('-- \68C0\67E5\6240\6709\5F85\6062\590D\6587\4EF6\7684\7236\6587\4EF6\5939\72B6\6001'),
'for rec in (select FILE_ID from TMP_RESTORE_FILE_IDS) loop',
'find_all_parents(rec.FILE_ID);',
'end loop;',
'',
unistr('-- \5982\679C\5B58\5728\672A\6062\590D\7684\7236\6587\4EF6\5939\FF0C\8BE2\95EE\7528\6237\662F\5426\8981\4E00\8D77\6062\590D'),
'if v_has_unrecovered_parent then',
unistr('-- \53BB\9664\672B\5C3E\7684\9017\53F7\548C\7A7A\683C'),
'v_unrecovered_parents := rtrim(v_unrecovered_parents, '', '');',
'',
unistr('-- \8BBE\7F6E\786E\8BA4\4FE1\606F\5230\9875\9762\9879'),
'apex_util.set_session_state(''P149_CONFIRM_MSG'', ',
unistr('''\9009\4E2D\7684\6587\4EF6/\6587\4EF6\5939\6709\4EE5\4E0B\672A\6062\590D\7684\7236\6587\4EF6\5939: '' || v_unrecovered_parents || '),
unistr('''\3002\8BF7\5148\6062\590D\8FD9\4E9B\7236\6587\4EF6\5939\FF01'');'),
'apex_util.set_session_state(''P149_NEED_CONFIRM'', ''Y'');',
'apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'return;',
'end if;',
'',
unistr('-- \5982\679C\6CA1\6709\9700\8981\786E\8BA4\7684\7236\6587\4EF6\5939\FF0C\6216\8005\7528\6237\5DF2\786E\8BA4\FF0C\6267\884C\6062\590D\64CD\4F5C'),
'if :P149_USER_CONFIRMED = ''Y'' or not v_has_unrecovered_parent then',
'update STS_FILE',
'set DEL_FLAG = 0,',
'UPDATED_BY = :MPF_USER_ID,',
'UPDATE_DATE = sysdate',
'where FILE_ID IN (select FILE_ID from TMP_RESTORE_FILE_IDS)',
'and TENANT_ID = :USER_TENANT',
'and DEL_FLAG = -1;',
'',
'v_row_count := SQL%ROWCOUNT;',
'commit;',
'',
unistr('-- \6E05\9664\72B6\6001'),
'apex_util.set_session_state(''P149_CONFIRM_MSG'', '''');',
'apex_util.set_session_state(''P149_NEED_CONFIRM'', '''');',
'apex_util.set_session_state(''P149_USER_CONFIRMED'', '''');',
'apex_util.set_session_state(''P149_ROW_COUNT'', v_row_count);',
'end if;',
'',
'exception',
'when others then',
'rollback;',
'apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG,',
':MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
unistr('apex_util.set_session_state(''P149_ERROR_MSG'', ''\7CFB\7EDF\9519\8BEF: '' || substr(v_err_msg, 1, 200));'),
'end;'))
,p_attribute_02=>'P149_FILE_ID'
,p_attribute_03=>'P149_ROW_COUNT,P149_ERROR_MSG,P149_NEED_CONFIRM,P149_CONFIRM_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308402153909412874)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D0\793A 4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5728\63D0\4EA4\6309\94AE\7684JavaScript\4EE3\7801\4E2D'),
'if ($v(''P149_NEED_CONFIRM'') === ''Y'') {',
'    if (confirm($v(''P149_CONFIRM_MSG''))) {',
'        apex.submit({',
'            request: ''CONFIRM_RESTORE'',',
'            set: {',
'                ''P149_USER_CONFIRMED'': ''Y''',
'            },',
'            showWait: true',
'        });',
'    }',
'    return false;',
'}',
'',
unistr('// \5904\7406\6210\529F\6062\590D\7684\60C5\51B5'),
'if ($v(''P149_ROW_COUNT'') > 0) {',
unistr('    alert(''\6210\529F\6062\590D\4E86 '' + $v(''P149_ROW_COUNT'') + '' \4E2A\6587\4EF6/\6587\4EF6\5939'');'),
unistr('    // \5237\65B0\6570\636E\7B49\64CD\4F5C'),
'}'))
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3309108142531646128)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6062\590D\56DE\6536\7AD9\6570\636E5')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_row_count number(10) := 0;',
'    v_unrecovered_parents clob := '''';',
'    v_has_unrecovered_parent boolean := false;',
'',
unistr('    -- \9012\5F52\68C0\67E5\672A\6062\590D\7684\7236\6587\4EF6\5939'),
'    procedure check_parent(p_file_id in varchar2) is',
'        v_parent_id varchar2(100);',
'        v_parent_name varchar2(255);',
'        v_parent_del_flag number;',
'    begin',
unistr('        -- \83B7\53D6\7236\6587\4EF6\5939\4FE1\606F'),
'        begin',
unistr('--             \83B7\53D6\7236\6587\4EF6ID'),
'            select PARENT_FOLDER_ID',
'            into v_parent_id',
'            from STS_FILE',
'            where FILE_ID = p_file_id',
'            and TENANT_ID = :USER_TENANT;',
unistr('--            \83B7\53D6\7236\6587\4EF6\5176\4ED6\4FE1\606F'),
'             select  FILE_NAME, DEL_FLAG',
'            into v_parent_name, v_parent_del_flag',
'            from STS_FILE',
'            where FILE_ID = v_parent_id',
'            and TENANT_ID = :USER_TENANT;',
'',
unistr('            -- \5982\679C\7236\6587\4EF6\5939\5B58\5728\4E14\88AB\5220\9664'),
'            if v_parent_id is not null and v_parent_del_flag <> 0 then',
'                v_has_unrecovered_parent := true;',
'                v_unrecovered_parents := v_unrecovered_parents || v_parent_name || ''('' || v_parent_id || ''), '';',
'',
unistr('                -- \9012\5F52\68C0\67E5\4E0A\4E00\7EA7\7236\6587\4EF6\5939'),
'                check_parent(v_parent_id);',
'            end if;',
'        exception',
'            when no_data_found then',
unistr('                null; -- \6CA1\6709\7236\6587\4EF6\5939\FF0C\7ED3\675F\9012\5F52'),
'        end;',
'    end check_parent;',
'',
'begin',
unistr('    -- \5148\68C0\67E5\6240\6709\5F85\6062\590D\6587\4EF6\7684\7236\6587\4EF6\5939\72B6\6001'),
'    for rec in (',
'        select DATA_VAL as file_id',
'        from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'','')',
'    ) loop',
'        check_parent(rec.file_id);',
'    end loop;',
'',
unistr('    -- \5982\679C\5B58\5728\672A\6062\590D\7684\7236\6587\4EF6\5939\FF0C\8FD4\56DE\9519\8BEF\4FE1\606F'),
'    if v_has_unrecovered_parent then',
unistr('        -- \53BB\9664\672B\5C3E\7684\9017\53F7\548C\7A7A\683C'),
'        v_unrecovered_parents := rtrim(v_unrecovered_parents, '', '');',
'',
unistr('        -- \8BBE\7F6E\9519\8BEF\4FE1\606F\5230\9875\9762\9879'),
'        apex_util.set_session_state(''P149_ERROR_MSG'',',
unistr('            ''\65E0\6CD5\6062\590D\9009\4E2D\7684\6587\4EF6\FF0C\5176\7236\6587\4EF6\5DF2\88AB\5220\9664\FF0C\8BF7\5148\6062\590D\4EE5\4E0B\7236\6587\4EF6\5939: '' || v_unrecovered_parents);'),
'        apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'        return;',
'    end if;',
'',
unistr('    -- \6240\6709\7236\6587\4EF6\5939\90FD\5DF2\6062\590D\FF0C\6267\884C\6062\590D\64CD\4F5C'),
'    update STS_FILE',
'    set DEL_FLAG = 0,',
'        UPDATED_BY = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where FILE_ID IN (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P149_FILE_ID,'',''))',
'    and TENANT_ID = :USER_TENANT',
'    and DEL_FLAG = -1;',
'',
'    v_row_count := SQL%ROWCOUNT;',
'    commit;',
'',
unistr('    -- \6E05\9664\53EF\80FD\7684\65E7\9519\8BEF\4FE1\606F'),
'    apex_util.set_session_state(''P149_ERROR_MSG'', '''');',
'    apex_util.set_session_state(''P149_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P149_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG,',
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
unistr('        apex_util.set_session_state(''P149_ERROR_MSG'', ''\7CFB\7EDF\9519\8BEF: '' || substr(v_err_msg, 1, 200));'),
'end;'))
,p_attribute_02=>'P149_FILE_ID'
,p_attribute_03=>'P149_ROW_COUNT,P149_ERROR_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3309108272144646129)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D0\793A 5-\4F1A\9012\5F52\68C0\67E5\7236\7EA7\6587\4EF6\662F\5426\5B58\5728')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5728\63D0\4EA4\540E\6267\884C\7684\4EE3\7801\4E2D'),
'if ($v(''P149_ERROR_MSG'')) {',
'    alert($v(''P149_ERROR_MSG''));',
'    return false;',
'} else if ($v(''P149_ROW_COUNT'') > 0) {',
unistr('    alert(''\6210\529F\6062\590D\4E86 '' + $v(''P149_ROW_COUNT'') + '' \4E2A\6587\4EF6/\6587\4EF6\5939'');'),
unistr('    // \53EF\4EE5\6DFB\52A0\5237\65B0\6570\636E\7B49\64CD\4F5C'),
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308398501213412837)
,p_event_id=>wwv_flow_imp.id(3308260570097290035)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3308398322453412835)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4230731951475763413)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3308398406760412836)
,p_event_id=>wwv_flow_imp.id(3308398322453412835)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P149_FILE_ID'', ''FILE_ID'');',
'utils.set(this.data, map);',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P133_FILE_IDS''));')))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3308233368834673991)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4230731951475763413)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5939\8BE6\7EC6 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>469084744194749966
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00298
begin
--   Manifest
--     PAGE: 00298
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
 p_id=>298
,p_name=>unistr('\5173\8054\53D8\66F4\70B9')
,p_alias=>unistr('\5173\8054\53D8\66F4\70B9')
,p_step_title=>unistr('\5173\8054\53D8\66F4\70B9')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(295040031703985010)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function btn_update_operate(library_id) {',
'',
'    $s(''P298_LIBRARY_ID'', library_id);',
'    $(''#update_btn'').click();',
'',
'}',
'',
'function btn_detail_operate(library_id) {',
'',
'    $s(''P298_LIBRARY_ID'', library_id);',
'    $(''#detail_btn'').click();',
'',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295092967359037091)
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
 p_id=>wwv_flow_imp.id(295093691579037096)
,p_plug_name=>unistr('\5173\8054\53D8\66F4\70B9')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/**',
'     * CREATE BY: ZHH',
'     * CREATE DATE: 2024/8/15 15:05',
'     * MODIFY BY:WXX',
'     * MODIFY DATE:2024-12-30  15:55',
unistr('     * DESCRIBE:\4FEE\590D\4E86\5217\8868\5C55\793A\5173\8054\8BBE\5907\6570\91CF\548C\5B9E\9645\4E0D\4E00\81F4\7684\60C5\51B5'),
'*/',
'SELECT CCL.LIBRARY_ID,',
'       CCL.CONFIG_ID,',
'       CCC.NAME                                 CONFIG_NAME,',
'       CCL.DEPT_ID,',
'       MSDV.NAME                                DEPT_NAME,',
'       CCL.AREA_ID,',
'       FA.NAME                                  AREA_NAME,',
'       CCL.IS_ENABLE,',
unistr('       DECODE(CCL.IS_ENABLE, 0, ''\4E0D\542F\7528'', ''\542F\7528'')    ENABLE_FLG,'),
'       (SELECT COUNT(LD.LIBRARY_DEVICE_ID)',
'        FROM CHECK_CHANGE_LIBRARY_DEVICE LD',
'                 LEFT JOIN CHECK_CHANGE_LIBRARY CL ON LD.LIBRARY_ID = CL.LIBRARY_ID',
'                 LEFT JOIN CODE_DEVICE CD ON LD.DEVICE_CODE = CD.DEVICE_CODE',
'                 LEFT JOIN FND_AREAS FA ON CD.AREA_ID = FA.AREA_ID',
'                 LEFT JOIN FND_AREAS FA2 ON CD.LINE_ID = FA2.AREA_ID',
'        WHERE CD.TENANT_ID = :USERTENANT',
'          AND CD.BASE_DEPT_ID = :BASE_DEPT_ID',
'          AND CD.DEL_FLAG = 0',
'          AND FA.TENANT_ID = :USERTENANT',
'          AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'          AND FA.DEL_FLAG = 0',
'          AND FA.TYPE = 1',
'          AND FA2.TENANT_ID = :USERTENANT',
'          AND FA2.BASE_DEPT_ID = :BASE_DEPT_ID',
'          AND FA2.DEL_FLAG = 0',
'          AND FA2.TYPE = 2',
'          AND LD.TENANT_ID = :USERTENANT',
'          AND LD.BASE_DEPT_ID = :BASE_DEPT_ID',
'          AND LD.LIBRARY_ID = CCL.LIBRARY_ID',
'          AND LD.DEL_FLAG = 0) DEVIXE_NUM,',
'       CCL.REMARKS,',
'       CCL.CREATION_DATE,',
'       CCL.BASE_DEPT_ID,',
'       ''''                                       OPERATOR',
'FROM CHECK_CHANGE_LIBRARY CCL',
'         LEFT JOIN MPF_SHARE_DEPT_V MSDV ON CCL.DEPT_ID = MSDV.EXT_ORG_ID',
'         LEFT JOIN FND_AREAS FA ON CCL.AREA_ID = FA.AREA_ID',
'         LEFT JOIN CHECK_CHANGE_CONFIG CCC ON CCL.CONFIG_ID = CCC.CONFIG_ID',
'WHERE CCL.DEL_FLAG = 0',
'  AND CCL.TENANT_ID = :USERTENANT',
'  AND CCL.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND MSDV.TENANT_ID = :USERTENANT',
'  AND MSDV.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND MSDV.DEL_FLAG = 0',
'  AND FA.TENANT_ID = :USERTENANT',
'  AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND FA.TYPE =1',
'  AND FA.DEL_FLAG = 0',
'  AND (:P298_DEPT = -1 OR CCL.DEPT_ID = :P298_DEPT)',
'  AND (:P298_AREA = -1 OR CCL.AREA_ID = :P298_AREA)',
'',
'',
'-- /**',
'--      * CREATE BY: ZHH',
'--      * CREATE DATE: 2024/8/15 15:05',
'--      * MODIFY BY:',
'--      * MODIFY DATE:',
'--      * DESCRIBE:',
'--      */',
'-- SELECT CCL.LIBRARY_ID,',
'--        CCL.CONFIG_ID,',
'--        CCC.NAME                                 CONFIG_NAME,',
'--        CCL.DEPT_ID,',
'--        MSDV.NAME                                DEPT_NAME,',
'--        CCL.AREA_ID,',
'--        FA.NAME                                  AREA_NAME,',
'--        CCL.IS_ENABLE,',
unistr('--        DECODE(CCL.IS_ENABLE, 0, ''\4E0D\542F\7528'', ''\542F\7528'')    ENABLE_FLG,'),
'--        (SELECT COUNT(1)',
'--         FROM CHECK_CHANGE_LIBRARY_DEVICE CCLD',
'--         WHERE CCLD.LIBRARY_ID = CCL.LIBRARY_ID',
'--           AND CCLD.TENANT_ID = :USERTENANT',
'--           AND CCLD.BASE_DEPT_ID = :BASE_DEPT_ID',
'--           AND CCLD.DEL_FLAG = 0) DEVIXE_NUM,',
'--        CCL.REMARKS,',
'--        CCL.CREATION_DATE,',
'--        CCL.BASE_DEPT_ID,',
'--        ''''                                       OPERATOR',
'-- FROM CHECK_CHANGE_LIBRARY CCL',
'--          LEFT JOIN MPF_SHARE_DEPT_V MSDV ON CCL.DEPT_ID = MSDV.EXT_ORG_ID',
'--          LEFT JOIN FND_AREAS FA ON CCL.AREA_ID = FA.AREA_ID',
'--          LEFT JOIN CHECK_CHANGE_CONFIG CCC ON CCL.CONFIG_ID = CCC.CONFIG_ID',
'-- WHERE CCL.DEL_FLAG = 0',
'--   AND CCL.TENANT_ID = :USERTENANT',
'--   AND CCL.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND MSDV.TENANT_ID = :USERTENANT',
'--   AND MSDV.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND MSDV.DEL_FLAG = 0',
'--   AND FA.TENANT_ID = :USERTENANT',
'--   AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND FA.TYPE =1',
'--   AND FA.DEL_FLAG = 0',
'--   AND (:P298_DEPT = -1 OR CCL.DEPT_ID = :P298_DEPT)',
'--   AND (:P298_AREA = -1 OR CCL.AREA_ID = :P298_AREA)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P298_DEPT,P298_AREA'
,p_prn_page_header=>unistr('\5173\8054\53D8\66F4\70B9')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(295094979396037098)
,p_name=>'LIBRARY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LIBRARY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Library Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(295095965237037099)
,p_name=>'CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Config Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(295096953755037100)
,p_name=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Dept Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(295098012404037101)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Area Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(295099036254037101)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Is Enable'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(295099956256037102)
,p_name=>'REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARKS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(295103011940037104)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Creation Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(295106006445037106)
,p_name=>'BASE_DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BASE_DEPT_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Base Dept Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>36
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
 p_id=>wwv_flow_imp.id(296655315962833030)
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
 p_id=>wwv_flow_imp.id(299817529029912238)
,p_name=>'CONFIG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5173\8054\53D8\66F4\70B9\7C7B\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>500
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
 p_id=>wwv_flow_imp.id(299817590851912239)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(299817727808912240)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(299817762023912241)
,p_name=>'ENABLE_FLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENABLE_FLG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>9
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
 p_id=>wwv_flow_imp.id(299817929456912242)
,p_name=>'DEVIXE_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVIXE_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\5173\8054\8BBE\5907\6570\91CF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span >',
    '    <a href="#" onclick="btn_detail_operate(''&LIBRARY_ID.'')" style="text-dcoration:none"> &DEVIXE_NUM.  </a>',
    '</span>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(299817993380912243)
,p_name=>'OPERATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span >',
    unistr('    <a href="#" onclick="btn_update_operate(''&LIBRARY_ID.'')" style="text-dcoration:none"> \4FEE\6539  </a>'),
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(295094219178037096)
,p_internal_uid=>75726573748295467
,p_is_editable=>true
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
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
 p_id=>wwv_flow_imp.id(295094557236037097)
,p_interactive_grid_id=>wwv_flow_imp.id(295094219178037096)
,p_static_id=>'757270'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(295094764151037097)
,p_report_id=>wwv_flow_imp.id(295094557236037097)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295095407827037099)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(295094979396037098)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295096362669037100)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(295095965237037099)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295097387371037100)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(295096953755037100)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295098433071037101)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(295098012404037101)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295099422553037102)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(295099036254037101)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295100392864037102)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(295099956256037102)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295103400624037104)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(295103011940037104)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295106351979037106)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(295106006445037106)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295244606514358409)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(299817529029912238)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295245538813358412)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(299817590851912239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295246425290358415)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(299817727808912240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295252400810384179)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(299817762023912241)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295253383141384182)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(299817929456912242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(295254973221397809)
,p_view_id=>wwv_flow_imp.id(295094764151037097)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(299817993380912243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299818661953912250)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:299:&SESSION.::&DEBUG.:299::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(296656956897833047)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\8DF3\8F6C\660E\7EC6\9875\9762')
,p_button_static_id=>'detail_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8DF3\8F6C\4FEE\6539\9875\9762')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(295762262090529147)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\8DF3\8F6C\4FEE\6539\9875\9762')
,p_button_static_id=>'update_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\8DF3\8F6C\4FEE\6539\9875\9762')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299818777805912251)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\6279\91CF\542F\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\542F\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299818939466912252)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\6279\91CF\7981\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\7981\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(299818555210912249)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(235998239628995716)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_button_name=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5F71\54CD\65F6\95F4\9884\8BBE')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:307:&SESSION.::&DEBUG.:307:P307_DEPT,P307_AREA:&P298_DEPT.,&P298_AREA.'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(295762625506529150)
,p_branch_name=>unistr('\8F6C\5230\9875 299')
,p_branch_action=>'f?p=&APP_ID.:299:&SESSION.::&DEBUG.::P299_LIBRARY_ID:&P298_LIBRARY_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(295762262090529147)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(296658231962833059)
,p_branch_name=>unistr('\8F6C\5230\9875 299')
,p_branch_action=>'f?p=&APP_ID.:301:&SESSION.::&DEBUG.::P301_LIBRARY_ID:&P298_LIBRARY_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(296656956897833047)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(295762365541529148)
,p_name=>'P298_LIBRARY_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\4FEE\6539\6309\94AE\4E34\65F6\4FDD\5B58id')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296655492429833032)
,p_name=>'P298_LIBRARY_IDS'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\6279\91CF\542F\7528 ids\5217\8868\4FDD\5B58\4F4D\7F6E')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296656076071833038)
,p_name=>'P298_ROW_COUNT'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(299818085559912244)
,p_name=>'P298_DEPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_item_default=>'-1'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME, EXT_ORG_ID',
'FROM MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0',
'  UNION ALL ',
unistr('  SELECT TO_NCHAR(''\5168\90E8''),-1 FROM DUAL')))
,p_cSize=>30
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
 p_id=>wwv_flow_imp.id(299818227380912245)
,p_name=>'P298_AREA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(295093691579037096)
,p_item_default=>'-1'
,p_prompt=>unistr('\533A\57DF')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME, AREA_ID',
'FROM FND_AREAS',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0',
'  AND TYPE = 1',
'  UNION ALL ',
unistr('  SELECT TO_NCHAR(''\5168\90E8''),-1 FROM DUAL'),
'  ',
''))
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(299819024120912253)
,p_name=>unistr('\5237\65B0\90E8\95E8')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_DEPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(299819085416912254)
,p_event_id=>wwv_flow_imp.id(299819024120912253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295093691579037096)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(299819194708912255)
,p_name=>unistr('\5237\65B0\533A\57DF')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P298_AREA'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(299819330736912256)
,p_event_id=>wwv_flow_imp.id(299819194708912255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295093691579037096)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296560641827453876)
,p_name=>unistr('\6E05\9664\4E34\65F6\6570\636E&\9690\85CF\90E8\5206\6309\94AE')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296560741876453877)
,p_event_id=>wwv_flow_imp.id(296560641827453876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P298_LIBRARY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296560777970453878)
,p_event_id=>wwv_flow_imp.id(296560641827453876)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\8DF3\8F6C\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(295762262090529147)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296657065833833048)
,p_event_id=>wwv_flow_imp.id(296560641827453876)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9690\85CF\8DF3\8F6C\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(296656956897833047)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296655586811833033)
,p_name=>unistr('\9009\62E9\5217\8868')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(295093691579037096)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296655689229833034)
,p_event_id=>wwv_flow_imp.id(296655586811833033)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\9009\62E9\884Cid\4FE1\606F')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'console.log(this);',
'map.set(''P298_LIBRARY_IDS'',''LIBRARY_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296655816748833035)
,p_name=>unistr('\6279\91CF\542F\7528')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(299818777805912251)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296655914498833036)
,p_event_id=>wwv_flow_imp.id(296655816748833035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5FC5\9009\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P298_LIBRARY_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656007396833037)
,p_event_id=>wwv_flow_imp.id(296655816748833035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\542F\7528')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    ROW_COUNT NUMBER(20) := 0;',
'BEGIN',
'',
'    UPDATE CHECK_CHANGE_LIBRARY',
'    SET IS_ENABLE=1,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=SYSDATE',
'    WHERE LIBRARY_ID IN (SELECT * FROM UTILS_PKG.SPLIT_STR(:P298_LIBRARY_IDS, '',''));',
'    ROW_COUNT := SQL%ROWCOUNT;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', ROW_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P298_LIBRARY_IDS'
,p_attribute_03=>'P298_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656150791833039)
,p_event_id=>wwv_flow_imp.id(296655816748833035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\7ED3\679C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P298_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656356651833041)
,p_event_id=>wwv_flow_imp.id(296655816748833035)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295093691579037096)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296656536961833042)
,p_name=>unistr('\6279\91CF\7981\7528')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(299818939466912252)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656548428833043)
,p_event_id=>wwv_flow_imp.id(296656536961833042)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5FC5\9009\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P298_LIBRARY_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656734071833044)
,p_event_id=>wwv_flow_imp.id(296656536961833042)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\7981\7528')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    ROW_COUNT NUMBER(20) := 0;',
'BEGIN',
'',
'    UPDATE CHECK_CHANGE_LIBRARY',
'    SET IS_ENABLE=0,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=SYSDATE',
'    WHERE LIBRARY_ID IN (SELECT * FROM UTILS_PKG.SPLIT_STR(:P298_LIBRARY_IDS, '',''));',
'    ROW_COUNT := SQL%ROWCOUNT;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', ROW_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                  :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P298_LIBRARY_IDS'
,p_attribute_03=>'P298_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656774171833045)
,p_event_id=>wwv_flow_imp.id(296656536961833042)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\7ED3\679C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P298_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296656940673833046)
,p_event_id=>wwv_flow_imp.id(296656536961833042)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295093691579037096)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296657666879833054)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(299818555210912249)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296657772166833055)
,p_event_id=>wwv_flow_imp.id(296657666879833054)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5FC5\9009\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P298_LIBRARY_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\5220\9664\5F53\524D\5185\5BB9\4F1A\5B58\5728\6570\636E\4E22\5931\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F\FF08\786E\5B9A/\53D6\6D88\FF09'')) {'),
'    return true;',
'} else {',
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296657883453833056)
,p_event_id=>wwv_flow_imp.id(296657666879833054)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    ROW_COUNT NUMBER(20) := 0;',
'BEGIN',
'',
'    UPDATE CHECK_CHANGE_LIBRARY',
'    SET DEL_FLAG=1,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=SYSDATE',
'    WHERE LIBRARY_ID IN (SELECT * FROM UTILS_PKG.SPLIT_STR(:P298_LIBRARY_IDS, '',''));',
'',
'    UPDATE CHECK_CHANGE_LIBRARY_DEVICE',
'    SET DEL_FLAG=1,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=SYSDATE',
'    WHERE LIBRARY_ID IN (SELECT * FROM UTILS_PKG.SPLIT_STR(:P298_LIBRARY_IDS, '',''));',
'',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P298_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                  :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P298_LIBRARY_IDS'
,p_attribute_03=>'P298_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296658025086833057)
,p_event_id=>wwv_flow_imp.id(296657666879833054)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\7ED3\679C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P298_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296658136442833058)
,p_event_id=>wwv_flow_imp.id(296657666879833054)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(295093691579037096)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(296655418231833031)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(295093691579037096)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5173\8054\53D8\66F4\70B9 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>77287772802091402
);
wwv_flow_imp.component_end;
end;
/

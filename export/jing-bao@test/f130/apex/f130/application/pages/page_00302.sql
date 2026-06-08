prompt --application/pages/page_00302
begin
--   Manifest
--     PAGE: 00302
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
 p_id=>302
,p_name=>unistr('\53D8\66F4\65E5\5FD7')
,p_alias=>unistr('\53D8\66F4\65E5\5FD7')
,p_step_title=>unistr('\53D8\66F4\65E5\5FD7')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(295040031703985010)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function btn_operate(RECORD_ID) {',
unistr('    //\628A\70B9\51FB\7684RECORD_ID\4F20\9012\5230\67E5\770B\660E\7EC6\9875\9762'),
'    $s(''P302_RECORD_ID'', RECORD_ID);',
unistr('    // \70B9\51FB\4FEE\6539'),
'    $(''#view_btn'').click();',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(295143109179106537)
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
 p_id=>wwv_flow_imp.id(296659860639833076)
,p_plug_name=>unistr('\53D8\66F4\65E5\5FD7')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH UniqueRecords AS (',
'    SELECT DISTINCT CR.RECORD_ID,',
'                    CR.RECORD_DATE,',
'                    CR.RECORD_JOB_NUMBER || ''-'' || CR.RECORD_NAME AS RECORD_USER,',
'                    CR.DEPT_ID,',
'                    CR.DEPT_NAME,',
'                    CR.AREA_ID,',
'                    CR.AREA_NAME,',
'                    RD.DEVICE_CODE,',
'                    CD.DEVICE_NAME,',
'                    CD.LINE_ID,',
'                    FA.NAME AS LINE_NAME,',
'                    CCRI.ITEM_NAME,',
'                    CCRI.CONTENT,',
'                    CR.REMARK,',
'                    CR.EFFECT_MINUTE,',
'                    CR.IMAGES,',
'                    '''' AS OPERATOR',
'    FROM CHECK_CHANGE_RECORD CR',
'             INNER JOIN CHECK_CHANGE_RECORD_DEVICE RD ON RD.RECORD_ID = CR.RECORD_ID',
'             INNER JOIN CODE_DEVICE CD ON CD.DEVICE_CODE = RD.DEVICE_CODE ',
unistr('                                    and cr.AREA_ID = cd.AREA_ID  --\907F\514D\91CD\590D'),
'             INNER JOIN FND_AREAS FA ON CD.LINE_ID = FA.AREA_ID',
'             INNER JOIN CHECK_CHANGE_RECORD_ITEM CCRI ON CCRI.RECORD_ID = CR.RECORD_ID',
'    WHERE CR.TENANT_ID = :USERTENANT',
'      AND CR.BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND CR.RECORD_DATE >= TO_DATE(:P302_START_DATE, ''YYYY-MM-DD'')',
'      AND CR.RECORD_DATE <= TO_DATE(:P302_END_DATE, ''YYYY-MM-DD'') + 1',
'      AND (CR.DEPT_ID = :P302_DEPARTMENT OR NVL(:P302_DEPARTMENT, 0) = 0)',
'      AND RD.TENANT_ID = :USERTENANT',
'      AND RD.BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND CD.TENANT_ID = :USERTENANT',
'      AND CD.BASE_DEPT_ID = :BASE_DEPT_ID',
unistr('    --   AND CD.DEL_FLAG = 0   -- --\6CE8\91CA\540E\5373\4F7F\8BBE\5907\5220\9664\FF0C\65E5\5FD7\8BB0\5F55\4E5F\4F1A\56DE\663E\FF0C\4F46\662F\4F1A\51FA\73B0\91CD\590D\6570\636E\FF0C\7ECF\67E5\8BC1\540E\662FCHECK_CHANGE_RECORD_DEVICE\5B58\7684\662Fcode\FF0C\540E\7EED\4F1A\52A0id\8FDB\884C\53CC\5339\914D\67E5\8BE2'),
'      AND FA.DEL_FLAG = 0',
'      AND FA.TYPE = 2',
'      AND CCRI.BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND CCRI.TENANT_ID = :USERTENANT',
')',
'SELECT * FROM UniqueRecords',
'',
'',
'-- SELECT DISTINCT CR.RECORD_ID,',
unistr('--                 CR.RECORD_DATE,                                               --\8BB0\5F55\65F6\95F4'),
unistr('--                 CR.RECORD_JOB_NUMBER || ''-'' || CR.RECORD_NAME AS RECORD_USER, --\8BB0\5F55\4EBA'),
unistr('--                 CR.DEPT_ID,--\90E8\95E8ID'),
unistr('--                 CR.DEPT_NAME,                                                 --\90E8\95E8'),
unistr('--                 CR.AREA_ID,--\533A\57DFID\FF08FND_AREAS 1\662F\533A\57DF\FF0C2\662F\7EBF\522B\FF09'),
unistr('--                 CR.AREA_NAME,--\533A\57DF\FF08FND_AREAS  1\662F\533A\57DF\FF0C2\662F\7EBF\522B\FF09'),
'--                 RD.DEVICE_CODE,',
'--                 CD.DEVICE_NAME,',
unistr('--                 CD.LINE_ID,--\533A\57DF\FF08FND_AREAS 1\662F\533A\57DF\FF0C2\662F\7EBF\522B\FF09'),
'--                 FA.NAME                                          LINE_NAME,',
unistr('--                 CCRI.ITEM_NAME,--\53D8\66F4\9879\63CF\8FF0  2024-11-26\65B0\589E'),
unistr('--                 CCRI.CONTENT,--\586B\5199\5185\5BB9'),
unistr('--                 CR.REMARK,--\5907\6CE8'),
unistr('--                 CR.EFFECT_MINUTE,--\5F71\54CD\65F6\95F4'),
unistr('--                 CR.IMAGES    ,--\56FE\7247'),
'--                 ''''                                               OPERATOR',
'-- FROM CHECK_CHANGE_RECORD CR',
'--          INNER JOIN CHECK_CHANGE_RECORD_DEVICE RD ON RD.RECORD_ID = CR.RECORD_ID',
'--          INNER JOIN CODE_DEVICE CD ON CD.DEVICE_CODE = RD.DEVICE_CODE',
'--          INNER JOIN FND_AREAS FA ON CD.LINE_ID = FA.AREA_ID',
'--          INNER JOIN CHECK_CHANGE_RECORD_ITEM CCRI ON CCRI.RECORD_ID = CR.RECORD_ID',
'-- WHERE CR.TENANT_ID = :USERTENANT',
'--   AND CR.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND CR.RECORD_DATE >= TO_DATE(:P302_START_DATE, ''YYYY-MM-DD'')',
'--   AND CR.RECORD_DATE <= TO_DATE(:P302_END_DATE, ''YYYY-MM-DD'') + 1',
'--   AND (CR.DEPT_ID = :P302_DEPARTMENT OR NVL(:P302_DEPARTMENT, 0) = 0)',
'--   AND RD.TENANT_ID = :USERTENANT',
'--   AND RD.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND CD.TENANT_ID = :USERTENANT',
'--   AND CD.BASE_DEPT_ID = :BASE_DEPT_ID',
unistr('-- --   AND CD.DEL_FLAG = 0  --\6CE8\91CA\540E\5373\4F7F\8BBE\5907\5220\9664\FF0C\65E5\5FD7\8BB0\5F55\4E5F\4F1A\56DE\663E\FF0C\4F46\662F\4F1A\51FA\73B0\91CD\590D\6570\636E'),
'--   AND FA.DEL_FLAG = 0',
'--   AND FA.TYPE = 2',
'--   AND CCRI.BASE_DEPT_ID = :BASE_DEPT_ID',
'--   AND CCRI.TENANT_ID = :USERTENANT;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P302_DEPARTMENT,P302_START_DATE,P302_END_DATE'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\53D8\66F4\65E5\5FD7')
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
 p_id=>wwv_flow_imp.id(235999117071995725)
,p_name=>'ITEM_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ITEM_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\53D8\66F4\9879\63CF\8FF0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(235999220209995726)
,p_name=>'CONTENT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONTENT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\586B\5199\5185\5BB9')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>180
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(235999394750995727)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(235999474307995728)
,p_name=>'EFFECT_MINUTE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EFFECT_MINUTE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5F71\54CD\65F6\95F4\FF08\5206\949F\FF09')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
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
 p_id=>wwv_flow_imp.id(235999570082995729)
,p_name=>'IMAGES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IMAGES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\56FE\7247')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(296660075028833078)
,p_name=>'RECORD_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(297850332548246431)
,p_name=>'DEPT_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(297850416686246432)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(297850563623246434)
,p_name=>'RECORD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\8BB0\5F55\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(297850745769246436)
,p_name=>'DEPT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEPT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(297850873318246437)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(297852483183246453)
,p_name=>'RECORD_USER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RECORD_USER'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BB0\5F55\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>401
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
 p_id=>wwv_flow_imp.id(297852634673246454)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(297852742212246455)
,p_name=>'OPERATOR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATOR'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_LINK'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_link_target=>'f?p=&APP_ID.:305:&SESSION.::&DEBUG.:305:P305_RECORD_ID:&RECORD_ID.'
,p_link_text=>unistr('\67E5\770B\660E\7EC6')
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
,p_escape_on_http_output=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(297852815341246456)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
 p_id=>wwv_flow_imp.id(297852866542246457)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(299098601225151537)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(296659995170833077)
,p_internal_uid=>77292349741091448
,p_is_editable=>false
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(297855805259248042)
,p_interactive_grid_id=>wwv_flow_imp.id(296659995170833077)
,p_static_id=>'784882'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(297856037869248042)
,p_report_id=>wwv_flow_imp.id(297855805259248042)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146249516593236275)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(235999117071995725)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146250497006236299)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(235999220209995726)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146251501524236302)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(235999394750995727)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146252478257236305)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(235999474307995728)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(146253546396236308)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>17
,p_column_id=>wwv_flow_imp.id(235999570082995729)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>120
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(219371128814904698)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(299098601225151537)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297856465380248045)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(296660075028833078)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297859173657248058)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(297850332548246431)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297860125779248061)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(297850416686246432)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297861875636248067)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(297850563623246434)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>188
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297863669084248073)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(297850745769246436)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297864586949248076)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(297850873318246437)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297885545363276113)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(297852483183246453)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>182
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297886356667276117)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(297852634673246454)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297887328948276120)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(297852742212246455)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>88
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297899916240277389)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(297852815341246456)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>157
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(297900799692277392)
,p_view_id=>wwv_flow_imp.id(297856037869248042)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(297852866542246457)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(296459978700988437)
,p_button_sequence=>100
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight:t-Button--gapLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_column_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296459686973988434)
,p_name=>'P302_DEPARTMENT'
,p_item_sequence=>70
,p_item_default=>'0'
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_char(''\5168\90E8'') , to_number(0) from dual'),
'union all',
'select distinct DEPT_NAME,DEPT_ID from CHECK_CHANGE_RECORD',
'where TENANT_ID = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID;'))
,p_cSize=>30
,p_colspan=>3
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
 p_id=>wwv_flow_imp.id(296459745629988435)
,p_name=>'P302_START_DATE'
,p_item_sequence=>80
,p_item_default=>'select to_char(sysdate-7,''YYYY-MM-DD'')  from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P302_END_DATE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296459908024988436)
,p_name=>'P302_END_DATE'
,p_item_sequence=>90
,p_item_default=>'select to_char(sysdate,''YYYY-MM-DD'')  from dual;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P302_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(296460528150988442)
,p_name=>'P302_RECORD_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(296460072558988438)
,p_name=>unistr('\5237\65B0\67E5\8BE2')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(296459978700988437)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(296460185140988439)
,p_event_id=>wwv_flow_imp.id(296460072558988438)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P302_START_DATE''))){',
unistr('    alert(''\8BF7\9009\62E9\5F00\59CB\65F6\95F4'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P302_END_DATE''))){',
unistr('    alert(''\8BF7\9009\62E9\7ED3\675F\65F6\95F4'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(297853003473246458)
,p_event_id=>wwv_flow_imp.id(296460072558988438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(296659860639833076)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

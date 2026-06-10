prompt --application/pages/page_00299
begin
--   Manifest
--     PAGE: 00299
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
 p_id=>299
,p_name=>unistr('\5173\8054\53D8\66F4\70B9-\7F16\8F91')
,p_alias=>unistr('\5173\8054\53D8\66F4\70B9-\7F16\8F91')
,p_step_title=>unistr('\5173\8054\53D8\66F4\70B9-\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(237278569520685912)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237347342831746312)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237894068272821632)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>90
,p_plug_grid_column_span=>4
,p_plug_display_column=>4
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(238001360467230054)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LIBRARY_ID,',
'       CONFIG_ID,',
'       DEPT_ID,',
'       AREA_ID,',
'       DECODE(IS_ENABLE, 0, ''N'', ''Y'')                          IS_ENABLE,',
'       (SELECT LISTAGG(DEVICE_CODE, ''|'')',
'        FROM CHECK_CHANGE_LIBRARY_DEVICE LD',
'        WHERE LD.LIBRARY_ID = CHECK_CHANGE_LIBRARY.LIBRARY_ID',
'         AND LD.TENANT_ID = :USERTENANT',
'         AND LD.BASE_DEPT_ID = :BASE_DEPT_ID',
'         AND LD.DEL_FLAG = 0',
'          ) CODES',
'FROM CHECK_CHANGE_LIBRARY',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(242058468114613164)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--showIcon:t-ContentBlock--h3:t-ContentBlock--headingFontAlt'
,p_plug_template=>wwv_flow_imp.id(2302025530631836193)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237348011872746314)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_parent_plug_id=>wwv_flow_imp.id(242058468114613164)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CD.DEVICE_CODE,',
'       CD.DEVICE_NAME,',
'       CD.AREA_ID,',
'       FA.NAME  AREA_NAME,',
'       CD.LINE_ID,',
'       FA2.NAME LINE_NAME',
'FROM CODE_DEVICE CD',
'         LEFT JOIN FND_AREAS FA ON CD.AREA_ID = FA.AREA_ID',
'         LEFT JOIN FND_AREAS FA2 ON CD.LINE_ID = FA2.AREA_ID',
'WHERE CD.DEVICE_CODE in (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P299_CODES,''|''))',
'  AND CD.TENANT_ID = :USERTENANT',
'  AND CD.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND CD.DEL_FLAG = 0',
'  AND FA.TENANT_ID = :USERTENANT',
'  AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND FA.DEL_FLAG = 0',
'  AND FA.TYPE = 1',
'  AND FA2.TENANT_ID = :USERTENANT',
'  AND FA2.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND FA2.DEL_FLAG = 0',
'  AND FA2.TYPE = 2'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P299_CODES'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5173\8054\8BBE\5907')
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
 p_id=>wwv_flow_imp.id(237569116320760035)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Area Id'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(237570130299760045)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>64
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
 p_id=>wwv_flow_imp.id(237570212086760046)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(237570371109760047)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(237570432508760048)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Line Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(237570487734760049)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(237570989850760054)
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(242060091150613181)
,p_internal_uid=>80453907904170650
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(237577433371913889)
,p_interactive_grid_id=>wwv_flow_imp.id(242060091150613181)
,p_static_id=>'759713'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(237577676595913889)
,p_report_id=>wwv_flow_imp.id(237577433371913889)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237578089625913892)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(237569116320760035)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237579040486913896)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(237570130299760045)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237579895087913900)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(237570212086760046)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237580851978913903)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(237570371109760047)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237581716716913906)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(237570432508760048)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(237582664680913910)
,p_view_id=>wwv_flow_imp.id(237577676595913889)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(237570487734760049)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237357540218746323)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237894068272821632)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237894087852821633)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(237894068272821632)
,p_button_name=>'NEXT_STEP'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237894261180821634)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(237894068272821632)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(238797515471154762)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(237894068272821632)
,p_button_name=>'UPDATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(242058490652613165)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(242058468114613164)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(242058592200613166)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(242058468114613164)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(237359209202746324)
,p_branch_name=>unistr('\8F6C\5230\9875 298')
,p_branch_action=>'f?p=&APP_ID.:298:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(237896898187821661)
,p_branch_name=>unistr('\8DF3\8F6C\5230\9009\62E9\8BBE\5907\9875')
,p_branch_action=>'f?p=&APP_ID.:300:&SESSION.::&DEBUG.::P300_AREA,P300_CONFIG,P300_DEPT,P300_CODES_LIST:&P299_AREA_ID.,&P299_CONFIG_ID.,&P299_DEPT_ID.,&P299_CODES.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237897593080821668)
,p_name=>'P299_ROW_COUNT'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238000204713230043)
,p_name=>'P299_DELETE_CODES'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(242058468114613164)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5220\9664\8BB0\5F55code')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238796607482154753)
,p_name=>'P299_LIBRARY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_source=>'LIBRARY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238796714303154754)
,p_name=>'P299_CONFIG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_prompt=>unistr('\53D8\66F4\70B9\7C7B\522B')
,p_source=>'CONFIG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME, CONFIG_ID',
'FROM CHECK_CHANGE_CONFIG',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0',
'  AND IS_SAVE= 1'))
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(238796847884154755)
,p_name=>'P299_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_prompt=>unistr('\90E8\95E8')
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME, EXT_ORG_ID',
'FROM MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0'))
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(238796933651154756)
,p_name=>'P299_AREA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_prompt=>unistr('\533A\57DF')
,p_source=>'AREA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT NAME, AREA_ID',
'FROM FND_AREAS',
'WHERE TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND DEL_FLAG = 0'))
,p_cSize=>30
,p_cMaxlength=>200
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(238797067598154757)
,p_name=>'P299_IS_ENABLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_default=>'Y'
,p_prompt=>unistr('\72B6\6001')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238798887758154776)
,p_name=>'P299_CODES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_source=>'CODES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(240092652278947371)
,p_name=>'P299_CODES_BANK_NEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_item_source_plug_id=>wwv_flow_imp.id(238001360467230054)
,p_source=>'CODES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5907\4EFD\5B57\6BB5\FF0C\9009\62E9\4E4B\540E\5C31\628A\7F16\8F91\9875\6570\636E\4F20\5230\8FD9\4E2A\5B57\6BB5\FF0C\7136\540E\8FD9\4E2A\5B57\6BB5\6570\636E\518D\6DFB\52A0\5230P299_CODES \91CC')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237572657762760070)
,p_name=>unistr('\8BBE\7F6E\9009\4E2D\503C')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240092734217947372)
,p_event_id=>wwv_flow_imp.id(237572657762760070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_CODES_BANK_NEW'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P300_CODE'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237572960959760073)
,p_event_id=>wwv_flow_imp.id(237572657762760070)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8BBE\7F6Ecode_bank')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_CODES_BANK'
,p_attribute_01=>'DIALOG_RETURN_ITEM'
,p_attribute_09=>'N'
,p_attribute_10=>'P300_CODES'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240091924053947364)
,p_event_id=>wwv_flow_imp.id(237572657762760070)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('code\503C\8865\5145')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_CODES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT LISTAGG(DISTINCT DATA_VAL, ''|'')',
'FROM (SELECT DATA_VAL',
'      FROM JA_UTILS_PKG.SPLIT_STR(:P299_CODES, ''|'')',
'      UNION ALL',
'      SELECT DATA_VAL',
'      FROM JA_UTILS_PKG.SPLIT_STR(:P299_CODES_BANK_NEW, ''|'')) A',
''))
,p_attribute_07=>'P299_CODES,P299_CODES_BANK_NEW'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237573071963760074)
,p_event_id=>wwv_flow_imp.id(237572657762760070)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237348011872746314)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237894417491821636)
,p_name=>unistr('\5224\65AD\9009\62E9\6761\4EF6&\5C55\793A\5217\8868\4E0E\6309\94AE')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237894087852821633)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237894652667821638)
,p_event_id=>wwv_flow_imp.id(237894417491821636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\975E\7A7A\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P299_DEPT_ID'')){',
unistr('alert("\8BF7\9009\62E9\90E8\95E8");'),
'return false;',
'}',
'if(!$v(''P299_AREA_ID'')){',
unistr('alert("\8BF7\9009\62E9\533A\57DF");'),
'return false;',
'}',
'if(!$v(''P299_CONFIG_ID'')){',
unistr('alert("\8BF7\9009\62E9\7C7B\522B");'),
'return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237894781440821639)
,p_event_id=>wwv_flow_imp.id(237894417491821636)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5C55\793A\5217\8868')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242058468114613164)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237894852951821640)
,p_event_id=>wwv_flow_imp.id(237894417491821636)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5C55\793A\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894261180821634)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237894916499821641)
,p_event_id=>wwv_flow_imp.id(237894417491821636)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894087852821633)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237895365113821645)
,p_event_id=>wwv_flow_imp.id(237894417491821636)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868\6570\636E')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237348011872746314)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237895170167821643)
,p_name=>unistr('\65B0\589E\65F6\9690\85CF\5217\8868')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P299_LIBRARY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237573366594760077)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\5217\8868')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(242058468114613164)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237894295671821635)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\4FDD\5B58\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894261180821634)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237895006049821642)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\663E\793A\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894087852821633)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238798291062154770)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\66F4\65B0\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(238797515471154762)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238798420457154771)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6E05\9664\8BBE\5907\5217\8868')
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_DELETE_CODES'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238798560133154772)
,p_event_id=>wwv_flow_imp.id(237895170167821643)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\8BBE\5907\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237348011872746314)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237897020347821662)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237894261180821634)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237897261637821664)
,p_event_id=>wwv_flow_imp.id(237897020347821662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\975E\7A7A\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P299_DEPT_ID'')){',
unistr('alert("\8BF7\9009\62E9\90E8\95E8");'),
'return false;',
'}',
'if(!$v(''P299_AREA_ID'')){',
unistr('alert("\8BF7\9009\62E9\533A\57DF");'),
'return false;',
'}',
'if(!$v(''P299_CONFIG_ID'')){',
unistr('alert("\8BF7\9009\62E9\7C7B\522B");'),
'return false;',
'}',
'',
'if(!$v(''P299_CODES'')){',
unistr('alert("\8BF7\9009\62E9\8BBE\5907");'),
'return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237897361994821665)
,p_event_id=>wwv_flow_imp.id(237897020347821662)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\64CD\4F5C')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG    VARCHAR2(1000);',
'    P_LIBRARY_ID NUMBER;',
'    PARENT_LIBRARY_ID   NUMBER;',
'    DATA_COUNT   NUMBER;',
'    /**',
'     * CREATE BY:   ZHH',
'     * CREATE DATE: 2024/8/16 17:03',
'     * MODIFY BY:',
'     * MODIFY DATE:',
'     * DESCRIPTION:',
unistr('     1.\76F8\540C\90E8\95E8\3001\533A\57DF\3001\5206\7C7B\6570\636E\65E0\6CD5\91CD\590D\63D2\5165\201C\5173\8054\53D8\66F4\70B9\201D\8868\6570\636E\5E93\FF1B'),
unistr('     2.\8BBE\5907\5217\8868\7531\533A\57DF\5B57\6BB5\8FDB\884C\63A7\5236\FF0C\76F8\540C\8BBE\5907\5728\540C\90E8\95E8\5185\4EC5\5141\8BB8\5173\8054\4E00\4E2A\53D8\66F4\70B9\7C7B\522B\FF0C\76F8\540C\8BBE\5907\76F8\540C\533A\57DF\4E0D\540C\53D8\66F4\70B9\7C7B\578B\65F6\FF0C\539F\6765\7684\6570\636E\4FEE\6539\4E3A\6700\65B0\7684\53D8\66F4\70B9\7C7B\578B\FF1B'),
'     */',
'BEGIN',
unistr('    -- \76F8\540C\90E8\95E8\3001\533A\57DF\3001\5206\7C7B\6570\636E\65E0\6CD5\91CD\590D\63D2\5165\201C\5173\8054\53D8\66F4\70B9\201D\8868\6570\636E\5E93\5224\65AD'),
'    SELECT NVL(COUNT(1),0)',
'    INTO DATA_COUNT',
'    FROM CHECK_CHANGE_LIBRARY',
'    WHERE TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND CONFIG_ID = :P299_CONFIG_ID',
'      AND DEPT_ID = :P299_DEPT_ID',
'      AND AREA_ID = :P299_AREA_ID',
'      AND DEL_FLAG = 0;',
'    IF DATA_COUNT > 0 THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', -1);',
'    ELSE',
'        INSERT INTO CHECK_CHANGE_LIBRARY(CONFIG_ID, DEPT_ID, AREA_ID, IS_ENABLE, BASE_DEPT_ID, CREATED_BY,',
'                                         CREATION_DATE,',
'                                         DEL_FLAG, TENANT_ID)',
'        VALUES (:P299_CONFIG_ID, :P299_DEPT_ID, :P299_AREA_ID, DECODE(:P299_IS_ENABLE, ''Y'', 1, 0), :BASE_DEPT_ID, :USERID,',
'                SYSDATE,',
'                0,',
'                :USERTENANT)',
'        RETURNING LIBRARY_ID INTO P_LIBRARY_ID;',
unistr('--     \5FAA\73AF\63D2\5165\8BBE\5907\5173\8054\4FE1\606F'),
'        FOR C IN (',
'            SELECT *',
'            FROM JA_UTILS_PKG.SPLIT_STR(:P299_CODES, ''|'')',
'            )',
'',
'            LOOP',
'             ',
unistr('                --  \6709\5219\66F4\65B0,\628ALIBRARY_ID \6539\6210\6700\65B0\7684\FF0C\65E0\5219\65B0\589E(\56E0\4E3A\5217\8868\5C31\9650\5236\5728\67D0\4E2A\533A\57DF\FF0C\6240\4EE5\8FD9\8FB9\5C31\4E0D\8865\5145\533A\57DF\63A7\5236\4E86)'),
'',
'                SELECT MAX(CL.LIBRARY_ID)',
'                INTO PARENT_LIBRARY_ID',
'                FROM CHECK_CHANGE_LIBRARY_DEVICE LD',
'                         LEFT JOIN CHECK_CHANGE_LIBRARY CL ON LD.LIBRARY_ID = CL.LIBRARY_ID',
'                WHERE LD.TENANT_ID = :USERTENANT',
'                  AND LD.BASE_DEPT_ID = :BASE_DEPT_ID',
'                  AND CL.AREA_ID = :P299_AREA_ID',
'                  AND LD.DEVICE_CODE = C.DATA_VAL',
'                  AND CL.DEPT_ID = :P299_DEPT_ID',
'                  AND LD.DEL_FLAG = 0;',
'       ',
'                IF PARENT_LIBRARY_ID IS NOT NULL THEN',
unistr('--                 \66F4\65B0LIBRARY_ID'),
'                    UPDATE CHECK_CHANGE_LIBRARY_DEVICE',
'                    SET LIBRARY_ID   = P_LIBRARY_ID,',
'                        UPDATED_BY   = :USERID,',
'                        UPDATED_DATE = SYSDATE',
'                    WHERE DEVICE_CODE = C.DATA_VAL',
'                      AND TENANT_ID = :USERTENANT',
'                      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'                      AND LIBRARY_ID = PARENT_LIBRARY_ID',
'                    ;',
'                ELSE',
'                    INSERT INTO CHECK_CHANGE_LIBRARY_DEVICE(LIBRARY_ID, DEVICE_CODE, TENANT_ID, CREATED_BY,',
'                                                            CREATION_DATE,',
'                                                            BASE_DEPT_ID,DEL_FLAG)',
'                    VALUES (P_LIBRARY_ID, C.DATA_VAL, :USERTENANT, :USERID, SYSDATE, :BASE_DEPT_ID,0);',
'                end if;',
'',
'',
'            END LOOP;',
'                APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', 1);',
'    END IF;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'    -- APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P299_DEPT_ID,P299_AREA_ID,P299_CONFIG_ID,P299_IS_ENABLE,P299_CODES'
,p_attribute_03=>'P299_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237897545076821667)
,p_event_id=>wwv_flow_imp.id(237897020347821662)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D2\5165\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P299_ROW_COUNT'') > 0){',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'}else if($v(''P299_ROW_COUNT'') ==-1){',
unistr('    alert(''\5217\8868\5B58\5728\90E8\95E8\3001\533A\57DF\5185\5173\8054\76F8\540C\53D8\66F4\70B9\7C7B\522B\FF0C\8BF7\91CD\65B0\8C03\6574\540E\4FDD\5B58\FF01'');'),
'    return false;',
'}else{',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237897700808821669)
,p_event_id=>wwv_flow_imp.id(237897020347821662)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:298:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238797608033154763)
,p_name=>unistr('\66F4\65B0')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(238797515471154762)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238797757385154764)
,p_event_id=>wwv_flow_imp.id(238797608033154763)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\975E\7A7A\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P299_DEPT_ID'')){',
unistr('alert("\8BF7\9009\62E9\90E8\95E8");'),
'return false;',
'}',
'if(!$v(''P299_AREA_ID'')){',
unistr('alert("\8BF7\9009\62E9\533A\57DF");'),
'return false;',
'}',
'if(!$v(''P299_CONFIG_ID'')){',
unistr('alert("\8BF7\9009\62E9\7C7B\522B");'),
'return false;',
'}',
'',
'if(!$v(''P299_CODES'')){',
unistr('alert("\8BF7\9009\62E9\8BBE\5907");'),
'return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238797796311154765)
,p_event_id=>wwv_flow_imp.id(238797608033154763)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\64CD\4F5C')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG    VARCHAR2(1000);',
'    P_LIBRARY_ID NUMBER;',
'    UPDATE_FLG   NUMBER;',
'    DATA_COUNT   NUMBER;',
'    /**',
'     * CREATE BY:   ZHH',
'     * CREATE DATE: 2024/8/16 17:03',
'     * MODIFY BY:',
'     * MODIFY DATE:',
'     * DESCRIPTION:',
unistr('     1.\76F8\540C\90E8\95E8\3001\533A\57DF\3001\5206\7C7B\6570\636E\65E0\6CD5\91CD\590D\63D2\5165\201C\5173\8054\53D8\66F4\70B9\201D\8868\6570\636E\5E93\FF1B'),
unistr('     2.\8BBE\5907\5217\8868\7531\533A\57DF\5B57\6BB5\8FDB\884C\63A7\5236\FF0C\76F8\540C\8BBE\5907\5728\540C\90E8\95E8\5185\4EC5\5141\8BB8\5173\8054\4E00\4E2A\53D8\66F4\70B9\7C7B\522B\FF0C\5373\76F8\540C\8BBE\5907\76F8\540C\533A\57DF\4E0D\540C\53D8\66F4\70B9\7C7B\578B\65F6\FF0C\539F\6765\7684\6570\636E\4FEE\6539\4E3A\6700\65B0\7684\53D8\66F4\70B9\7C7B\578B\FF1B'),
'     */',
'BEGIN',
unistr('    -- \76F8\540C\90E8\95E8\3001\533A\57DF\3001\5206\7C7B\6570\636E\65E0\6CD5\91CD\590D\63D2\5165\201C\5173\8054\53D8\66F4\70B9\201D\8868\6570\636E\5E93\5224\65AD '),
'    SELECT NVL(COUNT(1), 0)',
'    INTO DATA_COUNT',
'    FROM CHECK_CHANGE_LIBRARY',
'    WHERE TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'      AND CONFIG_ID = :P299_CONFIG_ID',
'      AND DEPT_ID = :P299_DEPT_ID',
'      AND AREA_ID = :P299_AREA_ID',
'      AND DEL_FLAG = 0',
'      AND LIBRARY_ID != :P299_LIBRARY_ID;',
'    IF DATA_COUNT > 0 THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', -1);',
'    ELSE',
'        UPDATE CHECK_CHANGE_LIBRARY',
'        SET CONFIG_ID=:P299_CONFIG_ID,',
'            DEPT_ID=:P299_DEPT_ID,',
'            AREA_ID=:P299_AREA_ID,',
'            IS_ENABLE=DECODE(:P299_IS_ENABLE, ''Y'', 1, 0),',
'            UPDATED_DATE=SYSDATE,',
'            UPDATED_BY=:USERID',
'        WHERE LIBRARY_ID = :P299_LIBRARY_ID;',
unistr('        -- \5220\9664\5386\53F2\8BB0\5F55 \8981\628A\8FD9\4E2A\5206\7C7B\672C\8EAB\6709\7684\5220\9664'),
'        UPDATE CHECK_CHANGE_LIBRARY_DEVICE SET DEL_FLAG = 1 WHERE LIBRARY_ID = :P299_LIBRARY_ID;',
'',
unistr('--     \5FAA\73AF\63D2\5165\8BBE\5907\5173\8054\4FE1\606F'),
'        FOR C IN (',
'            SELECT *',
'            FROM JA_UTILS_PKG.SPLIT_STR(:P299_CODES, ''|'')',
'            )',
'',
'            LOOP',
unistr('                WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\66F4\65B0'', ''INFO'', C.DATA_VAL, 1, 3);'),
unistr('                --  \76EE\524D\662F\5220\9664\65E7\7684\63D2\5165\65B0\7684'),
unistr('                -- \5220\9664\5386\53F2\8BB0\5F55 \628A\91CD\590D\7684\5220\9664 \76F8\540C\90E8\95E8 \76F8\540C\533A\57DF \4E0D\540C\5206\7C7B\7684\5220\9664'),
'                UPDATE CHECK_CHANGE_LIBRARY_DEVICE LD',
'                SET DEL_FLAG = 1',
'                WHERE DEVICE_CODE = C.DATA_VAL',
'                  AND DEL_FLAG = 0',
'                  AND LIBRARY_ID IN (SELECT CL.LIBRARY_ID',
'                             FROM CHECK_CHANGE_LIBRARY CL',
'                             WHERE CL.TENANT_ID = :USERTENANT',
'                               AND CL.DEPT_ID = :P299_DEPT_ID',
'                               AND CL.AREA_ID = :P299_AREA_ID',
'                               AND CL.BASE_DEPT_ID = :BASE_DEPT_ID',
'                               AND CL.DEL_FLAG = 0',
'                               AND CL.LIBRARY_ID = LD.LIBRARY_ID);',
'                INSERT INTO CHECK_CHANGE_LIBRARY_DEVICE(LIBRARY_ID, DEVICE_CODE, TENANT_ID, CREATED_BY,',
'                                                        CREATION_DATE,',
'                                                        BASE_DEPT_ID)',
'                VALUES (:P299_LIBRARY_ID, C.DATA_VAL, :USERTENANT, :USERID, SYSDATE, :BASE_DEPT_ID);',
'                -- end if;',
'',
'',
'            END LOOP;',
'        APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', 1);',
'    END IF;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('         --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'    -- APEX_UTIL.SET_SESSION_STATE(''P299_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P299_DEPT_ID,P299_AREA_ID,P299_CONFIG_ID,P299_IS_ENABLE,P299_LIBRARY_ID,P299_CODES'
,p_attribute_03=>'P299_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238797928980154766)
,p_event_id=>wwv_flow_imp.id(238797608033154763)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P299_ROW_COUNT'') > 0){',
unistr('    alert(''\66F4\65B0\6210\529F'');'),
'}else if($v(''P299_ROW_COUNT'') ==-1){',
unistr('    alert(''\5217\8868\5B58\5728\90E8\95E8\3001\533A\57DF\5185\5173\8054\76F8\540C\53D8\66F4\70B9\7C7B\522B\FF0C\8BF7\91CD\65B0\8C03\6574\540E\4FDD\5B58\FF01'');'),
'    return false;',
'}else{',
unistr('    alert(''\66F4\65B0\5931\8D25'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238798007332154767)
,p_event_id=>wwv_flow_imp.id(238797608033154763)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:298:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238000042930230041)
,p_name=>unistr('\9009\62E9\5217\8868')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(237348011872746314)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238000114488230042)
,p_event_id=>wwv_flow_imp.id(238000042930230041)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\83B7\53D6\9009\62E9\503C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
unistr('//\5982\679C\8FD9\4E2ADEVICE_CODE\5B58\5728\548C\7528\6237\9009\4E2D\7684\4E0D\4E00\81F4\FF0C\90A3\4E48\5C31\63D0\793A\201C\5F53\524D\9009\62E9\8BBE\5907\5B58\5728\5DF2\88AB\5173\8054\8BBE\5907\FF0C\662F\5426\786E\5B9A\91CD\65B0\5173\8054\6B64\53D8\66F4\70B9\7C7B\522B\5217\8868\5185\FF1F\FF08\786E\5B9A/\53D6\6D88\FF09\201D'),
'map.set(''P299_DELETE_CODES'',''DEVICE_CODE'');',
'utils.set(this.data,map);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240093031765947375)
,p_event_id=>wwv_flow_imp.id(238000042930230041)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\9879\FF0C\6539\4E3A|')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_DELETE_CODES'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'REPLACE(:P299_DELETE_CODES, '','', ''|'')'
,p_attribute_07=>'P299_DELETE_CODES'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238000363034230044)
,p_name=>unistr('\5220\9664\5217\8868')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(242058592200613166)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240092972138947374)
,p_event_id=>wwv_flow_imp.id(238000363034230044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5217\8868\4E0D\80FD\4E3A\7A7A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (!$v(''P299_DELETE_CODES'')) {',
unistr('    alert(''\8BF7\9009\62E9\9700\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\5220\9664\5F53\524D\5185\5BB9\4F1A\5B58\5728\6570\636E\4E22\5931\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F\FF08\786E\5B9A/\53D6\6D88)'')){'),
'    return true;',
'} else {',
'    return false;',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238000399910230045)
,p_event_id=>wwv_flow_imp.id(238000363034230044)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539CODES\5217\8868')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5B57\7B26\4E32A\548CB  '),
'let strA = $v(''P299_CODES'');  ',
'let strB = $v(''P299_DELETE_CODES'');  ',
unistr('// \5C06\5B57\7B26\4E32\62C6\5206\4E3A\6570\7EC4  '),
'let arrA = strA.split(''|'');  ',
'let arrB = strB.split(''|'');  ',
'  ',
unistr('// \4F7F\7528filter\65B9\6CD5\8FC7\6EE4\6389arrA\4E2D\5728arrB\4E2D\4E5F\5B58\5728\7684\5143\7D20  '),
'let filteredArr = arrA.filter(item => !arrB.includes(item));  ',
'  ',
unistr('// \5C06\8FC7\6EE4\540E\7684\6570\7EC4\8F6C\6362\56DE\5B57\7B26\4E32\FF0C\5143\7D20\4E4B\95F4\7528\9017\53F7\5206\9694  '),
'let resultStr = filteredArr.join(''|'');  ',
'  ',
unistr('// \8F93\51FA\7ED3\679C  '),
'console.log(resultStr);  ',
'$s(''P299_CODES'',resultStr);',
unistr('$s(''P299_DELETE_CODES'',null);//\5220\9664\5B57\6BB5\7F6E\7A7A'),
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238000702522230048)
,p_event_id=>wwv_flow_imp.id(238000363034230044)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237348011872746314)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238797088417154758)
,p_name=>unistr('\7F16\8F91\65F6\5C55\793A\5217\8868')
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P299_LIBRARY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238797251284154759)
,p_event_id=>wwv_flow_imp.id(238797088417154758)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\90E8\95E8\8BBE\7F6E\4E3A\4E0D\53EF\9009')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''.apex-item-group--popup-lov:eq(0)'').addClass(''apex_disabled'');'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238797297910154760)
,p_event_id=>wwv_flow_imp.id(238797088417154758)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\4E0B\4E00\6B65\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894087852821633)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238798164895154768)
,p_event_id=>wwv_flow_imp.id(238797088417154758)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9690\85CF\65B0\589E\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(237894261180821634)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(240093168664947376)
,p_name=>unistr('\4FEE\6539\533A\57DF\FF0C\5219\5217\8868\91CD\65B0\5237\65B0')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P299_AREA_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240093200259947377)
,p_event_id=>wwv_flow_imp.id(240093168664947376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9879\90FD\7F6E\7A7A')
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P299_DELETE_CODES,P299_CODES,P299_CODES_BANK_NEW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(240093356686947378)
,p_event_id=>wwv_flow_imp.id(240093168664947376)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(237348011872746314)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(237571154719760055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(237348011872746314)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5173\8054\8BBE\5907 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75964971473317524
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(238002868835230069)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(238001360467230054)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5173\8054\53D8\66F4\70B9-\7F16\8F91')
,p_internal_uid=>76396685588787538
);
wwv_flow_imp.component_end;
end;
/

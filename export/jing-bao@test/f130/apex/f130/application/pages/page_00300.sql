prompt --application/pages/page_00300
begin
--   Manifest
--     PAGE: 00300
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
 p_id=>300
,p_name=>unistr('\5173\8054\8BBE\5907')
,p_alias=>unistr('\5173\8054\8BBE\5907')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5173\8054\8BBE\5907')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(266159300612335461)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'1000'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(266241895615428390)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_region_name=>'GRID_MASHINE'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924417379485748)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DEVICE_CODE,',
'       DEVICE_NAME,',
'       AREA_ID,',
'       AREA_NAME,',
'       LINE_ID,',
'       LINE_NAME,',
'       RELATE_CONFIG,',
unistr('       DECODE(CONFIG_ID, NULL, ''\672A\5173\8054'', ''\5DF2\5173\8054'')                             RELATE_FLG,'),
'       CONFIG_ID,',
unistr('       --    0\5219\8868\793A\4E0D\76F8\540C\FF0C1\5219\8868\793A\76F8\540C\FF0C'),
'       DECODE(CONFIG_ID, NULL, 0, DECODE(CONFIG_ID, :P300_CONFIG, 0, 1)) REPEAT_FLG',
'FROM (SELECT CD.DEVICE_CODE,',
'             CD.DEVICE_NAME,',
'             CD.AREA_ID,',
'             FA.NAME                         AREA_NAME,',
'             CD.LINE_ID,',
'             FA2.NAME                        LINE_NAME,',
'             (SELECT CC.NAME',
'              FROM CHECK_CHANGE_LIBRARY_DEVICE LD',
'                       LEFT JOIN CHECK_CHANGE_LIBRARY CL ON LD.LIBRARY_ID = CL.LIBRARY_ID',
'                       LEFT JOIN CHECK_CHANGE_CONFIG CC ON CC.CONFIG_ID = CL.CONFIG_ID',
'              WHERE LD.TENANT_ID = :USERTENANT',
'                AND LD.BASE_DEPT_ID = :BASE_DEPT_ID',
'                AND LD.DEVICE_CODE = CD.DEVICE_CODE',
'                AND LD.DEL_FLAG = 0',
'                AND CL.AREA_ID = :P300_AREA',
'                AND CL.TENANT_ID = :USERTENANT',
'                AND CL.BASE_DEPT_ID = :BASE_DEPT_ID',
'                AND CL.DEL_FLAG = 0',
'                AND CC.TENANT_ID = :USERTENANT',
'                AND CC.BASE_DEPT_ID = :BASE_DEPT_ID',
'                AND CC.DEL_FLAG = 0',
'                AND CL.DEPT_ID = :P300_DEPT                ',
'              AND ROWNUM = 1  --wxx 2024-12-02',
'                ) RELATE_CONFIG,',
'             (SELECT CL.CONFIG_ID',
'              FROM CHECK_CHANGE_LIBRARY_DEVICE LD',
'                       LEFT JOIN CHECK_CHANGE_LIBRARY CL ON LD.LIBRARY_ID = CL.LIBRARY_ID',
'              WHERE LD.TENANT_ID = :USERTENANT',
'                AND LD.BASE_DEPT_ID = :BASE_DEPT_ID',
'                AND LD.DEVICE_CODE = CD.DEVICE_CODE',
'                AND LD.DEL_FLAG = 0',
'                AND CL.TENANT_ID = :USERTENANT',
'                AND CL.BASE_DEPT_ID = :BASE_DEPT_ID',
'                AND CL.DEL_FLAG = 0',
'                AND CL.DEPT_ID = :P300_DEPT                ',
'              AND ROWNUM = 1  --wxx 2024-12-02',
'                ) CONFIG_ID',
'      FROM CODE_DEVICE CD',
unistr('--     \533A\57DF'),
'               LEFT JOIN FND_AREAS FA ON CD.AREA_ID = FA.AREA_ID',
unistr('--     \4EA7\7EBF'),
'               LEFT JOIN FND_AREAS FA2 ON CD.LINE_ID = FA2.AREA_ID',
'            --    LEFT JOIN CHECK_CHANGE_LIBRARY_DEVICE LD ON CD.DEVICE_CODE = LD.DEVICE_CODE',
'            --    LEFT JOIN CHECK_CHANGE_LIBRARY CL ON LD.LIBRARY_ID = CL.LIBRARY_ID',
'            --    LEFT JOIN CHECK_CHANGE_CONFIG CC ON CC.CONFIG_ID = CL.CONFIG_ID',
'      WHERE CD.TENANT_ID = :USERTENANT',
'        AND CD.BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND CD.DEL_FLAG = 0',
'        AND FA.TENANT_ID = :USERTENANT',
'        AND FA.BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND FA.DEL_FLAG = 0',
'        AND FA.TYPE = 1',
'        AND FA2.TENANT_ID = :USERTENANT',
'        AND FA2.BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND FA2.DEL_FLAG = 0',
'        AND FA2.TYPE = 2',
'        AND CD.AREA_ID = :P300_AREA) ',
'        WHERE DEVICE_CODE NOT IN (SELECT DATA_VAL',
'      FROM JA_UTILS_PKG.SPLIT_STR(:P300_CODES_LIST, ''|''))',
'        ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P300_AREA,P300_CONFIG,P300_DEPT,P300_CODES_LIST'
,p_prn_page_header=>unistr('\5173\8054\8BBE\5907')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266244141695428393)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266245126252428394)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(266247168726428395)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\7EBF\522BID')
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
 p_id=>wwv_flow_imp.id(266248165253428395)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\533A\57DFID')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(266451972735409605)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(266452067337409606)
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
 p_id=>wwv_flow_imp.id(266452258730409608)
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
 p_id=>wwv_flow_imp.id(266779290195471226)
,p_name=>'RELATE_FLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELATE_FLG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5173\8054\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
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
 p_id=>wwv_flow_imp.id(266779448635471228)
,p_name=>'CONFIG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CONFIG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Config Id'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(266880083962879583)
,p_name=>'REPEAT_FLG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REPEAT_FLG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Repeat Flg'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>150
,p_value_alignment=>'RIGHT'
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
 p_id=>wwv_flow_imp.id(266880425747879587)
,p_name=>'RELATE_CONFIG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RELATE_CONFIG'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5173\8054\53D8\66F4\70B9\7C7B\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>1351
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(266242351163428391)
,p_internal_uid=>75755436825336311
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
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(266242721803428392)
,p_interactive_grid_id=>wwv_flow_imp.id(266242351163428391)
,p_static_id=>'757559'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(266242982867428392)
,p_report_id=>wwv_flow_imp.id(266242721803428392)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(190504392233403236)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(266779290195471226)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266244519223428393)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(266244141695428393)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266245569311428394)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(266245126252428394)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266247609479428395)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(266247168726428395)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266248611450428395)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(266248165253428395)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266483970561748378)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(266451972735409605)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266484910813748380)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(266452067337409606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266872194288827659)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(266779448635471228)
,p_is_visible=>false
,p_is_frozen=>false
,p_width=>64
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(266893377307227544)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(266880083962879583)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(267574141893240931)
,p_view_id=>wwv_flow_imp.id(266242982867428392)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(266880425747879587)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>186
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(266452742300409613)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(266452972507409615)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_button_name=>unistr('\786E\8BA4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\8BA4')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266776391341471197)
,p_name=>'P300_AREA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\533A\57DF')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266778645994471220)
,p_name=>'P300_CONFIG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5206\7C7B')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(266880178770879584)
,p_name=>'P300_REPEAT_FLG'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5173\8054\72B6\6001\FF08\662F\5426\5F39\51FA\5173\8054\63D0\9192\FF09')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(267679720913804326)
,p_name=>'P300_DEPT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\90E8\95E8')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268972821259596915)
,p_name=>'P300_CODES_LIST'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(268973218755596919)
,p_name=>'P300_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(266241895615428390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(266452529375409611)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(266241895615428390)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(266452685816409612)
,p_event_id=>wwv_flow_imp.id(266452529375409611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
unistr('//\5982\679C\8FD9\4E2ADEVICE_CODE\5B58\5728\548C\7528\6237\9009\4E2D\7684\4E0D\4E00\81F4\FF0C\90A3\4E48\5C31\63D0\793A\201C\5F53\524D\9009\62E9\8BBE\5907\5B58\5728\5DF2\88AB\5173\8054\8BBE\5907\FF0C\662F\5426\786E\5B9A\91CD\65B0\5173\8054\6B64\53D8\66F4\70B9\7C7B\522B\5217\8868\5185\FF1F\FF08\786E\5B9A/\53D6\6D88\FF09\201D'),
'map.set(''P300_CODE'',''DEVICE_CODE'');',
'utils.set(this.data,map);',
'',
'',
'var map=new Map();',
unistr('//\5982\679C\8FD9\4E2ADEVICE_CODE\5B58\5728\548C\7528\6237\9009\4E2D\7684\4E0D\4E00\81F4\FF0C\90A3\4E48\5C31\63D0\793A\201C\5F53\524D\9009\62E9\8BBE\5907\5B58\5728\5DF2\88AB\5173\8054\8BBE\5907\FF0C\662F\5426\786E\5B9A\91CD\65B0\5173\8054\6B64\53D8\66F4\70B9\7C7B\522B\5217\8868\5185\FF1F\FF08\786E\5B9A/\53D6\6D88\FF09\201D'),
'map.set(''P300_REPEAT_FLG'',''REPEAT_FLG'');',
'utils.set(this.data,map);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268973127436596918)
,p_event_id=>wwv_flow_imp.id(266452529375409611)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('plsql\66FF\6362\9017\53F7\4E3A|')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P300_CODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'REPLACE(:P300_CODE, '','', ''|'')'
,p_attribute_07=>'P300_CODE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(266453064123409616)
,p_name=>unistr('\786E\8BA4\8BBE\5907')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(266452972507409615)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(268973614301596922)
,p_event_id=>wwv_flow_imp.id(266453064123409616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\7A7A\6570\636E\65E0\6CD5\4FDD\5B58')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P300_CODE'')) { ',
unistr('    alert("\8BF7\9009\62E9\6570\636E");'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(266880281714879585)
,p_event_id=>wwv_flow_imp.id(266453064123409616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5224\65AD\662F\5426\8BBE\5907\5B58\5728\5DF2\88AB\5173\8054\8BBE\5907')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function containsOne(str) {  ',
unistr('  return !str.includes(''1''); // \6CE8\610F\8FD9\91CC\7684\903B\8F91\FF0C\4F7F\7528!\6765\53CD\8F6C\7ED3\679C  '),
'}  ',
'  ',
unistr('console.log(containsOne($v(''P300_REPEAT_FLG''))); // \8F93\51FA: false  \FF0C\5219\5B58\5728\91CD\590D'),
'if(!containsOne($v(''P300_REPEAT_FLG''))){',
unistr('if (confirm(''\5F53\524D\9009\62E9\8BBE\5907\5B58\5728\5DF2\88AB\5173\8054\8BBE\5907\FF0C\662F\5426\786E\5B9A\91CD\65B0\5173\8054\6B64\53D8\66F4\70B9\7C7B\522B\5217\8868\5185\FF1F\FF08\786E\5B9A/\53D6\6D88\FF09'')) {'),
'    return true;',
'} else {',
'    return false;',
'}',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(266453176885409617)
,p_event_id=>wwv_flow_imp.id(266453064123409616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
,p_attribute_01=>'P300_CODE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(266452386627409609)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(266241895615428390)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5173\8054\8BBE\5907 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75965472289317529
);
wwv_flow_imp.component_end;
end;
/

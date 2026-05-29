prompt --application/pages/page_00223
begin
--   Manifest
--     PAGE: 00223
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
 p_id=>223
,p_name=>unistr('\6210\5458\7BA1\7406')
,p_alias=>unistr('\6210\5458\7BA1\74061')
,p_step_title=>unistr('\6210\5458\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758151903284732)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11397790443962479537)
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
 p_id=>wwv_flow_imp.id(11397791002576479539)
,p_plug_name=>unistr('\6210\5458\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ur.USER_ROLE_ID,',
'       ur.USER_ID,',
'       u.USER_NAME,',
'       ur.ROLE_ID,',
'       r.ROLE_NAME,',
'       ur.REMARK,',
'       ur.IS_ENABLE,',
'       ur.TENANT_ID,',
'       ur.CREATED_BY,',
'       ur.CREATION_DATE,',
'       ur.UPDATED_BY,',
'       ur.UPDATE_DATE',
'FROM STS_USER_ROLE ur',
'         left join STS_ROLE R on r.ROLE_ID = ur.ROLE_ID and r.DEL_FLAG = 0 and r.TENANT_ID = :USER_TENANT',
'         left join STS_USER u on ur.USER_ID = u.EXT_USER_ID and u.DEL_FLAG = 0 and u.TENANT_ID = :USER_TENANT',
'         left join BASIC_USER bu on bu.USER_ID = ur.USER_ID and bu.DEL_FLAG = 0 and bu.TENANT_ID = :USER_TENANT',
'WHERE ur.ROLE_ID = :P223_ROLE_ID',
'  and ur.TENANT_ID = :USER_TENANT',
'  and ur.DEL_FLAG = 0',
'  and (NVL(r.ROLE_TYPE, ''VIEW_REPORT'') <> ''BUSINESS_ADMIN''',
'       OR EXISTS (SELECT 1',
'                  FROM STS_SCOPE sb',
'                  WHERE sb.REFERENCE_TYPE = ''SYSTEM''',
'                    AND TO_CHAR(sb.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'                    AND sb.PERMISSIONS_TYPE = ''MANAGE''',
'                    AND sb.RANGE_TYPE = ''USER''',
'                    AND sb.RANGE_ID = NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID))));'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P223_ROLE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6210\5458\7BA1\7406')
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
 p_id=>wwv_flow_imp.id(3775794791516430344)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6210\5458')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
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
 p_id=>wwv_flow_imp.id(3775794921673430345)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
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
 p_id=>wwv_flow_imp.id(3775795015110430346)
,p_name=>'UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATE_DATE'
,p_data_type=>'DATE'
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
 p_id=>wwv_flow_imp.id(10807943715506917095)
,p_name=>'ROLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\89D2\8272\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
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
 p_id=>wwv_flow_imp.id(11397760675601879609)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
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
 p_id=>wwv_flow_imp.id(11397792273907479543)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397792859801479544)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397794819330479547)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397796806519479548)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397797858769479549)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\662F\5426\542F\7528')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(9796113710683516011)
,p_lov_display_extra=>true
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397798789559479549)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USER_TENANT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397799856687479550)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11397801838212479551)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USER_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11399491237983275819)
,p_name=>'USER_ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(11400368032624217544)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" onclick="btnClick(''modify'',''&USER_ROLE_ID.'')" style="text-dcoration:none;">',
    unistr('		\7F16\8F91'),
    '	</a>',
    '    &nbsp;',
    '	<a href="#" onclick="btnClick(''delete'',''&USER_ROLE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(11397791470302479540)
,p_internal_uid=>8073405932295373803
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
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(11397791929745479541)
,p_interactive_grid_id=>wwv_flow_imp.id(11397791470302479540)
,p_static_id=>'2885754'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(11397792157810479542)
,p_report_id=>wwv_flow_imp.id(11397791929745479541)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3776674105216991228)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3775794791516430344)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3776674985537991231)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3775794921673430345)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3776675879844991234)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3775795015110430346)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10808453838045077166)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10807943715506917095)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397793178628479545)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(11397792859801479544)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397795170721479548)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(11397794819330479547)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397797251681479549)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(11397796806519479548)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397798187296479549)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(11397797858769479549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397799163050479550)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(11397798789559479549)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397800196358479550)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(11397799856687479550)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397802229478479551)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(11397801838212479551)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11397814105738287021)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(11397760675601879609)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11399586197253592710)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(11399491237983275819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(11402085858910560444)
,p_view_id=>wwv_flow_imp.id(11397792157810479542)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(11400368032624217544)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776592460283680419)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_button_name=>unistr('\65B0\589E')
,p_button_static_id=>'btn_insert'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::P224_ROLE_ID:&P223_ROLE_ID.'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776592887219680419)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_button_name=>unistr('\4FEE\6539')
,p_button_static_id=>'btn_modify'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776593302319680419)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776593659156680420)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_button_name=>unistr('\6279\91CF\542F\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\542F\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776594087060680420)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_button_name=>unistr('\6279\91CF\7981\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\7981\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3776607217607680425)
,p_branch_name=>unistr('\4FEE\6539-\8DF3\8F6C\5230\9875224')
,p_branch_action=>'f?p=&APP_ID.:224:&SESSION.::&DEBUG.::P224_USER_ROLE_ID,P224_USER_IDS:&P223_USER_ROLE_ID.,&P223_USER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10824940347604717338)
,p_name=>'P223_ROLE_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11397980647006879643)
,p_name=>'P223_USER_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11397980709587879644)
,p_name=>'P223_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11398689911023835461)
,p_name=>'P223_USER_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11398690066605835462)
,p_name=>'P223_ROLE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11399712774088275869)
,p_name=>'P223_OPERATION_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11397791002576479539)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776597236805680421)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776597655767680422)
,p_event_id=>wwv_flow_imp.id(3776597236805680421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P223_USER_ROLE_ID'', ''USER_ROLE_ID'');',
'map.set(''P223_USER_ID'', ''USER_ID'');',
'utils.set(this.data, map);',
'',
unistr('// console.log(''\884C\9009\4E2D\FF1A'' + $v(''P223_USER_ROLE_ID''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776598058385680422)
,p_name=>unistr('\70B9\51FB\4FEE\6539')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776592887219680419)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P223_USER_ROLE_ID'')) && $v(''P223_USER_ROLE_ID'').split('','').length == 1'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776598548530680422)
,p_event_id=>wwv_flow_imp.id(3776598058385680422)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_USER_ROLE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\4FEE\6539\7684\6570\636E'');'),
'    return false;',
'}',
'',
'$v(''P223_USER_ROLE_ID'').split('','');',
'',
'if ($v(''P223_USER_ROLE_ID'').split('','').length > 1) {',
unistr('    alert(''\53EA\80FD\4FEE\6539\5355\6761\6570\636E'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776599125332680422)
,p_event_id=>wwv_flow_imp.id(3776598058385680422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P224_USER_ROLE_ID'', :P223_USER_ROLE_ID);',
'end;'))
,p_attribute_02=>'P223_USER_ROLE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776599580675680422)
,p_event_id=>wwv_flow_imp.id(3776598058385680422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776599941907680422)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776593302319680419)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776600476802680423)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\524D\9A8C\8BC1')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_USER_ROLE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
unistr('    // if (confirm(''\786E\5B9A\8981\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    // } else {',
'    //     return false;',
'    // }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458831451598927)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776600973784680423)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT NUMBER;',
'    V_ERR_MSG VARCHAR2(1000);',
'      /**',
'     * CREATE BY: wxx',
'     * CREATE DATE: 2024/7/22 13:55',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \7528\6237\89D2\8272-\6279\91CF\5220\9664\64CD\4F5C'),
'     */',
'BEGIN',
'',
unistr('-- \5220\9664\7528\6237\89D2\8272\8868'),
'    DELETE FROM STS_SCOPE s',
'     WHERE s.REFERENCE_TYPE = ''SYSTEM''',
'       AND s.PERMISSIONS_TYPE = ''MANAGE''',
'       AND s.RANGE_TYPE = ''USER''',
'       AND EXISTS (SELECT 1',
'              FROM STS_USER_ROLE ur',
'                       JOIN STS_ROLE r',
'                            ON r.ROLE_ID = ur.ROLE_ID',
'                                AND r.TENANT_ID = ur.TENANT_ID',
'                       LEFT JOIN BASIC_USER bu',
'                                 ON bu.USER_ID = ur.USER_ID',
'                                     AND bu.TENANT_ID = ur.TENANT_ID',
'                                     AND NVL(bu.DEL_FLAG, 0) = 0',
'             WHERE ur.USER_ROLE_ID IN (SELECT DATA_VAL',
'                                         FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '','')))',
'               AND ur.TENANT_ID = :USER_TENANT',
'               AND NVL(r.DEL_FLAG, 0) = 0',
'               AND r.ROLE_TYPE = ''BUSINESS_ADMIN''',
'               AND s.ROLE_ID = ur.ROLE_ID',
'               AND s.RANGE_ID = NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID)));',
'',
'    UPDATE STS_USER_ROLE',
'       SET DEL_FLAG = 1,',
'           UPDATE_DATE = SYSDATE,',
'           UPDATED_BY = :USER_ID',
'     WHERE USER_ROLE_ID IN (SELECT DATA_VAL FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID,'','')));',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'',V_ROW_COUNT);',
'',
unistr('--\5F02\5E38\5904\7406'),
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS||'':''||:APP_PAGE_ID||'':\8D26\6237\5220\9664'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
'        APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'',-1);',
'        ROLLBACK;',
'END;'))
,p_attribute_02=>'P223_USER_ROLE_ID'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337920467450122484)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT NUMBER;',
'    V_ERR_MSG VARCHAR2(1000);',
'    V_NEW_USERS NVARCHAR2(2000);',
'    V_RESULT    VARCHAR2(4000);',
'    V_JSON      CLOB;',
'    V_ROLE_NAME VARCHAR2(100);',
'    V_USER_ROLE_ID NVARCHAR2(100);',
'    V_USER_NAME NVARCHAR2(255);',
'    CURSOR C_USER_ROLE_IDS IS',
'        SELECT DATA_VAL',
'        FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '',''));',
'    /**',
'     * CREATE BY: wxx',
'     * CREATE DATE: 2024/7/22 13:55',
'     * MODIFY BY:wxx                  wxx   ',
'     * MODIFY DATE:2025/4/27 15:38    2025/4/28 14:58',
unistr('     * DESCRIBE: \7528\6237\89D2\8272-\6279\91CF\5220\9664\64CD\4F5C   for\5FAA\73AF\5B58\5165'),
'     */',
'BEGIN',
unistr('    -- \521D\59CB\5316\884C\6570'),
'    V_ROW_COUNT := 0;',
'',
unistr('    -- \904D\5386\6BCF\4E2A USER_ROLE_ID'),
'    FOR REC IN C_USER_ROLE_IDS LOOP',
'        V_USER_ROLE_ID := REC.DATA_VAL;',
'',
unistr('        -- \83B7\53D6\7528\6237\540D\79F0'),
'        SELECT SU.USER_NAME || ''-'' || SU.JOB_NUMBER',
'        INTO V_USER_NAME',
'        FROM STS_USER SU',
'        JOIN STS_USER_ROLE SUR ON SU.EXT_USER_ID = SUR.USER_ID',
'        WHERE SUR.USER_ROLE_ID = V_USER_ROLE_ID',
'          AND SU.DEL_FLAG = 0',
'          AND SU.TENANT_ID = :user_tenant;',
'',
unistr('        -- \5220\9664\5355\4E2A\7528\6237\89D2\8272\8BB0\5F55'),
'        DELETE FROM STS_SCOPE s',
'         WHERE s.REFERENCE_TYPE = ''SYSTEM''',
'           AND s.PERMISSIONS_TYPE = ''MANAGE''',
'           AND s.RANGE_TYPE = ''USER''',
'           AND EXISTS (SELECT 1',
'                  FROM STS_USER_ROLE ur',
'                           JOIN STS_ROLE r',
'                                ON r.ROLE_ID = ur.ROLE_ID',
'                                    AND r.TENANT_ID = ur.TENANT_ID',
'                           LEFT JOIN BASIC_USER bu',
'                                     ON bu.USER_ID = ur.USER_ID',
'                                         AND bu.TENANT_ID = ur.TENANT_ID',
'                                         AND NVL(bu.DEL_FLAG, 0) = 0',
'                 WHERE ur.USER_ROLE_ID = V_USER_ROLE_ID',
'                   AND ur.TENANT_ID = :USER_TENANT',
'                   AND NVL(r.DEL_FLAG, 0) = 0',
'                   AND r.ROLE_TYPE = ''BUSINESS_ADMIN''',
'                   AND s.ROLE_ID = ur.ROLE_ID',
'                   AND s.RANGE_ID = NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID)));',
'',
'        UPDATE STS_USER_ROLE',
'        SET DEL_FLAG = 1,',
'            UPDATE_DATE = SYSDATE,',
'            UPDATED_BY = :USER_ID',
'        WHERE USER_ROLE_ID = V_USER_ROLE_ID;',
'',
unistr('                    -- \7D2F\52A0\66F4\65B0\7684\884C\6570'),
'            V_ROW_COUNT := V_ROW_COUNT + SQL%ROWCOUNT;',
'',
unistr('        -- \68C0\67E5UPDATE\662F\5426\5F71\54CD\4E86\884C'),
'        IF SQL%ROWCOUNT > 0 THEN',
unistr('            -- \5199\5165\65E5\5FD7'),
'            V_JSON := ''{',
'                "current_name": "",',
'                "old_name": "",',
'                "new_name": "",',
'                "permission_type": "'' || :P223_ROLE_NAME || ''",',
'                "user_ids": " '' || V_USER_NAME || '' ",',
'                "dept_ids": "",',
'                "range_content": ""',
'            }'';',
'            V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                P_MODULE_CODE => ''PERMISSION'',',
'                P_OPERATION_CODE => ''PER'',',
'                P_BEHAVIOR_CODE => ''DELETE'',',
'                P_ENTITY_ID => TO_NUMBER(V_USER_ROLE_ID),',
'                P_EXTRA_PARAMS => V_JSON,',
'                P_APP_ID => :APP_ID,',
'                P_TENANT_ID => :USER_TENANT,',
'                P_SYS_USER_ID => :MPF_USER_ID',
'            );',
'',
'        ELSE',
unistr('            -- \8BB0\5F55UPDATE\672A\5F71\54CD\884C\7684\60C5\51B5'),
unistr('            JA_WRITE_LOG(''UPDATE\672A\5F71\54CD\884C'', ''DEBUG'', ''USER_ROLE_ID:'' || V_USER_ROLE_ID, :USER_ID, :USER_TENANT, ''\8D26\6237\5220\9664'', :APP_ID, :APP_CODE);'),
'        END IF;',
'    END LOOP;',
'',
unistr('    -- \8BBE\7F6E\4F1A\8BDD\72B6\6001'),
'    APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'',
unistr('-- \5F02\5E38\5904\7406'),
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\8D26\6237\5220\9664'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);'),
'        APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', -1);',
'        ROLLBACK;',
'END;'))
,p_attribute_02=>'P223_USER_ROLE_ID'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776601471905680423)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5220\9664\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P223_ROW_COUNT'')>0){',
unistr('    alert(''\5220\9664\6210\529F'');'),
'}else{',
unistr('    alert(''\5220\9664\5931\8D25'');    '),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776601952529680423)
,p_event_id=>wwv_flow_imp.id(3776599941907680422)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776602410952680423)
,p_name=>unistr('\5237\65B0\7F51\683C')
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776602911775680423)
,p_event_id=>wwv_flow_imp.id(3776602410952680423)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776603317181680424)
,p_name=>unistr('\6267\884C\542F\7528')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776593659156680420)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776603833028680424)
,p_event_id=>wwv_flow_imp.id(3776603317181680424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\81F3\5C11\9009\4E2D\4E00\6761\8BB0\5F55')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_USER_ROLE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E'');'),
'    return false;',
'} else {',
unistr('    // if (confirm(''\786E\5B9A\542F\7528\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    // } else {',
'    //     return false;',
'    // }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337458923439598928)
,p_event_id=>wwv_flow_imp.id(3776603317181680424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\542F\7528\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776604331763680424)
,p_event_id=>wwv_flow_imp.id(3776603317181680424)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(10) := 0;',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/7/22 17:55',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:P223 \7528\6237-\6279\91CF\542F\7528'),
'     */',
'BEGIN',
'',
'UPDATE STS_USER_ROLE',
'SET IS_ENABLE   =1,',
'    UPDATED_BY=:USER_ID,',
'    UPDATE_DATE=SYSDATE',
'WHERE USER_ROLE_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '',''))',
'  AND TENANT_ID = :USER_TENANT',
'AND DEL_FLAG = 0;',
'',
'V_ROW_COUNT := SQL%ROWCOUNT;',
'',
'INSERT INTO STS_SCOPE(REFERENCE_ID, REFERENCE_TYPE, USER_ID, SOURCE_USER_ID, PERMISSIONS_TYPE,',
'                      ROLE_ID, CREATED_BY, CREATION_DATE, UPDATED_BY, UPDATE_DATE, RANGE_TYPE, RANGE_ID)',
'SELECT TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')),',
'       ''SYSTEM'',',
'       :MPF_USER_ID,',
'       :MPF_USER_ID,',
'       ''MANAGE'',',
'       ur.ROLE_ID,',
'       :MPF_USER_ID,',
'       SYSDATE,',
'       :MPF_USER_ID,',
'       SYSDATE,',
'       ''USER'',',
'       NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID))',
'  FROM STS_USER_ROLE ur',
'           JOIN STS_ROLE r',
'                ON r.ROLE_ID = ur.ROLE_ID',
'                    AND r.TENANT_ID = ur.TENANT_ID',
'                    AND NVL(r.DEL_FLAG, 0) = 0',
'           LEFT JOIN BASIC_USER bu',
'                     ON bu.USER_ID = ur.USER_ID',
'                         AND bu.TENANT_ID = ur.TENANT_ID',
'                         AND NVL(bu.DEL_FLAG, 0) = 0',
' WHERE ur.USER_ROLE_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '',''))',
'   AND ur.TENANT_ID = :USER_TENANT',
'   AND NVL(ur.DEL_FLAG, 0) = 0',
'   AND NVL(ur.IS_ENABLE, 0) = 1',
'   AND r.ROLE_TYPE = ''BUSINESS_ADMIN''',
'   AND NOT EXISTS (SELECT 1',
'          FROM STS_SCOPE s',
'         WHERE s.REFERENCE_TYPE = ''SYSTEM''',
'           AND TO_CHAR(s.REFERENCE_ID) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'           AND s.PERMISSIONS_TYPE = ''MANAGE''',
'           AND s.RANGE_TYPE = ''USER''',
'           AND s.ROLE_ID = ur.ROLE_ID',
'           AND s.RANGE_ID = NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID)));',
'',
'',
' V_ROW_COUNT := V_ROW_COUNT + SQL%ROWCOUNT;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237\7BA1\7406-\6279\91CF\542F\7528'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'END;'))
,p_attribute_02=>'P223_USER_ROLE_ID,P223_ROW_COUNT'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776604788289680424)
,p_event_id=>wwv_flow_imp.id(3776603317181680424)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P223_ROW_COUNT'') > 0) {',
unistr('    alert(''\542F\7528\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\542F\7528\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337870127077353991)
,p_event_id=>wwv_flow_imp.id(3776603317181680424)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776605213804680424)
,p_name=>unistr('\6267\884C\7981\7528')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776594087060680420)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776605649671680424)
,p_event_id=>wwv_flow_imp.id(3776605213804680424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\81F3\5C11\9009\4E2D\4E00\6761\8BB0\5F55')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_USER_ROLE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\7981\7528\7684\6570\636E'');'),
'    return false;',
'} else {',
unistr('    // if (confirm(''\786E\5B9A\7981\7528\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    // } else {',
'    //     return false;',
'    // }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337868912090353979)
,p_event_id=>wwv_flow_imp.id(3776605213804680424)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\7981\7528\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776606149727680425)
,p_event_id=>wwv_flow_imp.id(3776605213804680424)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(10) := 0;',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/7/22 17:55',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:P223 \7528\6237-\6279\91CF\7981\7528'),
'     */',
'BEGIN',
'',
'UPDATE STS_USER_ROLE',
'SET IS_ENABLE   =0,',
'    UPDATED_BY=:USER_ID,',
'    UPDATE_DATE=SYSDATE',
'WHERE USER_ROLE_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '',''))',
'  AND TENANT_ID = :USER_TENANT',
'AND DEL_FLAG = 0;',
'',
'V_ROW_COUNT := SQL%ROWCOUNT;',
'',
'DELETE FROM STS_SCOPE s',
' WHERE s.REFERENCE_TYPE = ''SYSTEM''',
'   AND s.PERMISSIONS_TYPE = ''MANAGE''',
'   AND s.RANGE_TYPE = ''USER''',
'   AND EXISTS (SELECT 1',
'          FROM STS_USER_ROLE ur',
'                   JOIN STS_ROLE r',
'                        ON r.ROLE_ID = ur.ROLE_ID',
'                            AND r.TENANT_ID = ur.TENANT_ID',
'                   LEFT JOIN BASIC_USER bu',
'                             ON bu.USER_ID = ur.USER_ID',
'                                 AND bu.TENANT_ID = ur.TENANT_ID',
'                                 AND NVL(bu.DEL_FLAG, 0) = 0',
'         WHERE ur.USER_ROLE_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P223_USER_ROLE_ID, '',''))',
'           AND ur.TENANT_ID = :USER_TENANT',
'           AND NVL(r.DEL_FLAG, 0) = 0',
'           AND r.ROLE_TYPE = ''BUSINESS_ADMIN''',
'           AND s.ROLE_ID = ur.ROLE_ID',
'           AND s.RANGE_ID = NVL(bu.UNION_ID, TO_CHAR(ur.USER_ID)));',
'',
'',
' V_ROW_COUNT := V_ROW_COUNT + SQL%ROWCOUNT;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237\7BA1\7406-\6279\91CF\7981\7528'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,'),
'                     :APP_NAME,:APP_ID,:APP_CODE);',
'END;'))
,p_attribute_02=>'P223_USER_ROLE_ID'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776606726199680425)
,p_event_id=>wwv_flow_imp.id(3776605213804680424)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P223_ROW_COUNT'') > 0) {',
unistr('    alert(''\7981\7528\6210\529F\FF01'');'),
'    return true;',
unistr('    // // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    // apex.navigation.redirect("f?p=&APP_ID.:83:&APP_SESSION.");',
'',
'} else {',
unistr('    alert(''\7981\7528\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337870264832353992)
,p_event_id=>wwv_flow_imp.id(3776605213804680424)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776596409819680421)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11397791002576479539)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\7528\6237-\89D2\8272\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452210871812574684
);
wwv_flow_imp.component_end;
end;
/

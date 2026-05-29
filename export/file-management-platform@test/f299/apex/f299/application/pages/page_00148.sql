prompt --application/pages/page_00148
begin
--   Manifest
--     PAGE: 00148
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
 p_id=>148
,p_name=>unistr('\5386\53F2\7248\672C')
,p_alias=>unistr('\5386\53F2\7248\672C')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5386\53F2\7248\672C')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
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
'}',
''))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3795113635806435732)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3795113794905435734)
,p_plug_name=>unistr('\6587\4EF6\5939\8BE6\7EC6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    f.FILE_ID,',
'    f.ROOT_FOLDER_ID,',
'    f.PARENT_FOLDER_ID,',
'    f.FILE_NAME,',
'    f.FILE_FORMAT,',
'--     f.FILE_STATUS,',
unistr('decode(f.PLANS_FILE_TYPE, null, ''\2014\2014'', ''NEVER'', ''\6C38\4E0D\5F52\6863'', ''IMMEDIATELY'', ''\5DF2\5F52\6863'', ''ONE_YEAR_LATER'','),
unistr('              ''1\5E74\540E\FF08'' || TO_CHAR(PLANS_FILE_DATE, ''YYYY-MM-DD HH24:MI'') || '')'''),
unistr('           , ''TWO_YEAR_LATER'', ''2\5E74\540E\FF08'' || TO_CHAR(PLANS_FILE_DATE, ''YYYY-MM-DD HH24:MI'') || '')'', ''THREE_YEAR_LATER'','),
unistr('              ''3\5E74\540E\FF08'' || TO_CHAR(PLANS_FILE_DATE, ''YYYY-MM-DD HH24:MI'') || '')'') AS   FILE_STATUS,'),
'    f.FILE_TYPE,',
'    f.PLANS_FILE_TYPE,',
'--     NVL(f.UPDATE_DATE, f.CREATION_DATE) as LAST_MODIFIED_DATE,',
'    TO_CHAR(f.CREATION_DATE, ''YYYY-MM-DD HH24:MI:SS'') as LAST_MODIFIED_DATE,',
'    f.CREATED_BY as LAST_UPDATE_BY,',
'    CASE',
'        WHEN f.FILE_STATUS = ''ARCHIVE'' THEN ''--''',
'        WHEN f.FILE_STATUS = ''NORMAL'' AND f.PLANS_FILE_DATE IS NOT NULL',
'            THEN TO_CHAR(f.PLANS_FILE_DATE, ''YYYY-MM-DD HH24:MI'')',
'        ELSE ''--''',
'    END as PLANS_FILE_DATE_DISPLAY,',
'    f.SCOPE_TYPE,',
'    CASE',
unistr('        WHEN f.FILE_ID = :P148_FILE_ID THEN ''\5F53\524D\9009\4E2D\7248\672C'''),
unistr('        ELSE ''\5386\53F2\7248\672C'''),
'    END AS VERSION_STATUS,',
'    '''' AS OPERATE_COLUMN',
'from STS_FILE f',
'where f.TENANT_ID = :USER_TENANT',
'  AND f.DEL_FLAG = 0',
'  AND f.FILE_VERSION_TAG = (',
'      select FILE_VERSION_TAG',
'      from STS_FILE',
'      where DEL_FLAG = 0',
'        and TENANT_ID = :USER_TENANT',
'        and FILE_ID = :P148_FILE_ID',
'  )',
';'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P148_FILE_ID'
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
 p_id=>wwv_flow_imp.id(3341716229737712281)
,p_name=>'LAST_MODIFIED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_MODIFIED_DATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\66F4\65B0\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
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
 p_id=>wwv_flow_imp.id(3341716335374712282)
,p_name=>'PLANS_FILE_DATE_DISPLAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANS_FILE_DATE_DISPLAY'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(3341716388761712283)
,p_name=>'OPERATE_COLUMN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE_COLUMN'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<!-- <a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''versions'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5386\53F2\7248\672C'),
    '	</a>',
    '	&nbsp; -->',
    '	<a href="#" onclick="btnClick(''rename'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\91CD\547D\540D'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" class=''is_modify_&IS_HIDE.'' onclick="btnClick(''pigeonhole'',''&FILE_ID.'')" style="text-dcoration:none;">',
    unistr('		\5F52\6863\8BBE\7F6E'),
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
 p_id=>wwv_flow_imp.id(3341716630689712285)
,p_name=>'LAST_UPDATE_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3777950784587504271)
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3341855657054835098)
,p_name=>'VERSION_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VERSION_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7248\672C\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>18
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
 p_id=>wwv_flow_imp.id(3810242616791264499)
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
 p_id=>wwv_flow_imp.id(3810242735675264500)
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
 p_id=>wwv_flow_imp.id(3810242837944264501)
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
 p_id=>wwv_flow_imp.id(3810242946346264502)
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
 p_id=>wwv_flow_imp.id(3810243002697264503)
,p_name=>'FILE_FORMAT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_FORMAT'
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
 p_id=>wwv_flow_imp.id(3810243127504264504)
,p_name=>'FILE_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3341730231375881566)
,p_lov_display_extra=>true
,p_lov_display_null=>false
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
 p_id=>wwv_flow_imp.id(3810243206753264505)
,p_name=>'FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FILE_TYPE'
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
 p_id=>wwv_flow_imp.id(3810243335499264506)
,p_name=>'PLANS_FILE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLANS_FILE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
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
 p_id=>wwv_flow_imp.id(3810243481294264508)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
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
 p_id=>wwv_flow_imp.id(3810243877153264512)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3810243990676264513)
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
 p_id=>wwv_flow_imp.id(3810242487393264498)
,p_internal_uid=>937637515517918220
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
 p_id=>wwv_flow_imp.id(3810272450717328610)
,p_interactive_grid_id=>wwv_flow_imp.id(3810242487393264498)
,p_static_id=>'4686437'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3810272661466328612)
,p_report_id=>wwv_flow_imp.id(3810272450717328610)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341631036559072356)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3810243877153264512)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>91.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341736037597117975)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3341716229737712281)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>150
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341736959292117978)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3341716335374712282)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>160
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341737808815117983)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3341716388761712283)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>128
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341742846528204289)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3341716630689712285)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>133.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3342205427039157336)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3341855657054835098)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>121.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810273189787328631)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3810242616791264499)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810274142834328637)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3810242735675264500)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810275007019328639)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3810242837944264501)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810275872170328642)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3810242946346264502)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>278
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810276825220328644)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3810243002697264503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810277692653328646)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3810243127504264504)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>193.5
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810278605039328649)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3810243206753264505)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810279473269328651)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3810243335499264506)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3810281280734328655)
,p_view_id=>wwv_flow_imp.id(3810272661466328612)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3810243481294264508)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341629915062044388)
,p_button_sequence=>190
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
 p_id=>wwv_flow_imp.id(3341630339105044388)
,p_button_sequence=>200
,p_button_name=>unistr('\5F52\6863\8BBE\7F6E')
,p_button_static_id=>'btn_pigeonhole'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\5F52\6863\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341630736707044388)
,p_button_sequence=>210
,p_button_name=>unistr('\6743\9650\8BBE\7F6E')
,p_button_static_id=>'btn_settings'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6743\9650\8BBE\7F6E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341631123877044388)
,p_button_sequence=>270
,p_button_name=>unistr('\6587\4EF6\9884\89C8')
,p_button_static_id=>'btn_preview'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\6587\4EF6\9884\89C8')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'hide_btn ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341632987603044389)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3795113635806435732)
,p_button_name=>unistr('\91CD\8BBE\5F52\6863\8BA1\5212')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\91CD\8BBE\5F52\6863\8BA1\5212')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:141:&SESSION.::&DEBUG.:141:P141_FILE_ID:&P148_FILE_ID.'
,p_button_css_classes=>'ja-bpoint-btn'
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341632598672044389)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3795113635806435732)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341653128813044438)
,p_branch_name=>unistr('\91CD\547D\540D-\8F6C\5230\9875 135')
,p_branch_action=>'f?p=&APP_ID.:135:&SESSION.::&DEBUG.:135:P135_FILE_ID,P135_ROOT_FOLDER_ID:&P148_FILE_ID.,&P148_ROOT_FOLDER_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341629915062044388)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341653940202044438)
,p_branch_name=>unistr('\5F52\6863\8BBE\7F6E-\8F6C\5230\9875 143')
,p_branch_action=>'f?p=&APP_ID.:143:&SESSION.::&DEBUG.:143:P143_FILE_ID:&P148_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(3341630339105044388)
,p_branch_sequence=>40
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3341856434045835106)
,p_branch_name=>unistr('\6587\4EF6\9884\89C8-\8F6C\5230\9875 137')
,p_branch_action=>'f?p=&APP_ID.:137:&SESSION.::&DEBUG.:137:P137_FILE_ID:&P148_FILE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>50
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P148_PAGE'
,p_branch_condition_text=>'137'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341716091074712280)
,p_name=>'P148_FILE_VERSION_TAG'
,p_item_sequence=>250
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FILE_VERSION_TAG from STS_FILE',
'where DEL_FLAG = 0',
'and TENANT_ID = :USER_TENTMT',
'and FILE_ID = :P148_FILE_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341718395717712303)
,p_name=>'P148_ROW_COUNT'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810255196207264528)
,p_name=>'P148_ROOT_FOLDER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810255280442264529)
,p_name=>'P148_PARENT_FOLDER_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810256344567264540)
,p_name=>'P148_FILE_ID'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810472663643023842)
,p_name=>'P148_FILE_PATH'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810473158241023847)
,p_name=>'P148_FILE_LEVEL'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810473724980023853)
,p_name=>'P148_FILE_TYPE'
,p_item_sequence=>230
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810474317086023859)
,p_name=>'P148_PAGE'
,p_item_sequence=>240
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341645023662044429)
,p_name=>unistr('\6587\4EF6\5939\8BE6\7EC6\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_PARENT_FOLDER_ID'
,p_condition_element=>'P148_PARENT_FOLDER_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341645507265044429)
,p_event_id=>wwv_flow_imp.id(3341645023662044429)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3795113794905435734)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341646047512044430)
,p_event_id=>wwv_flow_imp.id(3341645023662044429)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_FILE_PATH,P148_FILE_LEVEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT FILE_PATH,FILE_LEVEL',
'FROM STS_FILE',
'WHERE FILE_ID =:P148_PARENT_FOLDER_ID;'))
,p_attribute_07=>'P148_PARENT_FOLDER_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341646538264044430)
,p_event_id=>wwv_flow_imp.id(3341645023662044429)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P148_FILE_PATH''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341649801976044436)
,p_name=>unistr('\5237\65B0\62A5\8868\548C\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341650822487044437)
,p_event_id=>wwv_flow_imp.id(3341649801976044436)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3795113794905435734)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341646909173044434)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341631123877044388)
,p_condition_element=>'P148_FILE_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'FOLDER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341647425496044434)
,p_event_id=>wwv_flow_imp.id(3341646909173044434)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_PARENT_FOLDER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT :P148_FILE_ID FROM DUAL;'
,p_attribute_07=>'P148_FILE_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341649450942044436)
,p_event_id=>wwv_flow_imp.id(3341646909173044434)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P148_PAGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'137'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341648922767044436)
,p_event_id=>wwv_flow_imp.id(3341646909173044434)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341856350605835105)
,p_event_id=>wwv_flow_imp.id(3341646909173044434)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3795113794905435734)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341651219796044437)
,p_name=>unistr('\6821\9A8C\5C42\7EA7')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P148_FILE_LEVEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341718002452712299)
,p_name=>unistr('\5220\9664\9009\4E2D\6587\4EF6\5230\56DE\6536\7AD9')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341632598672044389)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341718147622712300)
,p_event_id=>wwv_flow_imp.id(3341718002452712299)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P148_FILE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'} else {',
'        return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341718206670712301)
,p_event_id=>wwv_flow_imp.id(3341718002452712299)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341718333424712302)
,p_event_id=>wwv_flow_imp.id(3341718002452712299)
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
'     * create date:2025/5/23 15:27',
'     * modify by:',
'     * modify date:',
unistr('     * describe:p148 \5220\9664\6570\636E\81F3\56DE\6536\7AD9'),
'     */',
'begin',
'        update STS_FILE',
'        set DEL_FLAG     = -1,',
'            UPDATED_BY  = :MPF_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where FILE_ID = :P148_FILE_ID',
'        and TENANT_ID = :USER_TENANT',
'        and DEL_FLAG = 0;',
'   v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P148_ROW_COUNT'', v_row_count);',
'',
'exception',
'    when others then',
'  rollback;',
'        apex_util.set_session_state(''P148_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' ||  :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,',
'                    :APP_NAME , :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P148_FILE_ID'
,p_attribute_03=>'P148_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341718556971712304)
,p_event_id=>wwv_flow_imp.id(3341718002452712299)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P148_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F\FF01'');'),
'    return true;',
'',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341718664568712305)
,p_event_id=>wwv_flow_imp.id(3341718002452712299)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3795113794905435734)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3341641048514044423)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3795113794905435734)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6587\4EF6\5939\8BE6\7EC6 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>469036076638698145
);
wwv_flow_imp.component_end;
end;
/

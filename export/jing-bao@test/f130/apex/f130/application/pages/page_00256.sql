prompt --application/pages/page_00256
begin
--   Manifest
--     PAGE: 00256
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
 p_id=>256
,p_name=>unistr('\70B9\68C0\8BA1\5212')
,p_alias=>unistr('\70B9\68C0\8BA1\5212')
,p_step_title=>unistr('\70B9\68C0\8BA1\5212')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \6A21\5757\914D\7F6E\3001\4FEE\6539'),
'function btnClick(name, objId, isEnable) {',
'    if (name == ''modify'') {',
'        $s(''P256_PLAN_ID'', objId);',
'    } else {',
'        $s(''P256_PLAN_ID'', objId);',
'        $s(''P256_PLAN_IDS'', objId);',
'    }',
'    if (isEnable == 1) {',
unistr('        //\8BBE\4E3A\7981\7528'),
unistr('        $(''#row_'' + objId).text(''\7981\7528'');'),
'    } else {',
unistr('        //\8BBE\4E3A\542F\7528'),
unistr('        $(''#row_'' + objId).text(''\542F\7528'');'),
'    }',
'    $s(''P256_OPERATION_TYPE'', name);',
'    $(''#btn_'' + name).click();',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2666059376973948701)
,p_plug_name=>unistr('\70B9\68C0\8BA1\5212')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286682599994554754)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLAN_ID,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       REMARK,',
'       TENANT_ID,',
'       PLAN_SERIAL_NO,',
'       DEL_FLAG,',
'       IS_ENABLE,',
'       PREVIOUS_SHIFT,',
'       PLAN_NAME',
'  from CHECK_FORM_PLAN ',
'  where DEL_FLAG = 0   ',
'  AND IS_ENABLE = NVL( :P256_STATUS , IS_ENABLE )',
'  and TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P256_STATUS'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\70B9\68C0\8BA1\5212')
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
 p_id=>wwv_flow_imp.id(2659945298572679571)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2659945622044679574)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>270
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select job_number||''-''||name,ext_user_id from MPF_USER_DEPT_MAIN_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID'
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2659945706195679575)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>unistr('\66F4\65B0\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>280
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(2659945824059679576)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
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
 p_id=>wwv_flow_imp.id(2659945899057679577)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(2659946007757679578)
,p_name=>'PLAN_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BA1\5212\7F16\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>240
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
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
 p_id=>wwv_flow_imp.id(2659947438243679593)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>220
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
 p_id=>wwv_flow_imp.id(2659947604384679594)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>260
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\7981\7528'',0  from dual'),
'    union all',
unistr('select ''\542F\7528'',1  from dual;')))
,p_lov_display_extra=>true
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
 p_id=>wwv_flow_imp.id(2659947648226679595)
,p_name=>'PREVIOUS_SHIFT'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIOUS_SHIFT'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
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
 p_id=>wwv_flow_imp.id(2659947846004679597)
,p_name=>'OPERATION'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>290
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" onclick="btnClick(''modify'',''&PLAN_ID.'')" style="text-dcoration:none;">',
    unistr('		\7F16\8F91'),
    '	</a>',
    '	&nbsp;',
    '	<!-- <a href="#" onclick="btnClick(''isenable'',''&PLAN_ID.'',''&IS_ENABLE.'')" style="text-dcoration:none;" id=''row_&PLAN_ID.''>',
    unistr('		\7981\7528'),
    '	</a>',
    '	&nbsp; -->',
    '	<a href="#" onclick="btnClick(''view'',''&PLAN_ID.'')" style="text-dcoration:none;">',
    unistr('		\67E5\770B'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="btnClick(''delete'',''&PLAN_ID.'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2672751625204176877)
,p_name=>'PLAN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8BA1\5212\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>250
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(2672751752544176879)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2672751874425176880)
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
 p_id=>wwv_flow_imp.id(2666059471508948702)
,p_internal_uid=>555857417231445291
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
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU'
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
 p_id=>wwv_flow_imp.id(2670375722759448949)
,p_interactive_grid_id=>wwv_flow_imp.id(2666059471508948702)
,p_static_id=>'2764767'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2670375917601448950)
,p_report_id=>wwv_flow_imp.id(2670375722759448949)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672406953146994380)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2659945298572679571)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672409695471994392)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2659945622044679574)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672410631170994395)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2659945706195679575)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672411445657994398)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2659945824059679576)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672412389896994401)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2659945899057679577)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672413267784994404)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2659946007757679578)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672426800046994453)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2659947438243679593)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672427639772994456)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2659947604384679594)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672428562747994459)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2659947648226679595)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672465952465086468)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2659947846004679597)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2672780683519273996)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2672751625204176877)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2673395940965747442)
,p_view_id=>wwv_flow_imp.id(2670375917601448950)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2672751752544176879)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2669565650020778585)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2286629353441554723)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2286748345485554784)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393905945674221068)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\65B0\589E')
,p_button_static_id=>'btn_insert'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:257:&SESSION.::&DEBUG.:257::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393906322597221068)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\6279\91CF\542F\7528')
,p_button_static_id=>'btn_enabled'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\542F\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393906666085221068)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\6279\91CF\7981\7528')
,p_button_static_id=>'btn_disabled'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\7981\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393907087511221068)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\6279\91CF\5220\9664')
,p_button_static_id=>'btn_delete'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393907942112221069)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\7F16\8F91')
,p_button_static_id=>'btn_modify'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\7F16\8F91')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2393907505002221068)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_button_name=>unistr('\67E5\770B')
,p_button_static_id=>'btn_view'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\67E5\770B')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2393922120728221078)
,p_branch_name=>unistr('\67E5\770B-\8BA1\5212\8868\5355')
,p_branch_action=>'f?p=&APP_ID.:259:&SESSION.::&DEBUG.:259:P259_PLAN_ID:&P256_PLAN_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2393907505002221068)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2393922484153221078)
,p_branch_name=>unistr('\7F16\8F91-\8BA1\5212\8868\5355')
,p_branch_action=>'f?p=&APP_ID.:257:&SESSION.::&DEBUG.:257:P257_PLAN_ID,P257_IS_SHOW:&P256_PLAN_ID.,&P256_PLAN_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2393907942112221069)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2393908313614221069)
,p_name=>'P256_STATUS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_prompt=>unistr('\8BA1\5212\72B6\6001')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select ''\5168\90E8'' NAME ,null IS_ENABLE  from DUAL'),
'union all',
unistr('select ''\542F\7528'' NAME, 1 IS_ENABLE  from DUAL'),
'union all',
unistr('select ''\7981\7528'' NAME , 0 IS_ENABLE  from DUAL')))
,p_cHeight=>1
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-top-sm:margin-bottom-sm'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2393908716163221069)
,p_name=>'P256_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2393909082947221069)
,p_name=>'P256_OPERATION_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2393909515674221070)
,p_name=>'P256_PLAN_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5F53\524D\884C\9009\4E2D')
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2393909942561221070)
,p_name=>'P256_PLAN_IDS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2666059376973948701)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\5217\8868\9009\4E2D\96C6\5408')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393911632554221073)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393912129981221073)
,p_event_id=>wwv_flow_imp.id(2393911632554221073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P256_PLAN_IDS'', ''PLAN_ID'');',
'utils.set(this.data, map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393912517204221073)
,p_name=>unistr('\6279\91CF\5220\9664')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2393907087511221068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393913001795221074)
,p_event_id=>wwv_flow_imp.id(2393912517204221073)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P256_PLAN_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\786E\5B9A\8981\5220\9664\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393914456067221074)
,p_event_id=>wwv_flow_imp.id(2393912517204221073)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(10) := 1;',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2023-11-02 10:30',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \70B9\68C0\8BA1\5212-\6279\91CF\5220\9664'),
'     */',
'BEGIN',
'    UPDATE CHECK_FORM_PLAN',
'    SET DEL_FLAG     = 1,',
'        UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE',
'    WHERE PLAN_ID IN (SELECT * FROM JA_UTILS_PKG.SPLIT_STR(:P256_PLAN_IDS, '',''))',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    UPDATE CHECK_FORM',
'    SET PLAN_ID      = null,',
'        UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE',
'    WHERE PLAN_ID IN (SELECT * FROM JA_UTILS_PKG.SPLIT_STR(:P256_PLAN_IDS, '',''))',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P256_PLAN_IDS'
,p_attribute_03=>'P256_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393913493606221074)
,p_event_id=>wwv_flow_imp.id(2393912517204221073)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P256_ROW_COUNT'') > 0){',
unistr('    alert(''\5220\9664\6210\529F'');'),
'}else{',
unistr('    alert(''\5220\9664\5931\8D25'');    '),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393914046817221074)
,p_event_id=>wwv_flow_imp.id(2393912517204221073)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393918231393221076)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393918739672221076)
,p_event_id=>wwv_flow_imp.id(2393918231393221076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2393907942112221069)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393919197863221076)
,p_event_id=>wwv_flow_imp.id(2393918231393221076)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2393907505002221068)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393919571977221077)
,p_name=>unistr('\6279\91CF\542F\7528')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2393906322597221068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393920114686221077)
,p_event_id=>wwv_flow_imp.id(2393919571977221077)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P256_PLAN_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\786E\5B9A\8981\542F\7528\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393921580154221078)
,p_event_id=>wwv_flow_imp.id(2393919571977221077)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(10) := 0;',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2023-11-02 10:30',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \70B9\68C0\8BA1\5212-\6279\91CF\542F\7528'),
'     */',
'BEGIN',
'    UPDATE CHECK_FORM_PLAN',
'    SET IS_ENABLE     = 1,',
'        UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE',
'    WHERE PLAN_ID IN (SELECT * FROM JA_UTILS_PKG.SPLIT_STR(:P256_PLAN_IDS, '','')) AND IS_ENABLE = 0 AND DEL_FLAG = 0 AND TENANT_ID = : USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P256_PLAN_IDS'
,p_attribute_03=>'P256_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393920596293221077)
,p_event_id=>wwv_flow_imp.id(2393919571977221077)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P256_ROW_COUNT'') > 0){',
unistr('    alert(''\6279\91CF\542F\7528\6210\529F\FF01'');'),
'}else{',
unistr('    alert(''\6279\91CF\542F\7528\5931\8D25\FF01'');    '),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393921058443221077)
,p_event_id=>wwv_flow_imp.id(2393919571977221077)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393915818591221075)
,p_name=>unistr('\6279\91CF\7981\7528')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2393906666085221068)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393916275478221075)
,p_event_id=>wwv_flow_imp.id(2393915818591221075)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P256_PLAN_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\7981\7528\7684\6570\636E\FF01'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\786E\5B9A\8981\7981\7528\9009\4E2D\7684\6570\636E\5417\FF1F'')) {'),
'        return true;',
'    } else {',
'        return false;',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393917281042221076)
,p_event_id=>wwv_flow_imp.id(2393915818591221075)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    V_ROW_COUNT NUMBER(10) := 0;',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2023-11-02 10:30',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \70B9\68C0\8BA1\5212-\6279\91CF\7981\7528'),
'     */',
'BEGIN',
'    UPDATE CHECK_FORM_PLAN',
'    SET IS_ENABLE     = 0,',
'        UPDATED_BY   = :USER_ID,',
'        UPDATED_DATE = SYSDATE',
'    WHERE PLAN_ID IN (SELECT * FROM JA_UTILS_PKG.SPLIT_STR(:P256_PLAN_IDS, '','')) AND IS_ENABLE = 1 AND DEL_FLAG = 0 AND TENANT_ID = : USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', V_ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P256_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P256_PLAN_IDS'
,p_attribute_03=>'P256_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393916768591221075)
,p_event_id=>wwv_flow_imp.id(2393915818591221075)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P256_ROW_COUNT'') > 0){',
unistr('    alert(''\6279\91CF\7981\7528\6210\529F\FF01'');'),
'}else{',
unistr('    alert(''\6279\91CF\7981\7528\5931\8D25\FF01'');    '),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393917770339221076)
,p_event_id=>wwv_flow_imp.id(2393915818591221075)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2393914923593221074)
,p_name=>unistr('\9009\4E2D\5237\65B0\5217\8868')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P256_STATUS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2393915394790221075)
,p_event_id=>wwv_flow_imp.id(2393914923593221074)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2393910278985221070)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2666059376973948701)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\68C0\8BA1\5212 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283708224707717659
);
wwv_flow_imp.component_end;
end;
/

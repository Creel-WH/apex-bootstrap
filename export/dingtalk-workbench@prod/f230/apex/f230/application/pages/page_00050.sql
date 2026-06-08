prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>unistr('\5B9A\5236\5DE5\4F5C\53F0')
,p_alias=>unistr('\5B9A\5236\5DE5\4F5C\53F0')
,p_step_title=>unistr('\5B9A\5236\5DE5\4F5C\53F0')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807299148506566)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- https://unpkg.com/vconsole@latest/dist/vconsole.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function enable(workbenchId) {',
'    console.log(''workbenchId:'' + workbenchId)',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#enable_btn").click()',
'}',
'',
'function deleteItem(workbenchId) {',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#delete_btn").click()',
'}',
'',
'function moveUp(workbenchId) {',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#up_btn").click()',
'}',
'',
'function moveDown(workbenchId) {',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#down_btn").click()',
'}',
'',
'function moveUpMax(workbenchId) {',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#up_max_btn").click()',
'}',
'',
'function moveDownMax(workbenchId) {',
'    $s(''P50_SELECT_ID'', workbenchId)',
'    $("#down_max_btn").click()',
'}',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P50_VISIBLE_USERS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P50_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P50_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}',
'',
'// var vConsole = new window.VConsole();',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P50_VISIBLE_USERS'').split(",");',
'    let deptList = $v(''P50_VISIBLE_DEPTS'').split(",");',
'    DingTalkAuth.chooseUsers(userList, deptList, visible_callback);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#new_webbench {',
'    height: 400px !important;',
'}',
'',
'#enable_btn,#edit_btn,#delete_btn,#up_btn,#down_btn,#up_max_btn,#down_max_btn {',
'    display: none;',
'}',
'',
'#app_icon {',
'    height: 100px;',
'}',
'',
'#null_icon {',
'    width: 100px;',
'    height: 100px;',
'    background-color: #e0e0e0;',
'    line-height: 100px;',
'    text-align: center;',
'}',
'',
'/* .apex-item-multi {',
'    max-width: 300px  !important;',
'} */',
'',
'#sort_input {',
'    width: 150px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4756329840779518680)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4776081250522961054)
,p_plug_name=>unistr('\5DE5\4F5C\53F0\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    w.WORKBENCH_ID,',
'    w.WORKBENCH_NAME,',
'    w.IS_ENABLE,',
unistr('    DECODE(w.IS_ENABLE, 1, ''\505C\7528'', ''\542F\7528'') AS ENABLE_BTN_NAME,'),
'    w.SCOPE_TYPE,',
'    admin_names.ADMIN_NAME,',
'    t.TEMPLATE_NAME,',
'    SORT_NUM,',
'    ROW_NUMBER() OVER (ORDER BY SORT_NUM ) AS SORT',
'FROM',
'    JW_WORKBENCH w',
'LEFT JOIN (',
'    SELECT',
'        a.REFERENCE_ID AS WORKBENCH_ID,',
'        LISTAGG(DISTINCT u.NAME, '','') WITHIN GROUP (ORDER BY u.NAME) AS ADMIN_NAME',
'    FROM',
'        JW_ADMIN a',
'    JOIN',
'        MPF_BASIC_JA_DING_USER_V u ON u.USER_ID = a.USER_ID',
'    WHERE',
'        a.REFERENCE_TYPE = ''WORKBENCH''',
'    GROUP BY',
'        a.REFERENCE_ID',
') admin_names ON admin_names.WORKBENCH_ID = w.WORKBENCH_ID',
'LEFT JOIN JW_WORKBENCH_TEMPLATE t on w.TEMPLATE_ID = t.TEMPLATE_ID',
'WHERE',
'    w.DEL_FLAG = 0',
'    AND w.TENANT_ID = :JW_USER_TENANT',
'    AND (:JW_IS_ADMIN = 1 OR w.WORKBENCH_ID IN (',
'        SELECT REFERENCE_ID',
'        FROM JW_ADMIN',
'        WHERE REFERENCE_TYPE = ''WORKBENCH''',
'          AND USER_ID = :JW_USER_ID',
'    ));'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5DE5\4F5C\53F0\7BA1\7406')
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
 p_id=>wwv_flow_imp.id(3114929346293701281)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3114929526310701282)
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
 p_id=>wwv_flow_imp.id(3834498791302546580)
,p_name=>'TEMPLATE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6A21\677F\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
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
 p_id=>wwv_flow_imp.id(3835473653097114666)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'JW_IS_ADMIN'
,p_display_condition2=>'1'
,p_help_text=>unistr('\FF080-100000\FF09')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3840046296071853533)
,p_name=>'MOVE'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6392\5E8F')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    unistr('<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="moveUp(&WORKBENCH_ID.)">\4E0A\79FB</span>'),
    unistr('<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="moveDown(&WORKBENCH_ID.)">\4E0B\79FB</span>'),
    unistr('<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="moveUpMax(&WORKBENCH_ID.)">\7F6E\9876</span>'),
    unistr('<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="moveDownMax(&WORKBENCH_ID.)">\7F6E\5E95</span>'))))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_condition=>'JW_IS_ADMIN'
,p_display_condition2=>'1'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4776081396755961056)
,p_name=>'WORKBENCH_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKBENCH_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4776081983284961062)
,p_name=>'WORKBENCH_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'WORKBENCH_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_link_target=>'f?p=&APP_ID.:52:&SESSION.::&DEBUG.:52:P52_WORKBENCH_ID:&WORKBENCH_ID.'
,p_link_text=>'&WORKBENCH_NAME.'
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
 p_id=>wwv_flow_imp.id(4776082213902961064)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC:\4F7F\7528\4E2D;1,\5F85\542F\7528;0')
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(4776082454707961066)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\53EF\89C1\8303\56F4')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_stretch=>'N'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4445941052004953418)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(4776082609932961068)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_stretch=>'A'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="enable(&WORKBENCH_ID.)">&ENABLE_BTN_NAME.</span>',
    unistr('<span style="color:#FF4D4F;cursor: pointer;margin-right: 20px;" onclick="deleteItem(&WORKBENCH_ID.)">\5220\9664</span>'),
    '')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4776084381870961085)
,p_name=>'ENABLE_BTN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENABLE_BTN_NAME'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(4790304254112164666)
,p_name=>'ADMIN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\7BA1\7406\5458')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4776081349858961055)
,p_internal_uid=>2315948511671110789
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
 p_id=>wwv_flow_imp.id(4790066293820179688)
,p_interactive_grid_id=>wwv_flow_imp.id(4776081349858961055)
,p_static_id=>'2358031'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4790066560425179689)
,p_report_id=>wwv_flow_imp.id(4790066293820179688)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3114935380682701630)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3114929346293701281)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3561635111826667202)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3840046296071853533)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>222.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3834568032295329087)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3834498791302546580)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>211.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3840020931030573062)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3835473653097114666)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>97.125
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790067057417179696)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4776081396755961056)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790067912700179703)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4776081983284961062)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>185.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790068822760179706)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4776082213902961064)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>179.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790069756300179710)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4776082454707961066)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>147.297
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790265183134296665)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4776082609932961068)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>166.375
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790293826413980520)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4776084381870961085)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4790752453936370834)
,p_view_id=>wwv_flow_imp.id(4790066560425179689)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4790304254112164666)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>215.297
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4790301607824164640)
,p_plug_name=>unistr('\65B0\5DE5\4F5C\53F0')
,p_region_name=>'new_webbench'
,p_parent_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(4421806473195171861)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WORKBENCH_ID,',
'       WORKBENCH_NAME,',
'       SCOPE_TYPE,',
'       TEMPLATE_ID',
'  from JW_WORKBENCH'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3834571438941383936)
,p_plug_name=>unistr('\9884\89C8\56FE')
,p_parent_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>70
,p_plug_display_column=>1
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex; justify-content: flex-start;align-items: flex-start;flex-direction: column;">',
unistr('    <img class=''add-img'' id=''app_icon'' src="" alt="\9884\89C8\56FE" />'),
unistr('    <span id=''jump_prompt''>\9009\62E9\6B64\6A21\677F\4F1A\8DF3\8F6C\5230\4E09\65B9\9875\9762\FF0C\4E0D\9700\8981\914D\7F6E\5E94\7528<span>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4790302540951164649)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;margin-left:16.66%">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788462702814255540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'enable'
,p_button_static_id=>'enable_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\542F\7528')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788463067231255541)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'delete'
,p_button_static_id=>'delete_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788463439103255542)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'up'
,p_button_static_id=>'up_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\4E0A\79FB')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788463892806255542)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'down'
,p_button_static_id=>'down_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\4E0B\79FB')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788464247688255542)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'up_max'
,p_button_static_id=>'up_max_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\4E0A\79FB\5230\9876')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788464718920255542)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>'down_max'
,p_button_static_id=>'down_max_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\4E0B\79FB\5230\5E95')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788466604150255548)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788467022055255549)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788465065844255542)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_button_name=>unistr('\521B\5EFA\5DE5\4F5C\53F0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\5DE5\4F5C\53F0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'JW_IS_ADMIN'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3834510368107546650)
,p_name=>'P50_TEMPLATE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_source_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_default=>'2'
,p_prompt=>unistr('\7ED1\5B9A\6A21\677F')
,p_source=>'TEMPLATE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select TEMPLATE_NAME,TEMPLATE_ID from JW_WORKBENCH_TEMPLATE where DEL_FLAG = 0 and IS_ENABLE = 1;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(3834582570884384001)
,p_name=>'P50_TEMPLATE_PREVIEW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3834582707631384002)
,p_name=>'P50_TEMPLATE_TYPE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835483445938114718)
,p_name=>'P50_TAG'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_prompt=>unistr('\9884\8BBE\6807\7B7E')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select TAG_NAME,APP_TAG_ID from JW_APP_TAG where DEL_FLAG=0;'
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4776093046253961138)
,p_name=>'P50_SELECT_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4776081250522961054)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790313299350164711)
,p_name=>'P50_WORKBENCH_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_source_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_source=>'WORKBENCH_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790313439955164712)
,p_name=>'P50_WORKBENCH_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_source_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_prompt=>unistr('\5DE5\4F5C\53F0\540D\79F0')
,p_source=>'WORKBENCH_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790313525380164713)
,p_name=>'P50_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_source_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_item_default=>'ALL'
,p_prompt=>unistr('\53EF\89C1\8303\56F4')
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790314957313164727)
,p_name=>'P50_VISIBLE_USERS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790315049769164728)
,p_name=>'P50_VISIBLE_DEPTS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792337247597749315)
,p_name=>'P50_IS_REPEAT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4790301607824164640)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788473254871255562)
,p_name=>unistr('\542F\7528')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788462702814255540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788473818830255564)
,p_event_id=>wwv_flow_imp.id(2788473254871255562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:41',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\662F\5426\5E94\7528  \65E5\5FD7'),
'    */',
'    V_IS_ENABLE NUMBER(1);',
'    V_NAME      VARCHAR2(255);',
'BEGIN',
'    SELECT IS_ENABLE, WORKBENCH_NAME INTO V_IS_ENABLE,V_NAME FROM JW_WORKBENCH WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    IF V_IS_ENABLE = 1 THEN',
unistr('        SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''STOP_WORKBENCH'', ''\5DE5\4F5C\53F0\FF1A'' || V_NAME);'),
'    ELSE',
unistr('        SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''START_WORKBENCH'', ''\5DE5\4F5C\53F0\FF1A'' || V_NAME);'),
'    END IF;',
'    UPDATE JW_WORKBENCH',
'    SET IS_ENABLE=DECODE(IS_ENABLE, 1, 0, 1),',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\662F\5426\5E94\7528'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788474294963255565)
,p_event_id=>wwv_flow_imp.id(2788473254871255562)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788474695129255566)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788463067231255541)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788475230618255566)
,p_event_id=>wwv_flow_imp.id(2788474695129255566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\6743\9650')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P0_IS_ADMIN'') != 1) {',
unistr('    alert(''\4EC5\4E3B\7BA1\7406\5458\53EF\4EE5\5220\9664\5DE5\4F5C\53F0\3002'');'),
'    return false',
'}',
'return true'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788475660742255566)
,p_event_id=>wwv_flow_imp.id(2788474695129255566)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5220\9664\5F53\524D\5DE5\4F5C\53F0')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788476168294255566)
,p_event_id=>wwv_flow_imp.id(2788474695129255566)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:46',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5220\9664  \65E5\5FD7'),
'    */',
'    v_name  varchar2(255);',
'begin',
'    select WORKBENCH_NAME into v_name from JW_WORKBENCH where WORKBENCH_ID = :P50_SELECT_ID;',
'    update JW_WORKBENCH set DEL_FLAG=1 where WORKBENCH_ID = :P50_SELECT_ID;',
'    update JW_APP_GROUP set DEL_FLAG=1 where WORKBENCH_ID = :P50_SELECT_ID;',
'    delete JW_APP_GROUP_ASSO where APP_GROUP_ID in (select APP_GROUP_ID from JW_APP_GROUP where WORKBENCH_ID = :P50_SELECT_ID);',
unistr('    save_audit_log(:JW_USER_ID, ''WAM'', ''DEL_WORKBENCH'', ''\5DE5\4F5C\53F0\FF1A'' || v_name);'),
'        ',
'        EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;',
''))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788476698273255566)
,p_event_id=>wwv_flow_imp.id(2788474695129255566)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788477072246255567)
,p_name=>unistr('\6253\5F00\533A\57DF')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788465065844255542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788477561356255567)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6E05\7A7A\65E7\6570\636E')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(''#chooseInput'').val('''')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2749752376885986705)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_WORKBENCH_ID,P50_WORKBENCH_NAME,P50_VISIBLE_DEPTS,P50_TEMPLATE_PREVIEW,P50_TEMPLATE_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2749752454699986706)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_SCOPE_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'ALL'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2749752605268986707)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_TEMPLATE_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'2'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2749752723746986708)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P50_VISIBLE_USERS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select :JW_USER_ID from dual;'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788478054809255567)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790301607824164640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788478587571255567)
,p_event_id=>wwv_flow_imp.id(2788477072246255567)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!utils.checkNull($v(''P50_TEMPLATE_PREVIEW''))) {',
'    $(''#app_icon'').attr(''src'', $v(''P50_TEMPLATE_PREVIEW''))',
'}',
'',
'if (!utils.checkNull($v(''P50_TEMPLATE_TYPE'')) && $v(''P50_TEMPLATE_TYPE'') !== ''SUB_LINK'') {',
'    $("#jump_prompt").show()',
'} else {',
'    $("#jump_prompt").hide()',
'}',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788479019385255567)
,p_name=>unistr('\5207\6362')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788479459134255568)
,p_event_id=>wwv_flow_imp.id(2788479019385255567)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P50_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788479895438255568)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788466604150255548)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788480424583255568)
,p_event_id=>wwv_flow_imp.id(2788479895438255568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790301607824164640)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788480782503255568)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788467022055255549)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788481267217255568)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'    v_err_msg varchar2(2000);',
'BEGIN',
'    SELECT COUNT(WORKBENCH_ID)',
'    INTO v_count',
'    FROM JW_WORKBENCH',
'    WHERE WORKBENCH_NAME = :P50_WORKBENCH_NAME',
'    AND DEL_FLAG = 0;',
'',
'    :P50_IS_REPEAT := v_count;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6821\9A8C\540D\79F0\91CD\590D\FF08\65B0\589E\FF09'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P50_WORKBENCH_NAME'
,p_attribute_03=>'P50_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788481755874255568)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P50_WORKBENCH_NAME''))) {',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'console.log($v(''P50_IS_REPEAT''))',
'if ($v(''P50_IS_REPEAT'') > 0) {',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\91CD\590D\3002'');'),
'    return false',
'}',
'return true'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788482328085255569)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:42',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\67E5\8BE2\5206\7EC4  \65E5\5FD7'),
'    */',
'    max_sort number(5);',
'begin',
'    SELECT MAX(SORT_NUM)',
'    into max_sort',
'    FROM JW_WORKBENCH',
'    WHERE DEL_FLAG = 0;',
'',
'    insert into JW_WORKBENCH(TENANT_ID,',
'                             CREATED_BY,',
'                             UPDATED_BY,',
'                             WORKBENCH_NAME,',
'                             SCOPE_TYPE,',
'                             TEMPLATE_ID,',
'                             SORT_NUM)',
'    values (:JW_USER_TENANT,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
'            :P50_WORKBENCH_NAME,',
'            :P50_SCOPE_TYPE,',
'            :P50_TEMPLATE_ID,',
'            max_sort + 1000)',
'    returning WORKBENCH_ID into :P50_WORKBENCH_ID;',
'',
'    insert into JW_ADMIN(TENANT_ID,',
'                         CREATED_BY,',
'                         UPDATED_BY,',
'                         USER_ID,',
'                         REFERENCE_ID,',
'                         REFERENCE_TYPE,',
'                         IS_CREATOR)',
'    values (:JW_USER_TENANT,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
'            :P50_WORKBENCH_ID,',
'            ''WORKBENCH'',',
'            1);',
'',
'    insert into JW_APP_GROUP(TENANT_ID,',
'                             CREATED_BY,',
'                             UPDATED_BY,',
'                             GROUP_NAME,',
'                             WORKBENCH_ID,',
'                             IS_DEFAULT)',
'    values (:JW_USER_TENANT,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
unistr('            ''\672A\5206\7EC4\5E94\7528'','),
'            :P50_WORKBENCH_ID,',
'            1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\67E5\8BE2\5206\7EC4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'end;'))
,p_attribute_02=>'P50_WORKBENCH_NAME,P50_SCOPE_TYPE,P50_VISIBLE_USERS,P50_VISIBLE_DEPTS,P50_WORKBENCH_ID,P50_TEMPLATE_ID'
,p_attribute_03=>'P50_WORKBENCH_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788482805778255570)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:47',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\914D\7F6E  \65E5\5FD7'),
'    */',
'    cursor userCursor is select *',
'                         from table (SPLITSTR(:P50_VISIBLE_USERS, '',''));',
'    cursor deptCursor is select *',
'                         from table (SPLITSTR(:P50_VISIBLE_DEPTS, '',''));',
'    v_user_names    varchar2(255);',
'    v_dept_names    varchar2(255);',
'    v_template_name varchar2(255);',
'begin',
'    select TEMPLATE_NAME into v_template_name from JW_WORKBENCH_TEMPLATE where TEMPLATE_ID = :P50_TEMPLATE_ID;',
'',
'    if :P50_SCOPE_TYPE != ''ALL'' then',
'        FOR cur in userCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P50_WORKBENCH_ID,',
'                        ''WORKBENCH'');',
'            END LOOP;',
'',
'        FOR cur in deptCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P50_WORKBENCH_ID,',
'                        ''WORKBENCH'');',
'            END LOOP;',
'        select listagg(NAME, '','') into v_user_names from MPF_BASIC_JA_DING_USER_V where USER_ID in :P50_VISIBLE_USERS;',
'        select listagg(NAME, '','') into v_dept_names from MPF_BASIC_JA_DING_DEPT_V where DEPT_ID in :P50_VISIBLE_DEPTS;',
'',
'        save_audit_log(:JW_USER_ID, ''WAM'', ''CREATE_WORKBENCH'',',
unistr('                       ''\5DE5\4F5C\53F0\540D\79F0:'' || :P50_WORKBENCH_NAME || '';\5DE5\4F5C\53F0\6A21\677F:'' || v_template_name ||'),
unistr('                       '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' || '';\53EF\89C1\4EBA\5458:'' || v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
'        );',
'    else',
'        save_audit_log(:JW_USER_ID, ''WAM'', ''CREATE_WORKBENCH'',',
unistr('                       ''\5DE5\4F5C\53F0\540D\79F0:'' || :P50_WORKBENCH_NAME || '';\5DE5\4F5C\53F0\6A21\677F:'' || v_template_name || '';\53EF\89C1\8303\56F4:\5168\90E8'');'),
'    end if;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\914D\7F6E'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P50_WORKBENCH_NAME,P50_SCOPE_TYPE,P50_VISIBLE_USERS,P50_VISIBLE_DEPTS,P50_WORKBENCH_ID,P50_TEMPLATE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788483276089255570)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\9884\8BBE\5E94\7528')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:38',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\9884\8BBE\5E94\7528  \65E5\5FD7'),
'    */',
'    v_default_group_id number(20);',
'begin',
'    select APP_GROUP_ID',
'    into v_default_group_id',
'    from JW_APP_GROUP',
'    where WORKBENCH_ID = :P50_WORKBENCH_ID',
'      and IS_DEFAULT = 1;',
'',
'    FOR rec IN (',
'        SELECT APP_ID',
'        from JW_APP_TAG_ASSO',
'        where APP_TAG_ID in (select * from table (SPLITSTR(:P50_TAG, '':'')))',
'    )',
'    LOOP',
'        INSERT INTO JW_APP_GROUP_ASSO (CREATED_BY, UPDATED_BY, APP_GROUP_ID, APP_ID)',
'        VALUES (:JW_USER_ID,',
'                :JW_USER_ID,',
'                v_default_group_id,',
'                rec.APP_ID);',
'    END LOOP;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\9884\8BBE\5E94\7528'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P50_WORKBENCH_ID,P50_TAG'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788483676832255570)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790301607824164640)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788484218405255570)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\7ED3\679C\786E\8BA4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P50_WORKBENCH_ID''))) {',
unistr('    alert(''\521B\5EFA\5931\8D25\3002'');'),
'    false',
'} else {',
unistr('    alert(''\521B\5EFA\6210\529F\FF01'');'),
'    true',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788484719311255570)
,p_event_id=>wwv_flow_imp.id(2788480782503255568)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5217\8868')
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788485130394255571)
,p_name=>unistr('\5207\6362\6A21\677F')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P50_TEMPLATE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788485593043255571)
,p_event_id=>wwv_flow_imp.id(2788485130394255571)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_TEMPLATE_PREVIEW VARCHAR2(255);',
'    V_TEMPLATE_TYPE    VARCHAR2(32);',
'    V_ERR_MSG          VARCHAR2(2000);',
'BEGIN',
'    SELECT TEMPLATE_PREVIEW, TEMPLATE_TYPE',
'    INTO V_TEMPLATE_PREVIEW,V_TEMPLATE_TYPE',
'    FROM JW_WORKBENCH_TEMPLATE',
'    WHERE TEMPLATE_ID = :P50_TEMPLATE_ID;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P50_TEMPLATE_PREVIEW'', V_TEMPLATE_PREVIEW);',
'    APEX_UTIL.SET_SESSION_STATE(''P50_TEMPLATE_TYPE'', V_TEMPLATE_TYPE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5207\6362\6A21\677F'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P50_TEMPLATE_ID'
,p_attribute_03=>'P50_TEMPLATE_PREVIEW,P50_TEMPLATE_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788486081667255571)
,p_event_id=>wwv_flow_imp.id(2788485130394255571)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'if (!utils.checkNull($v(''P50_TEMPLATE_PREVIEW''))) {',
'    $(''#app_icon'').attr(''src'', $v(''P50_TEMPLATE_PREVIEW''))',
'}',
'',
'if($v(''P50_TEMPLATE_TYPE'')!=='''' && $v(''P50_TEMPLATE_TYPE'')!==''SUB_LINK''){',
'    $("#jump_prompt").show()',
'}else {',
'    $("#jump_prompt").hide()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788486529047255571)
,p_name=>unistr('\4E0A\79FB')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788463439103255542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788486982723255572)
,p_event_id=>wwv_flow_imp.id(2788486529047255571)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:48',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5DE5\4F5C\53F0\4E0A\79FB  \65E5\5FD7'),
'    */',
'    V_NAME    VARCHAR2(255);',
'    V_SORT    NUMBER(10);',
'    V_SORT_1  NUMBER(10);',
'    V_SORT_2  NUMBER(10);',
'BEGIN',
'    SELECT WORKBENCH_NAME, SORT_NUM INTO V_NAME,V_SORT FROM JW_WORKBENCH WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    SELECT NVL(MAX(SORT_NUM), -1)',
'    INTO V_SORT_1',
'    FROM JW_WORKBENCH',
'    WHERE SORT_NUM < V_SORT;',
'    IF V_SORT_1 = -1 THEN',
'        V_SORT := V_SORT;',
'    ELSE',
'        SELECT NVL(MAX(SORT_NUM), -1)',
'        INTO V_SORT_2',
'        FROM JW_WORKBENCH',
'        WHERE SORT_NUM < V_SORT_1;',
'        IF V_SORT_2 = -1 THEN',
'            V_SORT := V_SORT_1 / 2;',
'        ELSE',
'            V_SORT := (V_SORT_1 + V_SORT_2) / 2;',
'        END IF;',
'    END IF;',
'',
'    UPDATE JW_WORKBENCH',
'    SET SORT_NUM   = V_SORT,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'',
'    IF V_SORT_1 <> -1 AND (V_SORT_1 - V_SORT < 5) THEN',
'        FOR REC IN (',
'            SELECT WORKBENCH_ID, ROW_NUMBER() OVER (ORDER BY SORT_NUM) AS NEW_SORT_NUM',
'            FROM JW_WORKBENCH',
'            WHERE DEL_FLAG = 0',
'            )',
'            LOOP',
'                UPDATE JW_WORKBENCH',
'                SET SORT_NUM = REC.NEW_SORT_NUM * 1000',
'                WHERE WORKBENCH_ID = REC.WORKBENCH_ID;',
'            END LOOP;',
'    END IF;',
'',
'    SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''WORKBENCH_SORT'',',
unistr('                   ''\5DE5\4F5C\53F0\FF1A'' || V_NAME || '';'' || ''\4E0A\79FB'');'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5DE5\4F5C\53F0\4E0A\79FB'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'',
'',
'END;',
''))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788487470014255572)
,p_event_id=>wwv_flow_imp.id(2788486529047255571)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788487875822255572)
,p_name=>unistr('\4E0B\79FB')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788463892806255542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788488437514255572)
,p_event_id=>wwv_flow_imp.id(2788487875822255572)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:49',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5DE5\4F5C\53F0\4E0B\79FB  \65E5\5FD7'),
'    */',
'    V_NAME    VARCHAR2(255);',
'    V_SORT    NUMBER(10);',
'    V_SORT_1  NUMBER(10);',
'    V_SORT_2  NUMBER(10);',
'BEGIN',
'    SELECT WORKBENCH_NAME, SORT_NUM INTO V_NAME,V_SORT FROM JW_WORKBENCH WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    SELECT NVL(MIN(SORT_NUM), -1)',
'    INTO V_SORT_1',
'    FROM JW_WORKBENCH',
'    WHERE SORT_NUM > V_SORT;',
'    IF V_SORT_1 = -1 THEN',
'        V_SORT := V_SORT;',
'    ELSE',
'        SELECT NVL(MIN(SORT_NUM), -1)',
'        INTO V_SORT_2',
'        FROM JW_WORKBENCH',
'        WHERE SORT_NUM > V_SORT_1;',
'        IF V_SORT_2 = -1 THEN',
'            V_SORT := V_SORT_1 + 1000;',
'        ELSE',
'            V_SORT := (V_SORT_1 + V_SORT_2) / 2;',
'        END IF;',
'    END IF;',
'',
'    UPDATE JW_WORKBENCH',
'    SET SORT_NUM   = V_SORT,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'',
'    IF V_SORT_1 <> -1 AND (V_SORT - V_SORT_1 < 5) THEN',
'        FOR REC IN (',
'            SELECT WORKBENCH_ID, ROW_NUMBER() OVER (ORDER BY SORT_NUM) AS NEW_SORT_NUM',
'            FROM JW_WORKBENCH',
'            WHERE DEL_FLAG = 0',
'            )',
'            LOOP',
'                UPDATE JW_WORKBENCH',
'                SET SORT_NUM = REC.NEW_SORT_NUM * 1000',
'                WHERE WORKBENCH_ID = REC.WORKBENCH_ID;',
'            END LOOP;',
'    END IF;',
'',
'    SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''WORKBENCH_SORT'',',
unistr('                   ''\5DE5\4F5C\53F0\FF1A'' || V_NAME || '';'' || ''\4E0B\79FB'');'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5DE5\4F5C\53F0\4E0B\79FB'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'',
'',
'END;'))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788488911254255573)
,p_event_id=>wwv_flow_imp.id(2788487875822255572)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788489273499255573)
,p_name=>unistr('\7F6E\5E95')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788464718920255542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788489818474255573)
,p_event_id=>wwv_flow_imp.id(2788489273499255573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:50',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5DE5\4F5C\53F0\7F6E\5E95  \65E5\5FD7'),
'    */',
'    V_NAME    VARCHAR2(255);',
'    V_SORT    NUMBER(10);',
'    V_SORT_1  NUMBER(10);',
'BEGIN',
'    SELECT WORKBENCH_NAME, SORT_NUM INTO V_NAME,V_SORT FROM JW_WORKBENCH WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    SELECT NVL(MAX(SORT_NUM), -1)',
'    INTO V_SORT_1',
'    FROM JW_WORKBENCH;',
'',
'    IF V_SORT_1 = -1 THEN',
'        V_SORT := V_SORT;',
'    ELSE',
'        V_SORT := V_SORT_1 + 1000;',
'    END IF;',
'',
'    UPDATE JW_WORKBENCH',
'    SET SORT_NUM   = V_SORT,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'',
'    IF V_SORT_1 <> -1 AND (V_SORT - V_SORT_1 < 5) THEN',
'        FOR REC IN (',
'            SELECT WORKBENCH_ID, ROW_NUMBER() OVER (ORDER BY SORT_NUM) AS NEW_SORT_NUM',
'            FROM JW_WORKBENCH',
'            WHERE DEL_FLAG = 0',
'            )',
'            LOOP',
'                UPDATE JW_WORKBENCH',
'                SET SORT_NUM = REC.NEW_SORT_NUM * 1000',
'                WHERE WORKBENCH_ID = REC.WORKBENCH_ID;',
'            END LOOP;',
'    END IF;',
'',
'    SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''WORKBENCH_SORT'',',
unistr('                   ''\5DE5\4F5C\53F0\FF1A'' || V_NAME || '';'' || ''\7F6E\5E95'');'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5DE5\4F5C\53F0\7F6E\5E95'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'',
'',
'END;'))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788490296122255573)
,p_event_id=>wwv_flow_imp.id(2788489273499255573)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788490730348255573)
,p_name=>unistr('\7F6E\9876')
,p_event_sequence=>130
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788464247688255542)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788491212686255574)
,p_event_id=>wwv_flow_imp.id(2788490730348255573)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 9:50',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5DE5\4F5C\53F0\7F6E\9876  \65E5\5FD7'),
'    */',
'    V_NAME    VARCHAR2(255);',
'    V_SORT    NUMBER(10);',
'    V_SORT_1  NUMBER(10);',
'    V_SORT_2  NUMBER(10);',
'BEGIN',
'    SELECT WORKBENCH_NAME, SORT_NUM INTO V_NAME,V_SORT FROM JW_WORKBENCH WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'    SELECT NVL(MIN(SORT_NUM), -1)',
'    INTO V_SORT_1',
'    FROM JW_WORKBENCH;',
'',
'    IF V_SORT_1 = -1 THEN',
'        V_SORT := V_SORT;',
'    ELSE',
'        V_SORT := V_SORT_1 / 2;',
'    END IF;',
'',
'    UPDATE JW_WORKBENCH',
'    SET SORT_NUM   = V_SORT,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE WORKBENCH_ID = :P50_SELECT_ID;',
'',
'    IF V_SORT_1 <> -1 AND (V_SORT_1 - V_SORT < 5) THEN',
'        FOR REC IN (',
'            SELECT WORKBENCH_ID, ROW_NUMBER() OVER (ORDER BY SORT_NUM) AS NEW_SORT_NUM',
'            FROM JW_WORKBENCH',
'            WHERE DEL_FLAG = 0',
'            )',
'            LOOP',
'                UPDATE JW_WORKBENCH',
'                SET SORT_NUM = REC.NEW_SORT_NUM * 1000',
'                WHERE WORKBENCH_ID = REC.WORKBENCH_ID;',
'            END LOOP;',
'    END IF;',
'',
'    SAVE_AUDIT_LOG(:JW_USER_ID, ''WAM'', ''WORKBENCH_SORT'',',
unistr('                   ''\5DE5\4F5C\53F0\FF1A'' || V_NAME || '';'' || ''\7F6E\9876'');'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5DE5\4F5C\53F0\7F6E\9876'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'END ;'))
,p_attribute_02=>'P50_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788491706582255574)
,p_event_id=>wwv_flow_imp.id(2788490730348255573)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788465902164255547)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4776081250522961054)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\5DE5\4F5C\53F0\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>328333063976405281
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788471737182255554)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4790301607824164640)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5B9A\5236\5DE5\4F5C\53F0')
,p_internal_uid=>328338898994405288
);
wwv_flow_imp.component_end;
end;
/

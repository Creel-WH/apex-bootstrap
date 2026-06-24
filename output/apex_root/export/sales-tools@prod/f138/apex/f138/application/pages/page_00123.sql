prompt --application/pages/page_00123
begin
--   Manifest
--     PAGE: 00123
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>123
,p_name=>unistr('\6587\4EF6\5E93\8BBE\7F6E')
,p_alias=>unistr('\6587\4EF6\5E93\8BBE\7F6E')
,p_step_title=>unistr('\6587\4EF6\5E93\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3241923283210633167)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/dingtalk-3.0.25.js',
'#WORKSPACE_FILES#static/js/dingConfig.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P123_USER_IDS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P123_DEPT_IDS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'    $(''#add_user'').click()',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$(''h1[class="t-Breadcrumb-label"]'').text($v(''P123_FOLDER_LIB_NAME'')+''(ID\FF1A''+$v(''P123_FOLDER_LIB_ID'')+'')'')'),
'',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK();',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P123_USER_IDS'').split(",");',
'    let deptList = $v(''P123_DEPT_IDS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'',
'$(''#chooseInput'').val($v(''P123_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#add_user {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705386120260087409)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9258838591544615359)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705386199237087410)
,p_plug_name=>unistr('\6210\5458\53CA\6743\9650')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9258838591544615359)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3044380969267823819)
,p_plug_name=>unistr('\9009\62E9\53EF\89C1\4EBA\5458')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(3705386199237087410)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9258848417574615362)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;margin-bottom:20px">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3494780335265447515)
,p_plug_name=>unistr('\6210\5458\6743\9650')
,p_parent_plug_id=>wwv_flow_imp.id(3705386199237087410)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258828789579615356)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT A.SCOPE_ID,',
'       A.ROLE_ID,',
'       A.USER_ID,',
unistr('       DECODE(A.RANGE_TYPE,''USER'',D.NAME,''DEPT'',E.NAME ||''(\90E8\95E8)'') USER_NAME,'),
'       (DECODE(B.ROLE_TYPE, ''SUPER_ADMIN'', NULL,',
unistr('              (''\7531\300C'' || C.USER_NAME || ''-'' || C.JOB_NUMBER || ''\300D\6DFB\52A0''))) V_SOURCE_USER_ID,'),
'       A.PERMISSIONS_TYPE,',
'       B.ROLE_TYPE,',
'       A.RANGE_TYPE,',
'       A.RANGE_ID',
'FROM STS_SCOPE A',
'         LEFT JOIN STS_ROLE B',
'              ON A.ROLE_ID = B.ROLE_ID',
'         LEFT JOIN STS_USER C',
'              ON A.SOURCE_USER_ID = C.EXT_USER_ID',
'         left join BASIC_JA_DING_USER D',
'              ON A.RANGE_TYPE =''USER'' and A.RANGE_ID =D.USER_ID',
'         left join BASIC_JA_DING_DEPT E',
'              ON A.RANGE_TYPE =''DEPT'' and A.RANGE_ID =TO_CHAR(E.DEPT_ID)',
'WHERE A.REFERENCE_TYPE = ''FOLDER_LIB''',
'  AND A.REFERENCE_ID = :P123_FOLDER_LIB_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P123_FOLDER_LIB_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6210\5458\6743\9650')
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
 p_id=>wwv_flow_imp.id(3046274918245008534)
,p_name=>'RANGE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_TYPE'
,p_data_type=>'VARCHAR2'
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
 p_id=>wwv_flow_imp.id(3046275073538008535)
,p_name=>'RANGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RANGE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3254746508199420562)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7528\6237')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
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
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3494780527210447517)
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
 p_id=>wwv_flow_imp.id(3494780590530447518)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3494780719329447519)
,p_name=>'SCOPE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_ID'
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
 p_id=>wwv_flow_imp.id(3494780824300447520)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
 p_id=>wwv_flow_imp.id(3494780932194447521)
,p_name=>'V_SOURCE_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_SOURCE_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6765\6E90')
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
 p_id=>wwv_flow_imp.id(3494781035869447522)
,p_name=>'PERMISSIONS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMISSIONS_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\6743\9650')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_is_required=>false
,p_lov_type=>'STATIC'
,p_lov_source=>unistr('STATIC2:\53EF\7BA1\7406;MANAGE,\53EF\67E5\770B;VIEW,\79FB\9664;REMOVE')
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
,p_readonly_condition_type=>'FUNCTION_BODY'
,p_readonly_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'',
'    if :ROLE_TYPE= ''SUPER_ADMIN'' then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3706522302902179973)
,p_name=>'ROLE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3706522394483179974)
,p_name=>'ROLE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROLE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3494780397396447516)
,p_internal_uid=>1156879160192172383
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(3243841974979743282)
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
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
 p_id=>wwv_flow_imp.id(3706528232138181635)
,p_interactive_grid_id=>wwv_flow_imp.id(3494780397396447516)
,p_static_id=>'4545154'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3706528380729181636)
,p_report_id=>wwv_flow_imp.id(3706528232138181635)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3255374800970059799)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3254746508199420562)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3262163950664437748)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3046274918245008534)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3262164884984437754)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3046275073538008535)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706529259273181639)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3494780590530447518)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706530185857181642)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3494780719329447519)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706531042214181644)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3494780824300447520)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706531884672181646)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3494780932194447521)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706532793257181649)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3494781035869447522)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706533746868181651)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3706522302902179973)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3706536821279195091)
,p_view_id=>wwv_flow_imp.id(3706528380729181636)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3706522394483179974)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3705582255268241450)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9258735332554615291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9258913410254615408)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2800234897330009550)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3705386199237087410)
,p_button_name=>unistr('\6DFB\52A0\7528\6237')
,p_button_static_id=>'add_user'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\7528\6237')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2800232904274009534)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(3705386120260087409)
,p_button_name=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3243841974979743282)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2800036173205515743)
,p_name=>'P123_FOLDER_LIB_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3705386120260087409)
,p_item_default=>'select FOLDER_LIB_NAME from STS_FOLDER_LIB where FOLDER_LIB_ID =:P123_FOLDER_LIB_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2800036336588515744)
,p_name=>'P123_SCOPE_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3705386120260087409)
,p_item_default=>'select SCOPE_TYPE from STS_FOLDER_LIB where FOLDER_LIB_ID =:P123_FOLDER_LIB_ID'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\662F\5426\516C\5F00')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\6587\4EF6\5E93\96C6\56E2\5185\516C\5F00\FF08\53EF\67E5\770B\FF09;ALL,\6587\4EF6\5E93\96C6\56E2\5185\4E0D\516C\5F00;USER')
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('<span style="color: #ff0000;">\5F53\8BBE\4E3A\96C6\56E2\5185\4E0D\516C\5F00\65F6\FF0C\4EC5\4E0B\65B9\6743\9650\5217\8868\4E2D\6210\5458\53EF\6839\636E\6743\9650\8BBF\95EE\8BE5\6587\4EF6\5E93</span>')
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
 p_id=>wwv_flow_imp.id(2800036416040515745)
,p_name=>'P123_FOLDER_LIB_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3044405284257823927)
,p_name=>'P123_USER_IDS_RAW'
,p_item_sequence=>110
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'  AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3044405365295823928)
,p_name=>'P123_DEPT_IDS'
,p_item_sequence=>120
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'  AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3044405491998823929)
,p_name=>'P123_DEPT_IDS_RAW'
,p_item_sequence=>130
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'  AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3044405527592823930)
,p_name=>'P123_COMBINED_NAMES'
,p_item_sequence=>140
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT XMLAGG(XMLELEMENT(e, NAME, '','').extract(''//text()''))',
'           .getClobVal()',
'FROM (',
unistr('         -- \67E5\8BE2USER\7684\540D\5B57'),
'         SELECT u.NAME',
'         FROM SHARE_BASIC_JA_DING_USER_V@MPF_prod_DBLINK u',
'         WHERE u.USER_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'                               AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'                               AND RANGE_TYPE = ''USER'')',
'',
'         UNION',
unistr('         -- \4F7F\7528 UNION \53BB\91CD'),
unistr('         -- \67E5\8BE2DEPT\7684\540D\5B57'),
'         SELECT d.NAME',
'         FROM SHARE_BASIC_JA_DING_DEPT_V@MPF_prod_DBLINK d',
'         WHERE d.DEPT_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'                               AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'                               AND RANGE_TYPE = ''DEPT''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3705409863544087511)
,p_name=>'P123_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3706546627271180081)
,p_name=>'P123_USER_IDS'
,p_item_sequence=>100
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_LIB''',
'  AND REFERENCE_ID = :P123_FOLDER_LIB_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2800258125149009620)
,p_name=>unistr('\76D1\542C\5BF9\8BDD\6846\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800258560641009621)
,p_event_id=>wwv_flow_imp.id(2800258125149009620)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P123_FOLDER_LIB_NAME''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2800258937712009624)
,p_name=>unistr('\4FEE\6539\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2800232904274009534)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2803165406541282836)
,p_event_id=>wwv_flow_imp.id(2800258937712009624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\4FEE\6539\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800259959628009626)
,p_event_id=>wwv_flow_imp.id(2800258937712009624)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\786E\5B9A\8981\4FEE\6539\5417\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9258734674635615287)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800259484726009626)
,p_event_id=>wwv_flow_imp.id(2800258937712009624)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_COUNT   NUMBER(10);',
'BEGIN',
unistr('    -- #\6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT(FOLDER_LIB_ID)',
'    INTO V_COUNT',
'    FROM STS_FOLDER_LIB',
'    WHERE FOLDER_LIB_NAME = :P123_FOLDER_LIB_NAME',
'      AND FOLDER_LIB_ID <> :P123_FOLDER_LIB_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
'    IF V_COUNT = 0 THEN',
'        UPDATE STS_FOLDER_LIB',
'        SET FOLDER_LIB_NAME =:P123_FOLDER_LIB_NAME,',
'            SCOPE_TYPE=:P123_SCOPE_TYPE,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=:MPF_USER_ID',
'        WHERE FOLDER_LIB_ID = :P123_FOLDER_LIB_ID;',
'    END IF;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P123_FOLDER_LIB_NAME,P123_SCOPE_TYPE,P123_FOLDER_LIB_ID'
,p_attribute_03=>'P123_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2488205395932712777)
,p_event_id=>wwv_flow_imp.id(2800258937712009624)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG         VARCHAR2(2000);',
'    V_COUNT           NUMBER(10);',
'    V_FOLDER_LIB_NAME VARCHAR2(45);--BY wxx  2025-04-23',
unistr('    V_SCOPE_TYPE      VARCHAR2(20) ;--\53EF\89C1\8303\56F4'),
'    V_RESULT          VARCHAR2(4000);',
'    V_JSON            CLOB;',
'    /**',
' * CREATE BY:',
' * CREATE DATE:',
' * MODIFY BY:WXX',
unistr(' * MODIFY DATE:2025/4/24 11:57  \52A0\4E0A\64CD\4F5C\65E5\5FD7'),
unistr(' * DESCRIBE: \6587\4EF6\5E93-\7BA1\7406'),
' */',
'BEGIN',
unistr('    -- #\6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT(FOLDER_LIB_ID)',
'    INTO V_COUNT',
'    FROM STS_FOLDER_LIB',
'    WHERE FOLDER_LIB_NAME = :P123_FOLDER_LIB_NAME',
'      AND FOLDER_LIB_ID <> :P123_FOLDER_LIB_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
'    IF V_COUNT = 0 THEN',
unistr('        --         \67E5\539F\6765\7684\540D\79F0 --BY wxx  2025-04-24'),
'        SELECT FOLDER_LIB_NAME',
'        INTO V_FOLDER_LIB_NAME',
'        FROM STS_FOLDER_LIB',
'        WHERE FOLDER_LIB_ID = :P123_FOLDER_LIB_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USER_TENANT;',
'        UPDATE STS_FOLDER_LIB',
'        SET FOLDER_LIB_NAME =:P123_FOLDER_LIB_NAME,',
'            SCOPE_TYPE=:P123_SCOPE_TYPE,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=:MPF_USER_ID',
'        WHERE FOLDER_LIB_ID = :P123_FOLDER_LIB_ID;',
unistr('        --\5199\5165\65E5\5FD7 --BY wxx  2025-04-24'),
'        V_SCOPE_TYPE := CASE',
unistr('                            WHEN :P123_SCOPE_TYPE = ''USER'' THEN ''\90E8\5206\6210\5458\53EF\89C1'''),
unistr('                            WHEN :P123_SCOPE_TYPE = ''ALL'' THEN ''\5168\5458\53EF\89C1'''),
unistr('                            ELSE ''\672A\77E5\7C7B\578B'''),
unistr('            END; -- \5982\679C\4E0D\662FUSER\6216ALL\FF0C\8D4B\4E88\9ED8\8BA4\503C''\672A\77E5\7C7B\578B'''),
'        V_JSON := ''{',
'        "current_name": "'' || :P123_FOLDER_LIB_NAME || ''",',
'        "old_name": "'' || V_FOLDER_LIB_NAME || ''",',
'        "new_name": "'' || :P123_FOLDER_LIB_NAME || ''",',
'        "permission_type": "'' || V_SCOPE_TYPE || ''",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
unistr('        V_RESULT := STS_OPERATION_LOG_COMMON_FUN( --\66F4\6539\540D\79F0'),
'                P_MODULE_CODE => ''FOLDER_LIB'',',
'                P_OPERATION_CODE => ''FILE_LIB_NAME'',',
'                P_BEHAVIOR_CODE => ''UPDATE'',',
'                P_ENTITY_ID => :P123_FOLDER_LIB_ID,',
'                P_EXTRA_PARAMS => V_JSON,',
'                P_APP_ID => :APP_ID,',
'                P_TENANT_ID => :USER_TENANT,',
'                P_SYS_USER_ID =>:MPF_USER_ID',
'                    );',
'',
unistr('        V_RESULT := STS_OPERATION_LOG_COMMON_FUN(--\66F4\6539\6743\9650'),
'                P_MODULE_CODE => ''FOLDER_LIB'',',
'                P_OPERATION_CODE => ''FILE_LIB_VISIBILITY'',',
'                P_BEHAVIOR_CODE => ''MODIFY'',',
'                P_ENTITY_ID => :P123_FOLDER_LIB_ID,',
'                P_EXTRA_PARAMS => V_JSON,',
'                P_APP_ID => :APP_ID,',
'                P_TENANT_ID => :USER_TENANT,',
'                P_SYS_USER_ID =>:MPF_USER_ID',
'                    );',
'',
'    END IF;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', -1);',
'END ;'))
,p_attribute_02=>'P123_FOLDER_LIB_NAME,P123_SCOPE_TYPE,P123_FOLDER_LIB_ID'
,p_attribute_03=>'P123_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9258734674635615287)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800260469441009627)
,p_event_id=>wwv_flow_imp.id(2800258937712009624)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P123_ROW_COUNT'') == 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
unistr('    $(''h1[class="t-Breadcrumb-label"]'').text($v(''P123_FOLDER_LIB_NAME'')+''(ID\FF1A''+$v(''P123_FOLDER_LIB_ID'')+'')'')'),
'    return true;',
'}  else if($v(''P123_ROW_COUNT'') > 0) {',
unistr('    alert(''\5206\7C7B\540D\79F0\91CD\590D'');'),
'    return false;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2800263244578009630)
,p_name=>unistr('\6DFB\52A0\7528\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2800234897330009550)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800265239665009633)
,p_event_id=>wwv_flow_imp.id(2800263244578009630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG            NVARCHAR2(2000);',
'V_FOLDER_CLASS_ID    NUMBER(20);',
'V_FOLDER_CLASS_LEVEL NUMBER(20);',
'V_IS_INSERT          NUMBER(20);',
'V_COUNT              NUMBER(20);',
'CURSOR ADDUSERCURSOR IS SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_USER_IDS, '',''))',
'MINUS',
'SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_USER_IDS_RAW, '',''));',
'CURSOR ADDDEPTCURSOR IS SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_DEPT_IDS, '',''))',
'MINUS',
'SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_DEPT_IDS_RAW, '',''));',
'BEGIN',
unistr('--\5206\7C7BID'),
'SELECT FOLDER_CLASS_ID INTO V_FOLDER_CLASS_ID FROM STS_FOLDER_LIB WHERE FOLDER_LIB_ID = :P123_FOLDER_LIB_ID;',
unistr('--\5206\7C7B\662F\5426\9700\8981\6DFB\52A0'),
'IF V_FOLDER_CLASS_ID IS NULL THEN',
'V_IS_INSERT := 0;',
'ELSE',
'SELECT FOLDER_CLASS_LEVEL',
'INTO V_FOLDER_CLASS_LEVEL',
'FROM STS_FOLDER_CLASS',
'WHERE FOLDER_CLASS_ID = V_FOLDER_CLASS_ID;',
'IF V_FOLDER_CLASS_LEVEL = 0 THEN',
'V_IS_INSERT := 0;',
'ELSE',
'V_IS_INSERT := 1;',
'END IF;',
'END IF;',
'',
'DELETE STS_SCOPE',
'WHERE REFERENCE_ID = :P123_FOLDER_LIB_ID',
'AND REFERENCE_TYPE = ''FOLDER_LIB''',
'AND RANGE_TYPE = ''USER''',
'AND RANGE_ID IN (SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_USER_IDS_RAW, '',''))',
'MINUS',
'SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_USER_IDS, '','')));',
'',
'DELETE STS_SCOPE',
'WHERE REFERENCE_ID = :P123_FOLDER_LIB_ID',
'AND REFERENCE_TYPE = ''FOLDER_LIB''',
'AND RANGE_TYPE = ''DEPT''',
'AND RANGE_ID IN (SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_DEPT_IDS_RAW, '',''))',
'MINUS',
'SELECT COLUMN_VALUE',
'FROM TABLE (SPLITSTR(:P123_DEPT_IDS, '','')));',
'-- WRITE_LOG(''JW'', ''SCOPE2'',111, NULL, 1);',
'FOR CUR IN ADDUSERCURSOR',
'LOOP',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'CREATION_DATE,',
'UPDATED_BY,',
'RANGE_TYPE,',
'RANGE_ID,',
'REFERENCE_ID,',
'REFERENCE_TYPE,',
'PERMISSIONS_TYPE,',
'SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'SYSDATE,',
':MPF_USER_ID,',
'''USER'',',
'CUR.COLUMN_VALUE,',
':P123_FOLDER_LIB_ID,',
'''FOLDER_LIB'',',
'''VIEW'',',
':MPF_USER_ID);',
unistr('--\5206\7C7B'),
'IF V_IS_INSERT = 1 THEN',
'SELECT COUNT(SCOPE_ID)',
'INTO V_COUNT',
'FROM STS_SCOPE',
'WHERE REFERENCE_ID = V_FOLDER_CLASS_ID',
'AND REFERENCE_TYPE = ''FOLDER_CLASS''',
'AND RANGE_TYPE = ''USER''',
'AND RANGE_ID = CUR.COLUMN_VALUE;',
'IF V_COUNT = 0 THEN',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'CREATION_DATE,',
'UPDATED_BY,',
'RANGE_TYPE,',
'RANGE_ID,',
'REFERENCE_ID,',
'REFERENCE_TYPE,',
'PERMISSIONS_TYPE,',
'SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'SYSDATE,',
':MPF_USER_ID,',
'''USER'',',
'CUR.COLUMN_VALUE,',
'V_FOLDER_CLASS_ID,',
'''FOLDER_CLASS'',',
'''VIEW'',',
':MPF_USER_ID);',
'END IF;',
'END IF;',
'END LOOP;',
'',
'FOR CUR IN ADDDEPTCURSOR',
'LOOP',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'CREATION_DATE,',
'UPDATED_BY,',
'RANGE_TYPE,',
'RANGE_ID,',
'REFERENCE_ID,',
'REFERENCE_TYPE,',
'PERMISSIONS_TYPE,',
'SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'SYSDATE,',
':MPF_USER_ID,',
'''DEPT'',',
'CUR.COLUMN_VALUE,',
':P123_FOLDER_LIB_ID,',
'''FOLDER_LIB'',',
'''VIEW'',',
':MPF_USER_ID);',
unistr('--\5206\7C7B'),
'IF V_IS_INSERT = 1 THEN',
'SELECT COUNT(SCOPE_ID)',
'INTO V_COUNT',
'FROM STS_SCOPE',
'WHERE REFERENCE_ID = V_FOLDER_CLASS_ID',
'AND REFERENCE_TYPE = ''FOLDER_CLASS''',
'AND RANGE_TYPE = ''DEPT''',
'AND RANGE_ID = CUR.COLUMN_VALUE;',
'IF V_COUNT = 0 THEN',
'INSERT INTO STS_SCOPE (CREATED_BY,',
'CREATION_DATE,',
'UPDATED_BY,',
'RANGE_TYPE,',
'RANGE_ID,',
'REFERENCE_ID,',
'REFERENCE_TYPE,',
'PERMISSIONS_TYPE,',
'SOURCE_USER_ID)',
'VALUES (:MPF_USER_ID,',
'SYSDATE,',
':MPF_USER_ID,',
'''DEPT'',',
'CUR.COLUMN_VALUE,',
'V_FOLDER_CLASS_ID,',
'''FOLDER_CLASS'',',
'''VIEW'',',
':MPF_USER_ID);',
'END IF;',
'END IF;',
'END LOOP;',
'APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', 1);',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
':APP_ID, :APP_CODE);',
'APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P123_USER_IDS,P123_USER_IDS_RAW,P123_DEPT_IDS,P123_DEPT_IDS_RAW,P123_FOLDER_LIB_ID'
,p_attribute_03=>'P123_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2488205314845712776)
,p_event_id=>wwv_flow_imp.id(2800263244578009630)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'/**',
'* CREATE BY:',
'* CREATE DATE:',
'* MODIFY BY:WXX',
'* MODIFY DATE:2025/4/25 10:44',
unistr('* DESCRIPTION:\64CD\4F5C\65E5\5FD7123 \6587\4EF6\5E93-\7BA1\7406\64CD\4F5C'),
'*/',
'  ',
'BEGIN',
'    STS_SAVE_VISIBLE_RANGE_LIB_LOG_PRO(',
'            ''VIEW'',',
'            :P123_FOLDER_LIB_ID,',
'            :P123_USER_IDS_RAW,',
'            :P123_USER_IDS,',
'            :P123_DEPT_IDS_RAW,',
'            :P123_DEPT_IDS,',
'            :MPF_USER_ID,',
'            :USER_TENANT,',
'            :APP_PAGE_ID,',
'            :MPF_USER_ID,',
'            :APP_NAME,',
'            :APP_ID,',
'            :APP_CODE',
'    );',
'    APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', 1);',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P123_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P123_USER_IDS,P123_USER_IDS_RAW,P123_DEPT_IDS,P123_DEPT_IDS_RAW,P123_FOLDER_LIB_ID'
,p_attribute_03=>'P123_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9258734674635615287)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800263749449009630)
,p_event_id=>wwv_flow_imp.id(2800263244578009630)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P123_ROW_COUNT'') > 0) {',
unistr('    alert(''\6DFB\52A0\6210\529F\FF01'');'),
'    $s("P123_USER_IDS_RAW", $v("P123_USER_IDS"))',
'    $s("P123_DEPT_IDS_RAW", $v("P123_DEPT_IDS"))',
'    return true;',
'} else {',
unistr('    alert(''\6DFB\52A0\5931\8D25\FF01'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2800264833280009631)
,p_event_id=>wwv_flow_imp.id(2800263244578009630)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3494780335265447515)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2800242105402009569)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3494780335265447515)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6210\5458\6743\9650 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROLE_ID      NUMBER(20);',
'    V_RANGE_TYPE   varchar2(10);',
'    V_RANGE_ID     varchar2(200);',
'    V_REFERENCE_ID NUMBER(20);',
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''U'' THEN IF :PERMISSIONS_TYPE = ''REMOVE'' THEN',
'            SELECT RANGE_TYPE, RANGE_ID, REFERENCE_ID',
'            INTO V_RANGE_TYPE,V_RANGE_ID,V_REFERENCE_ID',
'            FROM STS_SCOPE',
'            WHERE SCOPE_ID = :SCOPE_ID;',
unistr('            --\6587\5E93\5E93'),
'            DELETE STS_SCOPE',
'            WHERE SCOPE_ID = :SCOPE_ID;',
unistr('            --\6587\4EF6'),
'            delete STS_SCOPE',
'            where RANGE_TYPE = V_RANGE_TYPE',
'              and RANGE_ID = V_RANGE_ID',
'              and REFERENCE_TYPE = ''FOLDER''',
'              and REFERENCE_ID IN (select FOLDER_ID from STS_FOLDER where FOLDER_LIB_ID = V_REFERENCE_ID);',
'            STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FOLDER_LIB'',:SCOPE_ID);',
'        ELSIF :PERMISSIONS_TYPE = ''MANAGE'' THEN',
'            STS_SYNCHRONIZE_ACCOUNTS_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FOLDER_LIB'');',
'            UPDATE STS_SCOPE',
'            SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                ROLE_ID=V_ROLE_ID,',
'                UPDATED_BY       = :MPF_USER_ID,',
'                UPDATE_DATE      =SYSDATE',
'            WHERE SCOPE_ID = :SCOPE_ID;',
'',
'        ELSE',
'            UPDATE STS_SCOPE',
'            SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                UPDATED_BY       = :MPF_USER_ID,',
'                UPDATE_DATE      =SYSDATE',
'            WHERE SCOPE_ID = :SCOPE_ID;',
'        END IF;',
'        END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>462340868197734436
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_name=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_alias=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_step_title=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/dingtalk-3.0.25.js',
'#WORKSPACE_FILES#static/js/dingConfig.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P103_USER_IDS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P103_DEPT_IDS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'    $(''#add_user'').click()',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$(''h1[class="t-Breadcrumb-label"]'').text($v(''P103_FOLDER_CLASS_NAME'')+''(ID\FF1A''+$v(''P103_FOLDER_CLASS_ID'')+'')'')'),
'',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK();',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P103_USER_IDS'').split(",");',
'    let deptList = $v(''P103_DEPT_IDS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'',
'$(''#chooseInput'').val($v(''P103_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#add_user {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3777758800180424174)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3777758879157424175)
,p_plug_name=>unistr('\6210\5458\53CA\6743\9650')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3116753649188160584)
,p_plug_name=>unistr('\9009\62E9\53EF\89C1\4EBA\5458')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(3777758879157424175)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9793552152245686507)
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
 p_id=>wwv_flow_imp.id(3567153015185784280)
,p_plug_name=>unistr('\6210\5458\6743\96502')
,p_parent_plug_id=>wwv_flow_imp.id(3777758879157424175)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
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
'WHERE A.REFERENCE_TYPE = ''FOLDER_CLASS''',
'  AND A.REFERENCE_ID = :P103_FOLDER_CLASS_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P103_FOLDER_CLASS_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\6210\5458\6743\96502')
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
 p_id=>wwv_flow_imp.id(3118647598165345299)
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
 p_id=>wwv_flow_imp.id(3118647753458345300)
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
 p_id=>wwv_flow_imp.id(3327119188119757327)
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
 p_id=>wwv_flow_imp.id(3567153207130784282)
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
 p_id=>wwv_flow_imp.id(3567153270450784283)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3567153399249784284)
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
 p_id=>wwv_flow_imp.id(3567153504220784285)
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
 p_id=>wwv_flow_imp.id(3567153612114784286)
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
 p_id=>wwv_flow_imp.id(3567153715789784287)
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
,p_lov_source=>unistr('STATIC:\53EF\7BA1\7406;MANAGE,\53EF\67E5\770B;VIEW,\79FB\9664;REMOVE')
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
 p_id=>wwv_flow_imp.id(3778894982822516738)
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
 p_id=>wwv_flow_imp.id(3778895074403516739)
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
 p_id=>wwv_flow_imp.id(3567153077316784281)
,p_internal_uid=>242767539309678544
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(3778545709650814427)
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
 p_id=>wwv_flow_imp.id(3778900912058518400)
,p_interactive_grid_id=>wwv_flow_imp.id(3567153077316784281)
,p_static_id=>'4545154'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3778901060649518401)
,p_report_id=>wwv_flow_imp.id(3778900912058518400)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3327747480890396564)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3327119188119757327)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334536630584774513)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3118647598165345299)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3334537564904774519)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3118647753458345300)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778901939193518404)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3567153270450784283)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778902865777518407)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3567153399249784284)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778903722134518409)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3567153504220784285)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778904564592518411)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3567153612114784286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778905473177518414)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3567153715789784287)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778906426788518416)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3778894982822516738)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778909501199531856)
,p_view_id=>wwv_flow_imp.id(3778901060649518401)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3778895074403516739)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3777758987228424176)
,p_plug_name=>unistr('\6210\5458\6743\9650')
,p_parent_plug_id=>wwv_flow_imp.id(3777758879157424175)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793532524250686501)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SCOPE_ID,',
'       ROLE_ID,',
'       USER_ID,',
'       '''' V_SOURCE_USER_ID,',
'       PERMISSIONS_TYPE',
'from STS_SCOPE',
'where REFERENCE_TYPE = ''FOLDER_CLASS''',
'  and REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  and ROLE_ID in (select ROLE_ID',
'                  from STS_ROLE',
'                  where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'union all',
'select SCOPE_ID,',
'       ROLE_ID,',
'       USER_ID,',
unistr('       ''\7531\300C'' || (select USER_NAME || ''-'' || JOB_NUMBER JOB_NUMBER_NAME from STS_USER where EXT_USER_ID = SOURCE_USER_ID and TENANT_ID = 3)  || ''\300D\6DFB\52A0'' V_SOURCE_USER_ID,'),
'       PERMISSIONS_TYPE',
'from STS_SCOPE',
'where REFERENCE_TYPE = ''FOLDER_CLASS''',
'  and REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  and ROLE_ID not in (select ROLE_ID',
'                  from STS_ROLE',
'                  where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P103_FOLDER_CLASS_ID'
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
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3777759150798424178)
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
 p_id=>wwv_flow_imp.id(3777759749073424184)
,p_name=>'PERMISSIONS_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PERMISSIONS_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\6743\9650')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_is_required=>false
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3778026367185859661)
,p_lov_display_extra=>true
,p_lov_display_null=>true
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
'declare',
'    l_role_id number(20):=0;',
'begin',
'    select count(1) into l_role_id from STS_ROLE where ROLE_TYPE = ''SUPER_ADMIN'' and ROLE_ID = :ROLE_ID and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT;',
'',
'    if l_role_id > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_readonly_condition2=>'PLSQL'
,p_readonly_for_each_row=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3778000831959784444)
,p_name=>'V_SOURCE_USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'V_SOURCE_USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6765\6E90')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(3778000896310784445)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7528\6237')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3777950784587504271)
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
 p_id=>wwv_flow_imp.id(3778001031974784446)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3778001075046784447)
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
 p_id=>wwv_flow_imp.id(3778001273770784449)
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
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3777759068133424177)
,p_internal_uid=>453373530126318440
,p_is_editable=>true
,p_edit_operations=>'u'
,p_update_authorization_scheme=>wwv_flow_imp.id(3778545709650814427)
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
 p_id=>wwv_flow_imp.id(3778005680418784625)
,p_interactive_grid_id=>wwv_flow_imp.id(3777759068133424177)
,p_static_id=>'4536202'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3778005906341784626)
,p_report_id=>wwv_flow_imp.id(3778005680418784625)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778006412478784629)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3777759150798424178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778011828756784643)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3777759749073424184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778039382825047557)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3778000831959784444)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778041950871052891)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3778000896310784445)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778045709783071086)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(3778001031974784446)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3778050883116093884)
,p_view_id=>wwv_flow_imp.id(3778005906341784626)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3778001273770784449)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3777954935188578215)
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
 p_id=>wwv_flow_imp.id(3777955546612578238)
,p_plug_name=>unistr('\81EA\5B9A\4E49\5206\7C7B')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>80
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FOLDER_CLASS_ID,',
'       FOLDER_CLASS_NAME,',
'       FOLDER_CLASS_LEVEL,',
'       DEL_FLAG,',
'       TENANT_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       SCOPE_TYPE',
'  from STS_FOLDER_CLASS'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3778895517909516743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3777758879157424175)
,p_button_name=>unistr('\6DFB\52A0\7528\6237')
,p_button_static_id=>'add_user'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\7528\6237')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3777758108107424167)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3777758800180424174)
,p_button_name=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_security_scheme=>wwv_flow_imp.id(3778545709650814427)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3778000541147784442)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3777758987228424176)
,p_button_name=>unistr('\6DFB\52A0')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_security_scheme=>wwv_flow_imp.id(3778545709650814427)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3777964730453578248)
,p_branch_name=>unistr('\8F6C\5230\9875 101')
,p_branch_action=>'f?p=&APP_ID.:101:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3116754043938160588)
,p_name=>'P103_USER_IDS_RAW'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'  AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3116754124976160589)
,p_name=>'P103_DEPT_IDS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'  AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3116754251679160590)
,p_name=>'P103_DEPT_IDS_RAW'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'  AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3116754287273160591)
,p_name=>'P103_COMBINED_NAMES'
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
'                             WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'                               AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'                               AND RANGE_TYPE = ''USER'')',
'',
'         UNION',
unistr('         -- \4F7F\7528 UNION \53BB\91CD'),
unistr('         -- \67E5\8BE2DEPT\7684\540D\5B57'),
'         SELECT d.NAME',
'         FROM SHARE_BASIC_JA_DING_DEPT_V@MPF_prod_DBLINK d',
'         WHERE d.DEPT_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'                               AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'                               AND RANGE_TYPE = ''DEPT''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777758623224424172)
,p_name=>'P103_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777956021714578239)
,p_name=>'P103_FOLDER_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'FOLDER_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777956407874578242)
,p_name=>'P103_FOLDER_CLASS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3777758800180424174)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_prompt=>unistr('\540D\79F0')
,p_source=>'FOLDER_CLASS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>10
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777956827352578243)
,p_name=>'P103_FOLDER_CLASS_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'FOLDER_CLASS_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777957183917578243)
,p_name=>'P103_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777957542096578244)
,p_name=>'P103_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777957992539578244)
,p_name=>'P103_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777958396628578244)
,p_name=>'P103_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777958774547578245)
,p_name=>'P103_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777959230628578245)
,p_name=>'P103_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3777959564473578245)
,p_name=>'P103_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3777758800180424174)
,p_item_source_plug_id=>wwv_flow_imp.id(3777955546612578238)
,p_prompt=>unistr('\662F\5426\516C\5F00')
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\5206\7C7B\96C6\56E2\5185\516C\5F00\FF08\53EF\67E5\770B\FF09;ALL,\5206\7C7B\96C6\56E2\5185\4E0D\516C\5F00;USER')
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_inline_help_text=>unistr('<span style="color: #ff0000;">\5F53\8BBE\4E3A\96C6\56E2\5185\4E0D\516C\5F00\65F6\FF0C\4EC5\4E0B\65B9\6743\9650\5217\8868\4E2D\6210\5458\53EF\6839\636E\6743\9650\8BBF\95EE\8BE5\5206\7C7B</span>')
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
 p_id=>wwv_flow_imp.id(3778895386951516742)
,p_name=>'P103_USER_IDS'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FOLDER_CLASS''',
'  AND REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3777757836652424164)
,p_name=>unistr('\76D1\542C\5BF9\8BDD\6846\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3777757887969424165)
,p_event_id=>wwv_flow_imp.id(3777757836652424164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P103_FOLDER_CLASS_NAME''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3777758145181424168)
,p_name=>unistr('\4FEE\6539\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3777758108107424167)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337869036068353980)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\4FEE\6539\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3777758292621424169)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
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
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327115102233757286)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
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
'    SELECT COUNT(FOLDER_CLASS_ID)',
'    INTO V_COUNT',
'    FROM STS_FOLDER_CLASS',
'    WHERE FOLDER_CLASS_NAME = :P103_FOLDER_CLASS_NAME',
'      AND FOLDER_CLASS_ID <> :P103_FOLDER_CLASS_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
'    IF V_COUNT = 0 THEN',
'        UPDATE STS_FOLDER_CLASS',
'        SET FOLDER_CLASS_NAME =:P103_FOLDER_CLASS_NAME,',
'            SCOPE_TYPE=:P103_SCOPE_TYPE,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=:MPF_USER_ID',
'        WHERE FOLDER_CLASS_ID = :P103_FOLDER_CLASS_ID;',
'    END IF;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P103_FOLDER_CLASS_ID,P103_FOLDER_CLASS_NAME,P103_SCOPE_TYPE'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022908309105783914)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG           VARCHAR2(2000);',
unistr('V_COUNT             NUMBER(10);-- \6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
unistr('V_COUNT_TYPE        NUMBER(10);-- \6821\9A8C\5206\7C7B\6743\9650\8303\56F4\662F\5426\91CD\590D  BY wxx  2025-04-27'),
'V_FOLDER_CLASS_NAME VARCHAR2(45);--BY wxx  2025-04-23',
'V_RESULT            VARCHAR2(4000);',
'V_JSON              CLOB;',
'V_JSON_TYPE         CLOB;',
'V_PERMISSION_TYPE   VARCHAR2(45);',
'/**',
'* CREATE BY:LCB',
'* CREATE DATE:',
'* MODIFY BY:WXX',
unistr('* MODIFY DATE:2025/4/23 11:37  \52A0\4E0A\64CD\4F5C\65E5\5FD7   2025-04-27 \4F18\5316\903B\8F91'),
unistr('* DESCRIBE: \81EA\5B9A\4E49\5206\7C7B-\7BA1\7406'),
'*/',
'BEGIN',
unistr('-- \6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D(\4E3A0\4E0D\91CD\590D)'),
'SELECT COUNT(FOLDER_CLASS_ID)',
'INTO V_COUNT',
'FROM STS_FOLDER_CLASS',
'WHERE FOLDER_CLASS_NAME = :P103_FOLDER_CLASS_NAME',
'AND FOLDER_CLASS_ID <> :P103_FOLDER_CLASS_ID',
'AND DEL_FLAG = 0',
'AND TENANT_ID = :USER_TENANT;',
'',
unistr('--  \6821\9A8C\5206\7C7B\6743\9650\8303\56F4\662F\5426\91CD\590D(\4E3A0\4E0D\91CD\590D)'),
'SELECT COUNT(FOLDER_CLASS_ID)',
'INTO V_COUNT_TYPE',
'FROM STS_FOLDER_CLASS',
'WHERE SCOPE_TYPE = :P103_SCOPE_TYPE',
'AND FOLDER_CLASS_ID = :P103_FOLDER_CLASS_ID',
'AND DEL_FLAG = 0',
'AND TENANT_ID = :USER_TENANT;',
'',
'',
'IF V_COUNT = 0 THEN',
unistr('--         \67E5\539F\6765\7684\540D\79F0 --BY wxx  2025-04-23'),
'SELECT FOLDER_CLASS_NAME',
'INTO V_FOLDER_CLASS_NAME',
'FROM STS_FOLDER_CLASS',
'WHERE FOLDER_CLASS_ID = :P103_FOLDER_CLASS_ID',
'AND DEL_FLAG = 0',
'AND TENANT_ID = :USER_TENANT;',
unistr('--   \66F4\65B0'),
'UPDATE STS_FOLDER_CLASS',
'SET FOLDER_CLASS_NAME =:P103_FOLDER_CLASS_NAME,',
'SCOPE_TYPE=:P103_SCOPE_TYPE,',
'UPDATE_DATE=SYSDATE,',
'UPDATED_BY=:MPF_USER_ID',
'WHERE FOLDER_CLASS_ID = :P103_FOLDER_CLASS_ID;',
unistr('--\5199\5165\65E5\5FD7 --BY wxx  2025-04-23'),
'V_JSON := ''{',
'"current_name": "'' || :P103_FOLDER_CLASS_NAME || ''",',
'"old_name": "'' || V_FOLDER_CLASS_NAME || ''",',
'"new_name": "'' || :P103_FOLDER_CLASS_NAME || ''",',
'"permission_type": "",',
'"user_ids": "",',
'"dept_ids": "",',
'"range_content": ""',
'}'';',
unistr('V_RESULT := STS_OPERATION_LOG_COMMON_FUN( --\4FEE\6539\5206\7C7B\540D\79F0'),
'P_MODULE_CODE => ''FOLDER_CLASS'',',
'P_OPERATION_CODE => ''CLASS_NAME'',',
'P_BEHAVIOR_CODE => ''UPDATE'',',
'P_ENTITY_ID => :P103_FOLDER_CLASS_ID,',
'P_EXTRA_PARAMS => V_JSON,',
'P_APP_ID => :APP_ID,',
'P_TENANT_ID => :USER_TENANT,',
'P_SYS_USER_ID =>:MPF_USER_ID',
'    );',
'',
'if V_COUNT_TYPE = 0 then',
unistr('--          --\53EF\89C1\8303\56F4'),
'V_PERMISSION_TYPE := CASE',
unistr('                     WHEN :P103_SCOPE_TYPE = ''ALL'' THEN ''\5168\5458\53EF\89C1'''),
unistr('                     WHEN :P103_SCOPE_TYPE = ''USER'' THEN ''\90E8\5206\6210\5458\53EF\89C1'''),
unistr('                     ELSE ''\672A\77E5\7C7B\578B'''),
'END;',
'',
unistr('JA_WRITE_LOG(''\8303\56F4'', ''debug'', V_PERMISSION_TYPE, 1, 3);'),
'V_JSON_TYPE := ''{',
'"current_name": "'' || :P103_FOLDER_CLASS_NAME || ''",',
'"old_name": "",',
'"new_name": "",',
'"permission_type": "'' || V_PERMISSION_TYPE || ''",',
'"user_ids": "",',
'"dept_ids": "",',
'"range_content": ""',
'}'';',
unistr('V_RESULT := STS_OPERATION_LOG_COMMON_FUN( --\4FEE\6539\5206\7C7B'),
'    P_MODULE_CODE => ''FOLDER_CLASS'',',
'    P_OPERATION_CODE => ''CLASS_RANGE'',',
'    P_BEHAVIOR_CODE => ''MODIFY'',',
'    P_ENTITY_ID => :P103_FOLDER_CLASS_ID,',
'    P_EXTRA_PARAMS => V_JSON_TYPE,',
'    P_APP_ID => :APP_ID,',
'    P_TENANT_ID => :USER_TENANT,',
'    P_SYS_USER_ID =>:MPF_USER_ID',
'        );',
'end if;',
'END IF;',
'COMMIT;',
'APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'     :APP_NAME, :APP_ID, :APP_CODE);',
'APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P103_FOLDER_CLASS_ID,P103_FOLDER_CLASS_NAME,P103_SCOPE_TYPE'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3777758405505424170)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P103_ROW_COUNT'') == 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
unistr('    $(''h1[class="t-Breadcrumb-label"]'').text($v(''P103_FOLDER_CLASS_NAME'')+''(ID\FF1A''+$v(''P103_FOLDER_CLASS_ID'')+'')'')'),
'    return true;',
'}  else if($v(''P103_ROW_COUNT'') > 0) {',
unistr('    alert(''\5206\7C7B\540D\79F0\91CD\590D'');'),
'    return false;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3777758708923424173)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3777955546612578238)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337870560735353995)
,p_event_id=>wwv_flow_imp.id(3777758145181424168)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3777758800180424174)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3778001431555784450)
,p_name=>unistr('\5206\7C7B\6743\9650')
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_imp.id(3777758987228424176)
,p_triggering_element=>'PERMISSIONS_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778001553792784452)
,p_event_id=>wwv_flow_imp.id(3778001431555784450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                 NVARCHAR2(2000);',
'    V_ROW_COUNT               NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID         NUMBER(20) := 0;',
'    V_ACTION_NAME             NVARCHAR2(100);',
'    V_ACTION_CODE             NVARCHAR2(100);',
'    V_MODULE_NAME             NVARCHAR2(100);',
'    V_MODULE_CODE             NVARCHAR2(100);',
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2025/3/19 11:36',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6210\5458\6743\9650\4FEE\6539\64CD\4F5C'),
'     */',
'BEGIN',
unistr('        -- #\64CD\4F5C\65E5\5FD7\8BB0\5F55 \5206\7C7B\6743\9650\64CD\4F5C'),
unistr('        -- \884C\4E3A\FF08\4FEE\6539\FF09'),
'        select CONFIG_NAME, CONFIG_CODE',
'        INTO V_ACTION_NAME,V_ACTION_CODE',
'        from STS_SYS_CONFIG',
'        where CONFIG_TYPE = 15',
'          and CONFIG_CODE = ''UPDATE''',
'          and IS_ENABLE = 1',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- \5185\5BB9\FF08\81EA\5B9A\4E49\5206\7C7B\FF09'),
'        select CONFIG_NAME, CONFIG_CODE',
'        INTO V_MODULE_NAME,V_MODULE_CODE',
'        from STS_SYS_CONFIG',
'        where CONFIG_TYPE = 30',
'          and CONFIG_CODE = ''FOLDER_CLASS''',
'          and IS_ENABLE = 1',
'          and DEL_FLAG = 0',
'          and TENANT_ID = :USER_TENANT;',
'',
unistr('        -- #\65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C \5206\7C7B\6743\9650\4FEE\6539'),
unistr('        insert into STS_OPERATION_LOG (operation_action, -- \589E\5220\6539\67E5\3001\79FB\9664\3001\6062\590D\3001\5F52\6863\7B49'),
unistr('                                       operation_module, operation_content, -- \5220\9664\5206\7C7B\300C\6280\672F\652F\6301\300D'),
'                                       OPERATION_REFERENCE_ID, tenant_id, created_by, creation_date, updated_by, update_date)',
unistr('        values (V_ACTION_CODE, V_MODULE_CODE, ''\6210\5458\300C\675C\4E3D-JA043586\300D\4FEE\6539\5206\7C7B\300C\6280\672F\652F\6301\300D\6743\9650\4E3A\300C\53EF\67E5\770B/\53EF\4E0B\8F7D\300D'' , V_FOLDER_CLASS_ID, :USER_TENANT, :MPF_USER_ID, sysdate, :MPF_USER_ID, sysdate);'),
'',
unistr('        -- \4FEE\6539\64CD\4F5C'),
'        update STS_SCOPE set PERMISSIONS_TYPE=:PERMISSIONS_TYPE, UPDATED_BY=:MPF_USER_ID, UPDATE_DATE=sysdate where REFERENCE_TYPE = ''FOLDER_CLASS'' and REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'         and ROLE_ID = :ROLE_ID;',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', V_ROW_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P103_FOLDER_CLASS_ID'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778001916819784455)
,p_event_id=>wwv_flow_imp.id(3778001431555784450)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P103_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'}  else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778001729221784453)
,p_event_id=>wwv_flow_imp.id(3778001431555784450)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3777758987228424176)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327115184652757287)
,p_name=>unistr('\6DFB\52A0\7528\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3778895517909516743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327115326906757288)
,p_event_id=>wwv_flow_imp.id(3327115184652757287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
'    INSERT INTO STS_SCOPE(REFERENCE_ID,',
'                          REFERENCE_TYPE,',
'                          USER_ID,',
'                          SOURCE_USER_ID,',
'                          PERMISSIONS_TYPE,',
'                          CREATED_BY,',
'                          CREATION_DATE,',
'                          UPDATED_BY,',
'                          UPDATE_DATE)',
'    SELECT :P103_FOLDER_CLASS_ID',
'         , ''FOLDER_CLASS''',
'         , DATA_VAL',
'         , :MPF_USER_ID',
'         , ''VIEW_DOWN''',
'         , :MPF_USER_ID',
'         , SYSDATE',
'         , :MPF_USER_ID',
'         , SYSDATE',
'    FROM JA_UTILS_PKG.SPLIT_STR(:P103_USER_ID, '':'');',
'    APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', 1);',
'    COMMIT ;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P103_USER_IDS,P103_FOLDER_CLASS_ID'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3116754410156160592)
,p_event_id=>wwv_flow_imp.id(3327115184652757287)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: ',
'    * CREATE DATE: 2025/2/21 15:51',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4\65E5\5FD7'),
'    */',
'    cursor addUserCursor is select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P103_USER_IDS, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P103_USER_IDS_RAW, '',''));',
'    cursor addDeptCursor is select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P103_DEPT_IDS, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P103_DEPT_IDS_RAW, '',''));',
'begin',
'',
'        delete STS_SCOPE',
'        where REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'          and REFERENCE_TYPE = ''FOLDER_CLASS''',
'          and RANGE_TYPE = ''USER''',
'          and RANGE_ID in (select COLUMN_VALUE',
'                           FROM TABLE (SPLITSTR(:P103_USER_IDS_RAW, '',''))',
'                           MINUS',
'                           SELECT COLUMN_VALUE',
'                           FROM TABLE (SPLITSTR(:P103_USER_IDS, '','')));',
'',
'        delete STS_SCOPE',
'        where REFERENCE_ID = :P103_FOLDER_CLASS_ID',
'          and REFERENCE_TYPE = ''FOLDER_CLASS''',
'          and RANGE_TYPE = ''DEPT''',
'          and RANGE_ID in (select COLUMN_VALUE',
'                           FROM TABLE (SPLITSTR(:P103_DEPT_IDS_RAW, '',''))',
'                           MINUS',
'                           SELECT COLUMN_VALUE',
'                           FROM TABLE (SPLITSTR(:P103_DEPT_IDS, '','')));',
'        -- WRITE_LOG(''jw'', ''scope2'',111, null, 1);',
'        for cur in addUserCursor',
'            loop',
'                INSERT INTO STS_SCOPE (CREATED_BY,',
'                                       CREATION_DATE,',
'                                       UPDATED_BY,',
'                                       RANGE_TYPE,',
'                                       RANGE_ID,',
'                                       REFERENCE_ID,',
'                                       REFERENCE_TYPE,',
'                                       PERMISSIONS_TYPE,',
'                                       SOURCE_USER_ID)',
'                VALUES (:MPF_USER_ID,',
'                        SYSDATE,',
'                        :MPF_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P103_FOLDER_CLASS_ID,',
'                        ''FOLDER_CLASS'',',
'                        ''VIEW'',',
'                        :MPF_USER_ID);',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
'                INSERT INTO STS_SCOPE (CREATED_BY,',
'                                       CREATION_DATE,',
'                                       UPDATED_BY,',
'                                       RANGE_TYPE,',
'                                       RANGE_ID,',
'                                       REFERENCE_ID,',
'                                       REFERENCE_TYPE,',
'                                       PERMISSIONS_TYPE,',
'                                       SOURCE_USER_ID)',
'                VALUES (:MPF_USER_ID,',
'                        SYSDATE,',
'                        :MPF_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P103_FOLDER_CLASS_ID,',
'                        ''FOLDER_CLASS'',',
'                        ''VIEW'',',
'                        :MPF_USER_ID);',
'            end loop;',
'    APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', 1);',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P103_FOLDER_CLASS_ID,P103_SCOPE_TYPE,P103_USER_IDS,P103_USER_IDS_RAW,P103_DEPT_IDS,P103_DEPT_IDS_RAW'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022908654601783917)
,p_event_id=>wwv_flow_imp.id(3327115184652757287)
,p_event_result=>'TRUE'
,p_action_sequence=>30
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
'* MODIFY DATE:2025/4/23 17:24',
unistr('* DESCRIPTION:\64CD\4F5C\65E5\5FD7103 \81EA\5B9A\4E49\5206\7C7B-\7BA1\7406\64CD\4F5C'),
'*/',
'  ',
'BEGIN',
'    STS_SAVE_VISIBLE_RANGE_LOG_PRO(',
'            ''VIEW'',',
'            :P103_FOLDER_CLASS_ID,',
'            :P103_USER_IDS_RAW,',
'            :P103_USER_IDS,',
'            :P103_DEPT_IDS_RAW,',
'            :P103_DEPT_IDS,',
'            :MPF_USER_ID,',
'            :USER_TENANT,',
'            :APP_PAGE_ID,',
'            :MPF_USER_ID,',
'            :APP_NAME,',
'            :APP_ID,',
'            :APP_CODE',
'    );',
'    APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', 1);',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P103_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P103_FOLDER_CLASS_ID,P103_USER_IDS,P103_USER_IDS_RAW,P103_DEPT_IDS,P103_DEPT_IDS_RAW'
,p_attribute_03=>'P103_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327115434785757289)
,p_event_id=>wwv_flow_imp.id(3327115184652757287)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P103_ROW_COUNT'') > 0) {',
unistr('    alert(''\6DFB\52A0\6210\529F\FF01'');'),
'    $s("P103_USER_IDS_RAW", $v("P103_USER_IDS"))',
'    $s("P103_DEPT_IDS_RAW", $v("P103_DEPT_IDS"))',
'    return true;',
'} else {',
unistr('    alert(''\6DFB\52A0\5931\8D25\FF01'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327115484646757290)
,p_event_id=>wwv_flow_imp.id(3327115184652757287)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3567153015185784280)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3777965637685578249)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3777955546612578238)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \81EA\5B9A\4E49\5206\7C7B')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453580099678472512
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3778001144139784448)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3567153015185784280)
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
unistr('            --\5206\7C7B'),
'            DELETE STS_SCOPE',
'            WHERE SCOPE_ID = :SCOPE_ID;',
unistr('            --\6587\4EF6\5E93'),
'            DELETE STS_SCOPE',
'            WHERE RANGE_TYPE = V_RANGE_TYPE',
'              AND RANGE_ID = V_RANGE_ID',
'              AND REFERENCE_TYPE = ''FOLDER_LIB''',
'              AND REFERENCE_ID IN (SELECT FOLDER_LIB_ID FROM STS_FOLDER_LIB WHERE FOLDER_CLASS_ID = V_REFERENCE_ID);',
unistr('            --\6587\4EF6'),
'            DELETE STS_SCOPE',
'            WHERE RANGE_TYPE = V_RANGE_TYPE',
'              AND RANGE_ID = V_RANGE_ID',
'              AND REFERENCE_TYPE = ''FOLDER''',
'              AND REFERENCE_ID IN (SELECT B.FOLDER_ID',
'                                   FROM STS_FOLDER_LIB A',
'                                            LEFT JOIN STS_FOLDER B',
'                                                      ON A.FOLDER_LIB_ID = B.FOLDER_LIB_ID',
'                                   WHERE A.FOLDER_CLASS_ID = V_REFERENCE_ID',
'                                     AND A.TENANT_ID = :USER_TENANT',
'                                     AND A.DEL_FLAG = 0',
'                                     AND B.TENANT_ID = :USER_TENANT',
'                                     AND B.DEL_FLAG = 0);',
'         STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FOLDER_CLASS'',:SCOPE_ID);',
'        ELSIF :PERMISSIONS_TYPE = ''MANAGE'' THEN',
'            STS_SYNCHRONIZE_ACCOUNTS_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FOLDER_CLASS'');',
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
,p_internal_uid=>453615606132678711
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3777965191848578249)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3777955546612578238)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \81EA\5B9A\4E49\5206\7C7B')
,p_internal_uid=>453579653841472512
);
wwv_flow_imp.component_end;
end;
/

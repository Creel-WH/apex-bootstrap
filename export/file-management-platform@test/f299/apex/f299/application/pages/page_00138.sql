prompt --application/pages/page_00138
begin
--   Manifest
--     PAGE: 00138
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
 p_id=>138
,p_name=>unistr('\6743\9650\8BBE\7F6E')
,p_alias=>unistr('\6743\9650\8BBE\7F6E')
,p_step_title=>unistr('\6743\9650\8BBE\7F6E')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/dingtalk-3.0.25.js',
'#WORKSPACE_FILES#static/js/dingConfig.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P138_USER_IDS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P138_DEPT_IDS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'    $(''#add_user'').click()',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P138_FILE_NAME''))',
'',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK();',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P138_USER_IDS'').split(",");',
'    let deptList = $v(''P138_DEPT_IDS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'// document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'//     let userList = $v(''P138_USER_IDS'').split(",");',
'//     let deptList = $v(''P138_DEPT_IDS'').split(",");',
'    ',
unistr('//     if (window.confirm("\786E\5B9A\8981\9009\62E9\4EBA\5458\5417\FF1F")) {  // \6DFB\52A0\786E\8BA4\5BF9\8BDD\6846'),
'//         DingTalkAuth.chooseUsers(userList, deptList, visible_callback);',
'//     } else {',
unistr('//         // console.log("\7528\6237\53D6\6D88\4E86\9009\62E9\64CD\4F5C");'),
unistr('//         alert("\7528\6237\53D6\6D88\4E86\9009\62E9\64CD\4F5C")'),
unistr('//         // \53EF\5728\6B64\5904\6DFB\52A0\53D6\6D88\540E\7684\5904\7406\903B\8F91'),
'//     }',
'// });',
'',
'$(''#chooseInput'').val($v(''P138_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#add_user {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5172336431107390129)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5172336510084390130)
,p_plug_name=>unistr('\6210\5458\53CA\6743\9650')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4511331280115126539)
,p_plug_name=>unistr('\9009\62E9\53EF\89C1\4EBA\5458')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(5172336510084390130)
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
 p_id=>wwv_flow_imp.id(4961730646112750235)
,p_plug_name=>unistr('\6210\5458\6743\9650')
,p_parent_plug_id=>wwv_flow_imp.id(5172336510084390130)
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
unistr('              (''\7531\300C'' || C.NAME || ''-'' || C.JOB_NUMBER || ''\300D\6DFB\52A0''))) V_SOURCE_USER_ID,'),
'       A.PERMISSIONS_TYPE,',
'       B.ROLE_TYPE,',
'       A.RANGE_TYPE,',
'       A.RANGE_ID,',
'       A.REFERENCE_ID',
'FROM STS_SCOPE A',
'         LEFT JOIN STS_ROLE B',
'              ON A.ROLE_ID = B.ROLE_ID',
'         LEFT JOIN BASIC_JA_DING_USER C',
'              ON A.SOURCE_USER_ID =C.USER_ID',
'         left join BASIC_JA_DING_USER D',
'              ON A.RANGE_TYPE =''USER'' and A.RANGE_ID =D.USER_ID',
'         left join BASIC_JA_DING_DEPT E',
'              ON A.RANGE_TYPE =''DEPT'' and A.RANGE_ID =TO_CHAR(E.DEPT_ID)',
'WHERE A.REFERENCE_TYPE = ''FILE''',
'  AND A.REFERENCE_ID = :P138_FILE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P138_FILE_ID'
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
 p_id=>wwv_flow_imp.id(3341771648526124294)
,p_name=>'REFERENCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REFERENCE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4513225229092311254)
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
 p_id=>wwv_flow_imp.id(4513225384385311255)
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
 p_id=>wwv_flow_imp.id(4721696819046723282)
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
 p_id=>wwv_flow_imp.id(4961730838057750237)
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
 p_id=>wwv_flow_imp.id(4961730901377750238)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4961731030176750239)
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
 p_id=>wwv_flow_imp.id(4961731135147750240)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
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
 p_id=>wwv_flow_imp.id(4961731243041750241)
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
 p_id=>wwv_flow_imp.id(4961731346716750242)
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
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3778026367185859661)
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
 p_id=>wwv_flow_imp.id(5173472613749482693)
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
 p_id=>wwv_flow_imp.id(5173472705330482694)
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
 p_id=>wwv_flow_imp.id(4961730708243750236)
,p_internal_uid=>2089125736368403958
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
 p_id=>wwv_flow_imp.id(5173478542985484355)
,p_interactive_grid_id=>wwv_flow_imp.id(4961730708243750236)
,p_static_id=>'4545154'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(5173478691576484356)
,p_report_id=>wwv_flow_imp.id(5173478542985484355)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3341814290933663434)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3341771648526124294)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4722325111817362519)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4721696819046723282)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4729114261511740468)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4513225229092311254)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4729115195831740474)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4513225384385311255)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173479570120484359)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4961730901377750238)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173480496704484362)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4961731030176750239)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173481353061484364)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4961731135147750240)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173482195519484366)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4961731243041750241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173483104104484369)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4961731346716750242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173484057715484371)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(5173472613749482693)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(5173487132126497811)
,p_view_id=>wwv_flow_imp.id(5173478691576484356)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(5173472705330482694)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5172532566115544170)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341659420689058993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(5172336510084390130)
,p_button_name=>unistr('\6DFB\52A0\7528\6237')
,p_button_static_id=>'add_user'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\7528\6237')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341437565709325720)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(5172336510084390130)
,p_button_name=>unistr('\79FB\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\79FB\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341658036540058984)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(5172336431107390129)
,p_button_name=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341436678610325712)
,p_name=>'P138_FILE_NAME'
,p_item_sequence=>160
,p_item_default=>'select FILE_NAME from STS_FILE where  FILE_ID  = :P138_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341770846900124286)
,p_name=>'P138_SCOPE_IDS'
,p_item_sequence=>170
,p_item_default=>'select FILE_NAME from STS_FILE where  FILE_ID  = :P138_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4266989449089818616)
,p_name=>'P138_SCOPE_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(5172336431107390129)
,p_item_default=>'select SCOPE_TYPE from STS_FILE where  FILE_ID  = :P138_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\662F\5426\516C\5F00')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:\96C6\56E2\5185\53EF\67E5\770B\548C\4E0B\8F7D;VIEW_DOWN,\96C6\56E2\5185\53EF\67E5\770B;VIEW,\4EC5\6210\5458\53EF\89C1;USER')
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_inline_help_text=>unistr('<!-- <span style="color: #ff0000;">\5F53\8BBE\4E3A\96C6\56E2\5185\4E0D\516C\5F00\65F6\FF0C\4EC5\4E0B\65B9\6743\9650\5217\8868\4E2D\6210\5458\53EF\6839\636E\6743\9650\8BBF\95EE\8BE5\6587\4EF6</span> -->')
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
 p_id=>wwv_flow_imp.id(4267005692389818823)
,p_name=>'P138_FILE_ID'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4511374560607127005)
,p_name=>'P138_USER_IDS_RAW'
,p_item_sequence=>110
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P138_FILE_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4511374641645127006)
,p_name=>'P138_DEPT_IDS'
,p_item_sequence=>120
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P138_FILE_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4511374768348127007)
,p_name=>'P138_DEPT_IDS_RAW'
,p_item_sequence=>130
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(RANGE_ID, '','') as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P138_FILE_ID',
'  AND RANGE_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4511374803942127008)
,p_name=>'P138_COMBINED_NAMES'
,p_item_sequence=>140
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT XMLAGG(XMLELEMENT(e, NAME, '','').extract(''//text()''))',
'           .getClobVal()',
'FROM (',
unistr('         -- \67E5\8BE2USER\7684\540D\5B57'),
'         SELECT u.NAME',
'         FROM SHARE_BASIC_JA_DING_USER_V@MPF_prod_DBLINK u',
'         WHERE u.USER_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FILE''',
'                               AND REFERENCE_ID = :P138_FILE_ID',
'                               AND RANGE_TYPE = ''USER'')',
'',
'         UNION',
unistr('         -- \4F7F\7528 UNION \53BB\91CD'),
unistr('         -- \67E5\8BE2DEPT\7684\540D\5B57'),
'         SELECT d.NAME',
'         FROM SHARE_BASIC_JA_DING_DEPT_V@MPF_prod_DBLINK d',
'         WHERE d.DEPT_ID IN (SELECT s.RANGE_ID',
'                             FROM STS_SCOPE s',
'                             WHERE REFERENCE_TYPE = ''FILE''',
'                               AND REFERENCE_ID = :P138_FILE_ID',
'                               AND RANGE_TYPE = ''DEPT''))'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5172379139893390589)
,p_name=>'P138_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5173515903620483159)
,p_name=>'P138_USER_IDS'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select XMLAGG(XMLELEMENT(e, RANGE_ID, '','').extract(''//text()''))',
'           .getClobVal() as VISIBLE_USERS',
'from STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P138_FILE_ID',
'  AND RANGE_TYPE = ''USER'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341668641583059061)
,p_name=>unistr('\76D1\542C\5BF9\8BDD\6846\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341669120178059061)
,p_event_id=>wwv_flow_imp.id(3341668641583059061)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P138_FOLDER_LIB_NAME''))'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341669513868059062)
,p_name=>unistr('\4FEE\6539\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341658036540058984)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341670056024059062)
,p_event_id=>wwv_flow_imp.id(3341669513868059062)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\5B9A\8981\4FEE\6539\5417\FF1F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341670551610059062)
,p_event_id=>wwv_flow_imp.id(3341669513868059062)
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
unistr('    --\4FEE\6539\6570\636E'),
'    UPDATE STS_FILE',
'    SET SCOPE_TYPE=:P138_SCOPE_TYPE,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:MPF_USER_ID',
'    WHERE FILE_ID = :P138_FILE_ID;',
unistr('    --\540C\6B65\4E0B\7EA7\6743\9650'),
'     FOR I IN (SELECT FILE_ID',
'              FROM STS_FILE',
'              WHERE (ROOT_FOLDER_ID = :P138_FILE_ID OR FILE_ID = :P138_FILE_ID)',
'                AND TENANT_ID = :USER_TENANT',
'                AND DEL_FLAG <> 1',
'              START WITH FILE_ID = :P138_FILE_ID',
'              CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                     AND DEL_FLAG  <> 1',
'                     AND PRIOR DEL_FLAG  <> 1',
'                     AND IS_PERMISSION_CHANGES = 0)',
'        LOOP',
unistr('            --\540C\6B65\4E0B\7EA7\6743\9650'),
'            UPDATE STS_FILE',
'            SET SCOPE_TYPE=:P138_SCOPE_TYPE,',
'                UPDATE_DATE=SYSDATE,',
'                UPDATED_BY=:MPF_USER_ID',
'            WHERE FILE_ID = I.FILE_ID;',
'        END LOOP;',
'',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P138_SCOPE_TYPE,P138_FILE_ID'
,p_attribute_03=>'P138_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341671540854059063)
,p_event_id=>wwv_flow_imp.id(3341669513868059062)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P138_ROW_COUNT'') == 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'    return true;',
'}else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341672438962059063)
,p_name=>unistr('\6DFB\52A0\7528\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341659420689058993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341673872568059065)
,p_event_id=>wwv_flow_imp.id(3341672438962059063)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7-1')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    cursor addUserCursor is select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P138_USER_IDS, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P138_USER_IDS_RAW, '',''));',
'    cursor addDeptCursor is select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P138_DEPT_IDS, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P138_DEPT_IDS_RAW, '',''));',
'begin',
unistr('--\5220\9664\5386\53F2\6570\636E'),
'delete STS_SCOPE',
'where REFERENCE_ID = :P138_FILE_ID',
'and REFERENCE_TYPE = ''FILE''',
'and RANGE_TYPE = ''USER''',
'and RANGE_ID in (select COLUMN_VALUE',
'               FROM TABLE (SPLITSTR(:P138_USER_IDS_RAW, '',''))',
'               MINUS',
'               SELECT COLUMN_VALUE',
'               FROM TABLE (SPLITSTR(:P138_USER_IDS, '','')));',
'',
'delete STS_SCOPE',
'where REFERENCE_ID = :P138_FILE_ID',
'and REFERENCE_TYPE = ''FILE''',
'and RANGE_TYPE = ''DEPT''',
'and RANGE_ID in (select COLUMN_VALUE',
'               FROM TABLE (SPLITSTR(:P138_DEPT_IDS_RAW, '',''))',
'               MINUS',
'               SELECT COLUMN_VALUE',
'               FROM TABLE (SPLITSTR(:P138_DEPT_IDS, '','')));',
'-- WRITE_LOG(''jw'', ''scope2'',111, null, 1);',
unistr('--\6DFB\52A0\6210\5458'),
'for cur in addUserCursor',
'loop',
'    INSERT INTO STS_SCOPE (CREATED_BY,',
'                           UPDATED_BY,',
'                           RANGE_TYPE,',
'                           RANGE_ID,',
'                           REFERENCE_ID,',
'                           REFERENCE_TYPE,',
'                           PERMISSIONS_TYPE,',
'                           SOURCE_USER_ID)',
'    VALUES (:MPF_USER_ID,',
'            :MPF_USER_ID,',
'            ''USER'',',
'            cur.COLUMN_VALUE,',
'            :P138_FILE_ID,',
'            ''FILE'',',
'            ''VIEW_DOWN'',',
'            :DIAN_USER_ID);',
'end loop;',
unistr('--\6DFB\52A0\90E8\95E8'),
'for cur in addDeptCursor',
'loop',
'    INSERT INTO STS_SCOPE (CREATED_BY,',
'                           UPDATED_BY,',
'                           RANGE_TYPE,',
'                           RANGE_ID,',
'                           REFERENCE_ID,',
'                           REFERENCE_TYPE,',
'                           PERMISSIONS_TYPE,',
'                           SOURCE_USER_ID)',
'    VALUES (:MPF_USER_ID,',
'            :MPF_USER_ID,',
'            ''DEPT'',',
'            cur.COLUMN_VALUE,',
'            :P138_FILE_ID,',
'            ''FILE'',',
'            ''VIEW_DOWN'',',
'            :DIAN_USER_ID);',
'end loop;',
unistr('--\540C\6B65\4E0B\7EA7\6743\9650'),
'FOR ITEM IN (SELECT FILE_ID',
'FROM STS_FILE',
'WHERE (ROOT_FOLDER_ID = :P138_FILE_ID OR FILE_ID = :P138_FILE_ID)',
'AND TENANT_ID = :USER_TENANT',
'AND DEL_FLAG = 0',
'START WITH FILE_ID = :P138_FILE_ID',
'CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'AND DEL_FLAG = 0',
'AND PRIOR DEL_FLAG = 0',
'AND IS_PERMISSION_CHANGES = 0)LOOP',
'    IF ITEM.FILE_ID <> :P138_FILE_ID THEN ',
'    delete STS_SCOPE where REFERENCE_TYPE =''FILE'' AND REFERENCE_ID =ITEM.FILE_ID;',
'',
'    insert into STS_SCOPE (CREATED_BY,',
'                           UPDATED_BY,',
'                           RANGE_TYPE,',
'                           RANGE_ID,',
'                           REFERENCE_ID,',
'                           REFERENCE_TYPE,',
'                           PERMISSIONS_TYPE,',
'                           SOURCE_USER_ID)',
'    select CREATED_BY,',
'           UPDATED_BY,',
'           RANGE_TYPE,',
'           RANGE_ID,',
'           ITEM.FILE_ID,',
'           REFERENCE_TYPE,',
'           PERMISSIONS_TYPE,',
'           SOURCE_USER_ID',
'    from STS_SCOPE',
'        where REFERENCE_TYPE =''FILE'' AND REFERENCE_ID =:P138_FILE_ID;',
'    END IF;',
'end loop;',
'    APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', 1);',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', -1);',
'end;',
''))
,p_attribute_02=>'P138_USER_IDS,P138_USER_IDS_RAW,P138_DEPT_IDS,P138_DEPT_IDS_RAW,P138_FILE_ID'
,p_attribute_03=>'P138_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341674930756059069)
,p_event_id=>wwv_flow_imp.id(3341672438962059063)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P138_ROW_COUNT'') > 0) {',
unistr('    alert(''\6DFB\52A0\6210\529F\FF01'');'),
'    $s("P138_USER_IDS_RAW", $v("P138_USER_IDS"))',
'    $s("P138_DEPT_IDS_RAW", $v("P138_DEPT_IDS"))',
'    return true;',
'} else {',
unistr('    alert(''\6DFB\52A0\5931\8D25\FF01'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341674372746059067)
,p_event_id=>wwv_flow_imp.id(3341672438962059063)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4961730646112750235)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341770578573124284)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4961730646112750235)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341770719782124285)
,p_event_id=>wwv_flow_imp.id(3341770578573124284)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'',
'map.set(''P138_SCOPE_IDS'',''SCOPE_ID'');',
'utils.set(this.data, map);',
'',
unistr('console.log(''\884C\9009\4E2D SCOPE_ID'' + $v(''P138_SCOPE_IDS''));')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341770903112124287)
,p_name=>unistr('\79FB\9664')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341437565709325720)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'!utils.checkNull($v(''P138_SCOPE_IDS''))'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341770982422124288)
,p_event_id=>wwv_flow_imp.id(3341770903112124287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\79FB\9664')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341771208479124290)
,p_event_id=>wwv_flow_imp.id(3341770903112124287)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\8981\79FB\9664\7684\6570\636E\FF01'');')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341771296177124291)
,p_event_id=>wwv_flow_imp.id(3341770903112124287)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_RANGE_TYPE   VARCHAR2(100);',
'    V_RANGE_ID     VARCHAR2(256);',
'    V_REFERENCE_ID VARCHAR2(256);',
'    V_ERR_MSG      VARCHAR2(4000);',
'BEGIN',
'    FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P138_SCOPE_IDS, '',''))',
'        LOOP',
'            SELECT RANGE_TYPE, RANGE_ID, REFERENCE_ID',
'            INTO V_RANGE_TYPE,V_RANGE_ID,V_REFERENCE_ID',
'            FROM STS_SCOPE',
'            WHERE SCOPE_ID = ITEM.DATA_VAL;',
'            STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(V_RANGE_TYPE, V_RANGE_ID, :MPF_USER_ID, :USER_TENANT, ITEM.DATA_VAL);',
unistr('            --\5220\9664\6587\4EF6\5E93'),
'            DELETE STS_SCOPE',
'            WHERE SCOPE_ID = ITEM.DATA_VAL;',
unistr('            --\4E0B\7EA7\6743\9650'),
'            DELETE STS_SCOPE',
'            WHERE REFERENCE_TYPE = ''FILE''',
'              AND RANGE_TYPE = V_RANGE_TYPE',
'              AND RANGE_ID = V_RANGE_ID',
'              AND REFERENCE_ID IN (SELECT FILE_ID',
'                                   FROM STS_FILE',
'                                   WHERE (ROOT_FOLDER_ID = V_REFERENCE_ID OR FILE_ID = V_REFERENCE_ID)',
'                                     AND TENANT_ID = :USER_TENANT',
'                                     AND DEL_FLAG <> 1',
'                                   START WITH FILE_ID = V_REFERENCE_ID',
'                                   CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                                          AND DEL_FLAG <> 1',
'                                          AND PRIOR DEL_FLAG <> 1',
'                                          AND IS_PERMISSION_CHANGES = 0);',
'',
'        END LOOP;',
'    APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\79FB\9664\4EBA\5458'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P138_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P138_SCOPE_IDS'
,p_attribute_03=>'P138_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341771443236124292)
,p_event_id=>wwv_flow_imp.id(3341770903112124287)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P138_ROW_COUNT'')>0){',
unistr('    alert(''\79FB\9664\6210\529F'');'),
'}else{',
unistr('    alert(''\79FB\9664\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341771487040124293)
,p_event_id=>wwv_flow_imp.id(3341770903112124287)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4961730646112750235)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3341665462173059045)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4961730646112750235)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6210\5458\6743\9650 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROLE_ID NUMBER(20);',
'BEGIN',
'    CASE :APEX$ROW_STATUS',
'        WHEN ''U'' THEN -- IF :PERMISSIONS_TYPE = ''REMOVE'' THEN',
'--             DELETE STS_SCOPE',
'--             WHERE SCOPE_ID = :SCOPE_ID;',
'--             STS_SYNCHRONIZE_ACCOUNTS_DELETE_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT,''FILE'',:SCOPE_ID);',
'',
unistr('            IF :PERMISSIONS_TYPE = ''MANAGE'' THEN --\7BA1\7406\6743\9650'),
'                STS_SYNCHRONIZE_ACCOUNTS_PRO(:RANGE_TYPE, :RANGE_ID, :MPF_USER_ID, :USER_TENANT);',
unistr('                --\6587\4EF6\5E93'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE SCOPE_ID = :SCOPE_ID;',
unistr('                --\4E0B\7EA7\6743\9650'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE REFERENCE_TYPE = ''FILE''',
'                  AND RANGE_TYPE = :RANGE_TYPE',
'                  AND RANGE_ID = :RANGE_ID',
'                  AND REFERENCE_ID IN (SELECT FILE_ID FROM STS_FILE WHERE ROOT_FOLDER_ID = :REFERENCE_ID);',
'            ELSE',
unistr('                --\6587\4EF6\5E93'),
'                UPDATE STS_SCOPE',
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE SCOPE_ID = :SCOPE_ID;',
'                UPDATE STS_SCOPE',
unistr('                    --\4E0B\7EA7\6743\9650'),
'                SET PERMISSIONS_TYPE = :PERMISSIONS_TYPE,',
'                    ROLE_ID=V_ROLE_ID,',
'                    UPDATED_BY       = :MPF_USER_ID,',
'                    UPDATE_DATE      =SYSDATE',
'                WHERE REFERENCE_TYPE = ''FILE''',
'                  AND RANGE_TYPE = :RANGE_TYPE',
'                  AND RANGE_ID = :RANGE_ID',
'                  AND REFERENCE_ID IN (SELECT FILE_ID',
'                                       FROM STS_FILE',
'                                       WHERE (ROOT_FOLDER_ID = :REFERENCE_ID OR FILE_ID = :REFERENCE_ID)',
'                                         AND TENANT_ID = :USER_TENANT',
'                                         AND DEL_FLAG <> 1',
'                                       START WITH FILE_ID = :REFERENCE_ID',
'                                       CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'                                              AND DEL_FLAG <> 1',
'                                              AND PRIOR DEL_FLAG <> 1',
'                                              AND IS_PERMISSION_CHANGES = 0);',
'            END IF;',
'        END CASE;',
'END;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>469060490297712767
);
wwv_flow_imp.component_end;
end;
/

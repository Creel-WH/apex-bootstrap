prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_name=>unistr('\5DE5\4F5C\53F0\8BBE\7F6E')
,p_alias=>unistr('\5DE5\4F5C\53F0\8BBE\7F6E')
,p_step_title=>unistr('\5DE5\4F5C\53F0\8BBE\7F6E')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807299148506566)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function deleteApp(app_id) {',
'    $s(''P52_SELECT_APP_ID'', app_id)',
'    $("#delete_btn").click()',
'}',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P52_VISIBLE_USERS'', result.users.map(i => i.emplId).join('':''))',
'    $s(''P52_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('':''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P52_SCOPE_TYPE'') !== ''ALL'') {',
'    $(''#user_input'').show()',
'}',
'',
'if (!utils.checkNull($v(''P52_TEMPLATE_PREVIEW'')) && !utils.checkNull($v(''P52_TEMPLATE_PREVIEW'')) ) {',
'    $(''#app_icon'').attr(''src'', $v(''P52_TEMPLATE_PREVIEW''))',
'}',
'',
'if(!utils.checkNull($v(''P52_TEMPLATE_TYPE'')) && $v(''P52_TEMPLATE_TYPE'')!==''SUB_LINK''){',
'    $("#jump_prompt").show()',
'    $(''#app_grid'').hide()',
'    $(''#P52_TITLE_2_DISPLAY'').hide()',
'}else {',
'    $("#jump_prompt").hide()',
'    $(''#app_grid'').show()',
'    $(''#P52_TITLE_2_DISPLAY'').show()',
'}',
'',
'// $(''#show_template'').show()',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P52_VISIBLE_USERS'').split(":");',
'    let deptList = $v(''P52_VISIBLE_DEPTS'').split(":");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'$(''#chooseInput'').val($v(''P52_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn,#user_input {',
'    display: none;',
'}',
'',
'#app_icon {',
'    height: 100px;',
'}',
'',
'.save_btn {',
'    margin: 20px 0 20px;',
'}',
'',
'',
'.app-btn {',
'    margin: 0 20px 20px 0;',
'}',
'',
'.title_line {',
'    margin-top: 50px;',
'    /* border-top: 1px solid red; */',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4790972416715648578)
,p_plug_name=>unistr('\5DE5\4F5C\53F0\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WORKBENCH_ID,',
'       WORKBENCH_NAME,',
'       w.TEMPLATE_ID,',
'       t.TEMPLATE_PREVIEW,',
'       t.TEMPLATE_TYPE,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, USER_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from MPF_BASIC_JA_DING_USER_V u',
'        where u.USER_ID in (select USER_ID',
'                            from JW_ADMIN a',
'                            where REFERENCE_TYPE = ''WORKBENCH''',
'                              and a.REFERENCE_ID = w.WORKBENCH_ID',
'                              and ADMIN_LEVEL = 1))                  as MAIN_ADMIN_IDS,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, USER_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from MPF_BASIC_JA_DING_USER_V u',
'        where u.USER_ID in (select USER_ID',
'                            from JW_ADMIN a',
'                            where REFERENCE_TYPE = ''WORKBENCH''',
'                              and a.REFERENCE_ID = w.WORKBENCH_ID',
'                              and ADMIN_LEVEL = 2))                  as INFO_ADMIN_IDS,',
'       (select MIN(ADMIN_LEVEL)',
'        from JW_ADMIN a',
'        where REFERENCE_TYPE = ''WORKBENCH''',
'          and a.REFERENCE_ID = w.WORKBENCH_ID',
'          and a.USER_ID = :JW_USER_ID)                               as admin_level,',
'       w.SCOPE_TYPE,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, ENTITY_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''WORKBENCH''',
'          and s.REFERENCE_ID = w.WORKBENCH_ID',
'          and s.ENTITY_TYPE = ''USER'')                                as VISIBLE_USERS,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, ENTITY_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''WORKBENCH''',
'          and s.REFERENCE_ID = w.WORKBENCH_ID',
'          and s.ENTITY_TYPE = ''DEPT'')                                as VISIBLE_DEPTS,',
'       (SELECT RTRIM(XMLAGG(XMLELEMENT(e, NAME || '','')).extract(''//text()'').GETCLOBVAL(), '','')',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''WORKBENCH''',
'                                       AND s.REFERENCE_ID = w.WORKBENCH_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''WORKBENCH''',
'                                       AND s.REFERENCE_ID = w.WORKBENCH_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS COMBINED_NAMES',
'from JW_WORKBENCH w LEFT JOIN JW_WORKBENCH_TEMPLATE t on w.TEMPLATE_ID = t.TEMPLATE_ID;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3834659458372127653)
,p_plug_name=>unistr('\9884\89C8\56FE')
,p_region_name=>'show_template'
,p_parent_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>190
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
 p_id=>wwv_flow_imp.id(4791770508731256459)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>230
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4791770878624256462)
,p_plug_name=>unistr('\5E94\7528\5217\8868')
,p_region_name=>'app_grid'
,p_parent_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>340
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JW_APP_ID,',
'       APP_ICON,',
'       APP_NAME',
'FROM JW_APP w',
'WHERE DEL_FLAG = 0',
'  and IS_BLACKLIST = 0',
'  and JW_APP_ID in (select DISTINCT asso.APP_ID',
'                    from JW_APP_GROUP_ASSO asso',
'                             join JW_APP_GROUP g on asso.APP_GROUP_ID = g.APP_GROUP_ID',
'                    where g.WORKBENCH_ID = :P52_WORKBENCH_ID',
'                      and asso.DEL_FLAG = 0);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P52_WORKBENCH_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\5E94\7528\5217\8868')
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
 p_id=>wwv_flow_imp.id(4305116200572543759)
,p_name=>'APP_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\56FE\6807')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="app_name">',
    '  <img style=''height: 40px;margin-right: 20px'' src="&APP_ICON." title="&APP_ICON."/>',
    '</div>')))).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4305116753671543764)
,p_name=>unistr('\9009\62E9')
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
 p_id=>wwv_flow_imp.id(4791771869624256472)
,p_name=>'APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5E94\7528')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
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
 p_id=>wwv_flow_imp.id(4791773303220256487)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', unistr('<span style="color:#FF4D4F;cursor: pointer;margin-right: 20px;" onclick="deleteApp(&JW_APP_ID.)">\5220\9664</span>'))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_display_condition_type=>'EXPRESSION'
,p_display_condition=>':JW_IS_ADMIN = 1 or :P52_ADMIN_LEVEL = 1'
,p_display_condition2=>'PLSQL'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4791774067883256494)
,p_name=>'JW_APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JW_APP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4791770929757256463)
,p_internal_uid=>2331638091569406197
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
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(4791793629245525749)
,p_interactive_grid_id=>wwv_flow_imp.id(4791770929757256463)
,p_static_id=>'2374433'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4791793873381525750)
,p_report_id=>wwv_flow_imp.id(4791793629245525749)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4307254617652783945)
,p_view_id=>wwv_flow_imp.id(4791793873381525750)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4305116200572543759)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>209.6875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791801461614525780)
,p_view_id=>wwv_flow_imp.id(4791793873381525750)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4791771869624256472)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>793.6099999999999
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791831248881623366)
,p_view_id=>wwv_flow_imp.id(4791793873381525750)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4791773303220256487)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791832757805629320)
,p_view_id=>wwv_flow_imp.id(4791793873381525750)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4791774067883256494)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4791754933623144358)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788559498064999243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4791770878624256462)
,p_button_name=>'delete'
,p_button_static_id=>'delete_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788544003455999216)
,p_button_sequence=>250
,p_button_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_button_name=>unistr('\4FDD\5B58\66F4\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\4FE1\606F')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn save_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788559880530999243)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4791770878624256462)
,p_button_name=>unistr('\6DFB\52A0\5E94\7528')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\5E94\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:53:&SESSION.::&DEBUG.:53:P53_WORKBENCH_ID:&P52_WORKBENCH_ID.'
,p_button_condition=>':JW_IS_ADMIN = 1 or :P52_ADMIN_LEVEL = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn app-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788560258340999244)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4791770878624256462)
,p_button_name=>unistr('\6279\91CF\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\6279\91CF\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':JW_IS_ADMIN = 1 or :P52_ADMIN_LEVEL = 1'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn app-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3834660743403127681)
,p_name=>'P52_TEMPLATE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_prompt=>unistr('\7ED1\5B9A\6A21\677F')
,p_source=>'TEMPLATE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select TEMPLATE_NAME,TEMPLATE_ID from JW_WORKBENCH_TEMPLATE where DEL_FLAG = 0 and IS_ENABLE = 1;'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
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
 p_id=>wwv_flow_imp.id(3834660844775127682)
,p_name=>'P52_TITLE_3'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_default=>unistr('\7ED1\5B9A\6A21\677F')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3834661069641127684)
,p_name=>'P52_TEMPLATE_PREVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'TEMPLATE_PREVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3834661162549127685)
,p_name=>'P52_TEMPLATE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'TEMPLATE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790974064036648610)
,p_name=>'P52_WORKBENCH_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'WORKBENCH_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790974695208648616)
,p_name=>'P52_WORKBENCH_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_prompt=>unistr('\5DE5\4F5C\53F0\540D\79F0\FF1A')
,p_source=>'WORKBENCH_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when=>'JW_IS_ADMIN'
,p_read_only_when2=>'1'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790975120331648620)
,p_name=>'P52_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790975159846648621)
,p_name=>'P52_VISIBLE_USERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790975334832648622)
,p_name=>'P52_VISIBLE_DEPTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790975491142648624)
,p_name=>'P52_COMBINED_NAMES'
,p_source_data_type=>'CLOB'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'COMBINED_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791771814605256487)
,p_name=>'P52_TITLE_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_default=>unistr('\53EF\89C1\8303\56F4')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791771926414256488)
,p_name=>'P52_TITLE_2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_default=>unistr('\5E94\7528\5217\8868')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_row_css_classes=>'title_line'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791791701109256549)
,p_name=>'P52_SELECT_APP_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4791770878624256462)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791856196263781717)
,p_name=>'P52_DEL_APP_IDS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4791770878624256462)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792414520254492986)
,p_name=>'P52_IS_REPEAT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417004499493011)
,p_name=>'P52_MAIN_ADMIN_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_prompt=>unistr('\5DE5\4F5C\53F0\4E3B\7BA1\7406\5458\FF1A')
,p_source=>'MAIN_ADMIN_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NAME_BY_ID'
,p_lov=>'select USER_ID,NAME || JOB_NUMBER from MPF_BASIC_JA_DING_USER_V where IS_LEAVE = 0;'
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when=>'P52_ADMIN_LEVEL'
,p_display_when2=>'2'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417136048493012)
,p_name=>'P52_INFO_ADMIN_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_prompt=>unistr('\666E\901A\7BA1\7406\5458\FF1A')
,p_source=>'INFO_ADMIN_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NAME_BY_ID'
,p_lov=>'select USER_ID,NAME || JOB_NUMBER from MPF_BASIC_JA_DING_USER_V where IS_LEAVE = 0;'
,p_cSize=>30
,p_cMaxlength=>4000
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417148627493013)
,p_name=>'P52_ADMIN_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'ADMIN_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417387608493015)
,p_name=>'P52_VISIBLE_USERS_RAW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417470923493016)
,p_name=>'P52_VISIBLE_DEPTS_RAW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417661966493018)
,p_name=>'P52_MAIN_ADMIN_IDS_RAW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'MAIN_ADMIN_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792417759475493019)
,p_name=>'P52_INFO_ADMIN_IDS_RAW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_item_source_plug_id=>wwv_flow_imp.id(4790972416715648578)
,p_source=>'INFO_ADMIN_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788561750775999259)
,p_name=>unistr('\5207\6362\7B5B\9009')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788562238876999261)
,p_event_id=>wwv_flow_imp.id(2788561750775999259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P52_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'    if (utils.checkNull($v(''P52_COMBINED_NAMES'')) && utils.checkNull($v(''P52_VISIBLE_USERS''))) {',
'        $s(''P52_VISIBLE_USERS'', $v(''P0_JW_USER_ID''))',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788562661362999262)
,p_name=>unistr('\79FB\9664\5E94\7528')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788559498064999243)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788563145599999262)
,p_event_id=>wwv_flow_imp.id(2788562661362999262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5220\9664\5E94\7528')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788563658428999262)
,p_event_id=>wwv_flow_imp.id(2788562661362999262)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\79FB\9664\5E94\7528 \65E5\5FD7'),
'    */',
'    v_app_name varchar2(255);',
'begin',
'    delete JW_APP_GROUP_ASSO',
'    where APP_ID = :P52_SELECT_APP_ID',
'      and APP_GROUP_ID in (select APP_GROUP_ID from JW_APP_GROUP where WORKBENCH_ID = :P52_WORKBENCH_ID);',
'    delete JW_USER_WORKBENCH_APP where JW_APP_ID = :P52_SELECT_APP_ID and WORKBENCH_ID = :P52_WORKBENCH_ID;',
'    select APP_NAME into v_app_name from JW_APP where JW_APP_ID = :P52_SELECT_APP_ID;',
unistr('    save_audit_log(:JW_USER_ID, ''WAM'',''WORKBENCH_DEL_APP'',''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\5E94\7528\FF1A'' ||  v_app_name);'),
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\79FB\9664\5E94\7528'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;',
''))
,p_attribute_02=>'P52_SELECT_APP_ID,P52_WORKBENCH_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788564153278999263)
,p_event_id=>wwv_flow_imp.id(2788562661362999262)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4791770878624256462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788564630608999263)
,p_name=>unistr('\4FDD\5B58\66F4\6539')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788544003455999216)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788566547181999264)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\67E5\8BE2\5E94\7528\540D\6570\91CF \65E5\5FD7'),
'    */',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM JW_WORKBENCH',
'    WHERE WORKBENCH_NAME = :P52_WORKBENCH_NAME',
'    and DEL_FLAG = 0 and WORKBENCH_ID <> :P52_WORKBENCH_ID;',
'',
'    :P52_IS_REPEAT := v_count;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\67E5\8BE2\5E94\7528\540D\6570\91CF'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'END;'))
,p_attribute_02=>'P52_WORKBENCH_NAME,P52_IS_REPEAT,P52_WORKBENCH_ID'
,p_attribute_03=>'P52_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788567095344999265)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P52_WORKBENCH_NAME''))) {',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'console.log($v(''P52_IS_REPEAT''))',
'if ($v(''P52_IS_REPEAT'') > 0) {',
'',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\91CD\590D\3002'');'),
'    return false',
'}',
'return true'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788567620599999265)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\4FE1\606F')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\4FE1\606F \65E5\5FD7'),
'    */',
'    v_workbench_name VARCHAR2(255);',
'begin',
'    --     WRITE_LOG(''jw'', ''save_admin_debug'', ''P52_WORKBENCH_ID:'' || :P52_WORKBENCH_ID, 1, 1);',
'',
'    select WORKBENCH_NAME into v_workbench_name from JW_WORKBENCH where WORKBENCH_ID = :P52_WORKBENCH_ID;',
'',
'    update JW_WORKBENCH',
'    set WORKBENCH_NAME=nvl(:P52_WORKBENCH_NAME, :P52_WORKBENCH_NAME),',
'        SCOPE_TYPE=nvl(:P52_SCOPE_TYPE, :P52_SCOPE_TYPE),',
'        TEMPLATE_ID=nvl(:P52_TEMPLATE_ID, :P52_TEMPLATE_ID),',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    where WORKBENCH_ID = :P52_WORKBENCH_ID;',
'',
'    if v_workbench_name != :P52_WORKBENCH_NAME then',
unistr('        save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_NAME'',''\5DE5\4F5C\53F0\FF1A'' || v_workbench_name || ''\6539\4E3A'' || :P52_WORKBENCH_NAME);'),
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\4FE1\606F'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P52_WORKBENCH_ID,P52_WORKBENCH_NAME,P52_SCOPE_TYPE,P52_TEMPLATE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788568113112999265)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4 \65E5\5FD7'),
'    */',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_USERS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_USERS_RAW, '':''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_DEPTS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_DEPTS_RAW, '':''));',
'begin',
'',
'    if :P52_SCOPE_TYPE != ''ALL'' then',
'--         WRITE_LOG(''jw'', ''save_admin_debug'', ''addUserCursor:'' || :addUserCursor, 1, 1);',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P52_WORKBENCH_ID',
'          and REFERENCE_TYPE = ''WORKBENCH''',
'          and ENTITY_TYPE = ''USER''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_USERS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_USERS, '':'')));',
'',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P52_WORKBENCH_ID',
'          and REFERENCE_TYPE = ''WORKBENCH''',
'          and ENTITY_TYPE = ''DEPT''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_DEPTS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P52_VISIBLE_DEPTS, '':'')));',
'',
'        for cur in addUserCursor',
'            loop',
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
'                        :P52_WORKBENCH_ID,',
'                        ''WORKBENCH'');',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
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
'                        :P52_WORKBENCH_ID,',
'                        ''WORKBENCH'');',
'            end loop;',
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P52_WORKBENCH_ID,P52_SCOPE_TYPE,P52_VISIBLE_USERS,P52_VISIBLE_USERS_RAW,P52_VISIBLE_DEPTS,P52_VISIBLE_DEPTS_RAW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788568605442999266)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53EF\89C1\8303\56F4\8BB0\5F55')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\53EF\89C1\8303\56F4\8BB0\5F55\4FDD\5B58 \65E5\5FD7'),
'    */',
'    v_user_names_raw nvarchar2(2048);',
'    v_dept_names_raw nvarchar2(2048);',
'    v_user_names     nvarchar2(2048);',
'    v_dept_names     nvarchar2(2048);',
'begin',
'',
'    if :P52_SCOPE_TYPE != ''ALL'' then',
'        if NVL(:P52_VISIBLE_USERS_RAW, ''NULL'') != NVL(:P52_VISIBLE_USERS, ''NULL'') then',
'            select listagg(NAME, '','')',
'            into v_user_names_raw',
'            from MPF_BASIC_JA_DING_USER_V',
'            where USER_ID in (select * from table (SPLITSTR(:P52_VISIBLE_USERS_RAW, '':'') ) );',
'            select listagg(NAME, '','')',
'            into v_user_names',
'            from MPF_BASIC_JA_DING_USER_V',
'            where USER_ID in (select * from table (SPLITSTR(:P52_VISIBLE_USERS, '':'') ) );',
'            save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_SCOPE'',',
unistr('                           ''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\4FEE\6539\524D\4EBA\5458\FF1A'' || v_user_names_raw || ''\FF1B\4FEE\6539\540E\4EBA\5458\FF1A'' || v_user_names'),
'            );',
'        end if;',
'',
'        if NVL(:P52_VISIBLE_DEPTS_RAW, ''NULL'') != NVL(:P52_VISIBLE_DEPTS, ''NULL'') then',
'            select listagg(NAME, '','')',
'            into v_dept_names_raw',
'            from MPF_BASIC_JA_DING_DEPT_V',
'            where DEPT_ID in (select * from table (SPLITSTR(:P52_VISIBLE_DEPTS_RAW, '':'') ) );',
'            select listagg(NAME, '','')',
'            into v_dept_names',
'            from MPF_BASIC_JA_DING_DEPT_V',
'            where DEPT_ID in (select * from table (SPLITSTR(:P52_VISIBLE_DEPTS, '':'') ) );',
'            -- save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_SCOPE'',',
unistr('            --                ''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\4FEE\6539\524D\90E8\95E8\FF1A'' || v_dept_names_raw || ''\FF1B\4FEE\6539\540E\90E8\95E8\FF1A'' || v_dept_names'),
'            -- );',
'        end if;',
'    else',
'        select listagg(NAME, '','')',
'        into v_user_names_raw',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select * from table (SPLITSTR(:P52_VISIBLE_USERS_RAW, '':'') ) );',
'        select listagg(NAME, '','')',
'        into v_dept_names_raw',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select * from table (SPLITSTR(:P52_VISIBLE_DEPTS_RAW, '':'') ) );',
'        save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_SCOPE'',',
unistr('                       ''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\4FEE\6539\524D\4EBA\5458\FF1A'' || v_user_names_raw || ''\FF1B\4FEE\6539\524D\90E8\95E8\FF1A'' || v_dept_names_raw || ''\FF1B\4FEE\6539\4E3A\5168\5458\53EF\89C1'''),
'        );',
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53EF\89C1\8303\56F4\8BB0\5F55\4FDD\5B58'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P52_WORKBENCH_ID,P52_SCOPE_TYPE,P52_VISIBLE_USERS,P52_VISIBLE_USERS_RAW,P52_VISIBLE_DEPTS,P52_VISIBLE_DEPTS_RAW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788569067180999266)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\7BA1\7406\5458')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:37',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\7BA1\7406\5458 \65E5\5FD7'),
'    */',
'    cursor addMainCursor is select *',
'                            FROM TABLE (SPLITSTR(:P52_MAIN_ADMIN_IDS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P52_MAIN_ADMIN_IDS_RAW, '':''));',
'    cursor addInfoCursor is select *',
'                            FROM TABLE (SPLITSTR(:P52_INFO_ADMIN_IDS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P52_INFO_ADMIN_IDS_RAW, '':''));',
'begin',
'    delete JW_ADMIN',
'    where REFERENCE_ID = :P52_WORKBENCH_ID',
'      and REFERENCE_TYPE = ''WORKBENCH''',
'      and ADMIN_LEVEL = 1',
'      and USER_ID in (select COLUMN_VALUE',
'                      FROM TABLE (SPLITSTR(:P52_MAIN_ADMIN_IDS_RAW, '':''))',
'                      MINUS',
'                      SELECT COLUMN_VALUE',
'                      FROM TABLE (SPLITSTR(:P52_MAIN_ADMIN_IDS, '':'')));',
'',
'    delete JW_ADMIN',
'    where REFERENCE_ID = :P52_WORKBENCH_ID',
'      and REFERENCE_TYPE = ''WORKBENCH''',
'      and ADMIN_LEVEL = 2',
'      and USER_ID in (select COLUMN_VALUE',
'                      FROM TABLE (SPLITSTR(:P52_INFO_ADMIN_IDS_RAW, '':''))',
'                      MINUS',
'                      SELECT COLUMN_VALUE',
'                      FROM TABLE (SPLITSTR(:P52_INFO_ADMIN_IDS, '':'')));',
'',
'    for cur in addMainCursor',
'        loop',
'            insert into JW_ADMIN (TENANT_ID,',
'                                  CREATED_BY,',
'                                  UPDATED_BY,',
'                                  USER_ID,',
'                                  REFERENCE_ID,',
'                                  REFERENCE_TYPE,',
'                                  IS_CREATOR,',
'                                  ADMIN_LEVEL)',
'            values (:JW_USER_TENANT,',
'                    :JW_USER_ID,',
'                    :JW_USER_ID,',
'                    cur.COLUMN_VALUE,',
'                    :P52_WORKBENCH_ID,',
'                    ''WORKBENCH'',',
'                    0, 1);',
'            -- END IF;',
'        end loop;',
'',
'    for cur in addInfoCursor',
'        loop',
'            insert into JW_ADMIN (TENANT_ID,',
'                                  CREATED_BY,',
'                                  UPDATED_BY,',
'                                  USER_ID,',
'                                  REFERENCE_ID,',
'                                  REFERENCE_TYPE,',
'                                  IS_CREATOR,',
'                                  ADMIN_LEVEL)',
'            values (:JW_USER_TENANT,',
'                    :JW_USER_ID,',
'                    :JW_USER_ID,',
'                    cur.COLUMN_VALUE,',
'                    :P52_WORKBENCH_ID,',
'                    ''WORKBENCH'',',
'                    0, 2);',
'            -- END IF;',
'        end loop;',
'        commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\7BA1\7406\5458'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P52_WORKBENCH_NAME,P52_WORKBENCH_ID,P52_SCOPE_TYPE,P52_MAIN_ADMIN_IDS,P52_INFO_ADMIN_IDS,P52_MAIN_ADMIN_IDS_RAW,P52_INFO_ADMIN_IDS_RAW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788565131131999264)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\7BA1\7406\5458\8BB0\5F55')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\7BA1\7406\5458\8BB0\5F55 \65E5\5FD7'),
'    */',
'    v_main_admin_names_raw varchar2(255);',
'    v_info_admin_names_raw varchar2(255);',
'    v_main_admin_names     varchar2(255);',
'    v_info_admin_names     varchar2(255);',
'begin',
'',
'',
'    if NVL(:P52_MAIN_ADMIN_IDS_RAW, ''NULL'') != NVL(:P52_MAIN_ADMIN_IDS, ''NULL'') then',
'        select listagg(NAME, '','')',
'        into v_main_admin_names_raw',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select * from table (SPLITSTR(:P52_MAIN_ADMIN_IDS_RAW, '':'')));',
'        select listagg(NAME, '','')',
'        into v_main_admin_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select * from table (SPLITSTR(:P52_MAIN_ADMIN_IDS, '':'')));',
unistr('        save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_ADMIN'',''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||'),
unistr('                       ''\FF1B\4FEE\6539\524D\4E3B\7BA1\7406\5458\FF1A'' || v_main_admin_names_raw || ''\FF1B\4FEE\6539\540E\4E3B\7BA1\7406\5458\FF1A'' || v_main_admin_names);'),
'    end if;',
'    if NVL(:P52_INFO_ADMIN_IDS_RAW, ''NULL'') != NVL(:P52_INFO_ADMIN_IDS, ''NULL'') then',
'        select listagg(NAME, '','')',
'        into v_info_admin_names_raw',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select * from table (SPLITSTR(:P52_INFO_ADMIN_IDS_RAW, '':'')));',
'        select listagg(NAME, '','')',
'        into v_info_admin_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select * from table (SPLITSTR(:P52_INFO_ADMIN_IDS, '':'')));',
'        save_audit_log(:JW_USER_ID, ''WAM'', ''CHANGE_WORKBENCH_ADMIN'',',
unistr('                       ''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\4FEE\6539\524D\666E\901A\7BA1\7406\5458\FF1A'' || v_info_admin_names_raw || ''\FF1B\4FEE\6539\540E\666E\901A\7BA1\7406\5458\FF1A'' || v_info_admin_names);'),
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\7BA1\7406\5458\8BB0\5F55'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
' ',
'end;'))
,p_attribute_02=>'P52_WORKBENCH_NAME,P52_WORKBENCH_ID,P52_SCOPE_TYPE,P52_MAIN_ADMIN_IDS,P52_INFO_ADMIN_IDS,P52_MAIN_ADMIN_IDS_RAW,P52_INFO_ADMIN_IDS_RAW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788565618919999264)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert(''\4FDD\5B58\6210\529F\FF01'');')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788566041135999264)
,p_event_id=>wwv_flow_imp.id(2788564630608999263)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\539F\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P52_VISIBLE_USERS_RAW",$v("P52_VISIBLE_USERS"))',
'$s("P52_VISIBLE_DEPTS_RAW",$v("P52_VISIBLE_DEPTS"))',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788569493219999266)
,p_name=>unistr('\9009\62E9\5E94\7528')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4791770878624256462)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788569975731999267)
,p_event_id=>wwv_flow_imp.id(2788569493219999266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!utils.checkNull(this.data) ){',
'    if(!utils.checkNull(this.data.selectedRecords)){',
'        selectedRecord = this.data.selectedRecords;',
'	    var arr = new Array();',
'		$s("P52_DEL_APP_IDS", "");',
'		for(var i=0;i<selectedRecord.length;i++){',
'			arr[i]=selectedRecord[i][0];',
'            console.log("select: "+selectedRecord[i][0]);',
'		}',
'		$s("P52_DEL_APP_IDS",arr);',
'		',
'    }',
'',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788570418857999267)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788560258340999244)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788570935764999267)
,p_event_id=>wwv_flow_imp.id(2788570418857999267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P52_DEL_APP_IDS''))) {',
'    // apex.message.clearErrors();',
'    // apex.message.showErrors({',
'    //     type: "error",',
'    //     location: "page",',
unistr('    //     message: "\8BF7\9009\62E9\9700\8981\5220\9664\7684\5E94\7528",'),
'    //     unsafe: false',
'    // });',
unistr('    alert(''\8BF7\9009\62E9\9700\8981\5220\9664\7684\5E94\7528'');'),
'    return false',
'} else {',
'    return true',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788571428511999267)
,p_event_id=>wwv_flow_imp.id(2788570418857999267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\8BA4\662F\5426\5220\9664\8FD9\4E9B\5E94\7528')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788571850943999268)
,p_event_id=>wwv_flow_imp.id(2788570418857999267)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5220\9664 \65E5\5FD7'),
'    */',
'    v_app_name varchar2(255);',
'begin',
'    delete JW_APP_GROUP_ASSO',
'    where APP_ID in (SELECT * FROM table (SPLITSTR(:P52_DEL_APP_IDS, '','')))',
'      and APP_GROUP_ID in (select APP_GROUP_ID from JW_APP_GROUP where WORKBENCH_ID = :P52_WORKBENCH_ID);',
'    delete JW_USER_WORKBENCH_APP',
'    where JW_APP_ID in (SELECT * FROM table (SPLITSTR(:P52_DEL_APP_IDS, '','')))',
'      and WORKBENCH_ID = :P52_WORKBENCH_ID;',
'',
'    select listagg(APP_NAME,'','') into v_app_name from JW_APP where JW_APP_ID in (SELECT * FROM table (SPLITSTR(:P52_DEL_APP_IDS, '','')));',
unistr('    save_audit_log(:JW_USER_ID, ''WAM'', ''WORKBENCH_DEL_APPS'',''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME ||''\FF1B\5E94\7528\FF1A'' || v_app_name);'),
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'end;',
''))
,p_attribute_02=>'P52_DEL_APP_IDS,P52_WORKBENCH_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788572421952999268)
,p_event_id=>wwv_flow_imp.id(2788570418857999267)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4791770878624256462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788572769128999268)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(4791770878624256462)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788573335895999268)
,p_event_id=>wwv_flow_imp.id(2788572769128999268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4791770878624256462)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788573728212999268)
,p_name=>unistr('\5207\6362\6A21\677F')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_TEMPLATE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788574175621999269)
,p_event_id=>wwv_flow_imp.id(2788573728212999268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TEMPLATE_PREVIEW, TEMPLATE_TYPE',
'into :P52_TEMPLATE_PREVIEW,:P52_TEMPLATE_TYPE',
'from JW_WORKBENCH_TEMPLATE',
'where TEMPLATE_ID = :P52_TEMPLATE_ID;'))
,p_attribute_02=>'P52_TEMPLATE_ID'
,p_attribute_03=>'P52_TEMPLATE_PREVIEW,P52_TEMPLATE_TYPE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788574648511999269)
,p_event_id=>wwv_flow_imp.id(2788573728212999268)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!utils.checkNull($v(''P52_TEMPLATE_PREVIEW''))) {',
'    $(''#app_icon'').attr(''src'', $v(''P52_TEMPLATE_PREVIEW''))',
'}',
'',
'if (!utils.checkNull($v(''P52_TEMPLATE_TYPE'')) && $v(''P52_TEMPLATE_TYPE'') !== ''SUB_LINK'') {',
'    $("#jump_prompt").show()',
'    $(''#app_grid'').hide()',
'    $(''#P52_TITLE_2_DISPLAY'').hide()',
'} else {',
'    $("#jump_prompt").hide()',
'    $(''#app_grid'').show()',
'    $(''#P52_TITLE_2_DISPLAY'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788575098719999270)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788575625613999270)
,p_event_id=>wwv_flow_imp.id(2788575098719999270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>unistr('save_audit_log(:JW_USER_ID, ''AAM'', ''VISIT_WORKBENCH'', ''\5DE5\4F5C\53F0\FF1A'' || :P52_WORKBENCH_NAME);')
,p_attribute_02=>'P52_WORKBENCH_NAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788555310789999227)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4790972416715648578)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5DE5\4F5C\53F0\8BBE\7F6E')
,p_internal_uid=>328422472602148961
);
wwv_flow_imp.component_end;
end;
/

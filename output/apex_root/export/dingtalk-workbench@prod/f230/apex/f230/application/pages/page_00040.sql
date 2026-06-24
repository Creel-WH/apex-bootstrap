prompt --application/pages/page_00040
begin
--   Manifest
--     PAGE: 00040
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
 p_id=>40
,p_name=>unistr('\5E94\7528\7BA1\7406')
,p_alias=>unistr('\5E94\7528\7BA1\7406')
,p_step_title=>unistr('\5E94\7528\7BA1\7406')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807208866505119)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'-- https://cdn.jsdelivr.net/npm/gasparesganga-jquery-loading-overlay@2.1.7/dist/loadingoverlay.min.js',
'#APP_FILES#vue.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var file = $(''[upload-type="IMAGE"]'')',
'',
'const s3Client = S3Client.init({',
unistr('    baseURL: $v("P0_UPLOAD_URL"), // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
'    appKey: $v(''P0_JA_APP_KEY''),',
'    appSecret : $v(''P0_JA_APP_SECRET'')',
'});',
'',
'',
'function uploadFile(file, callback) {',
'    s3Client.uploadFile(file)',
'        .then(obj => {',
unistr('            console.log(obj); // \4E0A\4F20\6210\529F\7684\6587\4EF6\94FE\63A5\4FE1\606F'),
'            callback(obj)',
'        })',
'        .catch(err => {',
unistr('            alert(err); // \9519\8BEF\4FE1\606F'),
'        });',
'}',
'',
'',
'$.each(file, function (i, e) {',
'    e.onchange = async () => {',
'        uploadFile(e.files[0], (data) => {',
'            if (data) {',
'                $s(''P40_APP_ICON'', data.url)',
'                $(''#app_icon'').attr(''src'', data.url)',
'                $(''#app_icon'').show()',
'                $(''#null_icon'').hide()',
'            }',
'        })',
'    }',
'})',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P40_VISIBLE_USERS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P40_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}',
'',
'function enable(appId) {',
'    console.log(''appId:'' + appId)',
'    $s(''P40_SELECT_ID'', appId)',
'    $("#enable_btn").click()',
'',
'}',
'',
'function pullBlacklist(appId) {',
'    $s(''P40_SELECT_ID'', appId)',
'    $("#pull_blacklist_btn").click()',
'}',
'',
'function deleteItem(appId) {',
'    $s(''P40_SELECT_ID'', appId)',
'    $("#delete_btn").click()',
'}',
'',
'function isUrlValid(string) {',
'    try {',
'        new URL(string);',
'        return true;',
'    } catch (err) {',
'        return false;',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P40_APP_ICON'') === '''' || $v(''P40_APP_ICON'') === ''null'') {',
'  $(''#app_icon'').hide()',
'  $(''#null_icon'').show()',
'} else {',
'  $(''#app_icon'').attr(''src'', $v(''P40_APP_ICON''))',
'  $(''#app_icon'').show()',
'  $(''#null_icon'').hide()',
'}',
'',
'if ($v(''P40_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}',
'',
'if($v(''P0_IS_ADMIN'')==0){',
'    $(''.pullBlacklist'').hide()',
'}',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P40_VISIBLE_USERS'').split(",");',
'    let deptList = $v(''P40_VISIBLE_DEPTS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.app_name {',
'    display: flex;',
'    justify-content: flex-start;',
'    align-items: center;',
'}',
'',
'.ja-bpoint-btn {',
'    margin-bottom: 20px;',
'}',
'',
'#new_app {',
'    height: 600px !important;',
'}',
'',
'/* .add-img {',
'    margin: 0 auto;',
'} */',
'',
'#app_icon {',
'    width: 100px;',
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
'#chooseInput {',
'    width: 300px;',
'}',
'',
'.OA,.DING,.YIDA,.IDSSA,.THIRD_DING,#delete_btn,#enable_btn,#pull_blacklist_btn {',
'    display: none;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4756742121730338914)
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
 p_id=>wwv_flow_imp.id(4758740420078088458)
,p_plug_name=>unistr('\5E94\7528\5217\8868')
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    w.JW_APP_ID,',
'    w.APP_ICON,',
'    w.APP_NAME,',
'    w.APP_DESC,',
'    w.APP_TYPE,',
'    w.IS_ENABLE,',
unistr('    CASE w.IS_ENABLE WHEN 1 THEN ''\505C\7528'' ELSE ''\542F\7528'' END AS ENABLE_BTN_NAME,'),
'    w.SCOPE_TYPE,',
'    admin_names.ADMIN_NAME,',
'    w.LOGIN_TYPE,',
'    w.APP_OPEN_TYPE,',
'    w.DEVICE',
'FROM ',
'    JW_APP w',
'LEFT JOIN (',
'    SELECT ',
'        a.REFERENCE_ID AS JW_APP_ID,',
'        LISTAGG(DISTINCT u.NAME, '','') WITHIN GROUP (ORDER BY u.NAME) AS ADMIN_NAME',
'    FROM ',
'        JW_ADMIN a',
'    JOIN ',
'        MPF_BASIC_JA_DING_USER_V u ON u.USER_ID = a.USER_ID',
'    WHERE ',
'        a.REFERENCE_TYPE = ''APP''',
'        AND EXISTS (',
'            SELECT 1 ',
'            FROM JW_APP w1 ',
'            WHERE w1.JW_APP_ID = a.REFERENCE_ID',
'              AND w1.DEL_FLAG = 0',
'              AND w1.IS_BLACKLIST = 0',
'              AND w1.TENANT_ID = :JW_USER_TENANT',
'        )',
'    GROUP BY ',
'        a.REFERENCE_ID',
') admin_names ON admin_names.JW_APP_ID = w.JW_APP_ID',
'WHERE ',
'    w.DEL_FLAG = 0',
'    AND w.IS_BLACKLIST = 0',
'    AND w.TENANT_ID = :JW_USER_TENANT',
'    AND (',
'        :JW_IS_ADMIN = 1 ',
'        OR EXISTS (',
'            SELECT 1 ',
'            FROM JW_ADMIN a',
'            WHERE a.REFERENCE_TYPE = ''APP'' ',
'              AND a.USER_ID = :JW_USER_ID',
'              AND a.REFERENCE_ID = w.JW_APP_ID',
'        )',
'    );',
''))
,p_plug_source_type=>'NATIVE_IG'
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
 p_id=>wwv_flow_imp.id(4312377537692045272)
,p_name=>'LOGIN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LOGIN_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\767B\5F55\65B9\5F0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3985423064601355068)
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
 p_id=>wwv_flow_imp.id(4312377619279045273)
,p_name=>'APP_OPEN_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_OPEN_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\6253\5F00\65B9\5F0F')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3985424508146364463)
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
 p_id=>wwv_flow_imp.id(4312377810018045274)
,p_name=>'DEVICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>unistr('\4F7F\7528\8BBE\5907')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3985425880929371233)
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
 p_id=>wwv_flow_imp.id(4758740608635088460)
,p_name=>'APP_ICON'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_ICON'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\5E94\7528\56FE\6807')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div class="app_name">',
    '  <img style=''height: 40px;margin-right: 20px'' src="&APP_ICON." title="&APP_ICON."/>',
    '  <!-- <span>&APP_NAME.</span> -->',
    '</div>')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4758740705139088461)
,p_name=>'APP_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5E94\7528\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>40
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_JW_APP_ID:&JW_APP_ID.'
,p_link_text=>'&APP_NAME.'
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
 p_id=>wwv_flow_imp.id(4758740811958088462)
,p_name=>'APP_DESC'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_DESC'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
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
 p_id=>wwv_flow_imp.id(4758740925234088463)
,p_name=>'APP_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'APP_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3864973736453971115)
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
 p_id=>wwv_flow_imp.id(4758740941881088464)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\662F\5426\542F\7528')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4428554456066279573)
,p_lov_display_extra=>false
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
 p_id=>wwv_flow_imp.id(4758741094076088465)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div>',
    '    <span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="enable(''&JW_APP_ID.'')">&ENABLE_BTN_NAME.</span>',
    unistr('    <span class="pullBlacklist" style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="pullBlacklist(''&JW_APP_ID.'')">\62C9\9ED1</span>'),
    unistr('    <span class="&APP_TYPE." style="color:#FF4D4F;cursor: pointer;margin-right: 20px;" onclick="deleteItem(''&JW_APP_ID.'')">\5220\9664</span>'),
    '</div>')))).to_clob
,p_static_id=>'app'
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4758742090755088475)
,p_name=>'JW_APP_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'JW_APP_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
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
 p_id=>wwv_flow_imp.id(4765713776657624388)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\53EF\89C1\8303\56F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(4445941052004953418)
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
 p_id=>wwv_flow_imp.id(4790718945451987091)
,p_name=>'ADMIN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ADMIN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\8D1F\8D23\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
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
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(4792167765716860395)
,p_name=>'ENABLE_BTN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENABLE_BTN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(4758740448980088459)
,p_internal_uid=>2298607610792238193
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
 p_id=>wwv_flow_imp.id(4760478156889204841)
,p_interactive_grid_id=>wwv_flow_imp.id(4758740448980088459)
,p_static_id=>'2058014'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(4760478359608204842)
,p_report_id=>wwv_flow_imp.id(4760478156889204841)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4314165733521612296)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(4312377537692045272)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4314166643006612305)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(4312377619279045273)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4314167520955612308)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(4312377810018045274)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760478932469204849)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(4758740608635088460)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>81.64099999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760479835113204856)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(4758740705139088461)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760480548695204860)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(4758740811958088462)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760481514363204863)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(4758740925234088463)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760482421179204866)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(4758740941881088464)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760483305936204869)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(4758741094076088465)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4760554278420821307)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(4758742090755088475)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4774679604396185498)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(4765713776657624388)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4791287010825649199)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(4790718945451987091)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(4792735913729550347)
,p_view_id=>wwv_flow_imp.id(4760478359608204842)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(4792167765716860395)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4790719115299987092)
,p_plug_name=>unistr('\521B\5EFA\5E94\7528')
,p_region_name=>'new_app'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(4421806473195171861)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JW_APP_ID,',
'       APP_ICON,',
'       APP_NAME,',
'       SCOPE_TYPE,',
'       PC_URL,',
'       MP_URL,',
'       LOGIN_TYPE,',
'       APP_OPEN_TYPE,',
'       DEVICE,',
'       JING_JIE_CODE',
'from JW_APP a',
'where DEL_FLAG = 0'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4791296511507727259)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>80
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;margin-left:16.66%">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4791297606972727270)
,p_plug_name=>unistr('\56FE\6807')
,p_parent_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<img class=''add-img'' id=''app_icon'' src="" alt="\7CFB\7EDF\56FE\6807" />'),
unistr('<div class=''add-img'' id=''null_icon''>\6682\65E0\56FE\6807</div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788876644763077901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4758740420078088458)
,p_button_name=>unistr('\540C\6B65\5E94\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\540C\6B65\5E94\7528')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'JW_IS_ADMIN'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-repeat'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788877065271077901)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4758740420078088458)
,p_button_name=>unistr('\521B\5EFA\5E94\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA\5E94\7528')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788877505752077901)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4758740420078088458)
,p_button_name=>unistr('\542F\7528')
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
 p_id=>wwv_flow_imp.id(2788877862927077901)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4758740420078088458)
,p_button_name=>unistr('\5220\9664')
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
 p_id=>wwv_flow_imp.id(2788878330213077901)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4758740420078088458)
,p_button_name=>unistr('\62C9\9ED1')
,p_button_static_id=>'pull_blacklist_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\62C9\9ED1')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788879053991077902)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(4790719115299987092)
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
 p_id=>wwv_flow_imp.id(2788879528228077902)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(4790719115299987092)
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51753823487969540)
,p_name=>'P40_JING_JIE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_prompt=>unistr('\767B\5F55\51ED\8BC1')
,p_source=>'JING_JIE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:code;code,jjCode;jjCode'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3566021680270818280)
,p_name=>'P40_NAME_PINYIN'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3934898187563496361)
,p_name=>'P40_IS_REPEAT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312387484519045275)
,p_name=>'P40_LOGIN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_default=>'DEAFULT'
,p_prompt=>unistr('\767B\5F55\65B9\5F0F')
,p_source=>'LOGIN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOGIN_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3985423064601355068)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312387563698045276)
,p_name=>'P40_APP_OPEN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_default=>'DEAFULT'
,p_prompt=>unistr('\6253\5F00\65B9\5F0F')
,p_source=>'APP_OPEN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APP_OPEN_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3985424508146364463)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312387850790045279)
,p_name=>'P40_DEVICE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_default=>'ALL'
,p_source=>'DEVICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790729813271987103)
,p_name=>'P40_JW_APP_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_source=>'JW_APP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790729887639987104)
,p_name=>'P40_APP_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_source=>'APP_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790730016702987105)
,p_name=>'P40_APP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_prompt=>unistr('\5E94\7528\540D\79F0')
,p_source=>'APP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790730092328987106)
,p_name=>'P40_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_default=>'ALL'
,p_prompt=>unistr('\5E94\7528\53EF\89C1\8303\56F4')
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790730139533987107)
,p_name=>'P40_PC_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_prompt=>unistr('PC\7AEF\94FE\63A5')
,p_source=>'PC_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1024
,p_field_template=>wwv_flow_imp.id(4421925200249171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4790730290700987108)
,p_name=>'P40_MP_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_item_source_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_prompt=>unistr('\79FB\52A8\7AEF\94FE\63A5')
,p_source=>'MP_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>1024
,p_field_template=>wwv_flow_imp.id(4421925200249171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791307036995727269)
,p_name=>'P40_VISIBLE_USERS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791307170757727270)
,p_name=>'P40_VISIBLE_DEPTS'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791308214951727280)
,p_name=>'P40_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4790719115299987092)
,p_prompt=>unistr('\56FE\7247\4E0A\4F20')
,p_display_as=>'NATIVE_IMAGE_UPLOAD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4421925200249171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_cropping', 'N',
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_ICON',
  'preview_size', 'AUTO',
  'purge_files_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792187169049860414)
,p_name=>'P40_SELECT_ID'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788888774632077908)
,p_name=>unistr('\521B\5EFA\5E94\7528')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788877065271077901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788889241957077909)
,p_event_id=>wwv_flow_imp.id(2788888774632077908)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790719115299987092)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789542916338737670)
,p_event_id=>wwv_flow_imp.id(2788888774632077908)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#app_icon'').hide()',
'$(''#null_icon'').show()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788889713295077909)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788879053991077902)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788890228492077910)
,p_event_id=>wwv_flow_imp.id(2788889713295077909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790719115299987092)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788890625827077910)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788879528228077902)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788891082330077910)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P40_APP_ICON''))) {',
unistr('    alert(''\5E94\7528\56FE\6807\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}',
'if (utils.checkNull($v(''P40_APP_NAME''))) {',
unistr('    alert(''\5E94\7528\540D\79F0\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788891575978077910)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:19',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\6267\884C\4FDD\5B58\524D\6821\9A8C \65E5\5FD7'),
'    */',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(JW_APP_ID)',
'    INTO v_count',
'    FROM JW_APP',
'    WHERE APP_NAME = :P40_APP_NAME',
'    AND DEL_FLAG = 0',
'    AND IS_BLACKLIST = 0;',
'',
'    :P40_IS_REPEAT := v_count;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6267\884C\4FDD\5B58\524D\6821\9A8C'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'END;'))
,p_attribute_02=>'P40_APP_NAME'
,p_attribute_03=>'P40_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788892100144077911)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P40_IS_REPEAT'') > 0) {',
unistr('    alert(''\5E94\7528\540D\79F0\4E0D\80FD\91CD\590D'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788892570601077911)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P40_PC_URL'')) && utils.checkNull($v(''P40_MP_URL''))) {',
'',
unistr('    alert(''\5E94\7528\94FE\63A5\4E0D\80FD\540C\65F6\4E3A\7A7A'');'),
'    return false',
'} else if (!utils.checkNull($v(''P40_PC_URL'')) && !isUrlValid($v(''P40_PC_URL''))) {',
'',
unistr('    alert(''pc\7AEF\94FE\63A5\683C\5F0F\9519\8BEF'');'),
'    return false',
'} else if (!utils.checkNull($v(''P40_MP_URL'')) && !isUrlValid($v(''P40_MP_URL''))) {',
'',
unistr('    alert(''\79FB\52A8\7AEF\94FE\63A5\683C\5F0F\9519\8BEF'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788893081644077911)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\83B7\53D6\62FC\97F3\540D')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_NAME_PINYIN'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const result =   DingTalkAuth.getPinyin($v(''P0_DING_REQUEST_URL''),$v(''P40_APP_NAME''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'if(result &&result.data){',
'$s(''P40_NAME_PINYIN'',result.data);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788893603031077912)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\4FE1\606F\53CA\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:24',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\89D2\8272\6743\9650\914D\7F6E \4FDD\5B58 \65E5\5FD7'),
'    */',
'    cursor userCursor is select *',
'                         from table (SPLITSTR(:P40_VISIBLE_USERS, '',''));',
'    cursor deptCursor is select *',
'                         from table (SPLITSTR(:P40_VISIBLE_DEPTS, '',''));',
'begin',
'    insert into JW_APP(TENANT_ID,',
'                       CREATED_BY,',
'                       UPDATED_BY,',
'                       APP_ICON,',
'                       APP_NAME,',
'                       APP_TYPE,',
'                       PC_URL,',
'                       MP_URL,',
'                       SCOPE_TYPE,',
'                       LOGIN_TYPE,',
'                       APP_OPEN_TYPE,',
'                       DEVICE,',
'                       JING_JIE_CODE,',
'                       NAME_PINYIN)',
'    values (:JW_USER_TENANT,',
'            :JW_USER_ID,',
'            :JW_USER_ID,',
'            :P40_APP_ICON,',
'            :P40_APP_NAME,',
'            ''H5'',',
'            :P40_PC_URL,',
'            :P40_MP_URL,',
'            :P40_SCOPE_TYPE,',
'            :P40_LOGIN_TYPE,',
'            :P40_APP_OPEN_TYPE,',
'            :P40_DEVICE,',
'            :P40_JING_JIE_CODE,',
'            :P40_NAME_PINYIN)',
'    returning JW_APP_ID into :P40_JW_APP_ID;',
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
'            :P40_JW_APP_ID,',
'            ''APP'',',
'            1);',
'',
'    if :P40_SCOPE_TYPE != ''ALL'' then',
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
'                        :P40_JW_APP_ID,',
'                        ''APP'');',
'            END LOOP;',
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
'                        :P40_JW_APP_ID,',
'                        ''APP'');',
'            END LOOP;',
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6267\884C\4FDD\5B58'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P40_APP_ICON,P40_APP_NAME,P40_SCOPE_TYPE,P40_PC_URL,P40_MP_URL,P40_VISIBLE_USERS,P40_VISIBLE_DEPTS,P40_JW_APP_ID,P40_LOGIN_TYPE,P40_APP_OPEN_TYPE,P40_DEVICE,P40_NAME_PINYIN,P40_JING_JIE_CODE'
,p_attribute_03=>'P40_JW_APP_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788894093688077912)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5E94\7528\4FDD\5B58 \65E5\5FD7'),
'    */',
'    v_user_names varchar2(255);',
'    v_dept_names varchar2(255);',
'begin',
'    if :P40_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in :P40_VISIBLE_USERS;',
'        select listagg(NAME, '','')',
'        into v_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in :P40_VISIBLE_DEPTS;',
'        save_audit_log(:JW_USER_ID, ''AAM'', ''CREATE_APP'',',
unistr('                       ''\5E94\7528\56FE\6807:'' || :P40_APP_ICON || '';\5E94\7528\540D\79F0:'' || :P40_APP_NAME || '';PC\94FE\63A5:'' || :P40_PC_URL ||'),
unistr('                       '';\79FB\52A8\94FE\63A5:'' || :P40_MP_URL || '';\767B\5F55\65B9\5F0F:'' || :P40_LOGIN_TYPE || '';\6253\5F00\65B9\5F0F:'' ||'),
unistr('                       :P40_APP_OPEN_TYPE || '';\4F7F\7528\8BBE\5907:'' || :P40_DEVICE || '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' || '';\53EF\89C1\4EBA\5458:'' ||'),
unistr('                       v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
'        );',
'    else',
'        save_audit_log(:JW_USER_ID, ''AAM'', ''CREATE_APP'',',
unistr('                       ''\5E94\7528\56FE\6807:'' || :P40_APP_ICON || '';\5E94\7528\540D\79F0:'' || :P40_APP_NAME || '';PC\94FE\63A5:'' || :P40_PC_URL ||'),
unistr('                       '';\79FB\52A8\94FE\63A5:'' || :P40_MP_URL || '';\767B\5F55\65B9\5F0F:'' || :P40_LOGIN_TYPE || '';\6253\5F00\65B9\5F0F:'' ||'),
unistr('                       :P40_APP_OPEN_TYPE || '';\4F7F\7528\8BBE\5907:'' || :P40_DEVICE || '';\53EF\89C1\8303\56F4:\5168\90E8'''),
'        );',
'    end if;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5E94\7528\4FDD\5B58'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P40_APP_ICON,P40_APP_NAME,P40_SCOPE_TYPE,P40_PC_URL,P40_MP_URL,P40_VISIBLE_USERS,P40_VISIBLE_DEPTS,P40_JW_APP_ID,P40_LOGIN_TYPE,P40_APP_OPEN_TYPE,P40_DEVICE,P40_JING_JIE_CODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788894579976077912)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P40_JW_APP_ID''))) {',
'',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false',
'} else {',
'',
unistr('    alert(''\4FDD\5B58\6210\529F'');'),
'    return true',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788895051720077912)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4790719115299987092)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788895623556077913)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4758740420078088458)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788896085612077913)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6E05\7A7A\65E7\6570\636E')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#app_icon'').hide()',
'$(''#null_icon'').show()',
'$(''#chooseInput'').val('''')'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789542700537737668)
,p_event_id=>wwv_flow_imp.id(2788890625827077910)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_JW_APP_ID,P40_APP_ICON,P40_FILE,P40_APP_NAME,P40_MP_URL,P40_PC_URL,P40_SCOPE_TYPE,P40_VISIBLE_DEPTS,P40_VISIBLE_USERS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select null JW_APP_ID,',
'       null APP_ICON,',
'       null AS FILES,',
'       null APP_NAME,',
'       null MP_URL,',
'       null PC_URL,',
'       ''ALL'' SCOPE_TYPE,',
'       null VISIBLE_DEPTS,',
'       null VISIBLE_USERS',
'from dual;',
''))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788896513996077913)
,p_name=>unistr('\5207\6362')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788896979878077913)
,p_event_id=>wwv_flow_imp.id(2788896513996077913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P40_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788897346155077913)
,p_name=>unistr('\4FEE\6539\72B6\6001')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788877505752077901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788897920674077914)
,p_event_id=>wwv_flow_imp.id(2788897346155077913)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:29',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\542F\7528 \65E5\5FD7'),
'    */',
'    V_IS_ENABLE NUMBER(1);',
'    V_APP_NAME  VARCHAR2(255);',
'BEGIN',
'    SELECT IS_ENABLE, APP_NAME INTO V_IS_ENABLE,V_APP_NAME FROM JW_APP WHERE JW_APP_ID = :P40_SELECT_ID;',
'    IF V_IS_ENABLE = 1 THEN',
unistr('        SAVE_AUDIT_LOG(:JW_USER_ID, ''AAM'', ''STOP_APP'', ''\5E94\7528\FF1A'' || V_APP_NAME);'),
'    ELSE',
unistr('        SAVE_AUDIT_LOG(:JW_USER_ID, ''AAM'', ''START_APP'', ''\5E94\7528\FF1A'' || V_APP_NAME);'),
'    END IF;',
'    UPDATE JW_APP',
'    SET IS_ENABLE=DECODE(IS_ENABLE, 1, 0, 1),',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE JW_APP_ID = :P40_SELECT_ID;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\542F\7528'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'END;'))
,p_attribute_02=>'P40_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788898349841077914)
,p_event_id=>wwv_flow_imp.id(2788897346155077913)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4758740420078088458)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788898815376077914)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788877862927077901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788899275099077914)
,p_event_id=>wwv_flow_imp.id(2788898815376077914)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5220\9664\5F53\524D\5E94\7528')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788899836320077915)
,p_event_id=>wwv_flow_imp.id(2788898815376077914)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG  NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:30',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5220\9664 \65E5\5FD7'),
'    */',
'    V_APP_NAME VARCHAR2(255);',
'BEGIN',
'    SELECT APP_NAME INTO V_APP_NAME FROM JW_APP WHERE JW_APP_ID = :P40_SELECT_ID;',
'    UPDATE JW_APP',
'    SET DEL_FLAG=1,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE JW_APP_ID = :P40_SELECT_ID;',
'    DELETE JW_APP_GROUP_ASSO',
'    WHERE APP_GROUP_ID IN (SELECT APP_GROUP_ID FROM JW_APP_GROUP WHERE APP_ID = :P40_SELECT_ID);',
unistr('    SAVE_AUDIT_LOG(:JW_USER_ID, ''AAM'', ''DEL_APP'', ''\5E94\7528\FF1A'' || V_APP_NAME);'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'END;'))
,p_attribute_02=>'P40_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788900292136077915)
,p_event_id=>wwv_flow_imp.id(2788898815376077914)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4758740420078088458)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788900655247077915)
,p_name=>unistr('\540C\6B65\5E94\7528')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788876644763077901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788901178068077915)
,p_event_id=>wwv_flow_imp.id(2788900655247077915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DingTalkAuth.syncAppAll($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788901689660077915)
,p_event_id=>wwv_flow_imp.id(2788900655247077915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>unistr('save_audit_log(:JW_USER_ID,''AAM'',''SYNC_APP'',''\624B\52A8\540C\6B65\5168\90E8\5E94\7528'');')
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788902125468077916)
,p_name=>unistr('\62C9\5165\9ED1\540D\5355')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788878330213077901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788903550348077916)
,p_event_id=>wwv_flow_imp.id(2788902125468077916)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5C06\5F53\524D\5E94\7528\62C9\5165\9ED1\540D\5355')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788902595563077916)
,p_event_id=>wwv_flow_imp.id(2788902125468077916)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG  NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:31',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\62C9\5165\9ED1\540D\5355 \65E5\5FD7'),
'    */',
'    V_APP_NAME VARCHAR2(255);',
'BEGIN',
'    SELECT APP_NAME INTO V_APP_NAME FROM JW_APP WHERE JW_APP_ID = :P40_SELECT_ID;',
'    UPDATE JW_APP',
'    SET IS_BLACKLIST=1,',
'        UPDATE_DATE=SYSDATE,',
'        UPDATED_BY=:JW_USER_ID',
'    WHERE JW_APP_ID = :P40_SELECT_ID;',
'    DELETE JW_APP_GROUP_ASSO',
'    WHERE APP_GROUP_ID IN (SELECT APP_GROUP_ID FROM JW_APP_GROUP WHERE APP_ID = :P40_SELECT_ID);',
unistr('    SAVE_AUDIT_LOG(:JW_USER_ID, ''AAM'', ''BLACKOUT_APP'', ''\5E94\7528\FF1A'' || V_APP_NAME);'),
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\62C9\5165\9ED1\540D\5355'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME, :APP_ID,'),
'                  :APP_CODE);',
'END;'))
,p_attribute_02=>'P40_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788903066665077916)
,p_event_id=>wwv_flow_imp.id(2788902125468077916)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4758740420078088458)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2131618918453481183)
,p_name=>unistr('\521D\59CB\5316-\56FE\6807\9884\89C8')
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2131619003972481184)
,p_event_id=>wwv_flow_imp.id(2131618918453481183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\56FE\7247\5143\7D20'),
'var images = document.querySelectorAll(''img'');',
'',
unistr('// \4E3A\6BCF\4E2A\56FE\7247\5143\7D20\6DFB\52A0\70B9\51FB\4E8B\4EF6\76D1\542C\5668'),
'images.forEach(function(image) {',
unistr('    // \6DFB\52A0\9F20\6807\60AC\505C\65F6\7684\6307\9488\6837\5F0F'),
'    image.style.cursor = ''pointer'';',
'',
'    image.addEventListener(''click'', function() {',
unistr('        // \521B\5EFA\6A21\6001\6846\5E76\8BBE\7F6E\5176\5185\5BB9\4E3A\88AB\70B9\51FB\7684\56FE\7247'),
'        var modal = document.createElement(''div'');',
'        modal.style.position = ''fixed'';',
'        modal.style.top = ''0'';',
'        modal.style.left = ''0'';',
'        modal.style.width = ''100%'';',
'        modal.style.height = ''100%'';',
'        modal.style.backgroundColor = ''rgba(0, 0, 0, 0.8)'';',
'        modal.style.display = ''flex'';',
'        modal.style.justifyContent = ''center'';',
'        modal.style.alignItems = ''center'';',
'        modal.style.zIndex = ''9999'';',
'',
'        var modalImage = document.createElement(''img'');',
'        modalImage.src = this.src;',
'        modalImage.style.maxWidth = ''100%'';',
'        modalImage.style.maxHeight = ''100%'';',
'        modalImage.style.borderRadius = ''5px'';',
'        modalImage.style.boxShadow = ''0 4px 6px rgba(0, 0, 0, 0.1)'';',
'',
'        modal.appendChild(modalImage);',
'        document.body.appendChild(modal);',
'',
unistr('        // \70B9\51FB\6A21\6001\6846\5173\95ED\5B83'),
'        modal.addEventListener(''click'', function() {',
'            document.body.removeChild(modal);',
'        });',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51753922393969541)
,p_name=>unistr('\4FEE\6539\503C')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P40_LOGIN_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51754047456969542)
,p_event_id=>wwv_flow_imp.id(51753922393969541)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_JING_JIE_CODE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P40_LOGIN_TYPE'
,p_client_condition_expression=>'JING_JIE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51754150396969543)
,p_event_id=>wwv_flow_imp.id(51753922393969541)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P40_JING_JIE_CODE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P40_LOGIN_TYPE'
,p_client_condition_expression=>'JING_JIE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788886887139077907)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4790719115299987092)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5E94\7528\7BA1\7406')
,p_internal_uid=>328754048951227641
);
wwv_flow_imp.component_end;
end;
/

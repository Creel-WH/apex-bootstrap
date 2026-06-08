prompt --application/pages/page_00054
begin
--   Manifest
--     PAGE: 00054
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
 p_id=>54
,p_name=>unistr('\6A21\677F\7BA1\7406')
,p_alias=>unistr('\6A21\677F\7BA1\7406')
,p_step_title=>unistr('\6A21\677F\7BA1\7406')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807299148506566)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var file = $(''[upload-type="IMAGE"]'')',
'',
'',
unistr('// \521D\59CB\5316S3Client'),
'const s3Client = S3Client.init({',
unistr('    baseURL: $v("P0_UPLOAD_URL"), // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
'    appKey: $v(''P0_JA_APP_KEY''),',
'    appSecret : $v(''P0_JA_APP_SECRET'')',
'});',
'',
'function uploadFile(file,callback) {',
'  s3Client.uploadFile(file)',
'    .then(obj => {',
unistr('      console.log(obj); // \4E0A\4F20\6210\529F\7684\6587\4EF6\94FE\63A5\4FE1\606F'),
'      callback(obj)',
'    })',
'    .catch(err => {',
unistr('      console.error(err); // \9519\8BEF\4FE1\606F'),
'    });',
'}',
'',
'',
'',
'$.each(file, function (i, e) {',
'    e.onchange = async () => {',
'        uploadFile(e.files[0],(data)=>{',
'            console.log(data)',
'        if (data) {',
'            $s(''P54_TEMPLATE_PREVIEW'', data.url)',
'            $(''#app_icon'').attr(''src'', data.url)',
'            $(''#app_icon'').show()',
'            $(''#null_icon'').hide()',
'        }',
'        })',
'    }',
'})',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P54_VISIBLE_USERS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P54_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}',
'',
'function update(id) {',
'    $s(''P54_SELECT_ID'', id)',
'    $("#update_btn").click()',
'}',
'',
'',
'function enable(id) {',
'    $s(''P54_SELECT_ID'', id)',
'    $("#enable_btn").click()',
'}',
'',
'function deleteItem(id) {',
'    $s(''P54_SELECT_ID'', id)',
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
'',
'',
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P11_VISIBLE_USERS'').split(",");',
'    let deptList = $v(''P11_VISIBLE_DEPTS'').split(",");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ja-bpoint-btn {',
'    margin-bottom: 20px;',
'}',
'',
'#new_template {',
'    width: 400px;',
'    height: 600px !important;',
'}',
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
'#enable_btn,#delete_btn,#update_btn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3832560073124363310)
,p_plug_name=>unistr('\6A21\677F\7F16\8F91')
,p_region_name=>'new_template'
,p_region_template_options=>'#DEFAULT#:js-dialog-size600x400'
,p_plug_template=>wwv_flow_imp.id(4421806473195171861)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TEMPLATE_ID,',
'       TEMPLATE_PREVIEW,',
'       TEMPLATE_NAME,',
'       TEMPLATE_TYPE,',
'       IS_ENABLE,',
'       TEMPLATE_URL,',
'       SCOPE_TYPE,',
'       (select LISTAGG(ENTITY_ID, '','')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''TEMPLATE''',
'          and s.REFERENCE_ID = t.TEMPLATE_ID',
'          and s.ENTITY_TYPE = ''USER'')                                as VISIBLE_USERS,',
'       (select LISTAGG(ENTITY_ID, '','')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''TEMPLATE''',
'          and s.REFERENCE_ID = t.TEMPLATE_ID',
'          and s.ENTITY_TYPE = ''DEPT'')                                as VISIBLE_DEPTS,',
'       (SELECT LISTAGG(NAME, '','') WITHIN GROUP (ORDER BY NAME)',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''TEMPLATE''',
'                                       AND s.REFERENCE_ID = t.TEMPLATE_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''TEMPLATE''',
'                                       AND s.REFERENCE_ID = t.TEMPLATE_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS combined_names',
'from JW_WORKBENCH_TEMPLATE t'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3832561281840363322)
,p_plug_name=>unistr('\9884\89C8\56FE')
,p_parent_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_column=>5
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<img class=''add-img'' id=''app_icon'' src="" alt="\9884\89C8\56FE" />'),
unistr('<div class=''add-img'' id=''null_icon''>\6682\65E0\56FE\6807</div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3832561723041363327)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>110
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;margin-left:16.66%">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3835651446901669598)
,p_plug_name=>unistr('\6A21\677F\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421844906972171876)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TEMPLATE_ID,',
'       TEMPLATE_PREVIEW,',
'       TEMPLATE_NAME,',
'       TEMPLATE_TYPE,',
'       IS_ENABLE,',
unistr('       DECODE(IS_ENABLE, 1, ''\505C\7528'', ''\542F\7528'') AS ENABLE_BTN_NAME,'),
'       TEMPLATE_URL,',
'       SCOPE_TYPE',
'  from JW_WORKBENCH_TEMPLATE',
' where DEL_FLAG = 0 AND TENANT_ID = :JW_USER_TENANT	'))
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>unistr('\6A21\677F\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3116143031880292744)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3116143198011292745)
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
 p_id=>wwv_flow_imp.id(3835653721500669603)
,p_name=>'TEMPLATE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835659726260669607)
,p_name=>'TEMPLATE_PREVIEW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_PREVIEW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\9884\89C8\56FE')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<img style=''height: 40px;margin-right: 20px'' src="&TEMPLATE_PREVIEW." title="&TEMPLATE_PREVIEW."/>',
    '')))).to_clob
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3835660776972669607)
,p_name=>'TEMPLATE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\6A21\677F\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', '<span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="update(''&TEMPLATE_ID.'')">&TEMPLATE_NAME.</span>')).to_clob
,p_filter_is_required=>false
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
 p_id=>wwv_flow_imp.id(3835661771532669608)
,p_name=>'TEMPLATE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\6A21\677F\7C7B\578B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(3506136443797710577)
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835662729021669608)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\662F\5426\542F\7528')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
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
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835664744257669609)
,p_name=>'TEMPLATE_URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TEMPLATE_URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\6A21\677F\8DEF\5F84')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835665695615669609)
,p_name=>'SCOPE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SCOPE_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\53EF\89C1\8303\56F4')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835707928999137998)
,p_name=>'EDIT'
,p_source_type=>'NONE'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<div>',
    '    <span style="color:#1890FF;cursor: pointer;margin-right: 20px;" onclick="enable(''&TEMPLATE_ID.'')">&ENABLE_BTN_NAME.</span>',
    unistr('    <span style="color:#FF4D4F;cursor: pointer;margin-right: 20px;" onclick="deleteItem(''&TEMPLATE_ID.'')">\5220\9664</span>'),
    '</div>')))).to_clob
,p_use_as_row_header=>false
,p_enable_hide=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3835708978101138008)
,p_name=>'ENABLE_BTN_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENABLE_BTN_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3835651934611669599)
,p_internal_uid=>1375519096423819333
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
 p_id=>wwv_flow_imp.id(3835652386593669600)
,p_interactive_grid_id=>wwv_flow_imp.id(3835651934611669599)
,p_static_id=>'2728204'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>20
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3835652502058669600)
,p_report_id=>wwv_flow_imp.id(3835652386593669600)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3116155775370299147)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3116143031880292744)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835654141174669603)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3835653721500669603)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835660178712669607)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3835659726260669607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835661106783669607)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3835660776972669607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835662193666669608)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3835661771532669608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835663153844669608)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3835662729021669608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835665118098669609)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3835664744257669609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835666127568669610)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(3835665695615669609)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>140.54700000000003
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835723070218260325)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(3835707928999137998)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>198.719
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3835734253900025831)
,p_view_id=>wwv_flow_imp.id(3835652502058669600)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(3835708978101138008)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3835668324225669614)
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
 p_id=>wwv_flow_imp.id(2789685773862846978)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3835651446901669598)
,p_button_name=>unistr('\65B0\589E\6A21\677F')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\6A21\677F')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2789686189599846978)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3835651446901669598)
,p_button_name=>unistr('\7F16\8F91\6A21\677F')
,p_button_static_id=>'update_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\7F16\8F91\6A21\677F')
,p_button_position=>'ABOVE_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2789686635024846978)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3835651446901669598)
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
 p_id=>wwv_flow_imp.id(2789686978746846979)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3835651446901669598)
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
 p_id=>wwv_flow_imp.id(2789670160985846956)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2789670623307846957)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_button_name=>unistr('\65B0\589E')
,p_button_static_id=>'add_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2789671004403846957)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_button_name=>unistr('\4FEE\6539')
,p_button_static_id=>'save_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832562759344363332)
,p_name=>'P54_TEMPLATE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'TEMPLATE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832562841931363333)
,p_name=>'P54_TEMPLATE_PREVIEW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'TEMPLATE_PREVIEW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832562979906363334)
,p_name=>'P54_TEMPLATE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_prompt=>unistr('\6A21\677F\540D\79F0')
,p_source=>'TEMPLATE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832563053624363335)
,p_name=>'P54_TEMPLATE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_default=>'SUB_LINK'
,p_prompt=>unistr('\6A21\677F\7C7B\578B')
,p_source=>'TEMPLATE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'TEMPLATE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3506136443797710577)||'.'
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832563168894363336)
,p_name=>'P54_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_prompt=>unistr('\662F\5426\542F\7528')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'TURE_OR_FALSE'
,p_lov=>'.'||wwv_flow_imp.id(4428554456066279573)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832563284987363337)
,p_name=>'P54_TEMPLATE_URL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_prompt=>unistr('\6A21\677F\8DEF\5F84')
,p_source=>'TEMPLATE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832563319720363338)
,p_name=>'P54_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_default=>'ALL'
,p_prompt=>unistr('\53EF\89C1\8303\56F4')
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
 p_id=>wwv_flow_imp.id(3832563635326363341)
,p_name=>'P54_FILE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
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
 p_id=>wwv_flow_imp.id(3832564061492363345)
,p_name=>'P54_VISIBLE_USERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832564209037363346)
,p_name=>'P54_VISIBLE_DEPTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3832564272906363347)
,p_name=>'P54_IS_REPEAT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835714100355138054)
,p_name=>'P54_VISIBLE_USERS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835714131384138055)
,p_name=>'P54_VISIBLE_DEPTS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835714241213138056)
,p_name=>'P54_COMBINED_NAMES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_item_source_plug_id=>wwv_flow_imp.id(3832560073124363310)
,p_source=>'COMBINED_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835726194026138038)
,p_name=>'P54_SELECT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3835651446901669598)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789688973924846983)
,p_name=>unistr('\7F16\8F91\62A5\8868 - \5BF9\8BDD\6846\5DF2\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789689522973846984)
,p_event_id=>wwv_flow_imp.id(2789688973924846983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789689917280846984)
,p_name=>unistr('\521D\59CB\5316\5F39\7A97')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789685773862846978)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1487361555080101126)
,p_event_id=>wwv_flow_imp.id(2789689917280846984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P54_FILE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       null AS FILES',
'from dual;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789690365568846985)
,p_event_id=>wwv_flow_imp.id(2789689917280846984)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\521D\59CB\5316')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P54_TEMPLATE_ID'', '''')',
'$(''#app_icon'').hide()',
'$(''#null_icon'').show()',
'$s(''P54_TEMPLATE_PREVIEW'', '''')',
'$s(''P54_FILE'', '''')',
'$s(''P54_TEMPLATE_NAME'', '''')',
'$s(''P54_TEMPLATE_TYPE'', ''SUB_LINK'')',
'$s(''P54_IS_ENABLE'', 1)',
'$s(''P54_TEMPLATE_URL'', '''')',
'$s(''P54_SCOPE_TYPE'', ''ALL'')',
'$(''#chooseInput'').val('''')',
'$s(''P54_VISIBLE_DEPTS'', '''')',
'$s(''P54_VISIBLE_USERS'', '''')',
'$s(''P54_IS_REPEAT'', 0)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789690871271846985)
,p_event_id=>wwv_flow_imp.id(2789689917280846984)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3832560073124363310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789691381499846985)
,p_event_id=>wwv_flow_imp.id(2789689917280846984)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_PREVIEW'') === '''' || $v(''P54_TEMPLATE_PREVIEW'') === ''null'') {',
'  $(''#app_icon'').hide()',
'  $(''#null_icon'').show()',
'} else {',
'  $(''#app_icon'').attr(''src'', $v(''P54_TEMPLATE_PREVIEW''))',
'  $(''#app_icon'').show()',
'  $(''#null_icon'').hide()',
'}',
'',
'if ($v(''P54_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}',
'',
'$(''#add_btn'').show()',
'$(''#save_btn'').hide()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789691799583846985)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P54_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789692315593846986)
,p_event_id=>wwv_flow_imp.id(2789691799583846985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789692675074846986)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789670160985846956)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789693193197846986)
,p_event_id=>wwv_flow_imp.id(2789692675074846986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3832560073124363310)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789693571912846986)
,p_name=>unistr('\65B0\5EFA_3')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789670623307846957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789694084599846986)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_NAME'') === '''') {',
unistr('    alert(''\6A21\677F\540D\79F0\4E0D\80FD\4E3A\7A7A'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789694569368846987)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\68C0\9A8C')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM JW_WORKBENCH_TEMPLATE',
'    WHERE TEMPLATE_NAME = :P54_TEMPLATE_NAME',
'    AND TEMPLATE_ID <> :P54_TEMPLATE_ID',
'    AND DEL_FLAG = 0;',
'    :P54_IS_REPEAT := v_count;',
'END;'))
,p_attribute_02=>'P54_TEMPLATE_ID,P54_TEMPLATE_NAME'
,p_attribute_03=>'P54_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789695100360846987)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_IS_REPEAT'') > 0) {',
'',
unistr('    alert(''\6A21\677F\540D\79F0\4E0D\80FD\91CD\590D'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789695578131846987)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_URL'') === '''') {',
'',
unistr('    alert(''\6A21\677F\8DEF\5F84\4E0D\80FD\4E3A\7A7A'')'),
'    return false',
'} else if ($v(''P54_TEMPLATE_TYPE'') !== ''SUB_LINK''&&!isUrlValid($v(''P54_TEMPLATE_URL''))) {',
'',
unistr('    alert(''\6A21\677F\8DEF\5F84\683C\5F0F\9519\8BEF'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789696117762846988)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'/**',
'* CREATE BY: WXX',
'* CREATE DATE: 2025/2/24 17:25',
'* MODIFY BY:',
'* MODIFY DATE:',
unistr('* DESCRIPTION:\65B0\589E\6A21\677F  \65E5\5FD7'),
'*/',
'cursor userCursor is select *',
'                 from table (SPLITSTR(:P54_VISIBLE_USERS, '',''));',
'cursor deptCursor is select *',
'                 from table (SPLITSTR(:P54_VISIBLE_DEPTS, '',''));',
'v_user_names varchar2(255);',
'v_dept_names varchar2(255);',
'begin',
'insert into JW_WORKBENCH_TEMPLATE(TENANT_ID,',
'                              CREATED_BY,',
'                              UPDATED_BY,',
'                              TEMPLATE_PREVIEW,',
'                              TEMPLATE_NAME,',
'                              TEMPLATE_TYPE,',
'                              IS_ENABLE,',
'                              TEMPLATE_URL,',
'                              SCOPE_TYPE)',
'values (:JW_USER_TENANT,',
'    :JW_USER_ID,',
'    :JW_USER_ID,',
'    :P54_TEMPLATE_PREVIEW,',
'    :P54_TEMPLATE_NAME,',
'    :P54_TEMPLATE_TYPE,',
'    :P54_IS_ENABLE,',
'    :P54_TEMPLATE_URL,',
'    :P54_SCOPE_TYPE)',
'returning TEMPLATE_ID into :P54_TEMPLATE_ID;',
'',
'if :P54_SCOPE_TYPE != ''ALL'' then',
'FOR cur in userCursor',
'    LOOP',
'        INSERT INTO JW_SCOPE (TENANT_ID,',
'                              CREATED_BY,',
'                              UPDATED_BY,',
'                              ENTITY_TYPE,',
'                              ENTITY_ID,',
'                              REFERENCE_ID,',
'                              REFERENCE_TYPE)',
'        VALUES (:JW_USER_TENANT,',
'                :JW_USER_ID,',
'                :JW_USER_ID,',
'                ''USER'',',
'                cur.COLUMN_VALUE,',
'                :P54_TEMPLATE_ID,',
'                ''TEMPLATE'');',
'    END LOOP;',
'FOR cur in deptCursor',
'    LOOP',
'        INSERT INTO JW_SCOPE (TENANT_ID,',
'                              CREATED_BY,',
'                              UPDATED_BY,',
'                              ENTITY_TYPE,',
'                              ENTITY_ID,',
'                              REFERENCE_ID,',
'                              REFERENCE_TYPE)',
'        VALUES (:JW_USER_TENANT,',
'                :JW_USER_ID,',
'                :JW_USER_ID,',
'                ''DEPT'',',
'                cur.COLUMN_VALUE,',
'                :P54_TEMPLATE_ID,',
'                ''TEMPLATE'');',
'    END LOOP;',
'select listagg(NAME, '','')',
'into v_user_names',
'from MPF_BASIC_JA_DING_USER_V',
'where USER_ID in :P54_VISIBLE_USERS;',
'select listagg(NAME, '','')',
'into v_dept_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in :P54_VISIBLE_DEPTS;',
'save_audit_log(:JW_USER_ID, ''TAM'', ''CREATE_TEMPLATE'',',
unistr('               ''\6A21\677F\9884\89C8:'' || :P54_TEMPLATE_PREVIEW || '';\6A21\677F\540D\79F0:'' || :P54_TEMPLATE_NAME || '';\6A21\677F\7C7B\578B:'' ||'),
'               :P54_TEMPLATE_TYPE ||',
unistr('               '';\662F\5426\542F\7528:'' || :P54_IS_ENABLE || '';\6A21\677F\8DEF\5F84:'' || :P54_TEMPLATE_URL || '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' ||'),
unistr('               '';\53EF\89C1\4EBA\5458:'' ||'),
unistr('               v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
');',
'end if;',
'save_audit_log(:JW_USER_ID, ''TAM'', ''CREATE_TEMPLATE'',',
unistr('           ''\6A21\677F\9884\89C8:'' || :P54_TEMPLATE_PREVIEW || '';\6A21\677F\540D\79F0:'' || :P54_TEMPLATE_NAME || '';\6A21\677F\7C7B\578B:'' ||'),
'           :P54_TEMPLATE_TYPE ||',
unistr('           '';\662F\5426\542F\7528:'' || :P54_IS_ENABLE || '';\6A21\677F\8DEF\5F84:'' || :P54_TEMPLATE_URL || '';\53EF\89C1\8303\56F4:\5168\90E8'''),
');',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6A21\677F'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_TEMPLATE_PREVIEW,P54_TEMPLATE_NAME,P54_TEMPLATE_TYPE,P54_IS_ENABLE,P54_TEMPLATE_URL,P54_SCOPE_TYPE,P54_VISIBLE_USERS,P54_VISIBLE_DEPTS'
,p_attribute_03=>'P54_TEMPLATE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789696611992846988)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_ID'') === '''') {',
'',
unistr('    alert(''\4FDD\5B58\5931\8D25'')'),
'    return false',
'} else {',
'',
unistr('    alert(''\4FDD\5B58\6210\529F'')'),
'    true',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789697100044846988)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3832560073124363310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789697563313846988)
,p_event_id=>wwv_flow_imp.id(2789693571912846986)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789698031609846988)
,p_name=>unistr('\65B0\5EFA_4')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789686978746846979)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789698459837846989)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:29',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5220\9664  \65E5\5FD7'),
'    */',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM JW_WORKBENCH',
'    WHERE TEMPLATE_ID = :P54_SELECT_ID',
'    AND DEL_FLAG = 0;',
'',
'    :P54_IS_REPEAT := v_count;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_SELECT_ID'
,p_attribute_03=>'P54_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789698966030846989)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_IS_REPEAT'') > 0) {',
'',
unistr('    alert(''\6709\5DE5\4F5C\53F0\6B63\5728\4F7F\7528\5F53\524D\6A21\677F'')'),
'    return false',
'}',
'return true'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789699483163846989)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5220\9664\5F53\524D\6A21\677F')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789699939828846989)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:29',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\5220\9664  \65E5\5FD7'),
'    */',
'    v_template_name varchar2(64);',
'begin',
'    update JW_WORKBENCH_TEMPLATE set DEL_FLAG=1 where TEMPLATE_ID = :P54_SELECT_ID;',
'    select TEMPLATE_NAME into v_template_name from JW_WORKBENCH_TEMPLATE  where TEMPLATE_ID = :P54_SELECT_ID;',
'    save_audit_log(:JW_USER_ID, ''TAM'', ''DEL_TEMPLATE'',',
unistr('                   ''\6A21\677F\540D\79F0:'' || v_template_name'),
'    );',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5220\9664'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789700453920846990)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P54_IS_REPEAT'', 0)'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789700970156846990)
,p_event_id=>wwv_flow_imp.id(2789698031609846988)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789701403052846990)
,p_name=>unistr('\65B0\5EFA_5')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789686635024846978)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789701935281846990)
,p_event_id=>wwv_flow_imp.id(2789701403052846990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:30',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\542F\7528  \65E5\5FD7'),
'    */',
'    v_template_name varchar2(64);',
'    v_is_enable     number(1);',
'begin',
'    update JW_WORKBENCH_TEMPLATE set IS_ENABLE=DECODE(IS_ENABLE, 1, 0, 1) where TEMPLATE_ID = :P54_SELECT_ID;',
'    select IS_ENABLE, TEMPLATE_NAME',
'    into v_is_enable,v_template_name',
'    from JW_WORKBENCH_TEMPLATE',
'    where TEMPLATE_ID = :P54_SELECT_ID;',
'    if v_is_enable = 1 then',
unistr('        save_audit_log(:JW_USER_ID, ''TAM'', ''START_TEMPLATE'', ''\6A21\677F\540D\79F0:'' || v_template_name);'),
'    else',
unistr('        save_audit_log(:JW_USER_ID, ''TAM'', ''STOP_TEMPLATE'', ''\6A21\677F\540D\79F0:'' || v_template_name);'),
'    end if;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\542F\7528'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_SELECT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789702342096846990)
,p_event_id=>wwv_flow_imp.id(2789701403052846990)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789702787753846991)
,p_name=>unistr('\65B0\5EFA_6')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789686189599846978)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789703281423846991)
,p_event_id=>wwv_flow_imp.id(2789702787753846991)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\521D\59CB\5316')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TEMPLATE_ID,',
'       TEMPLATE_PREVIEW,',
'       TEMPLATE_NAME,',
'       TEMPLATE_TYPE,',
'       IS_ENABLE,',
'       TEMPLATE_URL,',
'       SCOPE_TYPE,',
'       (select LISTAGG(ENTITY_ID, '','')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''TEMPLATE''',
'          and s.REFERENCE_ID = t.TEMPLATE_ID',
'          and s.ENTITY_TYPE = ''USER'') as VISIBLE_USERS,',
'       (select LISTAGG(ENTITY_ID, '','')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''TEMPLATE''',
'          and s.REFERENCE_ID = t.TEMPLATE_ID',
'          and s.ENTITY_TYPE = ''DEPT'') as VISIBLE_DEPTS,',
'          (SELECT LISTAGG(NAME, '','') WITHIN GROUP (ORDER BY NAME)',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''TEMPLATE''',
'                                       AND s.REFERENCE_ID = t.TEMPLATE_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''TEMPLATE''',
'                                       AND s.REFERENCE_ID = t.TEMPLATE_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS COMBINED_NAMES',
'into :P54_TEMPLATE_ID,',
'    :P54_TEMPLATE_PREVIEW,',
'    :P54_TEMPLATE_NAME,',
'    :P54_TEMPLATE_TYPE,',
'    :P54_IS_ENABLE,',
'    :P54_TEMPLATE_URL,',
'    :P54_SCOPE_TYPE,',
'    :P54_VISIBLE_USERS,',
'    :P54_VISIBLE_DEPTS,',
'    :P54_COMBINED_NAMES',
'from JW_WORKBENCH_TEMPLATE t where TEMPLATE_ID = :P54_SELECT_ID;'))
,p_attribute_02=>'P54_SELECT_ID'
,p_attribute_03=>'P54_TEMPLATE_ID,P54_TEMPLATE_PREVIEW,P54_TEMPLATE_NAME,P54_TEMPLATE_TYPE,P54_IS_ENABLE,P54_TEMPLATE_URL,P54_SCOPE_TYPE,P54_VISIBLE_USERS,P54_VISIBLE_DEPTS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789703789505846991)
,p_event_id=>wwv_flow_imp.id(2789702787753846991)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3832560073124363310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789704253457846992)
,p_event_id=>wwv_flow_imp.id(2789702787753846991)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P54_FILE'', '''')',
'if ($v(''P54_TEMPLATE_PREVIEW'') === '''' || $v(''P54_TEMPLATE_PREVIEW'') === ''null'') {',
'  $(''#app_icon'').hide()',
'  $(''#null_icon'').show()',
'} else {',
'  $(''#app_icon'').attr(''src'', $v(''P54_TEMPLATE_PREVIEW''))',
'  $(''#app_icon'').show()',
'  $(''#null_icon'').hide()',
'}',
'',
'if ($v(''P54_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}',
'',
'$(''#add_btn'').hide()',
'$(''#save_btn'').show()',
'$(''#chooseInput'').val($v(''P54_COMBINED_NAMES''))',
'$s("P54_VISIBLE_USERS_RAW",$v("P54_VISIBLE_USERS"))',
'$s("P54_VISIBLE_DEPTS_RAW",$v("P54_VISIBLE_DEPTS"))',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789704652125846992)
,p_name=>unistr('\65B0\5EFA_7')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2789671004403846957)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789705222577846992)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_NAME'') === '''') {',
unistr('    alert(''\6A21\677F\540D\79F0\4E0D\80FD\4E3A\7A7A'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789705687288846992)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:31',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\7EDF\8BA1\6570\91CF  \65E5\5FD7'),
'    */',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(*)',
'    INTO v_count',
'    FROM JW_WORKBENCH_TEMPLATE',
'    WHERE TEMPLATE_NAME = :P54_TEMPLATE_NAME',
'    AND TEMPLATE_ID <> :P54_TEMPLATE_ID',
'    AND DEL_FLAG = 0;',
'    :P54_IS_REPEAT := v_count;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7EDF\8BA1\6570\91CF'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_TEMPLATE_ID,P54_TEMPLATE_NAME'
,p_attribute_03=>'P54_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789706139826846993)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_IS_REPEAT'') > 0) {',
unistr('    alert(''\6A21\677F\540D\79F0\4E0D\80FD\91CD\590D'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789706700305846993)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_URL'') === '''') {',
unistr('    alert(''\6A21\677F\8DEF\5F84\4E0D\80FD\4E3A\7A7A'')'),
'    return false',
'} else if ($v(''P54_TEMPLATE_TYPE'') !== ''SUB_LINK''&&!isUrlValid($v(''P54_TEMPLATE_URL''))) {',
unistr('    alert(''\6A21\677F\8DEF\5F84\683C\5F0F\9519\8BEF'')'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789707186746846993)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\57FA\7840\4FE1\606F')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:25',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\57FA\7840\4FE1\606F  \65E5\5FD7'),
'    */',
'    v_user_names varchar2(255);',
'    v_dept_names varchar2(255);',
'begin',
'    update JW_WORKBENCH_TEMPLATE',
'    set UPDATED_BY       = :JW_USER_ID,',
'        UPDATE_DATE      = SYSDATE,',
'        TEMPLATE_PREVIEW = :P54_TEMPLATE_PREVIEW,',
'        TEMPLATE_NAME    = :P54_TEMPLATE_NAME,',
'        TEMPLATE_TYPE    = :P54_TEMPLATE_TYPE,',
'        IS_ENABLE        = :P54_IS_ENABLE,',
'        TEMPLATE_URL     = :P54_TEMPLATE_URL,',
'        SCOPE_TYPE       = :P54_SCOPE_TYPE',
'    where TEMPLATE_ID = :P54_TEMPLATE_ID;',
'',
'    if :P54_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in :P54_VISIBLE_USERS;',
'        select listagg(NAME, '','')',
'        into v_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in :P54_VISIBLE_DEPTS;',
'        save_audit_log(:JW_USER_ID, ''TAM'', ''CHANGE_TEMPLATE'',',
unistr('                       ''\6A21\677F\9884\89C8:'' || :P54_TEMPLATE_PREVIEW || '';\6A21\677F\540D\79F0:'' || :P54_TEMPLATE_NAME || '';\6A21\677F\7C7B\578B:'' ||'),
'                       :P54_TEMPLATE_TYPE ||',
unistr('                       '';\662F\5426\542F\7528:'' || :P54_IS_ENABLE || '';\6A21\677F\8DEF\5F84:'' || :P54_TEMPLATE_URL || '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' ||'),
unistr('                       '';\53EF\89C1\4EBA\5458:'' ||'),
unistr('                       v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
'        );',
'    end if;',
'    save_audit_log(:JW_USER_ID, ''TAM'', ''CHANGE_TEMPLATE'',',
unistr('                   ''\6A21\677F\9884\89C8:'' || :P54_TEMPLATE_PREVIEW || '';\6A21\677F\540D\79F0:'' || :P54_TEMPLATE_NAME || '';\6A21\677F\7C7B\578B:'' ||'),
'                   :P54_TEMPLATE_TYPE ||',
unistr('                   '';\662F\5426\542F\7528:'' || :P54_IS_ENABLE || '';\6A21\677F\8DEF\5F84:'' || :P54_TEMPLATE_URL || '';\53EF\89C1\8303\56F4:\5168\90E8'''),
'    );',
'    COMMIT;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\57FA\7840\4FE1\606F'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_TEMPLATE_PREVIEW,P54_TEMPLATE_NAME,P54_TEMPLATE_TYPE,P54_IS_ENABLE,P54_TEMPLATE_URL,P54_SCOPE_TYPE,P54_VISIBLE_USERS,P54_VISIBLE_DEPTS,P54_VISIBLE_USERS_RAW,P54_VISIBLE_DEPTS_RAW,P54_TEMPLATE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789707730819846994)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/24 17:26',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4  \65E5\5FD7'),
'    */',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_USERS, '',''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_USERS_RAW, '',''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_DEPTS, '',''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_DEPTS_RAW, '',''));',
'begin',
'    if :P54_SCOPE_TYPE != ''ALL'' then',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P54_TEMPLATE_ID',
'          and REFERENCE_TYPE = ''TEMPLATE''',
'          and ENTITY_TYPE = ''USER''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_USERS_RAW, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_USERS, '','')));',
'',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P54_TEMPLATE_ID',
'          and REFERENCE_TYPE = ''TEMPLATE''',
'          and ENTITY_TYPE = ''DEPT''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_DEPTS_RAW, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P54_VISIBLE_DEPTS, '','')));',
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
'                        :P54_TEMPLATE_ID,',
'                        ''TEMPLATE'');',
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
'                        :P54_TEMPLATE_ID,',
'                        ''TEMPLATE'');',
'            end loop;',
'    end if;',
'    COMMIT;',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P54_TEMPLATE_PREVIEW,P54_TEMPLATE_NAME,P54_TEMPLATE_TYPE,P54_IS_ENABLE,P54_TEMPLATE_URL,P54_SCOPE_TYPE,P54_VISIBLE_USERS,P54_VISIBLE_DEPTS,P54_VISIBLE_USERS_RAW,P54_VISIBLE_DEPTS_RAW,P54_TEMPLATE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789708185107846994)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P54_TEMPLATE_ID'') === '''') {',
'',
unistr('    alert(''\4FDD\5B58\5931\8D25'')'),
'    return false',
'} else {',
'',
unistr('    alert(''\4FDD\5B58\6210\529F'')'),
'    true',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789708677036846994)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3832560073124363310)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789709182553846994)
,p_event_id=>wwv_flow_imp.id(2789704652125846992)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2789658516500674369)
,p_name=>unistr('\56FE\7247\9884\89C8\521D\59CB\5316')
,p_event_sequence=>100
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2786570973055803404)
,p_event_id=>wwv_flow_imp.id(2789658516500674369)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9F20\6807\60AC\505C1.0')
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
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2789658549785674370)
,p_event_id=>wwv_flow_imp.id(2789658516500674369)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65E0\9F20\6807\60AC\505C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\56FE\7247\5143\7D20'),
'var images = document.querySelectorAll(''img'');',
'',
unistr('// \4E3A\6BCF\4E2A\56FE\7247\5143\7D20\6DFB\52A0\70B9\51FB\4E8B\4EF6\76D1\542C\5668'),
'images.forEach(function(image) {',
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
,p_build_option_id=>wwv_flow_imp.id(4421750870193171812)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2786570872005803403)
,p_event_id=>wwv_flow_imp.id(2789658516500674369)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9F20\6807\60AC\505C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\6240\6709\56FE\7247\5143\7D20'),
'var images = document.querySelectorAll(''img'');',
'',
unistr('// \4E3A\6BCF\4E2A\56FE\7247\5143\7D20\6DFB\52A0\70B9\51FB\4E8B\4EF6\76D1\542C\5668'),
'images.forEach(function(image) {',
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
'',
unistr('    // \6DFB\52A0 mouseover \4E8B\4EF6\76D1\542C\5668'),
'    image.addEventListener(''mouseover'', function() {',
'        this.style.cursor = ''pointer'';',
'    });',
'',
unistr('    // \6DFB\52A0 mouseout \4E8B\4EF6\76D1\542C\5668'),
'    image.addEventListener(''mouseout'', function() {',
'        this.style.cursor = '''';',
'    });',
'});',
''))
,p_build_option_id=>wwv_flow_imp.id(4421750870193171812)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2789687766850846979)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3835651446901669598)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\6A21\677F\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>329554928662996713
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2789679268411846968)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3832560073124363310)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6A21\677F\7BA1\7406')
,p_internal_uid=>329546430223996702
);
wwv_flow_imp.component_end;
end;
/

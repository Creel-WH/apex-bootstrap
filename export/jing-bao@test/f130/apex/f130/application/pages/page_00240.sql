prompt --application/pages/page_00240
begin
--   Manifest
--     PAGE: 00240
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
 p_id=>240
,p_name=>unistr('\6676\7801\8BBE\5907\53F0\8D26\7BA1\7406')
,p_alias=>unistr('\6676\7801\8BBE\5907\53F0\8D26\7BA1\7406')
,p_step_title=>unistr('\6676\7801\8BBE\5907\53F0\8D26\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'-- #APP_FILES#jquery.qrcode.min.js',
'#APP_FILES#qrcode_new.min.js',
'#APP_FILES#bootstrap.bundle.min.js',
'#APP_FILES#jszip.min.js',
'#APP_FILES#html2canvas.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag=true;',
'var isAll=true;',
'',
'var device_ids='''';',
'',
'// function fileDownload(url, name) {',
'//   return new Promise((resolve, reject) => {',
'//     var xhr = new XMLHttpRequest();',
unistr('//     xhr.open("GET", url, true); // \4E5F\53EF\4EE5\4F7F\7528POST\65B9\5F0F\FF0C\6839\636E\63A5\53E3'),
unistr('//     xhr.responseType = "blob"; // \8FD4\56DE\7C7B\578Bblob'),
unistr('//     // \5B9A\4E49\8BF7\6C42\5B8C\6210\7684\5904\7406\51FD\6570\FF0C\8BF7\6C42\524D\4E5F\53EF\4EE5\589E\52A0\52A0\8F7D\6846/\7981\7528\4E0B\8F7D\6309\94AE\903B\8F91'),
'//     xhr.onload = function () {',
unistr('//       // \8BF7\6C42\5B8C\6210'),
'//       if (this.status === 200) {',
unistr('//         // \8FD4\56DE200'),
'//         var blob = this.response;',
'//         var reader = new FileReader();',
unistr('//         reader.readAsDataURL(blob); // \8F6C\6362\4E3Abase64\FF0C\53EF\4EE5\76F4\63A5\653E\5165a\8868\60C5href'),
'//         reader.onload = function (e) {',
unistr('//           // \8F6C\6362\5B8C\6210\FF0C\521B\5EFA\4E00\4E2Aa\6807\7B7E\7528\4E8E\4E0B\8F7D'),
'//           var a = document.createElement("a");',
'//           a.download = name;',
'//           a.href = e.target.result;',
unistr('//           $("body").append(a); // \4FEE\590Dfirefox\4E2D\65E0\6CD5\89E6\53D1click'),
'//           a.click();',
'//           resolve(200)',
'//           $(a).remove();',
'//         };',
'//       }',
'//     };',
unistr('//     // \53D1\9001ajax\8BF7\6C42'),
'//     xhr.send();',
'//   })',
'// };function fileDownload(url, name) {',
'//   return new Promise((resolve, reject) => {',
'//     var xhr = new XMLHttpRequest();',
unistr('//     xhr.open("GET", url, true); // \4E5F\53EF\4EE5\4F7F\7528POST\65B9\5F0F\FF0C\6839\636E\63A5\53E3'),
unistr('//     xhr.responseType = "blob"; // \8FD4\56DE\7C7B\578Bblob'),
unistr('//     // \5B9A\4E49\8BF7\6C42\5B8C\6210\7684\5904\7406\51FD\6570\FF0C\8BF7\6C42\524D\4E5F\53EF\4EE5\589E\52A0\52A0\8F7D\6846/\7981\7528\4E0B\8F7D\6309\94AE\903B\8F91'),
'//     xhr.onload = function () {',
unistr('//       // \8BF7\6C42\5B8C\6210'),
'//       if (this.status === 200) {',
unistr('//         // \8FD4\56DE200'),
'//         var blob = this.response;',
'//         var reader = new FileReader();',
unistr('//         reader.readAsDataURL(blob); // \8F6C\6362\4E3Abase64\FF0C\53EF\4EE5\76F4\63A5\653E\5165a\8868\60C5href'),
'//         reader.onload = function (e) {',
unistr('//           // \8F6C\6362\5B8C\6210\FF0C\521B\5EFA\4E00\4E2Aa\6807\7B7E\7528\4E8E\4E0B\8F7D'),
'//           var a = document.createElement("a");',
'//           a.download = name;',
'//           a.href = e.target.result;',
unistr('//           $("body").append(a); // \4FEE\590Dfirefox\4E2D\65E0\6CD5\89E6\53D1click'),
'//           a.click();',
'//           resolve(200)',
'//           $(a).remove();',
'//         };',
'//       }',
'//     };',
unistr('//     // \53D1\9001ajax\8BF7\6C42'),
'//     xhr.send();',
'//   })',
'// };'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2701438068001509087)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2701438677269509086)
,p_plug_name=>unistr('\8BBE\5907\7BA1\7406')
,p_region_name=>'my_test'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>9
,p_query_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P240_IDS_1 is not null then',
'',
'return q''~',
'with area_v as (',
'    select a.area_id, a.name, a.del_flag',
'    from fnd_areas a',
'    where tenant_id = :usertenant',
'    and BASE_DEPT_ID =:BASE_DEPT_ID',
')',
unistr('select ''\9884\89C8''                                  preview,'),
'       c.device_id,',
'       c.tenant_id,',
'       c.device_code,',
'       c.device_name,',
'       c.ip,',
'       decode(f.del_flag, 1, '''', f.name)     fab_name,',
'       decode(a1.del_flag, 1, '''', a1.name)   area_name,',
'       decode(a2.del_flag, 1, '''', a2.name)   line_name,',
'       dept.name                             management_ext_org_name,',
'       decode(ca2.del_flag, 1, '''', ca2.name) category_first_name,',
'       decode(ca.del_flag, 1, '''', ca.name)   category_second_name,',
'       c.remark',
'from code_device c',
'         left join tenant_event_category ca',
'                   on c.category_second_code = ca.code and c.category_first_code = ca.parent_code and',
'                      ca.tenant_id = c.tenant_id  and c.BASE_DEPT_ID=ca.BASE_DEPT_ID',
'         left join tenant_event_category ca2',
'                   on c.category_first_code = ca2.code and ca2.tenant_id = c.tenant_id  and c.BASE_DEPT_ID=ca2.BASE_DEPT_ID',
'         left join fnd_fab f on c.fab_id = f.fab_id and c.tenant_id = f.tenant_id  and c.BASE_DEPT_ID=f.BASE_DEPT_ID',
'         left join area_v a1 on a1.area_id = c.area_id',
'         left join area_v a2 on a2.area_id = c.line_id',
'         left join mpf_share_dept_v dept on dept.ext_org_id = c.management_ext_org_id',
'where c.tenant_id = :usertenant',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.del_flag = 0',
'  and c.AREA_ID in (select regexp_replace(data_val, ''_area'', '''') from UTILS_PKG.SPLIT_STR(:P240_IDS_1, '':''));',
'',
'',
'~'';',
'else',
'',
'return q''~',
'with area_v as (',
'    select a.area_id, a.name, a.del_flag',
'    from fnd_areas a',
'    where tenant_id = :usertenant',
'    and BASE_DEPT_ID=:BASE_DEPT_ID',
')',
unistr('select ''\9884\89C8''                                  preview,'),
'       c.device_id,',
'       c.tenant_id,',
'       c.device_code,',
'       c.device_name,',
'       c.ip,',
'       decode(f.del_flag, 1, '''', f.name)     fab_name,',
'       decode(a1.del_flag, 1, '''', a1.name)   area_name,',
'       decode(a2.del_flag, 1, '''', a2.name)   line_name,',
'       dept.name                             management_ext_org_name,',
'       decode(ca2.del_flag, 1, '''', ca2.name) category_first_name,',
'       decode(ca.del_flag, 1, '''', ca.name)   category_second_name,',
'       c.remark',
'from code_device c',
'         left join tenant_event_category ca',
'                   on c.category_second_code = ca.code and c.category_first_code = ca.parent_code and',
'                      ca.tenant_id = c.tenant_id  and c.BASE_DEPT_ID=ca.BASE_DEPT_ID ',
'         left join tenant_event_category ca2',
'                   on c.category_first_code = ca2.code and ca2.tenant_id = c.tenant_id   and c.BASE_DEPT_ID=ca2.BASE_DEPT_ID',
'         left join fnd_fab f on c.fab_id = f.fab_id and c.tenant_id = f.tenant_id  and c.BASE_DEPT_ID=f.BASE_DEPT_ID',
'         left join area_v a1 on a1.area_id = c.area_id',
'         left join area_v a2 on a2.area_id = c.line_id',
'         left join mpf_share_dept_v dept on dept.ext_org_id = c.management_ext_org_id',
'where c.tenant_id = :usertenant',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.del_flag = 0;',
'~'';',
'',
'end if;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P240_IDS_1'
,p_prn_page_header=>unistr('\8BBE\5907\7BA1\7406')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2442524390552592292)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2442524471517592293)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\4EA7\7EBF')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2447411619971885688)
,p_name=>'PREVIEW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PREVIEW'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\4E8C\7EF4\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>190
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_link_target=>'f?p=&APP_ID.:245:&SESSION.::&DEBUG.:245:P245_DEVICE_IDS:&DEVICE_ID.'
,p_link_text=>'&PREVIEW.'
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
 p_id=>wwv_flow_imp.id(2455770482632835178)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>200
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>128
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
 p_id=>wwv_flow_imp.id(2455770557030835179)
,p_name=>'MANAGEMENT_EXT_ORG_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'MANAGEMENT_EXT_ORG_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8D23\4EFB\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>210
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(2455770666231835180)
,p_name=>'CATEGORY_FIRST_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_FIRST_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5927\7C7B\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>220
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
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
 p_id=>wwv_flow_imp.id(2455770787837835181)
,p_name=>'CATEGORY_SECOND_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_SECOND_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5C0F\7C7B\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>230
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>512
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
 p_id=>wwv_flow_imp.id(2701440035997509082)
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
 p_id=>wwv_flow_imp.id(2701440507268509082)
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
 p_id=>wwv_flow_imp.id(2701441489495509080)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'ID'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2701442494790509079)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':USERTENANT'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2701443490491509078)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>64
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2701444453698509078)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_link_target=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:248:P248_DEVICE_ID:&DEVICE_ID.'
,p_link_text=>'&DEVICE_NAME.'
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
 p_id=>wwv_flow_imp.id(2701445497512509077)
,p_name=>'IP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IP'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907IP')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2701452490977509074)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5907\6CE8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(2701439145939509085)
,p_internal_uid=>518114543185425131
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
 p_id=>wwv_flow_imp.id(2701439576515509084)
,p_interactive_grid_id=>wwv_flow_imp.id(2701439145939509085)
,p_static_id=>'2582194'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(2701439819746509084)
,p_report_id=>wwv_flow_imp.id(2701439576515509084)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183431913124868671)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2447411619971885688)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>103
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183629337573481427)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2455770482632835178)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>122.8828
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183631234815481431)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(2455770557030835179)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>154.8828
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183633138436481435)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(2455770666231835180)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>125.8828
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2183634972066481439)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(2455770787837835181)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>131.8906
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2449802201585582232)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2442524390552592292)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>101.8828
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2449804066409582239)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(2442524471517592293)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>89.8828
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701440876405509081)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2701440507268509082)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701441931563509079)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(2701441489495509080)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>176.812
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701442847720509078)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(2701442494790509079)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701443911899509078)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(2701443490491509078)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114.1875
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701444928109509077)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2701444453698509078)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>138.0625
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701445915585509077)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2701445497512509077)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>134.594
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2701452858186509073)
,p_view_id=>wwv_flow_imp.id(2701439819746509084)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(2701452490977509074)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>145
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2996482071560781032)
,p_plug_name=>unistr('\6240\5728\4F4D\7F6E')
,p_region_name=>'area_tree_id'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select a.id    as ID,  --\6570\636Eid'),
unistr('       a.PARENT_ID,  --\7236id'),
unistr('       a.NAME  as TITLE,  ----\663E\793A\7684\6807\9898'),
unistr('       a.id    as VALUE,  ----\6807\9898\5BF9\5E94\7684\503C'),
'       case',
'           when a.PARENT_ID is null  then',
'               0',
'           else',
'               1',
unistr('           end as TYPE,  --\4F7F\7528\9009\62E9\529F\80FD\65F6\9700\8981 - \662F\914D\7F6E json \4E2D typeSettings \7684\6620\5C04\503C'),
unistr('       0          SELECTED,  --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(null): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('       NULL    as EXPANDED,  --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(null): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('       1       as CHECKBOX,  --\662F\5426\542F\7528\590D\9009\6846 0(null): \7981\7528 1:\542F\7528'),
unistr('       0       as UNSELECTABLE  --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(null): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'from (',
'         select a.AREA_ID || ''_area'' id,',
'                a.NAME,',
'                FAB_ID || ''_fab''     parent_id',
'         from FND_AREAS a',
'         where a.TYPE = 1',
'           and a.DEL_FLAG = 0',
'           and a.TENANT_ID = :USERTENANT',
'           and a.BASE_DEPT_ID =:BASE_DEPT_ID',
'',
'         union all',
'',
'         select f.FAB_ID || ''_fab'' id,',
'                f.NAME,',
'                null               parent_id',
'         from FND_FAB f',
'         where f.DEL_FLAG = 0',
'           and f.TENANT_ID = :USERTENANT',
'           and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'     ) a',
unistr('start with a.PARENT_ID is null  --start with\FF1A\8BBE\7F6E\8D77\70B9\FF0C\63A7\5236\6839\8D77\70B9\6570\636E'),
'connect by prior a.id = a.PARENT_ID  ',
unistr('--connect by\FF1A\7528\6765\6307\660E\5728\67E5\627E\6570\636E\65F6\4EE5\600E\6837\7684\4E00\79CD\5173\7CFB\53BB\67E5\627E\FF1B\6BD4\5982\8BF4\67E5\627E\7B2C\4E8C\5C42\7684\6570\636E\65F6\7528\7B2C\4E00\5C42\6570\636E\67D0\4E2A\5B57\6BB5\8FDB\884C\5339\914D\FF0C\5982\679C\8FD9\4E2A\6761\4EF6\6210\7ACB\90A3\4E48\67E5\627E\51FA\6765\7684\6570\636E\5C31\662F\7B2C\4E8C\5C42\6570\636E\FF0C\540C\7406\5F80\4E0B\9012\5F52\5339\914D'),
unistr('-- prior \FF1A \8868\793A\4E0A\4E00\5C42\7EA7\7684\6807\8BC6\7B26\3002\7ECF\5E38\7528\6765\5BF9\4E0B\4E00\5C42\7EA7\7684\6570\636E\8FDB\884C\9650\5236'),
'order by a.NAME;'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "animationDuration": 200,',
    '  "autoExpand2Level": 0,',
    '  "checkbox": "fa-square-o",',
    '  "checkboxSelected": "fa-check-square",',
    '  "checkboxUnknown": "fa-square",',
    '  "enableCheckBox": true,',
    '  "forceSelectionSet": true,',
    '  "forceRefreshEventOnStart": false,',
    '  "markNodesWithChildren": false,',
    '  "markerModifier": "fam-plus fam-is-info",',
    '  "openParentOfActiveNode": true,',
    '  "openParentOfSelected": true,',
    '  "refresh": 0,',
    '  "search": {',
    '    "autoExpand": true,',
    '    "leavesOnly": false,',
    '    "highlight": true,',
    '    "counter": true,',
    '    "hideUnmatched": true,',
    '    "debounce": {',
    '      "enabled": true,',
    '      "time": 400',
    '    }',
    '  },',
    '  "selectMode": 3,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P240_IDS_1",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_02', 'P240_AREA_NAME',
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N',
  'attribute_06', 'RETURN ''V1'';')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443228154858646630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2701438677269509086)
,p_button_name=>unistr('\5BFC\5165\8BBE\5907')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\5165\8BBE\5907')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:241::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-cloud-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443230028561646624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_button_name=>unistr('\5C55\5F00')
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_image_alt=>unistr('\5C55\5F00')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-expand'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443228600742646629)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2701438677269509086)
,p_button_name=>unistr('\6253\5370\4E8C\7EF4\7801')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6253\5370\4E8C\7EF4\7801')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-print'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443230474331646624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_button_name=>unistr('\5168\9009')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\5168\9009')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443230834901646623)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2447411856934885690)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2701438677269509086)
,p_button_name=>unistr('\6DFB\52A0\8BBE\5907')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6DFB\52A0\8BBE\5907')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:248:&SESSION.::&DEBUG.:248::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2443231300058646623)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_button_name=>unistr('\5237\65B0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_image_alt=>unistr('\5237\65B0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2455770888588835182)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2701438677269509086)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2443228939675646629)
,p_name=>'P240_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2701438677269509086)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2443231677347646623)
,p_name=>'P240_AREA_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_prompt=>unistr('\8BF7\8F93\5165\8981\641C\7D22\7684\5382\533A/\533A\57DF')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2443232086693646622)
,p_name=>'P240_IDS_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2455771313194835187)
,p_name=>'P240_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2996482071560781032)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2440412654532826183)
,p_tabular_form_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_validation_name=>unistr('\8BBE\5907\7F16\7801\9A8C\8BC1')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10);',
'begin',
'    case :APEX$ROW_STATUS',
'',
'        when ''C'' then select count(1)',
'                      into v_count',
'                      from CODE_DEVICE',
'                      where TENANT_ID = :USERTENANT',
'                        and BASE_DEPT_ID =:BASE_DEPT_ID',
'                        and DEVICE_CODE = :DEVICE_CODE',
'                        and DEL_FLAG = 0;',
'        when ''U'' then select count(1)',
'                      into v_count',
'                      from CODE_DEVICE',
'                      where TENANT_ID = :USERTENANT',
'                        and BASE_DEPT_ID =:BASE_DEPT_ID',
'                        and DEVICE_CODE = :DEVICE_CODE',
'                        and DEL_FLAG = 0',
'                        and DEVICE_ID != :DEVICE_ID;',
'        end case;',
'    if v_count > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('#COLUMN_HEADER# \91CD\590D\3002')
,p_associated_column=>'DEVICE_CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443237110531646616)
,p_name=>unistr('\4F20\9012\6570\636E')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443228600742646629)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443237633621646615)
,p_event_id=>wwv_flow_imp.id(2443237110531646616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\662F\5426\9009\4E2D\81F3\5C11\4E00\6761\6570\636E')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P240_IDS''))){',
unistr('    alert(''\8BF7\5148\9009\62E9\8BBE\5907'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443238184846646615)
,p_event_id=>wwv_flow_imp.id(2443237110531646616)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\884C\6570\636E')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_util.set_session_state(''P244_DEVICE_IDS'', :P240_IDS);',
'end;'))
,p_attribute_02=>'P240_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443238690360646615)
,p_event_id=>wwv_flow_imp.id(2443237110531646616)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63D0\4EA4\9875js')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// window.location.href="f?p=&APP_ID.:244:&APP_SESSION.:::::";',
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API'),
'    apex.navigation.redirect("f?p=&APP_ID.:244:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443239101567646615)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443239507563646615)
,p_event_id=>wwv_flow_imp.id(2443239101567646615)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P240_IDS'', ''DEVICE_ID'');',
'utils.set(this.data,map);',
'',
'console.log("id:",$v(''P240_IDS''));',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443233053162646619)
,p_name=>unistr('\5C55\5F00/\6536\8D77')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443230028561646624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443233535385646618)
,p_event_id=>wwv_flow_imp.id(2443233053162646619)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \5C55\5F00\6240\6709\9009\5B9A\8282\70B9\7684\7236\8282\70B9\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("expandSelected");'),
unistr('// \5C55\5F00\5168\90E8\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("expandAll");'),
unistr('// \5168\90E8\6298\53E0\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("collapseAll");'),
unistr('// \5168\9009\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("selectAll");'),
unistr('// \53D6\6D88\5168\9009\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("unselectAll");'),
unistr('// \5C06\6811\6269\5C55\5230\7279\5B9A\7EA7\522B\FF08\5F53\60A8\7559\4E0B\6570\636E\65F6\FF0C\5219\4F7F\7528 configJSON\FF09\FF1A $("#static-tree-region-id-of-the-tree-region").trigger("expandToLevel", 3);'),
'',
'',
'if (flag) {',
'    $("#area_tree_id").trigger("expandAll");',
'    flag=false;',
'} else {',
'    $("#area_tree_id").trigger("collapseAll");',
'     flag=true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443233909401646617)
,p_name=>unistr('\5168\9009\4E0E\53D6\6D88')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443230474331646624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443234439179646617)
,p_event_id=>wwv_flow_imp.id(2443233909401646617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (isAll) {',
'    $("#area_tree_id").trigger("selectAll");',
'    isAll=false;',
'} else {',
'',
'    $("#area_tree_id").trigger("unselectAll");',
'    isAll=true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443234900487646617)
,p_name=>unistr('\9009\4E2D')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443230834901646623)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443235864830646616)
,p_event_id=>wwv_flow_imp.id(2443234900487646617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!utils.checkNull($v(''P240_IDS_1''))) {',
'    device_ids = $v(''P240_IDS_1'');',
'} else {',
'    $s(''P240_IDS_1'', device_ids);',
'}',
unistr('console.log("\9009\4E2D\7684\533A\57DFids:",$v(''P240_IDS_1''));')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443235390587646616)
,p_event_id=>wwv_flow_imp.id(2443234900487646617)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2443236273968646616)
,p_name=>unistr('\5237\65B0\6811')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443231300058646623)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2443236746730646616)
,p_event_id=>wwv_flow_imp.id(2443236273968646616)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2996482071560781032)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2442523996341592288)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2442524729287592296)
,p_event_id=>wwv_flow_imp.id(2442523996341592288)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2442524905814592298)
,p_name=>unistr('\9875\9762\6570\636E\5237\65B0')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
,p_required_patch=>-wwv_flow_imp.id(2204005795769225463)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2442525039728592299)
,p_event_id=>wwv_flow_imp.id(2442524905814592298)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
,p_client_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_client_condition_expression=>'IF'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2442525352858592302)
,p_name=>unistr('\5BFC\5165\8BBE\5907\540E\5237\65B0')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2443228154858646630)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridreportchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2442525436273592303)
,p_event_id=>wwv_flow_imp.id(2442525352858592302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2442525587691592304)
,p_name=>unistr('\5237\65B0\7F51\683C')
,p_event_sequence=>110
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2452061009738141155)
,p_event_id=>wwv_flow_imp.id(2442525587691592304)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2455770919207835183)
,p_name=>unistr('\5220\9664\8BBE\5907')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2455770888588835182)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2455771099248835184)
,p_event_id=>wwv_flow_imp.id(2455770919207835183)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P240_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\8BBE\5907'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2455771483615835188)
,p_event_id=>wwv_flow_imp.id(2455770919207835183)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'begin',
'',
' update CODE_DEVICE',
' set DEL_FLAG=1,',
'     UPDATED_DATE = sysdate,',
'     UPDATED_BY = :USER_ID',
' where DEVICE_ID in (select * from UTILS_PKG.SPLIT_STR(:P240_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P240_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P240_ROW_COUNT'', row_count);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P240_IDS'
,p_attribute_03=>'P240_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2455771287736835186)
,p_event_id=>wwv_flow_imp.id(2455770919207835183)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P240_ROW_COUNT'') > 0) {',
unistr('    alert(''\5220\9664\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\5220\9664\5931\8D25\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2455771144467835185)
,p_event_id=>wwv_flow_imp.id(2455770919207835183)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2443229352113646626)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2701438677269509086)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8BBE\5907\7BA1\7406 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'',
'begin',
'    case :APEX$ROW_STATUS',
'',
'        when ''C''',
'            then insert into CODE_DEVICE(device_code, device_name, fab_id, management_ext_org_id, category_first_code,',
'                                         category_second_code, line_id, area_id, ip, remark, tenant_id,BASE_DEPT_ID,',
'                                         created_by, CREATION_DATE, is_enable, del_flag)',
'                 values (:DEVICE_CODE, :DEVICE_NAME, :FAB_ID, :MANAGEMENT_EXT_ORG_ID, :CATEGORY_FIRST_CODE,',
'                         :CATEGORY_SECOND_CODE, :LINE_ID, :AREA_ID, :IP, :REMARK, :USERTENANT,:BASE_DEPT_ID,',
'                         :USER_ID, SYSDATE, 1, 0)',
'                 returning DEVICE_ID into :DEVICE_ID;',
'',
'        when ''U'' then update CODE_DEVICE',
'                      set DEVICE_CODE           = :DEVICE_CODE,',
'                          DEVICE_NAME           = :DEVICE_NAME,',
'                          FAB_ID                = :FAB_ID,',
'                          MANAGEMENT_EXT_ORG_ID = :MANAGEMENT_EXT_ORG_ID,',
'                          CATEGORY_FIRST_CODE   = :CATEGORY_FIRST_CODE,',
'                          CATEGORY_SECOND_CODE  = :CATEGORY_SECOND_CODE,',
'                          LINE_ID               = :LINE_ID,',
'                          AREA_ID               = :AREA_ID,',
'                          IP           = :IP,',
'                          REMARK       = :REMARK,',
'                          UPDATED_DATE = SYSDATE,',
'                          UPDATED_BY   = :USER_ID',
'                      where DEVICE_ID = :DEVICE_ID',
unistr('                      and DEL_FLAG = 0;   --wxx 2024-12-30 \52A0\5165\903B\8F91\5220\9664'),
'',
'        when ''D'' then update CODE_DEVICE',
'                      set DEL_FLAG     = 1,',
'                          UPDATED_DATE = sysdate,',
'                          UPDATED_BY   = :USER_ID',
'                      where DEVICE_ID = :DEVICE_ID;',
'        end case;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>259904749359562672
);
wwv_flow_imp.component_end;
end;
/

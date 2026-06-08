prompt --application/pages/page_00260
begin
--   Manifest
--     PAGE: 00260
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
 p_id=>260
,p_name=>unistr('\70B9\68C0\5BF9\8C61')
,p_alias=>unistr('\70B9\68C0\5BF9\8C61')
,p_step_title=>unistr('\70B9\68C0\5BF9\8C61')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function click_span_op(id, op) {',
'    console.log(id);',
'    console.log(op);',
'    if (op == ''edit'') {',
'        $s(''P260_OBJECT_ID'', id);',
'        $s(''P260_IS_SHOW'', id);',
'        $(''#update_btn'').click();',
'    } else if (op == ''delete'') {',
'        $s(''P260_OBJECT_IDS'', id);',
'        $(''#del_btn'').click();',
'    } else if (op == ''view'') {',
'        $s(''P260_OBJECT_IDSV'', id);',
'        $(''#view_btn'').click();',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#view_btn{',
' display: none;',
'}',
'',
'#update_btn{',
' display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3019302070588272224)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2359751901918135266)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2359870893962135327)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3019302633861272226)
,p_plug_name=>unistr('\70B9\68C0\5BF9\8C61')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select t.OBJECT_ID,',
'       t.CREATED_BY,',
'       t.CREATION_DATE,',
'       t.DEPT_ID EXT_ORG_ID,',
'       v.form_names,',
'       b.device_total,',
'       t.CATEGORY_FIRST_CODE,',
'       t.OBJECT_SERIAL_NO,',
unistr('       decode(t.IS_ENABLE,1,''\542F\7528'',''\672A\542F\7528'') IS_ENABLE,'),
'       t.UPDATED_BY,',
'       t.UPDATED_DATE,',
'       t.REMARK,',
'       t.TENANT_ID,',
'       t.DEL_FLAG,',
'       ''operate'' operate',
'from CHECK_OBJECT t',
'         left join (',
'    select s.OBJECT_ID, listagg(f.NAME, '','') form_names',
'    from CHECK_OBJECT_FORM_ASSO s',
'             left join CHECK_FORM f on s.FORM_ID = f.FORM_ID',
'    where f.DEL_FLAG = 0',
'    group by s.OBJECT_ID',
') v on t.OBJECT_ID = v.OBJECT_ID',
'         left join (',
'    select o.OBJECT_ID, count(o.OBJECT_DEVICE_ASSO_ID) device_total',
'    from CHECK_OBJECT_DEVICE_ASSO o',
'    left join code_device c on o.DEVICE_ID = c.DEVICE_ID',
unistr('    where c.del_flag = 0    --wxx 2024-12-23  \3010\6676\7801\3011\89E3\51B3\5173\8054\8BBE\5907\5217\8868\548C\8BE6\60C5\4E0D\4E00\81F4\7684\95EE\9898 P260\FF0C275'),
'    group by o.OBJECT_ID',
') b on b.OBJECT_ID = t.OBJECT_ID',
'where t.DEL_FLAG = 0',
'  and t.TENANT_ID = :USERTENANT',
'  and t.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and (t.DEPT_ID = :P260_DEPT or :P260_DEPT = 0 or :P260_DEPT is null);'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P260_DEPT'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\70B9\68C0\5BF9\8C61')
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
 p_id=>wwv_flow_imp.id(1494954835889898778)
,p_name=>'OBJECT_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5173\8054\7F16\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>150
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>200
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
 p_id=>wwv_flow_imp.id(1494956414990898793)
,p_name=>'FORM_NAMES'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_NAMES'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>unistr('\5173\8054\8868\5355')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>160
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>4000
,p_link_target=>'f?p=&APP_ID.:274:&SESSION.::&DEBUG.::P274_OBJECT_ID:&OBJECT_ID.'
,p_link_text=>'&FORM_NAMES.'
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
 p_id=>wwv_flow_imp.id(1494956459012898794)
,p_name=>'DEVICE_TOTAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_TOTAL'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5173\8054\8BBE\5907')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>170
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
,p_link_target=>'f?p=&APP_ID.:275:&SESSION.::&DEBUG.::P275_OBJECT_ID:&OBJECT_ID.'
,p_link_text=>'&DEVICE_TOTAL.'
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
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1494956557067898795)
,p_name=>'IS_ENABLE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'IS_ENABLE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\72B6\6001')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>180
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
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
 p_id=>wwv_flow_imp.id(2735857410339124109)
,p_name=>'OBJECT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OBJECT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2735857509117124110)
,p_name=>'EXT_ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EXT_ORG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\90E8\95E8')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>120
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(2316120847651351941)
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
 p_id=>wwv_flow_imp.id(2735857635773124111)
,p_name=>'CATEGORY_FIRST_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CATEGORY_FIRST_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\5927\7C7B\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME, CODE',
'FROM TENANT_EVENT_CATEGORY ',
'WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID  AND DEL_FLAG=0 and NODE_LEVEL=1; '))
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
 p_id=>wwv_flow_imp.id(3016188331371582009)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>140
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    unistr('<!-- <span onclick="click_span_op(''&OBJECT_ID.'',''edit'')" style=''color:#009AFE;font-size: 14px;''>\7F16\8F91</span>&nbsp;&nbsp;'),
    unistr('<span onclick="click_span_op(''&OBJECT_ID.'',''view'')" style=''color:#009AFE;font-size: 14px;''>\67E5\770B</span>&nbsp;&nbsp;'),
    unistr('<span onclick="click_span_op(''&OBJECT_ID.'',''delete'')" style=''color:#009AFE;font-size: 14px;''>\5220\9664</span> -->'),
    '',
    '<span>',
    '	<a href="#" onclick="click_span_op(''&OBJECT_ID.'',''edit'')" style="text-dcoration:none;">',
    unistr('		\7F16\8F91'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="click_span_op(''&OBJECT_ID.'',''view'')" style="text-dcoration:none;">',
    unistr('		\67E5\770B\8BA1\5212'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="click_span_op(''&OBJECT_ID.'',''delete'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
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
 p_id=>wwv_flow_imp.id(3019303960057272229)
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
 p_id=>wwv_flow_imp.id(3019304444750272229)
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
 p_id=>wwv_flow_imp.id(3019306424032272232)
,p_name=>'CREATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATED_BY'
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
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3019307424622272233)
,p_name=>'CREATION_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CREATION_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3019308455490272234)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\4EBA')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3019309505261272234)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\66F4\65B0\65F6\95F4')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>70
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
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
 p_id=>wwv_flow_imp.id(3019310503264272235)
,p_name=>'REMARK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'REMARK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3019311471130272235)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3019313433048272236)
,p_name=>'DEL_FLAG'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEL_FLAG'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3019303167969272226)
,p_internal_uid=>835978565215188272
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
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    config.defaultGridViewOptions = {',
'        tooltip: {',
'            // when the tooltip is integrated with the grid view the content callback',
'            // gets some extra helpful parameters',
'            content: function(callback, model, recordMeta, colMeta, columnDef ) {',
'                var text = null;',
'',
'                // if in/over the row header display a tooltip based on ',
'                // the record edit state metadata',
'                if (recordMeta && $(this).hasClass( "a-GV-rowHeader" ) ) {',
'                    if ( recordMeta.deleted ) {',
'                        text = "This record has been deleted";',
'                    } else if ( recordMeta.inserted ) {',
'                        text = "This record has been added";',
'                    } else if ( recordMeta.updated ) {',
'                        text = "This record has been changed";',
'                    }',
'                } else {',
'                    if ( columnDef && recordMeta) {',
'                        // if in/over the DEFAULT_VALUE column put the DEFAULT_VALUE in a tooltip so more of the DEFAULT_VALUE can be seen',
'                        // if in/over the name column show the hire date',
'                        if ( columnDef.property === "FORM_NAMES" ) {',
'                            text = model.getValue( recordMeta.record, "FORM_NAMES" );',
'                        } ',
'                    }',
'                    // if in/over any other column display a tooltip based on ',
'                    // the changed state metadata',
'                    if ( colMeta && colMeta.changed ) {',
'                        if ( text !== null) {',
'                            text += "<br>";',
'                        } else {',
'                            text = "";',
'                        }',
'                        text += "This cell has been changed";',
'                    }',
'                }',
'                return text;',
'            }',
'        }',
'    };',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(3019303614374272227)
,p_interactive_grid_id=>wwv_flow_imp.id(3019303167969272226)
,p_static_id=>'2755637'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3019303776572272227)
,p_report_id=>wwv_flow_imp.id(3019303614374272227)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1464718643509634139)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1494954835889898778)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>200.688
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1464727443176174464)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1494956414990898793)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>245.688
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1464728412190174472)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1494956459012898794)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>106.68799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1496743587942821478)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1494956557067898795)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>96.68799999999999
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2743758494803843566)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>16
,p_column_id=>wwv_flow_imp.id(2735857410339124109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2743759396721843570)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(2735857509117124110)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>114
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2743760269075843573)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(2735857635773124111)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019304876445272230)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(3019304444750272229)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019306891841272233)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3019306424032272232)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019307906659272233)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(3019307424622272233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019308876507272234)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(3019308455490272234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>170.461
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019309851012272234)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(3019309505261272234)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>238.39100000000002
,p_sort_order=>1
,p_sort_direction=>'DESC'
,p_sort_nulls=>'FIRST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019310879260272235)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3019310503264272235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019311884768272235)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(3019311471130272235)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019313847895272236)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>15
,p_column_id=>wwv_flow_imp.id(3019313433048272236)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3019394088588379967)
,p_view_id=>wwv_flow_imp.id(3019303776572272227)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(3016188331371582009)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>202.477
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467125496124066887)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>'hide-update'
,p_button_static_id=>'update_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>'hide-update'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467125880468066887)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>'hide-view'
,p_button_static_id=>'view_btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>'hide-view'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467126237633066888)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.:262::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467126666810066888)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>unistr('\5220\9664')
,p_button_static_id=>'del_btn'
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(706577256411164565)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>unistr('\6279\91CF\542F\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\542F\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(706577932490164572)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_button_name=>unistr('\6279\91CF\7981\7528')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6279\91CF\7981\7528')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2467137472475066894)
,p_branch_name=>unistr('\8F6C\5230\9875_\7F16\8F91')
,p_branch_action=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.:262:P262_OBJECT_ID,P262_IS_SHOW:&P260_OBJECT_ID.,&P260_OBJECT_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2467125496124066887)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2467138211641066895)
,p_branch_name=>unistr('\8F6C\5230\9875_\65B0\589E')
,p_branch_action=>'f?p=&APP_ID.:262:&SESSION.::&DEBUG.:262:P262_OBJECT_ID:&P260_IS_SHOW.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2467126237633066888)
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2467137858378066895)
,p_branch_name=>unistr('\8F6C\5230\9875-\67E5\770B')
,p_branch_action=>'f?p=&APP_ID.:276:&SESSION.::&DEBUG.:276:P276_OBJECT_ID:&P260_OBJECT_IDSV.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2467125880468066887)
,p_branch_sequence=>30
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467127008648066888)
,p_name=>'P260_DEPT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_prompt=>unistr('\5C55\793A\8303\56F4\FF08\90E8\95E8\FF09')
,p_placeholder=>unistr('\5168\90E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select to_nchar(''\5168\90E8'') name, 0 ext_org_id'),
'from dual',
'',
'union all',
'',
'select name, ext_org_id',
'from MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  and del_flag = 0',
'  and BASE_DEPT_ID =:BASE_DEPT_ID',
'  and PARENT_ID is not null'))
,p_cSize=>30
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-bottom-sm'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET_FILTER',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467127429995066889)
,p_name=>'P260_ROW_COUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467127880900066889)
,p_name=>'P260_OBJECT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467128214017066889)
,p_name=>'P260_OBJECT_IDS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467128690216066890)
,p_name=>'P260_OBJECT_IDSV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467129022938066890)
,p_name=>'P260_OPERATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467129473782066890)
,p_name=>'P260_IS_SHOW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3019302633861272226)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467131761840066892)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467132258593066892)
,p_event_id=>wwv_flow_imp.id(2467131761840066892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467132616239066892)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467133113922066892)
,p_event_id=>wwv_flow_imp.id(2467132616239066892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P260_OBJECT_IDS'',''OBJECT_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467133541071066892)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2467126666810066888)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467134049954066893)
,p_event_id=>wwv_flow_imp.id(2467133541071066892)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P260_OBJECT_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\662F\5426\786E\8BA4\5220\9664?'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467134565824066893)
,p_event_id=>wwv_flow_imp.id(2467133541071066892)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'begin',
'',
'    update CHECK_OBJECT',
'    set DEL_FLAG=1,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=sysdate',
'    where OBJECT_ID in (select * from UTILS_PKG.SPLIT_STR(:P260_OBJECT_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P260_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P260_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P260_OBJECT_IDS'
,p_attribute_03=>'P260_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467135041839066893)
,p_event_id=>wwv_flow_imp.id(2467133541071066892)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P260_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467135523813066894)
,p_event_id=>wwv_flow_imp.id(2467133541071066892)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467135949601066894)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467136426682066894)
,p_event_id=>wwv_flow_imp.id(2467135949601066894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467125496124066887)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467136983177066894)
,p_event_id=>wwv_flow_imp.id(2467135949601066894)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467125880468066887)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467130892782066891)
,p_name=>unistr('\5207\6362\90E8\95E8')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P260_DEPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467131351683066891)
,p_event_id=>wwv_flow_imp.id(2467130892782066891)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(706577367926164566)
,p_name=>unistr('\6279\91CF\542F\7528-\70B9\68C0\5BF9\8C61')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(706577256411164565)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706577544573164568)
,p_event_id=>wwv_flow_imp.id(706577367926164566)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P260_OBJECT_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\542F\7528\7684\6570\636E'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706577619373164569)
,p_event_id=>wwv_flow_imp.id(706577367926164566)
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
'    update CHECK_OBJECT',
'    set IS_ENABLE=1,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=sysdate',
'    where OBJECT_ID in (select * from UTILS_PKG.SPLIT_STR(:P260_OBJECT_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P260_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P260_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P260_OBJECT_IDS'
,p_attribute_03=>'P260_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706577768711164570)
,p_event_id=>wwv_flow_imp.id(706577367926164566)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P260_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706577848293164571)
,p_event_id=>wwv_flow_imp.id(706577367926164566)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(706578218017164575)
,p_name=>unistr('\6279\91CF\7981\7528-\70B9\68C0\5BF9\8C61')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(706577932490164572)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706578372671164576)
,p_event_id=>wwv_flow_imp.id(706578218017164575)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P260_OBJECT_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\7981\7528\7684\6570\636E'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706578400207164577)
,p_event_id=>wwv_flow_imp.id(706578218017164575)
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
'    update CHECK_OBJECT',
'    set IS_ENABLE=0,',
'        UPDATED_BY=:USER_ID,',
'        UPDATED_DATE=sysdate',
'    where OBJECT_ID in (select * from UTILS_PKG.SPLIT_STR(:P260_OBJECT_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P260_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P260_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P260_OBJECT_IDS'
,p_attribute_03=>'P260_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706578529334164578)
,p_event_id=>wwv_flow_imp.id(706578218017164575)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P260_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(706578694909164579)
,p_event_id=>wwv_flow_imp.id(706578218017164575)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2467129811494066890)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3019302633861272226)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\70B9\51FB\7C7B\522B - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283805208739982936
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00269
begin
--   Manifest
--     PAGE: 00269
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
 p_id=>269
,p_name=>unistr('\8D44\6599\5E93\540D\79F0')
,p_alias=>unistr('\8D44\6599\5E93\540D\79F0')
,p_step_title=>unistr('\8D44\6599\5E93\540D\79F0')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var itemValue = $(''#P269_KNOWLEDGE_NAME'').val();',
unistr('$(".t-Breadcrumb-label:contains(''\8D44\6599\5E93\540D\79F0'')").text(itemValue);'),
'function click_span_op(id, op) {',
'',
'    if (op == ''edit'') {',
'        $s(''P269_KNOWLEDGE_ITEM_ID'', id);',
'        $(''#update_btn'').click();',
'    } else if (op == ''device_delete'') {',
'        $s(''P269_KNOWLEDGE_DEVICE_ASSO_ID'', id);',
'        $(''#device_del_btn'').click();',
'    } else {',
'        $s(''P269_KNOWLEDGE_ITEM_ID'', id);',
'        $(''#del_btn'').click();',
'    }',
'}',
'',
unistr('//\70B9\51FB\9884\89C8'),
'function click_preview(file_url, file_type, file_suffix, file_name, file_suffix) {',
'    var f_name = get_fileName(file_url);',
'    // var file_html;',
'    if (/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(file_url) && file_type != ''LINK'') {',
'        openImg(file_url);',
'    } else if (file_type == ''LINK'') {',
'        window.open(file_url);',
'    } else if (file_suffix == ''pdf'' && file_type == ''FILE'') {',
'        window.open(file_url);',
'    } else {',
'        fileDownload(file_url, file_name + ''.'' + file_suffix);',
'    }',
'',
'}',
'',
'',
'',
'',
unistr('//\901A\7528\7684\65B9\6CD5'),
'function toBigImg() {',
unistr('    $(".opacityBottom").addClass("opacityBottom");//\6DFB\52A0\906E\7F69\5C42'),
'    $(".opacityBottom").show();',
unistr('    $("html,body").addClass("none-scroll");//\4E0B\5C42\4E0D\53EF\6ED1\52A8'),
unistr('    $(".bigImg").addClass("bigImg");//\6DFB\52A0\56FE\7247\6837\5F0F'),
unistr('    $(".opacityBottom").click(function () {//\70B9\51FB\5173\95ED'),
'        $("html,body").removeClass("none-scroll");',
'        $(".opacityBottom").remove();',
'    });',
'}',
unistr('//\5728\7EBF\9884\89C8\56FE\7247'),
'function openImg(file_url) {',
'    var img = new Image();',
'    img.src = file_url;',
'    img.onload = () => {',
'        var h = img.height;',
'        var w = img.width;',
'        var num = w / h;',
'        let height = 0;',
'        let width = 0;',
'        if (w > h) {',
'            width = window.innerWidth * 0.8;',
'            height = width / num',
'        } else {',
'            height = window.innerHeight * 0.8;',
'            width = height * num',
'        }',
'        var opacityBottom = `<div class="opacityBottom" style = "display:none"><img width="${width}"  height="${height}" class="bigImg" src="${file_url}"></div>`;',
'        $(document.body).append(opacityBottom);',
'        toBigImg();',
'    }',
'',
'',
'',
'}',
'',
unistr('// \83B7\53D6\6587\4EF6\540D'),
'function get_fileName(file_url) {',
'    var parts = file_url.split("/");',
'    var file = parts[parts.length - 1];',
'    return file.substring(file.indexOf(''_'') + 1);',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn{',
'    display: none;',
'}',
'',
'',
unistr('/*\70B9\51FB\4E0A\4F20\7684\6587\4EF6\FF08\56FE\7247\5168\5C4F\653E\5927\FF09start*/'),
'.bigImg {',
'    position: absolute;',
'    top: 50%;',
'    left: 50%;',
unistr('    /*\56FE\7247\5411\5DE6\79FB\52A8\81EA\8EAB\5BBD\5EA6\768450%, \5411\4E0A\79FB\52A8\81EA\8EAB\9AD8\5EA6\768450%\3002*/'),
'    transform: translate(-50%,-50%);',
'}',
unistr('/*\906E\7F69\5C42*/'),
'.opacityBottom {',
'    width: 100%;',
'    height: 100%;',
'    position: fixed;',
'    background: rgba(0,0,0,0.8);',
'    z-index: 1000;',
'    top: 0;',
'    left: 0;',
'}',
'',
'',
'  @keyframes spin {',
'            0% { transform: rotate(0deg); }',
'            100% { transform: rotate(360deg); }',
'        }',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1894597863578905920)
,p_plug_name=>unistr('\8D44\6599\5185\5BB9')
,p_region_name=>'knowledge_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1894977372016410993)
,p_plug_name=>unistr('\8D44\6599\5E93\540D\79F0')
,p_parent_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select KNOWLEDGE_ITEM_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       TENANT_ID,',
'       NAME,',
'       URL,',
'       TYPE,',
'       SUFFIX,',
'       SORT_NUM,',
'       KNOWLEDGE_ID,',
'       ''operate'' operate',
'from CODE_KNOWLEDGE_ITEM',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and KNOWLEDGE_ID=:P269_KNOWLEDGE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P269_KNOWLEDGE_ID'
,p_prn_page_header=>unistr('\8D44\6599\5E93\540D\79F0')
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1894597647294905917)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1894597711675905918)
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
 p_id=>wwv_flow_imp.id(1894978676080410996)
,p_name=>'KNOWLEDGE_ITEM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KNOWLEDGE_ITEM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1894979728727410998)
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
 p_id=>wwv_flow_imp.id(1894980688931410999)
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
 p_id=>wwv_flow_imp.id(1894981682846410999)
,p_name=>'UPDATED_BY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_BY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
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
 p_id=>wwv_flow_imp.id(1894982705497411000)
,p_name=>'UPDATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UPDATED_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(1894983694356411000)
,p_name=>'TENANT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TENANT_ID'
,p_data_type=>'NUMBER'
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
 p_id=>wwv_flow_imp.id(1894984657142411001)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8D44\6599\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>true
,p_max_length=>100
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
 p_id=>wwv_flow_imp.id(1894985686134411002)
,p_name=>'URL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'URL'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1894986679153411002)
,p_name=>'TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
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
 p_id=>wwv_flow_imp.id(1894987687840411003)
,p_name=>'SUFFIX'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SUFFIX'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>unistr('\7C7B\578B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
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
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1894988722195411003)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_max_length=>10
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
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
 p_id=>wwv_flow_imp.id(1894989666149411004)
,p_name=>'KNOWLEDGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KNOWLEDGE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
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
 p_id=>wwv_flow_imp.id(1894990710838411004)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" onclick="click_preview(''&URL.'',''&TYPE.'',''&SUFFIX.'',''&NAME.'',''&SUFFIX.'')" style="text-dcoration:none;">',
    unistr('		\9884\89C8'),
    '	</a>',
    '	&nbsp;',
    '	<a href="#" onclick="click_span_op(''&KNOWLEDGE_ITEM_ID.'',''delete'')" style="text-dcoration:none;">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>')))).to_clob
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1894977928031410993)
,p_internal_uid=>8950480252111197
,p_is_editable=>true
,p_edit_operations=>'u'
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
 p_id=>wwv_flow_imp.id(1894978312967410994)
,p_interactive_grid_id=>wwv_flow_imp.id(1894977928031410993)
,p_static_id=>'89509'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1894978534932410994)
,p_report_id=>wwv_flow_imp.id(1894978312967410994)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894979126184410997)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1894978676080410996)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894980078635410998)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1894979728727410998)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894981052447410999)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1894980688931410999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894982114221411000)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1894981682846410999)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894983098895411000)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1894982705497411000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894984085719411001)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1894983694356411000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894985134804411001)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1894984657142411001)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>1038.12
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894986064970411002)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1894985686134411002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894987131244411002)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1894986679153411002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894988146117411003)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1894987687840411003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>107.125
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894989092229411004)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1894988722195411003)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100.125
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894990073807411004)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1894989666149411004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894991083582411005)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1894990710838411004)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>129.99997099609374
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1894992575835431133)
,p_view_id=>wwv_flow_imp.id(1894978534932410994)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1894597647294905917)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1896054615049629802)
,p_plug_name=>unistr('\8D44\6599\5185\5BB9-\65B0\589E')
,p_region_name=>'knowledge_div'
,p_parent_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_list_id=>wwv_flow_imp.id(1896105375261907609)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2302104416635836225)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1894976727073410982)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2301990439734836168)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2302109431778836229)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1895851169908257603)
,p_plug_name=>unistr('\5173\8054\8BBE\5907')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1895851301026257604)
,p_plug_name=>unistr('\8BBE\5907\8BE6\60C5')
,p_parent_plug_id=>wwv_flow_imp.id(1895851169908257603)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302043686287836199)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH AREA_V AS (',
'    SELECT A.AREA_ID, A.NAME, A.DEL_FLAG',
'    FROM FND_AREAS A',
'    WHERE TENANT_ID = :USERTENANT',
'    and BASE_DEPT_ID =:BASE_DEPT_ID',
')',
'SELECT KNOWLEDGE_DEVICE_ASSO_ID,',
'       CK.DEVICE_ID,',
'       KNOWLEDGE_ID,',
'       DEVICE_CODE,',
'       DEVICE_NAME,',
'       CD.FAB_ID,',
'       F.NAME  FAB_NAME,',
'       LINE_ID,',
'       A2.NAME LINE_NAME,',
'       CD.AREA_ID,',
'       A1.NAME AREA_NAME,',
'       ROWNUM  RN,',
'       ''operate'' operate',
'FROM CODE_KNOWLEDGE_DEVICE_ASSO CK',
'         LEFT JOIN CODE_DEVICE CD ON CK.DEVICE_ID = CD.DEVICE_ID',
'         LEFT JOIN FND_FAB F ON CD.FAB_ID = F.FAB_ID AND CD.TENANT_ID = F.TENANT_ID  AND CD.BASE_DEPT_ID =F.BASE_DEPT_ID',
'         LEFT JOIN AREA_V A1 ON A1.AREA_ID = CD.AREA_ID',
'         LEFT JOIN AREA_V A2 ON A2.AREA_ID = CD.LINE_ID',
'WHERE CD.DEL_FLAG = 0',
'  AND CD.IS_ENABLE = 1',
'  AND CK.TENANT_ID = :USERTENANT',
'  AND KNOWLEDGE_ID = :P269_KNOWLEDGE_ID;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P269_KNOWLEDGE_ID'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\8BBE\5907\8BE6\60C5')
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
 p_id=>wwv_flow_imp.id(1895851501995257606)
,p_name=>'KNOWLEDGE_DEVICE_ASSO_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KNOWLEDGE_DEVICE_ASSO_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1895851605684257607)
,p_name=>'DEVICE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1895851736546257608)
,p_name=>'KNOWLEDGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'KNOWLEDGE_ID'
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
 p_id=>wwv_flow_imp.id(1895851787327257609)
,p_name=>'DEVICE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\7F16\7801')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
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
 p_id=>wwv_flow_imp.id(1895851851051257610)
,p_name=>'DEVICE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DEVICE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8BBE\5907\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1895851948469257611)
,p_name=>'FAB_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
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
 p_id=>wwv_flow_imp.id(1895852099118257612)
,p_name=>'LINE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1895852241605257613)
,p_name=>'AREA_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_ID'
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
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1895852286692257614)
,p_name=>'RN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>false
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
 p_id=>wwv_flow_imp.id(1895852388792257615)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(1895852519209257616)
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
 p_id=>wwv_flow_imp.id(1895852787537257619)
,p_name=>'FAB_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FAB_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\5382\533A')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
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
 p_id=>wwv_flow_imp.id(1895852946833257620)
,p_name=>'LINE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LINE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\7EBF\522B')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
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
 p_id=>wwv_flow_imp.id(1895853031411257621)
,p_name=>'AREA_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'AREA_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\533A\57DF')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>32
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
 p_id=>wwv_flow_imp.id(1895853127975257622)
,p_name=>'OPERATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>150
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    '<span>',
    '	<a href="#" onclick="click_span_op(''&KNOWLEDGE_DEVICE_ASSO_ID.'',''device_delete'')" style="text-dcoration:none;">',
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(1895851435140257605)
,p_internal_uid=>9823987360957809
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
 p_id=>wwv_flow_imp.id(1895914244077384849)
,p_interactive_grid_id=>wwv_flow_imp.id(1895851435140257605)
,p_static_id=>'98868'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>10
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(1895914431834384849)
,p_report_id=>wwv_flow_imp.id(1895914244077384849)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1886028460508302483)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>14
,p_column_id=>wwv_flow_imp.id(1895853127975257622)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895914945871384854)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(1895851501995257606)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895915820639384860)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(1895851605684257607)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895916701226384864)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(1895851736546257608)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895917614629384867)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(1895851787327257609)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895918494791384870)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(1895851851051257610)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895919437854384873)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(1895851948469257611)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895920327351384876)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(1895852099118257612)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895921239299384879)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(1895852241605257613)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895922147493384882)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(1895852286692257614)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>94.71100000000001
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895924103671408311)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(1895852388792257615)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895931093118467371)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(1895852787537257619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895931960313467375)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>13
,p_column_id=>wwv_flow_imp.id(1895852946833257620)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(1895932878626467378)
,p_view_id=>wwv_flow_imp.id(1895914431834384849)
,p_display_seq=>12
,p_column_id=>wwv_flow_imp.id(1895853031411257621)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1894598761626905929)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_button_name=>'customizee'
,p_button_static_id=>'customizee_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302107334296836227)
,p_button_image_alt=>'Customizee'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:271:&SESSION.::&DEBUG.:271:P271_KNOWLEDGE_ID,P271_TYPE:&P269_KNOWLEDGE_ID.,LINK'
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1894598727944905928)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_button_name=>'upload'
,p_button_static_id=>'upload_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302107334296836227)
,p_button_image_alt=>'Upload'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:271:&SESSION.::&DEBUG.:271:P271_KNOWLEDGE_ID,P271_TYPE:&P269_KNOWLEDGE_ID.,FILE'
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1895855432575257645)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1895851301026257604)
,p_button_name=>'device_delete'
,p_button_static_id=>'device_del_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302107334296836227)
,p_button_image_alt=>'Device Delete'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2179946075681774745)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(1894977372016410993)
,p_button_name=>'delete'
,p_button_static_id=>'del_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302107334296836227)
,p_button_image_alt=>'Customizee'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn hide_btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1895853210077257623)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1895851301026257604)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1896054475310629801)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_button_name=>unistr('\65B0\589E2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_button_cattributes=>'data-menu="knowledge_div_menu"'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1895853341772257624)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1895851301026257604)
,p_button_name=>unistr('\5220\9664\8BBE\5907')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2179945027196774734)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1894597863578905920)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1894599863441905940)
,p_branch_name=>unistr('\8F6C\5230\9875 271')
,p_branch_action=>'f?p=&APP_ID.:271:&SESSION.::&DEBUG.:271::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(1894598761626905929)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1895853363602257625)
,p_branch_action=>'f?p=&APP_ID.:270:&SESSION.::&DEBUG.:270:P270_KNOWLEDGE_ID:&P269_KNOWLEDGE_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1768482883778515271)
,p_name=>'P269_KNOWLEDGE_NAME'
,p_item_sequence=>30
,p_item_default=>'select KNOWLEDGE_NAME from CODE_KNOWLEDGE where KNOWLEDGE_ID=:P269_KNOWLEDGE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1894598058794905922)
,p_name=>'P269_KNOWLEDGE_ID'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1894599697279905938)
,p_name=>'P269_KNOWLEDGE_ITEM_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1894977372016410993)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1895854057531257632)
,p_name=>'P269_KNOWLEDGE_DEVICE_ASSO_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1895851301026257604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1895854199531257633)
,p_name=>'P269_KNOWLEDGE_DEVICE_ASSO_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1895851301026257604)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2179945509298774739)
,p_name=>'P269_KNOWLEDGE_ITEM_IDS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(1894977372016410993)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2179945919379774743)
,p_name=>'P269_ROW_COUNT'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1896054940916629805)
,p_tabular_form_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_validation_name=>unistr('\9A8C\8BC1\5E8F\53F7\6709\6548\6027')
,p_validation_sequence=>10
,p_validation=>'SORT_NUM'
,p_validation2=>'^[0-9]{1,10}$'
,p_validation_type=>'REGULAR_EXPRESSION'
,p_error_message=>unistr('#COLUMN_HEADER# \5FC5\987B\662F\6B63\6574\6570\6216\80050\3002')
,p_associated_column=>'SORT_NUM'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1768482926154515272)
,p_tabular_form_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_validation_name=>unistr('\9A8C\8BC1\6587\4EF6\540D')
,p_validation_sequence=>20
,p_validation=>'select 1 from dual where regexp_replace( regexp_replace(:NAME,''[^ -~]+'',''''),''[a-zA-Z0-9.]'','''')  is  null'
,p_validation_type=>'EXISTS'
,p_error_message=>unistr('#COLUMN_HEADER# \6587\4EF6\540D\5305\542B\7279\6B8A\7B26\53F7\3002')
,p_always_execute=>'Y'
,p_associated_column=>'NAME'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1894598266841905924)
,p_name=>unistr('\6587\4EF6\4E0A\4F20\65B9\5F0F')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P269_NEW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894598473224905926)
,p_event_id=>wwv_flow_imp.id(1894598266841905924)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P269_NEW'')==''upload''){',
'    $(''#upload_btn'').click();',
'}else{',
'	$(''#customizee_btn'').click();',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1894599391002905935)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894599497924905936)
,p_event_id=>wwv_flow_imp.id(1894599391002905935)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(1894598761626905929)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894599576960905937)
,p_event_id=>wwv_flow_imp.id(1894599391002905935)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(1894598727944905928)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179946212018774746)
,p_event_id=>wwv_flow_imp.id(1894599391002905935)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2179946075681774745)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895855521856257646)
,p_event_id=>wwv_flow_imp.id(1894599391002905935)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(1895855432575257645)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2179945128678774735)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179945149946774736)
,p_event_id=>wwv_flow_imp.id(2179945128678774735)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1895853702913257628)
,p_name=>unistr('\5173\8054\8BBE\5907_\5237\65B0')
,p_event_sequence=>60
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895853839979257629)
,p_event_id=>wwv_flow_imp.id(1895853702913257628)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1895851301026257604)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2179945274264774737)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179945359062774738)
,p_event_id=>wwv_flow_imp.id(2179945274264774737)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P269_KNOWLEDGE_ITEM_IDS'',''KNOWLEDGE_ITEM_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1895853943426257630)
,p_name=>unistr('\5173\8054\8BBE\5907_\884C\9009\4E2D')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1895851301026257604)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895853971772257631)
,p_event_id=>wwv_flow_imp.id(1895853943426257630)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map=new Map();',
'map.set(''P269_KNOWLEDGE_DEVICE_ASSO_IDS'',''KNOWLEDGE_DEVICE_ASSO_ID'');',
'utils.set(this.data,map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2179945639873774740)
,p_name=>unistr('\5220\9664\6570\636E')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2179945027196774734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179945721657774741)
,p_event_id=>wwv_flow_imp.id(2179945639873774740)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P269_KNOWLEDGE_ITEM_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('if (confirm(''\5220\9664\540E\76F8\5173\8BBE\5907\5C06\65E0\6CD5\67E5\770B\76F8\5173\8D44\6599\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179945778773774742)
,p_event_id=>wwv_flow_imp.id(2179945639873774740)
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
'    delete CODE_KNOWLEDGE_ITEM where KNOWLEDGE_ITEM_ID in (select * from JA_UTILS_PKG.SPLIT_STR(:P269_KNOWLEDGE_ITEM_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P269_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P269_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P269_KNOWLEDGE_ITEM_IDS'
,p_attribute_03=>'P269_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2179946029399774744)
,p_event_id=>wwv_flow_imp.id(2179945639873774740)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P269_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'	$s(''P269_KNOWLEDGE_ITEM_IDS'','''');',
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895850965151257601)
,p_event_id=>wwv_flow_imp.id(2179945639873774740)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1895854845068257639)
,p_name=>unistr('\5173\8054\8BBE\5907_\5220\9664\6570\636E')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1895853341772257624)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895854889068257640)
,p_event_id=>wwv_flow_imp.id(1895854845068257639)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P269_KNOWLEDGE_DEVICE_ASSO_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\6570\636E'');'),
'    return false;',
'}',
'',
unistr('// if (confirm(''\662F\5426\786E\5B9A\5220\9664\FF1F'')) {'),
'//     return true;',
'// } else {',
'//     return false;',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895855040492257641)
,p_event_id=>wwv_flow_imp.id(1895854845068257639)
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
'    delete CODE_KNOWLEDGE_DEVICE_ASSO where KNOWLEDGE_DEVICE_ASSO_ID in (select * from JA_UTILS_PKG.SPLIT_STR(:P269_KNOWLEDGE_DEVICE_ASSO_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P269_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P269_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P269_KNOWLEDGE_DEVICE_ASSO_IDS'
,p_attribute_03=>'P269_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895855081677257642)
,p_event_id=>wwv_flow_imp.id(1895854845068257639)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P269_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'	$s(''P269_KNOWLEDGE_DEVICE_ASSO_IDS'','''');',
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895855234845257643)
,p_event_id=>wwv_flow_imp.id(1895854845068257639)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1895851301026257604)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1895850585994257597)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2179946075681774745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895850745904257598)
,p_event_id=>wwv_flow_imp.id(1895850585994257597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('if (confirm(''\5220\9664\540E\76F8\5173\8BBE\5907\5C06\65E0\6CD5\67E5\770B\76F8\5173\8D44\6599\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F'')) {'),
'    return true;',
'} else {',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895850780691257599)
,p_event_id=>wwv_flow_imp.id(1895850585994257597)
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
'    delete CODE_KNOWLEDGE_ITEM where KNOWLEDGE_ITEM_ID = :P269_KNOWLEDGE_ITEM_ID;',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P269_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P269_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P269_KNOWLEDGE_ITEM_ID'
,p_attribute_03=>'P269_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895850906125257600)
,p_event_id=>wwv_flow_imp.id(1895850585994257597)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P269_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895851103431257602)
,p_event_id=>wwv_flow_imp.id(1895850585994257597)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1895854263855257634)
,p_name=>unistr('\5173\8054\8BBE\5907_\5220\9664')
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1895855432575257645)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895854438443257635)
,p_event_id=>wwv_flow_imp.id(1895854263855257634)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// if (confirm(''\5220\9664\540E\76F8\5173\8BBE\5907\5C06\65E0\6CD5\67E5\770B\76F8\5173\8D44\6599\FF0C\662F\5426\786E\5B9A\5220\9664\FF1F'')) {'),
'//     return true;',
'// } else {',
'//     return false;',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895854459056257636)
,p_event_id=>wwv_flow_imp.id(1895854263855257634)
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
'    delete CODE_KNOWLEDGE_DEVICE_ASSO where KNOWLEDGE_DEVICE_ASSO_ID = :P269_KNOWLEDGE_DEVICE_ASSO_ID;',
'    row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P269_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P269_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                  :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P269_KNOWLEDGE_DEVICE_ASSO_ID'
,p_attribute_03=>'P269_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895854565011257637)
,p_event_id=>wwv_flow_imp.id(1895854263855257634)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P269_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1895854723703257638)
,p_event_id=>wwv_flow_imp.id(1895854263855257634)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1895851301026257604)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1894597827751905919)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1894977372016410993)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\8D44\6599\5E93\540D\79F0 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''U'' then',
'        update CODE_KNOWLEDGE_ITEM',
'           set NAME  = :NAME,',
'               SORT_NUM = :SORT_NUM,',
'               UPDATED_BY=:USERID,',
'               UPDATED_DATE=sysdate',
'         where KNOWLEDGE_ITEM_ID  = :KNOWLEDGE_ITEM_ID;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8570379972606123
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1895852573578257617)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(1895851301026257604)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\65B0\5EFA - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>9825125798957821
);
wwv_flow_imp.component_end;
end;
/

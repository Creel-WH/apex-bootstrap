prompt --application/pages/page_00257
begin
--   Manifest
--     PAGE: 00257
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
 p_id=>257
,p_name=>unistr('\70B9\68C0\8BA1\5212-\7F16\8F91')
,p_alias=>unistr('\70B9\68C0\8BA1\5212-\7F16\8F91')
,p_step_title=>unistr('\70B9\68C0\8BA1\5212-\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function del_form(form_id) {',
'    $s(''P257_FORM_IDS'', form_id);',
'    $(''#del_btn'').click();',
'}',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P257_DAY_SHIFT_START'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P257_DAY_SHIFT_START'', value);',
'        }',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P257_DAY_SHIFT_END'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P257_DAY_SHIFT_END'', value);',
'        }',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P257_NIGHT_SHIFT_START'',',
'        type: ''time'',',
'        // min: !$v(''P257_DAY_SHIFT_END'') ? ''00:00:00'' : $v(''P257_DAY_SHIFT_END'') + '':00'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P257_NIGHT_SHIFT_START'', value);',
'        }',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P257_NIGHT_SHIFT_END'',',
'        type: ''time'',',
'        // max: !$v(''P257_DAY_SHIFT_START'') ? ''23:59:59'' : $v(''P257_DAY_SHIFT_START'') + '':00'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P257_NIGHT_SHIFT_END'', value);',
'        }',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
unistr('// \83B7\53D6\6240\6709\5355\9009\6846\5143\7D20'),
'var radioButtons = document.querySelectorAll(''input[type=radio]'');',
'',
unistr('// \4E3A\6BCF\4E2A\5355\9009\6846\6DFB\52A0\4E8B\4EF6\76D1\542C\5668'),
'radioButtons.forEach(function (radioButton) {',
'    radioButton.addEventListener(''change'', function () {',
unistr('        // \786E\4FDD\53EA\6709\4E00\4E2A\5355\9009\6846\88AB\9009\4E2D'),
'        radioButtons.forEach(function (rb) {',
'            rb.checked = false;',
'        });',
'        this.checked = true;',
'    });',
'});',
'',
'function get_milliseconds(timeString) {',
'    const currentDate = new Date();',
unistr('    // \4ECE\65F6\95F4\5B57\7B26\4E32\4E2D\63D0\53D6\5C0F\65F6\548C\5206\949F'),
'    const [hours, minutes] = timeString.split('':'');',
unistr('    // \8BBE\7F6E\65E5\671F\7684\5C0F\65F6\548C\5206\949F'),
'    currentDate.setHours(hours);',
'    currentDate.setMinutes(minutes);',
unistr('    // \83B7\53D6\65E5\671F\5BF9\8C61\7684\65F6\95F4\6233\FF08\6BEB\79D2\FF09'),
'    return currentDate.getTime();',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\6309\65F6'),
'$("#P257_PLAN_HRS").attr("type", "number");',
unistr('$("#P257_PLAN_HRS").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('$("#P257_PLAN_HRS").attr("max", 23);        // \8BBE\7F6E\6700\5927\503C'),
'',
unistr('//\6309\65E5'),
'$("#P257_PLAN_DAY").attr("type", "number");',
unistr('$("#P257_PLAN_DAY").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('$("#P257_PLAN_DAY").attr("max", 31);        // \8BBE\7F6E\6700\5927\503C'),
'',
'',
'$(''#P257_PLAN_HRS'').attr(''oninput'',"if(this.value.length==1){this.value=this.value.replace(/[^1-9]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");',
'$(''#P257_PLAN_DAY'').attr(''oninput'',"if(this.value.length==1){this.value=this.value.replace(/[^1-9]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");'))
,p_css_file_urls=>'#WORKSPACE_FILES#static/css/layui#MIN#.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.layui-laydate-content>.layui-laydate-list {',
'    padding-bottom: 0px;',
'    overflow: hidden;',
'}',
'.layui-laydate-content>.layui-laydate-list>li{',
'    width:50%',
'}',
'',
'.merge-box .scrollbox .merge-list {',
'    padding-bottom: 5px;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2743546447891077523)
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
 p_id=>wwv_flow_imp.id(2743547679923086027)
,p_plug_name=>unistr('\57FA\7840\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLAN_ID,',
'       PLAN_SERIAL_NO,',
'       IS_ENABLE,',
'       PLAN_NAME',
'  from CHECK_FORM_PLAN ',
'  where DEL_FLAG = 0   ',
'  AND TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID =:BASE_DEPT_ID ;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2743547749233086028)
,p_plug_name=>unistr('\70B9\68C0\8868\5355')
,p_region_name=>'check_form_div'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3027797454739804932)
,p_plug_name=>unistr('\67E5\770B\70B9\68C0\8868\5355')
,p_parent_plug_id=>wwv_flow_imp.id(2743547749233086028)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rownum rn,',
'       FORM_ID,',
'       FORM_SERIAL_NO,',
'       NAME,',
'       PLAN_ID,',
'       SORT_NUM,',
'	   CLASSIFY_ID,',
'       ''operation'' operation',
'from CHECK_FORM f where f.PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0 and TENANT_ID=:USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID ;'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P257_PLAN_ID'
,p_prn_units=>'MILLIMETERS'
,p_prn_paper_size=>'A4'
,p_prn_width=>297
,p_prn_height=>210
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>unistr('\67E5\770B\70B9\68C0\8868\5355')
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
 p_id=>wwv_flow_imp.id(2471617258165900390)
,p_name=>'CLASSIFY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CLASSIFY_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>unistr('\8868\5355\7C7B\522B')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>100
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_is_required=>false
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>'select NAME,CLASSIFY_ID from CHECK_CLASSIFY where DEL_FLAG=0 and TENANT_ID = :USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'
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
 p_id=>wwv_flow_imp.id(2747339499930249954)
,p_name=>'RN'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RN'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>unistr('\5E8F\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
 p_id=>wwv_flow_imp.id(2748828390335880340)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(2748828431967880341)
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
 p_id=>wwv_flow_imp.id(2748829604725880352)
,p_name=>'OPERATION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'OPERATION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HTML_EXPRESSION'
,p_heading=>unistr('\64CD\4F5C')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'html_expression', wwv_flow_string.join(wwv_flow_t_varchar2(
    unistr('<!-- <span onclick="del_form(&FORM_ID.)" style=''color:#009AFE;font-size: 14px;''>\5220\9664</span> -->'),
    '',
    '<span>',
    '	',
    '	<a href="#" onclick="del_form(&FORM_ID.)" style="text-dcoration:none;color:#00688c">',
    unistr('		\5220\9664'),
    '	</a>',
    '</span>',
    '')))).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(3027805644166806753)
,p_name=>'FORM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_ID'
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
 p_id=>wwv_flow_imp.id(3027805649923806754)
,p_name=>'FORM_SERIAL_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FORM_SERIAL_NO'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8868\5355\7F16\53F7')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
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
 p_id=>wwv_flow_imp.id(3027805776780806755)
,p_name=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('\8868\5355\540D\79F0')
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>256
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
 p_id=>wwv_flow_imp.id(3027805880586806756)
,p_name=>'PLAN_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PLAN_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
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
 p_id=>wwv_flow_imp.id(3027806012154806757)
,p_name=>'SORT_NUM'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SORT_NUM'
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
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(3027805543547806752)
,p_internal_uid=>844480940793722798
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
 p_id=>wwv_flow_imp.id(3027812925642812252)
,p_interactive_grid_id=>wwv_flow_imp.id(3027805543547806752)
,p_static_id=>'2802952'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_rows_per_page=>5
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(3027813121289812252)
,p_report_id=>wwv_flow_imp.id(3027812925642812252)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2474391493819282969)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(2471617258165900390)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2748133356470308029)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(2747339499930249954)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2750116766979867438)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(2748828390335880340)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(2750127130863053609)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(2748829604725880352)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3027813579661812256)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(3027805644166806753)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3027814399895812262)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(3027805649923806754)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3027815252974812266)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(3027805776780806755)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3027816195602812269)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(3027805880586806756)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(3027817069182812272)
,p_view_id=>wwv_flow_imp.id(3027813121289812252)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(3027806012154806757)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2743547850093086029)
,p_plug_name=>unistr('\70B9\68C0\8BA1\5212')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2743550853713086059)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_column=>4
,p_plug_display_point=>'REGION_POSITION_05'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467070290692815844)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2743550853713086059)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:256:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467070611226815845)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2743550853713086059)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467071025269815845)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2743550853713086059)
,p_button_name=>unistr('\4E0B\4E00\6B65')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--stretch'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\4E0B\4E00\6B65')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467062009993815837)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3027797454739804932)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2467062485423815837)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3027797454739804932)
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
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2467089758494815855)
,p_branch_name=>unistr('\8F6C\5230\9875 258-\65B0\589E')
,p_branch_action=>'f?p=&APP_ID.:258:&SESSION.::&DEBUG.:258:P258_PLAN_ID:&P257_PLAN_ID.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(2467062009993815837)
,p_branch_sequence=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467050041216815828)
,p_name=>'P257_PLAN_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_item_source_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_source=>'PLAN_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467050493560815828)
,p_name=>'P257_PLAN_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_item_source_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_prompt=>unistr('\8BA1\5212\540D\79F0\FF1A')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>'PLAN_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467050862773815828)
,p_name=>'P257_PLAN_SERIAL_NO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_item_source_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_prompt=>unistr('\8BA1\5212\7F16\53F7\FF1A')
,p_placeholder=>unistr('\7F16\53F7\4E0D\586B\5199\9ED8\8BA4\81EA\52A8\751F\6210')
,p_source=>'PLAN_SERIAL_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467051292108815828)
,p_name=>'P257_PLAN_STATUS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_item_source_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_item_default=>'1'
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>4
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', unistr('\5173\95ED'),
  'off_value', '0',
  'on_label', unistr('\542F\7528'),
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467051675489815829)
,p_name=>'P257_MESSAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467052089502815829)
,p_name=>'P257_ROW_COUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467052495770815829)
,p_name=>'P257_IS_SHOW'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467052883915815829)
,p_name=>'P257_REQ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467053252079815830)
,p_name=>'P257_RESP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467053647579815830)
,p_name=>'P257_FREQ_TYPE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467054030167815830)
,p_name=>'P257_HOUR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467054463705815830)
,p_name=>'P257_INTERVAL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2743547679923086027)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467057097312815833)
,p_name=>'P257_FORM_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2743547749233086028)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467063533828815838)
,p_name=>'P257_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select START_DATE from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('* \751F\6548\65E5\671F\FF1A')
,p_placeholder=>unistr('\9009\62E9\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>3
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467063979073815839)
,p_name=>'P257_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select END_DATE from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\7ED3\675F\65E5\671F')
,p_placeholder=>unistr('\9009\62E9\7ED3\675F\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P257_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467064371587815839)
,p_name=>'P257_FREQ_HRS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FREQ from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr(' \6267\884C\5468\671F\FF1A')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\65F6;HOURLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467064764977815840)
,p_name=>'P257_PLAN_HRS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select nvl(any_value(INTERVAL),1) from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5C0F\65F6')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\5C0F\65F6\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467065102876815840)
,p_name=>'P257_FREQ_DAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FREQ from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\65E5')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\65E5;DAILY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467065561521815840)
,p_name=>'P257_PLAN_DAY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select nvl(any_value(INTERVAL),1) from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5929')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\5929\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467065963302815840)
,p_name=>'P257_FREQ_WEEK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FREQ from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\5468')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\5468;WEEKLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467066364279815840)
,p_name=>'P257_PLAN_WEEK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'-- listagg(key,'':'') key_s,',
'listagg(val,'':'') val_s',
'from (',
unistr('         select ''\5468\4E00'' key, ''MON'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\4E8C'' key, ''TUE'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\4E09'' key, ''WED'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\56DB'' key, ''THU'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\4E94'' key, ''FRI'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\516D'' key, ''SAT'' val'),
'         from dual',
'         union all',
unistr('         select ''\5468\5929'' key, ''SUN'' val'),
'         from dual)',
'where val in (',
'',
'    select *',
'    from JA_UTILS_PKG.SPLIT_STR(',
'            (select nvl(any_value(DAY_WEEK), '''') from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0),',
'            '':'')',
');'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5468')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:\5468\4E00;MON,\5468\4E8C;TUE,\5468\4E09;WED,\5468\56DB;THU,\5468\4E94;FRI,\5468\516D;SAT,\5468\65E5;SUN')
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2467066750413815841)
,p_name=>'P257_FREQ_MON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FREQ from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\6708')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\6708;MONTHLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467067186260815842)
,p_name=>'P257_PLAN_MON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'-- listagg(key, '':'') key_s, ',
'listagg(val, '':'') val_s',
'from (',
unistr('         select rownum || ''\53F7'' key, rownum val'),
'         from dual',
'         connect by rownum < 32)',
'where val in (',
'    select *',
'    from JA_UTILS_PKG.SPLIT_STR(',
'            (select nvl(any_value(DAY_MONTH), '''') from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0),',
'            '':'')',
');'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6708')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select  rownum||''\53F7'' key,rownum val'),
'from dual',
'connect by rownum < 32;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(2467067529129815842)
,p_name=>'P257_FREQ_SHIFT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FREQ from CHECK_FORM_PLAN where PLAN_ID=:P257_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\73ED')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\73ED;SHIFT')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467067951742815842)
,p_name=>'P257_DAY_SHIFT_START'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FIRST_START_TIME from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\767D\73ED\5F00\59CB\65F6\95F4')
,p_pre_element_text=>unistr('\767D\73ED&nbsp&nbsp\5F00\59CB\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467068333270815843)
,p_name=>'P257_DAY_SHIFT_END'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select FIRST_END_TIME from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\767D\73ED\7ED3\675F\65F6\95F4')
,p_pre_element_text=>unistr('\767D\73ED&nbsp&nbsp\7ED3\675F\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467068705630815843)
,p_name=>'P257_NIGHT_SHIFT_START'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select SECOND_START_TIME from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\591C\73ED\5F00\59CB\65F6\95F4')
,p_pre_element_text=>unistr('\591C\73ED&nbsp&nbsp\5F00\59CB\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>2
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467069185404815844)
,p_name=>'P257_NIGHT_SHIFT_END'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_item_default=>'select SECOND_END_TIME from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\591C\73ED\7ED3\675F\65F6\95F4')
,p_pre_element_text=>unistr('\591C\73ED&nbsp&nbsp\7ED3\675F\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>2
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2359868130104135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2467069591125815844)
,p_name=>'P257_PREVIOUS_SHIFT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2743547850093086029)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467078050053815848)
,p_name=>unistr('\9A8C\8BC1')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2467070611226815845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467080528631815850)
,p_event_id=>wwv_flow_imp.id(2467078050053815848)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\9A8C\8BC1')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P257_PLAN_NAME''))) {',
unistr('    alert("\8BA1\5212\540D\79F0\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P257_PLAN_NAME'').focus();',
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P257_START_DATE''))) {',
unistr('    alert("\5F00\59CB\65E5\671F\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P257_START_DATE'').focus();',
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P257_END_DATE''))) {',
unistr('    alert("\7ED3\675F\65E5\671F\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P257_END_DATE'').focus();',
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P257_FREQ_HRS'')) && utils.checkNull($v(''P257_FREQ_DAY'')) && utils.checkNull($v(''P257_FREQ_WEEK'')) && utils.checkNull($v(''P257_FREQ_MON'')) && utils.checkNull($v(''P257_FREQ_SHIFT''))) {',
unistr('    alert("\8BF7\9009\62E9\6267\884C\5468\671F\FF01");'),
'    return false;',
'}',
'',
'',
'if (!utils.checkNull($v(''P257_FREQ_HRS'')) && utils.checkNull($v(''P257_PLAN_HRS''))) {',
unistr('    alert("\8BF7\8F93\5165\5C0F\65F6\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P257_FREQ_DAY'')) && utils.checkNull($v(''P257_PLAN_DAY''))) {',
unistr('    alert("\8BF7\8F93\5165\5929\6570\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P257_FREQ_WEEK'')) && utils.checkNull($v(''P257_PLAN_WEEK''))) {',
unistr('    alert("\8BF7\8F93\5165\6BCF\5468\671F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P257_FREQ_MON'')) && utils.checkNull($v(''P257_PLAN_MON''))) {',
unistr('    alert("\8BF7\8F93\5165\6BCF\6708\51E0\53F7\FF01");'),
'    return false;',
'}',
'',
'',
'if (!utils.checkNull($v(''P257_FREQ_SHIFT'')) && (',
'    utils.checkNull($v(''P257_DAY_SHIFT_START''))',
'    && utils.checkNull($v(''P257_DAY_SHIFT_END''))',
'    && utils.checkNull($v(''P257_NIGHT_SHIFT_START''))',
'    && utils.checkNull($v(''P257_NIGHT_SHIFT_END''))',
')) {',
unistr('    alert("\8BF7\6700\5C11\8F93\5165\4E00\4E2A\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'    return false;',
'} else {',
'    var day_shift_start = get_milliseconds($v(''P257_DAY_SHIFT_START''));',
'    var day_shift_end = get_milliseconds($v(''P257_DAY_SHIFT_END''));',
'    var night_shift_start = get_milliseconds($v(''P257_NIGHT_SHIFT_START''));',
'    var night_shift_end = get_milliseconds($v(''P257_NIGHT_SHIFT_END''));',
'    if ((!utils.checkNull($v(''P257_DAY_SHIFT_START'')) && utils.checkNull($v(''P257_DAY_SHIFT_END''))) ||',
'        (utils.checkNull($v(''P257_DAY_SHIFT_START'')) && !utils.checkNull($v(''P257_DAY_SHIFT_END'')))',
'    ) {',
unistr('        alert("\8BF7\8F93\5165\767D\73ED\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'        return false;',
'    }',
'',
'    if ((!utils.checkNull($v(''P257_NIGHT_SHIFT_START'')) && utils.checkNull($v(''P257_NIGHT_SHIFT_END''))) ||',
'        (utils.checkNull($v(''P257_NIGHT_SHIFT_START'')) && !utils.checkNull($v(''P257_NIGHT_SHIFT_END'')))',
'    ) {',
unistr('        alert("\8BF7\8F93\5165\591C\73ED\73ED\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'        return false;',
'    }',
'    if (!utils.checkNull($v(''P257_DAY_SHIFT_END'')) &&',
'        !utils.checkNull($v(''P257_NIGHT_SHIFT_START'')) &&',
'        night_shift_start <= day_shift_end) {',
unistr('        alert("\591C\73ED\5F00\59CB\65F6\95F4\5C0F\4E8E\767D\73ED\7ED3\675F\65F6\95F4\FF01");'),
'        return false;',
'    }',
'    if (!utils.checkNull($v(''P257_DAY_SHIFT_START'')) &&',
'        !utils.checkNull($v(''P257_NIGHT_SHIFT_END'')) &&',
'        night_shift_end >= day_shift_start) {',
unistr('        alert("\591C\73ED\7ED3\675F\65F6\95F4\5927\4E8E\767D\73ED\5F00\59CB\65F6\95F4\FF01");'),
'        return false;',
'    }',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467079526455815849)
,p_event_id=>wwv_flow_imp.id(2467078050053815848)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9A8C\8BC1\53C2\6570\662F\5426\91CD\590D')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_plan_serial_no nvarchar2(32);',
'    v_previous_shift nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P257_PLAN_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_plan_serial_no from dual;',
'    else',
'        v_plan_serial_no := :P257_PLAN_SERIAL_NO;',
'    end if;',
'    if :P257_PLAN_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_PLAN',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and PLAN_NAME = :P257_PLAN_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM_PLAN',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and PLAN_SERIAL_NO = :P257_PLAN_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_PLAN',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and PLAN_NAME = :P257_PLAN_NAME',
'          and DEL_FLAG = 0',
'          and PLAN_ID != :P257_PLAN_ID;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM_PLAN',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and PLAN_SERIAL_NO = :P257_PLAN_SERIAL_NO',
'              and DEL_FLAG = 0',
'              and PLAN_ID != :P257_PLAN_ID;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\540D\79F0\91CD\590D'');'),
'        end if;',
'        select PREVIOUS_SHIFT into v_previous_shift from CHECK_FORM_PLAN where PLAN_ID = :P257_PLAN_ID;',
'    end if;',
'    apex_util.set_session_state(''P257_PREVIOUS_SHIFT'', v_previous_shift);',
'    apex_util.set_session_state(''P257_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P257_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P257_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;',
''))
,p_attribute_02=>'P257_PLAN_NAME,P257_PLAN_ID,P257_PLAN_SERIAL_NO'
,p_attribute_03=>'P257_MESSAGE,P257_ROW_COUNT,P257_PREVIOUS_SHIFT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467080098667815850)
,p_event_id=>wwv_flow_imp.id(2467078050053815848)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9A8C\8BC1\7ED3\679C\3001\7EC4\88C5\8BF7\6C42\53C2\6570')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_ROW_COUNT'') > 0) {',
'',
'    var dayMonth, dayWeek, endDate, hour, interval, startDate, freq_type;',
'    if (!utils.checkNull($v(''P257_FREQ_HRS''))) {',
'        $s(''P257_PLAN_DAY'', '''');',
'        $s(''P257_PLAN_WEEK'', '''');',
'        $s(''P257_PLAN_MON'', '''');',
'        $s(''P257_DAY_SHIFT_START'', '''');',
'        $s(''P257_DAY_SHIFT_END'', '''');',
'        $s(''P257_NIGHT_SHIFT_START'', '''');',
'        $s(''P257_NIGHT_SHIFT_END'', '''');',
'        freq_type = $v(''P257_FREQ_HRS'');',
'        interval = $v(''P257_PLAN_HRS'');',
'    }',
'    if (!utils.checkNull($v(''P257_FREQ_DAY''))) {',
'        $s(''P257_PLAN_HRS'', '''');',
'        $s(''P257_PLAN_WEEK'', '''');',
'        $s(''P257_PLAN_MON'', '''');',
'        $s(''P257_DAY_SHIFT_START'', '''');',
'        $s(''P257_DAY_SHIFT_END'', '''');',
'        $s(''P257_NIGHT_SHIFT_START'', '''');',
'        $s(''P257_NIGHT_SHIFT_END'', '''');',
'        freq_type = $v(''P257_FREQ_DAY'');',
'        interval = $v(''P257_PLAN_DAY'');',
'    }',
'    if (!utils.checkNull($v(''P257_FREQ_WEEK''))) {',
'        $s(''P257_PLAN_HRS'', '''');',
'        $s(''P257_FREQ_DAY'', '''');',
'        $s(''P257_PLAN_MON'', '''');',
'        $s(''P257_DAY_SHIFT_START'', '''');',
'        $s(''P257_DAY_SHIFT_END'', '''');',
'        $s(''P257_NIGHT_SHIFT_START'', '''');',
'        $s(''P257_NIGHT_SHIFT_END'', '''');',
'        freq_type = $v(''P257_FREQ_WEEK'');',
'    }',
'    if (!utils.checkNull($v(''P257_FREQ_MON''))) {',
'        $s(''P257_PLAN_HRS'', '''');',
'        $s(''P257_FREQ_DAY'', '''');',
'        $s(''P257_PLAN_WEEK'', '''');',
'        $s(''P257_DAY_SHIFT_START'', '''');',
'        $s(''P257_DAY_SHIFT_END'', '''');',
'        $s(''P257_NIGHT_SHIFT_START'', '''');',
'        $s(''P257_NIGHT_SHIFT_END'', '''');',
'        freq_type = $v(''P257_FREQ_MON'');',
'    }',
'    if (!utils.checkNull($v(''P257_FREQ_SHIFT''))) {',
'        $s(''P257_PLAN_HRS'', '''');',
'        $s(''P257_PLAN_DAY'', '''');',
'        $s(''P257_PLAN_WEEK'', '''');',
'        $s(''P257_PLAN_MON'', '''');',
'        freq_type = $v(''P257_FREQ_SHIFT'');',
'        hour = (!$v(''P257_DAY_SHIFT_START'') ? $v(''P257_DAY_SHIFT_START'') + '','' : '''') + $v(''P257_NIGHT_SHIFT_START'');',
'    }',
'    dayWeek = $v(''P257_PLAN_WEEK'');',
'    dayMonth = $v(''P257_PLAN_MON'');',
'    startDate = $v(''P257_START_DATE'');',
'    endDate = $v(''P257_END_DATE'');',
'',
'    $s(''P257_FREQ_TYPE'', freq_type);',
'    $s(''P257_HOUR'', hour);',
'    $s(''P257_INTERVAL'', interval);',
'',
'    var req = {',
'        interval: interval,',
'        dayStartTime: !$v(''P257_DAY_SHIFT_START'') ? null : $v(''P257_DAY_SHIFT_START''),',
'        nightStartTime: !$v(''P257_NIGHT_SHIFT_START'') ? null : $v(''P257_NIGHT_SHIFT_START''),',
'        previousShift: !$v(''P257_PREVIOUS_SHIFT'') ? null : $v(''P257_PREVIOUS_SHIFT''),',
'        dayWeek: !dayWeek ? null : dayWeek,',
'        dayMonth: !dayMonth ? null : dayMonth,',
'        freq: freq_type,',
'        startDate: new Date(startDate).getTime(),',
'        endDate: new Date(endDate).getTime(),',
'    };',
'    $s(''P257_REQ'', JSON.stringify(req));',
'    console.log(''req,'', req);',
'    return true;',
'} else {',
'    alert($v(''P257_MESSAGE''));',
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467079094045815849)
,p_event_id=>wwv_flow_imp.id(2467078050053815848)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_plan_serial_no nvarchar2(32);',
'    v_cron           nvarchar2(32);',
'    v_next_execute   nvarchar2(32);',
'    v_previousShift  nvarchar2(32);',
'    v_domain            nvarchar2(256);',
'    -- v_url            nvarchar2(256) := :MPF_API_URL || ''dianjian/apex/cron/generate'';',
'    v_url            nvarchar2(256) := ''dianjian/apex/cron/generate'';',
'    v_resp           clob;',
'    v_plan_id        number(20);',
'    row_count        number(20)     := 0;',
'begin',
'    select decode(regexp_count(:MPF_API_URL, ''com/''), 0, :MPF_API_URL || ''/'', :MPF_API_URL) into v_domain',
'    from dual;',
'    v_resp := JA_HTTP_REQUEST(v_domain||v_url, ''POST'', :P257_REQ, :APPKEY, :APPSECRET, :USER_ID);',
'    if json_value(v_resp, ''$.code'') = 200 then',
'        v_cron := json_value(v_resp, ''$.data.cronStr'');',
'        v_next_execute := json_value(v_resp, ''$.data.nextExecute'');',
'        v_previousShift := json_value(v_resp, ''$.data.previousShift'');',
'    else',
'        apex_util.set_session_state(''P257_ROW_COUNT'', -1);',
'        return;',
'    end if;',
'    if :P257_PLAN_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_plan_serial_no from dual;',
'    else',
'        v_plan_serial_no := :P257_PLAN_SERIAL_NO;',
'    end if;',
'    if :P257_PLAN_ID is null then',
'        insert into CHECK_FORM_PLAN(created_by, updated_by, tenant_id,BASE_DEPT_ID, plan_serial_no, start_date, end_date, interval,',
'                                    freq, day_month,',
'                                    day_week, hour, first_start_time, first_end_time, second_start_time,',
'                                    second_end_time, cron,',
'                                    next_execute, PREVIOUS_SHIFT, is_enable, plan_name)',
'        values (:USER_ID, :USER_ID, :USERTENANT,:BASE_DEPT_ID, v_plan_serial_no, to_date(:P257_START_DATE, ''yyyy-mm-dd''),',
'                to_date(:P257_END_DATE, ''yyyy-mm-dd''), :P257_INTERVAL, :P257_FREQ_TYPE, :P257_PLAN_MON,',
'                :P257_PLAN_WEEK, :P257_HOUR, :P257_DAY_SHIFT_START, :P257_DAY_SHIFT_END, :P257_NIGHT_SHIFT_START,',
'                :P257_NIGHT_SHIFT_END, v_cron,',
'                to_date(v_next_execute, ''yyyy-mm-dd hh24:mi:ss''), v_previousShift, :P257_PLAN_STATUS, :P257_PLAN_NAME)',
'        returning PLAN_ID into v_plan_id;',
'        row_count := SQL%ROWCOUNT;',
'        apex_util.set_session_state(''P257_PLAN_ID'', v_plan_id);',
'    else',
'        update CHECK_FORM_PLAN',
'        set UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate,',
'            PLAN_SERIAL_NO=v_plan_serial_no,',
'            START_DATE=to_date(:P257_START_DATE, ''yyyy-mm-dd''),',
'            END_DATE=to_date(:P257_END_DATE, ''yyyy-mm-dd''),',
'            INTERVAL=:P257_INTERVAL,',
'            FREQ=:P257_FREQ_TYPE,',
'            DAY_MONTH=:P257_PLAN_MON,',
'            DAY_WEEK=:P257_PLAN_WEEK,',
'            HOUR=:P257_HOUR,',
'            FIRST_START_TIME=:P257_DAY_SHIFT_START,',
'            FIRST_END_TIME=:P257_DAY_SHIFT_END,',
'            SECOND_START_TIME=:P257_NIGHT_SHIFT_START,',
'            SECOND_END_TIME=:P257_NIGHT_SHIFT_END,',
'            CRON=v_cron,',
'            NEXT_EXECUTE=to_date(v_next_execute, ''yyyy-mm-dd hh24:mi:ss''),',
'            PREVIOUS_SHIFT=v_previousShift,',
'            IS_ENABLE=:P257_PLAN_STATUS,',
'            PLAN_NAME=:P257_PLAN_NAME',
'        where PLAN_ID = :P257_PLAN_ID;',
'        row_count := SQL%ROWCOUNT;',
'        v_plan_id := :P257_PLAN_ID;',
'    end if;',
'',
'    apex_util.set_session_state(''P257_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P257_PLAN_ID'', v_plan_id);',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P257_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                   :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P257_START_DATE,P257_END_DATE,P257_PLAN_HRS,P257_PLAN_ID,P257_PLAN_NAME,P257_PLAN_SERIAL_NO,P257_PLAN_DAY,P257_PLAN_STATUS,P257_PLAN_WEEK,P257_REQ,P257_RESP,P257_PLAN_MON,P257_FREQ_TYPE,P257_INTERVAL,P257_DAY_SHIFT_START,P257_DAY_SHIFT_END,P257_NIGHT'
||'_SHIFT_START,P257_NIGHT_SHIFT_END'
,p_attribute_03=>'P257_PLAN_ID,P257_MESSAGE,P257_IS_SHOW,P257_ROW_COUNT,P257_HOUR,P257_INTERVAL,P257_DAY_SHIFT_START'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467078561445815849)
,p_event_id=>wwv_flow_imp.id(2467078050053815848)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_ROW_COUNT'') > 0) {',
unistr('    // alert(''\64CD\4F5C\6210\529F'');'),
'    window.location.href = "f?p=&APP_ID.:256:&APP_SESSION.:::::";',
'    return true;',
'} else if ($v(''P257_ROW_COUNT'') == -1) {',
unistr('    alert(''\63A5\53E3\8C03\7528\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467080956482815850)
,p_name=>unistr('\53EA\80FD\4E3A\5B57\6BCD\6570\5B57')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P257_PLAN_SERIAL_NO'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467081403939815851)
,p_event_id=>wwv_flow_imp.id(2467080956482815850)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!/^[a-zA-Z0-9]*$/.test($v(''P257_PLAN_NO''))) {',
unistr('    alert("\53EA\652F\6301\8F93\516520\4F4D\82F1\6587\548C\6570\5B57\7684\5185\5BB9\FF0C\8BF7\91CD\65B0\8F93\5165");'),
unistr('    $s(''P257_PLAN_NO'', ''''); // \6E05\7A7A\8F93\5165\6846\7684\5185\5BB9'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467072940156815846)
,p_name=>unistr('\9A8C\8BC1\5C0F\65F6')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P257_PLAN_HRS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467073426106815846)
,p_event_id=>wwv_flow_imp.id(2467072940156815846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_PLAN_HRS'')<1) {',
' $s(''P257_PLAN_HRS'',1)',
'} else if ($v(''P257_PLAN_HRS'')>23) {',
' $s(''P257_PLAN_HRS'',23)',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467073825307815846)
,p_name=>unistr('\9A8C\8BC1\65E5')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P257_PLAN_DAY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467074357472815847)
,p_event_id=>wwv_flow_imp.id(2467073825307815846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_PLAN_DAY'') < 1) {',
'    $s(''P257_PLAN_DAY'', 1)',
'} else if ($v(''P257_PLAN_DAY'') > 31) {',
'    $s(''P257_PLAN_DAY'', 31)',
'} '))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467084247385815852)
,p_name=>unistr('\70B9\51FB\4E0B\4E00\6B65')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2467071025269815845)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467086247423815853)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P257_PLAN_NAME'')) ) {',
unistr('    alert(''\8BF7\8F93\5165\8BA1\5212\540D\79F0'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467087736953815854)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_plan_serial_no nvarchar2(32);',
'    row_count        number(20) := 1;',
'    v_count          number(20) := 0;',
'begin',
'',
'    if :P257_PLAN_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_plan_serial_no from dual;',
'    else',
'        v_plan_serial_no := :P257_PLAN_SERIAL_NO;',
'    end if;',
'    if :P257_PLAN_ID is null then',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_PLAN',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and PLAN_NAME = :P257_PLAN_NAME',
'          and DEL_FLAG = 0;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM_PLAN',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and PLAN_SERIAL_NO = :P257_PLAN_SERIAL_NO',
'              and DEL_FLAG = 0;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\540D\79F0\91CD\590D'');'),
'        end if;',
'    else',
'        select count(1)',
'        into v_count',
'        from CHECK_FORM_PLAN',
'        where TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and PLAN_NAME = :P257_PLAN_NAME',
'          and DEL_FLAG = 0',
'          and PLAN_ID != :P257_PLAN_ID;',
'        if v_count = 0 then',
'            select count(1)',
'            into v_count',
'            from CHECK_FORM_PLAN',
'            where TENANT_ID = :USERTENANT',
'              and BASE_DEPT_ID =:BASE_DEPT_ID',
'              and PLAN_SERIAL_NO = :P257_PLAN_SERIAL_NO',
'              and DEL_FLAG = 0',
'              and PLAN_ID != :P257_PLAN_ID;',
'            if v_count > 0 then',
'                row_count := -1;',
unistr('                apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\7F16\53F7\91CD\590D'');'),
'            end if;',
'        else',
'            row_count := -1;',
unistr('            apex_util.set_session_state(''P257_MESSAGE'', ''\8BA1\5212\540D\79F0\91CD\590D'');'),
'        end if;',
'    end if;',
'',
'    apex_util.set_session_state(''P257_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P257_ROW_COUNT'', 0);',
unistr('        apex_util.set_session_state(''P257_MESSAGE'', ''\6570\636E\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P257_PLAN_NAME,P257_PLAN_SERIAL_NO,P257_PLAN_ID'
,p_attribute_03=>'P257_MESSAGE,P257_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467088219446815854)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
'    alert($v(''P257_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467085239621815853)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_plan_serial_no nvarchar2(32);',
'    v_plan_id        number(20) ;',
'    row_count        number(20) := 0;',
'begin',
'',
'    if :P257_PLAN_SERIAL_NO is null then',
'        select ''JAYW-'' || to_char(sysdate, ''yymmddhh24misssss'') into v_plan_serial_no from dual;',
'    else',
'        v_plan_serial_no := :P257_PLAN_SERIAL_NO;',
'    end if;',
'    -- insert or update',
'    if :P257_PLAN_ID is null then',
'        insert into CHECK_FORM_PLAN(created_by, UPDATED_BY, remark, tenant_id,BASE_DEPT_ID, PLAN_SERIAL_NO, PLAN_NAME,',
'                                    IS_ENABLE)',
'        values (:USER_ID, :USER_ID, null, :USERTENANT,:BASE_DEPT_ID, v_plan_serial_no, :P257_PLAN_NAME, :P257_PLAN_STATUS)',
'        returning PLAN_ID into v_plan_id;',
'        row_count := SQL%ROWCOUNT;',
'    else',
'        update CHECK_FORM_PLAN',
'        set UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate,',
'            PLAN_SERIAL_NO=v_plan_serial_no,',
'            PLAN_NAME=:P257_PLAN_NAME,',
'            IS_ENABLE=:P257_PLAN_STATUS',
'        where PLAN_ID = :P257_PLAN_ID;',
'        row_count := SQL%ROWCOUNT;',
'        v_plan_id := :P257_PLAN_ID;',
'    end if;',
'',
'    apex_util.set_session_state(''P257_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P257_PLAN_ID'', v_plan_id);',
'    apex_util.set_session_state(''P257_IS_SHOW'', v_plan_id);',
'    apex_util.set_session_state(''P257_PLAN_SERIAL_NO'', v_plan_serial_no);',
'',
'',
'exception',
'    when others then',
'        apex_util.set_session_state(''P257_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;',
''))
,p_attribute_02=>'P257_PLAN_ID,P257_PLAN_NAME,P257_PLAN_SERIAL_NO,P257_PLAN_STATUS,P257_IS_SHOW'
,p_attribute_03=>'P257_ROW_COUNT,P257_PLAN_SERIAL_NO,P257_PLAN_ID,P257_IS_SHOW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467087300252815854)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_ROW_COUNT'') == 0) {',
unistr('    alert(''\6570\636E\9519\8BEF'');'),
'    return false;',
'} else {',
'    $(''#check_form_div'').show();',
'    apex.event.trigger(this.triggeringElement, "apexwindowresized");',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467085728555815853)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P257_PLAN_SERIAL_NO'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467084703186815852)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2743547749233086028)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467086790245815853)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2743547850093086029)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467089302123815855)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467070611226815845)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467088724342815854)
,p_event_id=>wwv_flow_imp.id(2467084247385815852)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467071025269815845)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467081871061815851)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467083849511815852)
,p_event_id=>wwv_flow_imp.id(2467081871061815851)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2743547749233086028)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P257_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467082869227815851)
,p_event_id=>wwv_flow_imp.id(2467081871061815851)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2743547850093086029)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P257_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467083321904815852)
,p_event_id=>wwv_flow_imp.id(2467081871061815851)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467070611226815845)
,p_server_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_server_condition_expr1=>'P257_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467082394342815851)
,p_event_id=>wwv_flow_imp.id(2467081871061815851)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2467071025269815845)
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P257_IS_SHOW'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467072045141815846)
,p_name=>unistr('\5237\65B0\533A\57DF')
,p_event_sequence=>70
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosecanceldialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467072600240815846)
,p_event_id=>wwv_flow_imp.id(2467072045141815846)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3027797454739804932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467074782749815847)
,p_name=>unistr('\884C\9009\4E2D')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(3027797454739804932)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467075233257815847)
,p_event_id=>wwv_flow_imp.id(2467074782749815847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var map = new Map();',
'map.set(''P257_FORM_IDS'', ''FORM_ID'');',
'utils.set(this.data, map);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2467075665958815847)
,p_name=>unistr('\5220\9664\8BA1\5212\8868\5355')
,p_event_sequence=>90
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2467062485423815837)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467077650659815848)
,p_event_id=>wwv_flow_imp.id(2467075665958815847)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P257_FORM_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\5220\9664\7684\8868\5355'');'),
'    return false;',
'} else {',
unistr('    if (confirm(''\662F\5426\786E\8BA4\5220\9664?'')) {'),
'        return true;',
'    }',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467076695532815848)
,p_event_id=>wwv_flow_imp.id(2467075665958815847)
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
'    ',
'    update CHECK_FORM set PLAN_ID=null where FORM_ID in (select * from JA_UTILS_PKG.SPLIT_STR(:P257_FORM_IDS, '',''));',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P257_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P257_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P257_FORM_IDS'
,p_attribute_03=>'P257_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467077172519815848)
,p_event_id=>wwv_flow_imp.id(2467075665958815847)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P257_ROW_COUNT'') > 0) {',
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2467076160961815848)
,p_event_id=>wwv_flow_imp.id(2467075665958815847)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3027797454739804932)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2467062830942815837)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3027797454739804932)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>unistr('\67E5\770B\70B9\68C0\8868\5355 - \4FDD\5B58\4EA4\4E92\5F0F\7F51\683C\6570\636E')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283738228188731883
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2467056056624815832)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2743547679923086027)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\8BA1\5212-\65B0\589E')
,p_internal_uid=>283731453870731878
);
wwv_flow_imp.component_end;
end;
/

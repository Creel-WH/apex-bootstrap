prompt --application/pages/page_00273
begin
--   Manifest
--     PAGE: 00273
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
 p_id=>273
,p_name=>unistr('\8BA1\5212\914D\7F6E-\8868\5355')
,p_alias=>unistr('\8BA1\5212\914D\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8BA1\5212\914D\7F6E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P273_DAY_SHIFT_START'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P273_DAY_SHIFT_START'', value);',
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
'        elem: ''#P273_DAY_SHIFT_END'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P273_DAY_SHIFT_END'', value);',
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
'        elem: ''#P273_NIGHT_SHIFT_START'',',
'        type: ''time'',',
'        // min: !$v(''P273_DAY_SHIFT_END'') ? ''00:00:00'' : $v(''P273_DAY_SHIFT_END'') + '':00'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P273_NIGHT_SHIFT_START'', value);',
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
'        elem: ''#P273_NIGHT_SHIFT_END'',',
'        type: ''time'',',
'        // max: !$v(''P273_DAY_SHIFT_START'') ? ''23:59:59'' : $v(''P273_DAY_SHIFT_START'') + '':00'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P273_NIGHT_SHIFT_END'', value);',
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
'$("#P273_PLAN_HRS").attr("type", "number");',
unistr('$("#P273_PLAN_HRS").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('$("#P273_PLAN_HRS").attr("max", 23);        // \8BBE\7F6E\6700\5927\503C'),
'',
unistr('//\6309\65E5'),
'$("#P273_PLAN_DAY").attr("type", "number");',
unistr('$("#P273_PLAN_DAY").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('$("#P273_PLAN_DAY").attr("max", 31);        // \8BBE\7F6E\6700\5927\503C'),
'',
'',
'$(''#P273_PLAN_HRS'').attr(''oninput'',"if(this.value.length==1){this.value=this.value.replace(/[^1-9]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");',
'$(''#P273_PLAN_DAY'').attr(''oninput'',"if(this.value.length==1){this.value=this.value.replace(/[^1-9]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");'))
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
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2714169501889739033)
,p_plug_name=>unistr('\70B9\68C0\8BA1\5212')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2714177883449749114)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'BELOW'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1435344857828291830)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2714177883449749114)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1435345259065291831)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2714177883449749114)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(408250680659216634)
,p_name=>'P273_FREQ_CYCLE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5468\671F')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\5468\671F;CYCLE')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(408250867436216635)
,p_name=>'P273_CYCLE_BEGIN'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select CYCLE_DAY_START from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5468\671F\5F00\59CB\65F6\95F4')
,p_pre_element_text=>unistr('&nbsp&nbsp&nbsp\6BCF\6708&nbsp&nbsp&nbsp')
,p_post_element_text=>unistr('&nbsp&nbsp\5230&nbsp&nbsp')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('SELECT LEVEL||''\53F7'' K,LEVEL V FROM DUAL CONNECT BY LEVEL <= 30;')
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(408250890853216636)
,p_name=>'P273_CYCLE_END'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select CYCLE_DAY_END from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5468\671F\7ED3\675F\65F6\95F4')
,p_pre_element_text=>unistr('&nbsp\6267\884C\8BA1\5212&nbsp')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('SELECT LEVEL||''\53F7'' K,LEVEL V FROM DUAL where level >:P273_CYCLE_BEGIN CONNECT BY LEVEL <= 31;')
,p_lov_cascade_parent_items=>'P273_CYCLE_BEGIN'
,p_ajax_items_to_submit=>'P273_CYCLE_BEGIN'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372080790100506)
,p_name=>'P273_PLAN_ID'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372184428100507)
,p_name=>'P273_ROW_COUNT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372325310100508)
,p_name=>'P273_REQ'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372457466100509)
,p_name=>'P273_INTERVAL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372470225100510)
,p_name=>'P273_HOUR'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372595399100511)
,p_name=>'P273_INTERVAL_CYCLE_TEXT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372692441100512)
,p_name=>'P273_FREQ_TYPE'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427372931170100514)
,p_name=>'P273_OBJECT_DEVICE_ASSO_ID'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427373244975100517)
,p_name=>'P273_APPLY_ALL'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_use_cache_before_default=>'NO'
,p_item_default=>'select APPLY_ALL from CHECK_OBJECT where OBJECT_ID = :P273_OBJECT_ID ;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5C06\6B64\8BA1\5212\5E94\7528\81F3\5168\90E8\8BBE\5907')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1427373385428100519)
,p_name=>'P273_OBJECT_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437685548083468848)
,p_name=>'P273_START_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select START_DATE from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('* \751F\6548\65E5\671F\FF1A')
,p_placeholder=>unistr('\9009\62E9\5F00\59CB\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_colspan=>7
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
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
 p_id=>wwv_flow_imp.id(2437685993328468849)
,p_name=>'P273_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select END_DATE from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\7ED3\675F\65E5\671F')
,p_placeholder=>unistr('\9009\62E9\7ED3\675F\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P273_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437686385842468849)
,p_name=>'P273_FREQ_HRS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr(' \6267\884C\5468\671F\FF1A')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\65F6;HOURLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437686779232468850)
,p_name=>'P273_PLAN_HRS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select nvl(any_value(INTERVAL),1) from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5C0F\65F6')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\5C0F\65F6\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437687117131468850)
,p_name=>'P273_FREQ_DAY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\65E5')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\65E5;DAILY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437687575776468850)
,p_name=>'P273_PLAN_DAY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select nvl(any_value(INTERVAL),1) from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5929')
,p_pre_element_text=>unistr('\6BCF&nbsp')
,p_post_element_text=>unistr('&nbsp\5929\6267\884C\70B9\68C0\8BA1\5212')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437687977557468850)
,p_name=>'P273_FREQ_WEEK'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\5468')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\5468;WEEKLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437688378534468850)
,p_name=>'P273_PLAN_WEEK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
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
'            (select nvl(any_value(DAY_WEEK), '''') from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0),',
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
,p_colspan=>8
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
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
 p_id=>wwv_flow_imp.id(2437688764668468851)
,p_name=>'P273_FREQ_MON'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\6708')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\6708;MONTHLY')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437689200515468852)
,p_name=>'P273_PLAN_MON'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
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
'            (select nvl(any_value(DAY_MONTH), '''') from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0),',
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
,p_lov_cascade_parent_items=>'P273_HOUR'
,p_ajax_items_to_submit=>'P273_HOUR'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>8
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
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
 p_id=>wwv_flow_imp.id(2437689543384468852)
,p_name=>'P273_FREQ_SHIFT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FREQ from CHECK_PLAN where PLAN_ID=:P273_PLAN_ID and DEL_FLAG=0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6309\73ED')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\6309\73ED;SHIFT')
,p_colspan=>2
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437689965997468852)
,p_name=>'P273_DAY_SHIFT_START'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FIRST_START_TIME from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\767D\73ED\5F00\59CB\65F6\95F4')
,p_pre_element_text=>unistr('\767D\73ED&nbsp&nbsp\5F00\59CB\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437690347525468853)
,p_name=>'P273_DAY_SHIFT_END'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select FIRST_END_TIME from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\767D\73ED\7ED3\675F\65F6\95F4')
,p_pre_element_text=>unistr('\767D\73ED&nbsp&nbsp\7ED3\675F\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437690719885468853)
,p_name=>'P273_NIGHT_SHIFT_START'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select SECOND_START_TIME from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\591C\73ED\5F00\59CB\65F6\95F4')
,p_pre_element_text=>unistr('\591C\73ED&nbsp&nbsp\5F00\59CB\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_colspan=>4
,p_grid_column=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437691199659468854)
,p_name=>'P273_NIGHT_SHIFT_END'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_item_default=>'select SECOND_END_TIME from CHECK_PLAN where PLAN_ID = :P273_PLAN_ID and DEL_FLAG = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\591C\73ED\7ED3\675F\65F6\95F4')
,p_pre_element_text=>unistr('\591C\73ED&nbsp&nbsp\7ED3\675F\65F6\95F4&nbsp')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly="readonly"'
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106667920836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2437691605380468854)
,p_name=>'P273_PREVIOUS_SHIFT'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(2714169501889739033)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(1427373025934100515)
,p_computation_sequence=>10
,p_computation_item=>'P273_PLAN_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select PLAN_ID from CHECK_OBJECT_DEVICE_ASSO where OBJECT_DEVICE_ASSO_ID=:P273_OBJECT_DEVICE_ASSO_ID;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1435347104862300175)
,p_name=>unistr('\9A8C\8BC1')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1435345259065291831)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1435347550680300177)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\9A8C\8BC1')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P273_START_DATE''))) {',
unistr('    alert("\5F00\59CB\65E5\671F\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P273_START_DATE'').focus();',
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P273_END_DATE''))) {',
unistr('    alert("\7ED3\675F\65E5\671F\4E0D\80FD\4E3A\7A7A\FF01");'),
'    $(''#P273_END_DATE'').focus();',
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P273_FREQ_HRS'')) && utils.checkNull($v(''P273_FREQ_DAY'')) && utils.checkNull($v(''P273_FREQ_WEEK'')) && utils.checkNull($v(''P273_FREQ_MON'')) && utils.checkNull($v(''P273_FREQ_SHIFT'')) && utils.checkNull($v(''P273_FREQ_CYCLE''))) {',
unistr('    alert("\8BF7\9009\62E9\6267\884C\5468\671F\FF01");'),
'    return false;',
'}',
'',
'',
'if (!utils.checkNull($v(''P273_FREQ_HRS'')) && utils.checkNull($v(''P273_PLAN_HRS''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_DAY'')) && utils.checkNull($v(''P273_PLAN_DAY''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_WEEK'')) && utils.checkNull($v(''P273_PLAN_WEEK''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_MON'')) && utils.checkNull($v(''P273_PLAN_MON''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_SHIFT'')) && (',
'    utils.checkNull($v(''P273_DAY_SHIFT_START''))',
'    && utils.checkNull($v(''P273_DAY_SHIFT_END''))',
'    && utils.checkNull($v(''P273_NIGHT_SHIFT_START''))',
'    && utils.checkNull($v(''P273_NIGHT_SHIFT_END''))',
')) {',
unistr('    alert("\8BF7\6700\5C11\8F93\5165\4E00\4E2A\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'    return false;',
'} else {',
'    var day_shift_start = get_milliseconds($v(''P273_DAY_SHIFT_START''));',
'    var day_shift_end = get_milliseconds($v(''P273_DAY_SHIFT_END''));',
'    var night_shift_start = get_milliseconds($v(''P273_NIGHT_SHIFT_START''));',
'    var night_shift_end = get_milliseconds($v(''P273_NIGHT_SHIFT_END''));',
'    if ((!utils.checkNull($v(''P273_DAY_SHIFT_START'')) && utils.checkNull($v(''P273_DAY_SHIFT_END''))) ||',
'        (utils.checkNull($v(''P273_DAY_SHIFT_START'')) && !utils.checkNull($v(''P273_DAY_SHIFT_END'')))',
'    ) {',
unistr('        alert("\8BF7\8F93\5165\767D\73ED\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'        return false;',
'    }',
'',
'    if ((!utils.checkNull($v(''P273_NIGHT_SHIFT_START'')) && utils.checkNull($v(''P273_NIGHT_SHIFT_END''))) ||',
'        (utils.checkNull($v(''P273_NIGHT_SHIFT_START'')) && !utils.checkNull($v(''P273_NIGHT_SHIFT_END'')))',
'    ) {',
unistr('        alert("\8BF7\8F93\5165\591C\73ED\73ED\5B8C\6574\7684\73ED\6B21\65F6\95F4\FF01");'),
'        return false;',
'    }',
'    if (!utils.checkNull($v(''P273_DAY_SHIFT_END'')) &&',
'        !utils.checkNull($v(''P273_NIGHT_SHIFT_START'')) &&',
'        night_shift_start <= day_shift_end) {',
unistr('        alert("\591C\73ED\5F00\59CB\65F6\95F4\5C0F\4E8E\767D\73ED\7ED3\675F\65F6\95F4\FF01");'),
'        return false;',
'    }',
'    if (!utils.checkNull($v(''P273_DAY_SHIFT_START'')) &&',
'        !utils.checkNull($v(''P273_NIGHT_SHIFT_END'')) &&',
'        night_shift_end >= day_shift_start) {',
unistr('        alert("\591C\73ED\7ED3\675F\65F6\95F4\5927\4E8E\767D\73ED\5F00\59CB\65F6\95F4\FF01");'),
'        return false;',
'    }',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_CYCLE'')) && utils.checkNull($v(''P273_CYCLE_BEGIN''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_CYCLE'')) && utils.checkNull($v(''P273_CYCLE_END''))) {',
unistr('    alert("\8BF7\586B\5199\5B8C\6574\4FE1\606F\FF01");'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1435348517884300179)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9A8C\8BC1\7ED3\679C\3001\7EC4\88C5\8BF7\6C42\53C2\6570')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var dayMonth, dayWeek, endDate, hour, interval, startDate, freq_type , cycleDayStart , cycleDayEnd;',
'if (!utils.checkNull($v(''P273_FREQ_HRS''))) {',
'    $s(''P273_PLAN_DAY'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'    $s(''P273_PLAN_MON'', '''');',
'    $s(''P273_DAY_SHIFT_START'', '''');',
'    $s(''P273_DAY_SHIFT_END'', '''');',
'    $s(''P273_NIGHT_SHIFT_START'', '''');',
'    $s(''P273_NIGHT_SHIFT_END'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_HRS'');',
'    interval = $v(''P273_PLAN_HRS'');',
'}',
'if (!utils.checkNull($v(''P273_FREQ_DAY''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'    $s(''P273_PLAN_MON'', '''');',
'    $s(''P273_DAY_SHIFT_START'', '''');',
'    $s(''P273_DAY_SHIFT_END'', '''');',
'    $s(''P273_NIGHT_SHIFT_START'', '''');',
'    $s(''P273_NIGHT_SHIFT_END'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_DAY'');',
'    interval = $v(''P273_PLAN_DAY'');',
'}',
'if (!utils.checkNull($v(''P273_FREQ_WEEK''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_FREQ_DAY'', '''');',
'    $s(''P273_PLAN_MON'', '''');',
'    $s(''P273_DAY_SHIFT_START'', '''');',
'    $s(''P273_DAY_SHIFT_END'', '''');',
'    $s(''P273_NIGHT_SHIFT_START'', '''');',
'    $s(''P273_NIGHT_SHIFT_END'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_WEEK'');',
'}',
'if (!utils.checkNull($v(''P273_FREQ_MON''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_FREQ_DAY'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'    $s(''P273_DAY_SHIFT_START'', '''');',
'    $s(''P273_DAY_SHIFT_END'', '''');',
'    $s(''P273_NIGHT_SHIFT_START'', '''');',
'    $s(''P273_NIGHT_SHIFT_END'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_MON'');',
'}',
'if (!utils.checkNull($v(''P273_FREQ_SHIFT''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_PLAN_DAY'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'    $s(''P273_PLAN_MON'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_SHIFT'');',
'    hour = (!$v(''P273_DAY_SHIFT_START'') ? $v(''P273_DAY_SHIFT_START'') + '','' : '''') + $v(''P273_NIGHT_SHIFT_START'');',
'}',
'if (!utils.checkNull($v(''P273_FREQ_SHIFT''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_PLAN_DAY'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'    $s(''P273_PLAN_MON'', '''');',
'	$s(''P273_CYCLE_BEGIN'','''');',
'	$s(''P273_CYCLE_END'','''');',
'    freq_type = $v(''P273_FREQ_SHIFT'');',
'    hour = (!$v(''P273_DAY_SHIFT_START'') ? $v(''P273_DAY_SHIFT_START'') + '','' : '''') + $v(''P273_NIGHT_SHIFT_START'');',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_CYCLE''))) {',
'    $s(''P273_PLAN_HRS'', '''');',
'    $s(''P273_FREQ_DAY'', '''');',
'    $s(''P273_PLAN_WEEK'', '''');',
'	$s(''P273_PLAN_MON'', '''');',
'    $s(''P273_DAY_SHIFT_START'', '''');',
'    $s(''P273_DAY_SHIFT_END'', '''');',
'    $s(''P273_NIGHT_SHIFT_START'', '''');',
'    $s(''P273_NIGHT_SHIFT_END'', '''');',
'    freq_type = $v(''P273_FREQ_CYCLE'');',
'}',
'dayWeek = $v(''P273_PLAN_WEEK'');',
'// dayMonth = $v(''P273_PLAN_MON'');',
'dayMonth = !$v(''P273_PLAN_MON'') ?  $v(''P273_CYCLE_BEGIN'') :$v(''P273_PLAN_MON'');',
'startDate = $v(''P273_START_DATE'');',
'endDate = $v(''P273_END_DATE'');',
'cycleDayStart = $v(''P273_CYCLE_BEGIN'');',
'cycleDayEnd = $v(''P273_CYCLE_END'');',
'',
'$s(''P273_FREQ_TYPE'', freq_type);',
'$s(''P273_HOUR'', hour);',
'$s(''P273_INTERVAL'', interval);',
'',
'var req = {',
'    interval: interval,',
'    dayStartTime: !$v(''P273_DAY_SHIFT_START'') ? null : $v(''P273_DAY_SHIFT_START''),',
'    nightStartTime: !$v(''P273_NIGHT_SHIFT_START'') ? null : $v(''P273_NIGHT_SHIFT_START''),',
'    previousShift: !$v(''P273_PREVIOUS_SHIFT'') ? null : $v(''P273_PREVIOUS_SHIFT''),',
'    cycleDayStart: !cycleDayStart ? null : cycleDayStart,',
'	cycleDayEnd: !cycleDayEnd ? null : cycleDayEnd,',
'    dayWeek: !dayWeek ? null : dayWeek,',
'    dayMonth: !dayMonth ? null : dayMonth,',
'    freq: freq_type,',
'    startDate: new Date(startDate).getTime(),',
'    endDate: new Date(endDate).getTime(),',
'};',
'$s(''P273_REQ'', JSON.stringify(req));',
'console.log(''req,'', req);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1427373867231100524)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var interval_cycle_text = '''';',
'var day_shift = '''';',
'var night_shift = '''';',
'if (!utils.checkNull($v(''P273_FREQ_HRS''))) {',
unistr('    interval_cycle_text = ''\6BCF '' + $v(''P273_PLAN_HRS'') + '' \5C0F\65F6'';'),
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_DAY''))) {',
unistr('    interval_cycle_text = ''\6BCF '' + $v(''P273_PLAN_DAY'') + '' \5929'';'),
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_WEEK''))) {',
'    var week = apex.item(''P273_PLAN_WEEK'').displayValueFor($v(''P273_PLAN_WEEK''));',
unistr('    interval_cycle_text = ''\6BCF '' + week;'),
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_MON''))) {',
'    var month_day = apex.item(''P273_PLAN_MON'').displayValueFor($v(''P273_PLAN_MON''));',
unistr('    interval_cycle_text = ''\6BCF '' + month_day;'),
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_SHIFT''))) {',
'',
'    if (!utils.checkNull($v(''P273_DAY_SHIFT_START''))) {',
'',
unistr('        day_shift = ''\767D\73ED'' + $v(''P273_DAY_SHIFT_START'') + ''~'' + $v(''P273_DAY_SHIFT_END'');'),
'        interval_cycle_text = day_shift;',
'',
'        if (!utils.checkNull($v(''P273_NIGHT_SHIFT_START''))) {',
unistr('            night_shift = ''\591C\73ED'' + $v(''P273_NIGHT_SHIFT_START'') + ''~'' + $v(''P273_NIGHT_SHIFT_END'');'),
'            interval_cycle_text = day_shift + '','' + night_shift;',
'        }',
'',
'    } else {',
'',
unistr('        night_shift = ''\591C\73ED'' + $v(''P273_NIGHT_SHIFT_START'') + ''~'' + $v(''P273_NIGHT_SHIFT_END'');'),
'        interval_cycle_text = day_shift + '','' + night_shift;',
'    }',
'}',
'',
'if (!utils.checkNull($v(''P273_FREQ_CYCLE''))) {',
'    // var month_day = apex.item(''P273_PLAN_MON'').displayValueFor($v(''P273_PLAN_MON''));',
unistr('    interval_cycle_text = ''\6BCF\6708'' + $v(''P273_CYCLE_BEGIN'')+''\53F7~''+$v(''P273_CYCLE_END'')+''\53F7'';'),
'}',
'',
'',
'$s(''P273_INTERVAL_CYCLE_TEXT'', interval_cycle_text);',
'console.log(''interval_cycle_text,'', interval_cycle_text);',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1435348974877300179)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_msg       nvarchar2(2000);',
'v_cron          nvarchar2(50);',
'v_next_execute  nvarchar2(32);',
'v_previousShift nvarchar2(32);',
'v_domain        nvarchar2(256);',
'-- v_url           nvarchar2(256) := ''dianjian/apex/cron/generate'';',
'v_url           nvarchar2(256) := ''jajian/apex/cron/generate'';',
'v_resp          clob;',
'v_plan_id       number(20);',
'v_count         number(20)     := 0;',
'row_count       number(20)     := 0;',
'V_DAY_MONTH     nvarchar2(256);',
'V_SECOND_START_TIME nvarchar2(256);',
'begin',
'-- select decode(regexp_count(:MPF_API_URL, ''/''), 2, :MPF_API_URL || ''/'', :MPF_API_URL)',
'-- into v_domain',
'-- from dual;',
'  select decode(regexp_count(SUBSTR(:MPF_API_URL, LENGTH(:MPF_API_URL), 1), ''[/]''), 0, :MPF_API_URL || ''/'', :MPF_API_URL)',
'    into v_domain',
'    from dual;',
'v_resp := JA_HTTP_REQUEST(v_domain || v_url, ''POST'', :P273_REQ, :APPKEY, :APPSECRET, :USER_ID);',
'if json_value(v_resp, ''$.code'') = 200 then',
'v_cron := json_value(v_resp, ''$.data.cronStr'');',
'v_next_execute := json_value(v_resp, ''$.data.nextExecute'');',
'v_previousShift := json_value(v_resp, ''$.data.previousShift'');',
'else',
'apex_util.set_session_state(''P273_ROW_COUNT'', -1);',
'return;',
'end if;',
'',
'select count(OBJECT_DEVICE_ASSO_ID)',
'into v_count',
'from CHECK_OBJECT_DEVICE_ASSO',
'where OBJECT_ID = :P273_OBJECT_ID',
'and PLAN_ID = :P273_PLAN_ID;',
'',
'if :P273_FREQ_TYPE = ''CYCLE'' then',
'V_DAY_MONTH := null;',
'-- V_SECOND_START_TIME := :P273_CYCLE_END;',
'else',
'V_DAY_MONTH := :P273_PLAN_MON;',
'end if;',
'if :P273_PLAN_ID is null or v_count > 1 then',
'insert into CHECK_PLAN(created_by, updated_by, tenant_id,BASE_DEPT_ID, start_date, end_date, interval,',
'                   freq, day_month, day_week, hour, first_start_time, first_end_time, second_start_time,  second_end_time, cron,  next_execute, PREVIOUS_SHIFT, is_enable, interval_cycle_text,CYCLE_DAY_START,CYCLE_DAY_END)',
'values (:USER_ID, :USER_ID, :USERTENANT,:BASE_DEPT_ID, to_date(:P273_START_DATE, ''yyyy-mm-dd''),to_date(:P273_END_DATE, ''yyyy-mm-dd''), :P273_INTERVAL, :P273_FREQ_TYPE, :P273_PLAN_MON,',
'    :P273_PLAN_WEEK, :P273_HOUR, :P273_DAY_SHIFT_START, :P273_DAY_SHIFT_END, :P273_NIGHT_SHIFT_START, :P273_NIGHT_SHIFT_END, v_cron,',
'    to_date(v_next_execute, ''yyyy-mm-dd hh24:mi:ss''), v_previousShift, 1, :P273_INTERVAL_CYCLE_TEXT,:P273_CYCLE_BEGIN,:P273_CYCLE_END)',
'returning PLAN_ID into v_plan_id;',
'row_count := SQL%ROWCOUNT;',
'apex_util.set_session_state(''P273_PLAN_ID'', v_plan_id);',
'else',
'update CHECK_PLAN',
'set UPDATED_BY=:USER_ID,',
'UPDATED_DATE=sysdate,',
'START_DATE=to_date(:P273_START_DATE, ''yyyy-mm-dd''),',
'END_DATE=to_date(:P273_END_DATE, ''yyyy-mm-dd''),',
'INTERVAL=:P273_INTERVAL,',
'FREQ=:P273_FREQ_TYPE,DAY_MONTH=:P273_PLAN_MON,',
'DAY_WEEK=:P273_PLAN_WEEK, HOUR=:P273_HOUR,',
'FIRST_START_TIME=:P273_DAY_SHIFT_START,',
'FIRST_END_TIME=:P273_DAY_SHIFT_END,',
'SECOND_START_TIME=:P273_NIGHT_SHIFT_START,',
'SECOND_END_TIME=:P273_NIGHT_SHIFT_END, CRON=v_cron,',
'NEXT_EXECUTE=to_date(v_next_execute, ''yyyy-mm-dd hh24:mi:ss''),',
'PREVIOUS_SHIFT=v_previousShift,',
'INTERVAL_CYCLE_TEXT=:P273_INTERVAL_CYCLE_TEXT,IS_ENABLE=1',
'where PLAN_ID = :P273_PLAN_ID;',
'row_count := SQL%ROWCOUNT;',
'v_plan_id := :P273_PLAN_ID;',
'end if;',
'',
'if :P273_APPLY_ALL = 0 then',
'update CHECK_OBJECT_DEVICE_ASSO set PLAN_ID=v_plan_id where OBJECT_DEVICE_ASSO_ID = :P273_OBJECT_DEVICE_ASSO_ID;',
'else',
'delete CHECK_PLAN where PLAN_ID in (',
'select PLAN_ID from CHECK_OBJECT_DEVICE_ASSO where OBJECT_ID = :P273_OBJECT_ID and OBJECT_DEVICE_ASSO_ID != :P273_OBJECT_DEVICE_ASSO_ID',
');',
'update CHECK_OBJECT_DEVICE_ASSO set PLAN_ID=v_plan_id where OBJECT_ID = :P273_OBJECT_ID;',
'end if;',
'update CHECK_OBJECT set APPLY_ALL =:P273_APPLY_ALL where OBJECT_ID = :P273_OBJECT_ID;',
'',
'apex_util.set_session_state(''P273_ROW_COUNT'', row_count);',
'apex_util.set_session_state(''P273_PLAN_ID'', v_plan_id);',
'',
'exception',
'when others then',
'apex_util.set_session_state(''P273_ROW_COUNT'', 0);',
'v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
':APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P273_START_DATE,P273_END_DATE,P273_PLAN_HRS,P273_PLAN_ID,P273_PLAN_NAME,P273_PLAN_SERIAL_NO,P273_PLAN_DAY,P273_INTERVAL_CYCLE_TEXT,P273_PLAN_WEEK,P273_REQ,P273_RESP,P273_PLAN_MON,P273_FREQ_TYPE,P273_INTERVAL,P273_DAY_SHIFT_START,P273_DAY_SHIFT_END,P2'
||'73_NIGHT_SHIFT_START,P273_NIGHT_SHIFT_END,P273_OBJECT_ID,P273_OBJECT_DEVICE_ASSO_ID,P273_APPLY_ALL,P273_CYCLE_BEGIN,P273_CYCLE_END,P273_FREQ_CYCLE'
,p_attribute_03=>'P273_PLAN_ID,P273_ROW_COUNT,P273_HOUR,P273_INTERVAL,P273_DAY_SHIFT_START'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1435349536860300180)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P273_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P273_ROW_COUNT'') == -1) {',
unistr('    alert(''\63A5\53E3\8C03\7528\5931\8D25'');'),
'    return false;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1427373677841100522)
,p_event_id=>wwv_flow_imp.id(1435347104862300175)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1427374056066100525)
,p_name=>unistr('\53D6\6D88\914D\7F6E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1435344857828291830)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1427374117687100526)
,p_event_id=>wwv_flow_imp.id(1427374056066100525)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/

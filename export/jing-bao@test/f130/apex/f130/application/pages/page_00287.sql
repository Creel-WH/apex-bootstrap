prompt --application/pages/page_00287
begin
--   Manifest
--     PAGE: 00287
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
 p_id=>287
,p_name=>unistr('\63A8\9001\89C4\5219-\7F16\8F91')
,p_alias=>unistr('\63A8\9001\89C4\5219-\7F16\8F91')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\63A8\9001\89C4\5219-\7F16\8F91')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'layui.use(''laydate'', function () {',
'    var laydate = layui.laydate;',
'    laydate.render({',
'        elem: ''#P287_PUSH_TIME'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P287_PUSH_TIME'', value);',
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
'        elem: ''#P287_PUSH_TIME2'',',
'        type: ''time'',',
'        format: ''HH:mm'',',
'        // value: new Date(Date.now() - 3600 * 7 * 20 * 1000),',
'        done: function (value, date, endDate) {',
'            // console.log(value);',
'            $s(''P287_PUSH_TIME2'', value);',
'        }',
'    });',
'    function formatminutes(date) {',
unistr('        $($(".laydate-time-list li ol")[2]).find("li").remove();//\6E05\7A7A\79D2'),
'    };',
'})',
'',
'',
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
unistr('// //\6309\65F6'),
'// $("#P287_INTERVAL").attr("type", "number");',
unistr('// $("#P287_INTERVAL").attr("min", 1);         // \8BBE\7F6E\6700\5C0F\503C'),
unistr('// $("#P287_INTERVAL").attr("max", 7);        // \8BBE\7F6E\6700\5927\503C'),
'',
'// // $(''#P287_INTERVAL'').attr(''oninput'',"if(this.value.length>1){this.value=this.value.replace(/[^1-7]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");',
'',
'// $(''#P287_INTERVAL'').on(''input'', function() {',
'//                 var value = $(this).val();',
'//                 $(this).val(value.replace(/[^\d]/g, ''''));',
'//                 var num = parseInt($(this).val());',
'//                 if (isNaN(num) || num <= 0) {',
'//                     $(this).val('''');',
'//                 } else if (num > 7) {',
'//                     $(this).val(''7'');',
unistr('//                 //   alert(''\6700\5927\53EA\80FD\4E3A7\FF01'');'),
'//                 }',
'//             });'))
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
 p_id=>wwv_flow_imp.id(841419337685256017)
,p_plug_name=>unistr('\7F16\8F91')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(604364786245237170)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(604365144189237170)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P287_RULE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(604365558880237169)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P287_RULE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421131889256016)
,p_name=>'P287_RULE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select RULE_NAME from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and BASE_DEPT_ID =:BASE_DEPT_ID;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\89C4\5219\540D\79F0\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421272536256017)
,p_name=>'P287_RULE_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select RULE_TYPE from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\89C4\5219\7C7B\578B\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>unistr('RULE_TYPE\FF08\63A8\9001\89C4\5219\7C7B\578B\FF09')
,p_lov=>'.'||wwv_flow_imp.id(216102430456818081)||'.'
,p_cSize=>30
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(841421503947256019)
,p_name=>'P287_TIME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select PUSH_TIME_TYPE from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and PUSH_TIME_TYPE =''DAILY'' and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\63A8\9001\65F6\95F4\FF1A')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;DAILY'
,p_colspan=>3
,p_grid_column=>2
,p_grid_label_column_span=>2
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421591128256020)
,p_name=>'P287_IS_ENABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select NVL(MAX(IS_ENABLE),1) from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_display_as=>'NATIVE_YES_NO'
,p_colspan=>9
,p_grid_column=>2
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'off_label', '0',
  'off_value', '0',
  'on_label', '1',
  'on_value', '1',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421775789256022)
,p_name=>'P287_PUSH_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select PUSH_TIME from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and PUSH_TIME_TYPE =''DAILY'' and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_pre_element_text=>unistr('\6BCF\5929&nbsp')
,p_post_element_text=>unistr('&nbsp\63A8\9001\5F53\5929\6570\636E')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421835356256023)
,p_name=>'P287_TIME_2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select PUSH_TIME_TYPE from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and PUSH_TIME_TYPE =''AFTER_DAYS'' and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:;AFTER_DAYS'
,p_colspan=>1
,p_grid_column=>4
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841421953744256024)
,p_name=>'P287_PUSH_TIME2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select PUSH_TIME from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and PUSH_TIME_TYPE =''AFTER_DAYS'' and BASE_DEPT_ID =:BASE_DEPT_ID; '
,p_item_default_type=>'SQL_QUERY'
,p_pre_element_text=>unistr('\6BCF\5929&nbsp')
,p_post_element_text=>unistr('&nbsp\63A8\9001\540E')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841422019248256025)
,p_name=>'P287_INTERVAL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_item_default=>'select INTERVAL from CHECK_PUSH_RULE where RULE_ID =:P287_RULE_ID and TENANT_ID=:USERTENANT and DEL_FLAG=0 and PUSH_TIME_TYPE =''AFTER_DAYS'' AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_post_element_text=>unistr('&nbsp\5929\6570\636E')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:1;1,2;2,3;3,4;4,5;5,6;6,7;7'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2330987513255485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(841422986335256034)
,p_name=>'P287_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(841419337685256017)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(844843206646303327)
,p_name=>'P287_RULE_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(604369203291237167)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(604364786245237170)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604369642423237167)
,p_event_id=>wwv_flow_imp.id(604369203291237167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(604370097994237167)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(604365558880237169)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604370549076237166)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P287_RULE_NAME''))){',
unistr('	alert(''\89C4\5219\540D\79F0\4E0D\80FD\4E3A\7A7A'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P287_RULE_TYPE''))){',
unistr('	alert(''\89C4\5219\7C7B\578B\4E0D\80FD\4E3A\7A7A'');'),
'	return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604371106547237166)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'	V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
unistr('	--\6821\9A8C\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT(1) INTO V_COUNT FROM CHECK_PUSH_RULE WHERE RULE_NAME = :P287_RULE_NAME AND DEL_FLAG =0 and  TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'    APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', V_COUNT);',
unistr('    --\6821\9A8C\63A8\9001\65F6\95F4'),
'    IF :P287_TIME IS NULL AND :P287_TIME_2 IS NULL  THEN',
unistr('        --\672A\9009\62E9\63A8\9001\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -1);',
'    ELSIF :P287_TIME IS NOT NULL AND :P287_PUSH_TIME IS NULL THEN',
unistr('        --\672A\9009\62E9\5177\4F53\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -2);',
'    ELSIF :P287_TIME_2 IS NOT NULL AND :P287_PUSH_TIME2 IS NULL THEN',
unistr('        --\672A\9009\62E9\5177\4F53\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -2);',
'    ELSIF :P287_TIME_2 IS NOT NULL AND :P287_INTERVAL IS NULL THEN',
unistr('        --\672A\9009\62E9\5929\6570'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -3);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -4);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;',
'',
''))
,p_attribute_02=>'P287_RULE_NAME,P287_TIME,P287_PUSH_TIME,P287_PUSH_TIME2,P287_TIME_2,P287_INTERVAL'
,p_attribute_03=>'P287_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604371623573237166)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P287_COUNT'')>0){',
unistr('	alert(''\89C4\5219\540D\79F0\91CD\590D\FF0C\8BF7\91CD\65B0\8F93\5165\540E\518D\8FDB\884C\4FDD\5B58\FF01'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-1){',
unistr('	alert(''\8BF7\9009\62E9\63A8\9001\65F6\95F4'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-2){',
unistr('	alert(''\8BF7\914D\7F6E\63A8\9001\65F6\95F4'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-3){',
unistr('	alert(''\8BF7\914D\7F6E\5929\6570'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-4){',
unistr('	alert(''\914D\7F6E\5931\8D25'');'),
'	return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604372074118237165)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'	V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
unistr('	--\65B0\589E\6570\636E'),
'    INSERT INTO CHECK_PUSH_RULE(RULE_NAME,',
'                                RULE_TYPE,',
'                                PUSH_TIME_TYPE,',
'                                PUSH_TIME,',
'                                INTERVAL,',
'                                IS_ENABLE,',
'                                DEL_FLAG,',
'                                TENANT_ID,',
'                                CREATED_BY,',
'                                CREATION_DATE,BASE_DEPT_ID)',
'    VALUES (:P287_RULE_NAME, :P287_RULE_TYPE, NVL(:P287_TIME, :P287_TIME_2),',
'            DECODE(NVL(:P287_TIME, :P287_TIME_2), ''DAILY'', :P287_PUSH_TIME, :P287_PUSH_TIME2),',
'            DECODE(NVL(:P287_TIME, :P287_TIME_2), ''DAILY'', 0, :P287_INTERVAL), :P287_IS_ENABLE, 0, :USERTENANT,',
'            :USER_ID, SYSDATE,:BASE_DEPT_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P287_TIME,P287_RULE_TYPE,P287_RULE_NAME,P287_PUSH_TIME,P287_TIME_2,P287_PUSH_TIME2,P287_INTERVAL,P287_IS_ENABLE'
,p_attribute_03=>'P287_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604372636530237165)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P287_COUNT'')>0){',
unistr('	alert(''\6DFB\52A0\6210\529F'');'),
'	return true;',
'}else{',
unistr('	alert(''\6DFB\52A0\5931\8D25'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604373112281237165)
,p_event_id=>wwv_flow_imp.id(604370097994237167)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(604373448257237165)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(604365144189237170)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604373976251237165)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P287_RULE_NAME''))){',
unistr('	alert(''\89C4\5219\540D\79F0\4E0D\80FD\4E3A\7A7A'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P287_RULE_TYPE''))){',
unistr('	alert(''\89C4\5219\7C7B\578B\4E0D\80FD\4E3A\7A7A'');'),
'	return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604374534552237164)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER(10);',
'	V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
unistr('	--\6821\9A8C\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT(1) INTO V_COUNT FROM CHECK_PUSH_RULE WHERE RULE_NAME = :P287_RULE_NAME and RULE_ID <> :P287_RULE_ID AND DEL_FLAG =0 and  TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'    APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', V_COUNT);',
unistr('    --\6821\9A8C\63A8\9001\65F6\95F4'),
'    IF :P287_TIME IS NULL AND :P287_TIME_2 IS NULL  THEN',
unistr('        --\672A\9009\62E9\63A8\9001\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -1);',
'    ELSIF :P287_TIME IS NOT NULL AND :P287_PUSH_TIME IS NULL THEN',
unistr('        --\672A\9009\62E9\5177\4F53\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -2);',
'    ELSIF :P287_TIME_2 IS NOT NULL AND :P287_PUSH_TIME2 IS NULL THEN',
unistr('        --\672A\9009\62E9\5177\4F53\65F6\95F4'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -2);',
'    ELSIF :P287_TIME_2 IS NOT NULL AND :P287_INTERVAL IS NULL THEN',
unistr('        --\672A\9009\62E9\5929\6570'),
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -3);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -4);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'END;',
'',
''))
,p_attribute_02=>'P287_RULE_NAME,P287_TIME,P287_PUSH_TIME,P287_PUSH_TIME2,P287_TIME_2,P287_INTERVAL,P287_RULE_ID'
,p_attribute_03=>'P287_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604375004761237164)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P287_COUNT'')>0){',
unistr('	alert(''\89C4\5219\540D\79F0\91CD\590D\FF0C\8BF7\91CD\65B0\8F93\5165\540E\518D\8FDB\884C\4FDD\5B58\FF01'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-1){',
unistr('	alert(''\8BF7\9009\62E9\63A8\9001\65F6\95F4'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-2){',
unistr('	alert(''\8BF7\914D\7F6E\63A8\9001\65F6\95F4'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-3){',
unistr('	alert(''\8BF7\914D\7F6E\5929\6570'');'),
'	return false;',
'}',
'if($v(''P287_COUNT'')==-4){',
unistr('	alert(''\914D\7F6E\5931\8D25'');'),
'	return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604375465438237164)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
unistr('	--\4FEE\6539\6570\636E'),
'    UPDATE CHECK_PUSH_RULE',
'    SET RULE_NAME      =:P287_RULE_NAME,',
'        RULE_TYPE      =:P287_RULE_TYPE,',
'        PUSH_TIME_TYPE =NVL(:P287_TIME, :P287_TIME_2),',
'        PUSH_TIME=DECODE(NVL(:P287_TIME, :P287_TIME_2), ''DAILY'', :P287_PUSH_TIME, :P287_PUSH_TIME2),',
'        INTERVAL=DECODE(NVL(:P287_TIME, :P287_TIME_2), ''DAILY'', 0, :P287_INTERVAL),',
'        IS_ENABLE=:P287_IS_ENABLE,',
'        UPDATED_BY     =:USER_ID,',
'        UPDATED_DATE   =SYSDATE',
'    WHERE RULE_ID = :P287_RULE_ID;',
'    APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', 1);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P287_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P287_TIME,P287_RULE_TYPE,P287_RULE_NAME,P287_PUSH_TIME,P287_TIME_2,P287_PUSH_TIME2,P287_INTERVAL,P287_IS_ENABLE'
,p_attribute_03=>'P287_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604376022452237164)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P287_COUNT'')>0){',
unistr('	alert(''\4FEE\6539\6210\529F'');'),
'	return true;',
'}else{',
unistr('	alert(''\4FEE\6539\5931\8D25'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604376457792237163)
,p_event_id=>wwv_flow_imp.id(604373448257237165)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(604376926235237163)
,p_name=>unistr('\9009\62E9\5185\5BB9')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P287_INTERVAL,P287_PUSH_TIME2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604377381584237163)
,p_event_id=>wwv_flow_imp.id(604376926235237163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P287_TIME_2'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'AFTER_DAYS'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604377846171237163)
,p_event_id=>wwv_flow_imp.id(604376926235237163)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P287_TIME'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(604378284271237163)
,p_name=>unistr('\9009\62E9\5185\5BB9_1')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P287_PUSH_TIME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604378753536237163)
,p_event_id=>wwv_flow_imp.id(604378284271237163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P287_TIME_2'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(604379249695237162)
,p_event_id=>wwv_flow_imp.id(604378284271237163)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P287_TIME'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'DAILY'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00271
begin
--   Manifest
--     PAGE: 00271
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
 p_id=>271
,p_name=>unistr('\6DFB\52A0\94FE\63A5')
,p_alias=>unistr('\6DFB\52A0\94FE\63A5')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6DFB\52A0\94FE\63A5')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-error:before {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1923480843782555491)
,p_plug_name=>unistr('\6DFB\52A0\94FE\63A5')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1923481252461555495)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1923480843782555491)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1923481176612555494)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1923480843782555491)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1923480965912555492)
,p_name=>'P271_TITLE'
,p_item_sequence=>30
,p_prompt=>unistr('\6807\9898')
,p_placeholder=>unistr('\8BF7\8F93\5165\6807\9898')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1923481025424555493)
,p_name=>'P271_LINK'
,p_item_sequence=>40
,p_prompt=>unistr('\7F51\9875\94FE\63A5')
,p_placeholder=>unistr('\8BF7\8F93\5165\7F51\9875\94FE\63A5 https://')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208823620086424262)
,p_name=>'P271_KNOWLEDGE_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208823920999424265)
,p_name=>'P271_TYPE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208824630892424272)
,p_name=>'P271_FILE_TYPE'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208824741644424273)
,p_name=>'P271_FILE_NAME'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208825019413424276)
,p_name=>'P271_FILE_URL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2208825196054424278)
,p_name=>'P271_ROW_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1923927976406968446)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1923481252461555495)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1923928064005968447)
,p_event_id=>wwv_flow_imp.id(1923927976406968446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1923928166144968448)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1923481176612555494)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2208825490259424281)
,p_event_id=>wwv_flow_imp.id(1923928166144968448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'if (utils.checkNull($v(''P271_TITLE''))) {',
unistr('    // alert(''\8BF7\8F93\5165\6807\9898'');'),
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "inline",',
'            pageItem: "P271_TITLE",',
unistr('            message: ''<div style="color: red;">\8BF7\586B\5199\6807\9898 </div>'','),
'            unsafe: false',
'        }',
'    ]);',
'    return false;',
'}',
'',
'',
'if (!validateFileName($v(''P271_TITLE''))) {',
unistr('    alert(''\6807\9898\5305\542B\7279\6B8A\5B57\7B26\FF0C\8BF7\4FEE\6B63'');'),
'    return false;',
'}',
'function validateFileName(fileName) {',
unistr('    // \4F7F\7528\6B63\5219\8868\8FBE\5F0F\8FDB\884C\9A8C\8BC1'),
'    var pattern = /^[\u4e00-\u9fa5a-zA-Z0-9.]+$/;',
'    return pattern.test(fileName);',
'}',
'',
'',
'',
'',
'if (utils.checkNull($v(''P271_LINK''))) {',
unistr('    // alert(''\8BF7\8F93\5165\7F51\7EDC\94FE\63A5'');'),
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "inline",',
'            pageItem: "P271_LINK",',
unistr('            message: ''<div style="color: red;">\8BF7\586B\5199\94FE\63A5 </div>'','),
'            unsafe: false',
'        }',
'    ]);',
'    return false;',
'}',
'',
'const reg = /^https:\/\/\S+$/i;',
'if (!reg.test($v(''P271_LINK''))) {',
unistr('    // alert(''\8BF7\8F93\5165\6B63\786E\683C\5F0F\94FE\63A5'');'),
'    apex.message.showErrors([',
'        {',
'            type: "error",',
'            location: "inline",',
'            pageItem: "P271_LINK",',
unistr('            message: ''<div style="color: red;">\8BF7\8F93\5165\6B63\786E\683C\5F0F\94FE\63A5 </div>'','),
'            unsafe: false',
'        }',
'    ]);',
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2208825653415424282)
,p_event_id=>wwv_flow_imp.id(1923928166144968448)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    row_count NUMBER := 0;',
'    V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
'',
'        INSERT INTO CODE_KNOWLEDGE_ITEM(CREATED_BY,',
'                                       CREATION_DATE,',
'                                       UPDATED_BY,',
'                                       UPDATED_DATE,',
'                                       TENANT_ID,',
'                                       BASE_DEPT_ID,',
'                                       NAME,',
'                                       URL,',
'                                       TYPE,',
'                                       SUFFIX,',
'                                       SORT_NUM,',
'                                       KNOWLEDGE_ID)',
'        VALUES (:USER_ID,',
'                sysdate,',
'                :USER_ID,',
'                sysdate,',
'                :USERTENANT,',
'                :BASE_DEPT_ID,',
'                :P271_TITLE,',
'                :P271_LINK,',
'                ''LINK'',',
unistr('                ''\81EA\5B9A\4E49\94FE\63A5'','),
'                0,',
'                :P271_KNOWLEDGE_ID);',
'        row_count := SQL%ROWCOUNT;',
'',
'    apex_util.set_session_state(''P271_ROW_COUNT'', row_count);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;',
'            V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            JA_WRITE_LOG(:APP_PAGE_ALIAS||'':''||:APP_PAGE_ID||'':\81EA\5B9A\4E49\94FE\63A5'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P271_TITLE,P271_LINK,P271_ROW_COUNT,P271_KNOWLEDGE_ID,P271_TYPE'
,p_attribute_03=>'P271_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2208824411658424270)
,p_event_id=>wwv_flow_imp.id(1923928166144968448)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P271_ROW_COUNT'') == 0) {',
unistr('    alert(''\6DFB\52A0\5931\8D25'');'),
'    return false;',
'}',
'',
'if ($v(''P271_ROW_COUNT'') == 1) {',
unistr('    alert(''\6DFB\52A0\6210\529F'');'),
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1923928271899968449)
,p_event_id=>wwv_flow_imp.id(1923928166144968448)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2208825308310424279)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1923480843782555491)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2208825408501424280)
,p_event_id=>wwv_flow_imp.id(2208825308310424279)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1923480843782555491)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924935443187279352)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924935501118279353)
,p_event_id=>wwv_flow_imp.id(1924935443187279352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P271_TITLE,P271_LINK'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

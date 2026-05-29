prompt --application/pages/page_00131
begin
--   Manifest
--     PAGE: 00131
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>131
,p_name=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_alias=>unistr('\65B0\589E\6587\4EF6\5E931')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326086567021737594)
,p_plug_name=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3326086630351737595)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326086896168737598)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3326086630351737595)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3326086820347737597)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3326086630351737595)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326086701829737596)
,p_name=>'P131_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3326086567021737594)
,p_prompt=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3326087531761737604)
,p_name=>'P131_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3326087034188737599)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3326086820347737597)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326087164252737600)
,p_event_id=>wwv_flow_imp.id(3326087034188737599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3326087223064737601)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3326086896168737598)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326087599519737605)
,p_event_id=>wwv_flow_imp.id(3326087223064737601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P131_FILE_NAME''))){',
unistr('    alert(''\6587\4EF6\5E93\540D\79F0\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326087393704737603)
,p_event_id=>wwv_flow_imp.id(3326087223064737601)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_FILE_ID NUMBER(20);',
'    --DATE: 2025/7/15 15:07',
unistr('    --DESCRIBE:wxx \65B0\589E\521B\5EFA\6587\4EF6\5939\57CB\70B9'),
'BEGIN',
'    INSERT INTO STS_FILE(FILE_NAME,',
'                         FILE_FORMAT,',
'                         FILE_STATUS,',
'                         FILE_TYPE,',
'                         DEL_FLAG,',
'                         TENANT_ID,',
'                         SYSTEM_ID,',
'                         CREATED_BY,',
'                         CREATION_DATE,',
'                         SCOPE_TYPE,',
'                         FILE_LEVEL,',
'                         PLANS_FILE_TYPE,',
'                         ADD_METHOD)',
'    VALUES (:P131_FILE_NAME,',
unistr('            ''\6587\4EF6\5939'','),
'            ''NORMAL'',',
'            ''FOLDER'',',
'            0,',
'            :USER_TENANT,',
'            TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')),',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            ''VIEW_DOWN'',',
'            1,',
'            ''NEVER'',',
'            ''CREATE'')',
'    RETURNING FILE_ID INTO V_FILE_ID;',
'    INSERT INTO STS_SCOPE(REFERENCE_ID,',
'                          REFERENCE_TYPE,',
'                          SOURCE_USER_ID,',
'                          PERMISSIONS_TYPE,',
'                          CREATED_BY,',
'                          CREATION_DATE,',
'                          UPDATED_BY,',
'                          UPDATE_DATE,',
'                          RANGE_TYPE,',
'                          RANGE_ID,',
'                          IS_INHERIT_PERMISSION)',
'    VALUES (V_FILE_ID,',
'            ''FILE'',',
'            :DIAN_USER_ID,',
'            ''MANAGE'',',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            ''USER'',',
'            :DIAN_USER_ID,',
'            1);',
'    APEX_UTIL.SET_SESSION_STATE(''P131_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6587\4EF6\5E93'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P131_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P131_FILE_NAME'
,p_attribute_03=>'P131_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326087778895737607)
,p_event_id=>wwv_flow_imp.id(3326087223064737601)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P131_COUNT'')>0){',
unistr('    alert(''\6DFB\52A0\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\6DFB\52A0\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3326087327518737602)
,p_event_id=>wwv_flow_imp.id(3326087223064737601)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

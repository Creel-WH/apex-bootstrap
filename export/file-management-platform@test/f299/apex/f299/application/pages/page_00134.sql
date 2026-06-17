prompt --application/pages/page_00134
begin
--   Manifest
--     PAGE: 00134
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>134
,p_name=>unistr('\65B0\589E\6587\4EF6\5939')
,p_alias=>unistr('\65B0\589E\6587\4EF6\5939')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\65B0\589E\6587\4EF6\5939')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3761309741117960311)
,p_plug_name=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3761309804447960312)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3307829745795569011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3761309804447960312)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3307829345986569010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3761309804447960312)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307764544734144162)
,p_name=>'P134_PARENT_FOLDER_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3761310468183960320)
,p_name=>'P134_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3761309741117960311)
,p_prompt=>unistr('\6587\4EF6\5939\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9760156691065264294)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>unistr('\6587\4EF6\5939\6587\4EF6\6700\591A\652F\630115\7EA7')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3761312809703960343)
,p_name=>'P134_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307830626652569019)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3307829345986569010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307831131955569020)
,p_event_id=>wwv_flow_imp.id(3307830626652569019)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307831572535569020)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3307829745795569011)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307833535994569023)
,p_event_id=>wwv_flow_imp.id(3307831572535569020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P134_FILE_NAME''))){',
unistr('    alert(''\6587\4EF6\5939\540D\79F0\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307833024984569023)
,p_event_id=>wwv_flow_imp.id(3307831572535569020)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG        VARCHAR2(2000);',
'    V_SCOPE_TYPE     VARCHAR2(50);',
'    V_FILE_PATH      VARCHAR2(4000);',
'    V_FILE_ID        NUMBER(20);',
'    V_FILE_LEVEL     NUMBER(20);',
'    V_ROOT_FOLDER_ID NUMBER(20);',
'    V_PLANS_FILE_TYPE VARCHAR2(50);',
'BEGIN',
unistr('    --\67E5\8BE2\6570\636E'),
'    SELECT SCOPE_TYPE, DECODE(FILE_PATH,null,FILE_NAME,FILE_PATH||''/''||FILE_NAME), FILE_LEVEL, ROOT_FOLDER_ID,PLANS_FILE_TYPE',
'    INTO V_SCOPE_TYPE,V_FILE_PATH,V_FILE_LEVEL,V_ROOT_FOLDER_ID,V_PLANS_FILE_TYPE',
'    FROM STS_FILE',
'    WHERE FILE_ID = :P134_PARENT_FOLDER_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
unistr('    --\65B0\589E\6570\636E'),
'    INSERT INTO STS_FILE(FILE_NAME,',
'                         ROOT_FOLDER_ID,',
'                         PARENT_FOLDER_ID,',
'                         FILE_FORMAT,',
'                         FILE_STATUS,',
'                         FILE_TYPE,',
'                         DEL_FLAG,',
'                         TENANT_ID,',
'                         CREATED_BY,',
'                         CREATION_DATE,',
'                         SCOPE_TYPE,',
'                         FILE_PATH,',
'                         FILE_LEVEL,',
'                         ADD_METHOD,',
'                         PLANS_FILE_TYPE',
'                         )',
'    VALUES (:P134_FILE_NAME,',
'            DECODE(V_FILE_LEVEL, 1, :P134_PARENT_FOLDER_ID, V_ROOT_FOLDER_ID),',
'            :P134_PARENT_FOLDER_ID,',
unistr('            ''\6587\4EF6\5939'','),
'            ''NORMAL'',',
'            ''FOLDER'',',
'            0,',
'            :USER_TENANT,',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            V_SCOPE_TYPE,',
unistr('            -- V_FILE_PATH || ''/'' || :P134_FILE_NAME,  --\542B\672C\8EAB\5C42\7EA7'),
unistr('            V_FILE_PATH,--\4E0D\542B\542B\672C\8EAB\5C42\7EA7  BY:wxx  2025-05-28'),
'            (V_FILE_LEVEL) + 1,',
'            ''CREATE'',',
'            V_PLANS_FILE_TYPE',
'            )',
'    RETURNING FILE_ID INTO V_FILE_ID;',
unistr('--\540C\6B65\6743\9650'),
'    INSERT INTO STS_SCOPE(REFERENCE_ID,',
'                          REFERENCE_TYPE,',
'                          USER_ID,',
'                          SOURCE_USER_ID,',
'                          PERMISSIONS_TYPE,',
'                          CREATED_BY,',
'                          CREATION_DATE,',
'                          UPDATED_BY,',
'                          UPDATE_DATE,',
'                          RANGE_TYPE,',
'                          RANGE_ID)',
'    SELECT V_FILE_ID,',
'           REFERENCE_TYPE,',
'           USER_ID,',
'           SOURCE_USER_ID,',
'           PERMISSIONS_TYPE,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           RANGE_TYPE,',
'           RANGE_ID',
'    FROM STS_SCOPE',
'    WHERE REFERENCE_TYPE = ''FILE''',
'      AND REFERENCE_ID = :P134_PARENT_FOLDER_ID;',
'    APEX_UTIL.SET_SESSION_STATE(''P134_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6587\4EF6\5E93\5939'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P134_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P134_FILE_NAME,P134_PARENT_FOLDER_ID'
,p_attribute_03=>'P134_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307832091809569021)
,p_event_id=>wwv_flow_imp.id(3307831572535569020)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P134_COUNT'')>0){',
unistr('    alert(''\6DFB\52A0\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\6DFB\52A0\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307832527550569023)
,p_event_id=>wwv_flow_imp.id(3307831572535569020)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00122
begin
--   Manifest
--     PAGE: 00122
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
 p_id=>122
,p_name=>unistr('\4FEE\6539\5206\7C7B')
,p_alias=>unistr('\4FEE\6539\5206\7C7B')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4FEE\6539\5206\7C7B')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294305534140346126)
,p_plug_name=>unistr('\4FEE\6539\5206\7C7B')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3294305653549346127)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3294305966724346130)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3294305653549346127)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3294305904397346129)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3294305653549346127)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3294305787996346128)
,p_name=>'P122_FOLDER_CLASS_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3294305534140346126)
,p_item_default=>'select NVL(MAX(FOLDER_CLASS_ID),0) from STS_FOLDER_LIB where FOLDER_LIB_ID =:P122_FOLDER_LIB_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\4FEE\6539\5206\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT ''\65E0\5206\7C7B'' FOLDER_CLASS_NAME , 0 ID  FROM DUAL'),
'UNION ALL',
'SELECT  FOLDER_CLASS_NAME, FOLDER_CLASS_ID ID',
'FROM STS_FOLDER_CLASS',
'WHERE DEL_FLAG = 0',
'  AND TENANT_ID = :USER_TENANT',
'  AND FOLDER_CLASS_LEVEL = 1;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9760156691065264294)
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
 p_id=>wwv_flow_imp.id(3294306726101346138)
,p_name=>'P122_FOLDER_LIB_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3294306866584346139)
,p_name=>'P122_COUNT'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3294306063709346131)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3294305904397346129)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294306150652346132)
,p_event_id=>wwv_flow_imp.id(3294306063709346131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3294306264969346133)
,p_name=>unistr('\4FEE\6539\5206\7C7B')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3294305966724346130)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294306475210346135)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P122_FOLDER_CLASS_ID''))){',
unistr('    alert(''\8BF7\9009\62E9\5206\7C7B'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3304414307126931743)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\66F4\6539\5206\7C7B\540E\FF0C\5F53\524D\6587\4EF6\5E93\53CA\6587\4EF6\5C06\96C6\6210\76EE\6807\5206\7C7B\7684\6743\9650\914D\7F6E\FF0C\539F\5148\7EE7\627F\7684\6743\9650\5C06\65E0\6CD5\8BBF\95EE')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294306406508346134)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'V_FOLDER_CLASS_LEVEL NUMBER(20);',
'V_SCOPE_TYPE VARCHAR2(100);',
'BEGIN',
unistr('--\67E5\8BE2\7B49\7EA7'),
' select MAX(FOLDER_CLASS_LEVEL),MAX(SCOPE_TYPE)',
'INTO V_FOLDER_CLASS_LEVEL,V_SCOPE_TYPE',
'from STS_FOLDER_CLASS',
'where FOLDER_CLASS_ID = :P122_FOLDER_CLASS_ID;',
unistr('--\4FEE\6539\6570\636E'),
'UPDATE STS_FOLDER_LIB',
'SET UPDATE_DATE=SYSDATE,',
'    UPDATED_BY=:MPF_USER_ID,',
'    FOLDER_CLASS_ID =DECODE(:P122_FOLDER_CLASS_ID ,0,null,:P122_FOLDER_CLASS_ID),',
'    SCOPE_TYPE = NVL(V_SCOPE_TYPE,SCOPE_TYPE)',
'WHERE FOLDER_LIB_ID = :P122_FOLDER_LIB_ID;',
'',
'if V_FOLDER_CLASS_LEVEL > 0 THEN',
unistr('    --\5220\9664\6587\4EF6\5E93\6570\636E'),
'    delete STS_SCOPE ',
'    where REFERENCE_ID = :P122_FOLDER_LIB_ID',
'      and REFERENCE_TYPE = ''FOLDER_LIB'';',
unistr('    --\5220\9664\6587\4EF6\6570\636E'),
'    delete STS_SCOPE ',
'    where REFERENCE_ID IN (select FOLDER_ID from STS_FOLDER where FOLDER_LIB_ID =:P122_FOLDER_LIB_ID)',
'      and REFERENCE_TYPE = ''FOLDER'';',
unistr('    --\6587\4EF6\5E93'),
'    insert into STS_SCOPE(REFERENCE_ID,',
'                          REFERENCE_TYPE,',
'                          USER_ID,',
'                          SOURCE_USER_ID,',
'                          PERMISSIONS_TYPE,',
'                          ROLE_ID,',
'                          CREATED_BY,',
'                          CREATION_DATE,',
'                          UPDATED_BY,',
'                          UPDATE_DATE,',
'                          RANGE_TYPE,',
'                          RANGE_ID)',
'    select :P122_FOLDER_LIB_ID,',
'           ''FOLDER_LIB'',',
'           USER_ID,',
'           :MPF_USER_ID,',
'           PERMISSIONS_TYPE,',
'           ROLE_ID,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           RANGE_TYPE,',
'           RANGE_ID',
'    from STS_SCOPE',
'    where REFERENCE_ID = :P122_FOLDER_CLASS_ID',
'      and REFERENCE_TYPE = ''FOLDER_CLASS'';',
unistr('    --\6587\4EF6'),
'     for item IN (select FOLDER_ID from STS_FOLDER where FOLDER_LIB_ID =:P122_FOLDER_LIB_ID) loop',
'         insert into STS_SCOPE(REFERENCE_ID,',
'                          REFERENCE_TYPE,',
'                          USER_ID,',
'                          SOURCE_USER_ID,',
'                          PERMISSIONS_TYPE,',
'                          ROLE_ID,',
'                          CREATED_BY,',
'                          CREATION_DATE,',
'                          UPDATED_BY,',
'                          UPDATE_DATE,',
'                          RANGE_TYPE,',
'                          RANGE_ID)',
'    select item.FOLDER_ID,',
'           ''FOLDER'',',
'           USER_ID,',
'           :MPF_USER_ID,',
'           PERMISSIONS_TYPE,',
'           ROLE_ID,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           :MPF_USER_ID,',
'           SYSDATE,',
'           RANGE_TYPE,',
'           RANGE_ID',
'    from STS_SCOPE',
'    where REFERENCE_ID = :P122_FOLDER_CLASS_ID',
'      and REFERENCE_TYPE = ''FOLDER_CLASS'';',
'end loop;',
'FOR ITEM IN (SELECT RANGE_TYPE, RANGE_ID',
'         FROM STS_SCOPE',
'         WHERE REFERENCE_ID = :P122_FOLDER_CLASS_ID',
'           AND REFERENCE_TYPE = ''FOLDER_CLASS''',
'           AND PERMISSIONS_TYPE = ''MANAGE'')',
'LOOP',
unistr('    --\6587\4EF6\5E93\7BA1\7406'),
'    STS_SYNCHRONIZE_ACCOUNTS_PRO(ITEM.RANGE_TYPE, ITEM.RANGE_ID, :MPF_USER_ID, :USER_TENANT, ''FOLDER_LIB'');',
unistr('    --\6587\4EF6\7BA1\7406'),
'    STS_SYNCHRONIZE_ACCOUNTS_PRO(ITEM.RANGE_TYPE, ITEM.RANGE_ID, :MPF_USER_ID, :USER_TENANT, ''FOLDER'');',
'END LOOP;',
'end if;',
'APEX_UTIL.SET_SESSION_STATE(''P122_COUNT'', 1);',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'    ROLLBACK;',
'    V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('    WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FEE\6539\5206\7C7B'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'              :APP_ID, :APP_CODE);',
'    APEX_UTIL.SET_SESSION_STATE(''P122_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P122_FOLDER_CLASS_ID,P122_FOLDER_LIB_ID'
,p_attribute_03=>'P122_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2989452579372361667)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_FOLDER_CLASS_LEVEL NUMBER(20);',
'    V_FOLDER_LIB_NAME  VARCHAR2(45);--BY wxx  2025-04-24',
unistr('    V_FOLDER_CLASS_ID  NUMBER(20); --\539F\6765\7684\5206\7C7BID'),
unistr('    V_FOLDER_CLASS_NAME_OLD  VARCHAR2(45);--\539F\6765\7684\5206\7C7B\540D\79F0'),
unistr('    V_FOLDER_CLASS_NAME_NEW  VARCHAR2(45);--\65B0\7684\5206\7C7B\540D\79F0'),
'    V_RESULT                  NVARCHAR2(4000);',
'    V_JSON                    CLOB;',
'    /**',
' * CREATE BY:LCB',
' * CREATE DATE:',
' * MODIFY BY:WXX',
unistr(' * MODIFY DATE:2025/4/24 11:35  \52A0\4E0A\64CD\4F5C\65E5\5FD7'),
unistr(' * DESCRIBE: \6587\4EF6\5E93\7BA1\7406-\4FEE\6539\5206\7C7B'),
' */',
'BEGIN',
unistr('--     \67E5\8BE2\539F\5206\7C7BID/\6587\4EF6\5E93\540D --BY wxx  2025-04-24'),
'SELECT NVL(FOLDER_CLASS_ID , 0),FOLDER_LIB_NAME INTO V_FOLDER_CLASS_ID,V_FOLDER_LIB_NAME FROM STS_FOLDER_LIB WHERE DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT AND FOLDER_LIB_ID = :P122_FOLDER_LIB_ID;',
unistr('-- \67E5\8BE2\539F\5206\7C7B\540D   --BY wxx  2025-04-24'),
unistr('select NVL(MAX(FOLDER_CLASS_NAME),''\5168\90E8\5206\7C7B'') INTO V_FOLDER_CLASS_NAME_OLD from STS_FOLDER_CLASS where DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT and FOLDER_CLASS_ID = V_FOLDER_CLASS_ID;'),
unistr('    --\67E5\8BE2\5F53\524D\5206\7C7B\7B49\7EA7\3001\540D\79F0  -BY wxx  2025-04-24'),
unistr('    select MAX(FOLDER_CLASS_LEVEL),NVL(MAX(FOLDER_CLASS_NAME),''\5168\90E8\5206\7C7B'') INTO V_FOLDER_CLASS_LEVEL,V_FOLDER_CLASS_NAME_NEW from STS_FOLDER_CLASS where FOLDER_CLASS_ID = :P122_FOLDER_CLASS_ID;'),
unistr('    --\4FEE\6539\6570\636E'),
'    UPDATE STS_FOLDER_LIB SET UPDATE_DATE=SYSDATE,UPDATED_BY=:MPF_USER_ID,FOLDER_CLASS_ID =DECODE(:P122_FOLDER_CLASS_ID,0,null,:P122_FOLDER_CLASS_ID) WHERE FOLDER_LIB_ID = :P122_FOLDER_LIB_ID;',
unistr('--\5199\5165\65E5\5FD7 --BY wxx  2025-04-23'),
'      V_JSON := ''{',
'  "current_name": "'' || V_FOLDER_LIB_NAME || ''",',
'  "old_name": "'' || V_FOLDER_CLASS_NAME_OLD || ''",',
'  "new_name": "'' || V_FOLDER_CLASS_NAME_NEW || ''",',
'  "permission_type": "",',
'  "user_ids": "",',
'  "dept_ids": "",',
'  "range_content": ""',
'    }'';',
'V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
' P_MODULE_CODE => ''FOLDER_LIB'',',
' P_OPERATION_CODE => ''FILE_LIB_CLASS'',',
' P_BEHAVIOR_CODE => ''MODIFY'',',
' P_ENTITY_ID => :P122_FOLDER_LIB_ID,',
' P_EXTRA_PARAMS => V_JSON,',
' P_APP_ID => :APP_ID,',
' P_TENANT_ID => :USER_TENANT,',
' P_SYS_USER_ID =>:MPF_USER_ID',
'     );',
'',
'if V_FOLDER_CLASS_LEVEL > 0 THEN',
unistr('    --\5220\9664\6587\4EF6\5E93\6570\636E'),
'    delete STS_SCOPE where REFERENCE_ID = :P122_FOLDER_LIB_ID and REFERENCE_TYPE = ''FOLDER_LIB'';',
unistr('    --\5220\9664\6587\4EF6\6570\636E'),
'    delete STS_SCOPE where REFERENCE_ID IN (select FOLDER_ID from STS_FOLDER where FOLDER_LIB_ID =:P122_FOLDER_LIB_ID) and REFERENCE_TYPE = ''FOLDER'';',
unistr('    --\6587\4EF6\5E93'),
'    insert into STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,ROLE_ID,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)',
'    select :P122_FOLDER_LIB_ID,''FOLDER_LIB'',USER_ID,:MPF_USER_ID,PERMISSIONS_TYPE,ROLE_ID,:MPF_USER_ID,SYSDATE,:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID',
'    from STS_SCOPE where REFERENCE_ID = :P122_FOLDER_CLASS_ID and REFERENCE_TYPE = ''FOLDER_CLASS'';',
unistr('    --\6587\4EF6'),
'     for item IN (select FOLDER_ID from STS_FOLDER where FOLDER_LIB_ID =:P122_FOLDER_LIB_ID) loop',
'         insert into STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,ROLE_ID,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)',
'    select item.FOLDER_ID,''FOLDER'',USER_ID,:MPF_USER_ID,DECODE(PERMISSIONS_TYPE,''VIEW'',''VIEW_DOWN'',PERMISSIONS_TYPE),ROLE_ID,:MPF_USER_ID,SYSDATE,:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID',
'    from STS_SCOPE where REFERENCE_ID = :P122_FOLDER_CLASS_ID and REFERENCE_TYPE = ''FOLDER_CLASS'';',
'end loop;',
'end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P122_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FEE\6539\5206\7C7B'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P122_COUNT'', -1);',
'END;',
''))
,p_attribute_02=>'P122_FOLDER_CLASS_ID,P122_FOLDER_LIB_ID'
,p_attribute_03=>'P122_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294306601060346136)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P122_COUNT'')>0){',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3294306638148346137)
,p_event_id=>wwv_flow_imp.id(3294306264969346133)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

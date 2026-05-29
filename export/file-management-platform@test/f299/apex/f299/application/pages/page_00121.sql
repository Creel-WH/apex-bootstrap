prompt --application/pages/page_00121
begin
--   Manifest
--     PAGE: 00121
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
 p_id=>121
,p_name=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_alias=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\65B0\589E\6587\4EF6\5E93')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3327763638144768396)
,p_plug_name=>unistr('\6587\4EF6\5E93\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3327763694298768397)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327764248532768402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3327763694298768397)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3327764156471768401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3327763694298768397)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3327763841128768398)
,p_name=>'P121_FOLDER_LIB_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3327763638144768396)
,p_prompt=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3327764303625768403)
,p_name=>'P121_COUNT'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3334739429541586883)
,p_name=>'P121_FOLDER_CLASS_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3327763638144768396)
,p_item_default=>'0'
,p_prompt=>unistr('\9009\62E9\5206\7C7B')
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
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327764435524768404)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3327764156471768401)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327764537721768405)
,p_event_id=>wwv_flow_imp.id(3327764435524768404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3327764649964768406)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3327764248532768402)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327764753436768407)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P121_FOLDER_LIB_NAME''))){',
unistr('    alert(''\6587\4EF6\5E93\540D\79F0\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327764800592768408)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_COUNT   NUMBER(20);',
'BEGIN',
'    SELECT COUNT(FOLDER_LIB_ID)',
'    INTO V_COUNT',
'    FROM STS_FOLDER_LIB',
'    WHERE FOLDER_LIB_NAME = :P121_FOLDER_LIB_NAME',
'      AND TO_CHAR(NVL(SYSTEM_ID, 1)) = NVL(NULLIF(:SYSTEM_ID, ''''), ''1'')',
'      AND TENANT_ID = :USER_TENANT',
'      AND DEL_FLAG = 0;',
'    APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6821\9A8C\6587\4EF6\5E93\540D\79F0'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P121_FOLDER_LIB_NAME'
,p_attribute_03=>'P121_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327764963356768409)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P121_COUNT'')>0){',
unistr('    alert(''\6587\4EF6\5E93\540D\79F0\91CD\590D'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022907981525783911)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG            NVARCHAR2(2000);',
'    V_SCOPE_TYPE         VARCHAR2(2000);',
'    V_FOLDER_LIB_ID      NUMBER(20);',
'    V_FOLDER_CLASS_LEVEL NUMBER(20);',
'BEGIN',
'',
'    select MAX(FOLDER_CLASS_LEVEL),NVL(MAX(SCOPE_TYPE),''ALL'')',
'    INTO V_FOLDER_CLASS_LEVEL,V_SCOPE_TYPE',
'    from STS_FOLDER_CLASS',
'    where FOLDER_CLASS_ID = :P121_FOLDER_CLASS_ID;',
'',
'    insert into STS_FOLDER_LIB(FOLDER_LIB_NAME,',
'                               FOLDER_CLASS_ID,',
'                               FOLDER_LIB_STATUS,',
'                               DEL_FLAG,',
'                               SYSTEM_ID,',
'                               TENANT_ID,',
'                               CREATED_BY,',
'                               CREATION_DATE,',
'                               SCOPE_TYPE)',
'    values (:P121_FOLDER_LIB_NAME,',
'            DECODE(:P121_FOLDER_CLASS_ID,0,null,:P121_FOLDER_CLASS_ID),',
'            ''NORMAL'',',
'            0,',
'            NVL(:SYSTEM_ID, 1),',
'            :USER_TENANT,',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            V_SCOPE_TYPE)',
'    returning FOLDER_LIB_ID into V_FOLDER_LIB_ID;',
'',
'    if V_FOLDER_CLASS_LEVEL > 0 THEN',
'        insert into STS_SCOPE(REFERENCE_ID,',
'                              REFERENCE_TYPE,',
'                              USER_ID,',
'                              SOURCE_USER_ID,',
'                              PERMISSIONS_TYPE,',
'                              ROLE_ID,',
'                              CREATED_BY,',
'                              CREATION_DATE,',
'                              UPDATED_BY,',
'                              UPDATE_DATE,',
'                              RANGE_TYPE,',
'                              RANGE_ID)',
'        select V_FOLDER_LIB_ID,',
'               ''FOLDER_LIB'',',
'               USER_ID,',
'               :MPF_USER_ID,',
'               PERMISSIONS_TYPE,',
'               ROLE_ID,',
'               :MPF_USER_ID,',
'               SYSDATE,',
'               :MPF_USER_ID,',
'               SYSDATE,',
'               RANGE_TYPE,',
'               RANGE_ID',
'        from STS_SCOPE',
'        where REFERENCE_ID = :P121_FOLDER_CLASS_ID',
'          and REFERENCE_TYPE = ''FOLDER_CLASS'';',
'',
'    FOR ITEM IN (SELECT RANGE_TYPE, RANGE_ID',
'             FROM STS_SCOPE',
'             WHERE REFERENCE_ID = :P121_FOLDER_CLASS_ID',
'               AND REFERENCE_TYPE = ''FOLDER_CLASS''',
'               AND PERMISSIONS_TYPE = ''MANAGE'')',
'    LOOP',
unistr('        --\6587\4EF6\5E93\7BA1\7406'),
'        STS_SYNCHRONIZE_ACCOUNTS_PRO(ITEM.RANGE_TYPE, ITEM.RANGE_ID, :MPF_USER_ID, :USER_TENANT, ''FOLDER_LIB'');',
unistr('        --\6587\4EF6\7BA1\7406'),
'        STS_SYNCHRONIZE_ACCOUNTS_PRO(ITEM.RANGE_TYPE, ITEM.RANGE_ID, :MPF_USER_ID, :USER_TENANT, ''FOLDER'');',
'    END LOOP;',
'    ',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6587\4EF6\5E93'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', -1);',
'END;',
''))
,p_attribute_02=>'P121_FOLDER_LIB_NAME,P121_FOLDER_CLASS_ID'
,p_attribute_03=>'P121_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022908833766783919)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG            NVARCHAR2(2000);',
'    V_FOLDER_LIB_ID      NUMBER(20);',
'    V_FOLDER_CLASS_LEVEL NUMBER(20);',
'    V_ROW_COUNT                 NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID           NUMBER(20) := 0;',
'    V_RESULT                    NVARCHAR2(4000);',
'    V_JSON                      CLOB       := ''{',
'        "current_name": "''|| :P121_FOLDER_LIB_NAME ||''",',
'        "old_name": "",',
'        "new_name": "",',
'        "permission_type": "",',
'        "user_ids": "",',
'        "dept_ids": "",',
'        "range_content": ""',
'    }'';',
'/**',
'* CREATE BY: DUL',
'* CREATE DATE: 2025/3/19 11:36',
'* MODIFY BY: WXX',
'* MODIFY DATE:2025/4/23 9:51',
unistr('* DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6279\91CF\5220\9664\64CD\4F5C  \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
'*/',
'BEGIN',
'',
'    select MAX(FOLDER_CLASS_LEVEL)',
'    INTO V_FOLDER_CLASS_LEVEL',
'    from STS_FOLDER_CLASS',
'    where FOLDER_CLASS_ID = :P121_FOLDER_CLASS_ID;',
unistr('    --\65B0\589E\6587\4EF6\5E93'),
'    insert into STS_FOLDER_LIB(FOLDER_LIB_NAME,',
'                               FOLDER_CLASS_ID,',
'                               FOLDER_LIB_STATUS,',
'                               DEL_FLAG,',
'                               SYSTEM_ID,',
'                               TENANT_ID,',
'                               CREATED_BY,',
'                               CREATION_DATE,',
'                               SCOPE_TYPE)',
'    values (:P121_FOLDER_LIB_NAME,',
'            DECODE(:P121_FOLDER_CLASS_ID,0,null,:P121_FOLDER_CLASS_ID),',
'            ''NORMAL'',',
'            0,',
'            NVL(:SYSTEM_ID, 1),',
'            :USER_TENANT,',
'            :MPF_USER_ID,',
'            SYSDATE,',
'            ''USER'')',
'    returning FOLDER_LIB_ID into V_FOLDER_LIB_ID;',
'',
'    if V_FOLDER_CLASS_LEVEL > 0 THEN',
unistr('        --\540C\6B65\6743\9650'),
'        insert into STS_SCOPE(REFERENCE_ID,',
'                              REFERENCE_TYPE,',
'                              USER_ID,',
'                              SOURCE_USER_ID,',
'                              PERMISSIONS_TYPE,',
'                              ROLE_ID,',
'                              CREATED_BY,',
'                              CREATION_DATE,',
'                              UPDATED_BY,',
'                              UPDATE_DATE,',
'                              RANGE_TYPE,',
'                              RANGE_ID)',
'        select V_FOLDER_LIB_ID,',
'               ''FOLDER_LIB'',',
'               USER_ID,',
'               :MPF_USER_ID,',
'               PERMISSIONS_TYPE,',
'               ROLE_ID,',
'               :MPF_USER_ID,',
'               SYSDATE,',
'               :MPF_USER_ID,',
'               SYSDATE,',
'               RANGE_TYPE,',
'               RANGE_ID',
'        from STS_SCOPE',
'        where REFERENCE_ID = :P121_FOLDER_CLASS_ID',
'          and REFERENCE_TYPE = ''FOLDER_CLASS'';',
'',
unistr('            V_ROW_COUNT := SQL%ROWCOUNT; --BY wxx 2025-04-24 \65B0\589E\901A\7528\64CD\4F5C\65E5\5FD7'),
unistr('   if V_ROW_COUNT > 0 then --\5B58\5165\65E5\5FD7'),
'   V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                    P_MODULE_CODE => ''FOLDER_CLASS'',',
'                    P_OPERATION_CODE => ''CLASSIFICATION'',',
'                    P_BEHAVIOR_CODE => ''CREATE'',',
'                    P_ENTITY_ID => V_FOLDER_CLASS_ID,',
'                    P_EXTRA_PARAMS => V_JSON,',
'                    P_APP_ID => :APP_ID,',
'                    P_TENANT_ID => :USER_TENANT,',
'                    P_SYS_USER_ID =>:MPF_USER_ID',
'                        );',
'            end if;',
'',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', 1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6587\4EF6\5E93'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P121_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P121_FOLDER_LIB_NAME,P121_FOLDER_CLASS_ID'
,p_attribute_03=>'P121_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327765078619768411)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P121_COUNT'')>0){',
unistr('    alert(''\6DFB\52A0\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\6DFB\52A0\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3327765262923768412)
,p_event_id=>wwv_flow_imp.id(3327764649964768406)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

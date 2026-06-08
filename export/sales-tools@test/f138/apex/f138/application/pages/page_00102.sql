prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>102
,p_name=>unistr('\521B\5EFA\5206\7C7B')
,p_alias=>unistr('\521B\5EFA\5206\7C7B')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\521B\5EFA\5206\7C7B')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4233832168507986464)
,p_plug_name=>unistr('\521B\5EFA\5206\7C7B')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249598671653239718)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'STS_FOLDER_CLASS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4233839558357986472)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249564820623239706)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4233839922654986472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4233839558357986472)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4233842097137986473)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4233839558357986472)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P102_FOLDER_CLASS_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233823426227977376)
,p_name=>'P102_ROW_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233832544595986465)
,p_name=>'P102_FOLDER_CLASS_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'FOLDER_CLASS_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233832959715986467)
,p_name=>'P102_FOLDER_CLASS_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_prompt=>unistr('\5206\7C7B\540D\79F0')
,p_placeholder=>unistr('\5FC5\586B\9879')
,p_source=>'FOLDER_CLASS_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>50
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(10249679308095239765)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233833321521986468)
,p_name=>'P102_FOLDER_CLASS_LEVEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'FOLDER_CLASS_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233833694042986468)
,p_name=>'P102_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233834093126986469)
,p_name=>'P102_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233834564369986469)
,p_name=>'P102_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233834965160986469)
,p_name=>'P102_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233835309065986470)
,p_name=>'P102_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233835730664986470)
,p_name=>'P102_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4233836115365986470)
,p_name=>'P102_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_item_source_plug_id=>wwv_flow_imp.id(4233832168507986464)
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4233840068937986472)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4233839922654986472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233840793620986473)
,p_event_id=>wwv_flow_imp.id(4233840068937986472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4233823129116977373)
,p_name=>unistr('\65B0\589E\64CD\4F5C')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(4233842097137986473)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233823259884977374)
,p_event_id=>wwv_flow_imp.id(4233823129116977373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P102_FOLDER_CLASS_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\5206\7C7B\540D\79F0\FF01'');'),
'    return false;',
'} else if ($v(''P102_FOLDER_CLASS_NAME'').length < 1 || $v(''P102_FOLDER_CLASS_NAME'').length > 10) {',
unistr('    alert(''\5206\7C7B\540D\79F0\FF1A\6700\5C11\8F93\51651\4E2A\5B57\7B26\FF0C\6700\591A\4E0D\8D85\8FC710\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233823627853977378)
,p_event_id=>wwv_flow_imp.id(4233823129116977373)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG                 NVARCHAR2(2000);',
'V_ROW_COUNT               NUMBER(10) := 0;',
'V_FOLDER_CLASS_ID         NUMBER(20) := 0;',
unistr('V_FOLDER_CLASS_NAME_COUNT NUMBER(20) := 0;-- \6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'V_ACTION_NAME             NVARCHAR2(100);',
'V_ACTION_CODE             NVARCHAR2(100);',
'V_MODULE_NAME             NVARCHAR2(100);',
'V_MODULE_CODE             NVARCHAR2(100);',
'V_FOLDER_CLASS_NAME       NVARCHAR2(100);',
'V_SORT                    NUMBER(10);',
'/**',
'* CREATE BY: DUL',
'* CREATE DATE: 2025/3/19 11:36',
'* MODIFY BY:',
'* MODIFY DATE:',
unistr('* DESCRIPTION: \81EA\5B9A\4E49\5206\7C7B-\6279\91CF\5220\9664\64CD\4F5C'),
'*/',
'BEGIN',
unistr('--\67E5\8BE2\6700\5927\7684\6392\5E8F\503C'),
'SELECT NVL(MAX(SORT), 0) + 1',
'INTO V_SORT',
'FROM STS_FOLDER_CLASS',
'WHERE TENANT_ID = :USER_TENANT',
'AND DEL_FLAG = 0;',
'',
unistr('-- #\6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'SELECT COUNT(1)',
'INTO V_FOLDER_CLASS_NAME_COUNT',
'FROM STS_FOLDER_CLASS',
'WHERE FOLDER_CLASS_NAME = :P102_FOLDER_CLASS_NAME',
'AND DEL_FLAG = 0',
'AND TENANT_ID = :USER_TENANT;',
'',
'if V_FOLDER_CLASS_NAME_COUNT > 0 then',
unistr('V_ROW_COUNT := -2; -- \91CD\590D\68C0\9A8C'),
'else',
unistr('-- #\64CD\4F5C\65E5\5FD7\8BB0\5F55 \521B\5EFA\5206\7C7B\64CD\4F5C'),
unistr('-- \884C\4E3A\FF08\521B\5EFA\FF09'),
'select CONFIG_NAME, CONFIG_CODE',
'INTO V_ACTION_NAME,V_ACTION_CODE',
'from STS_SYS_CONFIG',
'where CONFIG_TYPE = 15',
'and CONFIG_CODE = ''CREATE''',
'and IS_ENABLE = 1',
'and DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT;',
unistr('-- \5185\5BB9\FF08\81EA\5B9A\4E49\5206\7C7B\FF09'),
'select CONFIG_NAME, CONFIG_CODE',
'INTO V_MODULE_NAME,V_MODULE_CODE',
'from STS_SYS_CONFIG',
'where CONFIG_TYPE = 30',
'and CONFIG_CODE = ''FOLDER_CLASS''',
'and IS_ENABLE = 1',
'and DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT;',
'',
unistr('-- #\65B0\589E\5206\7C7B\64CD\4F5C'),
'insert into STS_FOLDER_CLASS(folder_class_name, folder_class_level, tenant_id, created_by, creation_date,',
'                     updated_by, update_date,SORT)',
'values (:P102_FOLDER_CLASS_NAME, 1, :USER_tenant, :MPF_USER_ID, sysdate, :MPF_USER_ID, sysdate,V_SORT)',
'returning FOLDER_CLASS_ID INTO V_FOLDER_CLASS_ID;',
'if V_FOLDER_CLASS_ID > 0 then',
unistr('-- #\65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C'),
unistr('insert into STS_OPERATION_LOG (operation_action, -- \589E\5220\6539\67E5\3001\79FB\9664\3001\6062\590D\3001\5F52\6863\7B49'),
unistr('                           operation_module, operation_content, -- \5220\9664\5206\7C7B\300C\6280\672F\652F\6301\300D'),
'                           OPERATION_REFERENCE_ID,tenant_id, created_by, creation_date, updated_by, update_date)',
'values (V_ACTION_CODE, V_MODULE_CODE,',
unistr('    V_ACTION_NAME || V_MODULE_NAME || ''\300C'' || :P102_FOLDER_CLASS_NAME || ''\300D'',V_FOLDER_CLASS_ID, :USER_TENANT, :MPF_USER_ID,'),
'    sysdate, :MPF_USER_ID, sysdate);',
'',
unistr('-- #\521B\5EFA\53EF\89C1\8303\56F4\64CD\4F5C \8D85\7EA7\7BA1\7406\5458\9ED8\8BA4\6DFB\52A0\6743\9650'),
'-- for c_user_id in (select USER_ID,ROLE_ID from STS_USER_ROLE',
'--               where ROLE_ID in (select ROLE_ID from STS_ROLE where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'--                 and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'-- loop',
'--     insert into STS_SCOPE(reference_id, reference_type, user_id, source_user_id, permissions_type, role_id, created_by, creation_date, updated_by, update_date)',
'--     values (V_FOLDER_CLASS_ID, ''FOLDER_CLASS'', c_user_id.USER_ID, :MPF_USER_ID, ''MANAGE'',c_user_id.ROLE_ID, :MPF_USER_ID, sysdate,:MPF_USER_ID,sysdate);',
'-- end loop;',
'end if;',
'V_ROW_COUNT := SQL%ROWCOUNT;',
'end if;',
'APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', V_ROW_COUNT);',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'     :APP_NAME, :APP_ID, :APP_CODE);',
'APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P102_FOLDER_CLASS_NAME'
,p_attribute_03=>'P102_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3478973879016337125)
,p_event_id=>wwv_flow_imp.id(4233823129116977373)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG                 NVARCHAR2(2000);',
'    V_ROW_COUNT               NUMBER(10) := 0;',
'    V_FOLDER_CLASS_ID         NUMBER(20) := 0;',
unistr('    V_FOLDER_CLASS_NAME_COUNT NUMBER(20) := 0;-- \6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'    V_SORT                    NUMBER(10);',
'    V_RESULT                  NVARCHAR2(4000);',
'    V_JSON                    CLOB       := ''{',
'        "current_name": "'' || :P102_FOLDER_CLASS_NAME || ''",',
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
'* MODIFY BY:WXX',
'* MODIFY DATE:2025/4/23 8:53',
unistr('* DESCRIPTION:\64CD\4F5C\65E5\5FD7102 \81EA\5B9A\4E49\5206\7C7B-\65B0\589E\64CD\4F5C'),
'*/',
'BEGIN',
unistr('    --\67E5\8BE2\6700\5927\7684\6392\5E8F\503C'),
'    SELECT NVL(MAX(SORT), 0) + 1',
'    INTO V_SORT',
'    FROM STS_FOLDER_CLASS',
'    WHERE TENANT_ID = :USER_TENANT',
'      AND DEL_FLAG = 0;',
'',
unistr('-- #\6821\9A8C\5206\7C7B\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT(1)',
'    INTO V_FOLDER_CLASS_NAME_COUNT',
'    FROM STS_FOLDER_CLASS',
'    WHERE FOLDER_CLASS_NAME = :P102_FOLDER_CLASS_NAME',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
'    if V_FOLDER_CLASS_NAME_COUNT > 0 then',
unistr('        V_ROW_COUNT := -2; -- \91CD\590D\68C0\9A8C'),
'    else',
unistr('-- #\65B0\589E\5206\7C7B\64CD\4F5C'),
'        insert into STS_FOLDER_CLASS(folder_class_name, folder_class_level, tenant_id, created_by, creation_date,',
'                                     updated_by, update_date, SORT)',
'        values (:P102_FOLDER_CLASS_NAME, 1, :USER_tenant, :MPF_USER_ID, sysdate, :MPF_USER_ID, sysdate, V_SORT)',
'        returning FOLDER_CLASS_ID INTO V_FOLDER_CLASS_ID;',
unistr('        -- \5728 COMMIT \4E4B\524D\83B7\53D6\53D7\5F71\54CD\7684\884C\6570'),
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'',
'        if V_FOLDER_CLASS_ID > 0 then',
unistr('-- #\65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C --\65B0\589E\6210\529F\FF0C\5B58\5165\65E5\5FD7  --BY wxx  2025-04-23'),
'            V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
'                    P_MODULE_CODE => ''FOLDER_CLASS'',',
'                    P_OPERATION_CODE => ''CLASSIFICATION'',',
'                    P_BEHAVIOR_CODE => ''CREATE'',',
'                    P_ENTITY_ID => V_FOLDER_CLASS_ID,',
'                    P_EXTRA_PARAMS => V_JSON,',
'                    P_APP_ID => 126,',
'                    P_TENANT_ID => 3,',
'                    P_SYS_USER_ID =>:MPF_USER_ID',
'                        );',
'            COMMIT;',
unistr('            -- #\521B\5EFA\53EF\89C1\8303\56F4\64CD\4F5C \8D85\7EA7\7BA1\7406\5458\9ED8\8BA4\6DFB\52A0\6743\9650'),
'-- for c_user_id in (select USER_ID,ROLE_ID from STS_USER_ROLE',
'--               where ROLE_ID in (select ROLE_ID from STS_ROLE where ROLE_TYPE = ''SUPER_ADMIN'' and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'--                 and IS_ENABLE = 1 and DEL_FLAG = 0 and TENANT_ID = :USER_TENANT)',
'-- loop',
'--     insert into STS_SCOPE(reference_id, reference_type, user_id, source_user_id, permissions_type, role_id, created_by, creation_date, updated_by, update_date)',
'--     values (V_FOLDER_CLASS_ID, ''FOLDER_CLASS'', c_user_id.USER_ID, :MPF_USER_ID, ''MANAGE'',c_user_id.ROLE_ID, :MPF_USER_ID, sysdate,:MPF_USER_ID,sysdate);',
'-- end loop;',
'        end if;',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', V_ROW_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID, ''DEBUG'', V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P102_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P102_FOLDER_CLASS_NAME'
,p_attribute_03=>'P102_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(10249504556709239649)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233823327164977375)
,p_event_id=>wwv_flow_imp.id(4233823129116977373)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P102_ROW_COUNT'') > 0) {',
unistr('    alert(''\65B0\589E\6210\529F\FF01'');'),
'} else if ($v(''P102_ROW_COUNT'') == -2) {',
unistr('    alert(''\5206\7C7B\540D\79F0\4E0D\80FD\91CD\590D\FF01'');'),
'    $(''#P102_FOLDER_CLASS_NAME'').focus();',
'    return false;',
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233823487075977377)
,p_event_id=>wwv_flow_imp.id(4233823129116977373)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4233823745675977379)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4234068169830337673)
,p_event_id=>wwv_flow_imp.id(4233823745675977379)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_FOLDER_CLASS_NAME'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4233823789140977380)
,p_event_id=>wwv_flow_imp.id(4233823745675977379)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P102_FOLDER_CLASS_NAME'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4233842927370986474)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4233832168507986464)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \81EA\5B9A\4E49\5206\7C7B \8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(10249504556709239649)
,p_internal_uid=>453391241961327520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4233843373696986474)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>453391688287327520
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4233842513548986474)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4233832168507986464)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \81EA\5B9A\4E49\5206\7C7B \8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453390828139327520
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00204
begin
--   Manifest
--     PAGE: 00204
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
 p_id=>204
,p_name=>unistr('\5904\7406\53CD\9988-\65E7\7248\8868\5355')
,p_alias=>unistr('\5904\7406\53CD\9988-\65E7\7248\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5904\7406\53CD\9988-\65E7\7248\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697989722075188320)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var files = document.getElementById(''P202_FILE'');',
'files.onchange = async () => {',
'    for (var k = 0; k < files.files.length; k++) {',
'        const file = files.files[k];',
'        ',
unistr('        // \83B7\53D6\6587\4EF6\4FE1\606F'),
unistr('        var fileName = file.name; // \5B8C\6574\6587\4EF6\540D\FF08\5E26\6269\5C55\540D\FF09'),
unistr('        var fileFormat = fileName.split(''.'').pop().toLowerCase(); // \6587\4EF6\6269\5C55\540D/\683C\5F0F'),
unistr('        var fileNameWithoutExt = fileName.substring(0, fileName.lastIndexOf(''.'')); // \4E0D\5E26\6269\5C55\540D\7684\6587\4EF6\540D'),
'        ',
unistr('        // \8BBE\7F6E\5230APEX\9875\9762\9879'),
unistr('        apex.item(''P202_FILE_NAME'').setValue(fileNameWithoutExt); // \6587\4EF6\540D\79F0'),
unistr('        apex.item(''P202_FILE_FORMAT'').setValue(fileFormat); // \6587\4EF6\683C\5F0F'),
'        ',
unistr('        // \83B7\53D6OSS\914D\7F6E\5E76\4E0A\4F20\6587\4EF6'),
'        const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', ',
'            () => updateImage([file], []));',
'        ',
'        var encodedFileName = encodeURIComponent(file.name);',
'        var newData = data.replace(file.name, encodedFileName);',
'        ',
unistr('        // \8BBE\7F6E\6587\4EF6URL'),
unistr('        apex.item(''P202_FILE_URL'').setValue(newData); // \6587\4EF6\5B58\50A8\5730\5740'),
'        ',
unistr('        console.log(''\6587\4EF6\540D\79F0:'', fileNameWithoutExt);'),
unistr('        console.log(''\6587\4EF6\683C\5F0F:'', fileFormat);'),
unistr('        console.log(''\6587\4EF6URL:'', newData);'),
'    }',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4165723354888671365)
,p_plug_name=>unistr('\5904\7406\53CD\9988')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4165725292618671384)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714861085952168561)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263723013738954390)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4165725292618671384)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3263723472829954393)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4165725292618671384)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4165723773391671367)
,p_name=>'P204_FEEDBACK_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4165723354888671365)
,p_prompt=>unistr('\5904\7406\65B9\6848')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>unistr('FEEDBACK_TYPE\FF08\5904\7406\65B9\6848\FF09')
,p_lov=>'.'||wwv_flow_imp.id(3700250836255194926)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9714976714653168621)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(4165723876886671368)
,p_name=>'P204_REMARK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4165723354888671365)
,p_prompt=>unistr('\8BF4\660E')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9714976264425168620)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4165725030380671379)
,p_name=>'P204_FILE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4165723354888671365)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4165726900714671387)
,p_name=>'P204_FEEDBACK_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170049020595206554)
,p_name=>'P204_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170049377336206558)
,p_name=>'P204_FILE_URL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170049510265206559)
,p_name=>'P204_FILE_FORMAT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4170049559054206560)
,p_name=>'P204_FILE_NAME'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263725571024954394)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263726034960954396)
,p_event_id=>wwv_flow_imp.id(3263725571024954394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_FEEDBACK_TYPE,P204_REMARK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEEDBACK_TYPE,REMARK from STS_FEEDBACK',
'where TENANT_ID = :USER_TENANT',
'and FEEDBACK_ID = :P204_FEEDBACK_ID',
';'))
,p_attribute_07=>'P204_FEEDBACK_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263726467818954396)
,p_name=>unistr('\4E0D\540C\5904\7406\65B9\6848\5BF9\5E94\4E0D\540C\5185\5BB9')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P204_FEEDBACK_TYPE'
,p_condition_element=>'P204_FEEDBACK_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263726976729954396)
,p_event_id=>wwv_flow_imp.id(3263726467818954396)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \663E\793A\8BF4\660E')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263727443497954397)
,p_event_id=>wwv_flow_imp.id(3263726467818954396)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \5C55\793A\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_FILE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263727932483954397)
,p_event_id=>wwv_flow_imp.id(3263726467818954396)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \9690\85CF\8BF4\660E')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263728436174954397)
,p_event_id=>wwv_flow_imp.id(3263726467818954396)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \9690\85CF\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P204_FILE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263728816756954397)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3263723013738954390)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263729352915954397)
,p_event_id=>wwv_flow_imp.id(3263728816756954397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4165723354888671365)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263729755863954397)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3263723472829954393)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263730233044954399)
,p_event_id=>wwv_flow_imp.id(3263729755863954397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\8868\5355\5B57\6BB5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P204_FEEDBACK_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\5904\7406\65B9\6848\FF01'');'),
'    return false;',
'} else{',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263730695340954399)
,p_event_id=>wwv_flow_imp.id(3263729755863954397)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7-\4F7F\7528\6700\65B0\4E0A\4F20\6587\4EF6url\3001name\3001file_format')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('V_ERR_MSG         NVARCHAR2(2000); -- \5F02\5E38\4FE1\606F\63CF\8FF0'),
'V_ROW_COUNT       NUMBER(10);',
unistr('V_FOLDER_ID_OLD   NUMBER(20); -- \539F\6709\7684\6587\4EF6ID'),
unistr('V_FOLDER_ID_NEW   NUMBER(20); -- \65B0\4E0A\4F20\7684\6587\4EF6ID'),
unistr('V_FOLDER_LIB_ID   NUMBER(20); -- \4E0A\4F20\7684\6587\4EF6\5E93'),
'V_FOLDER_STATUS   VARCHAR2(255);',
'V_DEL_DATE        DATE;',
'V_PLANS_FILE_TYPE NUMBER(1);',
'V_PLANS_FILE_DATE DATE;',
'V_REMARK          VARCHAR2(500);',
'V_SCOPE_TYPE      NVARCHAR2(20);',
'V_FOLDER_CONTENT  CLOB;',
'/**',
' * CREATE BY: WXX',
' * CREATE DATE: 2025/3/24 15:56   2025/3/25 10:39',
unistr(' * DESCRIBE: \66F4\65B0\53CD\9988-\53CD\9988\7BA1\7406-\521D\59CB\53163.0 \4F7F\7528\6700\65B0\4E0A\4F20\6587\4EF6url\3001name\3001file_format,\539F\6587\4EF6\8981\5F52\6863'),
' */',
'BEGIN',
unistr('IF :P204_FEEDBACK_TYPE = 1 THEN --\9700\8981\66F4\65B0\6587\4EF6'),
unistr('-- \5148\67E5\51FA\539F\6765\7684\6587\4EF6ID'),
'    SELECT FOLDER_ID',
'    INTO V_FOLDER_ID_OLD',
'    FROM STS_FEEDBACK',
'    WHERE FEEDBACK_ID = :P204_FEEDBACK_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \6839\636E\6587\4EF6ID\67E5\51FA\539F\6765\7684\6587\4EF6\4FE1\606F\5E76\5B58\50A8\5728\53D8\91CF\4E2D'),
'    SELECT FOLDER_LIB_ID,',
'           FOLDER_STATUS,',
'           DEL_DATE,',
'           PLANS_FILE_TYPE,',
'           PLANS_FILE_DATE,',
'           REMARK,',
'           SCOPE_TYPE,',
'           FOLDER_CONTENT',
'    INTO V_FOLDER_LIB_ID,',
'        V_FOLDER_STATUS,',
'        V_DEL_DATE,',
'        V_PLANS_FILE_TYPE,',
'        V_PLANS_FILE_DATE,',
'        V_REMARK,',
'        V_SCOPE_TYPE,',
'        V_FOLDER_CONTENT',
'    FROM STS_FOLDER',
'    WHERE FOLDER_ID = V_FOLDER_ID_OLD',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \65B0\589E\4E00\6761\6587\4EF6\8BB0\5F55'),
'    INSERT INTO STS_FOLDER (FOLDER_LIB_ID, FOLDER_NAME, FOLDER_FORMAT,',
'                            FOLDER_STATUS, FOLDER_URL, DEL_FLAG, DEL_DATE, UPLOAD_DATE, PLANS_FILE_TYPE,',
'                            PLANS_FILE_DATE,',
'                            REMARK, TENANT_ID, CREATED_BY, CREATION_DATE, UPDATE_DATE, SCOPE_TYPE,',
'                            FOLDER_ID_OLD, FOLDER_CONTENT)',
'    VALUES (V_FOLDER_LIB_ID, :P204_FILE_NAME, :P204_FILE_FORMAT,',
'            V_FOLDER_STATUS, :P204_FILE_URL, 0, V_DEL_DATE, SYSDATE, V_PLANS_FILE_TYPE, V_PLANS_FILE_DATE,',
'            V_REMARK, :USER_TENANT, :MPF_USER_ID, SYSDATE, SYSDATE, V_SCOPE_TYPE,',
'            V_FOLDER_ID_OLD, V_FOLDER_CONTENT)',
'    RETURNING FOLDER_ID INTO V_FOLDER_ID_NEW;',
unistr('    --     \539F\6587\4EF6\5F52\6863'),
'    UPDATE STS_FOLDER',
'    SET UPDATED_BY    =:MPF_USER_ID,',
'        UPDATE_DATE=SYSDATE,',
'        FOLDER_STATUS = 5',
'    WHERE FOLDER_ID = V_FOLDER_ID_OLD',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \5C06\65B0\589E\7684\6587\4EF6ID\66FF\6362\53CD\9988\8868\7684\65E7\6587\4EF6ID'),
'    UPDATE STS_FEEDBACK',
'    SET UPDATED_BY      = :MPF_USER_ID,',
'        UPDATE_DATE     = SYSDATE,',
'        FOLDER_ID       = V_FOLDER_ID_NEW,',
'        STATUS          = 1,',
'        PROCESS_DATE    = SYSDATE,',
'        PROCESS_USER_ID = :MPF_USER_ID,',
'        FEEDBACK_TYPE   = :P204_FEEDBACK_TYPE',
'    WHERE FEEDBACK_ID = :P204_FEEDBACK_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr(' ELSE --\4E0D\9700\8981\66F4\65B0\6587\4EF6'),
'     UPDATE STS_FEEDBACK',
'     SET UPDATED_BY      = :MPF_USER_ID,',
'         UPDATE_DATE     = SYSDATE,',
'         STATUS          = 1,',
'         PROCESS_DATE    = SYSDATE,',
'         PROCESS_USER_ID = :MPF_USER_ID,',
'         FEEDBACK_TYPE   = :P204_FEEDBACK_TYPE,',
'         FEEDBACK_CONTENT = NVL(FEEDBACK_CONTENT, :P204_REMARK),',
'         REMARK          = :P204_REMARK',
'     WHERE FEEDBACK_ID = :P204_FEEDBACK_ID',
'       AND DEL_FLAG = 0',
'       AND TENANT_ID = :USER_TENANT;',
'    END IF;',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P204_ROW_COUNT'', V_ROW_COUNT);',
unistr('    -- \63D0\4EA4\4E8B\52A1'),
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
unistr('        -- \56DE\6EDA\4E8B\52A1'),
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P204_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        -- \5199\5165\5F02\5E38\65E5\5FD7'),
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53CD\9988\7BA1\7406-\5904\7406\64CD\4F5C'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P204_FEEDBACK_ID,P204_FEEDBACK_TYPE,P204_REMARK,P204_FILE_URL,P204_FILE_NAME,P204_FILE_FORMAT'
,p_attribute_03=>'P204_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263732247762954401)
,p_event_id=>wwv_flow_imp.id(3263729755863954397)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7-\4F7F\7528\6700\65B0\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('V_ERR_MSG         NVARCHAR2(2000); -- \5F02\5E38\4FE1\606F\63CF\8FF0'),
'V_ROW_COUNT       NUMBER(10);',
unistr('V_FOLDER_ID_OLD   NUMBER(20); -- \539F\6709\7684\6587\4EF6ID'),
unistr('V_FOLDER_ID_NEW   NUMBER(20); -- \65B0\4E0A\4F20\7684\6587\4EF6ID'),
unistr('V_FOLDER_LIB_ID   NUMBER(20); -- \4E0A\4F20\7684\6587\4EF6\5E93'),
'V_FOLDER_STATUS   VARCHAR2(255);',
'V_DEL_DATE        DATE;',
'V_PLANS_FILE_TYPE NUMBER(1);',
'V_PLANS_FILE_DATE DATE;',
'V_REMARK          VARCHAR2(500);',
'V_SCOPE_TYPE      NVARCHAR2(20);',
'V_FOLDER_CONTENT  CLOB;',
'V_FEEDBACK_CONTENT VARCHAR2(2000); --modify:wxx 2025/4/23',
'V_RESULT          NVARCHAR2(4000);',
'V_JSON            CLOB;',
'/*** CREATE BY: WXX',
' * CREATE DATE: 2025/3/24 15:56   2025/3/25 10:39',
unistr(' * MODIFY DATE:2025/4/23 11:07  \52A0\4E0A\64CD\4F5C\65E5\5FD7'),
unistr(' * DESCRIBE: \66F4\65B0\53CD\9988-\53CD\9988\7BA1\7406-\521D\59CB\53163.0 \4F7F\7528\6700\65B0\4E0A\4F20\6587\4EF6url\3001name\3001file_format,\539F\6587\4EF6\8981\5F52\6863'),
' */',
'BEGIN',
unistr('    IF :P204_FEEDBACK_TYPE = 1 THEN --\9700\8981\66F4\65B0\6587\4EF6'),
unistr(' -- \5148\67E5\51FA\539F\6765\7684\6587\4EF6ID\548C\53CD\9988\5185\5BB9'),
' SELECT FOLDER_ID,FEEDBACK_CONTENT INTO V_FOLDER_ID_OLD,V_FEEDBACK_CONTENT FROM STS_FEEDBACK WHERE FEEDBACK_ID = :P204_FEEDBACK_ID AND DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT;',
unistr(' -- \6839\636E\6587\4EF6ID\67E5\51FA\539F\6765\7684\6587\4EF6\4FE1\606F\5E76\5B58\50A8\5728\53D8\91CF\4E2D'),
' SELECT FOLDER_LIB_ID,FOLDER_STATUS,DEL_DATE,PLANS_FILE_TYPE,PLANS_FILE_DATE,REMARK,SCOPE_TYPE,FOLDER_CONTENT INTO V_FOLDER_LIB_ID,V_FOLDER_STATUS,V_DEL_DATE,V_PLANS_FILE_TYPE,V_PLANS_FILE_DATE,V_REMARK,V_SCOPE_TYPE,V_FOLDER_CONTENT FROM STS_FOLDER W'
||'HERE FOLDER_ID = V_FOLDER_ID_OLD AND DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT;',
unistr(' -- \65B0\589E\4E00\6761\6587\4EF6\8BB0\5F55'),
' INSERT INTO STS_FOLDER (FOLDER_LIB_ID, FOLDER_NAME, FOLDER_FORMAT,FOLDER_STATUS, FOLDER_URL, DEL_FLAG, DEL_DATE, UPLOAD_DATE, PLANS_FILE_TYPE,PLANS_FILE_DATE,REMARK, TENANT_ID, CREATED_BY, CREATION_DATE, UPDATE_DATE, SCOPE_TYPE,FOLDER_ID_OLD, FOLDER'
||'_CONTENT) VALUES (V_FOLDER_LIB_ID, :P204_FILE_NAME, :P204_FILE_FORMAT,V_FOLDER_STATUS, :P204_FILE_URL, 0, V_DEL_DATE, SYSDATE, V_PLANS_FILE_TYPE, V_PLANS_FILE_DATE,V_REMARK, :USER_TENANT, :MPF_USER_ID, SYSDATE, SYSDATE, V_SCOPE_TYPE,V_FOLDER_ID_OLD, '
||'V_FOLDER_CONTENT) RETURNING FOLDER_ID INTO V_FOLDER_ID_NEW;',
unistr(' -- \539F\6587\4EF6\5F52\6863'),
' UPDATE STS_FOLDER SET UPDATED_BY =:MPF_USER_ID,UPDATE_DATE=SYSDATE,FOLDER_STATUS = 5 WHERE FOLDER_ID = V_FOLDER_ID_OLD AND DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT;',
unistr(' -- \5C06\65B0\589E\7684\6587\4EF6ID\66FF\6362\53CD\9988\8868\7684\65E7\6587\4EF6ID'),
' UPDATE STS_FEEDBACK SET UPDATED_BY = :MPF_USER_ID,UPDATE_DATE = SYSDATE,FOLDER_ID = V_FOLDER_ID_NEW,STATUS = 1,PROCESS_DATE = SYSDATE,PROCESS_USER_ID = :MPF_USER_ID,FEEDBACK_TYPE = :P204_FEEDBACK_TYPE WHERE FEEDBACK_ID = :P204_FEEDBACK_ID AND DEL_FL'
||'AG = 0 AND TENANT_ID = :USER_TENANT;',
unistr('    ELSE --\4E0D\9700\8981\66F4\65B0\6587\4EF6'),
'        UPDATE STS_FEEDBACK',
'           SET UPDATED_BY = :MPF_USER_ID,',
'               UPDATE_DATE = SYSDATE,',
'               STATUS = 1,',
'               PROCESS_DATE = SYSDATE,',
'               PROCESS_USER_ID = :MPF_USER_ID,',
'               FEEDBACK_TYPE = :P204_FEEDBACK_TYPE,',
'               FEEDBACK_CONTENT = NVL(FEEDBACK_CONTENT, :P204_REMARK),',
'               REMARK = :P204_REMARK',
'         WHERE FEEDBACK_ID = :P204_FEEDBACK_ID',
'           AND DEL_FLAG = 0',
'           AND TENANT_ID = :USER_TENANT;',
'    END IF;',
'    V_ROW_COUNT := SQL%ROWCOUNT;',
unistr('    IF V_ROW_COUNT > 0 THEN  --\5904\7406\6210\529F'),
' V_JSON  := ''{',
' "current_name": "'' || V_FEEDBACK_CONTENT || ''",',
' "old_name": "",',
' "new_name": "",',
' "permission_type": "",',
' "user_ids": "",',
' "dept_ids": "",',
' "permission_type": ""',
' }'';',
unistr(' -- \5B58\5165\65E5\5FD7'),
' V_RESULT := STS_OPERATION_LOG_COMMON_FUN(',
' P_MODULE_CODE => ''FEEDBACK'',',
' P_OPERATION_CODE => ''FEEDBACK_PRO'',',
' P_BEHAVIOR_CODE => ''DEAL'',',
' P_ENTITY_ID => :P204_FEEDBACK_ID,',
' P_EXTRA_PARAMS => V_JSON,',
' P_APP_ID => 126,',
' P_TENANT_ID => 3,',
' P_SYS_USER_ID =>:MPF_USER_ID',
' );',
'        COMMIT;',
'    END IF;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P204_ROW_COUNT'', V_ROW_COUNT);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
' ROLLBACK;',
' APEX_UTIL.SET_SESSION_STATE(''P204_ROW_COUNT'', 0);',
' V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr(' -- \5199\5165\5F02\5E38\65E5\5FD7'),
unistr(' JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53CD\9988\7BA1\7406-\5904\7406\64CD\4F5C'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'              :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P204_FEEDBACK_ID,P204_FEEDBACK_TYPE,P204_REMARK,P204_FILE_URL,P204_FILE_NAME,P204_FILE_FORMAT'
,p_attribute_03=>'P204_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9714800822038168504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263731246757954401)
,p_event_id=>wwv_flow_imp.id(3263729755863954397)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P204_ROW_COUNT'') > 0) {',
unistr('alert(''\5904\7406\6210\529F\FF01'');'),
unistr('    // apex.message.showPageSuccess("\5904\7406\6210\529F!");'),
'    // setTimeout(function () {',
unistr('    //     $(''button[title="\5173\95ED"]'', window.parent.document).click();'),
unistr('    //     console.log($(''button[title="\5173\95ED"]''));'),
'    // }, 2000);',
'',
'',
'} else {',
unistr('    alert(''\5904\7406\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263731720955954401)
,p_event_id=>wwv_flow_imp.id(3263729755863954397)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

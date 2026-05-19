prompt --application/pages/page_00151
begin
--   Manifest
--     PAGE: 00151
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>151
,p_name=>unistr('\6570\636E\5BFC\51FA')
,p_alias=>unistr('\6570\636E\5BFC\51FA')
,p_step_title=>unistr('\6570\636E\5BFC\51FA')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3347384117389861073)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
,p_plug_footer=>unistr('\6570\636E\5BFC\51FA\8FC7\7A0B\9700\8981\65F6\95F4\52A0\8F7D\FF0C\8BF7\70B9\51FB\540E\8010\5FC3\7B49\5F85')
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3042658149258133501)
,p_button_sequence=>130
,p_button_name=>unistr('\5BFC\51FA\6570\636E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\51FA\6570\636E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042658217144133502)
,p_name=>'P151_START_DATE'
,p_item_sequence=>100
,p_prompt=>unistr('\5F00\59CB\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'ITEM',
  'max_item', 'P151_END_DATE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3042658354623133503)
,p_name=>'P151_END_DATE'
,p_item_sequence=>110
,p_prompt=>unistr('\7ED3\675F\65F6\95F4')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'ITEM',
  'min_item', 'P151_START_DATE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3347408668153444506)
,p_name=>'P151_ROW_COUNT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3347409144834444511)
,p_name=>'P151_API_STATUS'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3347408405699444504)
,p_name=>unistr('\5BFC\51FA\6570\636E')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3042658149258133501)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347408499486444505)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\539F\7248\4EE3\7801')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_URL VARCHAR2(1000);',
'    V_APP_KEY VARCHAR2(1000);',
'    V_APP_SECRET VARCHAR2(1000);',
'    V_START_TIMESTAMP NUMBER;',
'    V_END_TIMESTAMP NUMBER;',
'    V_JOB_NUMBER VARCHAR2(100):= :USER_JOB_NUMBER ;',
'    V_CODE VARCHAR2(2000);',
'    V_REQUEST_BODY CLOB;',
'    V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'    V_FIRST_ENTRY BOOLEAN := TRUE;',
'BEGIN',
unistr('    -- \83B7\53D6\914D\7F6E\53C2\6570'),
'    SELECT CODE_VALUE',
'    INTO V_URL',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_KEY',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_SECRET',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_SECRET''',
'      AND APP_ID = :APP_ID',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
unistr('    -- \5047\8BBEP151_START_DATE\548CP151_END_DATE\662F\9875\9762\9879\FF0C\683C\5F0F\4E3A''YYYY-MM-DD'''),
'    V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000;',
'    V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1;',
'',
unistr('    -- \5904\7406\5DE5\53F7\6570\7EC4\FF08\624B\52A8\6784\5EFAJSON\6570\7EC4\FF09'),
'    FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'              FROM DUAL',
'              CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'    LOOP',
'        IF NOT V_FIRST_ENTRY THEN',
'            V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'        END IF;',
'        V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'        V_FIRST_ENTRY := FALSE;',
'    END LOOP;',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('    -- \624B\52A8\6784\9020\8BF7\6C42\4F53JSON'),
'    V_REQUEST_BODY := ''{',
'        "startTime": '' || V_START_TIMESTAMP || '',',
'        "endTime": '' || V_END_TIMESTAMP || '',',
'        "jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'    }'';',
'',
unistr('    -- \8C03\7528HTTP\8BF7\6C42'),
'    V_CODE := JA_HTTP_REQUEST(',
'        P_URL => V_URL,',
'        P_TYPE => ''POST'',',
'        P_PARAM => V_REQUEST_BODY,',
'        P_APP_KEY => V_APP_KEY,',
'        P_APP_SECRET => V_APP_SECRET',
'    );',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'',1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347408873600444509)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5\662F\5426\8C03\7528\6210\529F1.0')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_URL VARCHAR2(1000);',
'    V_APP_KEY VARCHAR2(1000);',
'    V_APP_SECRET VARCHAR2(1000);',
'    V_START_TIMESTAMP NUMBER;',
'    V_END_TIMESTAMP NUMBER;',
'    V_JOB_NUMBER VARCHAR2(100):= :USER_JOB_NUMBER ;',
'    V_CODE VARCHAR2(2000);',
'    V_REQUEST_BODY CLOB;',
'    V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'    V_FIRST_ENTRY BOOLEAN := TRUE;',
'BEGIN',
unistr('    -- \83B7\53D6\914D\7F6E\53C2\6570'),
'    SELECT CODE_VALUE',
'    INTO V_URL',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_KEY',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_SECRET',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_SECRET''',
'      AND APP_ID = :APP_ID',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
unistr('    -- \5047\8BBEP151_START_DATE\548CP151_END_DATE\662F\9875\9762\9879\FF0C\683C\5F0F\4E3A''YYYY-MM-DD'''),
'    V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000;',
'    V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1;',
'',
unistr('    -- \5904\7406\5DE5\53F7\6570\7EC4\FF08\624B\52A8\6784\5EFAJSON\6570\7EC4\FF09'),
'    FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'              FROM DUAL',
'              CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'    LOOP',
'        IF NOT V_FIRST_ENTRY THEN',
'            V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'        END IF;',
'        V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'        V_FIRST_ENTRY := FALSE;',
'    END LOOP;',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('  -- \5728\8C03\7528HTTP\8BF7\6C42\524D\6DFB\52A0\65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA\524D'', ''INFO'', '),
unistr('             ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY, '),
'             :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \8C03\7528HTTP\8BF7\6C42'),
'V_CODE := JA_HTTP_REQUEST(',
'    P_URL => V_URL,',
'    P_TYPE => ''POST'',',
'    P_PARAM => V_REQUEST_BODY,',
'    P_APP_KEY => V_APP_KEY,',
'    P_APP_SECRET => V_APP_SECRET',
');',
'',
unistr('-- \5728\8C03\7528HTTP\8BF7\6C42\540E\6DFB\52A0\65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA\540E'', ''INFO'', '),
unistr('             ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_CODE, '),
'             :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
unistr('    -- \8C03\7528HTTP\8BF7\6C42'),
'    V_CODE := JA_HTTP_REQUEST(',
'        P_URL => V_URL,',
'        P_TYPE => ''POST'',',
'        P_PARAM => V_REQUEST_BODY,',
'        P_APP_KEY => V_APP_KEY,',
'        P_APP_SECRET => V_APP_SECRET',
'    );',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'',1);',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347409046338444510)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5\662F\5426\8C03\7528\6210\529F')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_URL VARCHAR2(1000);',
'    V_APP_KEY VARCHAR2(1000);',
'    V_APP_SECRET VARCHAR2(1000);',
'    V_START_TIMESTAMP NUMBER;',
'    V_END_TIMESTAMP NUMBER;',
'    V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'    V_CODE VARCHAR2(2000);',
'    V_REQUEST_BODY CLOB;',
'    V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'    V_FIRST_ENTRY BOOLEAN := TRUE;',
'BEGIN',
unistr('    -- \83B7\53D6\914D\7F6E\53C2\6570'),
'    SELECT CODE_VALUE',
'    INTO V_URL',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_KEY',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_SECRET',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_SECRET''',
'      AND APP_ID = :APP_ID',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
'    V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000;',
'    V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1;',
'',
unistr('    -- \5904\7406\5DE5\53F7\6570\7EC4'),
'    FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'              FROM DUAL',
'              CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'    LOOP',
'        IF NOT V_FIRST_ENTRY THEN',
'            V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'        END IF;',
'        V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'        V_FIRST_ENTRY := FALSE;',
'    END LOOP;',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('    -- \6784\9020\8BF7\6C42\4F53JSON'),
'    V_REQUEST_BODY := ''{',
'        "startTime": '' || V_START_TIMESTAMP || '',',
'        "endTime": '' || V_END_TIMESTAMP || '',',
'        "jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'    }'';',
'',
unistr('    -- \8BB0\5F55\8BF7\6C42\65E5\5FD7\FF08\786E\4FDD\5728\8C03\7528\524D\8BB0\5F55\FF09'),
unistr('    JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'', '),
unistr('                ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY || '),
'                '', URL: '' || V_URL || ',
'                '', APP_KEY: '' || V_APP_KEY|| ',
'                '',APP_SECRET: '' || V_APP_SECRET, ',
'                :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('    -- \8C03\7528HTTP\8BF7\6C42\FF08\4EC5\8C03\7528\4E00\6B21\FF09'),
'    V_CODE := JA_HTTP_REQUEST(',
'        P_URL => V_URL,',
'        P_TYPE => ''POST'',',
'        P_PARAM => V_REQUEST_BODY,',
'        P_APP_KEY => V_APP_KEY,',
'        P_APP_SECRET => V_APP_SECRET',
'    );',
'',
unistr('    -- \8BB0\5F55\54CD\5E94\65E5\5FD7'),
unistr('    JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', '),
'                CASE WHEN V_CODE LIKE ''2%'' THEN ''INFO'' ELSE ''WARNING'' END, ',
unistr('                ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_CODE, '),
'                :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('    -- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'    IF V_CODE LIKE ''2%'' THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\6210\529F'');'),
'    ELSE',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\5931\8D25: '' || V_CODE);'),
'    END IF;',
'',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'', '),
unistr('                    ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG, '),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347410014454444520)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5\662F\5426\8C03\7528\6210\529F-\6DFB\52A0\8BF7\6C42\5934Content-Type\4FE1\606F')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    V_URL VARCHAR2(1000);',
'    V_APP_KEY VARCHAR2(1000);',
'    V_APP_SECRET VARCHAR2(1000);',
'    V_START_TIMESTAMP NUMBER;',
'    V_END_TIMESTAMP NUMBER;',
'    V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'    V_CODE VARCHAR2(2000);',
'    V_REQUEST_BODY CLOB;',
'    V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'    V_FIRST_ENTRY BOOLEAN := TRUE;',
'    V_HEADERS APEX_T_VARCHAR2;',
'BEGIN',
unistr('    -- \83B7\53D6\914D\7F6E\53C2\6570'),
'    SELECT CODE_VALUE',
'    INTO V_URL',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_KEY',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'    SELECT CODE_VALUE',
'    INTO V_APP_SECRET',
'    FROM JA_SYSTEM_DICT',
'    WHERE DICT_CODE = ''APP_SECRET''',
'      AND APP_ID = :APP_ID',
'      AND TENANT_ID = :USER_TENANT;',
'',
unistr('    -- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
'    V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000;',
'    V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1;',
'',
unistr('    -- \5904\7406\5DE5\53F7\6570\7EC4'),
'    FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'              FROM DUAL',
'              CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'    LOOP',
'        IF NOT V_FIRST_ENTRY THEN',
'            V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'        END IF;',
'        V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'        V_FIRST_ENTRY := FALSE;',
'    END LOOP;',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('    -- \6784\9020\8BF7\6C42\4F53JSON'),
'    V_REQUEST_BODY := ''{',
'        "startTime": '' || V_START_TIMESTAMP || '',',
'        "endTime": '' || V_END_TIMESTAMP || '',',
'        "jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'    }'';',
'',
unistr('    -- \8BBE\7F6EHTTP\5934\4FE1\606F'),
'    V_HEADERS := APEX_T_VARCHAR2();',
'    V_HEADERS.EXTEND(1);',
'    V_HEADERS(1) := ''Content-Type: application/json'';',
'',
unistr('    -- \8BB0\5F55\8BF7\6C42\65E5\5FD7\FF08\786E\4FDD\5728\8C03\7528\524D\8BB0\5F55\FF09'),
unistr('    JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'', '),
unistr('                ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY || '),
'                '', URL: '' || V_URL || ',
'                '', APP_KEY: '' || V_APP_KEY|| ',
'                '',APP_SECRET: '' || V_APP_SECRET, ',
'                :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('    -- \8C03\7528HTTP\8BF7\6C42\FF08\4EC5\8C03\7528\4E00\6B21\FF09'),
'    V_CODE := JA_HTTP_REQUEST(',
'        P_URL => V_URL,',
'        P_TYPE => ''POST'',',
'        P_PARAM => V_REQUEST_BODY,',
'        P_APP_KEY => V_APP_KEY,',
'        P_APP_SECRET => V_APP_SECRET ',
'    );',
'',
unistr('    -- \8BB0\5F55\54CD\5E94\65E5\5FD7'),
unistr('    JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', '),
'                CASE WHEN V_CODE LIKE ''2%'' THEN ''INFO'' ELSE ''WARNING'' END, ',
unistr('                ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_CODE, '),
'                :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('    -- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'    IF V_CODE LIKE ''2%'' THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\6210\529F'');'),
'    ELSE',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\5931\8D25: '' || V_CODE);'),
'    END IF;',
'',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'', '),
unistr('                    ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG, '),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347410165915444521)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5\662F\5426\8C03\7528\6210\529F-\54CD\5E94\4F18\5316')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'V_URL VARCHAR2(1000);',
'V_APP_KEY VARCHAR2(1000);',
'V_APP_SECRET VARCHAR2(1000);',
'V_START_TIMESTAMP NUMBER;',
'V_END_TIMESTAMP NUMBER;',
'V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'V_RESPONSE CLOB;',
'V_REQUEST_BODY CLOB;',
'V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'V_FIRST_ENTRY BOOLEAN := TRUE;',
'V_HEADERS APEX_T_VARCHAR2;',
'V_RESPONSE_CODE NUMBER;',
'V_RESPONSE_MSG VARCHAR2(4000);',
'V_SUCCESS BOOLEAN;',
'BEGIN',
unistr('-- \83B7\53D6\914D\7F6E\53C2\6570'),
'SELECT CODE_VALUE',
'INTO V_URL',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_KEY',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_SECRET',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_SECRET''',
'AND APP_ID = :APP_ID',
'AND TENANT_ID = :USER_TENANT;',
'',
unistr('-- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
'V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000;',
'V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1;',
'',
unistr('-- \5904\7406\5DE5\53F7\6570\7EC4'),
'FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'      FROM DUAL',
'      CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'LOOP',
'IF NOT V_FIRST_ENTRY THEN',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'END IF;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'V_FIRST_ENTRY := FALSE;',
'END LOOP;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('-- \6784\9020\8BF7\6C42\4F53JSON'),
'V_REQUEST_BODY := ''{',
'"startTime": '' || V_START_TIMESTAMP || '',',
'"endTime": '' || V_END_TIMESTAMP || '',',
'"jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'}'';',
'',
unistr('-- \8BBE\7F6EHTTP\5934\4FE1\606F'),
'V_HEADERS := APEX_T_VARCHAR2();',
'V_HEADERS.EXTEND(1);',
'V_HEADERS(1) := ''Content-Type: application/json'';',
'',
unistr('-- \8BB0\5F55\8BF7\6C42\65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'', '),
unistr('        ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY || '),
'        '', URL: '' || V_URL || ',
'        '', APP_KEY: '' || V_APP_KEY|| ',
'        '',APP_SECRET: '' || V_APP_SECRET, ',
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \8C03\7528HTTP\8BF7\6C42'),
'V_RESPONSE := JA_HTTP_REQUEST(',
'P_URL => V_URL,',
'P_TYPE => ''POST'',',
'P_PARAM => V_REQUEST_BODY,',
'P_APP_KEY => V_APP_KEY,',
'P_APP_SECRET => V_APP_SECRET',
');',
'',
unistr('-- \89E3\6790JSON\54CD\5E94'),
'BEGIN',
unistr('-- \6B63\786E\4F7F\7528APEX_JSON\89E3\6790JSON\54CD\5E94'),
'APEX_JSON.PARSE(V_RESPONSE);',
'',
'V_RESPONSE_CODE := APEX_JSON.GET_NUMBER(p_path => ''code'');',
'V_RESPONSE_MSG := APEX_JSON.GET_VARCHAR2(p_path => ''msg'');',
'V_SUCCESS := APEX_JSON.GET_BOOLEAN(p_path => ''success'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    V_RESPONSE_CODE := 500;',
unistr('    V_RESPONSE_MSG := ''\54CD\5E94\89E3\6790\5931\8D25: '' || SQLERRM;'),
'    V_SUCCESS := FALSE;',
'END;',
'',
unistr('-- \8BB0\5F55\54CD\5E94\65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', '),
'        CASE WHEN V_SUCCESS THEN ''INFO'' ELSE ''WARNING'' END, ',
unistr('        ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_RESPONSE_CODE || '),
unistr('        '', \6D88\606F: '' || V_RESPONSE_MSG || '),
unistr('        '', \5B8C\6574\54CD\5E94: '' || V_RESPONSE, '),
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'IF V_SUCCESS THEN',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\6210\529F: '' || V_RESPONSE_MSG);'),
'ELSE',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\5931\8D25: '' || V_RESPONSE_MSG || '' (\4EE3\7801: '' || V_RESPONSE_CODE || '')'');'),
'END IF;',
'',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'', '),
unistr('            ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG, '),
'            :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347410519285444525)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5C06\6807\51C6\65F6\95F4UTC\8F6C\4E3A\5317\4EAC\65F6\95F4UTC+8')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'V_URL VARCHAR2(1000);',
'V_APP_KEY VARCHAR2(1000);',
'V_APP_SECRET VARCHAR2(1000);',
'V_START_TIMESTAMP NUMBER;',
'V_END_TIMESTAMP NUMBER;',
'V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'V_RESPONSE CLOB;',
'V_REQUEST_BODY CLOB;',
'V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'V_FIRST_ENTRY BOOLEAN := TRUE;',
'V_HEADERS APEX_T_VARCHAR2;',
'V_RESPONSE_CODE NUMBER;',
'V_RESPONSE_MSG VARCHAR2(4000);',
'V_SUCCESS BOOLEAN;',
'BEGIN',
unistr('-- \83B7\53D6\914D\7F6E\53C2\6570'),
'SELECT CODE_VALUE',
'INTO V_URL',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_KEY',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_SECRET',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_SECRET''',
'AND APP_ID = :APP_ID',
'AND TENANT_ID = :USER_TENANT;',
'',
unistr('-- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
unistr('V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000 - (8 * 60 * 60 * 1000);-- \FF08\5317\4EAC\65F6\95F4\8F6CUTC\FF09'),
unistr('V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1 - (8 * 60 * 60 * 1000); -- \7ED3\675F\65F6\95F4\8C03\6574\4E3A\5F53\592923:59:59\5E76\51CF\65F6\533A\504F\79FB'),
'',
unistr('-- \5904\7406\5DE5\53F7\6570\7EC4'),
'FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'      FROM DUAL',
'      CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'LOOP',
'IF NOT V_FIRST_ENTRY THEN',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'END IF;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'V_FIRST_ENTRY := FALSE;',
'END LOOP;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('-- \6784\9020\8BF7\6C42\4F53JSON'),
'V_REQUEST_BODY := ''{',
'"startTime": '' || V_START_TIMESTAMP || '',',
'"endTime": '' || V_END_TIMESTAMP || '',',
'"jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'}'';',
'',
unistr('-- \8BBE\7F6EHTTP\5934\4FE1\606F'),
'V_HEADERS := APEX_T_VARCHAR2();',
'V_HEADERS.EXTEND(1);',
'V_HEADERS(1) := ''Content-Type: application/json'';',
'',
unistr('-- \8BB0\5F55\8BF7\6C42\65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'','),
unistr('        ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY ||'),
'        '', URL: '' || V_URL ||',
'        '', APP_KEY: '' || V_APP_KEY||',
'        '',APP_SECRET: '' || V_APP_SECRET,',
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \8C03\7528HTTP\8BF7\6C42'),
'V_RESPONSE := JA_HTTP_REQUEST(',
'P_URL => V_URL,',
'P_TYPE => ''POST'',',
'P_PARAM => V_REQUEST_BODY,',
'P_APP_KEY => V_APP_KEY,',
'P_APP_SECRET => V_APP_SECRET',
');',
'',
unistr('-- \89E3\6790JSON\54CD\5E94'),
'BEGIN',
unistr('-- \6B63\786E\4F7F\7528APEX_JSON\89E3\6790JSON\54CD\5E94'),
'APEX_JSON.PARSE(V_RESPONSE);',
'',
'V_RESPONSE_CODE := APEX_JSON.GET_NUMBER(p_path => ''code'');',
'V_RESPONSE_MSG := APEX_JSON.GET_VARCHAR2(p_path => ''msg'');',
'V_SUCCESS := APEX_JSON.GET_BOOLEAN(p_path => ''success'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    V_RESPONSE_CODE := 500;',
unistr('    V_RESPONSE_MSG := ''\54CD\5E94\89E3\6790\5931\8D25: '' || SQLERRM;'),
'    V_SUCCESS := FALSE;',
'END;',
'',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'','),
'        CASE WHEN V_SUCCESS THEN ''INFO'' ELSE ''WARNING'' END,',
unistr('        ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_RESPONSE_CODE ||'),
unistr('        '', \6D88\606F: '' || V_RESPONSE_MSG ||'),
unistr('        '', \5B8C\6574\54CD\5E94: '' || V_RESPONSE,'),
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'IF V_SUCCESS THEN',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\6210\529F: '' || V_RESPONSE_MSG);'),
'ELSE',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\5931\8D25: '' || V_RESPONSE_MSG || '' (\4EE3\7801: '' || V_RESPONSE_CODE || '')'');'),
'END IF;',
'',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'','),
unistr('            ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG,'),
'            :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3046627275488177484)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5C06\6807\51C6\65F6\95F4UTC\8F6C\4E3A\5317\4EAC\65F6\95F4UTC+8-\5EF6\65F6\5904\7406\89E3\51B3\63A5\53E3\8C03\7528\548C\8FD4\56DE\67E5\8BE2\7ED3\679C\4E4B\95F4\5B58\5728\65F6\95F4\5DEE')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'V_URL VARCHAR2(1000);',
'V_APP_KEY VARCHAR2(1000);',
'V_APP_SECRET VARCHAR2(1000);',
'V_START_TIMESTAMP NUMBER;',
'V_END_TIMESTAMP NUMBER;',
'V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'V_RESPONSE CLOB;',
'V_REQUEST_BODY CLOB;',
'V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'V_FIRST_ENTRY BOOLEAN := TRUE;',
'V_HEADERS APEX_T_VARCHAR2;',
'V_RESPONSE_CODE NUMBER;',
'V_RESPONSE_MSG VARCHAR2(4000);',
'V_SUCCESS BOOLEAN;',
'BEGIN',
unistr('-- \83B7\53D6\914D\7F6E\53C2\6570'),
'SELECT CODE_VALUE',
'INTO V_URL',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_KEY',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_SECRET',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_SECRET''',
'AND APP_ID = :APP_ID',
'AND TENANT_ID = :USER_TENANT;',
'',
unistr('-- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
unistr('V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000 - (8 * 60 * 60 * 1000);-- \FF08\5317\4EAC\65F6\95F4\8F6CUTC\FF09'),
'V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1 - (8 * 60 * 60 * 1000); ',
'',
unistr('-- \5904\7406\5DE5\53F7\6570\7EC4'),
'FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'      FROM DUAL',
'      CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'LOOP',
'IF NOT V_FIRST_ENTRY THEN',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'END IF;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'V_FIRST_ENTRY := FALSE;',
'END LOOP;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('-- \6784\9020\8BF7\6C42\4F53JSON'),
'V_REQUEST_BODY := ''{',
'"startTime": '' || V_START_TIMESTAMP || '',',
'"endTime": '' || V_END_TIMESTAMP || '',',
'"jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'}'';',
'',
unistr('-- \8BBE\7F6EHTTP\5934\4FE1\606F'),
'V_HEADERS := APEX_T_VARCHAR2();',
'V_HEADERS.EXTEND(1);',
'V_HEADERS(1) := ''Content-Type: application/json'';',
'',
unistr('-- \65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'','),
unistr('        ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY ||'),
'        '', URL: '' || V_URL ||',
'        '', APP_KEY: '' || V_APP_KEY||',
'        '',APP_SECRET: '' || V_APP_SECRET,',
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \8C03\7528HTTP\8BF7\6C42'),
'V_RESPONSE := JA_HTTP_REQUEST(',
'P_URL => V_URL,',
'P_TYPE => ''POST'',',
'P_PARAM => V_REQUEST_BODY,',
'P_APP_KEY => V_APP_KEY,',
'P_APP_SECRET => V_APP_SECRET',
');',
unistr('-- \6DFB\52A0500\6BEB\79D2\5EF6\65F6  BY:wxx 2025-07-18 \6DFB\52A0\5EF6\65F6\5904\7406'),
unistr('DBMS_LOCK.SLEEP(5); -- 5\79D2'),
unistr('-- \89E3\6790JSON\54CD\5E94'),
'BEGIN',
'APEX_JSON.PARSE(V_RESPONSE);',
'',
'V_RESPONSE_CODE := APEX_JSON.GET_NUMBER(p_path => ''code'');',
'V_RESPONSE_MSG := APEX_JSON.GET_VARCHAR2(p_path => ''msg'');',
'V_SUCCESS := APEX_JSON.GET_BOOLEAN(p_path => ''success'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    V_RESPONSE_CODE := 500;',
unistr('    V_RESPONSE_MSG := ''\54CD\5E94\89E3\6790\5931\8D25: '' || SQLERRM;'),
'    V_SUCCESS := FALSE;',
'END;',
'',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'','),
'        CASE WHEN V_SUCCESS THEN ''INFO'' ELSE ''WARNING'' END,',
unistr('        ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_RESPONSE_CODE ||'),
unistr('        '', \6D88\606F: '' || V_RESPONSE_MSG ||'),
unistr('        '', \5B8C\6574\54CD\5E94: '' || V_RESPONSE,'),
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'IF V_SUCCESS THEN',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\6210\529F: '' || V_RESPONSE_MSG);'),
'ELSE',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
unistr('APEX_UTIL.SET_SESSION_STATE(''P151_API_STATUS'', ''\8C03\7528\5931\8D25: '' || V_RESPONSE_MSG || '' (\4EE3\7801: '' || V_RESPONSE_CODE || '')'');'),
'END IF;',
'',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'','),
unistr('            ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG,'),
'            :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3350232182046302979)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5F02\6B65\5904\7406\89E3\51B3\63A5\53E3\8C03\7528\548C\8FD4\56DE\67E5\8BE2\7ED3\679C\4E4B\95F4\5B58\5728\65F6\95F4\5DEE')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'V_URL VARCHAR2(1000);',
'V_APP_KEY VARCHAR2(1000);',
'V_APP_SECRET VARCHAR2(1000);',
'V_START_TIMESTAMP NUMBER;',
'V_END_TIMESTAMP NUMBER;',
'V_JOB_NUMBER VARCHAR2(100) := :USER_JOB_NUMBER;',
'V_RESPONSE CLOB;',
'V_REQUEST_BODY CLOB;',
'V_JOB_NUMBERS_JSON VARCHAR2(4000) := ''['';',
'V_FIRST_ENTRY BOOLEAN := TRUE;',
'V_HEADERS APEX_T_VARCHAR2;',
'V_RESPONSE_CODE NUMBER;',
'V_RESPONSE_MSG VARCHAR2(4000);',
'V_SUCCESS BOOLEAN;',
'BEGIN',
unistr('-- \83B7\53D6\914D\7F6E\53C2\6570'),
'SELECT CODE_VALUE',
'INTO V_URL',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''DATA_PUSH'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_KEY',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_KEY'' AND APP_ID = :APP_ID AND TENANT_ID = :USER_TENANT;',
'',
'SELECT CODE_VALUE',
'INTO V_APP_SECRET',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_SECRET''',
'AND APP_ID = :APP_ID',
'AND TENANT_ID = :USER_TENANT;',
'',
unistr('-- \8F6C\6362\65E5\671F\4E3A\6BEB\79D2\7EA7\65F6\95F4\6233'),
unistr('V_START_TIMESTAMP := (TO_DATE(:P151_START_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'')) * 24 * 60 * 60 * 1000 - (8 * 60 * 60 * 1000);-- \FF08\5317\4EAC\65F6\95F4\8F6CUTC\FF09'),
'V_END_TIMESTAMP := (TO_DATE(:P151_END_DATE, ''YYYY-MM-DD'') - TO_DATE(''1970-01-01'', ''YYYY-MM-DD'') + 1) * 24 * 60 * 60 * 1000 - 1 - (8 * 60 * 60 * 1000); ',
'',
unistr('-- \5904\7406\5DE5\53F7\6570\7EC4'),
'FOR i IN (SELECT TRIM(REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL)) AS job_num',
'      FROM DUAL',
'      CONNECT BY REGEXP_SUBSTR(V_JOB_NUMBER, ''[^,]+'', 1, LEVEL) IS NOT NULL)',
'LOOP',
'IF NOT V_FIRST_ENTRY THEN',
'    V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '','';',
'END IF;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || ''"'' || i.job_num || ''"'';',
'V_FIRST_ENTRY := FALSE;',
'END LOOP;',
'V_JOB_NUMBERS_JSON := V_JOB_NUMBERS_JSON || '']'';',
'',
unistr('-- \6784\9020\8BF7\6C42\4F53JSON'),
'V_REQUEST_BODY := ''{',
'"startTime": '' || V_START_TIMESTAMP || '',',
'"endTime": '' || V_END_TIMESTAMP || '',',
'"jobNumbers": '' || V_JOB_NUMBERS_JSON || ''',
'}'';',
'',
unistr('-- \8BBE\7F6EHTTP\5934\4FE1\606F'),
'V_HEADERS := APEX_T_VARCHAR2();',
'V_HEADERS.EXTEND(1);',
'V_HEADERS(1) := ''Content-Type: application/json'';',
'',
unistr('-- \65E5\5FD7'),
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''DEBUG'','),
unistr('        ''\51C6\5907\8C03\7528\63A5\53E3\FF0C\5B8C\6574\8BF7\6C42\53C2\6570: '' || V_REQUEST_BODY ||'),
'        '', URL: '' || V_URL ||',
'        '', APP_KEY: '' || V_APP_KEY||',
'        '',APP_SECRET: '' || V_APP_SECRET,',
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \8C03\7528HTTP\8BF7\6C42'),
'V_RESPONSE := JA_HTTP_REQUEST(',
'P_URL => V_URL,',
'P_TYPE => ''POST'',',
'P_PARAM => V_REQUEST_BODY,',
'P_APP_KEY => V_APP_KEY,',
'P_APP_SECRET => V_APP_SECRET',
');',
unistr('-- \6DFB\52A0500\6BEB\79D2\5EF6\65F6  BY:wxx 2025-07-18 \6DFB\52A0\5EF6\65F6\5904\7406'),
unistr('DBMS_LOCK.SLEEP(5); -- 5\79D2'),
unistr('-- \89E3\6790JSON\54CD\5E94'),
'BEGIN',
'APEX_JSON.PARSE(V_RESPONSE);',
'',
'V_RESPONSE_CODE := APEX_JSON.GET_NUMBER(p_path => ''code'');',
'V_RESPONSE_MSG := APEX_JSON.GET_VARCHAR2(p_path => ''msg'');',
'V_SUCCESS := APEX_JSON.GET_BOOLEAN(p_path => ''success'');',
'EXCEPTION',
'WHEN OTHERS THEN',
'    V_RESPONSE_CODE := 500;',
unistr('    V_RESPONSE_MSG := ''\54CD\5E94\89E3\6790\5931\8D25: '' || SQLERRM;'),
'    V_SUCCESS := FALSE;',
'END;',
'',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'','),
'        CASE WHEN V_SUCCESS THEN ''INFO'' ELSE ''WARNING'' END,',
unistr('        ''\63A5\53E3\8C03\7528\5B8C\6210\FF0C\8FD4\56DE\4EE3\7801: '' || V_RESPONSE_CODE ||'),
unistr('        '', \6D88\606F: '' || V_RESPONSE_MSG ||'),
unistr('        '', \5B8C\6574\54CD\5E94: '' || V_RESPONSE,'),
'        :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'',
unistr('-- \6839\636E\8FD4\56DE\4EE3\7801\8BBE\7F6E\72B6\6001'),
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 1);',
unistr('--\4E3A\907F\514D\63A5\53E3\8C03\7528\548C\8FD4\56DE\67E5\8BE2\7ED3\679C\4E4B\95F4\5B58\5728\65F6\95F4\5DEE\5BFC\81F4\63D0\793A\6709\8BEF\FF0C\6539\6210\5F02\6B65\901A\77E5'),
'',
'',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'APEX_UTIL.SET_SESSION_STATE(''P151_ROW_COUNT'', 0);',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6570\636E\5BFC\51FA'', ''ERROR'','),
unistr('            ''\7CFB\7EDF\5F02\5E38: '' || V_ERR_MSG,'),
'            :MPF_USER_ID, :USER_TENANT, :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P151_START_DATE,P151_END_DATE'
,p_attribute_03=>'P151_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347408748596444507)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P151_ROW_COUNT'') > 0) {',
unistr('alert(''\6570\636E\751F\6210\4E2D\FF0C\8BF7\8010\5FC3\7B49\5F85\FF0C\7A0D\540E\524D\5F80\5C0F\6676\901A\77E5\83B7\53D6\6587\4EF6\FF01'');'),
'} else {',
unistr('    alert(''\5BFC\51FA\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3347408780186444508)
,p_event_id=>wwv_flow_imp.id(3347408405699444504)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

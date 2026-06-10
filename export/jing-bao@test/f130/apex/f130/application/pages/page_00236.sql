prompt --application/pages/page_00236
begin
--   Manifest
--     PAGE: 00236
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
 p_id=>236
,p_name=>unistr('\4E8B\4EF6\5206\6790-\5BA1\6838-\8868\5355')
,p_alias=>unistr('\4E8B\4EF6\5206\6790-\5BA1\6838-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\5206\6790-\5BA1\6838-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2339273018862208216)
,p_plug_name=>unistr('\5BA1\6838')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2339273239168208218)
,p_plug_name=>unistr('\64CD\4F5C')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2221269097828119926)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2339273239168208218)
,p_button_name=>unistr('\9A73\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\9A73\56DE')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2221269518074119925)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2339273239168208218)
,p_button_name=>unistr('\901A\8FC7')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\901A\8FC7')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895851415781329620)
,p_name=>'P236_JOB_NUMBER1'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(895851559782329621)
,p_name=>'P236_JOB_NUMBER2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2220501829492080812)
,p_name=>'P236_EVENT_ANALYZE_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221265269790119931)
,p_name=>'P236_CONTEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\63CF\8FF0')
,p_placeholder=>unistr('\8BF7\8F93\5165\5BA1\6838\63CF\8FF0\6587\5B57')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221265624880119929)
,p_name=>'P236_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221266048623119929)
,p_name=>'P236_USER_NAME1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221266386115119929)
,p_name=>'P236_USER_ID1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221266807225119929)
,p_name=>'P236_USER_ID2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221267246845119928)
,p_name=>'P236_USER_NAME2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221267642614119928)
,p_name=>'P236_ROW_COUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221268018538119928)
,p_name=>'P236_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221268427556119928)
,p_name=>'P236_FLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2339273018862208216)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2221269915629119915)
,p_name=>unistr('\4E0D\901A\8FC7')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2221269097828119926)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221270448167119913)
,p_event_id=>wwv_flow_imp.id(2221269915629119915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P236_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221271385740119912)
,p_event_id=>wwv_flow_imp.id(2221269915629119915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5199\5165\8BB0\5F55')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_name    nvarchar2(32);',
'    v_err_msg nvarchar2(2000);',
'begin',
'    update TENANT_EVENT_ANALYZE',
'    set AUDIT_STATE=''REJECT'',',
'        AUDIT_OPINION=:P236_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    INSERT INTO TENANT_EVENT_ANALYZE_AUDIT_RECORD (ANALYZE_EVENT_ID, TENANT_ID, CREATED_BY, AUDIT_STATE, AUDIT_OPINION, BASE_DEPT_ID)',
'    VALUES (:P236_EVENT_ANALYZE_ID, :USERTENANT, :USERID, ''REJECT'', :P236_CONTEN, :BASE_DEPT_ID);',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P236_ROW_COUNT'', row_count);',
'    commit;',
'',
'',
'    select NAME',
'    into v_name',
'    from MPF_USER_DEPT_MAIN_ASSO_V',
'    where EXT_USER_ID = (',
'        select SUBMIT_USER_ID',
'        from TENANT_EVENT_ANALYZE r',
'        where r.EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID',
'          and r.TENANT_ID = :USERTENANT',
'           AND r.BASE_DEPT_ID=:BASE_DEPT_ID)         ',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    insert into TENANT_EVENT_MESSAGE_BOARD(created_by, creation_date, updated_by, update_date, event_id, tenant_id,',
'                                           ext_user_id, content, type, images_url, BASE_DEPT_ID)',
'    values (null, sysdate, null, sysdate, :P236_EVENT_ID, :USERTENANT, 0,',
unistr('            ''\3010'' || :USERNAME || ''\3011\62D2\7EDD\4E86\3010'' || v_name || ''\3011\63D0\4EA4\7684\4E8B\4EF6\5206\6790\5BA1\6838'', ''SYSTEM_NOTIFY'', null, :BASE_DEPT_ID);'),
'    commit;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P236_CONTEN,P236_EVENT_ID,P236_EVENT_ANALYZE_ID'
,p_attribute_03=>'P236_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221271899127119912)
,p_event_id=>wwv_flow_imp.id(2221269915629119915)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P236_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221270933054119913)
,p_event_id=>wwv_flow_imp.id(2221269915629119915)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2221272304060119912)
,p_name=>unistr('\901A\8FC7')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2221269518074119925)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221272834427119912)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P236_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221273368924119911)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_str     varchar(256);',
'    v_name    nvarchar2(32);',
'    v_name2   nvarchar2(32);',
'    v_err_msg nvarchar2(2000);',
'begin',
'    update TENANT_EVENT_ANALYZE',
'    set AUDIT_STATE=''COMPLETE'',',
'        AUDIT_OPINION=:P236_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    INSERT INTO TENANT_EVENT_ANALYZE_AUDIT_RECORD (ANALYZE_EVENT_ID, TENANT_ID, CREATED_BY, AUDIT_STATE, AUDIT_OPINION, BASE_DEPT_ID)',
'    VALUES (:P236_EVENT_ANALYZE_ID, :USERTENANT, :USERID, ''COMPLETE'', :P236_CONTEN, :BASE_DEPT_ID);',
'',
'    row_count := SQL%ROWCOUNT;',
'    if row_count > 0 then',
unistr('        -- \9489\9489\5361\7247\901A\77E5'),
'        --  APEX_TENANT_EVENT_REVIEW_NOTICE_PRO(:P236_EVENT_ID,:USERTENANT,V_FLAG);',
unistr('        -- \5173\95ED\5DE5\5355'),
'        v_str := close_analyze_event(:P236_EVENT_ID, :ORG_ID, :JINGBAO_API_URL);',
'    end if;',
'    apex_util.set_session_state(''P236_ROW_COUNT'', row_count);',
'    apex_util.set_session_state(''P236_FLAG'', v_str);',
'    ',
'    select NAME',
'    into v_name',
'    from MPF_USER_DEPT_MAIN_ASSO_V',
'    where EXT_USER_ID = (select AUDIT_USER_ID',
'                         from TENANT_EVENT_ANALYZE r',
'                         where r.EVENT_ID = :P236_EVENT_ID',
'                           and r.TENANT_ID = :USERTENANT and AUDIT_STATE = ''COMPLETE'' and DEL_FLAG = 0  AND r.BASE_DEPT_ID=:BASE_DEPT_ID)',
'         AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    select NAME',
'    into v_name2',
'    from MPF_USER_DEPT_MAIN_ASSO_V',
'    where EXT_USER_ID = (',
'        select SUBMIT_USER_ID',
'        from TENANT_EVENT_ANALYZE r',
'        where r.EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID',
'          and r.TENANT_ID = :USERTENANT and AUDIT_STATE = ''COMPLETE'' and DEL_FLAG = 0  AND r.BASE_DEPT_ID=:BASE_DEPT_ID)   ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    insert into TENANT_EVENT_MESSAGE_BOARD(created_by, creation_date, updated_by, update_date, event_id, tenant_id,',
'                                           ext_user_id, content, type, images_url, BASE_DEPT_ID)',
'    values (null, sysdate, null, sysdate, :P236_EVENT_ID, :USERTENANT, 0,',
unistr('            ''\3010'' || v_name2 || ''\3011\63D0\4EA4\4E8B\4EF6\590D\76D8\5BA1\6838\901A\8FC7\FF0C\5BA1\6838\4EBA\4E3A\3010'' || v_name || ''\3011,\4E8B\4EF6\5B8C\6210\5173\95ED'', ''SYSTEM_NOTIFY'', null, :BASE_DEPT_ID);'),
'    commit;',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P236_ROW_COUNT'', -1);',
'        apex_util.set_session_state(''P236_FLAG'', -1);',
'end;'))
,p_attribute_02=>'P236_CONTEN,P236_EVENT_ID,P236_EVENT_ANALYZE_ID'
,p_attribute_03=>'P236_ROW_COUNT,P236_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221273805097119911)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\67E5\8BE2\63D0\4EA4\4EBA\548C\5BA1\6838\4EBA')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg  nvarchar2(2000);',
'    v_name1    nvarchar2(64);',
'    v_name2    nvarchar2(64);',
'    v_user_id1 nvarchar2(64);',
'    v_user_id2 nvarchar2(64);',
'	v_job_number1 nvarchar2(64);',
'	v_job_number2 nvarchar2(64);',
'begin',
'',
'',
unistr('    -- \63D0\4EA4\4EBA'),
'    select NAME, SYNC_USER_ID,JOB_NUMBER',
'    into v_name1,v_user_id1,v_job_number1',
'    from MPF_USER_DEPT_MAIN_ASSO_V',
'    where EXT_USER_ID = (select SUBMIT_USER_ID from TENANT_EVENT_ANALYZE where  TENANT_ID=:USERTENANT and  EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID)',
'     AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
unistr('    -- \5BA1\6838\4EBA'),
'    select NAME, SYNC_USER_ID,JOB_NUMBER',
'    into v_name2,v_user_id2,v_job_number2',
'    from MPF_USER_DEPT_MAIN_ASSO_V',
'    where EXT_USER_ID = (select AUDIT_USER_ID from TENANT_EVENT_ANALYZE where TENANT_ID=:USERTENANT and EVENT_ANALYZE_ID = :P236_EVENT_ANALYZE_ID)',
'     AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    apex_util.set_session_state(''P236_USER_NAME1'', v_name1);',
'    apex_util.set_session_state(''P236_USER_NAME2'', v_name2);',
'    apex_util.set_session_state(''P236_USER_ID1'', v_user_id1);',
'    apex_util.set_session_state(''P236_USER_ID2'', v_user_id2);',
'    apex_util.set_session_state(''P236_JOB_NUMBER1'', v_job_number1);',
'    apex_util.set_session_state(''P236_JOB_NUMBER2'', v_job_number2);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P236_EVENT_ID,P236_EVENT_ANALYZE_ID'
,p_attribute_03=>'P236_USER_ID1,P236_USER_ID2,P236_USER_NAME2,P236_USER_NAME1,P236_JOB_NUMBER1,P236_JOB_NUMBER2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221274360324119910)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53D1\9001\9489\9489\901A\77E5')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_msg         nvarchar2(2000);',
'v_code            nvarchar2(256);',
'v_user_ids        nvarchar2(2000);',
'v_date            nvarchar2(256) := to_char(sysdate, ''yyyy-mm-dd hh24:mi:ss'');',
'v_submit_is_leave nvarchar2(256); v_event_serial_no nvarchar2(256);',
'v_is_stop_line    nvarchar2(256); v_is_key_process  nvarchar2(256);',
'v_description     nvarchar2(256); v_position        nvarchar2(256);',
'v_phenomenon      nvarchar2(256); v_text            nvarchar2(2000);',
'v_url             nvarchar2(256) ;',
'v_param           clob; v_clob            clob;',
'V_JINGBAO_URL     nvarchar2(256) := :JINGBAO_URL || ''#/questionDetails?eventId='' || :P236_EVENT_ID;',
'v_templateCode    nvarchar2(256);',
'V_LEVEL           nvarchar2(256);',
'begin',
'',
unistr('select e.SUBMIT_IS_LEAVE, e.EVENT_SERIAL_NO, e.IS_STOP_LINE, e.IS_KEY_PROCESS, translate(nvl(e.DESCRIPTION, ''\65E0'') , chr(13) || chr(10), '','')  as DESCRIPTION, (FAB_NAME || ''-'' || MAP_AREA_Y_NAME || ''-'' || MAP_AREA_X_NAME) AS POSITION, (lib.FIRST_EVENT_')
||'CATEGORY_NAME || ''/'' || lib.SECOND_EVENT_CATEGORY_NAME || ''/'' || lib.EVENT_PHENOMENON_NAME)                                    as PHENOMENON',
'into v_submit_is_leave,v_event_serial_no,v_is_stop_line,v_is_key_process,v_description,v_position,v_phenomenon',
'from TENANT_EVENT_V e',
'left join TENANT_EVENT_LIBRARY_V lib on e.FIRST_EVENT_CODE = lib.FIRST_EVENT_CATEGORY_CODE  and e.SECOND_EVENT_CODE = lib.SECOND_EVENT_CATEGORY_CODE   and e.PHENOMENON_CODE = lib.EVENT_PHENOMENON_CODE',
'left join TENANT_EVENT_FOLLOW_USERS f on f.EVENT_ID = e.EVENT_ID   and f.EXT_ORG_ID = e.MAIN_ORG_ID  and f.USER_IDENTITY = ''MAIN''',
'left join MPF_USER_DEPT_MAIN_ASSO_V fu on f.EXT_USER_ID = fu.EXT_USER_ID',
'left join BASIC_DEVICE d on e.DEVICE_CODE = d.DEVICE_CODE',
'where e.EVENT_ID = :P236_EVENT_ID and e.TENANT_ID = :USERTENANT AND e.BASE_DEPT_ID=:BASE_DEPT_ID;',
'select GET_EVENT_LEVEL(v_is_stop_line,v_is_key_process) into v_submit_is_leave  from dual;',
unistr('select decode(v_is_stop_line, ''FALSE'', ''\672A\505C\7EBF'', ''\505C\7EBF'') into v_is_stop_line from dual;'),
unistr('select decode(v_is_key_process, ''FALSE'', ''\975E\74F6\9888\5DE5\5E8F'', ''\74F6\9888\5DE5\5E8F'') into v_is_key_process from dual;'),
'select get_event_level_color(v_submit_is_leave, v_is_stop_line, v_is_key_process) into v_text from dual;',
'select listagg(''"'' || SYNC_USER_ID || ''"'', '','')into v_user_ids  from (select v.SYNC_USER_ID from TENANT_EVENT_FOLLOW_USERS f inner join MPF_USER_DEPT_MAIN_ASSO_V v on f.EXT_USER_ID=v.EXT_USER_ID where f.EVENT_ID = :P236_EVENT_ID  and f.TENANT_ID = :U'
||'SERTENANT AND f.BASE_DEPT_ID=:BASE_DEPT_ID union select to_nchar(:P236_USER_ID1) EXT_USER_ID  from dual);',
unistr('select decode(v_submit_is_leave,''1\7EA7'',''JB-OPERATE-ONE'',''2\7EA7'',''JB-OPERATE-TWO'',''3\7EA7'',''JB-OPERATE-THREE'',''4\7EA7'',''JB-OPERATE-FOUR'',''FOUR'') into v_templateCode from dual;'),
'v_url :=:MPF_API_URL||''xin/apis/template/''||v_templateCode||''/send-ding-notify'';',
'',
'   v_param := ''{',
'"isDesignateGroup": "FALSE",',
'"isDesignateUser": "TRUE",',
'"receiverGroupKeys": [],',
'"receiverUserKeys": ["'' || :P236_JOB_NUMBER1||''","''|| :P236_JOB_NUMBER2 || ''"],',
'"templateParams": {',
unistr('"title":"\2705\4E8B\4EF6\5B8C\6210\FF08#'' || v_event_serial_no || ''\FF09",'),
'"date":"'' || v_date || ''",',
'"phenomenon":"'' || v_phenomenon || ''",',
'"position":"'' || v_position ||  ''",',
'"describe":"'' || v_description || ''",',
unistr('"content":"\3010'' || :P236_USER_NAME1 || ''\3011\63D0\4EA4\7684\4E8B\4EF6\590D\76D8\5BA1\6838\901A\8FC7\FF0C\5BA1\6838\4EBA\4E3A\3010''|| :P236_USER_NAME2 ||''\3011",'),
'"url":"''||V_JINGBAO_URL||''"',
'}',
'}'';',
'   ',
'v_clob := JA_HTTP_REQUEST( v_url,''POST'', v_param);',
'apex_util.set_session_state(''P236_CODE'', v_clob);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P236_CODE'', -1);',
'end;'))
,p_attribute_02=>'P236_EVENT_ID,P236_USER_ID1,P236_USER_ID2,P236_USER_NAME1,P236_JOB_NUMBER1,P236_JOB_NUMBER2'
,p_attribute_03=>'P236_CODE,P236_USER_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2242169977047257128)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53D1\9001\9489\9489\901A\77E5_back')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg         nvarchar2(2000);',
'    v_user_ids        nvarchar2(2000);',
'    v_date            nvarchar2(256) := to_char(sysdate, ''yyyy-mm-dd hh24:mi:ss'');',
'    v_submit_is_leave nvarchar2(256); v_event_serial_no nvarchar2(256);',
'    v_is_stop_line    nvarchar2(256); v_is_key_process  nvarchar2(256);',
'    v_description     nvarchar2(256); v_position        nvarchar2(256);',
'    v_phenomenon      nvarchar2(256); v_text            nvarchar2(2000);',
'    v_url             nvarchar2(256) := :MPF_API_URL||''/notify/apis/ding/chatbot/default/single-chat/async/markdown'';',
'    v_param           clob; v_clob            clob;',
'begin',
'',
unistr('    select e.SUBMIT_IS_LEAVE, e.EVENT_SERIAL_NO, e.IS_STOP_LINE, e.IS_KEY_PROCESS, nvl(e.DESCRIPTION, ''\65E0'')                                        as DESCRIPTION, (FAB_NAME || ''-'' || MAP_AREA_Y_NAME || ''-'' || MAP_AREA_X_NAME) AS POSITION, (lib.FIRST_E')
||'VENT_CATEGORY_NAME || ''/'' || lib.SECOND_EVENT_CATEGORY_NAME || ''/'' || lib.EVENT_PHENOMENON_NAME)                                    as PHENOMENON',
'    into v_submit_is_leave,v_event_serial_no,v_is_stop_line,v_is_key_process,v_description,v_position,v_phenomenon',
'    from TENANT_EVENT_V e',
'    left join TENANT_EVENT_LIBRARY_V lib on e.FIRST_EVENT_CODE = lib.FIRST_EVENT_CATEGORY_CODE  and e.SECOND_EVENT_CODE = lib.SECOND_EVENT_CATEGORY_CODE   and e.PHENOMENON_CODE = lib.EVENT_PHENOMENON_CODE',
'    left join TENANT_EVENT_FOLLOW_USERS f on f.EVENT_ID = e.EVENT_ID   and f.EXT_ORG_ID = e.MAIN_ORG_ID  and f.USER_IDENTITY = ''MAIN''',
'    left join MPF_USER_DEPT_MAIN_ASSO_V fu on f.EXT_USER_ID = fu.EXT_USER_ID',
'    left join BASIC_DEVICE d on e.DEVICE_CODE = d.DEVICE_CODE',
'    where e.EVENT_ID = :P236_EVENT_ID and e.TENANT_ID = :USERTENANT AND e.BASE_DEPT_ID=:BASE_DEPT_ID;',
'    select GET_EVENT_LEVEL(v_is_stop_line,v_is_key_process) into v_submit_is_leave  from dual;',
unistr('    select decode(v_is_stop_line, ''FALSE'', ''\672A\505C\7EBF'', ''\505C\7EBF'') into v_is_stop_line from dual;'),
unistr('    select decode(v_is_key_process, ''FALSE'', ''\975E\74F6\9888\5DE5\5E8F'', ''\74F6\9888\5DE5\5E8F'') into v_is_key_process from dual;'),
'    select get_event_level_color(v_submit_is_leave, v_is_stop_line, v_is_key_process) into v_text from dual;',
'    select listagg(''"'' || EXT_USER_ID || ''"'', '','') into v_user_ids from (select EXT_USER_ID from TENANT_EVENT_FOLLOW_USERS where EVENT_ID = :P236_EVENT_ID and TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID union select to_number(:P236_USER_ID'
||'1) EXT_USER_ID from dual);',
'    v_param := ''{',
'  "dingUserIds": ['' || v_user_ids  || ''],',
'  "sendInfo": {',
unistr('    "text": "  ### <font color=\005C"#FF7D00\005C" ><b>**\2705\4E8B\4EF6\5B8C\6210\FF08#'' || v_event_serial_no || ''\FF09**</b></font>\005Cn\005Cn '' ||'),
unistr('               ''\5185\5BB9\FF1A<b>**\3010'' || :P236_USER_NAME1 || ''\3011\63D0\4EA4\7684\4E8B\4EF6\5206\6790\5BA1\6838\901A\8FC7\FF0C\5BA1\6838\4EBA\4E3A\3010''|| :P236_USER_NAME2 ||''\3011**</b>\005Cn\005Cn'' ||'),
unistr('               ''\65F6\95F4\FF1A<b>**'' || v_date || ''**</b>\005Cn\005Cn'' ||'),
'                v_text ||',
unistr('               ''\73B0\8C61\FF1A<b>**'' || v_phenomenon || ''**</b>\005Cn\005Cn'' ||'),
unistr('               ''\4F4D\7F6E\FF1A<b>**'' || v_position || ''**</b>\005Cn\005Cn'' ||'),
unistr('               ''\63CF\8FF0\FF1A<b>**'' || v_description || ''**</b>\005Cn\005Cn",'),
unistr('    "title": "\FE0F\4E8B\4EF6\5B8C\6210''|| v_date||''"'),
'  }',
'}'';',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).NAME := ''Content-Type'';',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(1).VALUE := ''application/json'';',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(2).NAME := ''appKey'';',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(2).VALUE := GETAPPKEY(:USERTENANT);',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(3).NAME := ''appSecret'';',
'    APEX_WEB_SERVICE.G_REQUEST_HEADERS(3).VALUE := GETAPPSECRET(:USERTENANT);',
'    v_clob := apex_web_service.make_rest_request(P_URL => v_url,  P_HTTP_METHOD => ''POST'',  p_transfer_timeout=>3,  P_BODY => v_param);',
'    apex_util.set_session_state(''P236_CODE'', v_clob);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'',  v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P236_EVENT_ID,P236_USER_ID1,P236_USER_ID2,P236_USER_NAME1'
,p_attribute_03=>'P236_CODE,P236_USER_NAME2'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2175125064677575914)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221275352217119910)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('var v_flag = '',\4F46\53D1\9001\901A\77E5\5931\8D25'';'),
'console.log(''data:'', $v(''P236_CODE''));',
'if ($v(''P236_CODE'')) {',
'    var data = JSON.parse($v(''P236_CODE''))',
'',
'    if (data.code != ''200'') {',
unistr('        v_flag = '',\4F46\53D1\9001\901A\77E5\5931\8D25'';'),
'    } else {',
unistr('        v_flag = '',\53D1\9001\901A\77E5\6210\529F'';'),
'    }',
'} else {',
unistr('    msg = '',\4F46\53D1\9001\901A\77E5\5931\8D25'';'),
'}',
'',
'',
'if ($v(''P236_ROW_COUNT'') > 0) {',
'',
unistr('    alert(''\5BA1\6838\6210\529F'' + v_flag);'),
'    return true;',
'} else {',
unistr('    alert(''\5BA1\6838\5931\8D25'' + v_flag);'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2221275814071119910)
,p_event_id=>wwv_flow_imp.id(2221272304060119912)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

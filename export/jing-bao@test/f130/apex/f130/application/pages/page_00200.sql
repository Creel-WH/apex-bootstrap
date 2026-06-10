prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_name=>unistr('\4E8B\4EF6\590D\76D8-\5BA1\6838-\8868\5355')
,p_alias=>unistr('\4E8B\4EF6\590D\76D8-\5BA1\6838-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\590D\76D8-\5BA1\6838-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2210675112338742221)
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
 p_id=>wwv_flow_imp.id(2210675332644742223)
,p_plug_name=>unistr('\65B0\5EFA')
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
 p_id=>wwv_flow_imp.id(2196970479371055452)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2210675332644742223)
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
 p_id=>wwv_flow_imp.id(2196970922470055451)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2210675332644742223)
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
 p_id=>wwv_flow_imp.id(2171012028468460901)
,p_name=>'P200_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2210675112338742221)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196968996273055455)
,p_name=>'P200_CONTEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2210675112338742221)
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
 p_id=>wwv_flow_imp.id(2196969377736055454)
,p_name=>'P200_EVENT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2210675112338742221)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196969851093055453)
,p_name=>'P200_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2210675112338742221)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196971356899055445)
,p_name=>unistr('\4E0D\901A\8FC7')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2196970479371055452)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196971841817055444)
,p_event_id=>wwv_flow_imp.id(2196971356899055445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P200_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196972282492055444)
,p_event_id=>wwv_flow_imp.id(2196971356899055445)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10):=0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_EVENT_REVIEW',
'    set AUDIT_STATE=''REJECT'',',
'        AUDIT_OPINION=:P200_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_ID = :P200_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID;',
'    INSERT INTO TENANT_EVENT_REVIEW_AUDIT_RECORDS (EVENT_ID,TENANT_ID,BASE_DEPT_ID,CREATED_BY,AUDIT_STATE,AUDIT_OPINION)',
'    VALUES (:P200_EVENT_ID,:USERTENANT,:BASE_DEPT_ID,:USERID,''REJECT'',:P200_CONTEN); ',
'    row_count:=SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P200_ROW_COUNT'',row_count);',
'    commit;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P200_ROW_COUNT'',-1);',
'end;'))
,p_attribute_02=>'P200_CONTEN,P200_EVENT_ID'
,p_attribute_03=>'P200_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196972791388055443)
,p_event_id=>wwv_flow_imp.id(2196971356899055445)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P200_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196973271585055443)
,p_event_id=>wwv_flow_imp.id(2196971356899055445)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196973681941055443)
,p_name=>unistr('\901A\8FC7')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2196970922470055451)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196974164932055443)
,p_event_id=>wwv_flow_imp.id(2196973681941055443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P200_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196974680651055443)
,p_event_id=>wwv_flow_imp.id(2196973681941055443)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10):=0;',
'    V_FLAG NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_EVENT_REVIEW',
'    set AUDIT_STATE=''COMPLETE'',',
'        AUDIT_OPINION=:P200_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_ID = :P200_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID;',
'    INSERT INTO TENANT_EVENT_REVIEW_AUDIT_RECORDS (EVENT_ID,TENANT_ID,BASE_DEPT_ID,CREATED_BY,AUDIT_STATE,AUDIT_OPINION)',
'    VALUES (:P200_EVENT_ID,:USERTENANT,:BASE_DEPT_ID,:USERID,''COMPLETE'',:P200_CONTEN);',
'    row_count:=SQL%ROWCOUNT;',
'    if row_count > 0 then',
'         APEX_TENANT_EVENT_REVIEW_NOTICE_PRO(:P200_EVENT_ID,:USERTENANT,V_FLAG);',
'        -- null;',
'    end if;',
'    apex_util.set_session_state(''P200_ROW_COUNT'',row_count);',
'    apex_util.set_session_state(''P200_FLAG'',V_FLAG);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P200_ROW_COUNT'',-1);',
'        apex_util.set_session_state(''P200_FLAG'',0);',
'end;'))
,p_attribute_02=>'P200_CONTEN,P200_EVENT_ID'
,p_attribute_03=>'P200_ROW_COUNT,P200_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196975255887055443)
,p_event_id=>wwv_flow_imp.id(2196973681941055443)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_flag = "";',
'if ($v(''P200_FLAG'') == 0) {',
unistr('    v_flag = ''\4F46\53D1\9001\901A\77E5\5931\8D25'';'),
'} else {',
unistr('    v_flag = ''\4E14\53D1\9001\901A\77E5\6210\529F'';'),
'}',
'',
'if ($v(''P200_ROW_COUNT'') > 0) {',
'',
unistr('    alert(''\5BA1\6838\6210\529F\FF0C'' + v_flag);'),
'    return true;',
'} else {',
unistr('    alert(''\5BA1\6838\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196975664491055442)
,p_event_id=>wwv_flow_imp.id(2196973681941055443)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

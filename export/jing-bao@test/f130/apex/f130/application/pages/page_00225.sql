prompt --application/pages/page_00225
begin
--   Manifest
--     PAGE: 00225
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
 p_id=>225
,p_name=>unistr('\5176\5B83\590D\76D8-\5BA1\6838-\8868\5355')
,p_alias=>unistr('\5176\5B83\590D\76D8-\5BA1\6838-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5176\5B83\590D\76D8-\5BA1\6838-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343745171518102582)
,p_plug_name=>unistr('\5BA1\6838')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2343745391824102584)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2287516417563794793)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2343745391824102584)
,p_button_name=>unistr('\9A73\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\9A73\56DE')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2287516893417794795)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2343745391824102584)
,p_button_name=>unistr('\901A\8FC7')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\901A\8FC7')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2287514536028794789)
,p_name=>'P225_CONTEN'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2343745171518102582)
,p_prompt=>unistr('\63CF\8FF0')
,p_placeholder=>unistr('\8BF7\8F93\5165\5BA1\6838\63CF\8FF0\6587\5B57')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>150
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2287514966470794791)
,p_name=>'P225_EVENT_REVIEW_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2343745171518102582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2287515319990794791)
,p_name=>'P225_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2343745171518102582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2287515790589794791)
,p_name=>'P225_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2343745171518102582)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2287517206330794806)
,p_name=>unistr('\4E0D\901A\8FC7')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2287516417563794793)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287517705780794808)
,p_event_id=>wwv_flow_imp.id(2287517206330794806)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P225_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287518212151794808)
,p_event_id=>wwv_flow_imp.id(2287517206330794806)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'row_count number(10):=0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_EVENT_REVIEW_OTHER',
'    set AUDIT_STATE=''REJECT'',',
'        AUDIT_OPINION=:P225_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_REVIEW_ID = :P225_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    INSERT INTO TENANT_EVENT_REVIEW_OTHER_AUDIT_RECORDS (EVENT_REVIEW_ID,TENANT_ID,CREATED_BY,AUDIT_STATE,AUDIT_OPINION,BASE_DEPT_ID)',
'    VALUES (:P225_EVENT_REVIEW_ID,:USERTENANT,:USERID,''REJECT'',:P225_CONTEN,:BASE_DEPT_ID); ',
'    row_count:=SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P225_ROW_COUNT'',row_count);',
'    commit;',
'    ',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P225_CONTEN,P225_EVENT_REVIEW_ID'
,p_attribute_03=>'P225_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287518761737794808)
,p_event_id=>wwv_flow_imp.id(2287517206330794806)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P225_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287519273590794808)
,p_event_id=>wwv_flow_imp.id(2287517206330794806)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2287519656122794809)
,p_name=>unistr('\901A\8FC7')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2287516893417794795)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287520193391794809)
,p_event_id=>wwv_flow_imp.id(2287519656122794809)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P225_CONTEN'')){',
unistr('   alert(''\8BF7\8F93\5165\5BA1\6838\4FE1\606F'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287520639804794809)
,p_event_id=>wwv_flow_imp.id(2287519656122794809)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'row_count number(10):=0;',
'V_FLAG NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_EVENT_REVIEW_OTHER',
'    set AUDIT_STATE=''COMPLETE'',',
'        AUDIT_OPINION=:P225_CONTEN,',
'        UPDATE_DATE=sysdate,',
'        UPDATED_BY=V(''USERID'')',
'    where EVENT_REVIEW_ID = :P225_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    INSERT INTO TENANT_EVENT_REVIEW_OTHER_AUDIT_RECORDS (EVENT_REVIEW_ID,TENANT_ID,CREATED_BY,AUDIT_STATE,AUDIT_OPINION,BASE_DEPT_ID)',
'    VALUES (:P225_EVENT_REVIEW_ID,:USERTENANT,:USERID,''COMPLETE'',:P225_CONTEN,:BASE_DEPT_ID);',
'    row_count:=SQL%ROWCOUNT;',
'    if row_count > 0 then',
'         APEX_TENANT_EVENT_REVIEW_OTHER_NOTICE_PRO(:P225_EVENT_REVIEW_ID,:USERTENANT,V_FLAG,:BASE_DEPT_ID);',
'        -- null;',
'    end if;',
'    apex_util.set_session_state(''P225_ROW_COUNT'',row_count);',
'    apex_util.set_session_state(''P225_FLAG'',V_FLAG);',
'    ',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P225_ROW_COUNT'',-1);',
'        apex_util.set_session_state(''P225_FLAG'',0);',
'end;'))
,p_attribute_02=>'P225_CONTEN,P225_EVENT_REVIEW_ID'
,p_attribute_03=>'P225_ROW_COUNT,P225_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287521145223794809)
,p_event_id=>wwv_flow_imp.id(2287519656122794809)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_flag = "";',
'if ($v(''P225_FLAG'') == 0) {',
unistr('    v_flag = ''\4F46\53D1\9001\901A\77E5\5931\8D25'';'),
'} else {',
unistr('    v_flag = ''\4E14\53D1\9001\901A\77E5\6210\529F'';'),
'}',
'',
'if ($v(''P225_ROW_COUNT'') > 0) {',
'',
unistr('    alert(''\5BA1\6838\6210\529F\FF0C'' + v_flag);'),
'    return true;',
'} else {',
unistr('    alert(''\5BA1\6838\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2287521679098794809)
,p_event_id=>wwv_flow_imp.id(2287519656122794809)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

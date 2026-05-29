prompt --application/pages/page_00226
begin
--   Manifest
--     PAGE: 00226
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
 p_id=>226
,p_name=>unistr('\4E8B\4EF6\5206\6790\6307\6D3E-\8868\5355')
,p_alias=>unistr('\4E8B\4EF6\5206\6790\6307\6D3E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\5206\6790\6307\6D3E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2214003176023255158)
,p_plug_name=>unistr('\6307\6D3E\4EBA\5458')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176034793809989490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_button_name=>unistr('\6307\6D3E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6307\6D3E')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176035197070989490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2172835746840250946)
,p_name=>'P226_EVENT_ANALYZE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2172835840052250947)
,p_name=>'P226_ANALYZE_TEMPLATE_ORG_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176035622336989486)
,p_name=>'P226_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_item_default=>'USERDEPT'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr(' \90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = V(''USERTENANT'') AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(2176036039556989485)
,p_name=>'P226_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_prompt=>unistr(' \6307\6D3E\4EBA\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF V(''USERAUTH'') = 0 THEN',
'        RETURN q''~SELECT NAME || DECODE(JOB_NUMBER, NULL, '''', '' - '' || JOB_NUMBER) USER_NAME, EXT_USER_ID',
'FROM MPF_USER_DEPT_MAIN_ASSO_V A',
'WHERE A.TENANT_ID = :USERTENANT',
'  and A.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND A.EXT_ORG_ID = :P226_DEPT_ID;~'';',
'    ELSE',
'        RETURN q''~',
'        SELECT NAME || DECODE(JOB_NUMBER, NULL, '''', '' - '' || JOB_NUMBER) USER_NAME, EXT_USER_ID',
'FROM MPF_USER_DEPT_MAIN_ASSO_V A',
'WHERE TENANT_ID = :USERTENANT',
'  AND EXISTS(SELECT 1',
'             FROM MPF_USER_DEPT_MAIN_ASSO_V B',
'             WHERE B.JOB_LEVEL_CODE <= A.JOB_LEVEL_CODE',
'               AND B.EXT_ORG_ID = A.EXT_ORG_ID',
'               AND B.TENANT_ID = :USERTENANT',
'               and b.BASE_DEPT_ID = :BASE_DEPT_ID',
'               AND B.EXT_USER_ID = :USER_ID)',
'        ;~'';',
'    END IF;',
'END;'))
,p_lov_cascade_parent_items=>'P226_DEPT_ID'
,p_ajax_items_to_submit=>'P226_DEPT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(2176036371170989484)
,p_name=>'P226_EVENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176036829955989484)
,p_name=>'P226_ROW_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176037168328989483)
,p_name=>'P226_ERROR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2214003176023255158)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176037642745989472)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176035197070989490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176038110638989470)
,p_event_id=>wwv_flow_imp.id(2176037642745989472)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176038460273989470)
,p_name=>unistr('\6307\6D3E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176034793809989490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176057269954817262)
,p_event_id=>wwv_flow_imp.id(2176038460273989470)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg                 nvarchar2(2000);',
'    v_analyze_template_org_id number(20);',
'',
'begin',
'    ',
'    select max(ANALYZE_TEMPLATE_ORG_ID) into v_analyze_template_org_id',
'    from TENANT_ANALYZE_TEMPLATE_ORG',
'    where EXT_ORG_ID = :P226_DEPT_ID and TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    apex_util.set_session_state(''P226_ANALYZE_TEMPLATE_ORG_ID'', v_analyze_template_org_id);',
'',
'exception',
'    when others then',
'        rollback;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P226_ANALYZE_TEMPLATE_ORG_ID,P226_DEPT_ID'
,p_attribute_03=>'P226_ANALYZE_TEMPLATE_ORG_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176057823581817262)
,p_event_id=>wwv_flow_imp.id(2176038460273989470)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_count            number(10) := 0;',
'    v_exist            number(10) := 0;',
'    v_loop_num         number(10) := 0;',
'    v_page_id          number(20);',
'    v_event_analyze_id number(20);',
'    v_begin_time       date;',
'    v_end_time         date;',
'',
'begin',
'    for c in (select COLUMN_VALUE from table (SPLITSTR(:P226_EVENT_ID, '','')))',
'        loop',
'            v_loop_num := v_loop_num + 1;',
'            v_event_analyze_id := SUBSTRING_INSTR2(:P226_EVENT_ANALYZE_ID, '','', v_loop_num - 1, v_loop_num);',
unistr('            --\5224\65AD\662F\5426\62E5\6709\590D\76D8'),
'            select count(1) into v_count',
'            from TENANT_EVENT_ANALYZE',
'            where EVENT_ANALYZE_ID = v_event_analyze_id',
'              and TENANT_ID = :USERTENANT and DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID and ROWNUM = 1;',
'            select t.APEX_PAGE_ID into v_page_id',
'            from TENANT_ANALYZE_TEMPLATE_ORG org inner join TENANT_ANALYZE_TEMPLATE_V2 t on org.ANALYZE_TEMPLATE_ID = t.ANALYZE_TEMPLATE_ID and t.TENANT_ID = org.TENANT_ID and t.DEL_FLAG = 0',
'            where org.ANALYZE_TEMPLATE_ORG_ID = :P226_ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = :USERTENANT AND org.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'            select max(BEGIN_TIME), max(END_TIME) into v_begin_time,v_end_time from TENANT_EVENT_V where TENANT_ID = :USERTENANT and EVENT_ID = c.COLUMN_VALUE AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'            if v_count = 0 then',
'                insert into TENANT_EVENT_ANALYZE(event_id, ext_org_id, analyze_template_org_id, created_time, end_time,submit_user_id, audit_state, audit_user_id, audit_opinion,apex_page_id, created_by, del_flag, tenant_id, BASE_DEPT_ID)values (c.COL'
||'UMN_VALUE, :P226_DEPT_ID, :P226_ANALYZE_TEMPLATE_ORG_ID, v_begin_time, v_end_time,:P226_USER_ID,''WAIT'', null, null, v_page_id, :USER_ID, 0, :USERTENANT, :BASE_DEPT_ID);',
'            else',
unistr('                -- \5224\65AD\590D\76D8\90E8\95E8\662F\5426\53D8\66F4'),
'                select count(1) into v_exist from TENANT_EVENT_ANALYZE where EXT_ORG_ID = :P226_DEPT_ID and TENANT_ID = :USERTENANT and EVENT_ANALYZE_ID = v_event_analyze_id and DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'                if v_exist = 0 then                   ',
'                    update TENANT_EVENT_ANALYZE set SUBMIT_USER_ID=:P226_USER_ID,EXT_ORG_ID=:P226_DEPT_ID,UPDATED_BY=:USER_ID,UPDATE_DATE=sysdate where TENANT_ID = :USERTENANT and EVENT_ANALYZE_ID = v_event_analyze_id and DEL_FLAG = 0 AND BASE_DEPT_I'
||'D=:BASE_DEPT_ID;',
'                else',
unistr('                    -- \4FEE\6539'),
'                    update TENANT_EVENT_ANALYZE',
'                    set SUBMIT_USER_ID=:P226_USER_ID, APEX_PAGE_ID=v_page_id, ANALYZE_TEMPLATE_ORG_ID=:P226_ANALYZE_TEMPLATE_ORG_ID, UPDATED_BY=:USER_ID, UPDATE_DATE=sysdate',
'                    where TENANT_ID = :USERTENANT and EVENT_ANALYZE_ID = v_event_analyze_id and DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID;',
unistr('                    -- \5220\9664\65E7\6570\636E'),
'                    delete TENANT_TEMPLATE_ITEM_VALUE where EVENT_ANALYZE_ID=v_event_analyze_id and TENANT_ID=:USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'                end if;',
'            end if;',
'        end loop;',
'    apex_util.set_session_state(''P226_ROW_COUNT'', ''1'');',
'exception',
'    when others then',
'        apex_util.set_session_state(''P226_ROW_COUNT'', ''0'');',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;       ',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''v_event_analyze_id:'' || v_event_analyze_id || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P226_EVENT_ID,P226_EVENT_ANALYZE_ID,P226_ANALYZE_TEMPLATE_ORG_ID,P226_USER_ID,P226_DEPT_ID'
,p_attribute_03=>'P226_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176039530795989469)
,p_event_id=>wwv_flow_imp.id(2176038460273989470)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P226_ROW_COUNT'') == 0){',
unistr('    alert(''\6307\6D3E\5931\8D25\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'}else{',
unistr('    alert(''\6307\6D3E\6210\529F\FF01'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176040004173989469)
,p_event_id=>wwv_flow_imp.id(2176038460273989470)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176040425043989469)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2182243588341510519)
,p_event_id=>wwv_flow_imp.id(2176040425043989469)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P226_DEPT_ID'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'USERAUTH'
,p_server_condition_expr2=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176040871775989469)
,p_event_id=>wwv_flow_imp.id(2176040425043989469)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P226_DEPT_ID'').setValue(''&USERDEPT.'')'
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp.component_end;
end;
/

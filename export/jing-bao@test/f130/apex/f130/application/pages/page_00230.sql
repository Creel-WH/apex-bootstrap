prompt --application/pages/page_00230
begin
--   Manifest
--     PAGE: 00230
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
 p_id=>230
,p_name=>unistr('\4E8B\4EF6\5206\6790\65E0\9700\590D\76D8-\8868\5355')
,p_alias=>unistr('\4E8B\4EF6\5206\6790\65E0\9700\590D\76D8-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\5206\6790\65E0\9700\590D\76D8-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2237604151651753796)
,p_plug_name=>unistr('\65E0\9700\590D\76D8')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176244586883243468)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2237604151651753796)
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2176245041819243467)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176245423294243464)
,p_name=>'P230_EVENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176245776698243463)
,p_name=>'P230_STATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_prompt=>unistr(' \5DE5\5355\72B6\6001')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\5F85\590D\76D8;WAIT,\65E0\9700\590D\76D8;UNREVIEW')
,p_grid_column=>4
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:margin-top-sm'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176246156964243462)
,p_name=>'P230_ROW_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176246608494243462)
,p_name=>'P230_ERROR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176259529258149813)
,p_name=>'P230_EVENT_ANALYZE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176259675728149815)
,p_name=>'P230_ANALYZE_TEMPLATE_ORG_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2176259799676149816)
,p_name=>'P230_DEPT_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2237604151651753796)
,p_item_default=>'USERDEPT'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176247369965243450)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176244586883243468)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176247862660243449)
,p_event_id=>wwv_flow_imp.id(2176247369965243450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2176248326879243449)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2176245041819243467)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P230_STATE'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176248800742243448)
,p_event_id=>wwv_flow_imp.id(2176248326879243449)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\66F4\6539\7684\72B6\6001\FF01'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176278669141781339)
,p_event_id=>wwv_flow_imp.id(2176248326879243449)
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
'    if :P230_ANALYZE_TEMPLATE_ORG_ID is null then',
'        select max(ANALYZE_TEMPLATE_ORG_ID)',
'        into v_analyze_template_org_id',
'        from TENANT_ANALYZE_TEMPLATE_ORG',
'        where EXT_ORG_ID = :P230_DEPT_ID',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    else',
'        v_analyze_template_org_id := :P230_ANALYZE_TEMPLATE_ORG_ID;',
'    end if;',
'    apex_util.set_session_state(''P230_ANALYZE_TEMPLATE_ORG_ID'', v_analyze_template_org_id);',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P230_ANALYZE_TEMPLATE_ORG_ID,P230_DEPT_ID'
,p_attribute_03=>'P230_ANALYZE_TEMPLATE_ORG_ID,P230_DEPT_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176279190674781339)
,p_event_id=>wwv_flow_imp.id(2176248326879243449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg          nvarchar2(2000);',
'    v_count            number(10) := 0;',
'    v_loop_num         number(10) := 0;',
'    v_page_id          number(20);',
'    v_event_analyze_id number(20);',
'    v_begin_time       date;',
'    v_end_time         date;',
'',
'begin',
'',
'    for c in (select COLUMN_VALUE from table (SPLITSTR(:P230_EVENT_ID, '','')))',
'        loop',
'            v_loop_num := v_loop_num + 1;',
'            v_event_analyze_id := SUBSTRING_INSTR2(:P230_EVENT_ANALYZE_ID, '','', v_loop_num - 1, v_loop_num);',
unistr('            --\5224\65AD\662F\5426\62E5\6709\590D\76D8'),
'            select count(1)',
'            into v_count',
'            from TENANT_EVENT_ANALYZE',
'            where EVENT_ANALYZE_ID = v_event_analyze_id',
'              and TENANT_ID = :USERTENANT',
'              and DEL_FLAG = 0',
'               AND BASE_DEPT_ID=:BASE_DEPT_ID',
'              and ROWNUM = 1;',
'',
'            select t.APEX_PAGE_ID',
'            into v_page_id',
'            from TENANT_ANALYZE_TEMPLATE_ORG org',
'                     inner join TENANT_ANALYZE_TEMPLATE_V2 t',
'                                on org.ANALYZE_TEMPLATE_ID = t.ANALYZE_TEMPLATE_ID and t.TENANT_ID = org.TENANT_ID and',
'                                   t.DEL_FLAG = 0',
'            where org.ANALYZE_TEMPLATE_ORG_ID = :P230_ANALYZE_TEMPLATE_ORG_ID',
'              and org.TENANT_ID = :USERTENANT',
'               AND org.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'            select max(BEGIN_TIME), max(END_TIME)',
'            into v_begin_time,v_end_time',
'            from TENANT_EVENT_V',
'            where TENANT_ID = :USERTENANT',
'              and EVENT_ID = c.COLUMN_VALUE',
'               AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'            if v_count = 0 and :P230_STATE=''UNREVIEW'' then',
'                insert into TENANT_EVENT_ANALYZE(event_id, ext_org_id, analyze_template_org_id, created_time, end_time,',
'                                                 submit_user_id, audit_state, audit_user_id, audit_opinion,',
'                                                 apex_page_id, created_by, del_flag, tenant_id,  BASE_DEPT_ID)',
'                values (c.COLUMN_VALUE, :USERDEPT, :P230_ANALYZE_TEMPLATE_ORG_ID, v_begin_time, v_end_time,',
'                        null, :P230_STATE, null, null, v_page_id, :USER_ID, 0, :USERTENANT, : BASE_DEPT_ID);',
'            else',
'                if :P230_STATE !=''UNREVIEW'' then',
'                  update TENANT_EVENT_ANALYZE',
'                   set AUDIT_STATE=:P230_STATE,',
'                    DEL_FLAG=1,',
'                    UPDATED_BY=:USER_ID,',
'                    UPDATE_DATE=sysdate',
'                   where TENANT_ID = :USERTENANT',
'                  and EVENT_ANALYZE_ID = v_event_analyze_id',
'                  and DEL_FLAG = 0',
'                   AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'                else',
'                  update TENANT_EVENT_ANALYZE',
'                   set AUDIT_STATE=:P230_STATE,',
'                    UPDATED_BY=:USER_ID,',
'                    UPDATE_DATE=sysdate',
'                   where TENANT_ID = :USERTENANT',
'                  and EVENT_ANALYZE_ID = v_event_analyze_id',
'                  and DEL_FLAG = 0',
'                   AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'                end if;',
'                ',
'            end if;',
'        end loop;',
'    apex_util.set_session_state(''P230_ROW_COUNT'', ''1'');',
'exception',
'    when others then',
'        apex_util.set_session_state(''P230_ROW_COUNT'', ''0'');',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''v_event_analyze_id:'' || v_event_analyze_id || chr(13) || v_err_msg,',
'         :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P230_EVENT_ID,P230_ANALYZE_TEMPLATE_ORG_ID,P230_EVENT_ANALYZE_ID,P230_STATE'
,p_attribute_03=>'P230_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176277724303781340)
,p_event_id=>wwv_flow_imp.id(2176248326879243449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P230_ROW_COUNT'') == 0){',
unistr('    alert(''\72B6\6001\4FEE\6539\5931\8D25\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'}else{',
unistr('    alert(''\72B6\6001\4FEE\6539\6210\529F\FF01'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2176250347762243447)
,p_event_id=>wwv_flow_imp.id(2176248326879243449)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2176247053962243451)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>66044999684740040
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00215
begin
--   Manifest
--     PAGE: 00215
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
 p_id=>215
,p_name=>unistr('\6676\8C79\65E0\9700\590D\76D8-\8868\5355')
,p_alias=>unistr('\6676\8C79\65E0\9700\590D\76D8-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6676\8C79\65E0\9700\590D\76D8-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2215804027057944717)
,p_plug_name=>unistr('\65E0\9700\590D\76D8')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2215804164347944718)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2215804178391944719)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215804727772944724)
,p_name=>'P215_EVENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215804831888944725)
,p_name=>'P215_STATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_prompt=>unistr(' \5DE5\5355\72B6\6001')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\5F85\590D\76D8;WAIT,\65E0\9700\590D\76D8;UNREVIEW')
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215806183603944739)
,p_name=>'P215_ROW_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2215806341207944740)
,p_name=>'P215_ERROR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2215804027057944717)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2215804278540944720)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2215804164347944718)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215804382403944721)
,p_event_id=>wwv_flow_imp.id(2215804278540944720)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2215804526389944722)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2215804178391944719)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P215_STATE'') != '''''
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215805985954944737)
,p_event_id=>wwv_flow_imp.id(2215804526389944722)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert(''\8BF7\9009\62E9\9700\8981\66F4\6539\7684\72B6\6001\FF01'')')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215806143310944738)
,p_event_id=>wwv_flow_imp.id(2215804526389944722)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER := 0;',
'    V_FLAG NUMBER := 0;',
'    V_STATR_TIME DATE;',
'    V_END_TIME DATE;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    FOR ITEM IN (SELECT COLUMN_VALUE FROM TABLE(SPLITSTR(:P215_EVENT_ID,'',''))) LOOP',
'        SELECT COUNT(1) INTO V_FLAG FROM TENANT_EVENT_REVIEW WHERE TENANT_ID = V(''USERTENANT'') AND EVENT_ID = ITEM.COLUMN_VALUE;',
'        IF V_FLAG = 0 THEN',
'            SELECT BEGIN_TIME,END_TIME INTO V_STATR_TIME,V_END_TIME FROM TENANT_EVENT WHERE TENANT_ID = V(''USERTENANT'') AND EVENT_ID = ITEM.COLUMN_VALUE;',
'            INSERT INTO TENANT_EVENT_REVIEW (EVENT_ID,CREATED_TIME,END_TIME,AUDIT_STATE,CREATED_BY,TENANT_ID,BASE_DEPT_ID)',
'            VALUES (ITEM.COLUMN_VALUE,V_STATR_TIME,V_END_TIME,:P215_STATE,V(''USER_ID''),V(''USERTENANT''),:BASE_DEPT_ID);',
'        ELSE',
'            UPDATE TENANT_EVENT_REVIEW',
'               SET AUDIT_STATE = :P215_STATE,',
'                   UPDATED_BY = V(''USER_ID''),',
'                   UPDATE_DATE = SYSDATE',
'             WHERE TENANT_ID = V(''USERTENANT'')',
'               AND EVENT_ID = ITEM.COLUMN_VALUE',
'               AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        END IF;',
'        V_COUNT := SQL%ROWCOUNT;',
'    END LOOP;',
'    APEX_UTIL.SET_SESSION_STATE(''P215_ROW_COUNT'',V_COUNT);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;',
'            V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            --\5199\5165\5F02\5E38\65E5\5FD7'),
'            JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'            APEX_UTIL.SET_SESSION_STATE(''P215_ROW_COUNT'',-1);',
'            APEX_UTIL.SET_SESSION_STATE(''P215_ERROR'',DBMS_UTILITY.FORMAT_ERROR_BACKTRACE || SQLERRM);',
'END;'))
,p_attribute_02=>'P215_EVENT_ID,P215_STATE'
,p_attribute_03=>'P215_ROW_COUNT,P215_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215806407731944741)
,p_event_id=>wwv_flow_imp.id(2215804526389944722)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P215_ROW_COUNT'') == -1){',
unistr('    alert(''\72B6\6001\4FEE\6539\5931\8D25\FF0C'' + $v(''P215_ERROR''));'),
'    return false;',
'}else{',
unistr('    alert(''\72B6\6001\4FEE\6539\6210\529F\FF01'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215804602769944723)
,p_event_id=>wwv_flow_imp.id(2215804526389944722)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2217346659894596763)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>62902788232162358
);
wwv_flow_imp.component_end;
end;
/

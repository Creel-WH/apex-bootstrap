prompt --application/pages/page_00292
begin
--   Manifest
--     PAGE: 00292
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
 p_id=>292
,p_name=>unistr('\5207\6362\7EC4\7EC7')
,p_alias=>unistr('\5207\6362\7EC4\7EC7')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5207\6362\7EC4\7EC7')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(556168112240520877)
,p_name=>'P292_BASE_DEPT_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.ORG_NAME, p.ORG_ID',
'from MPF.OPS_ORG p',
'         inner join APEX_TENANT_USERS u on p.ORG_ID = u.BASE_DEPT_ID',
'         inner join MPF_USER_DEPT_MAIN_ASSO_V v',
'                    on p.ORG_ID = v.BASE_DEPT_ID and v.EXT_USER_ID = u.EXT_USER_ID and v.JOB_NUMBER = :USERJOBNUMBER',
'where u.IS_LEAVE = 0',
'  and u.DEL_FLAG = 0',
'  and u.JOB_NUMBER = :USERJOBNUMBER;',
''))
,p_colspan=>3
,p_grid_column=>6
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(556168213658520878)
,p_name=>unistr('\5207\6362\7EC4\7EC7')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P292_BASE_DEPT_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(556168272432520879)
,p_event_id=>wwv_flow_imp.id(556168213658520878)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     apex_util.set_session_state(''P9999_USERNAME'',:USERJOBNUMBER);',
'     apex_util.set_session_state(''P9999_USER_TENANT'',:P292_BASE_DEPT_ID);',
'     LOGIN_AUTHENTICATION_SUCCESS();',
'end;',
''))
,p_attribute_02=>'P292_BASE_DEPT_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(556168333773520880)
,p_event_id=>wwv_flow_imp.id(556168213658520878)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// window.location.href="f?p=&APP_ID.:129:&APP_SESSION.:::::";  //\5347\7EA724.2\65E0\6548\FF0C\820D\5F03'),
unistr('// \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API'),
'apex.navigation.redirect("f?p=&APP_ID.:129:&APP_SESSION.");'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_10009
begin
--   Manifest
--     PAGE: 10009
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
 p_id=>10009
,p_name=>unistr('\767B\5F55\9875')
,p_alias=>'LOGIN10009'
,p_step_title=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF -\4FEE\6539\5BC6\7801')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2330886896889485732)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1460637499381371624)
,p_plug_name=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF -\4FEE\6539\5BC6\7801')
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924942853485749)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1460639290341371632)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(1460637499381371624)
,p_button_name=>'update'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539\5BC6\7801')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1456250707829750034)
,p_name=>'P10009_PASSWORD_CONFIRM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(1460637499381371624)
,p_prompt=>unistr('\786E\8BA4\5BC6\7801')
,p_placeholder=>unistr('\786E\8BA4\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1456251108744750038)
,p_name=>'P10009_MESSAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(1460637499381371624)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1460637995930371630)
,p_name=>'P10009_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1460637499381371624)
,p_item_default=>'USERNAME'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr('\7528\6237\540D')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1460638418915371630)
,p_name=>'P10009_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(1460637499381371624)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1456250810066750035)
,p_name=>unistr('\4FEE\6539\5BC6\7801')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1460639290341371632)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1456250928247750036)
,p_event_id=>wwv_flow_imp.id(1456250810066750035)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P0_USER_NAME'')) {',
unistr('    alert(''\7528\6237\540D\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (!$v(''P10009_PASSWORD'')) {',
unistr('    alert(''\5BC6\7801\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (!$v(''P10009_PASSWORD_CONFIRM'')) {',
unistr('    alert(''\4E8C\6B21\786E\8BA4\5BC6\7801\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if ($v(''P10009_PASSWORD'') != $v(''P10009_PASSWORD_CONFIRM'')) {',
unistr('    alert(''\4E24\6B21\5BC6\7801\8F93\5165\4E0D\4E00\81F4,\8BF7\68C0\67E5\540E\8F93\5165'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1456251092029750037)
,p_event_id=>wwv_flow_imp.id(1456250810066750035)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_msg     nvarchar2(2000);',
'    v_count   number(20) := 0;',
'begin',
'',
'    v_msg := JA_UTILS_PKG.CHECK_PASSWORD_STRENGTH(:P10009_PASSWORD);',
'    if v_msg = ''TRUE'' then',
'        update APEX_TENANT_USERS',
'        set PASSWORD=JA_UTILS_PKG.ENCRYPT_ENC(:P10009_PASSWORD)',
'        where (MOBILE = :P10009_USERNAME or JOB_NUMBER = :P10009_USERNAME)',
'          AND base_dept_id = :base_dept_id;',
'        commit;',
'        v_count := 1;',
'    end if;',
'',
'    apex_util.set_session_state(''P10009_MESSAGE'', v_msg);',
'',
'exception',
'    when others then',
unistr('        apex_util.set_session_state(''P10009_MESSAGE'', ''\4FEE\6539\5BC6\7801\9519\8BEF\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME || '':'' || :APP_ID);',
'end;'))
,p_attribute_02=>'P10009_USERNAME,P10009_PASSWORD'
,p_attribute_03=>'P10009_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1456251230753750039)
,p_event_id=>wwv_flow_imp.id(1456250810066750035)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P10009_MESSAGE'') == ''TRUE'') {',
'    window.location.href = ''f?p=&APP_ID.:LOGIN:::::::'';',
'} else {',
'    alert($v(''P10009_MESSAGE''));',
'    return false;',
'}'))
);
wwv_flow_imp.component_end;
end;
/

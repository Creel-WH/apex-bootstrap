prompt --application/pages/page_00225
begin
--   Manifest
--     PAGE: 00225
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>225
,p_name=>unistr('\5207\6362\89D2\8272')
,p_alias=>unistr('\5207\6362\89D2\82721')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5207\6362\89D2\8272')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758151903284732)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10250857438246304467)
,p_plug_name=>unistr('\5207\6362\89D2\8272')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TENANT_NAME,TENANT_ID',
'from DATA_SHARE_TENANT where  IS_SHOW = 1;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10250858232767304475)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776701859401305221)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10250858232767304475)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3776702276249305221)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10250858232767304475)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10250858449567304472)
,p_name=>'P225_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10250857438246304467)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10250858567630304473)
,p_name=>'P225_ROW_COUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10250857438246304467)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10250858730404304475)
,p_name=>'P225_ROLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10250857438246304467)
,p_item_source_plug_id=>wwv_flow_imp.id(10250857438246304467)
,p_item_default=>'ROLE_ID'
,p_item_default_type=>'ITEM'
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(role.ROLE_ID, :ROLE_ID, role.ROLE_NAME || '' - \5F53\524D'', role.ROLE_NAME) ROLE_NAME, role.ROLE_ID'),
'from STS_USER_ROLE u',
'         inner join STS_ROLE role',
'                    on u.ROLE_ID = role.ROLE_ID and role.TENANT_ID = u.TENANT_ID and',
'                       role.DEL_FLAG = 0',
'where u.USER_ID = :MPF_USER_ID',
'  and u.DEL_FLAG = 0',
'  and u.IS_ENABLE = 1',
'  and u.TENANT_ID = :USER_TENANT',
'group by role.ROLE_ID,role.ROLE_NAME'))
,p_grid_column=>5
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776702902199305222)
,p_name=>unistr('\5207\6362\89D2\8272')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776702276249305221)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776703412236305222)
,p_event_id=>wwv_flow_imp.id(3776702902199305222)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P225_ROLE'')) {',
unistr('    alert(''\8BF7\9009\62E9\89D2\8272'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776703878868305222)
,p_event_id=>wwv_flow_imp.id(3776702902199305222)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
unistr('    V_ROLE_ID        NUMBER(20);-- \89D2\8272ID'),
unistr('    V_ROLE_LEVEL     NUMBER(20); -- \89D2\8272\7EA7\522B'),
unistr('    V_ROLE_CODE      VARCHAR2(100); --\89D2\8272CODE'),
'    /**',
'     * CREATE BY: DUL',
'     * CREATE DATE: 2024/7/24 17:28',
unistr('     * MODIFY BY: WXX \52A0\5165role_code'),
'     * MODIFY DATE:2025/3/21 14:40 ',
unistr('     * DESCRIPTION:\5207\6362\89D2\8272'),
'     */',
'BEGIN',
unistr('    -- \5F53\524D\89D2\8272ID\548C\89D2\8272\7EA7\522B   \52A0\5165role_code by wxx'),
'    SELECT ROLE_ID, ROLE_LEVEL,ROLE_TYPE',
'    INTO V_ROLE_ID,V_ROLE_LEVEL,V_ROLE_CODE',
'    FROM STS_ROLE',
'    WHERE ROLE_ID = :P225_ROLE',
'      AND TENANT_ID = :USER_TENANT',
'      AND DEL_FLAG = 0;',
'',
'    APEX_UTIL.SET_SESSION_STATE( ''ROLE_ID'' , V_ROLE_ID );',
'    APEX_UTIL.SET_SESSION_STATE( ''ROLE_LEVEL'' , V_ROLE_LEVEL );',
'    APEX_UTIL.SET_SESSION_STATE( ''ROLE_CODE'' , V_ROLE_CODE );',
'    APEX_UTIL.SET_SESSION_STATE( ''P225_ROW_COUNT'' , 1 );',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5207\6362\89D2\8272'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,:APP_NAME || '':'' || :APP_ID);'),
'        APEX_UTIL.SET_SESSION_STATE(''P225_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P225_ROLE'
,p_attribute_03=>'P225_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776704348755305223)
,p_event_id=>wwv_flow_imp.id(3776702902199305222)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5237\65B0\5168\5C40\5E76\8DF3\8F6C\9996\9875\FF0824.2\4F1A\5931\6548\FF09')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P225_ROW_COUNT'') == 1) {',
unistr('    // alert(''\5207\6362\6210\529F,\8BF7\5237\65B0\9875\9762'');'),
unistr('        // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:1:&APP_SESSION.");',
'    return true;',
'} else {',
unistr('    alert(''\5207\6362\5931\8D25\FF01'');'),
'    return false;',
'}'))
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(601463067145792001)
,p_event_id=>wwv_flow_imp.id(3776702902199305222)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('24.2\9002\7528\5237\65B0')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P225_ROW_COUNT'') == 1) {',
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API'),
'    apex.navigation.redirect("f?p=&APP_ID.:1:&APP_SESSION.");',
'    return true;',
'} else {',
unistr('    alert(''\5207\6362\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3776704775687305223)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3776701859401305221)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3776705277179305223)
,p_event_id=>wwv_flow_imp.id(3776704775687305223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3776701235867305221)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10250857438246304467)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5207\6362\89D2\8272')
,p_internal_uid=>452315697860199484
);
wwv_flow_imp.component_end;
end;
/

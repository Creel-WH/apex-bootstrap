prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>157
,p_name=>unistr('\5173\6CE8\5206\7EC4')
,p_alias=>'FAVORITE_GROUP_DIALOG'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5173\6CE8\5206\7EC4')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3709714323410859806)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001570000000001)
,p_plug_name=>unistr('\5206\7EC4\7F16\8F91')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001570000000002)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001570000000010)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910001570000000002)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001570000000011)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(910001570000000002)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000020)
,p_name=>'P157_FAVORITE_GROUP_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000021)
,p_name=>'P157_GROUP_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_default=>'select group_name from fmp_favorite_group where favorite_group_id = :P157_FAVORITE_GROUP_ID and user_id = :DIAN_USER_ID and nvl(del_flag, 0) = 0'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5206\7EC4\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9760156691065264294)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000022)
,p_name=>'P157_RESULT_CODE'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000023)
,p_name=>'P157_RESULT_MESSAGE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001570000000030)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001570000000011)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001570000000031)
,p_event_id=>wwv_flow_imp.id(910001570000000030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001570000000032)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001570000000010)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001570000000033)
,p_event_id=>wwv_flow_imp.id(910001570000000032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils && utils.checkNull($v(''P157_GROUP_NAME''))) {',
unistr('    alert(''\5206\7EC4\540D\79F0\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001570000000034)
,p_event_id=>wwv_flow_imp.id(910001570000000032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_group_id number := to_number(nullif(:P157_FAVORITE_GROUP_ID, ''''));',
'    l_sort     number;',
'begin',
'    if l_group_id is null then',
'        select nvl(max(nvl(sort, 0)), 0) + 1',
'          into l_sort',
'          from fmp_favorite_group',
'         where user_id = :DIAN_USER_ID',
'           and nvl(del_flag, 0) = 0;',
'',
'        insert into fmp_favorite_group (user_id, group_name, sort, creation_date, update_date, del_flag)',
'        values (:DIAN_USER_ID, :P157_GROUP_NAME, l_sort, sysdate, sysdate, 0);',
'',
'        :P157_RESULT_MESSAGE := ''\5206\7EC4\65B0\5EFA\6210\529F'';',
'    else',
'        update fmp_favorite_group',
'           set group_name = :P157_GROUP_NAME,',
'               update_date = sysdate',
'         where favorite_group_id = l_group_id',
'           and user_id = :DIAN_USER_ID',
'           and nvl(del_flag, 0) = 0;',
'',
'        :P157_RESULT_MESSAGE := ''\5206\7EC4\4FDD\5B58\6210\529F'';',
'    end if;',
'',
'    :P157_RESULT_CODE := ''200'';',
'    commit;',
'exception',
'    when others then',
'        rollback;',
'        :P157_RESULT_CODE := ''500'';',
'        :P157_RESULT_MESSAGE := sqlerrm;',
'end;'))
,p_attribute_02=>'P157_FAVORITE_GROUP_ID,P157_GROUP_NAME'
,p_attribute_03=>'P157_RESULT_CODE,P157_RESULT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001570000000035)
,p_event_id=>wwv_flow_imp.id(910001570000000032)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P157_RESULT_CODE'') !== ''200'') {',
'    alert($v(''P157_RESULT_MESSAGE'') || ''\64CD\4F5C\5931\8D25'');',
'    return false;',
'}',
'apex.navigation.dialog.close(true, { saved: true, message: $v(''P157_RESULT_MESSAGE'') });'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00145
begin
--   Manifest
--     PAGE: 00145
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>145
,p_name=>unistr('\591A\8BED\8A00\8BBE\7F6E')
,p_alias=>unistr('\591A\8BED\8A00\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\591A\8BED\8A00\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4732005713207512569)
,p_plug_name=>unistr('\5F52\6863\72B6\6001\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4732005989395512571)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3797364489030162104)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4732005989395512571)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3797364914941162104)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4732005989395512571)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4265857523701052417)
,p_name=>'P145_FILE_NAME'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4732005713207512569)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\4E2D\6587')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FILE_NAME from STS_FILE',
'where DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT',
'and FILE_ID = :P145_FILE_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(10249679185703239764)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4732007060588512581)
,p_name=>'P145_ENGLISH_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4732005713207512569)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\82F1\6587')
,p_placeholder=>unistr('\8BF7\8F93\5165')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ENGLISH_NAME from STS_FILE',
'where DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT',
'and FILE_ID = :P145_FILE_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(10249679185703239764)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4734361395950426963)
,p_name=>'P145_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4734361471908426964)
,p_name=>'P145_FILE_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797367313998162106)
,p_name=>unistr('\8BBE\7F6E\591A\8BED\8A00')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3797364914941162104)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797369302269162112)
,p_event_id=>wwv_flow_imp.id(3797367313998162106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P145_FILE_NAME''))){',
unistr('    alert(''\8BF7\8F93\5165\5BF9\5E94\4E2D\6587\FF01'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P145_ENGLISH_NAME''))){',
unistr('    alert(''\8BF7\8F93\5165\5BF9\5E94\82F1\6587\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797367735470162107)
,p_event_id=>wwv_flow_imp.id(3797367313998162106)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_row_count number(10);',
'    v_err_msg   varchar2(2000);',
'    v_file_name varchar2(512);',
'    /**',
'     * create by: wxx',
'     * create date:2025/5/22   10:49',
'     * modify by:',
'     * modify date:',
unistr('     * describe:P145 \591A\8BED\8A00\8BBE\7F6E'),
'     */',
'begin',
unistr('-- \66F4\65B0\4E2D\82F1\540D\79F0'),
'    update STS_FILE',
'    set FILE_NAME = :P145_FILE_NAME,',
'        ENGLISH_NAME = :P145_ENGLISH_NAME,',
'        UPDATED_BY  = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where  FILE_ID = :P145_FILE_ID',
'    and DEL_FLAG = 0',
'    and TENANT_ID= :USER_TENANT;',
'    v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P145_ROW_COUNT'', v_row_count);',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P145_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME || '':'' || :APP_ID);',
'end;'))
,p_attribute_02=>'P145_FILE_ID,P145_ENGLISH_NAME,P145_FILE_NAME'
,p_attribute_03=>'P145_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797368222855162110)
,p_event_id=>wwv_flow_imp.id(3797367313998162106)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P145_ROW_COUNT'')>0){',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797368817900162110)
,p_event_id=>wwv_flow_imp.id(3797367313998162106)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

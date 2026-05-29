prompt --application/pages/page_00186
begin
--   Manifest
--     PAGE: 00186
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
 p_id=>186
,p_name=>unistr('\4FEE\6539\5BC6\7801-\8868\5355')
,p_alias=>unistr('\4FEE\6539\5BC6\7801-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4FEE\6539\5BC6\7801-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156569703058461746)
,p_plug_name=>unistr('\4FEE\6539\5BC6\7801-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'PAS_USERS'
,p_query_where=>'WHERE 1 = 2'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2150861067924219178)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_button_name=>unistr('\53D1\9001\9A8C\8BC1\7801')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--small:t-Button--gapTop:t-Button--padBottom'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D1\9001\9A8C\8BC1\7801')
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2150861515083219177)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2150861870297219177)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2156569703058461746)
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
 p_id=>wwv_flow_imp.id(2150862251703219174)
,p_name=>'P186_MOBILE'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_prompt=>unistr('\624B\673A\53F7')
,p_placeholder=>unistr('\8F93\5165\624B\673A\53F7\7801')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150862663319219173)
,p_name=>'P186_BASE_DEPT_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_prompt=>unistr('\79DF\6237')
,p_placeholder=>unistr('\79DF\6237')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID from APEX_TENANT_USERS v WHERE v.DEL_FLAG = 0 and v.MOBILE = :P186_MOBILE',
');'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P186_MOBILE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-address-card-o'
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
 p_id=>wwv_flow_imp.id(2150863107646219173)
,p_name=>'P186_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_prompt=>unistr('\9A8C\8BC1\7801')
,p_placeholder=>unistr('\8F93\5165\9A8C\8BC1\7801')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-qrcode'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150863471949219173)
,p_name=>'P186_PASSWORD'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_prompt=>unistr('\65B0\5BC6\7801')
,p_placeholder=>unistr('\8F93\5165\65B0\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>16
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150863909436219172)
,p_name=>'P186_PASSWORD2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_prompt=>unistr('\518D\6B21\8F93\5165\65B0\5BC6\7801')
,p_placeholder=>unistr('\518D\6B21\8F93\5165\65B0\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_cMaxlength=>16
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150864326508219172)
,p_name=>'P186_FLAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2150864732804219172)
,p_name=>'P186_USER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_item_source_plug_id=>wwv_flow_imp.id(2156569703058461746)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2150866694645219166)
,p_validation_name=>unistr('\5BC6\7801\4E0D\4E00\81F4')
,p_validation_sequence=>20
,p_validation=>':P186_PASSWORD2 = :P186_PASSWORD'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('\65B0\5BC6\7801\4E24\6B21\8F93\5165\4E0D\4E00\81F4')
,p_associated_item=>wwv_flow_imp.id(2150863909436219172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150867367452219165)
,p_name=>unistr('\53D1\9001\9A8C\8BC1\7801')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2150861067924219178)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150867880614219164)
,p_event_id=>wwv_flow_imp.id(2150867367452219165)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P186_MOBILE'') == ''''){',
unistr('    alert(''\624B\673A\53F7\7801\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}else if($v(''P186_MOBILE'').length != 11){',
unistr('    alert(''\624B\673A\53F7\7801\8F93\5165\4E0D\6B63\786E\FF01'');'),
'    return false;',
'}else if($v(''P186_BASE_DEPT_ID'') == ''''){',
unistr('    alert(''\79DF\6237\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150868386360219164)
,p_event_id=>wwv_flow_imp.id(2150867367452219165)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CODE VARCHAR2(1000) := '''';',
'BEGIN',
'    V_CODE := apex_send_msgcode_2(:P186_MOBILE,:usertenant,:P186_BASE_DEPT_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P186_FLAG'',V_CODE);',
'END;'))
,p_attribute_02=>'P186_MOBILE,P186_BASE_DEPT_ID'
,p_attribute_03=>'P186_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150868900315219164)
,p_event_id=>wwv_flow_imp.id(2150867367452219165)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P186_FLAG'') == null){',
unistr('    alert(''\53D1\9001\9A8C\8BC1\7801\5931\8D25,\8BF7\91CD\8BD5\FF01'');'),
'    return false;',
'}',
'alert($v(''P186_FLAG''));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150869395957219163)
,p_event_id=>wwv_flow_imp.id(2150867367452219165)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2150861067924219178)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150869755641219163)
,p_name=>unistr('\5237\65B0\6309\94AE')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P186_MOBILE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150870256934219163)
,p_event_id=>wwv_flow_imp.id(2150869755641219163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2150861067924219178)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150870690189219163)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2150861515083219177)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150871149005219163)
,p_event_id=>wwv_flow_imp.id(2150870690189219163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2150871622559219163)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2150861870297219177)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150872045335219162)
,p_event_id=>wwv_flow_imp.id(2150871622559219163)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P186_MOBILE'') == ''''){',
unistr('    alert(''\624B\673A\53F7\7801\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}else if($v(''P186_MOBILE'').length != 11){',
unistr('    alert(''\624B\673A\53F7\7801\8F93\5165\4E0D\6B63\786E\FF01'');'),
'    return false;',
'}else if($v(''P186_CODE'') == ''''){',
unistr('    alert(''\9A8C\8BC1\7801\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'}else if($v(''P186_BASE_DEPT_ID'') == ''''){',
unistr('    alert(''\79DF\6237\4E0D\80FD\4E3A\7A7A\FF01'');'),
'    return false;',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150872543936219162)
,p_event_id=>wwv_flow_imp.id(2150871622559219163)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ret VARCHAR2(1000) := '''';',
'BEGIN',
'    ret := APEX_MODIFY_PSW_PHONE_FUNC_2(:P186_CODE,:P186_MOBILE,:P186_PASSWORD,:P186_PASSWORD2,:usertenant,:P186_BASE_DEPT_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P186_FLAG'',RET);',
'END;'))
,p_attribute_02=>'P186_CODE,P186_MOBILE,P186_BASE_DEPT_ID,P186_PASSWORD,P186_PASSWORD2'
,p_attribute_03=>'P186_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150873053466219162)
,p_event_id=>wwv_flow_imp.id(2150871622559219163)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert($v(''P186_FLAG''));',
unistr('if($v(''P186_FLAG'') == ''\5BC6\7801\4FEE\6539\6210\529F''){'),
'    return true;',
'}else{',
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2150873560848219162)
,p_event_id=>wwv_flow_imp.id(2150871622559219163)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2150865825668219169)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2156569703058461746)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \4FEE\6539\5BC6\7801-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40663771390715758
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2150866942335219165)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>40664888057715754
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2150865411758219170)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2156569703058461746)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \4FEE\6539\5BC6\7801-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40663357480715759
);
wwv_flow_imp.component_end;
end;
/

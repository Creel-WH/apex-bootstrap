prompt --application/pages/page_00268
begin
--   Manifest
--     PAGE: 00268
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
 p_id=>268
,p_name=>unistr('\8D44\6599\5E93-\8868\5355')
,p_alias=>unistr('\8D44\6599\5E93-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\8D44\6599\5E93-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// function isPositiveInteger(str) {',
'// 		var pattern = /^\d+$/;',
'// 		return pattern.test(str);',
'// 	}',
'',
'$(''#P268_SORT_NUM'').attr(''oninput'',"if(this.value.length==1){this.value=this.value.replace(/[^0-9]/,'''')}else{this.value=this.value.replace(/\\D/g,'''')}");'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Form-error:before {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2471487747887455269)
,p_plug_name=>unistr('\8D44\6599\5E93-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select KNOWLEDGE_ID,',
'       SORT_NUM,',
'       TENANT_ID,',
'       KNOWLEDGE_NAME,',
'       IS_ENABLE',
'from CODE_KNOWLEDGE where DEL_FLAG=0 and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2471491608608455277)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1894966583813324275)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2471491608608455277)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1894966986711324276)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2471491608608455277)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P268_KNOWLEDGE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1894967427834324276)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2471491608608455277)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P268_KNOWLEDGE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1912330561752706815)
,p_name=>'P268_KNOWLEDGE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_source_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_source=>'KNOWLEDGE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1912330638802706816)
,p_name=>'P268_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_source_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_default=>'0'
,p_prompt=>unistr('\5E8F\53F7')
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1912330792659706817)
,p_name=>'P268_KNOWLEDGE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_source_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_prompt=>unistr('\8D44\6599\5E93\540D\79F0')
,p_source=>'KNOWLEDGE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2195881058396278534)
,p_name=>'P268_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_source_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2195881513617278534)
,p_name=>'P268_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_item_source_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2195881901834278534)
,p_name=>'P268_ROW_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2471487747887455269)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1894968395527324291)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1894966583813324275)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894968850145324292)
,p_event_id=>wwv_flow_imp.id(1894968395527324291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1894969298799324292)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1894966986711324276)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894969813452324293)
,p_event_id=>wwv_flow_imp.id(1894969298799324292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P268_KNOWLEDGE_NAME''))) {',
unistr('	// alert(''\8BF7\8F93\5165\8D44\6599\5E93\540D\79F0'');'),
'	apex.message.showErrors([',
'    {',
'        type:       "error",',
'        location:   "inline",',
'        pageItem:   "P268_KNOWLEDGE_NAME",',
unistr('        message:    ''<div style="color: red;">\8BF7\8F93\5165\8D44\6599\5E93\540D\79F0 </div>'','),
'        unsafe:     false',
'    }',
'	]);',
'	return false;',
'}',
'',
'if (utils.checkNull($v(''P268_SORT_NUM''))) {',
'    $s(''P268_SORT_NUM'',0)',
unistr('	// alert(''\5E8F\53F7\4E0D\80FD\4E3A\7A7A'');'),
'	// return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894970321317324293)
,p_event_id=>wwv_flow_imp.id(1894969298799324292)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\7C7B\522B')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'    v_count   number(20) := 0;',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from CODE_KNOWLEDGE',
'    where TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and KNOWLEDGE_NAME = :P268_KNOWLEDGE_NAME',
'      and DEL_FLAG = 0',
'      and KNOWLEDGE_ID != :P268_KNOWLEDGE_ID;',
'',
'    if v_count = 0 then',
'        update CODE_KNOWLEDGE',
'        set KNOWLEDGE_NAME=:P268_KNOWLEDGE_NAME,',
'            SORT_NUM=:P268_SORT_NUM,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where KNOWLEDGE_ID = :P268_KNOWLEDGE_ID;',
'        row_count := SQL%ROWCOUNT;',
'    else',
'        row_count := -1;',
'    end if;',
'',
'    apex_util.set_session_state(''P268_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'		rollback ;',
'        apex_util.set_session_state(''P268_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P268_SORT_NUM,P268_KNOWLEDGE_NAME,P268_KNOWLEDGE_ID'
,p_attribute_03=>'P268_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894970772917324294)
,p_event_id=>wwv_flow_imp.id(1894969298799324292)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P268_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P268_ROW_COUNT'') == -1) {',
unistr('    // alert(''\8BE5\540D\79F0\5DF2\6709\8D44\6599\5E93\6B63\5728\4F7F\7528'');'),
'	apex.message.showErrors([',
'    {',
'        type:       "error",',
'        location:   "inline",',
'        pageItem:   "P268_KNOWLEDGE_NAME",',
unistr('        message:    ''<div style="color: red;">\8BE5\540D\79F0\5DF2\6709\8D44\6599\5E93\6B63\5728\4F7F\7528 </div>'','),
'        unsafe:     false',
'    }',
'	]);',
'    return false;',
'}',
'else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894971290257324294)
,p_event_id=>wwv_flow_imp.id(1894969298799324292)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1894971704892324294)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1894967427834324276)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894972191946324294)
,p_event_id=>wwv_flow_imp.id(1894971704892324294)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P268_KNOWLEDGE_NAME''))) {',
unistr('	// alert(''\8BF7\8F93\5165\8D44\6599\5E93\540D\79F0'');'),
'		apex.message.showErrors([',
'    {',
'        type:       "error",',
'        location:   "inline",',
'        pageItem:   "P268_KNOWLEDGE_NAME",',
unistr('        message:    ''<div style="color: red;">\8BF7\8F93\5165\8D44\6599\5E93\540D\79F0 </div>'','),
'        unsafe:     false',
'    }',
'	]);',
'	return false;',
'}',
'',
'if (utils.checkNull($v(''P268_SORT_NUM''))) {',
'    $s(''P268_SORT_NUM'',0)',
unistr('	// alert(''\5E8F\53F7\4E0D\80FD\4E3A\7A7A'');'),
'	// return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894972691181324294)
,p_event_id=>wwv_flow_imp.id(1894971704892324294)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\7C7B\522B')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    row_count number(20) := 0;',
'    v_count   number(20) := 0;',
'begin',
'',
'    select count(1)',
'    into v_count',
'    from CODE_KNOWLEDGE',
'    where TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and KNOWLEDGE_NAME = :P268_KNOWLEDGE_NAME',
'      and DEL_FLAG = 0;',
'    if v_count = 0 then',
'        insert into CODE_KNOWLEDGE(created_by, creation_date, updated_by, updated_date, SORT_NUM, tenant_id,BASE_DEPT_ID, KNOWLEDGE_NAME,',
'                                   del_flag,',
'                                   is_enable)',
'        values (:USER_ID, sysdate, :USER_ID, sysdate, :P268_SORT_NUM, :USERTENANT,:BASE_DEPT_ID, :P268_KNOWLEDGE_NAME, 0, 1);',
'        row_count := SQL%ROWCOUNT;',
'    else',
'        row_count := -1;',
'    end if;',
'',
'',
'    apex_util.set_session_state(''P268_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P268_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P268_KNOWLEDGE_NAME,P268_SORT_NUM'
,p_attribute_03=>'P268_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894973203681324295)
,p_event_id=>wwv_flow_imp.id(1894971704892324294)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P268_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P268_ROW_COUNT'') == -1) {',
unistr('    // alert(''\8BE5\540D\79F0\5DF2\6709\8D44\6599\5E93\6B63\5728\4F7F\7528'');'),
'	apex.message.showErrors([',
'    {',
'        type:       "error",',
'        location:   "inline",',
'        pageItem:   "P268_KNOWLEDGE_NAME",',
unistr('        message:    ''<div style="color: red;">\8BE5\540D\79F0\5DF2\6709\8D44\6599\5E93\6B63\5728\4F7F\7528 </div>'','),
'        unsafe:     false',
'    }',
'	]);',
'    return false;',
'}',
'else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1894973649388324295)
,p_event_id=>wwv_flow_imp.id(1894971704892324294)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1894965901294324275)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2471487747887455269)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \70B9\68C0\7C7B\522B-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8938453515024479
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1894967962074324290)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>8940514295024494
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(1894965469779324272)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2471487747887455269)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\7C7B\522B-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>8938022000024476
);
wwv_flow_imp.component_end;
end;
/

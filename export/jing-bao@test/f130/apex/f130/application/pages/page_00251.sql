prompt --application/pages/page_00251
begin
--   Manifest
--     PAGE: 00251
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
 p_id=>251
,p_name=>unistr('\70B9\68C0\7C7B\522B-\8868\5355')
,p_alias=>unistr('\70B9\68C0\7C7B\522B-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\70B9\68C0\7C7B\522B-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2742471623635810523)
,p_plug_name=>unistr('\70B9\68C0\7C7B\522B-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CLASSIFY_ID,',
'       REMARK,',
'       TENANT_ID,',
'       NAME,',
'       IS_ENABLE',
'from CHECK_CLASSIFY where DEL_FLAG=0 and TENANT_ID=:USERTENANT ',
'and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2742475484356810531)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2466867556906633775)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2742475484356810531)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2466867975163633775)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2742475484356810531)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P251_CLASSIFY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2466868383392633775)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2742475484356810531)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P251_CLASSIFY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466862569653633771)
,p_name=>'P251_CLASSIFY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_item_source_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_source=>'CLASSIFY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466862944815633772)
,p_name=>'P251_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_item_source_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_prompt=>unistr('\7C7B\522B\540D\79F0')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466863379549633772)
,p_name=>'P251_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_item_source_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466863728660633772)
,p_name=>'P251_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_item_source_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466864183881633772)
,p_name=>'P251_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_item_source_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2466864572098633772)
,p_name=>'P251_ROW_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2742471623635810523)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2466869135687633783)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2466867556906633775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466869607173633783)
,p_event_id=>wwv_flow_imp.id(2466869135687633783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2466870027064633783)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2466867975163633775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466871100528633784)
,p_event_id=>wwv_flow_imp.id(2466870027064633783)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P251_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\7C7B\522B\540D\79F0'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466871540824633784)
,p_event_id=>wwv_flow_imp.id(2466870027064633783)
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
'    from CHECK_CLASSIFY',
'    where TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and NAME = :P251_NAME',
'      and DEL_FLAG = 0',
'      and CLASSIFY_ID != :P251_CLASSIFY_ID;',
'',
'    if v_count = 0 then',
'        update CHECK_CLASSIFY',
'        set NAME=:P251_NAME,',
'            REMARK=:P251_REMARK,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where CLASSIFY_ID = :P251_CLASSIFY_ID;',
'        row_count := SQL%ROWCOUNT;',
'    else',
'        row_count := -1;',
'    end if;',
'',
'    apex_util.set_session_state(''P251_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P251_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P251_NAME,P251_REMARK,P251_CLASSIFY_ID'
,p_attribute_03=>'P251_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466872020254633785)
,p_event_id=>wwv_flow_imp.id(2466870027064633783)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P251_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P251_ROW_COUNT'') == -1) {',
unistr('    alert(''\7C7B\522B\540D\79F0\5DF2\7ECF\5B58\5728'');'),
'    return false;',
'}',
'else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466870549894633784)
,p_event_id=>wwv_flow_imp.id(2466870027064633783)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2466872438113633785)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2466868383392633775)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466872959628633785)
,p_event_id=>wwv_flow_imp.id(2466872438113633785)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P251_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\7C7B\522B\540D\79F0'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466873496252633786)
,p_event_id=>wwv_flow_imp.id(2466872438113633785)
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
'    from CHECK_CLASSIFY',
'    where TENANT_ID = :USERTENANT',
'    and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and NAME = :P251_NAME',
'      and DEL_FLAG = 0;',
'    if v_count = 0 then',
'        insert into CHECK_CLASSIFY(created_by, creation_date, updated_by, updated_date, remark, tenant_id,BASE_DEPT_ID, name,',
'                                   del_flag,',
'                                   is_enable)',
'        values (:USER_ID, sysdate, :USER_ID, sysdate, :P251_REMARK, :USERTENANT,:BASE_DEPT_ID, :P251_NAME, 0, 1);',
'        row_count := SQL%ROWCOUNT;',
'    else',
'        row_count := -1;',
'    end if;',
'',
'',
'    apex_util.set_session_state(''P251_ROW_COUNT'', row_count);',
'exception',
'    when others then',
'        apex_util.set_session_state(''P251_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''error'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P251_NAME,P251_REMARK'
,p_attribute_03=>'P251_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466874002529633786)
,p_event_id=>wwv_flow_imp.id(2466872438113633785)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P251_ROW_COUNT'') > 0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else if ($v(''P251_ROW_COUNT'') == -1) {',
unistr('    alert(''\7C7B\522B\540D\79F0\5DF2\7ECF\5B58\5728'');'),
'    return false;',
'}',
'else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2466874481634633786)
,p_event_id=>wwv_flow_imp.id(2466872438113633785)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2466866874753633774)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2742471623635810523)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \70B9\68C0\7C7B\522B-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283542271999549820
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2466868766692633783)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>283544163938549829
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2466866462159633774)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2742471623635810523)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \70B9\68C0\7C7B\522B-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>283541859405549820
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_name=>unistr('\4E8B\4EF6\590D\76D8\8868\5355')
,p_alias=>unistr('\4E8B\4EF6\590D\76D8\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\590D\76D8\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_attributes=>'close:function(event, ui){apex.navigation.dialog.close(true,{dialogPageId:62});}'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2184842850478631505)
,p_plug_name=>unistr('\4E8B\4EF6\590D\76D8\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'    te.event_id,',
'    first_event_code,',
'    second_event_code,',
'    phenomenon_code,',
'    event_follow_id,',
'    ext_user_id,',
'    event_cause,',
'    event_solution_scheme',
'from tenant_event te',
'left join tenant_event_follow_users tefu',
'on te.event_id = tefu.event_id',
'where te.event_id = :P102_EVENT_ID and IS_FINAL_HANDLER = 1',
'  AND te.BASE_DEPT_ID = :BASE_DEPT_ID',
'  AND tefu.BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2184848912091631512)
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
 p_id=>wwv_flow_imp.id(2175942969042662716)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2184848912091631512)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2175943398883662716)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2184848912091631512)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P102_EVENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2175936688122662709)
,p_name=>'P102_EVENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_source=>'EVENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2175937126826662710)
,p_name=>'P102_EVENT_FOLLOW_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_source=>'EVENT_FOLLOW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2175937473939662710)
,p_name=>'P102_FIRST_EVENT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B')
,p_source=>'FIRST_EVENT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name,code from tenant_event_category2 where del_flag = 0 and tenant_id = :USERTENANT and is_hide = 0 and parent_code = ''0'''
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2175937834838662711)
,p_name=>'P102_SECOND_EVENT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_source=>'SECOND_EVENT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name,code from tenant_event_category2 where del_flag = 0 and tenant_id = :USERTENANT and is_hide = 0 and parent_code = :P102_FIRST_EVENT_CODE'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P102_FIRST_EVENT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2175938301301662711)
,p_name=>'P102_PHENOMENON_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61')
,p_source=>'PHENOMENON_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name,code from tenant_event_phenomenon2 where del_flag = 0 and tenant_id = :USERTENANT and is_hide = 0'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2175938669181662711)
,p_name=>'P102_EXT_USER_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\8DDF\8FDB\4EBA')
,p_source=>'EXT_USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_named_lov=>'USERNAME_LOV1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_user_id',
'from MPF_USER_DEPT_MAIN_ASSO_V',
'WHERE TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2175939071423662712)
,p_name=>'P102_EVENT_CAUSE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\4E8B\4EF6\539F\56E0')
,p_source=>'EVENT_CAUSE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1500
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2175939492282662712)
,p_name=>'P102_EVENT_SOLUTION_SCHEME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_item_source_plug_id=>wwv_flow_imp.id(2184842850478631505)
,p_prompt=>unistr('\89E3\51B3\65B9\6848')
,p_source=>'EVENT_SOLUTION_SCHEME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>1500
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2175943830892662717)
,p_validation_name=>unistr('\4E8B\4EF6\539F\56E0\9A8C\8BC1')
,p_validation_sequence=>10
,p_validation=>'P102_EVENT_CAUSE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\4E8B\4EF6\539F\56E0\672A\586B\5199')
,p_associated_item=>wwv_flow_imp.id(2175939071423662712)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2175944270161662717)
,p_validation_name=>unistr('\89E3\51B3\65B9\6CD5\9A8C\8BC1')
,p_validation_sequence=>20
,p_validation=>'P102_EVENT_SOLUTION_SCHEME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('\89E3\51B3\65B9\6848\672A\586B\5199')
,p_associated_item=>wwv_flow_imp.id(2175939492282662712)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2175945418718662717)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2175942969042662716)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2175945839994662717)
,p_event_id=>wwv_flow_imp.id(2175945418718662717)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166725016745354527)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166725123192354528)
,p_event_id=>wwv_flow_imp.id(2166725016745354527)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',102,''\4E8B\4EF6\590D\76D8\8868\5355'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2175944541165662717)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\884CDML\5904\7406')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    t_count number(10);',
'begin',
'    select count(*) into t_count from tenant_event_audit_asso where event_id = :P102_EVENT_ID and is_audit <> ''fail'';',
'    if t_count > 0 then',
'        apex_error.add_error (',
unistr('            p_message          => ''\5DF2\6709\4EBA\5BF9\8BE5\4E8B\4EF6\8FDB\884C\590D\76D8'','),
'            p_display_location => apex_error.c_on_error_page );',
'    else',
'        insert into tenant_event_audit_asso',
'            (event_id,event_first_category_code,event_second_category_code,event_phenomenon_code,event_cause,event_solution_scheme,tenant_id,created_by,creation_date,updated_by,update_date,is_audit)',
'        values(:P102_EVENT_ID,:P102_FIRST_EVENT_CODE,:P102_SECOND_EVENT_CODE,:P102_PHENOMENON_CODE,:P102_EVENT_CAUSE,:P102_EVENT_SOLUTION_SCHEME,:USERTENANT,:APP_USER,SYSDATE,:APP_USER,SYSDATE,''wait'');',
'    end if;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT',
'        ,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50381400594877861
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2175945007340662717)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>50381866769877861
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2175942283353662713)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2184842850478631505)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \4E8B\4EF6\590D\76D8\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>50379142782877857
);
wwv_flow_imp.component_end;
end;
/

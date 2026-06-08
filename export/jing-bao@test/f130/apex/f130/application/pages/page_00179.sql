prompt --application/pages/page_00179
begin
--   Manifest
--     PAGE: 00179
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
 p_id=>179
,p_name=>unistr(' \8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_alias=>unistr('\8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr(' \8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2243041882701597799)
,p_plug_name=>unistr(' \8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select REPORT_POLICY_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       REMARK,',
'       TENANT_ID,',
'       PROJECT_ID,',
'       DECODE(TIME_TYPE, ''HOUR'', MINUTES / 60, ''MINUTES'', MINUTES) MINUTES,',
'       TIMES,',
'       IS_ENABLE,',
'       TIME_TYPE',
'from TENANT_PROJECT_REPORT_POLICY',
'where TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2241622411323640551)
,p_button_sequence=>150
,p_button_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2241622528461640552)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(628147881623777423)
,p_name=>'P179_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(628148056929777424)
,p_name=>'P179_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(628148101247777425)
,p_name=>'P179_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(628148255007777426)
,p_name=>'P179_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(628148313970777427)
,p_name=>'P179_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2241622296964640550)
,p_name=>'P179_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\5907\6CE8\FF1A')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243042224183597799)
,p_name=>'P179_REPORT_POLICY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_source=>'REPORT_POLICY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243045074596597795)
,p_name=>'P179_PROJECT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\9879\76EE\540D\79F0\FF1A')
,p_source=>'PROJECT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT PROJECT_NAME,PROJECT_ID FROM TENANT_PROJECT WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND IS_ENABLE = 1'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2243045440257597795)
,p_name=>'P179_MINUTES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\8BBE\5907\68C0\6D4B\65F6\95F4\FF1A')
,p_source=>'MINUTES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243045813742597794)
,p_name=>'P179_TIMES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\53D1\751F\6B21\6570\FF1A')
,p_source=>'TIMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>512
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243046236410597794)
,p_name=>'P179_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\662F\5426\542F\7528\FF1A')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'YES_NO_LOV'
,p_lov=>'.'||wwv_flow_imp.id(2316119825628346399)||'.'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243046600149597794)
,p_name=>'P179_TIME_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_item_source_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_prompt=>unistr('\68C0\6D4B\65F6\95F4\5355\4F4D\FF1A')
,p_source=>'TIME_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\5206\949F;MINUTES,\5C0F\65F6;HOUR')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243095960114526613)
,p_name=>'P179_ROW_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2243041882701597799)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2241622606537640553)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2241622528461640552)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2241622758791640554)
,p_event_id=>wwv_flow_imp.id(2241622606537640553)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2241622799749640555)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2241622411323640551)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P179_REPORT_POLICY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2241622919416640556)
,p_event_id=>wwv_flow_imp.id(2241622799749640555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    INSERT INTO TENANT_PROJECT_REPORT_POLICY (CREATED_BY,UPDATED_BY,TENANT_ID,BASE_DEPT_ID,PROJECT_ID,MINUTES,TIMES,IS_ENABLE,REMARK,TIME_TYPE) ',
'VALUES (:USER_ID,:USER_ID,:USERTENANT,:BASE_DEPT_ID,:P179_PROJECT_ID,DECODE(:P179_TIME_TYPE,''MINUTES'',:P179_MINUTES,''HOUR'',:P179_MINUTES*60),:P179_TIMES,:P179_IS_ENABLE,:P179_REMARK,:P179_TIME_TYPE);',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P179_ROW_COUNT'',ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P179_ROW_COUNT'',-1);',
'END;'))
,p_attribute_02=>'P179_PROJECT_ID,P179_MINUTES,P179_TIME_TYPE,P179_TIMES,P179_IS_ENABLE,P179_REMARK'
,p_attribute_03=>'P179_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2241623259455640559)
,p_event_id=>wwv_flow_imp.id(2241622799749640555)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P179_ROW_COUNT'') == 0){',
unistr('    alert(''\6570\636E\65B0\589E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2243095673617526610)
,p_event_id=>wwv_flow_imp.id(2241622799749640555)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2241623030433640557)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2241622411323640551)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_display_when_cond=>'P179_REPORT_POLICY_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2241623133721640558)
,p_event_id=>wwv_flow_imp.id(2241623030433640557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    UPDATE TENANT_PROJECT_REPORT_POLICY',
'    SET UPDATED_BY = :USER_ID,',
'        UPDATE_DATE = SYSDATE,',
'        PROJECT_ID = :P179_PROJECT_ID,',
'        MINUTES = DECODE(:P179_TIME_TYPE,''MINUTES'',:P179_MINUTES,''HOUR'',:P179_MINUTES*60),',
'        TIMES = :P179_TIMES,',
'        IS_ENABLE = :P179_IS_ENABLE,',
'        REMARK = :P179_REMARK ,',
'        TIME_TYPE = :P179_TIME_TYPE',
'    WHERE REPORT_POLICY_ID = :P179_REPORT_POLICY_ID;',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P179_ROW_COUNT'',ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P179_ROW_COUNT'',-1);',
'END;'))
,p_attribute_02=>'P179_PROJECT_ID,P179_MINUTES,P179_TIME_TYPE,P179_TIMES,P179_IS_ENABLE,P179_REMARK,P179_REPORT_POLICY_ID'
,p_attribute_03=>'P179_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2243095758932526611)
,p_event_id=>wwv_flow_imp.id(2241623030433640557)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P179_ROW_COUNT'') == 0){',
unistr('    alert(''\6570\636E\4FEE\6539\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2243095815229526612)
,p_event_id=>wwv_flow_imp.id(2241623030433640557)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2243054078139597788)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2243041882701597799)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355  \8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>59729475385513834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2243054475481597788)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>59729872727513834
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2243053640184597789)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2243041882701597799)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355  \8BBE\5907\89C4\5219\914D\7F6E-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>59729037430513835
);
wwv_flow_imp.component_end;
end;
/

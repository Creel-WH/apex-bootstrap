prompt --application/pages/page_00146
begin
--   Manifest
--     PAGE: 00146
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
 p_id=>146
,p_name=>unistr('\6587\4EF6\4E0A\4F20-\8868\5355')
,p_alias=>unistr('\6587\4EF6\4E0A\4F20-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\4E0A\4F20-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var formData = new FormData();',
'$(function () {',
'',
'    $(''#P146_FILE_NAME_input'').attr(''name'', ''file'');',
'',
unistr('    //\4E0A\4F20\6587\4EF6-\5355\4E2A'),
'    $("body").on("change", "#P146_FILE_NAME_input", function () {',
'        alert();',
'         console.log($("#P146_FILE_NAME_input")[0].files);',
'         console.log($("#P146_FILE_NAME_input"));',
'        var type = "file";',
unistr('        //\5B9E\4F8B\5316\4E00\4E2AFormData\6765\8FDB\884C\6587\4EF6\4E0A\4F20'),
'        // formData.append(type, $("#P146_FILE_NAME")[0].files[0]);',
'        formData.append(type, $("#P146_FILE_NAME_input")[0].files[0]);',
'       ',
'        // var name = $(''span[class="apex-item-filedrop-filename"]'').text();',
'        // var fileExtension = name.substring(name.lastIndexOf(''.'')+1);',
'        var name =$(''.a-FileDrop-heading'').text();',
'        var fileExtension = name.substring(name.lastIndexOf(''.'')+1);',
'        $s(''P146_FILE_TYPE'', fileExtension);',
'        $s(''P146_FNAME'', name);',
'    });',
'})'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2223430830198336192)
,p_plug_name=>unistr('\6587\4EF6\4E0A\4F20-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'SELECT FILE_ID,FILE_NAME,FILE_TYPE,FILE_URL,DEL_FLAG,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE FROM APEX_UPLOAD_FILE_CONFIG WHERE DEL_FLAG = 0'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2223437524367336200)
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
 p_id=>wwv_flow_imp.id(2223437975439336200)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2223437524367336200)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2223440108907336202)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2223437524367336200)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0A\4F20')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P146_FILE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223431274740336194)
,p_name=>'P146_FILE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_use_cache_before_default=>'NO'
,p_prompt=>'File Id'
,p_source=>'FILE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223431597067336195)
,p_name=>'P146_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>128
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223431995365336196)
,p_name=>'P146_FILE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'FILE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223432395961336197)
,p_name=>'P146_FILE_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'FILE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223432845537336197)
,p_name=>'P146_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223433282272336197)
,p_name=>'P146_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223433649684336197)
,p_name=>'P146_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223434028633336197)
,p_name=>'P146_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2223434438177336198)
,p_name=>'P146_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_item_source_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2234033965808895116)
,p_name=>'P146_FNAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2234034040257895117)
,p_name=>'P146_ROW_COUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2223430830198336192)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2223438043996336200)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2223437975439336200)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2223438879437336201)
,p_event_id=>wwv_flow_imp.id(2223438043996336200)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2234034760242895124)
,p_name=>unistr('\4E0A\4F20')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2223440108907336202)
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''.apex-item-filedrop-filename'').text().length > 0;',
'',
'$(''#P146_FNAME'').length>0;'))
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227668800638331334)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P146_ROW_COUNT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234035239410895129)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('alert("\8BF7\9009\62E9\6587\4EF6");')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234034878117895125)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$.ajax({',
'    type: ''post'',',
'    url: ''http://jingbao_api.ywjasolar.com/apex/oss/upload'',',
'    async: false,',
'    data: formData,',
'    cache: false,',
'    contentType: false,',
unistr('    //\53D6\6D88\683C\5F0F\5316\6570\636E'),
'    processData: false,',
'    headers: {',
'        ''appKey'': ''&APPKEY.'',',
'        ''appSecret'': ''&APPSECRET.''',
'    },',
'    success: function (data, textStatus, jqXHR) {',
'',
'        if (data.code === 200) {',
'',
'            $s("P146_FILE_URL", data.data);',
unistr('            // apex.message.showPageSuccess("\4E0A\4F20\6210\529F,\6587\4EF6\5730\5740\5DF2\590D\5236\5230\526A\8D34\677F!");'),
'            return true;',
'        } else {',
unistr('            alert(''code\FF1A''+data.code +''\005Cn msg\FF1A''+data.msg+''\005Cn appKey\FF1A''+''&APPKEY.''+''\005Cn appSecret\FF1A''+''&APPSECRET.''+''0'');'),
'            return false;',
'',
'        }',
'    },',
'    error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('        alert("\4E0A\4F20\5931\8D25");'),
'        return false;',
'    }',
'});',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234034962394895126)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
' row_count NUMBER;',
'BEGIN',
'    INSERT INTO APEX_UPLOAD_FILE_CONFIG(FILE_NAME,',
'                                 FILE_URL,',
'                                 FILE_TYPE,',
'                                 DEL_FLAG,',
'                                 CREATED_BY,',
'                                 CREATION_DATE,',
'                                 UPDATED_BY,',
'                                 UPDATE_DATE,',
'                                 TENANT_ID,',
'                                 BASE_DEPT_ID)',
'    VALUES (:P146_FNAME,',
'            :P146_FILE_URL,',
'            :P146_FILE_TYPE,',
'            0,',
'            :USER_ID,',
'            SYSDATE,',
'            :USER_ID,',
'            SYSDATE,',
'            :USERTENANT,',
'            :BASE_DEPT_ID);',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P146_ROW_COUNT'', row_count);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P146_ROW_COUNT'', row_count);',
'END;'))
,p_attribute_02=>'P146_FNAME,P146_FILE_URL,P146_FILE_TYPE,P146_ROW_COUNT'
,p_attribute_03=>'P146_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P146_FILE_URL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234035024005895127)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P146_ROW_COUNT'') == 0) {',
unistr('    alert(''\6587\4EF6\4E0A\4F20\5931\8D25'');'),
'    return false;',
'}',
'',
'if ($v(''P146_ROW_COUNT'') == 1) {',
unistr('    alert(''\6587\4EF6\4E0A\4F20\6210\529F'');'),
'    return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234035107879895128)
,p_event_id=>wwv_flow_imp.id(2234034760242895124)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2223440896148336204)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2223430830198336192)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \6587\4EF6\4E0A\4F20-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40116293394252250
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2223441365458336204)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>40116762704252250
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2223440551620336203)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2223430830198336192)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6587\4EF6\4E0A\4F20-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>40115948866252249
);
wwv_flow_imp.component_end;
end;
/

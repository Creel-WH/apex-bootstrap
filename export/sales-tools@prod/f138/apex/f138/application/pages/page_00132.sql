prompt --application/pages/page_00132
begin
--   Manifest
--     PAGE: 00132
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>132
,p_name=>unistr('\91CD\547D\540D\8BBE\7F6E')
,p_alias=>unistr('\91CD\547D\540D\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\91CD\547D\540D\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3241923283210633167)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2791384495324666466)
,p_plug_name=>unistr('\91CD\547D\540D')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258771969765615337)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2791384750897666469)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9258794938549615344)
,p_plug_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2791385128295666472)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2791384750897666469)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2791384987171666471)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2791384750897666469)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2791384568990666467)
,p_name=>'P132_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2791384495324666466)
,p_item_default=>'SELECT FILE_NAME FROM STS_FILE WHERE FILE_ID = :P132_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6587\4EF6\5E93\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2791384637536666468)
,p_name=>'P132_FILE_NAME_OLD'
,p_item_sequence=>100
,p_use_cache_before_default=>'NO'
,p_item_default=>'SELECT FILE_NAME FROM STS_FILE WHERE FILE_ID = :P132_FILE_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2791384853841666470)
,p_name=>'P132_FILE_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2791385568567666477)
,p_name=>'P132_COUNT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2791385182075666473)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2791384987171666471)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2791385253886666474)
,p_event_id=>wwv_flow_imp.id(2791385182075666473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2791385351138666475)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2791385128295666472)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2791385798785666479)
,p_event_id=>wwv_flow_imp.id(2791385351138666475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P132_FILE_NAME''))){',
unistr('    alert(''\6587\4EF6\5E93\540D\79F0\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2791385717325666478)
,p_event_id=>wwv_flow_imp.id(2791385351138666475)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_FILE_PATH VARCHAR2(4000);',
'    V_ERR_MSG   VARCHAR2(2000);',
'BEGIN',
unistr('    --\4FEE\6539\6570\636E'),
'    UPDATE STS_FILE',
'    SET FILE_NAME  =:P132_FILE_NAME,',
'        FILE_PATH  =:P132_FILE_NAME,',
'        UPDATED_BY =:MPF_USER_ID,',
'        UPDATE_DATE=SYSDATE',
'    WHERE FILE_ID = :P132_FILE_ID;',
'',
unistr('    --\4FEE\6539\4E0B\7EA7\6570\636E'),
'    FOR ITEM IN (SELECT FILE_ID, FILE_PATH FROM STS_FILE WHERE ROOT_FOLDER_ID = :P132_FILE_ID)',
'        LOOP',
unistr('            --\66FF\6362\8DEF\5F84'),
'            SELECT REGEXP_REPLACE(ITEM.FILE_PATH, :P132_FILE_NAME_OLD, :P132_FILE_NAME, 1, 1)',
'            INTO V_FILE_PATH',
'            FROM DUAL;',
unistr('            --\4FEE\6539\6570\636E'),
'            UPDATE STS_FILE',
'            SET FILE_PATH  =V_FILE_PATH,',
'                UPDATED_BY =:MPF_USER_ID,',
'                UPDATE_DATE=SYSDATE',
'            WHERE FILE_ID = ITEM.FILE_ID;',
'        END LOOP;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P132_COUNT'', -1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6587\4EF6\5E93\91CD\547D\540D'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P132_COUNT'', -1);',
'END;',
''))
,p_attribute_02=>'P132_FILE_NAME_OLD,P132_FILE_ID,P132_FILE_NAME'
,p_attribute_03=>'P132_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2802723819949222035)
,p_event_id=>wwv_flow_imp.id(2791385351138666475)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P132_COUNT'')){',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2791385472500666476)
,p_event_id=>wwv_flow_imp.id(2791385351138666475)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

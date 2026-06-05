prompt --application/pages/page_00147
begin
--   Manifest
--     PAGE: 00147
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
 p_id=>147
,p_name=>unistr('\539F\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_alias=>unistr('\539F\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\539F\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3262463649465718685)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>170
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3262463758486718686)
,p_plug_name=>unistr('\5F52\6863\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262463165179718680)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3262463649465718685)
,p_button_name=>unistr('\4E0D\5F52\6863')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\4E0D\5F52\6863')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262463209481718681)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3262463649465718685)
,p_button_name=>unistr('\5F52\6863')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5F52\6863')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262463374545718682)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3262463649465718685)
,p_button_name=>unistr('\5173\95ED')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\5173\95ED')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_required_patch=>wwv_flow_imp.id(9714800822038168504)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262462548513718674)
,p_name=>'P147_FILE_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262462910634718678)
,p_name=>'P147_TIPS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3262463758486718686)
,p_prompt=>unistr('\539F\6587\4EF6\662F\5426\5F52\6863')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9714976714653168621)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge:margin-top-lg:margin-bottom-lg:margin-left-lg:margin-right-lg'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262464222509718691)
,p_name=>'P147_MESSAGE'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262464335180718692)
,p_name=>'P147_ROW_COUNT'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262463385638718683)
,p_name=>unistr('\5173\95ED')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262463374545718682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262463516806718684)
,p_event_id=>wwv_flow_imp.id(3262463385638718683)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3262463758486718686)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262463846120718687)
,p_name=>unistr('\8FD4\56DE\5217\8868')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262463165179718680)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262463939266718688)
,p_event_id=>wwv_flow_imp.id(3262463846120718687)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href = "f?p=&APP_ID.:133:&APP_SESSION.:::::";'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262464027814718689)
,p_name=>unistr('\6267\884C\5F52\6863')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262463209481718681)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262464147115718690)
,p_event_id=>wwv_flow_imp.id(3262464027814718689)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_row_count NUMBER(10) := 0;',
'    v_err_msg   VARCHAR2(2000);',
'    v_plans_file_date DATE;',
' /**',
' * CREATE BY: WXX',
' * CREATE DATE: 2025/5/22 16:30',
unistr(' * DESCRIBE: \539F\6587\4EF6\5F52\6863'),
' */',
'BEGIN',
'    v_plans_file_date := TRUNC(SYSDATE, ''MI'');',
'',
'    UPDATE STS_FILE',
'    SET PLANS_FILE_TYPE = ''IMMEDIATELY'',',
'        PLANS_FILE_DATE = v_plans_file_date,',
'        ACTUAL_FILE_DATE = v_plans_file_date,',
'        FILE_STATUS = ''ARCHIVE'',',
'        UPDATED_BY = :MPF_USER_ID,',
'        UPDATE_DATE = v_plans_file_date',
'    WHERE FILE_ID = :P147_FILE_ID',
'    AND DEL_FLAG = 0',
'    AND TENANT_ID = :USER_TENANT;',
'    v_row_count := SQL%ROWCOUNT;',
'    COMMIT;',
'',
unistr('    -- 3. \6DFB\52A0\64CD\4F5C\7ED3\679C\53CD\9988'),
'    APEX_UTIL.SET_SESSION_STATE(''P147_ROW_COUNT'', v_row_count);',
'    IF v_row_count > 0 THEN',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P147_MESSAGE'', ''\6210\529F\5F52\6863 '' || v_row_count || '' \4E2A\6587\4EF6'');'),
'    ELSE',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P147_MESSAGE'', ''\672A\627E\5230\5339\914D\7684\6587\4EF6\6216\6587\4EF6\4E0D\53EF\5F52\6863'');'),
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P147_ROW_COUNT'', 0);',
unistr('        v_err_msg := ''\6587\4EF6ID: '' || :P147_FILE_ID || '' \9519\8BEF: '' || SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;'),
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\539F\5F52\6863\8BBE\7F6E'', ''ERROR'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''\5F52\6863\5931\8D25: '' || SUBSTR(SQLERRM, 1, 200));'),
'END;'))
,p_attribute_02=>'P147_FILE_ID'
,p_attribute_03=>'P147_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

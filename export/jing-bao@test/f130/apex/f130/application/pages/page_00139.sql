prompt --application/pages/page_00139
begin
--   Manifest
--     PAGE: 00139
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
 p_id=>139
,p_name=>unistr('\4E8B\4EF6\5E93\6279\91CF\5BFC\5165')
,p_alias=>unistr('\4E8B\4EF6\5E93\6279\91CF\5BFC\5165')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\5E93\6279\91CF\5BFC\5165')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2159450325775950113)
,p_plug_name=>unistr('\9009\62E9\6587\4EF6')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NULL'
,p_plug_display_when_condition=>'P139_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2160045477218809068)
,p_plug_name=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P139_FILE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2160046032253809073)
,p_plug_name=>unistr('\64CD\4F5C')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2160046042273809074)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2160046032253809073)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2160046210817809075)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2160046032253809073)
,p_button_name=>unistr('\5BFC\5165')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BFC\5165')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2159450364958950114)
,p_name=>'P139_ERROR_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2159450325775950113)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2159450485634950115)
,p_name=>'P139_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2159450325775950113)
,p_prompt=>unistr('\4E0A\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'DROPZONE_BLOCK',
  'dropzone_description', unistr('\652F\6301\7684\683C\5F0F XLSX'),
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2160045587532809069)
,p_name=>'P139_FILE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2160045477218809068)
,p_prompt=>unistr('\5DF2\52A0\8F7D\6587\4EF6')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2160045712062809070)
,p_name=>'P139_XLSX_WORKSHEET'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2160045477218809068)
,p_prompt=>unistr('XLSX \5DE5\4F5C\8868')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.sheet_display_name,',
'       p.sheet_file_name',
'  from apex_application_temp_files f,',
'       table( apex_data_parser.get_xlsx_worksheets( p_content => f.blob_content ) ) p',
' where f.name = :P139_FILE',
''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2159450636014950116)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_FILE'
,p_condition_element=>'P139_FILE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2160045434796809067)
,p_event_id=>wwv_flow_imp.id(2159450636014950116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2160045826896809071)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P139_XLSX_WORKSHEET'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2160045866045809072)
,p_event_id=>wwv_flow_imp.id(2160045826896809071)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2160046356719809077)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2160046042273809074)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2160046488505809078)
,p_event_id=>wwv_flow_imp.id(2160046356719809077)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2160046574802809079)
,p_name=>unistr('\65B0\5EFA_3')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2160046210817809075)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2160046715720809080)
,p_event_id=>wwv_flow_imp.id(2160046574802809079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    CC          NUMBER(20);',
'    FIRST_CODE  VARCHAR2(100);',
'    SECOND_CODE VARCHAR2(100);',
'    PCODE       VARCHAR2(100);',
'    CNAME       VARCHAR2(1000);',
'    CCATEGORY   VARCHAR2(100);',
'    CCODE       VARCHAR2(100);',
'BEGIN',
'    CC := 0;',
'    FOR ITEMS IN',
'        (select p.line_number,',
'                p.col001,',
'                p.col002,',
'                p.col003',
'         from apex_application_temp_files f,',
'              table ( apex_data_parser.parse(',
'                      p_content => f.blob_content,',
'                      p_file_name => f.filename,',
'                      p_xlsx_sheet_name => case when :P139_XLSX_WORKSHEET is not null then :P139_XLSX_WORKSHEET end,',
'                      p_add_headers_row => ''Y'',',
'                      p_file_charset => ''AL32UTF8'',',
'                      p_max_rows => 10000) ) p',
'         where f.name = :P139_FILE)',
'        LOOP',
'            CCATEGORY := ITEMS.col001;',
'            CCODE := ITEMS.col002;',
'            CNAME := ITEMS.col003;',
'            SELECT COUNT(*) INTO CC FROM TENANT_EVENT_PHENOMENON WHERE TENANT_ID = :USERTENANT AND CODE = CCODE AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'            IF CC = 0 AND NVL(CNAME, ''N'') <> ''N'' THEN',
'                INSERT INTO TENANT_EVENT_PHENOMENON (CREATION_DATE, UPDATE_DATE, TENANT_ID, NAME, CODE, IS_HIDE,',
'                                                     SORT_NUM, DEL_FLAG)',
'                VALUES (SYSDATE, SYSDATE, :USERTENANT, CNAME, CCODE, 0, 0, 0);',
'                COMMIT;',
'            END IF;',
'            SELECT NVL(CODE, ''N'')',
'            INTO PCODE',
'            FROM TENANT_EVENT_PHENOMENON',
'            WHERE TENANT_ID = :USERTENANT',
'              AND BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND CODE = ITEMS.col002',
'              AND ROWNUM = 1;',
'            SELECT NVL(CODE, ''N'')',
'            INTO FIRST_CODE',
'            FROM TENANT_EVENT_CATEGORY',
'            WHERE TENANT_ID = :USERTENANT',
'              AND BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND NODE_LEVEL = 1',
'              AND CODE = ''A04''',
'              AND ROWNUM = 1;',
'            SELECT NVL(CODE, ''N'')',
'            INTO SECOND_CODE',
'            FROM TENANT_EVENT_CATEGORY',
'            WHERE TENANT_ID = :USERTENANT',
'              AND BASE_DEPT_ID = :BASE_DEPT_ID',
'              AND NODE_LEVEL = 2',
'              AND PARENT_CODE = ''A04''',
'              AND NAME = ITEMS.col001',
'              AND ROWNUM = 1;',
'            IF NVL(PCODE, ''N'') <> ''N'' AND NVL(FIRST_CODE, ''N'') <> ''N'' AND NVL(SECOND_CODE, ''N'') <> ''N'' THEN',
'                SELECT COUNT(*)',
'                INTO CC',
'                FROM TENANT_EVENT_LIBRARY',
'                WHERE TENANT_ID = :USERTENANT',
'                  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'                  AND CATEGORY_FIRST_CODE = FIRST_CODE',
'                  AND CATEGORY_SECOND_CODE = SECOND_CODE',
'                  AND PHENOMENON_CODE = PCODE;',
'                IF CC = 0 THEN',
'                    INSERT INTO TENANT_EVENT_LIBRARY(CREATION_DATE, UPDATE_DATE, TENANT_ID, CATEGORY_FIRST_CODE,',
'                                                     CATEGORY_SECOND_CODE, PHENOMENON_CODE, IS_HIDE, SORT_NUM)',
'                    VALUES (SYSDATE, SYSDATE, :USERTENANT, FIRST_CODE, SECOND_CODE, PCODE, 0, 0);',
'                    COMMIT;',
'                END IF;',
'            END IF;',
'--END IF;',
'        END LOOP;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2160046801767809081)
,p_event_id=>wwv_flow_imp.id(2160046574802809079)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2161381805487650671)
,p_name=>unistr('\65B0\5EFA_4')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2161381910412650672)
,p_event_id=>wwv_flow_imp.id(2161381805487650671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',139,''\4E8B\4EF6\5E93\6279\91CF\5BFC\5165'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

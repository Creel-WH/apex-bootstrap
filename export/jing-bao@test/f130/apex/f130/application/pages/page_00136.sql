prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
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
 p_id=>136
,p_name=>unistr('\4F01\4E1A\673A\5668\4EBA\6279\91CF\914D\7F6E')
,p_alias=>unistr('\4F01\4E1A\673A\5668\4EBA\6279\91CF\914D\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4F01\4E1A\673A\5668\4EBA\6279\91CF\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2158654505129807703)
,p_plug_name=>unistr('\6279\91CF\65B0\589E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2158655116470807709)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2158655177360807710)
,p_button_sequence=>130
,p_button_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158654550790807704)
,p_name=>'P136_CONVERSATION_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_prompt=>unistr('\7FA4\804A\673A\5668\4EBA\540D\79F0')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158654672222807705)
,p_name=>'P136_JSNOTICE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_item_default=>'1'
,p_prompt=>unistr('\662F\5426\6676\8C79\5DE5\5355\901A\77E5')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158654773014807706)
,p_name=>'P136_ENABLE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_item_default=>'1'
,p_prompt=>unistr('\662F\5426\6709\6548')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158654879740807707)
,p_name=>'P136_DEPID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_item_default=>'0'
,p_prompt=>unistr('\90E8\95E8\FF08\53EF\591A\9009\FF09')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TO_CHAR(name) NAME,ext_org_id from MPF_SHARE_DEPT_V WHERE TENANT_ID=:usertenant',
' and BASE_DEPT_ID=:BASE_DEPT_ID',
'union',
unistr('select ''\6240\6709\90E8\95E8'',0 from dual')))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2158655040913807708)
,p_name=>'P136_CONVERSATION_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_prompt=>unistr('\7FA4\804A\673A\5668\4EBAID')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2159449747937950108)
,p_name=>'P136_FABID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_item_default=>'0'
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TO_CHAR(NAME) ,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT',
' and BASE_DEPT_ID=:BASE_DEPT_ID and del_flag=0',
'UNION',
unistr('SELECT ''\6240\6709\5382\533A'' NAME,0 FAB_ID FROM DUAL;')))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2159449924909950109)
,p_name=>'P136_NOTICETIME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_prompt=>unistr('\901A\77E5\65F6\95F4\FF08\5206\949F\FF09')
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'max_value', '9999',
  'min_value', '1',
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2159450029269950110)
,p_name=>'P136_ISNOTICE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_item_default=>'1'
,p_prompt=>unistr('\5DE5\5355\5217\8868\662F\5426\63A8\9001')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2160914675130314606)
,p_name=>'P136_TYPES'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_prompt=>unistr('\63A8\9001\7C7B\578B')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\5382\533A\63A8\9001;0,\90E8\95E8\63A8\9001;1')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2169975741667946094)
,p_name=>'P136_ROBOT_ID'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_prompt=>unistr('\63A8\9001\673A\5668\4EBA')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME,ROBOT_ID from TENANT_ROBOT WHERE TENANT_ID = :USERTENANT',
' and BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2169975988155946096)
,p_name=>'P136_ROW_COUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2158654505129807703)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2158655321332807711)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2158655116470807709)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2158655360721807712)
,p_event_id=>wwv_flow_imp.id(2158655321332807711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2158655540955807713)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2158655177360807710)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2158655600115807714)
,p_event_id=>wwv_flow_imp.id(2158655540955807713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P136_CONVERSATION_NAME'')) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804A\673A\5668\4EBA\540D\79F0'');'),
'    return false;',
'}',
'',
'if (!$v(''P136_CONVERSATION_ID'')) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804A\673A\5668\4EBAID'');'),
'    return false;',
'}',
'',
'if (!$v(''P136_NOTICETIME'')) {',
unistr('    alert(''\8BF7\8F93\5165\901A\77E5\65F6\95F4\FF08\5206\949F\FF09'');'),
'    return false;',
'}',
'',
'if (!$v(''P136_ROBOT_ID'')) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\673A\5668\4EBA'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2169975910615946095)
,p_event_id=>wwv_flow_imp.id(2158655540955807713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    NCOUNT NUMBER(20);',
'    ROW_COUNT NUMBER(20) := 0;',
'BEGIN',
'    -- Test statements here',
'    FOR ITEM IN (SELECT * FROM TABLE (SPLITSTR(:P136_DEPID, '','')))',
'        LOOP',
'            SELECT COUNT(*)',
'              INTO NCOUNT',
'              FROM tenant_robot_subscribe',
'             WHERE CONVERSATION_ID = :P136_CONVERSATION_ID',
'               AND TENANT_ID = :USERTENANT',
'               AND DEPT_ID = ITEM.COLUMN_VALUE',
'               AND NOTICE_TIME = :P136_NOTICETIME',
'               AND FAB_ID = :P136_FABID',
'                and BASE_DEPT_ID=:BASE_DEPT_ID',
'               ;',
'            IF NCOUNT <= 0 THEN',
'                    INSERT INTO tenant_robot_subscribe(TENANT_ID, CONVERSATION_NAME, CONVERSATION_ID, ROBOT_ID, DEPT_ID,',
'                                                   is_enable, is_jbnotice, NOTICE_TIME, IS_NOTICE, FAB_ID, TYPES,BASE_DEPT_ID)',
'                VALUES (:USERTENANT, :P136_CONVERSATION_NAME, :P136_CONVERSATION_ID, :P136_ROBOT_ID, ITEM.COLUMN_VALUE, :P136_ENABLE, :P136_JSNOTICE, :P136_NOTICETIME, :P136_ISNOTICE,',
'                        :P136_FABID, :P136_TYPES, :BASE_DEPT_ID);',
'                ROW_COUNT := ROW_COUNT+SQL%ROWCOUNT;',
'            END IF;',
'        END LOOP;',
'    APEX_UTIL.SET_SESSION_STATE(''P136_ROW_COUNT'',ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P136_ROW_COUNT'',-1);',
'END;',
''))
,p_attribute_02=>'P136_CONVERSATION_NAME,P136_CONVERSATION_ID,P136_FABID,P136_DEPID,P136_NOTICETIME,P136_JSNOTICE,P136_ENABLE,P136_ISNOTICE,P136_ROBOT_ID,P136_TYPES'
,p_attribute_03=>'P136_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2169976098437946097)
,p_event_id=>wwv_flow_imp.id(2158655540955807713)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P136_ROW_COUNT'') == -1){',
unistr('    alert(''\589E\52A0\5931\8D25\FF01'');'),
'    return false;',
'}else{',
unistr('    alert(''\589E\52A0\6210\529F\FF01'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2158655650244807715)
,p_event_id=>wwv_flow_imp.id(2158655540955807713)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2161382196482650675)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2161382254351650676)
,p_event_id=>wwv_flow_imp.id(2161382196482650675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',136,''\4F01\4E1A\673A\5668\4EBA\6279\91CF\914D\7F6E'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2158655824058807716)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG  NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    NCOUNT     INTEGER;',
'    CON_ID     VARCHAR2(64);',
'    CON_NAME   VARCHAR2(100);',
'    ISENABLE   VARCHAR2(100);',
'    ISJB       VARCHAR2(100);',
'    ORGLIST    VARCHAR2(1000);',
'    NOTICETIME VARCHAR2(100);',
'    ISNOTICE   VARCHAR2(100);',
'    FABID      VARCHAR2(20);',
'    TYPES      VARCHAR2(20);',
'    ROBOTID    VARCHAR2(20);',
'begin',
'    CON_ID := apex_application.g_x01;',
'    CON_NAME := apex_application.g_x02;',
'    ISENABLE := apex_application.g_x04;',
'    ORGLIST := apex_application.g_x03;',
'    ISJB := apex_application.g_x05;',
'    NOTICETIME := apex_application.g_x06;',
'    ISNOTICE := apex_application.g_x07;',
'    FABID := apex_application.g_x08;',
'    TYPES := apex_application.g_x09;',
'    ROBOTID := apex_application.g_x10;',
'',
'',
'    -- Test statements here',
'    FOR ITEM IN (select * from table (send_split1(ORGLIST, '','')))',
'        LOOP',
'            SELECT COUNT(*)',
'            INTO NCOUNT',
'            FROM tenant_robot_subscribe',
'            WHERE CONVERSATION_ID = CON_ID',
'              AND TENANT_ID = :USERTENANT',
'              AND DEPT_ID = ITEM.COLUMN_VALUE',
'              AND NOTICE_TIME = NOTICETIME',
'              AND FAB_ID = FABID',
'             and BASE_DEPT_ID=:ORG_ID;',
'            IF NCOUNT <= 0 THEN',
'                INSERT INTO tenant_robot_subscribe(TENANT_ID, CONVERSATION_NAME, CONVERSATION_ID, ROBOT_ID, DEPT_ID,',
'                                                   is_enable, is_jbnotice, NOTICE_TIME, IS_NOTICE, FAB_ID, TYPES,BASE_DEPT_ID)',
'                VALUES (:USERTENANT, CON_NAME, CON_ID, ROBOTID, ITEM.COLUMN_VALUE, ISENABLE, ISJB, NOTICETIME, ISNOTICE,',
'                        FABID, TYPES,:ORG_ID);',
'                COMMIT;',
'            END IF;',
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
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>48453769781304305
);
wwv_flow_imp.component_end;
end;
/

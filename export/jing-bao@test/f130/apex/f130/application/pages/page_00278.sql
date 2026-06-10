prompt --application/pages/page_00278
begin
--   Manifest
--     PAGE: 00278
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
 p_id=>278
,p_name=>unistr('\91CD\65B0\590D\76D8\539F\56E0')
,p_alias=>unistr('\91CD\65B0\590D\76D8\539F\56E0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\91CD\65B0\590D\76D8\539F\56E0')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(866967619420680040)
,p_plug_name=>unistr(' \91CD\65B0\590D\76D8\539F\56E0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(866967922316680043)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(866967619420680040)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(866967730300680042)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(866967619420680040)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(866967676513680041)
,p_name=>'P278_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(866967619420680040)
,p_prompt=>unistr('\91CD\65B0\590D\76D8\539F\56E0')
,p_placeholder=>unistr('\8BF7\586B\5199\91CD\65B0\590D\76D8\539F\56E0')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(866969689441680061)
,p_name=>'P278_EVENT_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(866969786948680062)
,p_name=>'P278_EVENT_ANALYZE_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(866969902308680063)
,p_name=>'P278_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(866970158935680066)
,p_name=>'P278_CODE'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(866968007583680044)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(866967922316680043)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866968122430680045)
,p_event_id=>wwv_flow_imp.id(866968007583680044)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(866968211974680046)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(866967730300680042)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866969520837680059)
,p_event_id=>wwv_flow_imp.id(866968211974680046)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P278_CONTENT''))) {',
unistr('    alert(''\91CD\65B0\590D\76D8\539F\56E0\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866968602437680050)
,p_event_id=>wwv_flow_imp.id(866968211974680046)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6676\8C79\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_NAME    NVARCHAR2(100);',
'    V_CONTENT NVARCHAR2(1200);',
'    V_COUNT NUMBER(10);',
'BEGIN',
'    SELECT NAME INTO V_NAME FROM APEX_TENANT_USERS WHERE EXT_USER_ID = :USER_ID;',
unistr('    V_CONTENT := ''\3010'' || V_NAME || ''\3011\4FEE\6539\4E8B\4EF6\590D\76D8\5185\5BB9\FF0C\539F\56E0\FF1A'' || :P278_CONTENT;'),
'    INSERT INTO TENANT_EVENT_MESSAGE_BOARD(CREATED_BY,',
'                                           CREATION_DATE,',
'                                           UPDATED_BY,',
'                                           UPDATE_DATE,',
'                                           EVENT_ID,',
'                                           TENANT_ID,',
'                                           BASE_DEPT_ID,',
'                                           EXT_USER_ID,',
'                                           CONTENT,',
'                                           TYPE)',
'    VALUES (:USER_ID, SYSDATE, :USER_ID, SYSDATE, :P278_EVENT_ID, :USERTENANT,:BASE_DEPT_ID , 0, V_CONTENT, ''SYSTEM_NOTIFY'');',
'    ',
'    UPDATE TENANT_EVENT_ANALYZE',
'    SET AUDIT_STATE =''WAIT''',
'    WHERE EVENT_ANALYZE_ID = :P278_EVENT_ANALYZE_ID;',
'    V_COUNT := SQL%ROWCOUNT;',
'	 apex_util.set_session_state(''P278_COUNT'',V_COUNT);',
'	 apex_util.set_session_state(''P228_STATUS'',''WAIT'');',
'',
'END;',
''))
,p_attribute_02=>'P278_EVENT_ID,P278_EVENT_ANALYZE_ID,P278_CONTENT'
,p_attribute_03=>'P278_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866970033868680065)
,p_event_id=>wwv_flow_imp.id(866968211974680046)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8C03\7528\63A5\53E3')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_err_msg         nvarchar2(2000);',
'v_date            nvarchar2(256) := to_char(sysdate, ''yyyy-mm-dd hh24:mi:ss'');',
'v_submit_is_leave nvarchar2(256);',
'v_event_serial_no nvarchar2(256);',
'v_is_stop_line    nvarchar2(256);',
'v_is_key_process  nvarchar2(256);',
'v_code            nvarchar2(256);',
'v_description     nvarchar2(512);',
'v_position        nvarchar2(256);',
'V_NAME            nvarchar2(256);',
'V_JOB_NUMBER      nvarchar2(256);',
'v_phenomenon      nvarchar2(256);',
'v_url             nvarchar2(256);',
'v_templateCode    nvarchar2(256);',
'V_LEVEL           nvarchar2(256);',
'v_param           clob;',
'v_clob            clob;',
'v_count           number(10)     := 0;',
'V_USER_ID         number(20);',
'V_JINGBAO_URL     nvarchar2(256) := :JINGBAO_URL || ''#/questionDetails?eventId='' || :P278_EVENT_ID;',
'begin',
'',
'select e.SUBMIT_IS_LEAVE,',
'e.EVENT_SERIAL_NO,',
'e.IS_STOP_LINE,',
'e.IS_KEY_PROCESS,',
unistr('translate(nvl(e.DESCRIPTION, ''\65E0'') , chr(13) || chr(10) ||chr(9), '','')                                        as DESCRIPTION,'),
'(FAB_NAME || ''-'' || MAP_AREA_Y_NAME || ''-'' || MAP_AREA_X_NAME) AS POSITION,',
'(lib.FIRST_EVENT_CATEGORY_NAME || ''/'' || lib.SECOND_EVENT_CATEGORY_NAME || ''/'' ||',
'lib.EVENT_PHENOMENON_NAME)                                    as PHENOMENON',
'into v_submit_is_leave,v_event_serial_no,v_is_stop_line,v_is_key_process,v_description,v_position,v_phenomenon',
'from TENANT_EVENT_V e',
'left join TENANT_EVENT_LIBRARY_V lib',
'       on e.FIRST_EVENT_CODE = lib.FIRST_EVENT_CATEGORY_CODE  and e.SECOND_EVENT_CODE = lib.SECOND_EVENT_CATEGORY_CODE   and e.PHENOMENON_CODE = lib.EVENT_PHENOMENON_CODE',
'left join TENANT_EVENT_FOLLOW_USERS f',
'       on f.EVENT_ID = e.EVENT_ID   and f.EXT_ORG_ID = e.MAIN_ORG_ID  and f.USER_IDENTITY = ''MAIN''',
'left join MPF_USER_DEPT_MAIN_ASSO_V fu',
'       on f.EXT_USER_ID = fu.EXT_USER_ID',
'left join BASIC_DEVICE d',
'       on e.DEVICE_CODE = d.DEVICE_CODE',
'where e.EVENT_ID = :P278_EVENT_ID and e.TENANT_ID = :USERTENANT and e.BASE_DEPT_ID =:BASE_DEPT_ID;',
unistr('--\67E5\8BE2\63D0\4EA4\4EBA\7684\7528\6237ID'),
'select AUDIT_USER_ID into V_USER_ID from TENANT_EVENT_ANALYZE where EVENT_ID =:P278_EVENT_ID and DEL_FLAG=0;',
'',
unistr('--\67E5\8BE2\63D0\4EA4\4EBA\59D3\540D\548C\5DE5\53F7'),
'select NAME,JOB_NUMBER into V_NAME ,V_JOB_NUMBER from MPF_SHARE_USER_V  where EXT_USER_ID=V_USER_ID;',
'',
'V_LEVEL := get_event_level(v_is_stop_line,v_is_key_process);',
'',
unistr('select decode(V_LEVEL,''1\7EA7'',''JB-OPERATE-ONE'',''2\7EA7'',''JB-OPERATE-TWO'',''3\7EA7'',''JB-OPERATE-THREE'',''4\7EA7'',''JB-OPERATE-FOUR'',''FOUR'') into v_templateCode from dual;'),
'',
'v_url :=:MPF_API_URL||''xin/apis/template/''||v_templateCode||''/send-ding-notify'';',
'',
'',
'v_param := ''{',
'"isDesignateGroup": "FALSE",',
'"isDesignateUser": "TRUE",',
'"receiverGroupKeys": [],',
'"receiverUserKeys": ["'' || V_JOB_NUMBER || ''"],',
'"templateParams": {',
unistr('"title":"\2705\590D\76D8\4FEE\6539\FF08#'' || v_event_serial_no || ''\FF09",'),
'"date":"'' || v_date || ''",',
'"phenomenon":"'' || v_phenomenon || ''",',
'"position":"'' || v_position ||  ''",',
'"describe":"'' || v_description || ''",',
unistr('"content":"\3010'' || V_NAME || ''\3011\4FEE\6539\4E8B\4EF6\590D\76D8\5185\5BB9\FF0C\539F\56E0\FF1A''|| :P278_CONTENT ||''",'),
'"url":"''||V_JINGBAO_URL||''"',
'}',
'}'';',
'v_clob := JA_HTTP_REQUEST( v_url,''POST'', v_param);',
'',
'apex_util.set_session_state(''P278_CODE'', v_clob);',
'exception',
'when others then',
'v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('--\5199\5165\5F02\5E38\65E5\5FD7'),
'JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P278_EVENT_ID,P278_EVENT_ANALYZE_ID,P278_CONTENT'
,p_attribute_03=>'P278_COUNT,P278_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866969938213680064)
,p_event_id=>wwv_flow_imp.id(866968211974680046)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
unistr('var msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'if ($v(''P278_CODE'')) {',
'    var datas = JSON.parse($v(''P278_CODE''));',
'    if (datas.code == 200) {',
unistr('        msg = '',\53D1\9001\901A\77E5\6210\529F'';'),
'    } else {',
unistr('        msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'    }',
'} else {',
unistr('    msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'}',
'',
'if($v(''P278_COUNT'')>0){',
unistr('	 alert(''\63D0\4EA4\6210\529F'' + msg);'),
'	return true;',
'}else{',
unistr('	 alert(''\63D0\4EA4\5931\8D25'' + msg);'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866968320285680047)
,p_event_id=>wwv_flow_imp.id(866968211974680046)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

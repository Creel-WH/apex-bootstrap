prompt --application/pages/page_99999
begin
--   Manifest
--     PAGE: 99999
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
 p_id=>99999
,p_name=>'Login Page'
,p_alias=>'LOGIN-PAGE'
,p_step_title=>'Login Page'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>wwv_flow_imp.id(2330886896889485732)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'10'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2456452606105815379)
,p_plug_name=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF')
,p_region_name=>'log_div'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330924942853485749)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2456457338869815388)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(213922807111191579)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_button_name=>unistr('\767B\5F55')
,p_button_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(213923229373191579)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_button_name=>unistr('\5FD8\8BB0\5BC6\7801')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5FD8\8BB0\5BC6\7801')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:186:P186_MOBILE:&P99999_USERNAME.'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(213939610360191603)
,p_branch_action=>'f?p=&APP_ID.:10009:&SESSION.::&DEBUG.:10009::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'IS_CHANGE_PSWD'
,p_branch_condition_text=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(328673908485507301)
,p_name=>'P99999_APP_ENV'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1020666600956094798)
,p_name=>'P99999_AUTO_LOGIN_URL'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1020666701376094799)
,p_name=>'P99999_DING_CORPID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1020666714531094800)
,p_name=>'P99999_DING_APP_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1020666804747094801)
,p_name=>'P99999_APEX_APP_URL'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1020666913203094802)
,p_name=>'P99999_CODE_LOGIN_URL'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2339658699885206690)
,p_name=>'P99999_USER_TENANT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_placeholder=>unistr('\79DF\6237')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID',
'           -- from MPF_USER_DEPT_MAIN_ASSO_V v',
'    from APEX_TENANT_USERS v',
'             inner join MPF_USER_DEPT_MAIN_ASSO_V s on s.EXT_USER_ID = v.EXT_USER_ID and s.BASE_DEPT_ID = v.BASE_DEPT_ID',
'    WHERE v.IS_LEAVE = 0',
'      and v.DEL_FLAG = 0',
'      and v.TENANT_ID = 3',
'      and (v.MOBILE = :P99999_USERNAME',
'        or v.JOB_NUMBER = :P99999_USERNAME)',
');'))
,p_lov_cascade_parent_items=>'P99999_USERNAME'
,p_ajax_items_to_submit=>'P99999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2355320318805270516)
,p_name=>'P99999_TENANT_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2456455991651815422)
,p_name=>'P99999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_prompt=>unistr('\8D26\53F7')
,p_placeholder=>unistr('JA\5DE5\53F7')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2456456408865815423)
,p_name=>'P99999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2456457433850815425)
,p_name=>'P99999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2456452606105815379)
,p_prompt=>unistr('\8BB0\4F4F\8D26\53F7')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(2331016699267485832)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2330987399012485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213928924056191596)
,p_computation_sequence=>10
,p_computation_item=>'P99999_APP_ENV'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''APP_ENV'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213928527449191596)
,p_computation_sequence=>20
,p_computation_item=>'P99999_AUTO_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''AUTO_LOGIN_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213929302094191596)
,p_computation_sequence=>30
,p_computation_item=>'P99999_CODE_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''CODE_LOGIN_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213929686834191596)
,p_computation_sequence=>40
,p_computation_item=>'P99999_APEX_APP_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''APEX_APP_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213930090413191597)
,p_computation_sequence=>50
,p_computation_item=>'P99999_DING_APP_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_APP_ID'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(213930491858191597)
,p_computation_sequence=>60
,p_computation_item=>'P99999_DING_CORPID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_CORPID'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(213934851803191601)
,p_name=>unistr('\8BBE\7F6E\79DF\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P99999_TENANT_SELECT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(213935417398191601)
,p_event_id=>wwv_flow_imp.id(213934851803191601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P99999_USER_TENANT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P99999_TENANT_SELECT'
,p_attribute_07=>'P99999_TENANT_SELECT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213932392577191599)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P99999_USERNAME),',
'    p_consent  => :P99999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>125448757807329611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(203231300699177698)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8BBE\7F6E\767B\5F55\7528\6237')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' apex_util.set_session_state(''P9999_USERNAME'',:P99999_USERNAME);',
' apex_util.set_session_state(''P9999_PASSWORD'',:P99999_PASSWORD);',
' apex_util.set_session_state(''P9999_USER_TENANT'',:P99999_USER_TENANT);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>114747665929315710
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213932014501191598)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P99999_USERNAME,',
'    p_password => :P99999_PASSWORD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>125448379731329610
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213933195607191599)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>125449560837329611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213932802619191599)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99999_USERNAME := apex_authentication.get_login_username_cookie;',
':P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>-wwv_flow_imp.id(2175125064677575914)
,p_internal_uid=>125449167849329611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213931230247191598)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B235')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    ',
'',
'    select instr(v_url, ''EVENT_ID'') into v_count from dual;',
'',
unistr('    -- --\8BB0\5F55\65E5\5FD7'),
'    -- WRITE_LOG(GET_FN_NAME(), ''debug'',',
'    --           ''url: '' || v_url || chr(13) ||''count:''||v_count|| chr(13) || ''date: '' || sysdate,  :USER_ID, :USERTENANT,',
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
unistr('    --\89E3\6790URL\FF0C\6267\884C\767B\5F55\9A8C\8BC1'),
'',
'    if v_count = 0 then',
'        :P99999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := check_parse_url_login(v_url);',
'        ',
'        if v_name != ''error'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 235);',
'        end if;',
'',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'    if v_page_id= 235 then',
'      return true;',
'    end if;',
'    return false;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>125447595477329610
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213931557630191598)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B207')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    ',
'',
'    select instr(v_url, ''EVENT_ID'') into v_count from dual;',
'',
unistr('    -- --\8BB0\5F55\65E5\5FD7'),
'    -- WRITE_LOG(GET_FN_NAME(), ''debug'',',
'    --           ''url: '' || v_url || chr(13) ||''count:''||v_count|| chr(13) || ''date: '' || sysdate,  :USER_ID, :USERTENANT,',
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
unistr('    --\89E3\6790URL\FF0C\6267\884C\767B\5F55\9A8C\8BC1'),
'',
'    if v_count = 0 then',
'        :P99999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := check_parse_url_login_207(v_url);',
'        ',
'        if v_name != ''error'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 207);',
'        end if;',
'',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'    if v_page_id= 207 then',
'      return true;',
'    end if;',
'    return false;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>125447922860329610
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213933545616191599)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6676\6377\514D\767B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg      nvarchar2(2000);',
'    v_user_name    varchar2(32);',
'    v_tenant_count number;',
'    v_url          nvarchar2(2000) := :FSP_AFTER_LOGIN_URL;',
'    v_flag         boolean;',
'',
'begin',
unistr('    -- WRITE_LOG(:APP_NAME || '':'' || :APP_ID||''\514D\767BURL'', ''debug'', ''v_url:'' || :FSP_AFTER_LOGIN_URL ,  :USER_ID, :USERTENANT,'),
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'    if regexp_like(v_url, ''code'') or regexp_like(v_url, ''jjCode'') then',
'        v_flag := resolve_url_jingbao_basic(v_url, v_user_name, v_tenant_count);',
'        -- v_tenant_count :=2;',
'        APEX_UTIL.SET_SESSION_STATE(''P99999_TENANT_COUNT'', v_tenant_count);',
unistr('        -- \5355\79DF\6237\5219\76F4\63A5\767B\5F55'),
'        if v_tenant_count = 1 then',
'            APEX_CUSTOM_AUTH.POST_LOGIN(',
'                    p_uname => v_user_name,',
'                    p_session_id => :APP_SESSION,',
'                    p_app_page => :APP_ID || '':'' || 129);',
'',
'        end if;',
'    else',
'        APEX_UTIL.SET_SESSION_STATE(''P99999_TENANT_COUNT'', -1);',
'        :P99999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;',
'    end if;',
'',
'',
'exception',
'    when others then',
'        APEX_UTIL.SET_SESSION_STATE(''P99999_TENANT_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(GET_FN_NAME(), ''error'', ''v_url:'' || v_url || chr(13) || v_err_msg,  :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>125449910846329611
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(213930817671191597)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ding_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg            varchar2(2000);',
'    v_user_name          varchar2(64);',
'    v_password           varchar2(64);',
'    v_base_dept_id_count number(20);',
'    v_base_dept_id       nvarchar2(64);',
'    v_result             boolean;',
unistr('    -- \9489\9489\626B\7801\767B\5F55\63A5\53E3'),
'    v_code_login_url     varchar2(512) := apex_application.g_x04;',
unistr('    -- \9489\9489\73AF\5883\514D\767B\63A5\53E3'),
'    v_auto_login_url     varchar2(512) := apex_application.g_x03;',
'    v_request_url        varchar2(512);',
'',
'begin',
'',
'    if apex_application.g_x02 = ''code_login'' then',
'        v_request_url := v_code_login_url || apex_application.g_x01;',
'    else',
'        v_request_url := v_auto_login_url || ''?code='' || apex_application.g_x01;',
'    end if;',
'',
'    v_result := ding_login_jing_bao(v_request_url, v_user_name, v_base_dept_id_count, v_base_dept_id);',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P99999_TENANT_COUNT'', v_base_dept_id_count);',
'',
'    if v_base_dept_id_count = 1 then',
'',
'        select JA_UTILS_PKG.DECRYPT_DEC_AES256(PASSWORD)',
'        into v_password',
'        from APEX_TENANT_USERS',
'        where JOB_NUMBER = v_user_name',
'          and base_dept_id = v_base_dept_id',
'          and DEL_FLAG = 0;',
'',
'    end if;',
'',
'    apex_json.open_object;',
'    apex_json.open_object(''resp'');',
'    apex_json.write(''code'', ''200'');',
'    apex_json.write(''user_name'', nvl(v_user_name, ''''));',
'    apex_json.write(''password'', nvl(v_password, ''''));',
'    apex_json.write(''base_dept_id'', v_base_dept_id);',
'    apex_json.write(''base_dept_id_count'', v_base_dept_id_count);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        APEX_UTIL.SET_SESSION_STATE(''P99999_TENANT_COUNT'', -1);',
'        apex_json.open_object;',
'        apex_json.open_object(''resp'');',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''user_name'', '''');',
'        apex_json.write(''base_dept_id_count'', -1);',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>125447182901329609
);
wwv_flow_imp.component_end;
end;
/

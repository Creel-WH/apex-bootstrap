prompt --application/pages/page_99999
begin
--   Manifest
--     PAGE: 99999
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
 p_id=>99999
,p_name=>unistr('\767B\5F55\9875')
,p_alias=>unistr('\767B\5F55\9875')
,p_step_title=>unistr('\767B\5F55\9875')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10249825000408852746)
,p_step_template=>wwv_flow_imp.id(10249514359382239683)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10737336805871045392)
,p_plug_name=>unistr('\9500\552E\5DE5\5177\96C6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249603311618239719)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(6038656491794181141)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_button_name=>'LOGIN'
,p_button_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6209460000692841951)
,p_name=>'P99999_APP_ENV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7496332275446314764)
,p_name=>'P99999_DING_CORPID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7496332304819314765)
,p_name=>'P99999_DING_APP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7496332442239314766)
,p_name=>'P99999_APEX_APP_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7496332580383314767)
,p_name=>'P99999_CODE_LOGIN_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7496332652585314768)
,p_name=>'P99999_AUTO_LOGIN_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10737338320763045403)
,p_name=>'P99999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_prompt=>unistr('\7528\6237\540D')
,p_placeholder=>unistr('\7528\6237\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(10249678845011239762)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10737338717119045404)
,p_name=>'P99999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(10249678845011239762)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10737339093092045405)
,p_name=>'P99999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10737336805871045392)
,p_prompt=>unistr('\8BB0\4F4F\7528\6237\540D')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(10249678845011239762)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038660726371181163)
,p_computation_sequence=>10
,p_computation_item=>'P99999_APP_ENV'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select any_value(CODE_VALUE) from JA_SYSTEM_DICT where DICT_CODE=''APP_ENV'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038660342892181162)
,p_computation_sequence=>20
,p_computation_item=>'P99999_DING_CORPID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_CORPID'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038661147655181163)
,p_computation_sequence=>30
,p_computation_item=>'P99999_DING_APP_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_APP_ID'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038661489090181163)
,p_computation_sequence=>40
,p_computation_item=>'P99999_APEX_APP_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where  DICT_CODE=''APEX_APP_URL'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038661946112181163)
,p_computation_sequence=>50
,p_computation_item=>'P99999_CODE_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''CODE_LOGIN_URL'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6038662303331181163)
,p_computation_sequence=>60
,p_computation_item=>'P99999_AUTO_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''AUTO_LOGIN_URL'';'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038664909256181171)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>unistr('\8BBE\7F6E\7528\6237\540D Cookie')
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>487546736819805372
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038665410782181171)
,p_page_process_id=>wwv_flow_imp.id(6038664909256181171)
,p_page_id=>99999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P99999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038665885426181172)
,p_page_process_id=>wwv_flow_imp.id(6038664909256181171)
,p_page_id=>99999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P99999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6004125348547042747)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\8BBE\7F6E\767B\5F55\7528\6237')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' apex_util.set_session_state(''P9999_USERNAME'',:P99999_USERNAME);',
' apex_util.set_session_state(''P9999_PASSWORD'',:P99999_PASSWORD);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>453007176110666948
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038662994792181164)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>487544822355805365
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038663503605181169)
,p_page_process_id=>wwv_flow_imp.id(6038662994792181164)
,p_page_id=>99999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P99999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038664042082181171)
,p_page_process_id=>wwv_flow_imp.id(6038662994792181164)
,p_page_id=>99999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P99999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(6038664529880181171)
,p_page_process_id=>wwv_flow_imp.id(6038662994792181164)
,p_page_id=>99999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038666682277181172)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9875\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>487548509840805373
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038666288325181172)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\83B7\53D6\7528\6237\540D Cookie')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P99999_USERNAME := apex_authentication.get_login_username_cookie;',
':P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>487548115888805373
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038667112724181172)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_user_name varchar2(32);',
'    v_url       nvarchar2(2000) := :FSP_AFTER_LOGIN_URL;',
'    v_flag      boolean;',
'',
'begin',
'',
'    if regexp_like(v_url, ''code'') or regexp_like(v_url, ''jjCode'')  then',
'    --if regexp_like(v_url, ''code'') then',
unistr('        WRITE_LOG(''\514D\767BURL'', ''debug'', ''v_url:'' || :FSP_AFTER_LOGIN_URL, -1, -1);'),
'        v_flag := PM_RESOLVE_URL_BASIC(v_url, v_user_name);',
'        if v_flag then',
unistr('            -- \6267\884C\767B\5F55'),
'            APEX_CUSTOM_AUTH.POST_LOGIN(',
'                    p_uname => v_user_name,',
'                    p_session_id => :APP_SESSION,',
unistr('                    -- \6307\5B9A\767B\5F55\6210\529F\540E\8DF3\8F6C\7684\9875'),
'                    p_app_page => :APP_ID || '':'' || 1);',
'        else',
unistr('            WRITE_LOG(''\514D\767BURL\5931\8D25'', ''debug'', ''v_flag:false'', -1, -1);'),
'            :P99999_USERNAME := apex_authentication.get_login_username_cookie;',
'            :P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;',
'        end if;',
'    else',
'        :P99999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P99999_REMEMBER := case when :P99999_USERNAME is not null then ''Y'' end;',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --ja_write_log(:app_page_alias || '':'' || :app_page_id || '':\5E94\7528-\529F\80FD\6A21\5757'', ''error'', v_err_msg, :user_id, :user_tenant,:app_name || '':'' || :app_id);'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>487548940287805373
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6038662599341181163)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ding_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        varchar2(2000);',
'    v_user_name      varchar2(64);',
'    v_password       varchar2(64);',
'    v_result         boolean;',
unistr('    -- \9489\9489\626B\7801\767B\5F55\63A5\53E3'),
'    v_code_login_url varchar2(512) := apex_application.g_x04;',
unistr('    -- \9489\9489\73AF\5883\514D\767B\63A5\53E3'),
'    v_auto_login_url varchar2(512) := apex_application.g_x03;',
'    v_request_url    varchar2(512);',
'    v_tenant_id      number(10);',
'begin',
'',
'    if apex_application.g_x02 = ''code_login'' then',
'        v_request_url := v_code_login_url;',
'    else',
'        v_request_url := v_auto_login_url;',
'    end if;',
'',
'   WRITE_LOG(JA_UTILS_PKG.GET_FN_NAME(), ''debug'', ''time 0'', -1, 1);',
'',
'    v_result := ja_pm_apex_ding_login(v_request_url, apex_application.g_x01, apex_application.g_x02, v_user_name,',
'                                         v_password, v_tenant_id);',
'',
'    apex_json.open_object;',
'    apex_json.open_object(''resp'');',
'    apex_json.write(''code'', ''200'');',
'    apex_json.write(''user_name'', v_user_name);',
'    apex_json.write(''password'', v_password);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.open_object(''resp'');',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''user_name'', '''');',
'        apex_json.write(''password'', '''');',
'        apex_json.write(''tenant_id'', '''');',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, -1, -1);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>487544426904805364
);
wwv_flow_imp.component_end;
end;
/

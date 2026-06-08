prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>unistr('\767B\5F55\9875')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\9489\9489\95E8\6237\5DE5\4F5C\53F0\540E\53F0 - \767B\5F55')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1476373699874247235)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://g.alicdn.com/dingding/dingtalk-jsapi/3.0.25/dingtalk.open.js',
'https://g.alicdn.com/dingding/h5-dingtalk-login/0.21.0/ddlogin.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// function getParameterValue(url, paramName) {',
'//     var urlParams = new URLSearchParams(url);',
'//     return urlParams.get(paramName);',
'// }'))
,p_javascript_code_onload=>'document.getElementById(''redirectLink'').href = `https://api.jasolar.com:26000/jingjie/open/oauth2/dingtalk?redirectUrl=${encodeURIComponent(window.location.origin+''/ords/f?p=230:50'')}`;'
,p_step_template=>wwv_flow_imp.id(4421773381336171844)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4422045456047172106)
,p_plug_name=>unistr('\9489\9489\95E8\6237\5DE5\4F5C\53F0\540E\53F0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421849510296171878)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4354131422027847365)
,p_plug_name=>unistr('\65B0\5EFA')
,p_parent_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:100%; display: flex; justify-content: space-between;margin-top:10px;">',
unistr('<p style="color:#999;line-height:24px; font-size:12px;font-weight:500;">\5176\4ED6\65B9\5F0F</p>'),
'<div>',
'<a id="redirectLink" href="#">',
'  <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;"',
'     src="https://jingobj.jasolar.com:26000/ywja-public-bucket/dingtalk/ding-logo.png"',
'     alt=""',
'  />',
'</a>',
unistr('<!--\591A\79CD\767B\5F55\65B9\5F0F\5728\6B64\6DFB\52A0 \540C\4E0A\6837\5F0F\7684a\6807\7B7E\5373\53EF  -->'),
'</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(4422047171497172116)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_button_name=>'LOGIN'
,p_button_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4354130467789847355)
,p_name=>'P9999_DING_CORPID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4354130674225847357)
,p_name=>'P9999_WORKBENCH_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4422045934955172111)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_prompt=>unistr('\7528\6237\540D')
,p_placeholder=>unistr('\7528\6237\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4421925095678171916)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'send_on_page_submit', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4422046314636172114)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4421925095678171916)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4422046705350172115)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4422045456047172106)
,p_prompt=>unistr('\8BB0\4F4F\7528\6237\540D')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(4421925095678171916)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4354130545176847356)
,p_computation_sequence=>10
,p_computation_item=>'P9999_DING_CORPID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JW_SYSTEM_DICT where DICT_CODE=''DING_CORPID'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(4354130974113847360)
,p_computation_sequence=>20
,p_computation_item=>'P9999_WORKBENCH_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JW_SYSTEM_DICT where DICT_CODE=''DING_LOGIN'';'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(4354130224384847353)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(4354130298059847354)
,p_event_id=>wwv_flow_imp.id(4354130224384847353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9489\9489\6388\6743\7801\767B\5F55')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var url = window.location.href;',
unistr('// var codes = '''';//\9489\9489\6388\6743\7801'),
'',
'// codes = getParameterValue(url, ''code'');',
'// var login_type;',
'',
unistr('// \5224\65AD\662F\5426\662F\9489\9489\73AF\5883'),
'if (dd.env.platform != ''notInDingTalk'') {',
'    // $(''#qrcode'').hide();',
'    var loaderDiv = document.createElement(''div'');',
'    loaderDiv.className = ''loader'';',
'    var containerBodyDiv = document.querySelector(''.t-Login-containerBody'');',
'    containerBodyDiv.appendChild(loaderDiv);',
'    var pTag = document.createElement(''p'');',
'    pTag.className = ''hint'';',
unistr('    pTag.textContent = ''\767B\5F55\4E2D, \8BF7\7A0D\5019...'';'),
'    containerBodyDiv.insertBefore(pTag, loaderDiv);',
'    dd.ready(() => {',
'        dd.runtime.permission.requestAuthCode({',
'            corpId: $v(''P9999_DING_CORPID''),',
'            onSuccess: function (info) {',
'                console.log(info.code)',
'                dd_login(info.code)',
'            },',
'            onFail: function (err) {',
'                console.log(err)',
'                alert(JSON.stringify(err))',
'            }',
'        })',
'    })',
'}',
'',
'async function dd_login(code) {',
'    const fullUrl = $v(''P9999_WORKBENCH_URL'') + code',
'    const result = await fetch(fullUrl, {',
'        method: ''POST'',',
'        headers: {',
'            ''Content-Type'': ''application/json'',',
'        },',
'    });',
'    ',
'    const data = await result.json()',
'    if (data.code == 200) {',
unistr('        // \767B\5F55'),
'        console.log(data.data)',
'        if (data.data.jobNumber) {',
'            $s(''P9999_USERNAME'', data.data.jobNumber);',
'            $s(''P9999_PASSWORD'', data.data.jobNumber+''..'');',
'            $(''#login'').click();',
'        }',
'    }else {',
unistr('        console.log(''\9489\9489\514D\767B\5931\8D25'')'),
'    }',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4422049295172172119)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>unistr('\8BBE\7F6E\7528\6237\540D Cookie')
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>196109011168423394
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4422049792239172119)
,p_page_process_id=>wwv_flow_imp.id(4422049295172172119)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4422050353113172119)
,p_page_process_id=>wwv_flow_imp.id(4422049295172172119)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4422047386824172116)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>196107102820423391
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4422047981455172118)
,p_page_process_id=>wwv_flow_imp.id(4422047386824172116)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4422048405661172118)
,p_page_process_id=>wwv_flow_imp.id(4422047386824172116)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(4422048925369172119)
,p_page_process_id=>wwv_flow_imp.id(4422047386824172116)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4422051257537172120)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9875\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>196110973533423395
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4354131555237847366)
,p_process_sequence=>10
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
'    if regexp_like(v_url, ''code'') or regexp_like(v_url, ''jjCode'') then',
'        v_flag := jw_resolve_url_basic(v_url, v_user_name);',
'        if v_flag then',
unistr('            -- \6267\884C\767B\5F55'),
'            APEX_CUSTOM_AUTH.POST_LOGIN(',
'                    p_uname => v_user_name,',
'                    p_session_id => :APP_SESSION,',
unistr('                    -- \6307\5B9A\767B\5F55\6210\529F\540E\8DF3\8F6C\7684\9875'),
'                    p_app_page => :APP_ID || '':'' || 50);',
'        end if;',
'    else',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'      WRITE_LOG(''jw'', ''login_error'', v_err_msg, null, 1);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>128191271234098641
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4422050877892172119)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\83B7\53D6\7528\6237\540D Cookie')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4421750870193171812)
,p_internal_uid=>196110593888423394
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4354131178699847362)
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
'    v_request_url    varchar2(512);',
'',
'begin',
'    -- WRITE_LOG(''jw'', ''ERROR'', apex_application.g_x02, -1, -1);',
'    v_result := jw_ding_login(apex_application.g_x01, apex_application.g_x02, v_user_name,',
'                                        v_password);',
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
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, -1, -1);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>wwv_flow_imp.id(4421750870193171812)
,p_internal_uid=>128190894696098637
);
wwv_flow_imp.component_end;
end;
/

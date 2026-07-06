prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>unistr('\5168\5C40\9875')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9760302564294878734)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Body,',
'.t-PageBody,',
'.t-Body-content,',
'.t-Body-contentInner {',
'    background: #f5f7fb;',
'}',
'',
'body,',
'.t-Body,',
'.a-IRR,',
'.a-GV,',
'.t-Button,',
'.a-Button,',
'.a-Form-label,',
'.t-Form-label {',
'    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "PingFang SC", "Microsoft YaHei", sans-serif;',
'}',
'',
'.t-Header .t-Button,',
'.t-Header .a-Button,',
'.t-Header .a-MenuBar-item {',
'    border-radius: 6px !important;',
'}',
'',
'.t-Region {',
'    border: 1px solid #f0f0f0;',
'    border-radius: 8px;',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);',
'    background: #ffffff;',
'}',
'',
'.t-Region-header {',
'    border-bottom: 1px solid #f0f0f0;',
'}',
'',
'.t-Region-title,',
'.t-BreadcrumbRegion-titleText,',
'.t-Body-title h1 {',
'    color: #111827;',
'    font-weight: 600;',
'}',
'',
'.t-BreadcrumbRegion,',
'.t-Breadcrumb {',
'    background: transparent;',
'}',
'',
'.t-Breadcrumb-item,',
'.t-Breadcrumb-item a {',
'    color: #6b7280;',
'    font-size: 13px;',
'}',
'',
'.t-Breadcrumb-item.is-active,',
'.t-Breadcrumb-item.is-active a {',
'    color: #111827;',
'    font-weight: 600;',
'}',
'',
'.t-Button,',
'.a-Button {',
'    border-radius: 6px !important;',
'    height: 34px;',
'    line-height: 32px;',
'    border-color: #d9d9d9;',
'    box-shadow: none;',
'}',
'',
'.t-Button--hot,',
'.a-Button--hot,',
'.a-Button.a-Button--hot {',
'    background: #1677ff !important;',
'    border-color: #1677ff !important;',
'    color: #ffffff !important;',
'}',
'',
'.t-Button--hot:hover,',
'.a-Button--hot:hover {',
'    background: #4096ff !important;',
'    border-color: #4096ff !important;',
'}',
'',
'.t-Form-input,',
'.a-Form-input,',
'.apex-item-text,',
'.apex-item-select,',
'.apex-item-textarea,',
'.apex-item-datepicker,',
'.apex-item-popup-lov,',
'.a-IRR-search-field {',
'    border: 1px solid #d9d9d9 !important;',
'    border-radius: 6px !important;',
'    box-shadow: none !important;',
'}',
'',
'.t-Form-input:focus,',
'.a-Form-input:focus,',
'.apex-item-text:focus,',
'.apex-item-select:focus,',
'.apex-item-textarea:focus,',
'.apex-item-popup-lov:focus,',
'.a-IRR-search-field:focus {',
'    border-color: #1677ff !important;',
'    box-shadow: 0 0 0 2px rgba(22, 119, 255, 0.16) !important;',
'    outline: none !important;',
'}',
'',
'.a-IRR-table th,',
'.a-GV-header,',
'.a-GV-table th {',
'    background: #fafafa !important;',
'    color: #374151;',
'    font-weight: 600;',
'    border-bottom: 1px solid #f0f0f0;',
'}',
'',
'.a-IRR-table td,',
'.a-GV-table td {',
'    border-bottom: 1px solid #f5f5f5;',
'    color: #111827;',
'}',
'',
'.a-IRR-table tr:hover td,',
'.a-GV-table tr:hover td {',
'    background: #f8fbff;',
'}',
'',
'.a-Toolbar,',
'.a-IG-toolbar,',
'.a-IRR-controlsContainer {',
'    border-bottom: 1px solid #f0f0f0;',
'    background: #ffffff;',
'}',
'',
'.a-Toolbar-group .a-Button,',
'.a-IRR-controlsContainer .a-Button,',
'.a-IG-toolbar .a-Button {',
'    height: 32px;',
'    line-height: 30px;',
'    border-radius: 6px;',
'}',
'',
'.a-IRR-paginationWrap,',
'.a-GV-footer {',
'    border-top: 1px solid #f0f0f0;',
'    background: #ffffff;',
'}',
'',
'.a-IRR-pagination,',
'.a-GV-footer a,',
'.a-IRR-pagination a {',
'    color: #4b5563;',
'}',
'',
'.t-Body-title {',
'    padding-top: 12px;',
'}',
'',
'.t-Tabs-link,',
'.a-ButtonRegion .t-Button {',
'    border-radius: 6px;',
'}',
'',
'.t-Dialog,',
'.ui-dialog {',
'    border-radius: 10px;',
'    box-shadow: 0 12px 32px rgba(0, 0, 0, 0.16);',
'    border: 1px solid #f0f0f0;',
'}',
'',
'.t-Dialog-header,',
'.ui-dialog-titlebar {',
'    border-bottom: 1px solid #f0f0f0;',
'    background: #ffffff;',
'}',
'',
'.t-Header-navBar--start {',
'    display: flex;',
'    align-items: center;',
'}',
'',
'.sts-tenant-header-region {',
'    display: flex;',
'    align-items: center;',
'    margin: 0 8px 0 0;',
'}',
'',
'.sts-tenant-header-region .t-Form-labelContainer {',
'    display: none;',
'}',
'',
'.sts-tenant-header-region .t-Form-fieldContainer,',
'.sts-tenant-header-region .t-Form-inputContainer,',
'.sts-tenant-header-region .t-Form-itemWrapper {',
'    margin: 0;',
'}',
'',
'.sts-tenant-header-region .t-Form-fieldContainer {',
'    min-height: auto;',
'}',
'',
'#P0_SYSTEM_SWITCH {',
'    min-width: 176px;',
'    height: 34px;',
'    border: 0 !important;',
'    background: rgba(255, 255, 255, 0.16) !important;',
'    border-radius: 999px !important;',
'    color: #ffffff !important;',
'    font-size: 14px;',
'    font-weight: 500;',
'    padding: 0 32px 0 12px;',
'    box-shadow: none !important;',
'}',
'',
'#P0_SYSTEM_SWITCH:focus {',
'    border: 0 !important;',
'    box-shadow: 0 0 0 2px rgba(255, 255, 255, 0.18) !important;',
'}',
'}'))
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7892034540846357701)
,p_plug_name=>unistr('\5B50\5E73\53F0\5207\6362')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760020812986264229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BEFORE_NAVIGATION_BAR'
,p_region_css_classes=>'sts-tenant-header-region'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(953660610235745770)
,p_name=>'P0_UPLOAD_LINK'
,p_item_sequence=>100
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''UPLOAD_LINK'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1441459928646352828)
,p_name=>'P0_STS_APPKEY'
,p_item_sequence=>110
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''APP_KEY'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1441460071872352829)
,p_name=>'P0_STS_APPSECRET'
,p_item_sequence=>120
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''APP_SECRET'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6816575762181273251)
,p_name=>'P0_APP_CODE'
,p_item_sequence=>30
,p_item_default=>':APP_CODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892033861244357680)
,p_name=>'P0_APP_ENV'
,p_item_sequence=>10
,p_item_default=>':APP_ENV'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034001513357682)
,p_name=>'P0_USER_JOB_NUMBER'
,p_item_sequence=>70
,p_item_default=>':USER_JOB_NUMBER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034177575357683)
,p_name=>'P0_USER_NAME'
,p_item_sequence=>60
,p_item_default=>':USER_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034275097357684)
,p_name=>'P0_USER_ID'
,p_item_sequence=>50
,p_item_default=>':USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034285177357685)
,p_name=>'P0_APP_NAME'
,p_item_sequence=>40
,p_item_default=>':APP_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034463897357686)
,p_name=>'P0_APP_ID'
,p_item_sequence=>20
,p_item_default=>':APP_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034540846357688)
,p_name=>'P0_USER_TENANT'
,p_item_sequence=>130
,p_item_default=>':USER_TENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034540846357702)
,p_name=>'P0_SYSTEM_SWITCH'
,p_item_sequence=>5
,p_item_plug_id=>wwv_flow_imp.id(7892034540846357701)
,p_prompt=>unistr('\5B50\5E73\53F0')
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(',
'           nullif(v(''SYSTEM_ID''), ''''),',
'           nvl(',
'               (',
'                   select to_char(x.system_id)',
'                     from (',
'                           select fu.last_system_id as system_id',
'                             from fmp_user fu',
'                             join fmp_system s',
'                               on s.system_id = fu.last_system_id',
'                              and s.is_enable = 1',
'                              and s.del_flag = 0',
'                            where fu.tenant_id = to_number(v(''USER_TENANT''))',
'                              and fu.user_id = to_number(nullif(v(''USER_ID''), ''''))',
'                              and nvl(fu.del_flag, 0) = 0',
'                              and fu.last_system_id is not null',
'                            order by fu.update_date desc, fu.user_id desc',
'                     ) x',
'                    where rownum = 1',
'               ),',
'               (',
'                   select to_char(x.system_id)',
'                     from (',
'                           select s.system_id',
'                             from fmp_system s',
'                            where s.is_enable = 1',
'                              and s.del_flag = 0',
'                            order by s.system_id',
'                     ) x',
'                    where rownum = 1',
'               )',
'           )',
'       )',
'  from dual'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select system_name,',
'       to_char(system_id)',
'  from fmp_system',
' where is_enable = 1',
'   and del_flag = 0',
' order by system_id'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(9760156350373264292)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7892034540846357689)
,p_name=>'P0_TENANT_OPTIONS_JSON'
,p_item_sequence=>140
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select coalesce(',
'           json_arrayagg(',
'               json_object(',
'                   ''id'' value system_id,',
'                   ''name'' value system_name',
'               ) returning varchar2',
'           ),',
'           ''[]''',
'       )',
'  from fmp_system',
' where is_enable = 1',
'   and del_flag = 0'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7892034540846357692)
,p_name=>'Render Sub-Platform Switcher'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7892034540846357693)
,p_event_id=>wwv_flow_imp.id(7892034540846357692)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function () {',
'    var item = apex.item("P0_SYSTEM_SWITCH");',
'    var item$ = apex.jQuery("#P0_SYSTEM_SWITCH");',
'',
'    function handleTenantSwitch(tenantId) {',
'        apex.server.process("SET_CURRENT_SYSTEM", {',
'            x01: tenantId,',
'            x02: apex.env.APP_PAGE_ID || "133"',
'        }, {',
'            dataType: "json",',
'            success: function (data) {',
'                if (data && data.code === "200" && data.redirect_url) {',
'                    if (apex.page && typeof apex.page.cancelWarnOnUnsavedChanges === "function") {',
'                        apex.page.cancelWarnOnUnsavedChanges();',
'                    }',
'                    window.location.replace(data.redirect_url);',
'                    return;',
'                }',
'                apex.message.alert((data && data.message) || "Sub-platform switch failed");',
'            },',
'            error: function () {',
'                apex.message.alert("Sub-platform switch failed");',
'            }',
'        });',
'    }',
'',
'    if (!item || !item$.length) {',
'        return;',
'    }',
'',
'    apex.server.process("GET_SYSTEM_OPTIONS", {}, {',
'        dataType: "json",',
'        success: function (data) {',
'            if (data && data.currentSystem) {',
'                item.setValue(String(data.currentSystem), null, true);',
'            }',
'        }',
'    });',
'',
'    item$.off("change.stsTenantSwitch").on("change.stsTenantSwitch", function () {',
'        if (!this.value) {',
'            return;',
'        }',
'        handleTenantSwitch(this.value);',
'    });',
'})();'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7892034540846357690)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CURRENT_SYSTEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id number;',
'    v_target_page_id number;',
'    v_count     number;',
'    v_user_id   number;',
'    v_redirect_url varchar2(32767);',
'begin',
'    v_system_id := to_number(apex_application.g_x01);',
'    v_target_page_id := to_number(nvl(nullif(apex_application.g_x02, ''''), ''133''));',
'    v_user_id := to_number(nullif(v(''USER_ID''), ''''));',
'',
'    select count(*)',
'      into v_count',
'      from fmp_system',
'     where system_id = v_system_id',
'       and is_enable = 1',
'       and del_flag = 0;',
'',
'    apex_json.open_object;',
'    if v_count = 1 then',
'        apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'        apex_util.clear_page_cache(133);',
'        apex_util.set_session_state(''P133_FILE_ID'', null);',
'        apex_util.set_session_state(''P133_FILE_IDS'', null);',
'        apex_util.set_session_state(''P133_FILE_TYPES'', null);',
'        apex_util.set_session_state(''P133_FILE_TYPE'', null);',
'        apex_util.set_session_state(''P133_PARENT_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_ROOT_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_FILE_LEVEL'', null);',
'        apex_util.set_session_state(''P133_FILE_PATH'', null);',
'        apex_util.set_session_state(''P133_FILE_NAME'', null);',
'        apex_util.set_session_state(''P133_UP_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_BREADCRUMB_JSON'', ''[]'');',
'        apex_util.set_session_state(''P133_DISPLAY'', null);',
'',
'        if v_user_id is not null then',
'            update fmp_user',
'               set last_system_id = v_system_id,',
'                   updated_by = v_user_id,',
'                   update_date = sysdate',
'             where tenant_id = to_number(v(''USER_TENANT''))',
'               and user_id = v_user_id',
'               and nvl(del_flag, 0) = 0;',
'        end if;',
'        v_redirect_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':'' || v_target_page_id || '':'' || :APP_SESSION || '':S::RP,'' || v_target_page_id,',
'            p_checksum_type => ''SESSION'',',
'            p_plain_url => false',
'        );',
'        apex_json.write(''code'', ''200'');',
'        apex_json.write(''system_id'', v_system_id);',
'        apex_json.write(''redirect_url'', v_redirect_url);',
'        apex_json.write(''message'', '''');',
'    else',
'        apex_json.write(''code'', ''404'');',
'        apex_json.write(''message'', ''Sub-platform not found or disabled'');',
'    end if;',
'    commit;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', ''Sub-platform switch failed'');',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7925490888081779943
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7892034540846357691)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SYSTEM_OPTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_current_system varchar2(40) := nullif(v(''SYSTEM_ID''), '''');',
'    v_user_id        number;',
'begin',
'    v_user_id := to_number(nullif(v(''USER_ID''), ''''));',
'',
'    if v_current_system is null and v_user_id is not null then',
'        begin',
'            select to_char(x.system_id)',
'              into v_current_system',
'              from (',
'                    select fu.last_system_id as system_id',
'                      from fmp_user fu',
'                      join fmp_system s',
'                        on s.system_id = fu.last_system_id',
'                       and s.is_enable = 1',
'                       and s.del_flag = 0',
'                     where fu.tenant_id = to_number(v(''USER_TENANT''))',
'                       and fu.user_id = v_user_id',
'                       and nvl(fu.del_flag, 0) = 0',
'                       and fu.last_system_id is not null',
'                     order by fu.update_date desc, fu.user_id desc',
'              ) x',
'             where rownum = 1;',
'        exception',
'            when no_data_found then',
'                null;',
'        end;',
'    end if;',
'',
'    if v_current_system is null then',
'        begin',
'            select to_char(x.system_id)',
'              into v_current_system',
'              from (',
'                    select s.system_id',
'                      from fmp_system s',
'                     where s.is_enable = 1',
'                       and s.del_flag = 0',
'                     order by s.system_id',
'              ) x',
'             where rownum = 1;',
'        exception',
'            when no_data_found then',
'                v_current_system := ''1'';',
'        end;',
'    end if;',
'',
'    apex_util.set_session_state(''SYSTEM_ID'', v_current_system);',
'    apex_json.open_object;',
'    apex_json.write(''currentSystem'', nvl(v_current_system, ''1''));',
'    apex_json.open_array(''tenants'');',
'    for r in (',
'        select system_id, system_name',
'          from fmp_system',
'         where is_enable = 1',
'           and del_flag = 0',
'         order by system_id',
'    ) loop',
'        apex_json.open_object;',
'        apex_json.write(''id'', r.system_id);',
'        apex_json.write(''name'', r.system_name);',
'        apex_json.close_object;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''currentSystem'', ''1'');',
'        apex_json.open_array(''tenants'');',
'        apex_json.close_array;',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>7925490888081779944
);
wwv_flow_imp.component_end;
end;
/

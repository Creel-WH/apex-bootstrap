prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>unistr('\5168\5C40\9875')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9793758911530300987)
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function stsRenderTenantSwitcher(payload) {',
'    var currentTenant = payload && (payload.currentSystem || payload.currentTenant);',
'    var tenants = payload && payload.tenants ? payload.tenants : [];',
'',
'    if (document.getElementById(''stsTenantSwitcher'')) {',
'        return;',
'    }',
'',
'    if (!tenants.length) {',
'        return;',
'    }',
'',
'    var titleContainer = document.querySelector(''.t-Header-logo'') ||',
'        document.querySelector(''.t-Header-branding'') ||',
'        document.querySelector(''.t-Header-logo-link'') ||',
'        document.querySelector(''.t-BreadcrumbRegion-titleText'') ||',
'        document.querySelector(''.t-Body-title h1'') ||',
'        document.querySelector(''.t-Body-title'');',
'',
'    if (!titleContainer) {',
'        return;',
'    }',
'',
'    titleContainer.style.display = ''flex'';',
'    titleContainer.style.flexDirection = ''column'';',
'    titleContainer.style.alignItems = ''flex-start'';',
'    titleContainer.style.justifyContent = ''center'';',
'    titleContainer.style.gap = ''6px'';',
'',
'    document.documentElement.style.setProperty(''--ut-header-height'', ''78px'');',
'',
'    var wrap = document.createElement(''div'');',
'    wrap.id = ''stsTenantSwitcher'';',
'    wrap.className = ''sts-tenant-switcher'';',
'',
'    var select = document.createElement(''select'');',
'    select.id = ''stsTenantSelect'';',
'    select.className = ''sts-tenant-select'';',
'    select.title = ''切换业务系统'';',
'    select.style.width = ''260px'';',
'    select.style.height = ''40px'';',
'    select.style.border = ''1px solid #6b7280'';',
'    select.style.borderRadius = ''4px'';',
'    select.style.backgroundColor = ''#ffffff'';',
'    select.style.color = ''#000000'';',
'    select.style.fontSize = ''16px'';',
'    select.style.fontWeight = ''600'';',
'    select.style.padding = ''0 32px 0 12px'';',
'    select.style.lineHeight = ''40px'';',
'    select.style.textAlign = ''left'';',
'    select.style.webkitTextFillColor = ''#000000'';',
'',
'    tenants.forEach(function (tenant) {',
'        var option = document.createElement(''option'');',
'        option.value = tenant.id;',
'        option.textContent = tenant.name;',
'        if (String(tenant.id) === String(currentTenant)) {',
'            option.selected = true;',
'        }',
'        select.appendChild(option);',
'    });',
'',
'    if (!select.value && tenants[0]) {',
'        select.value = String(tenants[0].id);',
'    }',
'',
'    select.addEventListener(''change'', function () {',
'        var tenantId = this.value;',
'        apex.server.process(''SET_CURRENT_SYSTEM'', {',
'            x01: tenantId',
'        }, {',
'            dataType: ''json'',',
'            success: function (data) {',
'                if (data && data.code === ''200'') {',
'                    apex.navigation.redirect(window.location.href);',
'                    return;',
'                }',
'                apex.message.alert((data && data.message) || ''业务系统切换失败'');',
'            },',
'            error: function () {',
'                apex.message.alert(''业务系统切换失败'');',
'            }',
'        });',
'    });',
'',
'    wrap.appendChild(select);',
'    wrap.style.display = ''block'';',
'    wrap.style.width = ''260px'';',
'    wrap.style.margin = ''0'';',
'    wrap.style.textAlign = ''left'';',
'',
'    titleContainer.appendChild(wrap);',
'}',
'',
'apex.jQuery(function () {',
'    apex.server.process(''GET_SYSTEM_OPTIONS'', {}, {',
'        dataType: ''json'',',
'        success: function (data) {',
'            stsRenderTenantSwitcher(data);',
'        }',
'    });',
'});'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Header-logo-link,',
'.t-Header-logo,',
'.t-BreadcrumbRegion-titleText,',
'.t-Body-title h1 {',
'    margin-bottom: 8px;',
'}',
'',
'.t-Header-logo-link,',
'.t-Header-logo {',
'    display: flex !important;',
'    flex-direction: column !important;',
'    align-items: flex-start !important;',
'}',
'',
'.sts-tenant-switcher {',
'    display: block !important;',
'    width: 260px;',
'    margin: 0;',
'    text-align: left;',
'}',
'',
'.sts-tenant-select {',
'    width: 260px;',
'    height: 40px;',
'    border: 1px solid #6b7280;',
'    border-radius: 4px;',
'    background: #ffffff !important;',
'    color: #000000 !important;',
'    font-size: 16px;',
'    font-weight: 600;',
'    padding: 0 32px 0 12px;',
'    line-height: 40px;',
'    text-align: left;',
'    -webkit-text-fill-color: #000000;',
'}',
'',
'.sts-tenant-select option {',
'    color: #000000 !important;',
'    background: #ffffff;',
'}'))
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(987116957471168023)
,p_name=>'P0_UPLOAD_LINK'
,p_item_sequence=>100
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''UPLOAD_LINK'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1474916275881775081)
,p_name=>'P0_STS_APPKEY'
,p_item_sequence=>110
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''APP_KEY'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1474916419107775082)
,p_name=>'P0_STS_APPSECRET'
,p_item_sequence=>120
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 138 and DICT_CODE = ''APP_SECRET'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6850032109416695504)
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
 p_id=>wwv_flow_imp.id(7925490208479779933)
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
 p_id=>wwv_flow_imp.id(7925490348748779935)
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
 p_id=>wwv_flow_imp.id(7925490524810779936)
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
 p_id=>wwv_flow_imp.id(7925490622332779937)
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
 p_id=>wwv_flow_imp.id(7925490632412779938)
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
 p_id=>wwv_flow_imp.id(7925490811132779939)
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
 p_id=>wwv_flow_imp.id(7925490888081779940)
,p_name=>'P0_BPOINT_BUTTON_URL'
,p_item_sequence=>90
,p_item_default=>'BPOINT_BUTTON_URL'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(7925490888081779941)
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
 p_id=>wwv_flow_imp.id(7925490888081779942)
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
'  from sts_system',
' where is_enable = 1',
'   and del_flag = 0'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7925490888081779945)
,p_name=>unistr('\6E32\67D3\79DF\6237\5207\6362\5668')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(7925490888081779946)
,p_event_id=>wwv_flow_imp.id(7925490888081779945)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function stsRenderTenantSwitcher(payload) {',
'    var currentTenant = payload && (payload.currentSystem || payload.currentTenant);',
'    var tenants = payload && payload.tenants ? payload.tenants : [];',
'',
'    if (document.getElementById(''stsTenantSwitcher'') || !tenants.length) {',
'        return;',
'    }',
'',
'    var titleContainer = document.querySelector(''.t-Header-logo'') ||',
'        document.querySelector(''.t-Header-branding'') ||',
'        document.querySelector(''.t-Header-logo-link'') ||',
'        document.querySelector(''.t-BreadcrumbRegion-titleText'') ||',
'        document.querySelector(''.t-Body-title h1'') ||',
'        document.querySelector(''.t-Body-title'');',
'',
'    if (!titleContainer) {',
'        return;',
'    }',
'',
'    titleContainer.style.display = ''flex'';',
'    titleContainer.style.flexDirection = ''column'';',
'    titleContainer.style.alignItems = ''flex-start'';',
'    titleContainer.style.justifyContent = ''center'';',
'    titleContainer.style.gap = ''6px'';',
'',
'    document.documentElement.style.setProperty(''--ut-header-height'', ''78px'');',
'',
'    var wrap = document.createElement(''div'');',
'    wrap.id = ''stsTenantSwitcher'';',
'    wrap.className = ''sts-tenant-switcher'';',
'',
'    var select = document.createElement(''select'');',
'    select.id = ''stsTenantSelect'';',
'    select.className = ''sts-tenant-select'';',
'    select.title = ''切换业务系统'';',
'    select.style.width = ''260px'';',
'    select.style.height = ''40px'';',
'    select.style.border = ''1px solid #6b7280'';',
'    select.style.borderRadius = ''4px'';',
'    select.style.backgroundColor = ''#ffffff'';',
'    select.style.color = ''#000000'';',
'    select.style.fontSize = ''16px'';',
'    select.style.fontWeight = ''600'';',
'    select.style.padding = ''0 32px 0 12px'';',
'    select.style.lineHeight = ''40px'';',
'    select.style.textAlign = ''left'';',
'    select.style.webkitTextFillColor = ''#000000'';',
'',
'    tenants.forEach(function (tenant) {',
'        var option = document.createElement(''option'');',
'        option.value = tenant.id;',
'        option.textContent = tenant.name;',
'        if (String(tenant.id) === String(currentTenant)) {',
'            option.selected = true;',
'        }',
'        select.appendChild(option);',
'    });',
'',
'    if (!select.value && tenants[0]) {',
'        select.value = String(tenants[0].id);',
'    }',
'',
'    select.addEventListener(''change'', function () {',
'        apex.server.process(''SET_CURRENT_SYSTEM'', {',
'            x01: this.value',
'        }, {',
'            dataType: ''json'',',
'            success: function (data) {',
'                if (data && data.code === ''200'') {',
'                    apex.navigation.redirect(window.location.href);',
'                    return;',
'                }',
'                apex.message.alert((data && data.message) || ''业务系统切换失败'');',
'            },',
'            error: function () {',
'                apex.message.alert(''业务系统切换失败'');',
'            }',
'        });',
'    });',
'',
'    wrap.appendChild(select);',
'    wrap.style.display = ''block'';',
'    wrap.style.width = ''260px'';',
'    wrap.style.margin = ''0'';',
'    wrap.style.textAlign = ''left'';',
'',
'    titleContainer.appendChild(wrap);',
'}',
'',
'apex.server.process(''GET_SYSTEM_OPTIONS'', {}, {',
'    dataType: ''json'',',
'    success: function (data) {',
'        stsRenderTenantSwitcher(data);',
'    }',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7925490888081779943)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CURRENT_SYSTEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id number;',
'    v_count     number;',
'begin',
'    v_system_id := to_number(apex_application.g_x01);',
'',
'    select count(*)',
'      into v_count',
'      from sts_system',
'     where system_id = v_system_id',
'       and is_enable = 1',
'       and del_flag = 0;',
'',
'    apex_json.open_object;',
'    if v_count = 1 then',
'        apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'        apex_json.write(''code'', ''200'');',
'        apex_json.write(''system_id'', v_system_id);',
'        apex_json.write(''message'', '''');',
'    else',
'        apex_json.write(''code'', ''404'');',
'        apex_json.write(''message'', ''业务系统不存在或未启用'');',
'    end if;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', ''业务系统切换失败'');',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(7925490888081779944)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SYSTEM_OPTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''currentSystem'', nvl(v(''SYSTEM_ID''), ''1''));',
'    apex_json.open_array(''tenants'');',
'    for r in (',
'        select system_id, system_name',
'          from sts_system',
'         where is_enable = 1',
'           and del_flag = 0',
'           and system_id in (1, 2)',
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
);
wwv_flow_imp.component_end;
end;
/

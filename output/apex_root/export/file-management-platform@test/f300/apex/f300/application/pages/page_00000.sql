prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>unistr('\5168\5C40\9875')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9795758911530300987)
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
'.t-Header {',
'    background: #ffffff;',
'    border-bottom: 1px solid #f0f0f0;',
'    box-shadow: 0 1px 2px rgba(0, 0, 0, 0.04);',
'}',
'',
'.t-Header-branding,',
'.t-Header-logo-link,',
'.t-Header-logo,',
'.t-Header-nav a,',
'.t-Header .a-MenuBar-label {',
'    color: #1f2937 !important;',
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
'.t-Body-nav {',
'    background: #001529;',
'}',
'',
'.t-Body-nav .a-TreeView-content,',
'.t-Body-nav .a-TreeView-toggle {',
'    color: rgba(255,255,255,0.85);',
'}',
'',
'.t-TreeNav .a-TreeView-row {',
'    margin: 2px 8px;',
'    border-radius: 6px;',
'}',
'',
'.t-TreeNav .a-TreeView-row:hover {',
'    background: rgba(255,255,255,0.12);',
'}',
'',
'.t-TreeNav .a-TreeView-node.is-selected > .a-TreeView-row,',
'.t-TreeNav .a-TreeView-node.is-current > .a-TreeView-row {',
'    background: #1677ff;',
'}',
'',
'.t-TreeNav .a-TreeView-node.is-selected > .a-TreeView-row .a-TreeView-content,',
'.t-TreeNav .a-TreeView-node.is-current > .a-TreeView-row .a-TreeView-content,',
'.t-TreeNav .a-TreeView-node.is-selected > .a-TreeView-row .fa,',
'.t-TreeNav .a-TreeView-node.is-current > .a-TreeView-row .fa {',
'    color: #ffffff !important;',
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
''))
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(989116957471168023)
,p_name=>'P0_UPLOAD_LINK'
,p_item_sequence=>100
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 300 and DICT_CODE = ''UPLOAD_LINK'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1476916275881775081)
,p_name=>'P0_STS_APPKEY'
,p_item_sequence=>110
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 300 and DICT_CODE = ''APP_KEY'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1476916419107775082)
,p_name=>'P0_STS_APPSECRET'
,p_item_sequence=>120
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 300 and DICT_CODE = ''APP_SECRET'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6852032109416695504)
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
 p_id=>wwv_flow_imp.id(7927490208479779933)
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
 p_id=>wwv_flow_imp.id(7927490348748779935)
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
 p_id=>wwv_flow_imp.id(7927490524810779936)
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
 p_id=>wwv_flow_imp.id(7927490622332779937)
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
 p_id=>wwv_flow_imp.id(7927490632412779938)
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
 p_id=>wwv_flow_imp.id(7927490811132779939)
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
 p_id=>wwv_flow_imp.id(7927490888081779941)
,p_name=>'P0_USER_TENANT'
,p_item_sequence=>130
,p_item_default=>':USER_TENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/

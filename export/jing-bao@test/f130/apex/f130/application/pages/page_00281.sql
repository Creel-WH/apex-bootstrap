prompt --application/pages/page_00281
begin
--   Manifest
--     PAGE: 00281
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
 p_id=>281
,p_name=>unistr('\6743\9650\914D\7F6E')
,p_alias=>unistr('\6743\9650\914D\7F6E')
,p_step_title=>unistr('\6743\9650\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(412741913395630860)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2330871170826485717)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(399254118649826121)
,p_name=>'P281_JUMP_URL'
,p_item_sequence=>70
,p_item_default=>' select CODE_VALUE  from JA_SYSTEM_DICT where DICT_CODE=''JINGBAO_PERMISSION_LOGIN_URL'';'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(399254238272826122)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(399254290474826123)
,p_event_id=>wwv_flow_imp.id(399254238272826122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window.location.href=$v(''P281_JUMP_URL'')+''BASE_DEPT_ID=&BASE_DEPT_ID.&JOB_NUMBER=&USERJOBNUMBER.'';',
'// console.log($v(''P281_JUMP_URL'')+''BASE_DEPT_ID=&BASE_DEPT_ID.&JOB_NUMBER=&USERJOBNUMBER.'');',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

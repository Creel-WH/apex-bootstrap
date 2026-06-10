prompt --application/pages/page_00088
begin
--   Manifest
--     PAGE: 00088
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
 p_id=>88
,p_name=>unistr('\70ED\529B\56FE\6D4B\8BD5')
,p_alias=>unistr('\70ED\529B\56FE\6D4B\8BD5')
,p_step_title=>unistr('\70ED\529B\56FE\6D4B\8BD5')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2201096908312213487)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330935674808485752)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2330871170826485717)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2330990162870485778)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2282418885391235798)
,p_plug_name=>unistr('\67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2287123951071711766)
,p_plug_name=>unistr('\70ED\529B\56FE')
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody:t-Form--xlarge:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2282418760061235797)
,p_plug_name=>unistr('\56FE\8868')
,p_parent_plug_id=>wwv_flow_imp.id(2287123951071711766)
,p_region_template_options=>'#DEFAULT#:i-h640:t-Region--hiddenOverflow:t-Form--xlarge:t-Form--labelsAbove'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT BB.LINE_NAME x_axis_value,BB.OP_NAME y_axis_value,BB.COUNT heat_value FROM (',
'SELECT DISTINCT AA.LINE_NAME ,AA.OP_NAME,',
'(',
' CASE',
'   WHEN GG.COUNT IS NULL THEN 0',
'     ELSE GG.COUNT',
'       END',
') COUNT,GG.LINEID,GG.OPID',
'FROM',
'(SELECT A.NAME OP_NAME,B.NAME LINE_NAME FROM  ( SELECT A.NAME,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=1 AND B.NAME=:P88_FAB ORDER BY A.SORT_NUM ASC) A ,( SELECT A.NAME,B.NAME FND_NAME,A.SORT_NUM  FROM FND_AREAS A ',
'LEFT JOIN FND_FAB B ON A.FAB_ID = B.FAB_ID',
'WHERE A.TYPE=2 AND B.NAME=:P88_FAB  ORDER BY A.SORT_NUM ASC) B) AA',
'LEFT JOIN',
'(SELECT F1.NAME FND_NAME,G1.NAME OP_NAME,G2.NAME LINE_NAME,G2.SORT_NUM LINEID,G1.SORT_NUM OPID ,COUNT(*) COUNT FROM TENANT_EVENT A1',
'LEFT JOIN FND_FAB F1 ON A1.FAB_ID = F1.FAB_ID',
'LEFT JOIN FND_AREAS G1 ON A1.MAP_AREA_X_ID=G1.AREA_ID AND  G1.TYPE=1 AND G1.DEL_FLAG=0',
'LEFT JOIN FND_AREAS G2 ON A1.MAP_AREA_Y_ID=G2.AREA_ID AND  G2.TYPE=2 AND G2.DEL_FLAG=0',
'WHERE F1.NAME = :P88_FAB AND A1.BEGIN_TIME>TO_DATE(:P88_BEGIN_DATE,''yyyy-MM-dd'') AND A1.BEGIN_TIME<TO_DATE(:P88_END_DATE,''yyyy-MM-dd'')+1',
'AND A1.TENANT_ID = :USERTENANT',
'GROUP BY F1.NAME,G1.NAME,G2.NAME,G2.SORT_NUM,G1.SORT_NUM',
') GG ON AA.OP_NAME = GG.OP_NAME AND AA.LINE_NAME = GG.LINE_NAME',
'ORDER BY GG.LINEID ASC,GG.OPID ASC)BB',
'ORDER BY BB.LINEID,BB.OPID',
';'))
,p_plug_source_type=>'PLUGIN_ORCLKING.HEAT.MAP.CHART'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', '999',
  'attribute_02', '600',
  'attribute_03', unistr('\6676\8C79\4E8B\4EF6\70ED\529B\56FE'))).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2282419301901235802)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2282418885391235798)
,p_button_name=>unistr('\67E5\8BE2')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988904260485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\67E5\8BE2')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2282419058021235799)
,p_name=>'P88_BEGIN_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2282418885391235798)
,p_item_default=>':sysdate-7'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\5F00\59CB\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2282419128965235800)
,p_name=>'P88_END_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2282418885391235798)
,p_item_default=>':sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\622A\6B62\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'navigation_list_for', 'NONE',
  'show', 'both',
  'show_other_months', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2282419172870235801)
,p_name=>'P88_FAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2282418885391235798)
,p_item_default=>unistr('\7EC4\4EF6\4E8C\5382')
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\7EC4\4EF6\4E00\5382;\7EC4\4EF6\4E00\5382,\7EC4\4EF6\4E8C\5382;\7EC4\4EF6\4E8C\5382,\7535\6C60\4E00\5382;\7535\6C60\4E00\5382')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2195147929076505409)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2195147966081505410)
,p_event_id=>wwv_flow_imp.id(2195147929076505409)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',88,''\70ED\529B\56FE\6D4B\8BD5'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

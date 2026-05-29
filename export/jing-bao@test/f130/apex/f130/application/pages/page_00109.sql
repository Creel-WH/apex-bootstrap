prompt --application/pages/page_00109
begin
--   Manifest
--     PAGE: 00109
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
 p_id=>109
,p_name=>unistr('\7F51\683C\6279\91CF\914D\7F6E\5F39\7A97')
,p_alias=>unistr('\7F51\683C\6279\91CF\914D\7F6E\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\7F51\683C\6279\91CF\914D\7F6E\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2151664597901676600)
,p_plug_name=>unistr('\4FE1\606F\8F93\5165')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2151665479222676609)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_button_name=>unistr('\65B0\589Eor\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589Eor\4FEE\6539')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2151664737975676601)
,p_name=>'P109_FABID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_prompt=>unistr('\4EA7\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME KEY,FAB_ID VAL from fnd_fab WHERE TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID',
';'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2151664774288676602)
,p_name=>'P109_LINEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_Y_NAME key , MAP_AREA_Y_ID val from fnd_maps_areas_asso_v where fab_id = :P109_FABID AND  TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_cascade_parent_items=>'P109_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2151664928783676603)
,p_name=>'P109_OPID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_prompt=>unistr('\5DE5\5E8F')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_X_NAME key , MAP_AREA_X_ID val from fnd_maps_areas_asso_v where fab_id =:P109_FABID and MAP_AREA_Y_ID = :P109_LINEID AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_cascade_parent_items=>'P109_LINEID,P109_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2151665139288676605)
,p_name=>'P109_ORGID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,ext_org_id val from MPF_SHARE_DEPT_V  WHERE TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2151665190943676606)
,p_name=>'P109_USER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*SELECT listagg(D.EXT_USER_ID,'','') PNAME,listagg(D.EXT_USER_ID,'','') PLIST FROM TENANT_ATTENDANCE_INSTANCE A',
'                      LEFT JOIN TENANT_ATTENDANCE_INSTANCE_ASSO B ON A.ATTENDANCE_INSTANCE_ID = B.TENANT_ATTENDANCE_INSTANCE_ID ',
'                      INNER JOIN FND_MAPS_AREAS_ASSO_V C ON B.MAP_ID = C.MAP_ID',
'                      INNER JOIN TENANT_EXT_USERS D ON A.EXT_USER_ID = D.EXT_USER_ID AND D.IS_LEAVE = 0',
'                      INNER JOIN TENANT_EXT_ORG E ON A.EXT_ORG_ID = E.EXT_ORG_ID',
'                      WHERE A.WORK_TYPE = :P109_BB AND A.FAB_ID = :P109_FABID AND B.MAP_ID = :P109_MAPID AND A.EXT_ORG_ID = :P109_ORGID*/',
'',
'select listagg(ext_user_id,'','') key,listagg(ext_user_id,'','') val from table(APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P109_FABID,:P109_LINEID,:P109_OPID,:org_id)) where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\4EBA\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME KEY,EXT_USER_ID VAL from MPF_USER_DEPT_MAIN_ASSO_V where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID '))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P109_ORGID'
,p_ajax_optimize_refresh=>'Y'
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
 p_id=>wwv_flow_imp.id(2151665335235676607)
,p_name=>'P109_MAPID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2151664597901676600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151665633801676610)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2151665479222676609)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151665736542676611)
,p_event_id=>wwv_flow_imp.id(2151665633801676610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fabid = $x(''P109_FABID'').value;',
'  var lineid = $x(''P109_LINEID'').value;',
'  var opid = $x(''P109_OPID'').value;',
'  var orgid = $x(''P109_ORGID'').value;',
'  ',
'',
'  ',
'  var depJ = $(".apex-item-multi-item");',
' var deplist = "";',
' var tmp ;',
'',
'',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}',
'    ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'',
'console.log(fabid);',
'console.log(lineid);',
'console.log(opid);',
'console.log(orgid);',
'console.log(deplist);',
'',
'',
' apex.server.process( ''APEX_PROC'',',
'                    {x01: fabid,x02: lineid,x03: opid,x04:orgid,x05:deplist},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        console.log(pData);',
'                       ',
'                            alert(pData);',
'                            //apex.item(''pDetail'').setValue(pData);',
'                       ',
'                              ',
'                    },',
'                    error: function(e){',
'                        alert(e);',
unistr('                        //apex.item(''pDetail'').setValue(''\53D1\9001\5931\8D25\FF01'');'),
'                    },',
'                    dataType: "text"                        // Response type',
'                    }',
'                );'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151665915103676613)
,p_event_id=>wwv_flow_imp.id(2151665633801676610)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151787120265437473)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_FABID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151787238803437474)
,p_event_id=>wwv_flow_imp.id(2151787120265437473)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select listagg(pname,'',''),listagg(ext_user_id,'','') from table(APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P109_FABID,:P109_LINEID,:P109_OPID,:org_id)) where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT;'
,p_attribute_07=>'P109_FABID,P109_LINEID,P109_OPID,P109_ORGID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151787273808437475)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_LINEID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151787347759437476)
,p_event_id=>wwv_flow_imp.id(2151787273808437475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select listagg(pname,'',''),listagg(ext_user_id,'','') from table(APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P109_FABID,:P109_LINEID,:P109_OPID,:org_id)) where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT;'
,p_attribute_07=>'P109_FABID,P109_LINEID,P109_OPID,P109_ORGID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151787510762437477)
,p_name=>unistr('\65B0\5EFA_3')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_OPID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151787569523437478)
,p_event_id=>wwv_flow_imp.id(2151787510762437477)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select listagg(pname,'',''),listagg(ext_user_id,'','') from table(APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P109_FABID,:P109_LINEID,:P109_OPID,:org_id)) where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT;;'
,p_attribute_07=>'P109_FABID,P109_LINEID,P109_OPID,P109_ORGID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151787669373437479)
,p_name=>unistr('\65B0\5EFA_4')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P109_ORGID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151787798147437480)
,p_event_id=>wwv_flow_imp.id(2151787669373437479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P109_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'select listagg(pname,'',''),listagg(ext_user_id,'','') from table(APEX_PAK_SETAREA.GET_AREA_PER_DATA(:P109_FABID,:P109_LINEID,:P109_OPID,:org_id)) where ext_org_id=:P109_ORGID AND TENANT_ID = :USERTENANT;;'
,p_attribute_07=>'P109_FABID,P109_LINEID,P109_OPID,P109_ORGID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2153218394083854798)
,p_name=>unistr('\65B0\5EFA_5')
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153218470438854799)
,p_event_id=>wwv_flow_imp.id(2153218394083854798)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',109,''\7F51\683C\6279\91CF\914D\7F6E\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2151665824556676612)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX_PROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(100):='''';',
'    BEGIN',
'      APEX_SETAREA_PERSON_PROC(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,apex_application.g_x05,:APP_USER,HTML);',
'      htp.prn(HTML);',
'',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41463770279173201
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00115
begin
--   Manifest
--     PAGE: 00115
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
 p_id=>115
,p_name=>unistr('\7F51\683C\6279\91CF\65B0\589E\5F39\7A97')
,p_alias=>unistr('\7F51\683C\6279\91CF\65B0\589E\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\7F51\683C\6279\91CF\65B0\589E\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2226338569061435317)
,p_plug_name=>unistr('\4FE1\606F\8F93\5165')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2359807030908135298)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226339292426435325)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226338624369435318)
,p_name=>'P115_FABID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_prompt=>unistr('\4EA7\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME KEY,FAB_ID VAL from fnd_fab WHERE TENANT_ID = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID and DEL_FLAG=0',
';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226338703847435319)
,p_name=>'P115_LINEID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_Y_NAME key , MAP_AREA_Y_ID val from fnd_maps_areas_asso_v where fab_id = :P115_FABID AND  TENANT_ID = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P115_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
 p_id=>wwv_flow_imp.id(2226338834465435320)
,p_name=>'P115_OPID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_prompt=>unistr('\5DE5\5E8F')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  DISTINCT MAP_AREA_X_NAME key , MAP_AREA_X_ID val from fnd_maps_areas_asso_v where fab_id =:P115_FABID AND TENANT_ID = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P115_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
 p_id=>wwv_flow_imp.id(2226338949731435321)
,p_name=>'P115_ORGID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ext_org_name,ext_org_id FROM tenant_org_group_asso_v where fab_id = :P115_FABID and tenant_id =:USERTENANT',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P115_FABID'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226339022261435322)
,p_name=>'P115_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_prompt=>unistr('\4EBA\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME KEY,EXT_USER_ID VAL from MPF_USER_DEPT_MAIN_ASSO_V where ext_org_id=:P115_ORGID AND TENANT_ID = :USERTENANT ',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P115_ORGID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
 p_id=>wwv_flow_imp.id(2226339146153435323)
,p_name=>'P115_MAPID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2226338569061435317)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226339514902435327)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226339292426435325)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226339607411435328)
,p_event_id=>wwv_flow_imp.id(2226339514902435327)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var fabid = $x(''P115_FABID'').value;',
'  //var lineid = $x(''P109_LINEID'').value;',
'  //var opid = $x(''P109_OPID'').value;',
'  var orgid = $x(''P115_ORGID'').value;',
'  ',
'',
'  ',
'  var lineJ = $("#P115_LINEID_CONTAINER .apex-item-multi-item");',
'  var opJ = $("#P115_OPID_CONTAINER .apex-item-multi-item");',
'  var userJ = $("#P115_USER_CONTAINER .apex-item-multi-item");',
' var linelist = "";',
'  var oplist = "";',
'   var userlist = "";',
' var tmp ;',
'',
'for (var i=0;i<lineJ.length;i++){',
'     tmp = lineJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){linelist = linelist+tmp+'','';}',
'    ',
'}',
'linelist=(linelist.substring(linelist.length-1)=='','')?linelist.substring(0,linelist.length-1):linelist;',
'',
'///////////////////////',
'for (var i=0;i<opJ.length;i++){',
'     tmp = opJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){oplist = oplist+tmp+'','';}',
'    ',
'}',
'oplist=(oplist.substring(oplist.length-1)=='','')?oplist.substring(0,oplist.length-1):oplist;',
'//////////////////////////////',
'for (var i=0;i<userJ.length;i++){',
'     tmp = userJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){userlist = userlist+tmp+'','';}',
'    ',
'}',
'userlist=(userlist.substring(userlist.length-1)=='','')?userlist.substring(0,userlist.length-1):userlist;',
'///////////////////////',
'console.log("FABID:"+fabid);',
'console.log("ORGID:"+orgid);',
'console.log("LINELIST:"+linelist);',
'console.log("OPLIST:"+oplist);',
'console.log("USERLIST:"+userlist);',
'',
'',
'',
' apex.server.process( ''APEX_PROC'',',
'                    {x01: fabid,x02: linelist,x03: oplist,x04:orgid,x05:userlist},  // Parameter to be passed to the server',
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
 p_id=>wwv_flow_imp.id(2226339849010435330)
,p_event_id=>wwv_flow_imp.id(2226339514902435327)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226339965324435331)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226340018217435332)
,p_event_id=>wwv_flow_imp.id(2226339965324435331)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',115,''\7F51\683C\6279\91CF\65B0\589E\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226339486649435326)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX_PROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(100):='''';',
'    BEGIN',
'      APEX_SETAREA_PERSON_PROC_ADD(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,apex_application.g_x05,:APP_USER,:USERTENANT,HTML,:base_dept_id);',
'      htp.prn(HTML);',
'',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>43014883895351372
);
wwv_flow_imp.component_end;
end;
/

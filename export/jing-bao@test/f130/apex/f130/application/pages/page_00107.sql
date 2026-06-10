prompt --application/pages/page_00107
begin
--   Manifest
--     PAGE: 00107
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
 p_id=>107
,p_name=>unistr('\89C4\5219\5E93\5F39\7A97')
,p_alias=>unistr('\89C4\5219\5E93\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\89C4\5219\5E93\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166727036750354548)
,p_plug_name=>unistr('\4FE1\606F\8F93\5165')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166727703026354554)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2166727036750354548)
,p_button_name=>unistr('\65B0\589Eor\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589Eor\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2166727178234354549)
,p_name=>'P107_EVENTID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2166727036750354548)
,p_prompt=>unistr('\4E8B\4EF6')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FIRST_EVENT_CATEGORY_NAME||''-''||SECOND_EVENT_CATEGORY_NAME||''-''||EVENT_PHENOMENON_NAME , EVENT_LIBRARY_ID from TENANT_EVENT_LIBRARY_V where TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2166727285148354550)
,p_name=>'P107_LABELID'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2166727036750354548)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(C.LABEL_LIBRARY_ID,'','') key,LISTAGG(C.LABEL_LIBRARY_ID,'','') VAL from TENANT_RULE_LIBRARY A ',
'INNER JOIN TENANT_EVENT_LIBRARY_V B ON A.EVENT_LIBRARY_ID = B.EVENT_LIBRARY_ID',
'INNER JOIN tenant_label_library C ON A.LABEL_LIBRARY_ID = C.LABEL_LIBRARY_ID',
'WHERE A.EVENT_LIBRARY_ID = :P107_EVENTID ',
'AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'AND C.BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6807\7B7E')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name,label_library_id from tenant_label_library where TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2166727354956354551)
,p_name=>'P107_REMARK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2166727036750354548)
,p_prompt=>unistr('\5907\6CE8')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166727837111354556)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2166727703026354554)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166727932049354557)
,p_event_id=>wwv_flow_imp.id(2166727837111354556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var ver = $x(''P107_EVENTID'').value;',
'  var remark = $x(''P107_REMARK'').value;',
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
'console.log(deplist);',
'console.log(ver);',
' apex.server.process( ''APEX_PROC'',',
'                    {x01: ver,x02: deplist,x03: remark},  // Parameter to be passed to the server',
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
 p_id=>wwv_flow_imp.id(2167022403033958012)
,p_event_id=>wwv_flow_imp.id(2166727837111354556)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2167180086914965438)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P107_EVENTID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2167180175198965439)
,p_event_id=>wwv_flow_imp.id(2167180086914965438)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P107_LABELID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select listagg(t.name, '','')',
'-- from tenant_label_library t',
'--           inner join TENANT_RULE_LIBRARY l on l.LABEL_LIBRARY_ID=t.LABEL_LIBRARY_ID',
'-- where l.EVENT_LIBRARY_ID = :P107_EVENTID;',
'',
'select listagg(C.name,'','') key from TENANT_RULE_LIBRARY A ',
'INNER JOIN TENANT_EVENT_LIBRARY_V B ON A.EVENT_LIBRARY_ID = B.EVENT_LIBRARY_ID',
'INNER JOIN tenant_label_library C ON A.LABEL_LIBRARY_ID = C.LABEL_LIBRARY_ID',
'WHERE A.EVENT_LIBRARY_ID = :P107_EVENTID ',
'AND A.BASE_DEPT_ID = :BASE_DEPT_ID',
'AND B.BASE_DEPT_ID = :BASE_DEPT_ID',
'AND C.BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_attribute_07=>'P107_EVENTID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2168579926696136247)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2168579970344136248)
,p_event_id=>wwv_flow_imp.id(2168579926696136247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',107,''\89C4\5219\5E93\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2166727546218354553)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX_PROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(100):='''';',
'    BEGIN',
'     HTML:= APEX_RULE_FUNC(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03);',
'      htp.prn(HTML);',
'',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41164405647569697
);
wwv_flow_imp.component_end;
end;
/

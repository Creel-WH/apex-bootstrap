prompt --application/pages/page_00103
begin
--   Manifest
--     PAGE: 00103
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
 p_id=>103
,p_name=>unistr('\4EBA\5458\6280\80FD\914D\7F6E\5F39\7A97')
,p_alias=>unistr('\4EBA\5458\6280\80FD\914D\7F6E\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4EBA\5458\6280\80FD\914D\7F6E\5F39\7A97')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166514419794121554)
,p_plug_name=>unistr('\4FE1\606F\5F55\5165')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166746557889232448)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P103_PUSERID'
,p_button_condition_type=>'ITEM_IS_NULL_OR_ZERO'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2166746648730232449)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P103_PUSERID'
,p_button_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2166514476530121555)
,p_name=>'P103_USERID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_item_default=>'P103_PUSERID'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr('\4EBA\5458\540D\79F0')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME key, EXT_USER_ID val',
'from MPF_USER_DEPT_MAIN_ASSO_V',
'WHERE LEADER_EXT_USER_ID = :user_id',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID',
'  and tenant_id = :USERTENANT'))
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
 p_id=>wwv_flow_imp.id(2166514583353121556)
,p_name=>'P103_SKILLID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(B.LABEL_LIBRARY_ID,'','') key,listagg(B.LABEL_LIBRARY_ID,'','') val from TENANT_USER_SKILL_LIBRARY A',
'INNER JOIN tenant_label_library B ON A.LABEL_LIBRARY_ID = B.LABEL_LIBRARY_ID',
'WHERE A.EXT_USER_ID=:P103_PUSERID',
'and A.BASE_DEPT_ID = :BASE_DEPT_ID',
'and B.BASE_DEPT_ID = :BASE_DEPT_ID',
'',
''))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\6280\80FD\6807\7B7E')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key, label_library_id val from tenant_label_library ',
'where BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
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
 p_id=>wwv_flow_imp.id(2166514751762121558)
,p_name=>'P103_PUSERID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2167178534472965423)
,p_name=>'P103_LABEL_LIBRARY_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2166514419794121554)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(t.label_library_id, '','') key, listagg(t.label_library_id, '','') val',
'from tenant_label_library t',
'where t.LABEL_LIBRARY_ID in',
'      (select s.LABEL_LIBRARY_ID from TENANT_USER_SKILL_LIBRARY s where s.EXT_USER_ID = :P103_PUSERID and s.BASE_DEPT_ID = :BASE_DEPT_ID);',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166747394397232456)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2166746557889232448)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166747439425232457)
,p_event_id=>wwv_flow_imp.id(2166747394397232456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var ver = $x(''P103_USERID'').value;',
' ',
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
' apex.server.process( ''APEX_PROC'',',
'                    {x01: ver,x02: deplist,x03: 0},  // Parameter to be passed to the server',
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
 p_id=>wwv_flow_imp.id(2166726018585354537)
,p_event_id=>wwv_flow_imp.id(2166747394397232456)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166747564828232458)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2166746648730232449)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166747719754232459)
,p_event_id=>wwv_flow_imp.id(2166747564828232458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var ver = $x(''P103_USERID'').value;',
'',
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
' apex.server.process( ''APEX_PROC'',',
'                    {x01: ver,x02: deplist,x03: 1},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                       // console.log(pData);',
'                       alert(pData);',
'                          //  apex.item(''pDetail'').setValue(pData);',
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
 p_id=>wwv_flow_imp.id(2166726068154354538)
,p_event_id=>wwv_flow_imp.id(2166747564828232458)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2166725179319354529)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2166725294543354530)
,p_event_id=>wwv_flow_imp.id(2166725179319354529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',103,''\4EBA\5458\6280\80FD\914D\7F6E\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2173351295528077844)
,p_event_id=>wwv_flow_imp.id(2166725179319354529)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(''&APP_USER.'');'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2167178131366965419)
,p_name=>unistr('\4EBA\5458')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P103_USERID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2167178312725965420)
,p_event_id=>wwv_flow_imp.id(2167178131366965419)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P103_SKILLID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(B.name,'','') key,listagg(B.LABEL_LIBRARY_ID,'','') val from TENANT_USER_SKILL_LIBRARY A',
'INNER JOIN tenant_label_library B ON A.LABEL_LIBRARY_ID = B.LABEL_LIBRARY_ID',
'WHERE A.EXT_USER_ID=:P103_USERID',
'and A.BASE_DEPT_ID = :BASE_DEPT_ID',
'and B.BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_attribute_07=>'P103_USERID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2166747285856232455)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'APEX_PROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(100):='''';',
'    BEGIN',
'     HTML:= APEX_USER_SKILL_FUN(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,:USERTENANT,:base_dept_id);',
'      htp.prn(HTML);',
'',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>41184145285447599
);
wwv_flow_imp.component_end;
end;
/

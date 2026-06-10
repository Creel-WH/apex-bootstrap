prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_name=>unistr('\63D0\9192\5F39\7A97')
,p_alias=>unistr('\63D0\9192\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\63D0\9192\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2288011239537879367)
,p_plug_name=>unistr('\63D0\9192')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2288577584187522598)
,p_plug_name=>unistr('\8FD0\884C\7ED3\679C')
,p_region_name=>'pDetail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2288011587120879371)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_button_name=>unistr('\65B0\589E\5E76\63D0\9192')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988904260485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E\5E76\63D0\9192')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P97_CONTENT'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2288011669231879372)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_button_name=>unistr('\63D0\9192')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988904260485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\9192')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2195144653019505376)
,p_name=>'P97_DEP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT listagg(distinct CONVERSATION_ID,'','') key,listagg(distinct CONVERSATION_ID,'','') VAL FROM TENANT_ROBOT_SUBSCRIBE WHERE DEPT_ID=-2 AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\7FA4\804A\9009\62E9')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT distinct CONVERSATION_NAME  KEY ,CONVERSATION_ID VAL FROM TENANT_ROBOT_SUBSCRIBE WHERE IS_ENABLE=1 AND TENANT_ID = :USERTENANT',
'AND BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
 p_id=>wwv_flow_imp.id(2288011316153879368)
,p_name=>'P97_VERSION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_use_cache_before_default=>'NO'
,p_item_default=>'P97_VERSION'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr('\66F4\65B0\7248\672C')
,p_source=>'P97_VERSION'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2288011417198879369)
,p_name=>'P97_CONTENT'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_prompt=>unistr('\66F4\65B0\5185\5BB9')
,p_source=>'P97_CONTENT'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'N',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2288011496796879370)
,p_name=>'P97_UPDATEDATE'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2288011239537879367)
,p_prompt=>unistr('\66F4\65B0\65E5\671F')
,p_format_mask=>'yyyy-MM-dd'
,p_source=>'P97_UPDATEDATE'
,p_source_type=>'ITEM'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2288011863380879374)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2288011587120879371)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288011994873879375)
,p_event_id=>wwv_flow_imp.id(2288011863380879374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ver = $x(''P97_VERSION'').value;',
' var des = $x(''P97_CONTENT'').value;',
' var uDate = $x(''P97_UPDATEDATE'').value;',
' var dep = $x(''P97_DEP'').value;',
' var depJ = $(".apex-item-multi-item");',
' var deplist = "";',
' var tmp ;',
'',
'des = des.replace(/\n/g,"\\n\\n ");',
'',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}',
'    ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'console.log(deplist);',
'console.log(des);',
'//var data = dep+''--''+fab+''--''+pb;',
unistr('apex.item(''pDetail'').setValue(''\8FD0\884C\4E2D'');'),
'////////////////////////////',
' apex.server.process( ''GETPROC'',',
'                    {x01: des,x02: ver,x03: uDate,x04:deplist},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        console.log(pData);',
'                       ',
'                            apex.item(''pDetail'').setValue(pData);',
'                       ',
'                              ',
'                    },',
'                    error: function(e){',
unistr('                        apex.item(''pDetail'').setValue(''\53D1\9001\5931\8D25\FF01'');'),
'                    },',
'                    dataType: "text"                        // Response type',
'                    }',
'                );'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2288015177216879407)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288015282335879408)
,p_event_id=>wwv_flow_imp.id(2288015177216879407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',97,''\63D0\9192\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2288577399325522596)
,p_name=>unistr('\53EA\63D0\9192')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2288011669231879372)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288577485770522597)
,p_event_id=>wwv_flow_imp.id(2288577399325522596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ver = $x(''P97_VERSION'').value;',
' var des = $x(''P97_CONTENT'').value;',
' var uDate = $x(''P97_UPDATEDATE'').value;',
' var dep = $x(''P97_DEP'').value;',
' var depJ = $(".apex-item-multi-item");',
' console.log(depJ);',
' var deplist = "";',
' var tmp ;',
'',
'des = des.replace(/\n/g,"\\n\\n ");',
'',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}',
'    ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'console.log(deplist);',
'console.log(des);',
'//var data = dep+''--''+fab+''--''+pb;',
unistr('apex.item(''pDetail'').setValue(''\8FD0\884C\4E2D'');'),
'////////////////////////////',
' apex.server.process( ''NOTICE_ONLY'',',
'                    {x01: des,x02: ver,x03: uDate,x04:deplist},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        console.log(pData);',
'                       ',
'                            apex.item(''pDetail'').setValue(pData);',
'                      ',
'                              ',
'                    },',
'                    error: function(e){',
unistr('                        apex.item(''pDetail'').setValue(''\901A\77E5\6210\529F\FF01'');'),
'                    },',
'                    dataType: "text"                        // Response type',
'                    }',
'                );'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2288011852928879373)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETPROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(10):='''';',
'    BEGIN',
'      --apex_json.open_object;',
'      APEX_UPDATE_NOTICE_PRO(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,:USERTENANT);',
unistr('      htp.prn(''\901A\77E5\6210\529F\FF01'');'),
'',
unistr('      --apex_json.write(''HTML'' , ''\901A\77E5\6210\529F\FF01'');'),
'      --apex_json.write(''code'' , ''200'');',
'      --apex_json.close_all;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>133567981266444968
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2288577280466522595)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'NOTICE_ONLY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(10):='''';',
'    BEGIN',
'      --apex_json.open_object;',
'      APEX_ONLY_NOTICE_PRO(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,:USERTENANT);',
unistr('      htp.prn(''\901A\77E5\6210\529F\FF01'');'),
unistr('     -- apex_json.write(''HTML'' , ''\901A\77E5\6210\529F\FF01'');'),
'     -- apex_json.write(''code'' , ''200'');',
'     -- apex_json.close_all;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>134133408804088190
);
wwv_flow_imp.component_end;
end;
/

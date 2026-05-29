prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_name=>unistr('\7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_alias=>unistr('\7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_step_title=>unistr('\7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235166666065953914)
,p_plug_name=>unistr('\7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>'select * from dual'
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235192345584139970)
,p_plug_name=>unistr('\8BE6\60C5')
,p_region_name=>'pDetail'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<html><body><p>hello world</p></body></html>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2235158958746930773)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_button_name=>unistr('\641C\7D22')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\641C\7D22')
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2235169694857953915)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2235158664243930770)
,p_name=>'P61_FAB'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'select NAME KEY ,NAME VAL FROM FND_FAB WHERE BASE_DEPT_ID=:BASE_DEPT_ID'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2235158816403930771)
,p_name=>'P61_DEP'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT B. EXT_ORG_NAME KEY,B. EXT_ORG_NAME VAL FROM FND_FAB A INNER JOIN TENANT_ORG_GROUP_ASSO_V B ON A.ORG_GROUP_CODE  = B.CODE WHERE A.NAME=:P61_FAB'
,p_lov_cascade_parent_items=>'P61_FAB'
,p_ajax_items_to_submit=>'P61_FAB'
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
 p_id=>wwv_flow_imp.id(2235158898222930772)
,p_name=>'P61_PAIBAN'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_prompt=>unistr('\6392\73ED')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\767D\73ED;1,\665A\73ED;2')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2235167099418953914)
,p_name=>'P61_DUMMY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_item_source_plug_id=>wwv_flow_imp.id(2235166666065953914)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Dummy'
,p_source=>'DUMMY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2235159391545930777)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2235158958746930773)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2235159534266930778)
,p_event_id=>wwv_flow_imp.id(2235159391545930777)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' ',
' var dep = $x(''P61_DEP'').value;',
' var fab = $x(''P61_FAB'').value;',
' var pb = $x(''P61_PAIBAN'').value;',
'//var data = dep+''--''+fab+''--''+pb;',
unistr('apex.item(''pDetail'').setValue(''\6570\636E\83B7\53D6\4E2D\FF0C\8BF7\7A0D\540E\FF01'');'),
'////////////////////////////',
' apex.server.process( ''GETHTML'',',
'                    {x01: fab,x02: dep,x03: pb},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        console.log(pData);',
'                        if(pData.code == ''200''){',
'                            apex.item(''pDetail'').setValue(pData.HTML);',
'                        }else',
'                        {',
unistr('                            apex.item(''pDetail'').setValue(''\83B7\53D6\6570\636E\6709\8BEF\FF01'');'),
'                        }',
'                              ',
'                    },',
'                    error: function(e){',
'                        console.log("Error: ", e);',
'                    },',
'                    dataType: "json"                        // Response type',
'                    }',
'                );',
'',
'//////////////////////////////',
'',
' //apex.item(''pDetail'').setValue(data);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2151048521047019115)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2151048569721019116)
,p_event_id=>wwv_flow_imp.id(2151048521047019115)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',61,''\7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2235170589263953916)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2235166666065953914)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>124968534986450505
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2235170172992953916)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2235166666065953914)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \7F51\683C\4EBA\5458\914D\7F6E\60C5\51B5\62A5\8868')
,p_internal_uid=>124968118715450505
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2235196582568140012)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETHTML'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(30000);',
'    BEGIN',
'      apex_json.open_object;',
'      HTML := APEX_GETFMAN_HTML(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03);',
'      apex_json.write(''HTML'' , HTML);',
'      apex_json.write(''code'' , ''200'');',
'      apex_json.close_all;',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>124994528290636601
);
wwv_flow_imp.component_end;
end;
/

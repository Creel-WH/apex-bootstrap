prompt --application/pages/page_00113
begin
--   Manifest
--     PAGE: 00113
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
 p_id=>113
,p_name=>unistr('\5FD8\8BB0\5BC6\7801')
,p_alias=>unistr('\5FD8\8BB0\5BC6\7801')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5FD8\8BB0\5BC6\7801')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197373101633256677)
,p_plug_name=>unistr('\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2197373634358256682)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_button_name=>unistr('\53D1\9001\9A8C\8BC1\7801')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D1\9001\9A8C\8BC1\7801')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column=>4
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2197373743963256683)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_button_name=>unistr('\786E\8BA4\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\8BA4\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2197373849708256684)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2197373165202256678)
,p_name=>'P113_MOBILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_prompt=>unistr('\624B\673A\53F7')
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
 p_id=>wwv_flow_imp.id(2197373282416256679)
,p_name=>'P113_YZM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_prompt=>unistr('\9A8C\8BC1\7801')
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
 p_id=>wwv_flow_imp.id(2197373381172256680)
,p_name=>'P113_NEWPSW'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_prompt=>unistr('\65B0\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2197373490762256681)
,p_name=>'P113_NEWPSW_R'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_prompt=>unistr('\518D\6B21\8F93\5165\65B0\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2214218996236877102)
,p_name=>'P113_TENANT'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2197373101633256677)
,p_prompt=>unistr('\79DF\6237')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT (SELECT NAME FROM TENANT_BASE B WHERE B.TENANT_ID = A.TENANT_ID AND DEL_FLAG = 0) NAME,TENANT_ID',
'FROM MPF_USER_DEPT_MAIN_ASSO_V A WHERE MOBILE = :P113_MOBILE'))
,p_lov_cascade_parent_items=>'P113_MOBILE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2197373948697256685)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2197373849708256684)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197374052574256686)
,p_event_id=>wwv_flow_imp.id(2197373948697256685)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2197374659311256693)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2197373634358256682)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197374823223256694)
,p_event_id=>wwv_flow_imp.id(2197374659311256693)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var des = $x(''P113_MOBILE'').value;',
'  var tenant = $x(''P113_TENANT'').value;',
unistr('  if(des.length!=11){alert("\624B\673A\53F7\8F93\5165\4E0D\6B63\786E\FF01");return;}'),
' apex.server.process( ''GetData'',',
'                    {x01: des,x02: tenant},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
unistr('                        alert("\9A8C\8BC1\7801\53D1\9001\6210\529F!");                      '),
'                    },',
'                    error: function(e){',
unistr('                       alert("\9A8C\8BC1\7801\53D1\9001\5931\8D25!"); '),
'                    },',
'                    dataType: "text"                        // Response type',
'                    }',
'                );'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197375152538256697)
,p_event_id=>wwv_flow_imp.id(2197374659311256693)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2197373634358256682)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2197374954888256695)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2197373743963256683)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197375013914256696)
,p_event_id=>wwv_flow_imp.id(2197374954888256695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    var yzcode = $x(''P113_YZM'').value;',
'  var mobile = $x(''P113_MOBILE'').value;',
'  var tenant = $x(''P113_TENANT'').value;',
'     var newPsw = $x(''P113_NEWPSW'').value;',
'       var newPsw2 = $x(''P113_NEWPSW_R'').value;',
unistr('  if(mobile.length!=11){alert("\624B\673A\53F7\8F93\5165\4E0D\6B63\786E\FF01");return;}'),
' apex.server.process( ''GetData1'',',
'                    {x01: yzcode,x02:mobile,x03: newPsw,x04:newPsw2,x05:tenant},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        alert(pData);                      ',
'                    },',
'                    error: function(e){',
'                       alert(pData); ',
'                    },',
'                    dataType: "text"                        // Response type',
'                    }',
'                );'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197462053235785810)
,p_event_id=>wwv_flow_imp.id(2197374954888256695)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2197374548178256691)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    ret VARCHAR2(100):='''';',
'    BEGIN',
'     ret := APEX_SEND_MSGCODE_2(apex_application.g_x01,apex_application.g_x02,:org_id);',
'      htp.prn(ret);',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>42930676515822286
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2197374570704256692)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    ret VARCHAR2(100):='''';',
'    BEGIN',
'     ret := APEX_MODIFY_PSW_PHONE_FUNC_2(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,,apex_application.g_x05);',
'      htp.prn(ret);',
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>42930699041822287
);
wwv_flow_imp.component_end;
end;
/

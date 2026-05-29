prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
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
 p_id=>144
,p_name=>unistr('\6807\7B7E\90E8\95E8\8BBE\7F6E\5F39\7A97')
,p_alias=>unistr('\6807\7B7E\90E8\95E8\8BBE\7F6E\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6807\7B7E\90E8\95E8\8BBE\7F6E\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2161152518989415700)
,p_plug_name=>unistr('\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2161152803528415703)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2161152518989415700)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2161152848482415704)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2161152518989415700)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2161152553505415701)
,p_name=>'P144_DEPID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2161152518989415700)
,p_prompt=>unistr('\90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT name key,ext_org_id val from MPF_SHARE_DEPT_V WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2161152665284415702)
,p_name=>'P144_LIBRARYID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2161152518989415700)
,p_prompt=>unistr('\6807\7B7E\FF08\53EF\591A\9009\FF09')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name key ,label_library_id val from tenant_label_library where tenant_id = :USERTENANT AND TYPE=:P144_TYPE AND BASE_DEPT_ID= :BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P144_TYPE'
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
 p_id=>wwv_flow_imp.id(2161385357963650707)
,p_name=>'P144_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2161152518989415700)
,p_prompt=>unistr('\6807\7B7E\7C7B\578B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  distinct type key,type val  from tenant_label_library where tenant_id = :USERTENANT and BASE_DEPT_ID= :BASE_DEPT_ID;',
''))
,p_lov_display_null=>'YES'
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
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2161152997556415705)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2161152803528415703)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2161153069030415706)
,p_event_id=>wwv_flow_imp.id(2161152997556415705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2161153214577415707)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2161152848482415704)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2161153339843415708)
,p_event_id=>wwv_flow_imp.id(2161153214577415707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var libraryJ = $("#P144_LIBRARYID_CONTAINER .apex-item-multi-item");',
'  ',
'  var orgid = $x(''P144_DEPID_HIDDENVALUE'').value; ',
'   var librarylist = "";',
' var tmp ;',
'',
'for (var i=0;i<libraryJ.length;i++){',
'     tmp = libraryJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){librarylist = librarylist+tmp+'','';}',
'    ',
'}',
'librarylist=(librarylist.substring(librarylist.length-1)=='','')?librarylist.substring(0,librarylist.length-1):librarylist;',
'',
'apex.server.process( ''GetData'',',
'                    {x01: orgid,x02: librarylist},  // Parameter to be passed to the server',
'                    {',
'                        success: function (pData) {             // Success',
'                        console.log(pData);',
'                       ',
'                          //  alert(pData);',
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
 p_id=>wwv_flow_imp.id(2161153609826415711)
,p_event_id=>wwv_flow_imp.id(2161153214577415707)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2161153691995415712)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
' NCOUNT NUMBER(20);',
' ORGID VARCHAR2(20);',
' LIBRARYLIST VARCHAR2(2000);',
'BEGIN',
'ORGID := apex_application.g_x01;',
'LIBRARYLIST := apex_application.g_x02;',
'IF(NVL(ORGID,''N'')=''N'') THEN',
'RETURN ;',
'END IF;',
'',
'IF(NVL(LIBRARYLIST,''N'')=''N'')THEN',
'  DELETE TENANT_EVENT_LIBRARY_EXT_ORG_ASSO WHERE EXT_ORG_ID = ORGID;',
'  COMMIT;',
'  RETURN ;',
'END IF;',
'',
'FOR ITEM IN  (select * from table(send_split1(LIBRARYLIST,'',''))) LOOP',
'     SELECT COUNT(*) INTO NCOUNT FROM TENANT_EVENT_LIBRARY_EXT_ORG_ASSO WHERE EXT_ORG_ID = ORGID AND library_id = ITEM.COLUMN_VALUE',
'            AND TENANT_ID = :USERTENANT;',
'         IF NCOUNT <=0 THEN',
'         INSERT INTO TENANT_EVENT_LIBRARY_EXT_ORG_ASSO(TENANT_ID,EXT_ORG_ID,library_id,UPDATE_DATE,CREATION_DATE,CREATED_BY,UPDATED_BY)VALUES',
'         (:USERTENANT,ORGID,ITEM.COLUMN_VALUE,SYSDATE,SYSDATE,:APP_USER,:APP_USER);',
'         COMMIT;',
'         END IF;',
'    END LOOP;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>50951637717912301
);
wwv_flow_imp.component_end;
end;
/

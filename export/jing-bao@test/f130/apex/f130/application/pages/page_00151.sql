prompt --application/pages/page_00151
begin
--   Manifest
--     PAGE: 00151
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
 p_id=>151
,p_name=>unistr('\5DE5\4F4D\5730\56FE\65B0\589E\5F39\7A97')
,p_alias=>unistr('\5DE5\4F4D\5730\56FE\65B0\589E\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5DE5\4F4D\5730\56FE\65B0\589E\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2235120590971281714)
,p_plug_name=>unistr('\65B0\589E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359805148471135297)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2235121381692281721)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2235121470030281722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2235120765231281715)
,p_name=>'P151_BASE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_prompt=>unistr('\57FA\5730')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME KEY,BASE_ID VAL FROM TENANT_BASE WHERE  TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND IS_ENABLE=1;'
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
 p_id=>wwv_flow_imp.id(2235120888349281716)
,p_name=>'P151_FAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT NAME KEY,FAB_ID VAL FROM FND_FAB WHERE  TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND IS_ENABLE=1 AND BASE_ID=:P151_BASE;'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P151_BASE'
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
 p_id=>wwv_flow_imp.id(2235120912594281717)
,p_name=>'P151_LINE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_prompt=>unistr('\4EA7\7EBF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>' SELECT DISTINCT MAP_AREA_Y_NAME KEY, MAP_AREA_Y_ID VAL  FROM FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT  AND BASE_DEPT_ID= :BASE_DEPT_ID AND BASE_ID = :P151_BASE AND FAB_ID =:P151_FAB '
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P151_BASE,P151_FAB'
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
 p_id=>wwv_flow_imp.id(2235121019309281718)
,p_name=>'P151_OP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_prompt=>unistr('\533A\57DF')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT MAP_AREA_X_NAME KEY, MAP_AREA_X_ID VAL  FROM FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND  BASE_DEPT_ID= :BASE_DEPT_ID AND BASE_ID = :P151_BASE AND FAB_ID =:P151_FAB AND MAP_AREA_Y_ID = :P151_LINE'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P151_BASE,P151_FAB,P151_LINE'
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
 p_id=>wwv_flow_imp.id(2235121092689281719)
,p_name=>'P151_WORKSTATION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2235120590971281714)
,p_prompt=>unistr('\5DE5\4F4D\FF08\53EF\591A\9009\FF09')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME KEY,WORK_STATION_ID VAL FROM FND_WORK_STATION WHERE TENANT_ID = :USERTENANT'
,p_lov_display_null=>'YES'
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
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2235121518945281723)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2235121381692281721)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2235121611902281724)
,p_event_id=>wwv_flow_imp.id(2235121518945281723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2235121730902281725)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P151_OP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2235121879849281726)
,p_event_id=>wwv_flow_imp.id(2235121730902281725)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P151_WORKSTATION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME,B.WORK_STATION_ID FROM FND_MAPS_WORK_STATION A',
'LEFT JOIN FND_WORK_STATION B ON A.WORK_STATION_ID = B.WORK_STATION_ID',
' WHERE A.TENANT_ID = :USERTENANT AND A.MAP_ID IN',
' ( SELECT MAP_ID  FROM FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_ID = :P151_BASE AND FAB_ID =:P151_FAB AND MAP_AREA_Y_ID = :P151_LINE AND MAP_AREA_X_ID = :P151_OP)'))
,p_attribute_07=>'P151_BASE,P151_FAB,P151_LINE,P151_OP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2235121925144281727)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2235121470030281722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2235122083076281728)
,p_event_id=>wwv_flow_imp.id(2235121925144281727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var stationJ = $("#P151_WORKSTATION_CONTAINER .apex-item-multi-item");',
'  ',
'  var baseid = $x(''P151_BASE'').value; ',
'  var fabid = $x(''P151_FAB'').value; ',
'  var lineid = $x(''P151_LINE'').value; ',
'  var opid = $x(''P151_OP'').value; ',
'   var stationlist = "";',
' var tmp ;',
'',
'for (var i=0;i<stationJ.length;i++){',
'     tmp = stationJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){stationlist = stationlist+tmp+'','';}',
'    ',
'}',
'stationlist=(stationlist.substring(stationlist.length-1)=='','')?stationlist.substring(0,stationlist.length-1):stationlist;',
'',
'console.log(baseid);',
'console.log(fabid);',
'console.log(lineid);',
'console.log(opid);',
'console.log(stationlist);',
'',
'apex.server.process( ''GetData'',',
'                    {x01: baseid,x02: fabid,x03: lineid,x04: opid,x05: stationlist},  // Parameter to be passed to the server',
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
 p_id=>wwv_flow_imp.id(2235122180086281729)
,p_event_id=>wwv_flow_imp.id(2235121925144281727)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2235122226702281730)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'     NCOUNT NUMBER(20);',
'     MAPID VARCHAR2(20);',
'     BASEID VARCHAR2(20);',
'     FABID VARCHAR2(20);',
'     LINEID VARCHAR2(20);',
'     OPID VARCHAR2(20);',
'     WORKSTATIONLIST VARCHAR2(2000);',
unistr('     V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'BASEID := apex_application.g_x01;',
'FABID := apex_application.g_x02;',
'LINEID := apex_application.g_x03;',
'OPID := apex_application.g_x04;',
'WORKSTATIONLIST := apex_application.g_x05;',
'',
'select COUNT(*) INTO NCOUNT  from FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_ID =BASEID AND FAB_ID =FABID AND MAP_AREA_Y_ID =LINEID AND MAP_AREA_X_ID = OPID;',
'if NCOUNT>0 THEN',
'select MAP_ID INTO MAPID  from FND_MAPS_AREAS_ASSO_V WHERE TENANT_ID = :USERTENANT AND BASE_ID =BASEID AND FAB_ID =FABID AND MAP_AREA_Y_ID =LINEID AND MAP_AREA_X_ID = OPID AND ROWNUM=1;',
'',
'IF(NVL(WORKSTATIONLIST,''N'')=''N'')THEN',
'  DELETE FND_MAPS_WORK_STATION WHERE MAP_ID = MAPID;',
'  COMMIT;',
'  RETURN;',
'END IF;',
'',
'FOR ITEM IN  (select * from table(send_split1(WORKSTATIONLIST,'',''))) LOOP',
'     SELECT COUNT(*) INTO NCOUNT FROM FND_MAPS_WORK_STATION WHERE MAP_ID = MAPID AND WORK_STATION_ID = ITEM.COLUMN_VALUE',
'            AND TENANT_ID = :USERTENANT;',
'         IF NCOUNT <=0 THEN',
'         INSERT INTO FND_MAPS_WORK_STATION(TENANT_ID,MAP_ID,WORK_STATION_ID,UPDATE_DATE,CREATION_DATE,CREATED_BY,UPDATED_BY)VALUES',
'         (:USERTENANT,MAPID,ITEM.COLUMN_VALUE,SYSDATE,SYSDATE,:APP_USER,:APP_USER);',
'         COMMIT;',
'         END IF;',
'    END LOOP;',
'    END IF;',
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
,p_internal_uid=>51797623948197776
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00216
begin
--   Manifest
--     PAGE: 00216
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
 p_id=>216
,p_name=>unistr('\6676\8C79\590D\76D8\6307\6D3E-\8868\5355')
,p_alias=>unistr('\6676\8C79\590D\76D8\6307\6D3E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6676\8C79\590D\76D8\6307\6D3E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'300'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2221293527160349603)
,p_plug_name=>unistr('\6307\6D3E\4EBA\5458')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244683630086594255)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_button_name=>unistr('\6307\6D3E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\6307\6D3E')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2244683731242594256)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2192398729200479473)
,p_name=>'P216_ROW_COUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2192398840999479474)
,p_name=>'P216_ERROR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2221293625258349604)
,p_name=>'P216_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_prompt=>unistr(' \6307\6D3E\4EBA\5458')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF V(''USERAUTH'') = 0 THEN',
'        RETURN q''~SELECT NAME||DECODE(JOB_NUMBER,NULL,'''','' - ''||JOB_NUMBER) USER_NAME,EXT_USER_ID',
'                      FROM MPF_SHARE_USER_V D',
'                     WHERE TENANT_ID = V(''USERTENANT'')',
'                         AND BASE_DEPT_ID = V(''BASE_DEPT_ID'')',
'                       AND EXISTS (SELECT 1 FROM MPF_USER_DEPT_MAIN_ASSO_V A',
'                                                   WHERE A.EXT_USER_ID = D.EXT_USER_ID',
'                                                     AND A.TENANT_ID = V(''USERTENANT'')',
'                                                     AND A.EXT_ORG_ID = :P216_DEPT_ID);~'';',
'    ELSE',
'        RETURN q''~SELECT NAME||DECODE(JOB_NUMBER,NULL,'''','' - ''||JOB_NUMBER) USER_NAME,EXT_USER_ID',
'                      FROM MPF_SHARE_USER_V D',
'                     WHERE TENANT_ID = V(''USERTENANT'')',
'                         AND BASE_DEPT_ID = V(''BASE_DEPT_ID'')',
'                       AND EXISTS (SELECT 1 FROM (SELECT EXT_USER_ID',
'                                                    FROM MPF_USER_DEPT_MAIN_ASSO_V A',
'                                                   WHERE TENANT_ID = V(''USERTENANT'')',
'                                                     AND EXISTS (SELECT 1 FROM MPF_USER_DEPT_MAIN_ASSO_V B',
'                                                                  WHERE B.JOB_LEVEL_CODE <= A.JOB_LEVEL_CODE',
'                                                                    AND B.EXT_ORG_ID = A.EXT_ORG_ID',
'                                                                    AND B.TENANT_ID = V(''USERTENANT'')',
'                                                                    AND B.EXT_USER_ID = V(''USER_ID''))) C WHERE C.EXT_USER_ID = D.EXT_USER_ID);~'';',
'    END IF;',
'END;'))
,p_lov_cascade_parent_items=>'P216_DEPT_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>50
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244684542216594264)
,p_name=>'P216_EVENT_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2244688059320594299)
,p_name=>'P216_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2221293527160349603)
,p_prompt=>unistr(' \90E8\95E8')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,EXT_ORG_ID FROM MPF_SHARE_DEPT_V WHERE TENANT_ID = V(''USERTENANT'') AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_cSize=>30
,p_display_when=>':USERAUTH = 0'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(2244683833487594257)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244683731242594256)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244683952864594258)
,p_event_id=>wwv_flow_imp.id(2244683833487594257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244684043649594259)
,p_name=>unistr('\6307\6D3E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2244683630086594255)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2192398684737479472)
,p_event_id=>wwv_flow_imp.id(2244684043649594259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT NUMBER := 0;',
'    V_STATR_TIME DATE;',
'    V_END_TIME DATE;',
'    V_FLAG NUMBER := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    FOR ITEM IN (SELECT COLUMN_VALUE FROM TABLE(SPLITSTR(:P216_EVENT_ID,'',''))) LOOP',
'        SELECT COUNT(1) INTO V_FLAG FROM TENANT_EVENT_REVIEW WHERE TENANT_ID = V(''USERTENANT'') AND EVENT_ID = ITEM.COLUMN_VALUE;',
'        IF V_FLAG = 0 THEN',
'            SELECT BEGIN_TIME,END_TIME INTO V_STATR_TIME,V_END_TIME FROM TENANT_EVENT WHERE TENANT_ID = V(''USERTENANT'') AND EVENT_ID = ITEM.COLUMN_VALUE;',
'            INSERT INTO TENANT_EVENT_REVIEW (EVENT_ID,CREATED_TIME,END_TIME,AUDIT_STATE,CREATED_BY,TENANT_ID,BASE_DEPT_ID)',
'            VALUES (ITEM.COLUMN_VALUE,V_STATR_TIME,V_END_TIME,''WAIT'',:P216_USER_ID,V(''USERTENANT''),:BASE_DEPT_ID);',
'        ELSE',
'            UPDATE TENANT_EVENT_REVIEW',
'               SET CREATED_BY = :P216_USER_ID,',
'                   UPDATED_BY = V(''USER_ID''),',
'                   UPDATE_DATE = SYSDATE',
'             WHERE TENANT_ID = V(''USERTENANT'') ',
'               AND BASE_DEPT_ID=:BASE_DEPT_ID',
'               AND AUDIT_STATE = ''WAIT''',
'               AND EVENT_ID = ITEM.COLUMN_VALUE;',
'        END IF;',
'        V_COUNT := V_COUNT + SQL%ROWCOUNT;',
'    END LOOP;',
'    APEX_UTIL.SET_SESSION_STATE(''P216_ROW_COUNT'',V_COUNT);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;            ',
'            V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            --\5199\5165\5F02\5E38\65E5\5FD7'),
'            JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'            APEX_UTIL.SET_SESSION_STATE(''P216_ERROR'',DBMS_UTILITY.FORMAT_ERROR_BACKTRACE || SQLERRM);',
'END;'))
,p_attribute_02=>'P216_EVENT_ID,P216_USER_ID'
,p_attribute_03=>'P216_ROW_COUNT,P216_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2192398997019479475)
,p_event_id=>wwv_flow_imp.id(2244684043649594259)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P216_ROW_COUNT'') == -1){',
unistr('    alert(''\6307\6D3E\5931\8D25\FF1A'' + $v(''P216_ERROR''));'),
'    return false;',
'}if($v(''P216_ROW_COUNT'') == 0){',
unistr('    alert(''\6307\6D3E\5931\8D25\FF0C\53EA\5141\8BB8\6307\6D3E\5F85\590D\76D8\72B6\6001\5DE5\5355'');'),
'    return false;',
'}else{',
unistr('    alert(''\6307\6D3E\6210\529F\FF01'');'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244684187909594260)
,p_event_id=>wwv_flow_imp.id(2244684043649594259)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2244688127570594300)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2244688220081594301)
,p_event_id=>wwv_flow_imp.id(2244688127570594300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.item(''P216_DEPT_ID'').setValue(''&USERDEPT.'')'
);
wwv_flow_imp.component_end;
end;
/

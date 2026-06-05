prompt --application/pages/page_00153
begin
--   Manifest
--     PAGE: 00153
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>153
,p_name=>unistr('\63A8\9001\4EBA\5458\540D\5355\8868\5355')
,p_alias=>unistr('\63A8\9001\4EBA\5458\540D\5355\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\63A8\9001\4EBA\5458\540D\5355\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2964022526636615593)
,p_plug_name=>unistr('\65B0\589E\7528\6237')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2964022711271615595)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2964023174213615599)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2964022711271615595)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2964022835766615596)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2964022711271615595)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'PREVIOUS'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2964022672034615594)
,p_name=>'P153_MPF_USER_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2964022526636615593)
,p_prompt=>unistr('\7528\6237')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME || ''-'' || JOB_NUMBER, USER_ID',
'FROM BASIC_USER',
'WHERE TENANT_ID = :USER_TENANT',
'  and DEL_FLAG = 0',
'and IS_LEAVE = 0;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(3268768598106926554)
,p_name=>'P153_ROW_COUNT'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3268769210338926560)
,p_name=>'P153_SKIP_COUNT'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2964022984406615597)
,p_name=>unistr('\6267\884C\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2964022835766615596)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2964023060321615598)
,p_event_id=>wwv_flow_imp.id(2964022984406615597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2964023239528615600)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2964023174213615599)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3268768301632926551)
,p_event_id=>wwv_flow_imp.id(2964023239528615600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P153_MPF_USER_IDS''))){',
unistr('    alert(''\65B0\589E\7528\6237\4E0D\53EF\4E3A\7A7A\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3268768563994926553)
,p_event_id=>wwv_flow_imp.id(2964023239528615600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>'1.0'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_ROW_COUNT NUMBER(10) := 0;',
'   V_ERR_MSG NVARCHAR2(2000);',
'   V_MPF_USER_ID VARCHAR2(100);',
'   V_USER_NAME VARCHAR2(32);',
'   V_JOB_NUMBER VARCHAR2(32);',
'   /**',
'    * CREATE BY: WXX',
'    * CREATE DATE:2025/7/7   11:47',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIBE:P153 \7528\6237\65B0\589E - \5C06\6307\5B9A\7528\6237ID\5217\8868\4E2D\7684\7528\6237\63D2\5165\5230STS_DATA_PUSH_USER\8868'),
'    */',
'BEGIN',
'   FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P153_MPF_USER_IDS, '',''))',
'   LOOP',
unistr('      BEGIN -- \5185\90E8\5757\7528\4E8E\5904\7406\6BCF\6761\8BB0\5F55\7684\5F02\5E38'),
unistr('         -- \67E5\8BE2\5BF9\5E94\7528\6237\6570\636E'),
'         SELECT USER_ID, NAME, JOB_NUMBER',
'         INTO V_MPF_USER_ID, V_USER_NAME, V_JOB_NUMBER',
'         FROM BASIC_USER',
'         WHERE DEL_FLAG = 0',
'           AND TENANT_ID = :USER_TENANT',
'           AND IS_LEAVE = 0',
'           AND USER_ID = ITEM.DATA_VAL;',
'',
unistr('         -- \63D2\5165\76EE\6807\8868'),
'         INSERT INTO STS_DATA_PUSH_USER(',
'            USER_NAME, JOB_NUMBER, MPF_USER_ID,',
'            IS_LEAVE, REMARK, TENANT_ID,',
'            CREATED_BY, CREATION_DATE, DEL_FLAG',
'         ) VALUES (',
'            V_USER_NAME, V_JOB_NUMBER, V_MPF_USER_ID,',
'            0, NULL, :USER_TENANT,',
'            :USER_ID, SYSDATE, 0',
'         );',
'',
unistr('         V_ROW_COUNT := V_ROW_COUNT + 1; -- \7D2F\52A0\8BA1\6570\800C\975E\8986\76D6'),
'',
'      EXCEPTION',
'         WHEN NO_DATA_FOUND THEN',
unistr('            -- \8BB0\5F55\7528\6237\4E0D\5B58\5728\7684\60C5\51B5'),
unistr('            JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237\4E0D\5B58\5728'', ''WARNING'','),
unistr('                         ''\7528\6237ID '' || ITEM.DATA_VAL || '' \4E0D\5B58\5728\6216\5DF2\79BB\804C'','),
'                         :USER_ID, :USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);',
'         WHEN OTHERS THEN',
unistr('            -- \8BB0\5F55\5177\4F53\8BB0\5F55\7684\9519\8BEF'),
unistr('            V_ERR_MSG := ''\5904\7406\7528\6237ID '' || ITEM.DATA_VAL || '' \65F6\51FA\9519: '' || SQLERRM ||'),
'                        CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\63A8\9001\7528\6237\7BA1\7406-\5355\6761\8BB0\5F55\5904\7406'', ''ERROR'','),
'                         V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                         :APP_NAME,:APP_ID,:APP_CODE);',
'      END;',
'   END LOOP;',
'',
'   APEX_UTIL.SET_SESSION_STATE(''P153_ROW_COUNT'', V_ROW_COUNT);',
'   COMMIT;',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      ROLLBACK;',
'      APEX_UTIL.SET_SESSION_STATE(''P153_ROW_COUNT'', 0);',
'      V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('      JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\63A8\9001\7528\6237\7BA1\7406-\65B0\589E'', ''ERROR'','),
'                  V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                  :APP_NAME,:APP_ID,:APP_CODE);',
'      RAISE;',
'END;'))
,p_attribute_02=>'P153_MPF_USER_IDS'
,p_attribute_03=>'P153_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9714800822038168504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3268769117053926559)
,p_event_id=>wwv_flow_imp.id(2964023239528615600)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F18\5316\903B\8F91 \52A0\5165\5B58\5728\6821\9A8C')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'   V_ROW_COUNT NUMBER(10) := 0;',
'   V_SKIP_COUNT NUMBER(10) := 0;',
'   V_ERR_MSG NVARCHAR2(2000);',
'   V_EXISTS_COUNT NUMBER(10);',
'   V_MPF_USER_ID VARCHAR2(100);',
'   V_USER_NAME VARCHAR2(32);',
'   V_JOB_NUMBER VARCHAR2(32);',
'   /**',
'    * CREATE BY: WXX',
'    * CREATE DATE:2025/7/7   11:47',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIBE:P153 \7528\6237\65B0\589E - \5C06\6307\5B9A\7528\6237ID\5217\8868\4E2D\7684\7528\6237\63D2\5165\5230STS_DATA_PUSH_USER\8868(\5B58\5728\5219\8DF3\8FC7)'),
'    */',
'BEGIN',
'   FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P153_MPF_USER_IDS, '',''))',
'   LOOP',
unistr('      BEGIN -- \5185\90E8\5757\7528\4E8E\5904\7406\6BCF\6761\8BB0\5F55\7684\5F02\5E38'),
unistr('         -- \9996\5148\68C0\67E5\662F\5426\5DF2\5B58\5728'),
'         SELECT COUNT(1)',
'         INTO V_EXISTS_COUNT',
'         FROM STS_DATA_PUSH_USER',
'         WHERE DEL_FLAG = 0',
'           AND IS_LEAVE = 0',
'           AND TENANT_ID = :USER_TENANT',
'           AND MPF_USER_ID = ITEM.DATA_VAL;',
'',
unistr('         IF V_EXISTS_COUNT = 0 THEN -- \4E0D\5B58\5728\FF0C\6267\884C\65B0\589E'),
unistr('            -- \67E5\8BE2\5BF9\5E94\7528\6237\6570\636E'),
'            BEGIN',
'               SELECT USER_ID, NAME, JOB_NUMBER',
'               INTO V_MPF_USER_ID, V_USER_NAME, V_JOB_NUMBER',
'               FROM BASIC_USER',
'               WHERE DEL_FLAG = 0',
'                 AND TENANT_ID = :USER_TENANT',
'                 AND IS_LEAVE = 0',
'                 AND USER_ID = ITEM.DATA_VAL;',
'',
unistr('               -- \63D2\5165\76EE\6807\8868'),
'               INSERT INTO STS_DATA_PUSH_USER(',
'                  USER_NAME, JOB_NUMBER, MPF_USER_ID,',
'                  IS_LEAVE, REMARK, TENANT_ID,',
'                  CREATED_BY, CREATION_DATE, DEL_FLAG',
'               ) VALUES (',
'                  V_USER_NAME, V_JOB_NUMBER, V_MPF_USER_ID,',
'                  0, NULL, :USER_TENANT,',
'                  :USER_ID, SYSDATE, 0',
'               );',
'',
'               V_ROW_COUNT := V_ROW_COUNT + 1;',
'            EXCEPTION',
'               WHEN NO_DATA_FOUND THEN',
unistr('                  V_ERR_MSG := ''\7528\6237ID '' || ITEM.DATA_VAL || '' \5728BASIC_USER\8868\4E2D\4E0D\5B58\5728'';'),
unistr('                  JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237\4E0D\5B58\5728'', ''WARNING'', '),
'                              V_ERR_MSG, :USER_ID, :USER_TENANT, ',
'                              :APP_NAME || '':'' || :APP_ID || '':'' || :APP_CODE);',
'            END;',
unistr('         ELSE -- \5DF2\5B58\5728\FF0C\8DF3\8FC7'),
unistr('            V_ERR_MSG := ''\7528\6237ID '' || ITEM.DATA_VAL || '' \5DF2\5B58\5728\4E8ESTS_DATA_PUSH_USER\8868\4E2D\FF0C\8DF3\8FC7\65B0\589E'';'),
unistr('            JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7528\6237\5DF2\5B58\5728'', ''INFO'', '),
'                        V_ERR_MSG, :USER_ID, :USER_TENANT, ',
'                        :APP_NAME || '':'' || :APP_ID || '':'' || :APP_CODE);',
'            V_SKIP_COUNT := V_SKIP_COUNT + 1;',
'         END IF;',
'      EXCEPTION',
'         WHEN OTHERS THEN',
unistr('            V_ERR_MSG := ''\5904\7406\7528\6237ID '' || ITEM.DATA_VAL || '' \65F6\51FA\9519: '' || SQLERRM || '),
'                        CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\63A8\9001\7528\6237\7BA1\7406-\5355\6761\8BB0\5F55\5904\7406'', ''ERROR'', '),
'                        V_ERR_MSG, :USER_ID, :USER_TENANT, ',
'                        :APP_NAME || '':'' || :APP_ID || '':'' || :APP_CODE);',
'      END;',
'   END LOOP;',
'',
unistr('   -- \8BBE\7F6E\6210\529F\8BA1\6570\548C\8DF3\8FC7\8BA1\6570'),
'   APEX_UTIL.SET_SESSION_STATE(''P153_ROW_COUNT'', V_ROW_COUNT);',
'   APEX_UTIL.SET_SESSION_STATE(''P153_SKIP_COUNT'', V_SKIP_COUNT);',
'   COMMIT;',
'EXCEPTION',
'   WHEN OTHERS THEN',
'      ROLLBACK;',
'      APEX_UTIL.SET_SESSION_STATE(''P153_ROW_COUNT'', 0);',
'      APEX_UTIL.SET_SESSION_STATE(''P153_SKIP_COUNT'', 0);',
'      V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('      JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\63A8\9001\7528\6237\7BA1\7406-\65B0\589E'', ''ERROR'','),
'                  V_ERR_MSG, :USER_ID, :USER_TENANT,',
'                  :APP_NAME || '':'' || :APP_ID || '':'' || :APP_CODE);',
'      RAISE;',
'END;'))
,p_attribute_02=>'P153_MPF_USER_IDS'
,p_attribute_03=>'P153_ROW_COUNT,P153_SKIP_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3268768728905926555)
,p_event_id=>wwv_flow_imp.id(2964023239528615600)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\65B0\589E\6210\529F\6570\91CF\548C\8DF3\8FC7\6570\91CF'),
'var addedCount = $v(''P153_ROW_COUNT'');',
'var skippedCount = $v(''P153_SKIP_COUNT'');',
'',
'if (addedCount > 0 && skippedCount > 0) {',
unistr('    // \90E8\5206\6210\529F\FF08\6709\65B0\589E\4E5F\6709\8DF3\8FC7\FF09'),
unistr('    alert(''\6210\529F\6DFB\52A0 '' + addedCount + '' \4E2A\7528\6237\FF0C\8DF3\8FC7 '' + skippedCount + '' \4E2A\5DF2\5B58\5728\7684\7528\6237'');'),
'    return true;',
'} else if (addedCount > 0) {',
unistr('    // \5168\90E8\65B0\589E\6210\529F'),
unistr('    alert(''\6210\529F\6DFB\52A0 '' + addedCount + '' \4E2A\7528\6237'');'),
'    return true;',
'} else if (skippedCount > 0) {',
unistr('    // \5168\90E8\8DF3\8FC7\FF08\6CA1\6709\65B0\589E\FF0C\53EA\6709\8DF3\8FC7\FF09'),
unistr('    alert(''\6240\6709\7528\6237\5DF2\5B58\5728\FF0C\5171\8DF3\8FC7 '' + skippedCount + '' \4E2A\7528\6237'');'),
'    return false;',
'} else {',
unistr('    // \5B8C\5168\5931\8D25\FF08\65E2\6CA1\6709\65B0\589E\4E5F\6CA1\6709\8DF3\8FC7\FF09'),
unistr('    alert(''\6DFB\52A0\5931\8D25\FF0C\8BF7\68C0\67E5\7528\6237\6570\636E'');'),
'    return false;',
'}',
'',
'// if($v(''P153_ROW_COUNT'')>0){',
unistr('//     alert(''\6DFB\52A0\6210\529F'');'),
'//     return true;',
'// }else{',
unistr('//     alert(''\6DFB\52A0\5931\8D25'');'),
'//     return false;',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3268769049592926558)
,p_event_id=>wwv_flow_imp.id(2964023239528615600)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

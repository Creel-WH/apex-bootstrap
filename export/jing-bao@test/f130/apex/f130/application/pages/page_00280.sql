prompt --application/pages/page_00280
begin
--   Manifest
--     PAGE: 00280
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
 p_id=>280
,p_name=>unistr('\4EBA\5458\914D\7F6E-\65B0\589E')
,p_alias=>unistr('\4EBA\5458\914D\7F6E-\65B0\589E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4EBA\5458\914D\7F6E-\65B0\589E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'650'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(800552386755386500)
,p_plug_name=>unistr('\65B0\589E')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(560077803672320331)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(560078172289320331)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(800553816646386499)
,p_name=>'P280_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\4EBA\5458\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select JOB_NUMBER||''-''||NAME,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=:USERTENANT and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(800554034269386501)
,p_name=>'P280_FAB_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\5382\533A\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT F.NAME, D.FAB_ID',
'FROM CODE_DEVICE D',
'         LEFT JOIN FND_FAB F ON D.FAB_ID = F.FAB_ID',
'WHERE D.TENANT_ID = :USERTENANT',
'  AND D.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND D.DEL_FLAG = 0;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(800554121663386502)
,p_name=>'P280_EXT_ORG_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\90E8\95E8\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  SELECT DISTINCT V.NAME, D.EXT_ORG_ID',
'FROM CHECK_OBJECT D',
'         LEFT JOIN MPF_SHARE_DEPT_V V ON D.EXT_ORG_ID = V.EXT_ORG_ID',
'WHERE D.TENANT_ID = :USERTENANT',
' and D.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND D.DEL_FLAG = 0',
'  AND V.DEL_FLAG=0;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(800554214664386503)
,p_name=>'P280_FORM_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\8868\5355\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT CF.NAME, F.FORM_ID',
'FROM CHECK_OBJECT O',
'         LEFT JOIN CHECK_OBJECT_FORM_ASSO F ON O.OBJECT_ID = F.OBJECT_ID',
'         LEFT JOIN CHECK_FORM CF ON F.FORM_ID = CF.FORM_ID',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND O.DEL_FLAG = 0',
'  AND O.EXT_ORG_ID = :P280_EXT_ORG_ID;'))
,p_lov_cascade_parent_items=>'P280_EXT_ORG_ID'
,p_ajax_items_to_submit=>'P280_EXT_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(800554295792386504)
,p_name=>'P280_MAP_AREA_X_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\5DE5\6BB5\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  DISTINCT  A.NAME , D.AREA_ID',
'FROM CHECK_OBJECT O',
'         JOIN CHECK_OBJECT_DEVICE_ASSO OA ON O.OBJECT_ID = OA.OBJECT_ID',
'         JOIN CODE_DEVICE D ON OA.DEVICE_ID = D.DEVICE_ID',
'         JOIN FND_AREAS A ON D.AREA_ID = A.AREA_ID AND A.TYPE = 1',
'         join FND_FAB C ON C.FAB_ID=A.FAB_ID',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND O.DEL_FLAG = 0',
'  AND O.EXT_ORG_ID = :P280_EXT_ORG_ID',
'  and A.FAB_ID=:P280_FAB_ID;'))
,p_lov_cascade_parent_items=>'P280_EXT_ORG_ID,P280_FAB_ID'
,p_ajax_items_to_submit=>'P280_EXT_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(800554436107386505)
,p_name=>'P280_MAP_AREA_Y_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\7EBF\522B\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT A2.NAME, D.LINE_ID',
'FROM CHECK_OBJECT O',
'         JOIN CHECK_OBJECT_DEVICE_ASSO OA ON O.OBJECT_ID = OA.OBJECT_ID',
'         JOIN CODE_DEVICE D ON OA.DEVICE_ID = D.DEVICE_ID',
'         JOIN FND_AREAS A1 ON D.AREA_ID = A1.AREA_ID and A1.TYPE=1',
'         LEFT JOIN fnd_areas A2 ON D.LINE_ID = A2.AREA_ID and A2.TYPE=2',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND O.DEL_FLAG = 0',
'  AND O.EXT_ORG_ID = :P280_EXT_ORG_ID',
'  AND D.AREA_ID IN (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P280_MAP_AREA_X_ID, '':''));',
''))
,p_lov_cascade_parent_items=>'P280_EXT_ORG_ID,P280_MAP_AREA_X_ID'
,p_ajax_items_to_submit=>'P280_EXT_ORG_ID,P280_MAP_AREA_X_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge:margin-bottom-md'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(800554515860386506)
,p_name=>'P280_RULE_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(800552386755386500)
,p_prompt=>unistr('\63A8\9001\89C4\5219\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select RULE_NAME,RULE_ID from CHECK_PUSH_RULE where TENANT_ID=:USERTENANT and DEL_FLAG=0  AND BASE_DEPT_ID =:BASE_DEPT_ID'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(801768172694090359)
,p_name=>'P280_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(560081195998320326)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(560077803672320331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560081675993320325)
,p_event_id=>wwv_flow_imp.id(560081195998320326)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(560082111037320325)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(560078172289320331)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560082548063320325)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P280_USER_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\4EBA\5458'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P280_FAB_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\5382\533A'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P280_EXT_ORG_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P280_MAP_AREA_X_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\5DE5\6BB5'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P280_FORM_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\8868\5355'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P280_RULE_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\63A8\9001\89C4\5219'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560083080199320324)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_COUNT   NUMBER(10) := 0;',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'        * create by:',
'        * create date:',
'        * modify by:wxx',
'        * modify date:2024/9/26 15:19',
unistr('        * describe: P280 \63A8\9001\914D\7F6E-\4EBA\5458\914D\7F6E  \89E3\51B3\91CD\590D\63A8\9001\95EE\9898'),
'        */',
'BEGIN',
unistr('	--\67E5\8BE2\8BE5\90E8\95E8\4E0B\7684\63A8\9001\4EBA\5458\662F\5426\5B58\5728\91CD\590D'),
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM CHECK_PUSH_USER_CONFIG',
'    WHERE EXT_ORG_ID = :P280_EXT_ORG_ID',
'      AND EXT_USER_ID IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P280_USER_ID, '':''))',
'	  AND IS_ENABLE = 1',
'	  AND DEL_FLAG = 0',
unistr('	and TENANT_ID = :USERTENANT  --\65B0\52A0\7684\6761\4EF6'),
'	and BASE_DEPT_ID = :BASE_DEPT_ID',
'	;',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P280_COUNT'', V_COUNT);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P280_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P280_EXT_ORG_ID,P280_USER_ID'
,p_attribute_03=>'P280_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560083559686320324)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P280_COUNT'') > 0) {',
unistr('	alert(''\63A8\9001\4EBA\5458\5B58\5728\91CD\590D\FF0C\8BF7\91CD\65B0\9009\62E9\FF01'');'),
'	return false;',
'} else if ($v(''P280_COUNT'') < 0) {',
unistr('	alert(''\4EBA\5458\5F02\5E38'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560084103587320324)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_CONFIG_ID NUMBER(10);',
'    V_ERR_MSG   NVARCHAR2(2000);',
'BEGIN',
unistr('	--\5FAA\73AF\6DFB\52A0\63A8\9001\4EBA\5458'),
'    FOR ITEM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P280_USER_ID, '':''))',
'        LOOP',
unistr('			--\65B0\589E\63A8\9001\4EBA\5458\914D\7F6E\8868\6570\636E\FF0C\5E76\83B7\53D6\4E3B\952Eid'),
'            INSERT INTO CHECK_PUSH_USER_CONFIG(EXT_USER_ID,',
'                                               FAB_ID,',
'                                               EXT_ORG_ID,',
'                                               MAP_AREA_X_ID,',
'                                               MAP_AREA_Y_ID,',
'                                               TENANT_ID,',
'                                               CREATED_BY,',
'                                               CREATION_DATE,',
'                                               BASE_DEPT_ID)',
'            VALUES (ITEM.DATA_VAL, :P280_FAB_ID, :P280_EXT_ORG_ID, :P280_MAP_AREA_X_ID, :P280_MAP_AREA_Y_ID,',
'                    :USERTENANT, :USER_ID, SYSDATE,:BASE_DEPT_ID)',
'            RETURNING CONFIG_ID INTO V_CONFIG_ID;',
unistr('			--\5FAA\73AF\6DFB\52A0\8868\5355'),
'            FOR ITEM_FORM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P280_FORM_ID, '':''))',
'                LOOP',
unistr('					--\6DFB\52A0\89C4\5219\4E0E\8868\5355\4E2D\95F4\8868'),
'                    INSERT INTO CHECK_RULE_FORM_ASSO(CONFIG_ID,',
'                                                     FORM_ID,',
'                                                     TENANT_ID,',
'                                                     CREATED_BY,',
'                                                     CREATION_DATE,BASE_DEPT_ID)',
'                    VALUES (V_CONFIG_ID, ITEM_FORM.DATA_VAL, :USERTENANT, :USER_ID, SYSDATE,:BASE_DEPT_ID);',
'                END LOOP;',
unistr('			--\5FAA\73AF\6DFB\52A0\89C4\5219'),
'            FOR ITEM_RULE IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P280_RULE_ID, '':''))',
'                LOOP',
unistr('					--\6DFB\52A0\89C4\5219\4E0E\4EBA\5458\914D\7F6E\4E2D\95F4\8868'),
'                    INSERT INTO CHECK_RULE_USER_ASSO(CONFIG_ID,',
'                                                     RULE_ID,',
'                                                     TENANT_ID,',
'                                                     CREATED_BY,',
'                                                     CREATION_DATE,BASE_DEPT_ID)',
'                    VALUES (V_CONFIG_ID, ITEM_RULE.DATA_VAL, :USERTENANT, :USER_ID, SYSDATE,:BASE_DEPT_ID);',
'                END LOOP;',
'        END LOOP;',
'        APEX_UTIL.SET_SESSION_STATE(''P280_COUNT'', 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P280_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P280_RULE_ID,P280_FORM_ID,P280_MAP_AREA_Y_ID,P280_MAP_AREA_X_ID,P280_EXT_ORG_ID,P280_FAB_ID,P280_USER_ID'
,p_attribute_03=>'P280_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560084612887320324)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P280_COUNT'')>0){',
unistr('	alert(''\6DFB\52A0\6210\529F'');'),
'	return true;',
'}else{',
unistr('	alert(''\6DFB\52A0\5931\8D25'');'),
'	return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(560085039476320323)
,p_event_id=>wwv_flow_imp.id(560082111037320325)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

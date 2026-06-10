prompt --application/pages/page_00282
begin
--   Manifest
--     PAGE: 00282
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
 p_id=>282
,p_name=>unistr('\4EBA\5458\914D\7F6E-\4FEE\6539')
,p_alias=>unistr('\4EBA\5458\914D\7F6E-\4FEE\6539')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4EBA\5458\914D\7F6E-\4FEE\6539')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(902338799078821136)
,p_plug_name=>unistr('\4FEE\6539')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575450135140596675)
,p_button_sequence=>90
,p_button_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(575450571051596674)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(817140502777366728)
,p_name=>'P282_FORM_ID_1'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'select listagg(FORM_ID,'':'') from CHECK_RULE_FORM_ASSO where CONFIG_ID =:P282_CONFIG_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(817140610721366729)
,p_name=>'P282_RULE_ID_1'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'select listagg(RULE_ID,'':'') from CHECK_RULE_USER_ASSO where CONFIG_ID =:P282_CONFIG_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(817143039764366723)
,p_name=>'P282_CONFIG_ID'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(902341652277821147)
,p_name=>'P282_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(902341869900821149)
,p_name=>'P282_FAB_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'SELECT FAB_ID FROM CHECK_PUSH_USER_CONFIG WHERE CONFIG_ID =:P282_CONFIG_ID AND TENANT_ID=:USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
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
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(902341957294821150)
,p_name=>'P282_EXT_ORG_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'SELECT EXT_ORG_ID FROM CHECK_PUSH_USER_CONFIG WHERE CONFIG_ID =:P282_CONFIG_ID AND TENANT_ID=:USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
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
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(902342050295821151)
,p_name=>'P282_FORM_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'select listagg(FORM_ID,'':'') from CHECK_RULE_FORM_ASSO where CONFIG_ID =:P282_CONFIG_ID;'
,p_item_default_type=>'SQL_QUERY'
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
'  AND O.EXT_ORG_ID = :P282_EXT_ORG_ID;'))
,p_lov_cascade_parent_items=>'P282_EXT_ORG_ID'
,p_ajax_items_to_submit=>'P282_EXT_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
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
 p_id=>wwv_flow_imp.id(902342131423821152)
,p_name=>'P282_MAP_AREA_X_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'SELECT MAP_AREA_X_ID FROM CHECK_PUSH_USER_CONFIG WHERE CONFIG_ID =:P282_CONFIG_ID AND TENANT_ID=:USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\5DE5\6BB5\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DISTINCT a.NAME, D.AREA_ID',
'FROM CHECK_OBJECT O',
'         JOIN CHECK_OBJECT_DEVICE_ASSO OA ON O.OBJECT_ID = OA.OBJECT_ID',
'         JOIN CODE_DEVICE D ON OA.DEVICE_ID = D.DEVICE_ID',
'         JOIN FND_AREAS A ON D.AREA_ID = A.AREA_ID AND A.TYPE = 1',
'         join FND_FAB C ON C.FAB_ID=A.FAB_ID',
'WHERE O.TENANT_ID = :USERTENANT',
'  AND O.BASE_DEPT_ID =:BASE_DEPT_ID',
'  AND O.DEL_FLAG = 0',
'  AND O.EXT_ORG_ID = :P282_EXT_ORG_ID',
'  and A.FAB_ID=:P282_FAB_ID;',
''))
,p_lov_cascade_parent_items=>'P282_EXT_ORG_ID,P282_FAB_ID'
,p_ajax_items_to_submit=>'P282_EXT_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
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
 p_id=>wwv_flow_imp.id(902342271738821153)
,p_name=>'P282_MAP_AREA_Y_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'SELECT MAP_AREA_Y_ID FROM CHECK_PUSH_USER_CONFIG WHERE CONFIG_ID =:P282_CONFIG_ID AND TENANT_ID=:USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
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
'  AND O.EXT_ORG_ID = :P282_EXT_ORG_ID',
'  AND D.AREA_ID IN (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P282_MAP_AREA_X_ID, '':''));',
'',
''))
,p_lov_cascade_parent_items=>'P282_EXT_ORG_ID,P282_MAP_AREA_X_ID'
,p_ajax_items_to_submit=>'P282_EXT_ORG_ID,P282_MAP_AREA_X_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(902342351491821154)
,p_name=>'P282_RULE_ID'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(902338799078821136)
,p_item_default=>'select listagg(RULE_ID,'':'') from CHECK_RULE_USER_ASSO where CONFIG_ID =:P282_CONFIG_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\63A8\9001\89C4\5219\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select RULE_NAME,RULE_ID from CHECK_PUSH_RULE where TENANT_ID=:USERTENANT and DEL_FLAG=0  AND BASE_DEPT_ID =:BASE_DEPT_ID'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
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
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(903558808483525024)
,p_name=>'P282_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575454439236596671)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575450135140596675)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575454976683596671)
,p_event_id=>wwv_flow_imp.id(575454439236596671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575455387082596671)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(575450571051596674)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575455850187596670)
,p_event_id=>wwv_flow_imp.id(575455387082596671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P282_FAB_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\5382\533A'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P282_EXT_ORG_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P282_MAP_AREA_X_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\5DE5\6BB5'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P282_FORM_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\8868\5355'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P282_RULE_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\63A8\9001\89C4\5219'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575456316000596670)
,p_event_id=>wwv_flow_imp.id(575455387082596671)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG   NVARCHAR2(2000);',
'BEGIN',
unistr('	--\4FEE\6539\63A8\9001\4EBA\5458\914D\7F6E\8868'),
'    UPDATE CHECK_PUSH_USER_CONFIG',
'    SET FAB_ID        = :P282_FAB_ID,',
'        EXT_ORG_ID    = :P282_EXT_ORG_ID,',
'        MAP_AREA_X_ID = :P282_MAP_AREA_X_ID,',
'        MAP_AREA_Y_ID = :P282_MAP_AREA_Y_ID,',
'        UPDATED_BY    =:USER_ID,',
'        UPDATED_DATE  =SYSDATE',
'    WHERE CONFIG_ID = :P282_CONFIG_ID;',
unistr('	--\5224\65AD\4FEE\6539\540E\7684\8868\5355ID\8DDF\4FEE\6539\524D\7684\8868\5355ID\662F\5426\4E00\81F4\FF0C\6216\8005\662F\4FEE\6539\524D\7684\8868\5355ID\4E3A\7A7A'),
'    IF :P282_FORM_ID <> :P282_FORM_ID_1 OR :P282_FORM_ID_1 is null THEN',
unistr('		--\5220\9664\539F\672C\7684\89C4\5219\4E0E\8868\5355\4E2D\95F4\8868\7684\6570\636E'),
'        DELETE CHECK_RULE_FORM_ASSO WHERE CONFIG_ID = :P282_CONFIG_ID;',
unistr('		--\91CD\65B0\6DFB\52A0\8868\5355\6570\636E'),
'        FOR ITEM_FORM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P282_FORM_ID, '':''))',
'            LOOP',
'                INSERT INTO CHECK_RULE_FORM_ASSO(CONFIG_ID,',
'                                                 FORM_ID,',
'                                                 TENANT_ID,',
'                                                 CREATED_BY,',
'                                                 CREATION_DATE,BASE_DEPT_ID)',
'                VALUES (:P282_CONFIG_ID, ITEM_FORM.DATA_VAL, :USERTENANT, :USER_ID, SYSDATE,:BASE_DEPT_ID);',
'            END LOOP;',
'',
'    END IF;',
'',
unistr('	--\5224\65AD\4FEE\6539\540E\7684\89C4\5219ID\8DDF\4FEE\6539\524D\7684\89C4\5219ID\662F\5426\4E00\81F4\FF0C\6216\8005\662F\4FEE\6539\524D\7684\89C4\5219ID\4E3A\7A7A'),
'    IF :P282_RULE_ID <> :P282_RULE_ID_1 OR :P282_RULE_ID_1 is null THEN',
unistr('		--\5220\9664\539F\672C\7684\89C4\5219\4E0E\4EBA\5458\914D\7F6E\4E2D\95F4\8868\7684\6570\636E'),
'        DELETE CHECK_RULE_USER_ASSO WHERE CONFIG_ID = :P282_CONFIG_ID;',
unistr('		--\91CD\65B0\6DFB\52A0\89C4\5219\6570\636E'),
'        FOR ITEM_FORM IN (SELECT DATA_VAL FROM JA_UTILS_PKG.SPLIT_STR(:P282_RULE_ID, '':''))',
'            LOOP',
'                INSERT INTO CHECK_RULE_USER_ASSO(CONFIG_ID,',
'                                                 RULE_ID,',
'                                                 TENANT_ID,',
'                                                 CREATED_BY,',
'                                                 CREATION_DATE,BASE_DEPT_ID)',
'                VALUES (:P282_CONFIG_ID, ITEM_FORM.DATA_VAL, :USERTENANT, :USER_ID, SYSDATE,:BASE_DEPT_ID);',
'            END LOOP;',
'',
'    END IF;',
'    APEX_UTIL.SET_SESSION_STATE(''P282_COUNT'', 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_UTIL.SET_SESSION_STATE(''P282_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P282_RULE_ID,P282_FORM_ID,P282_MAP_AREA_Y_ID,P282_MAP_AREA_X_ID,P282_EXT_ORG_ID,P282_FAB_ID,P282_USER_ID,P282_FORM_ID_1,P282_RULE_ID_1'
,p_attribute_03=>'P282_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575456840997596670)
,p_event_id=>wwv_flow_imp.id(575455387082596671)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P282_COUNT'')>0){',
unistr('	alert(''\4FEE\6539\6210\529F'');'),
'	return true;',
'}else{',
unistr('	alert(''\4FEE\6539\5931\8D25'');'),
'	return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575457338456596669)
,p_event_id=>wwv_flow_imp.id(575455387082596671)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(575457781774596669)
,p_name=>unistr('\6E05\7A7A\9879')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P282_EXT_ORG_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(575458246193596669)
,p_event_id=>wwv_flow_imp.id(575457781774596669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P282_MAP_AREA_X_ID,P282_MAP_AREA_Y_ID,P282_FORM_ID'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

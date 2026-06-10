prompt --application/pages/page_00283
begin
--   Manifest
--     PAGE: 00283
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
 p_id=>283
,p_name=>unistr('\5173\8054\8BBE\5907\5BA1\6838-\7F16\8F91')
,p_alias=>unistr('\5173\8054\8BBE\5907\5BA1\6838-\7F16\8F91')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5173\8054\8BBE\5907\5BA1\6838-\7F16\8F91')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(891697862864037169)
,p_plug_name=>unistr('\5173\8054\8BBE\5907\5BA1\6838-\7F16\8F91')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select OBJECT_REVIEW_ID,',
unistr('       REVIEW_GROUP,  --\81EA\5B9A\4E49 \5206\7EC4'),
unistr('       REVIEW_USERS,  --\5BA1\6838\4EBA'),
unistr('       AUDIT_METHOD --\5BA1\6838\65B9\5F0F'),
'from CHECK_OBJECT_REVIEW',
'where TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'and DEL_FLAG = 0',
'and REVIEW_TYPE =  2',
'and OBJECT_ID = :P283_OBJECT_ID',
';'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P283_OBJECT_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(891705299586037176)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330908303567485743)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216082878037774514)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(891705299586037176)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(216083297518774514)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(891705299586037176)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(341493837124822367)
,p_name=>'P283_GROUP_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(713916413644768688)
,p_name=>'P283_REVIEW_GROUP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_item_source_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_prompt=>unistr('\5206\7EC4')
,p_source=>'REVIEW_GROUP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>512
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(713916569043768689)
,p_name=>'P283_REVIEW_USERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_item_source_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_prompt=>unistr('\5BA1\6838\4EBA\5458')
,p_source=>'REVIEW_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JOB_NUMBER || ''-'' || NAME AS NAMES,SYNC_USER_ID from MPF_SHARE_USER_V',
'where IS_LEAVE = 0',
'and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'and SYNC_USER_ID is not null ;'))
,p_cSize=>30
,p_cMaxlength=>1000
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(713916626824768690)
,p_name=>'P283_AUDIT_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_item_source_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_prompt=>unistr('\5BA1\6838\65B9\5F0F')
,p_source=>'AUDIT_METHOD'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\4F1A\7B7E;CounterSign,\6216\7B7E;OrSign')
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(713916846787768692)
,p_name=>'P283_OBJECT_REVIEW_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_item_source_plug_id=>wwv_flow_imp.id(891697862864037169)
,p_source=>'OBJECT_REVIEW_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(713921520395768700)
,p_name=>'P283_OBJECT_ID'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(881592471954908289)
,p_name=>'P283_ROW_COUNT'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216086042162774519)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216082878037774514)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216086597209774519)
,p_event_id=>wwv_flow_imp.id(216086042162774519)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216086982654774519)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216083297518774514)
,p_condition_element=>'P283_OBJECT_REVIEW_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216090440639774521)
,p_event_id=>wwv_flow_imp.id(216086982654774519)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P283_REVIEW_GROUP''))) {',
unistr('    alert("\8BF7\8F93\5165\5206\7EC4\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P283_REVIEW_USERS''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\4EBA\5458\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P283_AUDIT_METHOD''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\65B9\5F0F\FF01");'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216087515100774520)
,p_event_id=>wwv_flow_imp.id(216086982654774519)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\4E86\5206\7EC4\53CA\5BA1\6838\4EBA')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    V_ROW_COUNT        NUMBER(10);',
'    V_ERR_MSG          NVARCHAR2(2000);',
unistr('    V_COUNT_GROUP      NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\5206\7EC4'),
unistr('    V_COUNT_REVIEW     NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\5BA1\6838\4EBA\5458'),
'    V_ROW_COUNT_REVIEW NUMBER(10);',
'          /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2025/1/3  16:19',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:P283 \5BA1\6838\65B0\589E2.0'),
'     */',
'',
'BEGIN',
unistr('    -- \6821\9A8C\540C\4E00\5BF9\8C61\662F\5426\6709\91CD\590D\5206\7EC4\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
'    SELECT COUNT(OBJECT_REVIEW_ID)',
'    INTO V_COUNT_GROUP',
'    FROM CHECK_OBJECT_REVIEW',
'    WHERE REVIEW_GROUP = TRIM(:P283_REVIEW_GROUP)',
'      AND OBJECT_ID = :P283_OBJECT_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
unistr('    -- \6821\9A8C\540C\4E00\5BF9\8C61\662F\5426\6709\91CD\590D\5BA1\6838\4EBA\5458\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
unistr('    WITH SPLIT_REVIEW_USERS AS (   --\5F55\5165\6570\636E'),
unistr('-- SELECT DATA_VAL AS REVIEW_USER  FROM JA_UTILS_PKG.SPLIT_STR(:P262_OBJECT_REVIEW_ID, '','')  --\4F1A\6F0F\7B97'),
'    SELECT REGEXP_SUBSTR(:P283_REVIEW_USERS, ''[^:]+'', 1, LEVEL) AS REVIEW_USER',
'    FROM DUAL',
'    CONNECT BY REGEXP_SUBSTR(:P283_REVIEW_USERS, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'    ),',
unistr('    OBJECT_REVIEW_USERS AS (  --\5BA1\6838\8868\4E2D\5B58\50A8\9AD8\7EA7\5BA1\6838-\5BA1\6838\4EBA\FF08\540C\4E00\5BF9\8C61\FF09'),
'        SELECT REVIEW_USERS AS OBJECT_REVIEW',
'        FROM CHECK_OBJECT_REVIEW',
'        WHERE OBJECT_ID = :P283_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2',
unistr('        -- and OBJECT_REVIEW_ID <> :P283_OBJECT_REVIEW_ID  --\52A0\4E0A\540E\4F1A\91CD\590D'),
'    ),',
'    DUPLICATES AS (',
'        SELECT REVIEW_USER, COUNT(1) AS DUP_COUNT',
'        FROM OBJECT_REVIEW_USERS',
unistr('        CROSS JOIN SPLIT_REVIEW_USERS    --\4E24\4E2A\5B50\67E5\8BE2\7684\7ED3\679C\8FDB\884C\7B1B\5361\5C14\79EF'),
unistr('        WHERE INSTR(OBJECT_REVIEW, REVIEW_USER) > 0   --\7B5B\9009\51FA\90A3\4E9B\5728OBJECT_REVIEW\4E2D\5305\542BREVIEW_USER\7684\8BB0\5F55'),
'        GROUP BY REVIEW_USER',
unistr('        HAVING COUNT(1) > 0  --\7B5B\9009\51FA\51FA\73B0\6B21\6570\5927\4E8E0\7684\5BA1\6838\4EBA\5458'),
'    )',
'    SELECT SUM(DUP_COUNT) AS TOTAL_DUPLICATES',
'    INTO V_COUNT_REVIEW',
'    FROM DUPLICATES;',
'',
unistr('    IF V_COUNT_GROUP > 0 THEN --\6709\91CD\590D\5206\7EC4'),
'        APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', -2);',
'    ELSE',
unistr('        IF V_COUNT_REVIEW > 0 THEN --\6709\91CD\590D\5BA1\6838\4EBA'),
'            APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', -3);',
'        ELSE',
unistr('            -- \65B0\589E\5230\5BA1\6838\8868\4E2D'),
'            INSERT INTO CHECK_OBJECT_REVIEW(REVIEW_TYPE,REVIEW_GROUP, REVIEW_USERS, AUDIT_METHOD, OBJECT_ID,TENANT_ID, DEL_FLAG, CREATED_BY,',
'                                            CREATION_DATE,BASE_DEPT_ID, IS_SAVE)',
'            VALUES (2,TRIM(:P283_REVIEW_GROUP), :P283_REVIEW_USERS, :P283_AUDIT_METHOD,:P283_OBJECT_ID , :USERTENANT, 0, :USER_ID, SYSDATE,',
'                    :BASE_DEPT_ID, 0);',
'',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'            APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', V_ROW_COUNT);',
'        END IF;',
'    END IF;',
'',
unistr('    WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\65B0\589E-\6253\5370\5BA1\6838\4FE1\606F\FF1A'', ''info'', V_ERR_MSG || ''\5BA1\6838\4EBA\91CD\590D\6570V_COUNT_REVIEW:'' || V_COUNT_REVIEW || CHR(10) || ''REVIEW_GROUP:'' || :P283_REVIEW_GROUP || '',REVIEW_USERS:'' || :P283_REVIEW_USERS'),
'||  '',AUDIT_METHOD:'' || :P283_AUDIT_METHOD || '',P283_ROW_COUNT: '' || :P283_ROW_COUNT|| chr(13) || '',P283_OBJECT_ID: '' || :P283_OBJECT_ID, :USER_ID, :USERTENANT,',
':APP_NAME , :APP_ID, :APP_CODE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5BA1\6838-\65B0\589E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                     :APP_NAME, :APP_ID, :APP_CODE);',
'END;'))
,p_attribute_02=>'P283_OBJECT_ID,P283_REVIEW_GROUP,P283_REVIEW_USERS,P283_AUDIT_METHOD'
,p_attribute_03=>'P283_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216091028650774522)
,p_event_id=>wwv_flow_imp.id(216086982654774519)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P283_ROW_COUNT'')>0){',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'}else if ($v(''P283_ROW_COUNT'')== 0){',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}else if ($v(''P283_ROW_COUNT'')== -2){',
unistr('    alert(''\5DF2\6709\91CD\590D\5206\7EC4\FF0C\8BF7\91CD\65B0\8F93\5165\FF01'');'),
'    return false;',
'}else if ($v(''P283_ROW_COUNT'')== -3){',
unistr('    alert(''\540C\4E00\5BF9\8C61\5DF2\6709\91CD\590D\5BA1\6838\4EBA\5458\FF0C\8BF7\91CD\65B0\9009\62E9\FF01'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216091467169774522)
,p_event_id=>wwv_flow_imp.id(216086982654774519)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216092390145774522)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(216083297518774514)
,p_condition_element=>'P283_OBJECT_REVIEW_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216093418382774523)
,p_event_id=>wwv_flow_imp.id(216092390145774522)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P283_REVIEW_GROUP''))) {',
unistr('    alert("\8BF7\8F93\5165\5206\7EC4\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P283_REVIEW_USERS''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\4EBA\5458\FF01");'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P283_AUDIT_METHOD''))) {',
unistr('    alert("\8BF7\9009\62E9\5BA1\6838\65B9\5F0F\FF01");'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216092881902774523)
,p_event_id=>wwv_flow_imp.id(216092390145774522)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\4E86\5206\7EC4\53CA\5BA1\6838\4EBA-\66FF\6362\5DE5\5177\5305')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT        NUMBER(10);',
'    V_ERR_MSG          NVARCHAR2(2000);',
unistr('    V_COUNT_GROUP      NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\5206\7EC4'),
unistr('    V_COUNT_REVIEW     NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\5BA1\6838\4EBA\5458'),
'    V_ROW_COUNT_REVIEW NUMBER(10);',
'BEGIN',
unistr('    -- \6821\9A8C\540C\4E00\5BF9\8C61\662F\5426\6709\91CD\590D\5206\7EC4\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
'    SELECT COUNT(OBJECT_REVIEW_ID)',
'    INTO V_COUNT_GROUP',
'    FROM CHECK_OBJECT_REVIEW',
'    WHERE REVIEW_GROUP = :P283_REVIEW_GROUP',
'      AND OBJECT_ID = :P283_OBJECT_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'            and OBJECT_REVIEW_ID <> :P283_OBJECT_REVIEW_ID;',
'',
unistr('    -- \6821\9A8C\540C\4E00\5BF9\8C61\662F\5426\6709\91CD\590D\5BA1\6838\4EBA\5458\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
unistr('    WITH SPLIT_REVIEW_USERS AS (   --\5F55\5165\6570\636E'),
unistr('-- SELECT DATA_VAL AS REVIEW_USER  FROM JA_UTILS_PKG.SPLIT_STR(:P262_OBJECT_REVIEW_ID, '','')  --\4F1A\6F0F\7B97'),
'    SELECT REGEXP_SUBSTR(:P283_REVIEW_USERS, ''[^:]+'', 1, LEVEL) AS REVIEW_USER',
'    FROM DUAL',
'    CONNECT BY REGEXP_SUBSTR(:P283_REVIEW_USERS, ''[^:]+'', 1, LEVEL) IS NOT NULL',
'    ),',
unistr('    OBJECT_REVIEW_USERS AS (  --\5BA1\6838\8868\4E2D\5B58\50A8\9AD8\7EA7\5BA1\6838-\5BA1\6838\4EBA\FF08\540C\4E00\5BF9\8C61\FF09'),
'        SELECT REVIEW_USERS AS OBJECT_REVIEW',
'        FROM CHECK_OBJECT_REVIEW',
'        WHERE OBJECT_ID = :P283_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2',
'        and OBJECT_REVIEW_ID <> :P283_OBJECT_REVIEW_ID',
'    ),',
'    DUPLICATES AS (',
'        SELECT REVIEW_USER, COUNT(1) AS DUP_COUNT',
'        FROM OBJECT_REVIEW_USERS',
unistr('        CROSS JOIN SPLIT_REVIEW_USERS    --\4E24\4E2A\5B50\67E5\8BE2\7684\7ED3\679C\8FDB\884C\7B1B\5361\5C14\79EF'),
unistr('        WHERE INSTR(OBJECT_REVIEW, REVIEW_USER) > 0   --\7B5B\9009\51FA\90A3\4E9B\5728OBJECT_REVIEW\4E2D\5305\542BREVIEW_USER\7684\8BB0\5F55'),
'        GROUP BY REVIEW_USER',
unistr('        HAVING COUNT(1) > 0  --\7B5B\9009\51FA\51FA\73B0\6B21\6570\5927\4E8E0\7684\5BA1\6838\4EBA\5458'),
'    )',
'    SELECT SUM(DUP_COUNT) AS TOTAL_DUPLICATES',
'    INTO V_COUNT_REVIEW',
'    FROM DUPLICATES;',
'',
unistr('    IF V_COUNT_GROUP > 0 THEN --\6709\91CD\590D\5206\7EC4'),
'        APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', -2);',
'    ELSE',
unistr('        IF V_COUNT_REVIEW > 0 THEN --\6709\91CD\590D\5BA1\6838\4EBA'),
'            APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', -3);',
'        ELSE',
unistr('            -- \66F4\65B0\5230\5BA1\6838\8868\4E2D'),
'            UPDATE CHECK_OBJECT_REVIEW',
'                SET REVIEW_TYPE = 2,',
'                    REVIEW_GROUP = :P283_REVIEW_GROUP,',
'                    REVIEW_USERS = :P283_REVIEW_USERS,',
'                    AUDIT_METHOD = :P283_AUDIT_METHOD,',
'                    UPDATED_BY=:USER_ID,',
'                    UPDATED_DATE=SYSDATE',
'                WHERE OBJECT_REVIEW_ID = :P283_OBJECT_REVIEW_ID',
'            and DEL_FLAG = 0',
'            and TENANT_ID = :USERTENANT',
'            and BASE_DEPT_ID = 	:BASE_DEPT_ID;',
'',
'            V_ROW_COUNT := SQL%ROWCOUNT;',
'            APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', V_ROW_COUNT);',
'',
'        END IF;',
'    END IF;',
unistr('WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || ''\4FEE\6539-\6253\5370\5BA1\6838\4FE1\606F2\FF1A'', ''info'', V_ERR_MSG || ''\5BA1\6838\4EBA\91CD\590D\6570V_COUNT_REVIEW:'' || V_COUNT_REVIEW || CHR(10) || ''REVIEW_GROUP:'' || :P283_REVIEW_GROUP || '',REVIEW_USERS:'' || :P283_REVIEW_USERS'),
'||  '',AUDIT_METHOD:'' || :P283_AUDIT_METHOD || '',P283_ROW_COUNT: '' || :P283_ROW_COUNT, :USER_ID, :USERTENANT,',
':APP_NAME , :APP_ID, :APP_CODE);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P283_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\5BA1\6838-\7F16\8F91'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME, :APP_ID, :APP_CODE);',
'        DBMS_OUTPUT.PUT_LINE(''Error: '' || V_ERR_MSG); -- Debug log',
'END;',
''))
,p_attribute_02=>'P283_OBJECT_ID,P283_REVIEW_GROUP,P283_REVIEW_USERS,P283_AUDIT_METHOD,P283_OBJECT_REVIEW_ID'
,p_attribute_03=>'P283_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216093910888774523)
,p_event_id=>wwv_flow_imp.id(216092390145774522)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P283_ROW_COUNT'')>0){',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'}else if ($v(''P283_ROW_COUNT'')== 0){',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}else if ($v(''P283_ROW_COUNT'')== -2){',
unistr('    alert(''\5DF2\6709\91CD\590D\5206\7EC4\FF0C\8BF7\91CD\65B0\8F93\5165\FF01'');'),
'    return false;',
'}else if ($v(''P283_ROW_COUNT'')== -3){',
unistr('    alert(''\540C\4E00\5BF9\8C61\5DF2\6709\91CD\590D\5BA1\6838\4EBA\5458\FF0C\8BF7\91CD\65B0\9009\62E9\FF01'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216094405140774524)
,p_event_id=>wwv_flow_imp.id(216092390145774522)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(216085146351774518)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(216085687499774519)
,p_event_id=>wwv_flow_imp.id(216085146351774518)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\67E5\8BE2\5F53\524D\9AD8\7EA7\8BBE\7F6E\5206\7EC4\4E2A\6570')
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P283_GROUP_COUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select count(OBJECT_REVIEW_ID)',
'from CHECK_OBJECT_REVIEW',
'where OBJECT_ID = :P283_OBJECT_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USERTENANT',
'          AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        AND REVIEW_TYPE = 2 ;'))
,p_attribute_07=>'P283_OBJECT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(216082185004774513)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(891697862864037169)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \53D8\66F4\70B9\9879-\7F16\8F91')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>127598550234912525
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(216084815676774518)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>127601180906912530
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(216081816591774513)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(891697862864037169)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \53D8\66F4\70B9\9879-\7F16\8F91')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>127598181821912525
);
wwv_flow_imp.component_end;
end;
/

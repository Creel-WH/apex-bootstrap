prompt --application/pages/page_00127
begin
--   Manifest
--     PAGE: 00127
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
 p_id=>127
,p_name=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\5F39\7A97')
,p_alias=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\5F39\7A97')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\5F39\7A97')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2227896118244493143)
,p_plug_name=>unistr('\64CD\4F5C\533A')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2352496232261331979)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227896291418493145)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2352496232261331979)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2202940672150166788)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2352496232261331979)
,p_button_name=>unistr('\5220\9664')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P127_FABID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2227896450481493146)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2352496232261331979)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2202940436411166786)
,p_name=>'P127_ERROR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2202940533559166787)
,p_name=>'P127_ROW_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2202940783486166789)
,p_name=>'P127_CATEGORY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227896262519493144)
,p_name=>'P127_FABID'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME key,FAB_ID val from fnd_fab where tenant_id=:usertenant',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
';'))
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227896571608493147)
,p_name=>'P127_OPID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_prompt=>unistr('\5DE5\6BB5')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT MAP_AREA_X_NAME KEY,MAP_AREA_X_ID VAL from FND_MAPS_AREAS_ASSO_V where tenant_id=:usertenant AND FAB_ID=:P127_FABID',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'; '))
,p_lov_cascade_parent_items=>'P127_FABID'
,p_ajax_optimize_refresh=>'Y'
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227896630478493148)
,p_name=>'P127_CATEGORY2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_prompt=>unistr('\5C0F\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT B.NAME ||''---''||A.NAME KEY,A.EVENT_CATEGORY_ID VAL FROM TENANT_EVENT_CATEGORY A',
'LEFT JOIN TENANT_EVENT_CATEGORY B ON A.PARENT_CODE = B.CODE AND A.TENANT_ID = B.TENANT_ID',
'WHERE A.NODE_LEVEL=2 AND A.TENANT_ID = :USERTENANT',
'and A.BASE_DEPT_ID = :BASE_DEPT_ID',
'and B.BASE_DEPT_ID = :BASE_DEPT_ID',
'ORDER BY A.PARENT_CODE'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2352496906224331986)
,p_name=>'P127_TEMP_NAMES'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2352497078618331987)
,p_name=>'P127_TEMP_IDS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2352497301164331989)
,p_name=>'P127_MSG'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2694923768042889085)
,p_name=>'P127_CATELIST'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2694923868189889086)
,p_name=>'P127_OPLIST'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2227896118244493143)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227896721318493149)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2227896291418493145)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227896811437493150)
,p_event_id=>wwv_flow_imp.id(2227896721318493149)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2227896944211493151)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2227896450481493146)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2227897089323493152)
,p_event_id=>wwv_flow_imp.id(2227896944211493151)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var opJ = $("#P127_OPID_CONTAINER .apex-item-multi-item");',
'var cateJ = $("#P127_CATEGORY2_CONTAINER .apex-item-multi-item");',
'var oplist = "";',
'var catelist = "";',
'var tmp;',
'',
'for (var i = 0; i < cateJ.length; i++) {',
'    tmp = cateJ[i].dataset.value;',
'    if (typeof (tmp) != "undefined") { catelist = catelist + tmp + '',''; }',
'',
'}',
'catelist = (catelist.substring(catelist.length - 1) == '','') ? catelist.substring(0, catelist.length - 1) : catelist;',
'',
'///////////////////////',
'for (var i = 0; i < opJ.length; i++) {',
'    tmp = opJ[i].dataset.value;',
'    if (typeof (tmp) != "undefined") { oplist = oplist + tmp + '',''; }',
'',
'}',
'oplist = (oplist.substring(oplist.length - 1) == '','') ? oplist.substring(0, oplist.length - 1) : oplist;',
'//////////////////////////////',
'',
'///////////////////////',
'',
'console.log(oplist);',
'console.log(catelist);',
'',
'$s(''P127_OPLIST'',oplist);',
'$s(''P127_CATELIST'',catelist)',
'',
'apex.server.process(''GetData'',',
'    // {x01: oplist,x02: catelist},  // Parameter to be passed to the server',
'    { pageItems:''#P127_OPLIST,#P127_CATELIST'' },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {             // Success',
'            console.log(pData);',
'',
'            alert(pData);',
'',
'        },',
'        error: function (e) {',
'            alert(e);',
'',
'        },',
'        dataType: "text"                        // Response type',
'    }',
');'))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2352497388921331990)
,p_event_id=>wwv_flow_imp.id(2227896944211493151)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P127_OPID''))) {',
unistr('    alert(''\8BF7\9009\62E9\5DE5\6BB5'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P127_CATEGORY2''))) {',
unistr('    alert(''\8BF7\9009\62E9\5C0F\7C7B'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2352497416934331991)
,p_event_id=>wwv_flow_imp.id(2227896944211493151)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_count   number(10) := 0;',
'    cursor c_job is select column_value val',
'                    from table (SPLITSTR(:P127_CATEGORY2, '',''));',
'begin',
'',
'    UPDATE TENANT_FND_AREA_EVENT_CATEGORY_ASSO T',
'    SET DEL_FLAG    = 1,',
'        UPDATE_DATE = SYSDATE',
'    WHERE TENANT_ID = :USERTENANT',
'      AND DEL_FLAG = 0',
'      and BASE_DEPT_ID = :ORG_ID',
'      AND MAP_AREA_X_ID = :P127_OPID',
'      AND NOT EXISTS(SELECT 1',
'                     FROM (SELECT COLUMN_VALUE FROM TABLE (SPLITSTR(:P127_CATEGORY2, '',''))) S',
'                     WHERE S.COLUMN_VALUE = T.EVENT_CATEGORY_ID);',
'',
'    for c in c_job',
'        loop',
'            SELECT COUNT(1)',
'            INTO v_count',
'            FROM TENANT_FND_AREA_EVENT_CATEGORY_ASSO',
'            WHERE TENANT_ID = :USERTENANT',
'              and DEL_FLAG = 0 and BASE_DEPT_ID = :ORG_ID',
'              AND MAP_AREA_X_ID = :P127_OPID',
'              AND EVENT_CATEGORY_ID = c.val;',
'            IF v_count = 0 THEN',
unistr('                -- \7ED1\5B9A\65B0\7684\5C0F\7C7B'),
'                INSERT INTO TENANT_FND_AREA_EVENT_CATEGORY_ASSO(CREATED_BY, CREATION_DATE, TENANT_ID, MAP_AREA_X_ID,',
'                                                                EVENT_CATEGORY_ID, BASE_DEPT_ID)',
'                VALUES (:USER_ID, sysdate, :USERTENANT, :P127_OPID, c.val, :ORG_ID);',
'                COMMIT;',
'            END IF;',
'        end loop;',
'',
unistr('    APEX_UTIL.SET_SESSION_STATE(''P127_MSG'', 1);-- \8FD4\56DE\7ED3\679C\503C'),
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P127_MSG'', -1);-- \8FD4\56DE\7ED3\679C\503C'),
'end;'))
,p_attribute_02=>'P127_CATEGORY2,P127_OPID'
,p_attribute_03=>'P127_MSG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2352497512112331992)
,p_event_id=>wwv_flow_imp.id(2227896944211493151)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P127_MSG'') == -1) {',
unistr('    alert(''\64CD\4F5C\5931\8D25\FF0C\8BF7\8054\7CFB\7BA1\7406\5458'');'),
'    return false;',
'} else {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2234506135314231232)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2234506197959231233)
,p_event_id=>wwv_flow_imp.id(2234506135314231232)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',127,''\5DE5\5E8F\5C0F\7C7B\7ED1\5B9A\5F39\7A97'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202941359956166795)
,p_event_id=>wwv_flow_imp.id(2234506135314231232)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_CATEGORY'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT JSON_OBJECT(KEY ''data'' VALUE JSON_ARRAYAGG(',
'            JSON_OBJECT(',
'                    KEY ''id'' VALUE EVENT_CATEGORY_ID,',
'                    KEY ''name'' VALUE NAME',
'                )',
'        ))',
'      FROM (SELECT B.NAME || ''--'' || A.NAME NAME, A.EVENT_CATEGORY_ID',
'              FROM TENANT_EVENT_CATEGORY      A',
'              LEFT JOIN TENANT_EVENT_CATEGORY B',
'                ON A.PARENT_CODE = B.CODE',
'               AND A.TENANT_ID = B.TENANT_ID',
'             WHERE',
'              A.BASE_DEPT_ID = :BASE_DEPT_ID',
'             and B.BASE_DEPT_ID = :BASE_DEPT_ID',
'             and A.EVENT_CATEGORY_ID IN (SELECT A.EVENT_CATEGORY_ID',
'                                             FROM TENANT_FND_AREA_EVENT_CATEGORY_ASSO A',
'                                            WHERE A.DEL_FLAG = 0',
'                                              AND A.MAP_AREA_X_ID = :P127_OPID))',
'                                             '))
,p_attribute_07=>'P127_OPID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P127_FABID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202941436669166796)
,p_event_id=>wwv_flow_imp.id(2234506135314231232)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log("P127_OPID : " + $v("P127_OPID"));',
'console.log("P127_CATEGORY : " + $v("P127_CATEGORY"));',
'var data = JSON.parse($v("P127_CATEGORY"));',
'if (data != null && data.data != undefined) {',
'    var datas = data.data;',
'    var key = [], value = [];',
'    for (var i = 0; i < datas.length; i++) {',
'        key[i] = datas[i].name;',
'        value[i] = datas[i].id;',
'    }',
'    var ids = value;',
'    var names = key;',
unistr('    // console.log("\53D8\66F4\FF1A" + ids);'),
unistr('    // console.log("\53D8\66F4\FF1A" + names);'),
unistr('    //\591A\4E2A\503C\65F6\4EE5\6570\7EC4\65B9\5F0F\5B58\653E\FF0C\6216\8005\5B57\7B26\4E32\62FC\63A5\9017\53F7\5206\5272'),
'    apex.item("P127_CATEGORY2").setValue(ids, names, true);',
'}'))
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P127_FABID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2202940853372166790)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2202940672150166788)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202940963868166791)
,p_event_id=>wwv_flow_imp.id(2202940853372166790)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P127_OPID") == '''') {',
unistr('    alert("\5DE5\6BB5\4E0D\80FD\4E3A\7A7A");'),
'    return false;',
'}',
'',
'if ($v("P127_CATEGORY2") == '''') {',
unistr('    alert("\5C0F\7C7B\4E0D\80FD\4E3A\7A7A");'),
'    return false;',
'}',
'',
unistr('if (!confirm("\786E\8BA4\5220\9664?")) {'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202941009317166792)
,p_event_id=>wwv_flow_imp.id(2202940853372166790)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER;',
'    V_ERROR VARCHAR2(1024);',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    UPDATE TENANT_FND_AREA_EVENT_CATEGORY_ASSO',
'       SET DEL_FLAG = 1,',
'           UPDATED_BY = :USER_ID,',
'           UPDATE_DATE = SYSDATE',
'     WHERE TENANT_ID = :USERTENANT',
'       AND DEL_FLAG = 0',
'       AND MAP_AREA_X_ID IN (SELECT COLUMN_VALUE FROM TABLE(SPLITSTR(:P127_OPID,'','')))',
'       AND EVENT_CATEGORY_ID IN (SELECT COLUMN_VALUE FROM TABLE(SPLITSTR(:P127_CATEGORY2,'','')));',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P127_ROW_COUNT'',ROW_COUNT);',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        ROW_COUNT := -1;',
'        V_ERROR := DBMS_UTILITY.FORMAT_ERROR_STACK;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P127_ROW_COUNT'',ROW_COUNT);',
'        APEX_UTIL.SET_SESSION_STATE(''P127_ERROR'',V_ERROR);',
'END;'))
,p_attribute_02=>'P127_OPID,P127_CATEGORY2'
,p_attribute_03=>'P127_ERROR,P127_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202941103605166793)
,p_event_id=>wwv_flow_imp.id(2202940853372166790)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v("P127_ROW_COUNT") == -1){',
unistr('    alert("\5220\9664\5931\8D25\FF01" + $v("P127_ERROR"));'),
'    return false;',
'}else{',
unistr('    alert("\5220\9664\6210\529F\FF01");'),
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2202941297925166794)
,p_event_id=>wwv_flow_imp.id(2202940853372166790)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2352496711189331984)
,p_name=>unistr('\53D8\66F4')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P127_OPID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2352496886588331985)
,p_event_id=>wwv_flow_imp.id(2352496711189331984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P127_TEMP_IDS,P127_TEMP_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT listagg(A.EVENT_CATEGORY_ID, '','') within group ( order by A.EVENT_CATEGORY_ID) ids,',
'       listagg(C.NAME, '','') within group ( order by A.EVENT_CATEGORY_ID) names',
'',
'FROM TENANT_FND_AREA_EVENT_CATEGORY_ASSO A',
'         LEFT JOIN (',
'    select v.MAP_AREA_X_ID, v.MAP_AREA_X_NAME, v.FAB_ID, v.FAB_NAME',
'    from FND_MAPS_AREAS_ASSO_V v',
'    group by v.MAP_AREA_X_ID, v.MAP_AREA_X_NAME, v.FAB_ID, v.FAB_NAME',
') B',
'                   ON A.MAP_AREA_X_ID = B.MAP_AREA_X_ID',
'         inner JOIN TENANT_EVENT_CATEGORY C',
'                    ON A.EVENT_CATEGORY_ID = C.EVENT_CATEGORY_ID',
'WHERE A.TENANT_ID = :USERTENANT',
'  and B.MAP_AREA_X_ID = :P127_OPID',
'  AND A.DEL_FLAG = 0;'))
,p_attribute_07=>'P127_OPID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2352497124152331988)
,p_event_id=>wwv_flow_imp.id(2352496711189331984)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P127_TEMP_IDS''));',
'console.log($v(''P127_TEMP_NAMES''));',
'var ids = [];',
'var names = [];',
'if ($v(''P127_TEMP_IDS'')) {',
'    ids = $v(''P127_TEMP_IDS'').split('','');',
'    names = $v(''P127_TEMP_NAMES'').split('','');',
'    apex.item("P127_CATEGORY2").setValue(ids, names, true);',
'} else {',
unistr('    //\5207\6362\6CA1\6709\6570\636E\65F6,\6E05\7A7A\4E0A\4E00\6B21\9009\4E2D\6570\636E '),
'    apex.item("P127_CATEGORY2").setValue([],[],false);',
'} '))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2227897090463493153)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GetData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    HTML VARCHAR2(100):='''';',
'    V_OP VARCHAR2(4000);',
'    V_CATEGORY VARCHAR2(4000);',
'BEGIN',
'    SELECT REGEXP_REPLACE(:P127_OPLIST,'':'','',''),REGEXP_REPLACE(:P127_CATELIST,'':'','','') INTO V_OP,V_CATEGORY FROM DUAL;',
'    HTML := APEX_EVENT_CATEGORY_ASSO_FUN(V_OP,V_CATEGORY,:USERTENANT);',
'    htp.prn(HTML);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44572487709409199
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2227897253969493154)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'TEST_LOV'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    datas clob;',
'begin',
'    select json_object(key ''data'' value json_arrayagg(',
'            json_object(',
'                    key ''id'' value EVENT_CATEGORY_ID,',
'                    key ''name'' value NAME',
'            )',
'                                        ))',
'    into datas',
'    from (select B.NAME || ''--'' || A.NAME NAME, A.EVENT_CATEGORY_ID',
'          from TENANT_EVENT_CATEGORY A',
'                   LEFT JOIN TENANT_EVENT_CATEGORY B ON A.PARENT_CODE = B.CODE',
'          where A.BASE_DEPT_ID = :BASE_DEPT_ID',
'            and B.BASE_DEPT_ID = :BASE_DEPT_ID',
'            and A.EVENT_CATEGORY_ID in (select a.EVENT_CATEGORY_ID',
'                                        from TENANT_FND_AREA_EVENT_CATEGORY_ASSO a',
'                                        where a.MAP_AREA_X_ID = :P127_OPID));',
'',
'',
'    htp.prn(datas);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>44572651215409200
);
wwv_flow_imp.component_end;
end;
/

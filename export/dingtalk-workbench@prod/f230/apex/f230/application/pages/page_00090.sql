prompt --application/pages/page_00090
begin
--   Manifest
--     PAGE: 00090
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>90
,p_name=>unistr('JIT\5BA2\670D\7BA1\7406')
,p_alias=>unistr('JIT\5BA2\670D\7BA1\7406')
,p_step_title=>unistr('JIT\5BA2\670D\7BA1\7406')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result){',
'    console.log(result)',
'    $s(''P90_VISIBLE_USERS'',result.users.map(i=>i.emplId).join('':''))',
'    $s(''P90_VISIBLE_DEPTS'',result.departments.map(i=>+i.id).join('':''))',
'    if(result.users.length>0&&result.departments.length>0){',
'        $(''#chooseInput'').val(result.users.map(i=>i.name).join('','')+'',''+result.departments.map(i=>i.name).join('',''))',
'    }else{',
'        $(''#chooseInput'').val(result.users.map(i=>i.name).join('','')+result.departments.map(i=>i.name).join('',''))',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P90_IS_SHOW'') === ''N'') {',
'    $(''#scope_type'').hide()',
'}',
'',
'if ($v(''P90_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'}',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P90_VISIBLE_USERS'').split(":");',
'    let deptList = $v(''P90_VISIBLE_DEPTS'').split(":");',
'    DingTalkAuth.chooseUsers(userList, deptList, visible_callback);',
'});',
'',
'$(''#chooseInput'').val($v(''P90_COMBINED_NAMES''))',
'$s(''P90_VISIBLE_DEPTS_RAW'',$v(''P90_VISIBLE_DEPTS''))',
'$s(''P90_VISIBLE_USERS_RAW'',$v(''P90_VISIBLE_USERS''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#user_input {',
'    margin-bottom: 20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1805278327541992768)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1805281068384150880)
,p_plug_name=>unistr('\53EF\89C1\8303\56F4\914D\7F6E')
,p_region_name=>'scope_type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1805280703622150877)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(1805281068384150880)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1805281940158150889)
,p_plug_name=>unistr('\5BA2\670D\94FE\63A5\914D\7F6E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1480756739946487387)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1805281940158150889)
,p_button_name=>unistr('\4FDD\5B58\94FE\63A5')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\94FE\63A5')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1480758295763487396)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(1805281068384150880)
,p_button_name=>unistr('\4FDD\5B58\53D8\66F4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\53D8\66F4')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1764304143696308443)
,p_name=>'P90_SCOPE_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1805281068384150880)
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUBSTRING_INSTR2(CODE_VALUE,''_'',1,2) SCOPE_TYPE',
'from JW_SYSTEM_DICT where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1764305377742308444)
,p_name=>'P90_IS_SHOW'
,p_item_sequence=>80
,p_prompt=>unistr('\662F\5426\5C55\793A\FF1A')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUBSTRING_INSTR2(CODE_VALUE,''_'',0,1)',
'from JW_SYSTEM_DICT where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_YES_NO'
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805283226469150907)
,p_name=>'P90_URL_FULL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1805281940158150889)
,p_prompt=>unistr('\5168\5C4F\6A21\5F0F\94FE\63A5\FF1A')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select CODE_VALUE',
'from JW_SYSTEM_DICT where DICT_CODE = ''JIT_CUSTOMER_SERVICED_URL'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>100
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805284306767150900)
,p_name=>'P90_VISIBLE_USERS'
,p_item_sequence=>100
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(ENTITY_ID, '':'')',
'from JW_SCOPE',
'where REFERENCE_TYPE = ''JIT''',
'  and ENTITY_TYPE = ''USER'';'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805284444174150901)
,p_name=>'P90_VISIBLE_DEPTS'
,p_item_sequence=>120
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select LISTAGG(ENTITY_ID, '':'')',
'from JW_SCOPE',
'where REFERENCE_TYPE = ''JIT''',
'  and ENTITY_TYPE = ''DEPT'';'))
,p_source_type=>'QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805284548511150902)
,p_name=>'P90_COMBINED_NAMES'
,p_item_sequence=>140
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (SELECT LISTAGG(NAME, '','') WITHIN GROUP (ORDER BY NAME)',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''JIT''',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''JIT''',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) COMBINED_NAMES',
'from JW_SYSTEM_DICT',
'where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805284811176150905)
,p_name=>'P90_VISIBLE_USERS_RAW'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1805284967898150906)
,p_name=>'P90_VISIBLE_DEPTS_RAW'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1480765606395487405)
,p_name=>unistr('\5207\6362')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_IS_SHOW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480766117335487405)
,p_event_id=>wwv_flow_imp.id(1480765606395487405)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    v_remark varchar2(50) default ''\9690\85CFJIT\5BA2\670D'';'),
'    v_scope_type varchar2(50);',
'begin',
'    select SUBSTRING_INSTR2(CODE_VALUE,''_'',1,2) into v_scope_type',
'    from JW_SYSTEM_DICT where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';',
'    update JW_SYSTEM_DICT set CODE_VALUE = :P90_IS_SHOW || ''_'' || v_scope_type where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';',
'    if :P90_IS_SHOW = ''Y'' then',
unistr('        v_remark := ''\663E\793AJIT\5BA2\670D'';'),
'    end if;',
'    save_audit_log(:JW_USER_ID,''JAM'',''UPDATE_IS_SHOW'',v_remark);',
'end;'))
,p_attribute_02=>'P90_IS_SHOW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480766650242487405)
,p_event_id=>wwv_flow_imp.id(1480765606395487405)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P90_IS_SHOW'') === ''N'') {',
'    $(''#scope_type'').hide()',
unistr('    alert(''JIT\5BA2\670D\5DF2\9690\85CF'')'),
'} else {',
'    $(''#scope_type'').show()',
unistr('    alert(''JIT\5BA2\670D\5DF2\5C55\793A'')'),
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1480763375333487404)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P90_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480763807440487404)
,p_event_id=>wwv_flow_imp.id(1480763375333487404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P90_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1480764229933487404)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1480758295763487396)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480765300465487405)
,p_event_id=>wwv_flow_imp.id(1480764229933487404)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_USERS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_USERS_RAW, '':''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_DEPTS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_DEPTS_RAW, '':''));',
'begin',
'     update JW_SYSTEM_DICT set CODE_VALUE = :P90_IS_SHOW || ''_'' ||:P90_SCOPE_TYPE where DICT_CODE = ''JIT_CUSTOMER_SERVICED_SHOW'';',
'',
'    if :P90_SCOPE_TYPE != ''ALL'' then',
'--         WRITE_LOG(''jw'', ''save_admin_debug'', ''addUserCursor:'' || :addUserCursor, 1, 1);',
'        delete JW_SCOPE',
'        where REFERENCE_TYPE = ''JIT''',
'          and ENTITY_TYPE = ''USER''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_USERS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_USERS, '':'')));',
'',
'        delete JW_SCOPE',
'        where REFERENCE_TYPE = ''JIT''',
'          and ENTITY_TYPE = ''DEPT''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_DEPTS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P90_VISIBLE_DEPTS, '':'')));',
'',
'        for cur in addUserCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        ''JIT'');',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        ''JIT'');',
'            end loop;',
'    end if;',
'end;'))
,p_attribute_02=>'P90_VISIBLE_USERS,P90_VISIBLE_USERS_RAW,P90_VISIBLE_DEPTS,P90_VISIBLE_DEPTS_RAW,P90_SCOPE_TYPE,P90_IS_SHOW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480764710492487404)
,p_event_id=>wwv_flow_imp.id(1480764229933487404)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P90_VISIBLE_DEPTS_RAW'',$v(''P90_VISIBLE_DEPTS''))',
'$s(''P90_VISIBLE_USERS_RAW'',$v(''P90_VISIBLE_USERS''))',
unistr('alert(''\53EF\89C1\8303\56F4\5DF2\66F4\65B0'')'),
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1480761924943487401)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1480756739946487387)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480762455478487403)
,p_event_id=>wwv_flow_imp.id(1480761924943487401)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'update JW_SYSTEM_DICT set  CODE_VALUE = :P90_URL_FULL where DICT_CODE = ''JIT_CUSTOMER_SERVICED_URL'';'
,p_attribute_02=>'P90_URL_FULL'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1480762992204487403)
,p_event_id=>wwv_flow_imp.id(1480761924943487401)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('alert(''\5BA2\670D\94FE\63A5\5DF2\66F4\65B0'')'),
''))
);
wwv_flow_imp.component_end;
end;
/

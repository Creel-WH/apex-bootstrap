prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_name=>unistr('\5206\914D\7528\6237\7EC4')
,p_alias=>unistr('\5206\914D\7528\6237\7EC4')
,p_step_title=>unistr('\5206\914D\7528\6237\7EC4')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P25_VISIBLE_USERS'', result.users.map(i => i.emplId).join('':''))',
'    $s(''P25_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('':''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P25_SCOPE_TYPE'') == ''ALL'') {',
'    $(''#user_input'').hide()',
'}',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P25_VISIBLE_USERS'').split(":");',
'    let deptList = $v(''P25_VISIBLE_DEPTS'').split(":");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'$(''#chooseInput'').val($v(''P25_COMBINED_NAMES''))'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.edit_btn {',
'    margin-top: 20px;',
'}',
'',
'#return_btn {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(371517877734509019)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>140
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(371556603752253167)
,p_plug_name=>unistr('\5206\914D\7528\6237\7EC4')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421788139356171854)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USER_GROUP_ID,',
'       NAME,',
'       SCOPE_TYPE,',
'       REMARK,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, ENTITY_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''USER_GROUP''',
'          and s.REFERENCE_ID = USER_GROUP_ID',
'          and s.ENTITY_TYPE = ''USER'')                                as VISIBLE_USERS,',
'       (select RTRIM(XMLAGG(XMLELEMENT(e, ENTITY_ID || '':'')).extract(''//text()'').GETCLOBVAL(), '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''USER_GROUP''',
'          and s.REFERENCE_ID = USER_GROUP_ID',
'          and s.ENTITY_TYPE = ''DEPT'')                                as VISIBLE_DEPTS,',
'       (SELECT RTRIM(XMLAGG(XMLELEMENT(e, NAME || '','')).extract(''//text()'').GETCLOBVAL(), '','')',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''USER_GROUP''',
'                                       AND s.REFERENCE_ID = USER_GROUP_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''USER_GROUP''',
'                                       AND s.REFERENCE_ID = USER_GROUP_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS COMBINED_NAMES',
'from JW_USER_GROUP;',
''))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(371516732753509008)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>60
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211636199230239283)
,p_button_sequence=>130
,p_button_name=>unistr('\8FD4\56DE')
,p_button_static_id=>'return_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_redirect_url=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(371563268859253191)
,p_button_sequence=>150
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5E94\7528\66F4\6539')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P25_USER_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'edit_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211636394131239285)
,p_button_sequence=>160
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\5220\9664')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P25_USER_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'edit_btn'
,p_grid_new_row=>'N'
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(211635395567239275)
,p_button_sequence=>170
,p_button_name=>'ADD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P25_USER_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'edit_btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211634899144239270)
,p_name=>'P25_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_default=>'ALL'
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(211635773923239279)
,p_name=>'P25_IS_REPEAT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371516571002509006)
,p_name=>'P25_VISIBLE_USERS_RAW'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371516661092509007)
,p_name=>'P25_VISIBLE_DEPTS_RAW'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371516897637509009)
,p_name=>'P25_TITLE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_prompt=>unistr('\7EC4\5185\6210\5458')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371556996873253168)
,p_name=>'P25_USER_GROUP_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_use_cache_before_default=>'NO'
,p_prompt=>'User Group Id'
,p_source=>'USER_GROUP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371557351490253179)
,p_name=>'P25_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_prompt=>unistr('\7528\6237\7EC4\540D\79F0')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371557723385253180)
,p_name=>'P25_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371558155350253180)
,p_name=>'P25_VISIBLE_USERS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371558585032253181)
,p_name=>'P25_VISIBLE_DEPTS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(371558932439253181)
,p_name=>'P25_COMBINED_NAMES'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_item_source_plug_id=>wwv_flow_imp.id(371556603752253167)
,p_source=>'COMBINED_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(371517172099509012)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(371563268859253191)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(371517257325509013)
,p_event_id=>wwv_flow_imp.id(371517172099509012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P25_NAME''))) {',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(371517330477509014)
,p_event_id=>wwv_flow_imp.id(371517172099509012)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4 \65E5\5FD7'),
'    */',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS_RAW, '':''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS_RAW, '':''));',
'begin',
'',
'    update JW_USER_GROUP',
'    set NAME=nvl(:P25_NAME, NAME),',
'        REMARK=:P25_REMARK,',
'        SCOPE_TYPE=:P25_SCOPE_TYPE,',
'        UPDATED_BY=:JW_USER_ID,',
'        UPDATED_DATE=sysdate',
'    where USER_GROUP_ID = :P25_USER_GROUP_ID;',
'',
'',
'    if :P25_SCOPE_TYPE != ''ALL'' then',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P25_USER_GROUP_ID',
'          and REFERENCE_TYPE = ''USER_GROUP''',
'          and ENTITY_TYPE = ''USER''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS, '':'')));',
'',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P25_USER_GROUP_ID',
'          and REFERENCE_TYPE = ''USER_GROUP''',
'          and ENTITY_TYPE = ''DEPT''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS_RAW, '':''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS, '':'')));',
'',
'        for cur in addUserCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P25_USER_GROUP_ID,',
'                        ''USER_GROUP'');',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P25_USER_GROUP_ID,',
'                        ''USER_GROUP'');',
'            end loop;',
'    end if;',
'',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'',
'',
'end;'))
,p_attribute_02=>'P25_NAME,P25_REMARK,P25_VISIBLE_USERS,P25_VISIBLE_USERS_RAW,P25_VISIBLE_DEPTS,P25_VISIBLE_DEPTS_RAW,P25_USER_GROUP_ID,P25_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(371517678612509017)
,p_event_id=>wwv_flow_imp.id(371517172099509012)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P25_VISIBLE_USERS_RAW",$v("P25_VISIBLE_USERS"))',
'$s("P25_VISIBLE_DEPTS_RAW",$v("P25_VISIBLE_DEPTS"))',
unistr('alert(''\4FDD\5B58\6210\529F\FF01'');')))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211635115507239272)
,p_name=>unistr('\5207\6362\7B5B\9009')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211635197278239273)
,p_event_id=>wwv_flow_imp.id(211635115507239272)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P25_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'    if (utils.checkNull($v(''P25_COMBINED_NAMES'')) && utils.checkNull($v(''P25_VISIBLE_USERS''))) {',
'        $s(''P25_VISIBLE_USERS'', $v(''P0_JW_USER_ID''))',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211635482285239276)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211635395567239275)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211635661040239278)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P25_NAME''))) {',
unistr('    alert(''\5DE5\4F5C\53F0\540D\79F0\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211635649530239277)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(USER_GROUP_ID)',
'    INTO v_count',
'    FROM JW_USER_GROUP',
'    WHERE NAME = :P25_NAME',
'    AND DEL_FLAG = 0;',
'',
'    :P25_IS_REPEAT := v_count;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6267\884C\4FDD\5B58\524D\6821\9A8C'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P25_NAME'
,p_attribute_03=>'P25_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211635925338239280)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P25_IS_REPEAT'') > 0) {',
unistr('    alert(''\7528\6237\7EC4\540D\79F0\4E0D\80FD\91CD\590D'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636018808239281)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\7528\6237\7EC4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4 \65E5\5FD7'),
'    */',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_USERS_RAW, '':''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS, '':''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P25_VISIBLE_DEPTS_RAW, '':''));',
'begin',
'    INSERT INTO JW_USER_GROUP (NAME,',
'                               REMARK,',
'                               SCOPE_TYPE,',
'                               CREATED_BY,',
'                               CREATION_DATE,',
'                               UPDATED_BY,',
'                               UPDATED_DATE)',
'    VALUES (:P25_NAME,',
'            :P25_REMARK,',
'            :P25_SCOPE_TYPE,',
'            :JW_USER_ID,',
'            SYSDATE,',
'            :JW_USER_ID,',
'            SYSDATE)',
'    returning USER_GROUP_ID into :P25_USER_GROUP_ID;',
'',
'    if :P25_SCOPE_TYPE != ''ALL'' then',
'        for cur in addUserCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P25_USER_GROUP_ID,',
'                        ''USER_GROUP'');',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P25_USER_GROUP_ID,',
'                        ''USER_GROUP'');',
'            end loop;',
'    end if;',
'',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\521B\5EFA\7528\6237\7EC4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'',
'',
'end;'))
,p_attribute_02=>'P25_NAME,P25_REMARK,P25_VISIBLE_USERS,P25_VISIBLE_USERS_RAW,P25_VISIBLE_DEPTS,P25_VISIBLE_DEPTS_RAW,P25_SCOPE_TYPE'
,p_attribute_03=>'P25_USER_GROUP_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636098366239282)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P25_USER_GROUP_ID''))) {',
unistr('    alert(''\4FDD\5B58\5931\8D25'');'),
'    return false',
'} else {',
'',
unistr('    alert(''\4FDD\5B58\6210\529F'');'),
'    return true',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636287059239284)
,p_event_id=>wwv_flow_imp.id(211635482285239276)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#return_btn'').click()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(211636493578239286)
,p_name=>unistr('\5220\9664')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(211636394131239285)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636622007239287)
,p_event_id=>wwv_flow_imp.id(211636493578239286)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\662F\5426\5220\9664\7528\6237\7EC4&P25_NAME.')
,p_attribute_02=>unistr('\5220\9664\7528\6237\7EC4')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636678005239288)
,p_event_id=>wwv_flow_imp.id(211636493578239286)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE JW_USER_GROUP',
'SET',
'DEL_FLAG = 1,',
'UPDATED_BY = :JW_USER_ID,',
'UPDATED_DATE = sysdate',
'WHERE USER_GROUP_ID = :P25_USER_GROUP_ID;'))
,p_attribute_02=>'P25_USER_GROUP_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(211636827655239289)
,p_event_id=>wwv_flow_imp.id(211636493578239286)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('alert(''\5220\9664\6210\529F'');'),
'$(''#return_btn'').click()'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(371564413149253192)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(371556603752253167)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5206\914D\7528\6237\7EC4')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>51798306878713692
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(371564865299253192)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>51798759028713692
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(371564058270253192)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(371556603752253167)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5206\914D\7528\6237\7EC4')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>51797951999713692
);
wwv_flow_imp.component_end;
end;
/

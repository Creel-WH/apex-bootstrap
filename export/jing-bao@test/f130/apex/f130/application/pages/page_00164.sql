prompt --application/pages/page_00164
begin
--   Manifest
--     PAGE: 00164
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
 p_id=>164
,p_name=>unistr('\6676\8C79\63A8\9001\914D\7F6E-\8868\5355')
,p_alias=>unistr('\6676\8C79\63A8\9001\914D\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6676\8C79\63A8\9001\914D\7F6E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2226538004274054529)
,p_plug_name=>unistr('\6676\8C79\9891\53D1\4E8B\4EF6\63A8\9001\914D\7F6E-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROBOT_SUBSCRIBE_ID,',
'       REMARK,',
'       CONVERSATION_NAME,',
'       CONVERSATION_ID,',
'       DEPT_ID,',
'       IS_ENABLE,',
'       NOTICE_TYPE,',
'       FAB_ID,',
'       TYPES,SUBSCRIBE_TYPE',
'  from TENANT_FREQUENT_ROBOT_SUBSCRIBE',
' WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND IS_ENABLE = 1',
' '))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2226547521676054538)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359789034659135292)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226547947005054538)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2226547521676054538)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-times-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226549753343054540)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2226547521676054538)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P164_ROBOT_SUBSCRIBE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226550166398054540)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2226547521676054538)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P164_ROBOT_SUBSCRIBE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-plus-square-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(668078366698860165)
,p_name=>'P164_CONVERSATION_ID_1'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>'Conversation Id'
,p_source=>'CONVERSATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226188724426927451)
,p_name=>'P164_CONVERSATION_ID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\7FA4\804AID')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226188806379927452)
,p_name=>'P164_ROW_COUNT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226538420032054531)
,p_name=>'P164_ROBOT_SUBSCRIBE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_source=>'ROBOT_SUBSCRIBE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226538835763054533)
,p_name=>'P164_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>512
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226539209201054533)
,p_name=>'P164_CONVERSATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\7FA4\804A\540D\79F0')
,p_source=>'CONVERSATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226539627484054534)
,p_name=>'P164_DEPT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\90E8\95E8(\53EF\9009)')
,p_source=>'DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EXT_ORG_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_org_id',
'from MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  and del_flag = 0',
'--   and PARENT_ID is not null',
'  and DEPT_TYPE = ''DEPT''',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
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
 p_id=>wwv_flow_imp.id(2226540023841054534)
,p_name=>'P164_FAB_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\5382\533A(\53EF\9009)')
,p_source=>'FAB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'FAB_NAME'
,p_lov=>'select name, fab_id from fnd_fab WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID and DEL_FLAG=0;'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226540482979054534)
,p_name=>'P164_TYPES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\63A8\9001\7EF4\5EA6')
,p_source=>'TYPES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\5382\533A\63A8\9001;0,\90E8\95E8\63A8\9001;1')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226540851945054534)
,p_name=>'P164_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\662F\5426\542F\7528')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'YES_NO_LOV'
,p_lov=>'.'||wwv_flow_imp.id(2316119825628346399)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when=>'P164_ROBOT_SUBSCRIBE_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226541679349054535)
,p_name=>'P164_NOTICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\63A8\9001\65F6\95F4')
,p_source=>'NOTICE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\6309\65E5;DAY,\6309\5468;WEEK,\6309\6708;MONTH')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2231112457975376939)
,p_name=>'P164_SUBSCRIBE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_item_source_plug_id=>wwv_flow_imp.id(2226538004274054529)
,p_prompt=>unistr('\63A8\9001\7C7B\578B')
,p_source=>'SUBSCRIBE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC:\9891\53D1\4E8B\4EF6;FREQUENTLY_EVENT,\8FD0\8425\65E5\62A5;DAILY_OPERATION_REPORT,\79EF\5206\6392\884C\699C;POINT_SORT')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226548069404054538)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226547947005054538)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226548818137054539)
,p_event_id=>wwv_flow_imp.id(2226548069404054538)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226188986452927453)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226549753343054540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226189036093927454)
,p_event_id=>wwv_flow_imp.id(2226188986452927453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P164_CONVERSATION_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804A\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_CONVERSATION_ID''))) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804AID'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_NOTICE_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\7C7B\578B'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_TYPES''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\7EF4\5EA6'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_IS_ENABLE''))) {',
unistr('    alert(''\8BF7\9009\62E9\662F\5426\542F\7528'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P164_SUBSCRIBE_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\7C7B\578B'');'),
'    return false;',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226189205723927456)
,p_event_id=>wwv_flow_imp.id(2226188986452927453)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    ROW_COUNT NUMBER(3) := 0;',
'BEGIN',
'    UPDATE TENANT_FREQUENT_ROBOT_SUBSCRIBE',
'    SET CONVERSATION_NAME = :P164_CONVERSATION_NAME,',
'         CONVERSATION_ID = :P164_CONVERSATION_ID,',
'         REMARK = :P164_REMARK,',
'         UPDATED_BY = :USER_ID,',
'         UPDATE_DATE = SYSDATE,',
'         DEPT_ID = :P164_DEPT_ID,',
'         FAB_ID = :P164_FAB_ID,',
'         TYPES = :P164_TYPES,',
'         NOTICE_TYPE = :P164_NOTICE_TYPE,',
'         IS_ENABLE = :P164_IS_ENABLE,',
'         SUBSCRIBE_TYPE = :P164_SUBSCRIBE_TYPE',
'    WHERE ROBOT_SUBSCRIBE_ID = :P164_ROBOT_SUBSCRIBE_ID;',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P164_ROW_COUNT'', ROW_COUNT);',
'    ',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE( ''P164_ROW_COUNT'' , -1 );',
'END;'))
,p_attribute_02=>'P164_CONVERSATION_NAME,P164_CONVERSATION_ID,P164_REMARK,P164_DEPT_ID,P164_FAB_ID,P164_TYPES,P164_NOTICE_TYPE,P164_IS_ENABLE,P164_SUBSCRIBE_TYPE,P164_ROBOT_SUBSCRIBE_ID,P164_ROW_COUNT'
,p_attribute_03=>'P164_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226189374447927457)
,p_event_id=>wwv_flow_imp.id(2226188986452927453)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P164_ROW_COUNT'') > 0) {',
'',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'    return true;',
'} else {',
unistr('     alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226189445990927458)
,p_event_id=>wwv_flow_imp.id(2226188986452927453)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226189545766927459)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226550166398054540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226576040588366510)
,p_event_id=>wwv_flow_imp.id(2226189545766927459)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P164_CONVERSATION_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804A\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_CONVERSATION_ID''))) {',
unistr('    alert(''\8BF7\8F93\5165\7FA4\804AID'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_NOTICE_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\65F6\95F4'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_TYPES''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\7EF4\5EA6'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P164_SUBSCRIBE_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\63A8\9001\7C7B\578B'');'),
'    return false;',
'}',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226576183567366511)
,p_event_id=>wwv_flow_imp.id(2226189545766927459)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    ROW_COUNT NUMBER(3) := 0;',
'BEGIN',
'    INSERT INTO TENANT_FREQUENT_ROBOT_SUBSCRIBE(CONVERSATION_NAME,CONVERSATION_ID,REMARK,TENANT_ID,BASE_DEPT_ID,CREATED_BY,CREATION_DATE,DEPT_ID,FAB_ID,TYPES,NOTICE_TYPE,SUBSCRIBE_TYPE)',
'    VALUES (:P164_CONVERSATION_NAME,',
'            :P164_CONVERSATION_ID,',
'            :P164_REMARK,',
'            :USERTENANT,',
'            :BASE_DEPT_ID,',
'            :USER_ID,',
'            SYSDATE,',
'            :P164_DEPT_ID,',
'            :P164_FAB_ID,',
'            :P164_TYPES,',
'            :P164_NOTICE_TYPE,',
'            :P164_SUBSCRIBE_TYPE);',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P164_ROW_COUNT'', ROW_COUNT);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE( ''P164_ROW_COUNT'' , -1 );',
'END;'))
,p_attribute_02=>'P164_CONVERSATION_NAME,P164_CONVERSATION_ID,P164_REMARK,P164_DEPT_ID,P164_FAB_ID,P164_TYPES,P164_NOTICE_TYPE,P164_SUBSCRIBE_TYPE,P164_ROW_COUNT'
,p_attribute_03=>'P164_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226576236974366512)
,p_event_id=>wwv_flow_imp.id(2226189545766927459)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P164_ROW_COUNT'') > 0) {',
'',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'    return true;',
'} else {',
unistr('     alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226576340836366513)
,p_event_id=>wwv_flow_imp.id(2226189545766927459)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226550976468054541)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2226538004274054529)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \6676\8C79\9891\53D1\4E8B\4EF6\63A8\9001\914D\7F6E-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43226373713970587
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226551386354054541)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>43226783599970587
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226550554753054541)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2226538004274054529)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6676\8C79\9891\53D1\4E8B\4EF6\63A8\9001\914D\7F6E-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43225951998970587
);
wwv_flow_imp.component_end;
end;
/

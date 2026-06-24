prompt --application/pages/page_00246
begin
--   Manifest
--     PAGE: 00246
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
 p_id=>246
,p_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E')
,p_alias=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3157537937310750562)
,p_plug_name=>unistr('\4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_OPERATION_ID,',
'       SYSTEM_ID,',
'       OPERATION_NAME,',
'       DESCRIPTION,',
'       ENTRY_URL,',
'       AUTH_RANGE,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       IS_ENABLE,',
'       TENANT_ID,',
'       DEL_FLAG',
'  from CODE_SYSTEM_OPERATION',
'WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3157546727958750552)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2386660361967756848)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3157546727958750552)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2386660756391756847)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3157546727958750552)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P246_SYSTEM_OPERATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2386661228205756847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3157546727958750552)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P246_SYSTEM_OPERATION_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(569764512839128337)
,p_name=>'P246_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>'Creation Date'
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(569764642486128338)
,p_name=>'P246_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>'Updated Date'
,p_source=>'UPDATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386647751331756863)
,p_name=>'P246_ROW_COUNT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386648216121756860)
,p_name=>'P246_SYSTEM_OPERATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'SYSTEM_OPERATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386648562862756860)
,p_name=>'P246_SYSTEM_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\5DF2\63A5\5165\7CFB\7EDF')
,p_source=>'SYSTEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SYSTEM_NAME, SYSTEM_ID',
'from CODE_SYSTEM',
'where DEL_FLAG = 0',
'AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386649038378756859)
,p_name=>'P246_OPERATION_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\64CD\4F5C\9879\540D\79F0')
,p_source=>'OPERATION_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>64
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386649416155756859)
,p_name=>'P246_DESCRIPTION'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\64CD\4F5C\9879\63CF\8FF0')
,p_source=>'DESCRIPTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>255
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386649834395756859)
,p_name=>'P246_ENTRY_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'ENTRY_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386650164500756859)
,p_name=>'P246_AUTH_RANGE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\53EF\64CD\4F5C\5BF9\8C61')
,p_source=>'AUTH_RANGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\4EFB\4F55\4EBA;IS_ALL,\6307\5B9A\89D2\8272\6216\90E8\95E8;OTHER')
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386650608033756858)
,p_name=>'P246_AUTH_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\9009\62E9\6307\5B9A\90E8\95E8')
,p_placeholder=>unistr('-\5F85\9009\62E9-')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'EXT_ORG_LOV1'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_org_id',
'from MPF_SHARE_DEPT_V',
'WHERE TENANT_ID = :USERTENANT',
'  and del_flag = 0',
'--   and PARENT_ID is not null',
'  and DEPT_TYPE = ''DEPT''',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2386651036932756857)
,p_name=>'P246_AUTH_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_prompt=>unistr('\9009\62E9\6307\5B9A\7528\6237')
,p_placeholder=>unistr('-\5F85\9009\62E9-')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'USERNAME_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name, ext_user_id',
'from MPF_USER_DEPT_MAIN_ASSO_V',
'WHERE TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :ORG_ID'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2386651359111756857)
,p_name=>'P246_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386651792729756857)
,p_name=>'P246_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386652161319756857)
,p_name=>'P246_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386653025952756856)
,p_name=>'P246_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386653798326756856)
,p_name=>'P246_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_source_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_item_default=>':USERTENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386654218237756856)
,p_name=>'246_AUTH_RANGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386654577375756856)
,p_name=>'246_AUTH_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2386655021220756855)
,p_name=>'246_AUTH_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(3157537937310750562)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2386661861679756833)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2386660361967756848)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386662419971756831)
,p_event_id=>wwv_flow_imp.id(2386661861679756833)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2386662839413756831)
,p_name=>unistr('\6307\5B9A\53EF\64CD\4F5C\5BF9\8C61')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P246_AUTH_RANGE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386663246951756831)
,p_event_id=>wwv_flow_imp.id(2386662839413756831)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\63A7\5236\90E8\95E8/\7528\6237\9009\6846\7684\663E\793A\548C\9690\85CF')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P246_AUTH_RANGE'') == ''IS_ALL'') {',
'    $x_Hide(''P246_AUTH_ID'');',
'    $x_Hide(''P246_AUTH_NAME'');',
'} else {',
'    $x_Show(''P246_AUTH_ID'');',
'    $x_Show(''P246_AUTH_NAME'');',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2386663685334756830)
,p_name=>unistr('\4FDD\5B58\6570\636E')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2386660756391756847)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386664205962756830)
,p_event_id=>wwv_flow_imp.id(2386663685334756830)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\4FEE\6539')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_user_ids  varchar2(2000);',
'    v_dept_ids  varchar2(2000);',
'    v_row_count number(10) := 0;',
'--     v_user_ids varchar2(2000) := ''JA063198'';',
'--     v_dept_ids varchar2(2000) := ''100'';',
'begin',
'',
'    if :P246_AUTH_RANGE = ''IS_ALL'' then',
unistr('        -- \4E3B\8868\65B0\589E\4E00\6761\6570\636E(\9A8C\8BC1\662F\5426\5B58\5728);'),
'        update CODE_SYSTEM_OPERATION',
'        set OPERATION_NAME = :P246_OPERATION_NAME,',
'            DESCRIPTION    =:P246_DESCRIPTION,',
'            AUTH_RANGE     =:P246_AUTH_RANGE',
'        where SYSTEM_OPERATION_ID = :P246_SYSTEM_OPERATION_ID AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        v_row_count := SQL%ROWCOUNT;',
'        apex_util.set_session_state(''P246_ROW_COUNT'', v_row_count);',
'',
'    else',
unistr('        -- \4E3B\8868\65B0\589E\4E00\6761\6570\636E \FF08\9A8C\8BC1\662F\5426\5B58\5728\FF09'),
unistr('        --- \67E5\8BE2\672C\6B21\8981\65B0\589E\7684\4EBA\5458\6570\636E'),
'        for c in ( select u.JOB_NUMBER',
'                   from (select JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V',
'                         where EXT_USER_ID in (',
'                             select *',
'                             from JA_UTILS_PKG.SPLIT_STR(v_user_ids, '','')',
'                         )',
'                         union',
'                         select JOB_NUMBER',
'                         from MPF_USER_DEPT_MAIN_ASSO_V',
'                         where EXT_ORG_ID in (',
'                             select *',
'                             from JA_UTILS_PKG.SPLIT_STR(v_dept_ids, '','')',
'                         )) u',
'                            left join CODE_SYSTEM_OPERATION_AUTH a on u.JOB_NUMBER = a.JOB_NUMBER',
'                   where a.SYSTEM_OPERATION_ID = :P246_SYSTEM_OPERATION_ID',
'                     AND TENANT_ID = :USERTENANT',
'                     AND BASE_DEPT_ID=:BASE_DEPT_ID',
'                     AND DEL_FLAG = 0)',
'',
'            loop',
'',
'                if :P246_AUTH_ID != null AND :P246_AUTH_NAME != null then',
'                    UPDATE CODE_SYSTEM_OPERATION',
'                    SET OPERATION_NAME = :P246_OPERATION_NAME,',
'                        DESCRIPTION    =:P246_DESCRIPTION,',
'                        AUTH_RANGE     = :P246_AUTH_RANGE;',
'                    UPDATE CODE_SYSTEM_OPERATION_AUTH',
'                    SET AUTH_ID   = :P246_AUTH_ID,',
'                        AUTH_NAME =: P246_AUTH_NAME;',
'',
'                else',
'                    if :P246_AUTH_ID != null AND :P246_AUTH_NAME = null then',
'                        UPDATE CODE_SYSTEM_OPERATION',
'                        SET OPERATION_NAME = :P246_OPERATION_NAME,',
'                            DESCRIPTION    =:P246_DESCRIPTION,',
'                            AUTH_RANGE     = :P246_AUTH_RANGE;',
'                        UPDATE CODE_SYSTEM_OPERATION_AUTH',
'                        SET AUTH_ID = :P246_AUTH_ID;',
'',
'                    else',
'                        if :P246_AUTH_ID = null AND :P246_AUTH_NAME != null then',
'                            UPDATE CODE_SYSTEM_OPERATION',
'                            SET OPERATION_NAME = :P246_OPERATION_NAME,',
'                                DESCRIPTION    =:P246_DESCRIPTION,',
'                                AUTH_RANGE     = :P246_AUTH_RANGE;',
'                            UPDATE CODE_SYSTEM_OPERATION_AUTH',
'                            SET AUTH_NAME = :P246_AUTH_NAME;',
'',
'                        end if;',
'                    end loop;',
'                end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        DBMS_OUTPUT.PUT_LINE(v_err_msg);',
'end;'))
,p_attribute_02=>'P246_OPERATION_NAME,P246_DESCRIPTION,P246_AUTH_RANGE,P246_AUTH_ID,P246_AUTH_NAME,P246_SYSTEM_OPERATION_ID'
,p_attribute_03=>'P246_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386664706112756829)
,p_event_id=>wwv_flow_imp.id(2386663685334756830)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8BBE\7F6E\540E\6821\9A8C')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P246_AUTH_RANGE'').length == 0 || ($v(''P246_AUTH_ID'').length == 0 && $v(''P246_AUTH_NAME'').length ==0)) {',
unistr('    alert(''\53EF\64CD\4F5C\5BF9\8C61\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386665173530756829)
,p_event_id=>wwv_flow_imp.id(2386663685334756830)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8BBE\7F6E\540E\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P246_ROW_COUNT'') > 0) {',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386665658876756829)
,p_event_id=>wwv_flow_imp.id(2386663685334756830)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2386666087045756829)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2386666583996756829)
,p_event_id=>wwv_flow_imp.id(2386666087045756829)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P246_AUTH_RANGE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'IS_ALL'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2386659665823756849)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3157537937310750562)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>261096525252971993
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2386661599535756833)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>261098458964971977
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2386659316239756850)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3157537937310750562)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \4E8C\7EF4\7801\64CD\4F5C\5165\53E3\8BBE\7F6E_\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>261096175668971994
);
wwv_flow_imp.component_end;
end;
/

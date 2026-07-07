prompt --application/pages/page_00157
begin
--   Manifest
--     PAGE: 00157
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>157
,p_name=>unistr('\5173\6CE8\5206\7EC4')
,p_alias=>'FAVORITE_GROUP_DIALOG'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5173\6CE8\5206\7EC4')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3709714323410859806)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'280'
,p_dialog_width=>'480'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001570000000001)
,p_plug_name=>unistr('\5206\7EC4\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760020812986264229)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FMP_FAVORITE_GROUP'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001570000000002)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001570000000011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910001570000000002)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001570000000010)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(910001570000000002)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P157_FAVORITE_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_warn_on_unsaved_changes=>null
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001570000000012)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(910001570000000002)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P157_FAVORITE_GROUP_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_warn_on_unsaved_changes=>null
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000020)
,p_name=>'P157_FAVORITE_GROUP_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_source_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_source=>'FAVORITE_GROUP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000021)
,p_name=>'P157_GROUP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_source_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_prompt=>unistr('\5206\7EC4\540D\79F0')
,p_placeholder=>unistr('\8BF7\8F93\5165\5206\7EC4\540D\79F0')
,p_source=>'GROUP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(9760156813457264295)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'Y',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000022)
,p_name=>'P157_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_source_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_default=>':MPF_USER_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000023)
,p_name=>'P157_SORT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_source_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
  'select nvl(max(nvl(sort, 0)), 0) + 1',
  '  from fmp_favorite_group',
  ' where user_id = :MPF_USER_ID',
  '   and nvl(del_flag, 0) = 0'))
,p_item_default_type=>'SQL_QUERY'
,p_source=>'SORT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001570000000024)
,p_name=>'P157_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_source_plug_id=>wwv_flow_imp.id(910001570000000001)
,p_item_default=>'0'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(910001570000000030)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(910001570000000011)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(910001570000000031)
,p_event_id=>wwv_flow_imp.id(910001570000000030)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(910001570000000040)
,p_validation_name=>unistr('\6821\9A8C\5206\7EC4\6240\6709\8005')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
  'declare',
  '    l_count number;',
  'begin',
  '    if :P157_FAVORITE_GROUP_ID is null then',
  '        return true;',
  '    end if;',
  '',
  '    select count(*)',
  '      into l_count',
  '      from fmp_favorite_group',
  '     where favorite_group_id = :P157_FAVORITE_GROUP_ID',
  '       and user_id = :MPF_USER_ID',
  '       and nvl(del_flag, 0) = 0;',
  '',
  '    return l_count = 1;',
  'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\65E0\6743\7EF4\62A4\8BE5\5173\6CE8\5206\7EC4')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001570000000053)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\51C6\5907\8868\5355\9ED8\8BA4\503C')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
  'begin',
  '    :P157_USER_ID := nvl(:P157_USER_ID, :MPF_USER_ID);',
  '    :P157_DEL_FLAG := nvl(:P157_DEL_FLAG, 0);',
  '',
  '    if :REQUEST = ''CREATE'' and :P157_SORT is null then',
  '        select nvl(max(nvl(sort, 0)), 0) + 1',
  '          into :P157_SORT',
  '          from fmp_favorite_group',
  '         where user_id = :MPF_USER_ID',
  '           and nvl(del_flag, 0) = 0;',
  '    end if;',
  'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001570000000050)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(910001570000000001)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5173\6CE8\5206\7EC4')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001570000000051)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001570000000052)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(910001570000000001)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5173\6CE8\5206\7EC4')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

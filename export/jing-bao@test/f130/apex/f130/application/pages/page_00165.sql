prompt --application/pages/page_00165
begin
--   Manifest
--     PAGE: 00165
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
 p_id=>165
,p_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_alias=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2226697588648471013)
,p_plug_name=>unistr('\5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FND_MAPS_WORK_STATION'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2226706386679471019)
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
 p_id=>wwv_flow_imp.id(2226706729209471020)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2226706386679471019)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2226708575317471021)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2226706386679471019)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2359869497002135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P165_MAPS_WORK_STATION_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226577895268366529)
,p_name=>'P165_FAB'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'FAB_NAME'
,p_lov=>'select name, fab_id from fnd_fab WHERE TENANT_ID = :USERTENANT and BASE_DEPT_ID = :ORG_ID and DEL_FLAG=0;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578078232366530)
,p_name=>'P165_LINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\7EBF\522B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND TYPE = 2 AND FAB_ID = :P165_FAB'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P165_FAB'
,p_ajax_items_to_submit=>'P165_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578147465366531)
,p_name=>'P165_OPT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\5DE5\6BB5')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND TYPE = 1 AND FAB_ID = :P165_FAB'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P165_FAB,P165_LINE'
,p_ajax_items_to_submit=>'P165_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578289235366532)
,p_name=>'P165_ROW_COUNT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578502990366535)
,p_name=>'P165_CREATED_BY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578590546366536)
,p_name=>'P165_UPDATED_BY'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_default=>':APP_USER'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226578710285366537)
,p_name=>'P165_TENANT_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_default=>':USERTENANT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226697989236471013)
,p_name=>'P165_MAPS_WORK_STATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_source=>'MAPS_WORK_STATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226699963873471016)
,p_name=>'P165_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
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
 p_id=>wwv_flow_imp.id(2226700717982471017)
,p_name=>'P165_MAP_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_source=>'MAP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226701149414471017)
,p_name=>'P165_WORK_STATION_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\5DE5\4F4D\540D\79F0')
,p_source=>'WORK_STATION_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,WORK_STATION_ID FROM FND_WORK_STATION WHERE TENANT_ID = :USERTENANT'
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
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
 p_id=>wwv_flow_imp.id(2226701505131471017)
,p_name=>'P165_MAP_X_PIXEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\5750\6807X')
,p_source=>'MAP_X_PIXEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226701895798471017)
,p_name=>'P165_MAP_Y_PIXEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\5750\6807Y')
,p_source=>'MAP_Y_PIXEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2226702292123471018)
,p_name=>'P165_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\6392\5E8F')
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227666651614331312)
,p_name=>'P165_BASE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\57FA\5730\540D\79F0')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name,base_id from tenant_base where del_flag = 0 and tenant_id = :usertenant and BASE_DEPT_ID =:BASE_DEPT_ID'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2359868698906135325)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2227667723837331323)
,p_name=>'P165_IS_HIDE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\662F\5426\9690\85CF')
,p_source=>'IS_HIDE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'YES_NO_LOV'
,p_lov=>'.'||wwv_flow_imp.id(2316119825628346399)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2227667800530331324)
,p_name=>'P165_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\662F\5426\505C\5C97')
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC:\505C\5C97;0,\542F\7528;1')
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
 p_id=>wwv_flow_imp.id(2227668426428331330)
,p_name=>'P165_MAX_USERS_COUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_item_source_plug_id=>wwv_flow_imp.id(2226697588648471013)
,p_prompt=>unistr('\6700\5927\4EBA\6570')
,p_source=>'MAX_USERS_COUNT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2359868381483135324)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226706813983471020)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2226706729209471020)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226707686164471020)
,p_event_id=>wwv_flow_imp.id(2226706813983471020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2226578325170366533)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P165_OPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2226578426687366534)
,p_event_id=>wwv_flow_imp.id(2226578325170366533)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P165_MAP_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT MAP_ID K,MAP_ID V FROM FND_MAPS WHERE TENANT_ID = :USERTENANT AND  BASE_DEPT_ID =:BASE_DEPT_ID AND FAB_ID = :P165_FAB AND MAP_AREA_X_ID = :P165_OPT AND MAP_AREA_Y_ID = :P165_LINE'
,p_attribute_07=>'P165_FAB,P165_LINE,P165_OPT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226709701627471021)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2226697588648471013)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43385098873387067
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226710096132471021)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>43385493378387067
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2226709293497471021)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2226697588648471013)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5DE5\4F4D\5730\56FE\914D\7F6E-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43384690743387067
);
wwv_flow_imp.component_end;
end;
/

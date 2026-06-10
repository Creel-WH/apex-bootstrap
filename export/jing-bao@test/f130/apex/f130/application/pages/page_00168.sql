prompt --application/pages/page_00168
begin
--   Manifest
--     PAGE: 00168
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
 p_id=>168
,p_name=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_alias=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_dialog_width=>'720'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2200476266274948500)
,p_plug_name=>unistr('\5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'FND_FAB'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2200487810417948512)
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
 p_id=>wwv_flow_imp.id(2200488238033948512)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2200487810417948512)
,p_button_name=>'CANCEL'
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
 p_id=>wwv_flow_imp.id(2200490384641948515)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2200487810417948512)
,p_button_name=>'CREATE'
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
 p_id=>wwv_flow_imp.id(2198788839697681792)
,p_name=>'P168_FAB'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_prompt=>unistr('\5382\533A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND IS_WORK_STATION_ENABLE = 1'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
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
 p_id=>wwv_flow_imp.id(2198788917209681793)
,p_name=>'P168_LINE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_prompt=>unistr('\7EBF\522B')
,p_display_as=>'PLUGIN_PL.OSTROWSKIBARTOSZ.APEX.ENHANCEDLOVITEM'
,p_lov=>'SELECT NAME D,AREA_ID R FROM FND_AREAS WHERE DEL_FLAG = 0 AND TYPE = 2 AND IS_ENABLE = 1 AND FAB_ID = :P168_FAB AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID ORDER BY AREA_ID '
,p_lov_cascade_parent_items=>'P168_FAB'
,p_ajax_items_to_submit=>'P168_FAB'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'RS:HT',
  'attribute_04', '%D%',
  'attribute_05', 'AUTOCOMPLETE:MS',
  'attribute_14', '200',
  'attribute_15', '20')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198788968206681794)
,p_name=>'P168_IS_ENABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_prompt=>unistr('\5C97\4F4D\72B6\6001')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\505C\5C97;0,\542F\7528;1')
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198789086694681795)
,p_name=>'P168_ROW_COUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2200476637110948501)
,p_name=>'P168_FAB_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_item_source_plug_id=>wwv_flow_imp.id(2200476266274948500)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Fab Id'
,p_source=>'FAB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2200488286987948512)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2200488238033948512)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2200489110475948514)
,p_event_id=>wwv_flow_imp.id(2200488286987948512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2198789164111681796)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2200490384641948515)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198789327373681797)
,p_event_id=>wwv_flow_imp.id(2198789164111681796)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$v(''P168_LINE'')){',
unistr('    alert(''\8BF7\9009\62E9\7EBF\522B'');'),
'    return false;',
'}',
'',
'if (!$v(''P168_IS_ENABLE'')){',
unistr('    alert(''\8BF7\9009\62E9\5C97\4F4D\72B6\6001'');'),
'    return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198789448791681798)
,p_event_id=>wwv_flow_imp.id(2198789164111681796)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    UPDATE FND_MAPS_WORK_STATION',
'    SET IS_ENABLE = :P168_IS_ENABLE',
'    WHERE TENANT_ID = :USERTENANT',
'    AND MAP_ID IN (SELECT MAP_ID FROM FND_MAPS WHERE DEL_FLAG = 0 AND IS_ENABLE = 1 AND FAB_ID = :P168_FAB AND MAP_AREA_Y_ID IN (SELECT COLUMN_VALUE FROM TABLE(SPLITSTR(:P168_LINE,'':''))) AND TENANT_ID = :USERTENANT);',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P168_ROW_COUNT'',ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P168_ROW_COUNT'',-1);',
'END;'))
,p_attribute_02=>'P168_FAB,P168_LINE,P168_IS_ENABLE'
,p_attribute_03=>'P168_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198789533873681799)
,p_event_id=>wwv_flow_imp.id(2198789164111681796)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P168_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198789588596681800)
,p_event_id=>wwv_flow_imp.id(2198789164111681796)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2200491178471948517)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2200476266274948500)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46047306809514112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2200491618707948517)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>46047747045514112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2200490817088948516)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2200476266274948500)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5C97\4F4D\72B6\6001\4FEE\6539-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46046945426514111
);
wwv_flow_imp.component_end;
end;
/

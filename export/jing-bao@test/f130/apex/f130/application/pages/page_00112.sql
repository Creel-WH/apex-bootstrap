prompt --application/pages/page_00112
begin
--   Manifest
--     PAGE: 00112
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
 p_id=>112
,p_name=>unistr('\4E8B\4EF6\914D\7F6E\8868\5355-\4FEE\6539')
,p_alias=>unistr('\4E8B\4EF6\914D\7F6E\8868\5355-\4FEE\6539')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8B\4EF6\914D\7F6E\8868\5355')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2196043711207582678)
,p_plug_name=>unistr('\4E8B\4EF6\914D\7F6E\8868\5355-\4FEE\6539')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.EVENT_CATEGORY_ID,',
'       p.PARENT_CODE,',
'       (select DISTINCT s.NAME',
'        from TENANT_EVENT_CATEGORY s',
'        where s.CODE = p.PARENT_CODE',
'          and s.TENANT_ID = :USERTENANT) pName,',
'       p.CODE,',
'       p.NAME,',
'       lib.sName,',
'       lib2.scode',
'from TENANT_EVENT_CATEGORY p',
'         left join (select listagg(tep.NAME, '','') as sName, l.CATEGORY_SECOND_CODE',
'                    from TENANT_EVENT_PHENOMENON tep',
'                             left join tenant_event_library l',
'                                       on tep.CODE = l.PHENOMENON_CODE',
'                    where tep.TENANT_ID = :USERTENANT',
'                      and l.TENANT_ID = :USERTENANT',
'                    --   and p.BASE_DEPT_ID = :BASE_DEPT_ID',
'                      and tep.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    and l.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    group by l.CATEGORY_SECOND_CODE',
') lib on p.CODE = lib.CATEGORY_SECOND_CODE',
'',
' left join (select listagg(tep.CODE, '','') as sCode, l.CATEGORY_SECOND_CODE',
'                    from TENANT_EVENT_PHENOMENON tep',
'                             left join tenant_event_library l',
'                                       on tep.CODE = l.PHENOMENON_CODE',
'                    where tep.TENANT_ID = :USERTENANT',
'                      and l.TENANT_ID = :USERTENANT',
'                      and tep.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    and l.BASE_DEPT_ID = :BASE_DEPT_ID',
'                    group by l.CATEGORY_SECOND_CODE',
') lib2 on p.CODE = lib2.CATEGORY_SECOND_CODE',
'',
'where p.NODE_LEVEL = 2',
'  and p.DEL_FLAG = 0',
'  AND p.tenant_id = :USERTENANT',
'and p.BASE_DEPT_ID = :BASE_DEPT_ID',
'order by p.PARENT_CODE;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2196048925750582684)
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
 p_id=>wwv_flow_imp.id(2196049303139582684)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2196048925750582684)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2196050951954582686)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2196048925750582684)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2196051267391582686)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2196048925750582684)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P112_EVENT_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2196051717874582687)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2196048925750582684)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P112_EVENT_CATEGORY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196044120350582679)
,p_name=>'P112_EVENT_CATEGORY_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Event Category Id'
,p_source=>'EVENT_CATEGORY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196044429940582680)
,p_name=>'P112_PARENT_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B')
,p_source=>'PARENT_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,code val from tenant_event_category where node_level = 1 and del_flag = 0 and is_hide = 0 and tenant_id = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2196044837548582681)
,p_name=>'P112_PNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B')
,p_source=>'PNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,code val from tenant_event_category where node_level = 1 and del_flag = 0 and is_hide = 0 and tenant_id = :USERTENANT',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>128
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2196045241030582682)
,p_name=>'P112_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,code val from tenant_event_category where node_level = 2 and del_flag = 0 and is_hide = 0 and tenant_id = :USERTENANT and parent_code = :P112_PARENT_CODE',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
';',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P112_PARENT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>32
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2196045599332582682)
,p_name=>'P112_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,code val from tenant_event_category where node_level = 2 and del_flag = 0 and is_hide = 0 and tenant_id = :USERTENANT and parent_code = :P112_PARENT_CODE',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
';',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P112_PARENT_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>60
,p_cMaxlength=>128
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
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
 p_id=>wwv_flow_imp.id(2196046019303582682)
,p_name=>'P112_SNAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(t.code, '','') key,listagg(t.CODE,'','') val',
'from TENANT_EVENT_PHENOMENON t',
'         inner join tenant_event_library e on t.CODE = e.PHENOMENON_CODE',
'where e.CATEGORY_SECOND_CODE = :P112_CODE',
'and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'and e.BASE_DEPT_ID = :BASE_DEPT_ID',
';'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61 2(\53EF\591A\9009)')
,p_source=>'SNAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select code key,code val from TENANT_EVENT_PHENOMENON ',
'where BASE_DEPT_ID = :BASE_DEPT_ID',
'order by CODE;'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>4000
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196046389974582682)
,p_name=>'P112_SCODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_source_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(t.name, '','') key,listagg(t.CODE,'','') val',
'from TENANT_EVENT_PHENOMENON t',
'         inner join tenant_event_library e on t.CODE = e.PHENOMENON_CODE',
'where e.CATEGORY_SECOND_CODE = :P112_CODE and  e.CATEGORY_FIRST_CODE=:P112_PARENT_CODE',
'and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'and e.BASE_DEPT_ID = :BASE_DEPT_ID',
';'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61 (\53EF\591A\9009)')
,p_source=>'SCODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select name key,code val from TENANT_EVENT_PHENOMENON where TENANT_ID=:USERTENANT ',
'and BASE_DEPT_ID = :BASE_DEPT_ID',
'order by CODE;'))
,p_lov_display_null=>'YES'
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196058416860614963)
,p_name=>'P112_ROW_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2196043711207582678)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196049402274582684)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2196049303139582684)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196050189068582685)
,p_event_id=>wwv_flow_imp.id(2196049402274582684)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2288415274011794908)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2196051267391582686)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288415425867794909)
,p_event_id=>wwv_flow_imp.id(2288415274011794908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'console.log($v(''P112_SCODE''));',
'console.log($v(''P112_PARENT_CODE''));',
'console.log($v(''P112_CODE''));',
'',
'apex.server.process(''UPDATE_EVENT_LIBRARY'',',
'    { x01: $v(''P112_SCODE''), x02: $v(''P112_PARENT_CODE''), x03: $v(''P112_CODE'') },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {           ',
'            console.log(pData);',
'          ',
'',
'        },',
'        error: function (e) {',
'          ',
'            ',
'        },',
'        dataType: "text"                        // Response type',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2288415527591794910)
,p_event_id=>wwv_flow_imp.id(2288415274011794908)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196058182699614961)
,p_name=>unistr('\521B\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2196051717874582687)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196058287715614962)
,p_event_id=>wwv_flow_imp.id(2196058182699614961)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    count1    number(3);',
'    row_count number(3);',
'    pCode     nvarchar2(50);',
'    cursor c_job is select *',
'                    from (select * from table ( SPLITSTR(:P112_SCODE, '','') ));',
'',
'begin',
'',
'    delete',
'    from tenant_event_library',
'    where CATEGORY_FIRST_CODE = :P112_PARENT_CODE',
'      and CATEGORY_SECOND_CODE = :P112_CODE',
'      and BASE_DEPT_ID = :BASE_DEPT_ID;',
'    row_count := 0;',
'',
'    for c_row in c_job',
'        loop',
'            -- select count(*) into count1 from tenant_event_library where CATEGORY_FIRST_CODE=:P112_PARENT_CODE and CATEGORY_SECOND_CODE=:P112_CODE and PHENOMENON_CODE= c_row.COLUMN_VALUE;',
'',
'',
'            select count(*) into count1 from dual where instr(SUBSTR(c_row.column_value, 0, 1), ''C'') > 0;',
'            IF count1 = 1 THEN',
'                pCode := c_row.COLUMN_VALUE;',
'            ELSE',
'                select code into pCode from TENANT_EVENT_PHENOMENON2 WHERE name = c_row.column_value;',
'            END IF;',
'',
'            insert into tenant_event_library(CREATED_BY, UPDATED_BY, TENANT_ID, REMARK,',
'                                             CATEGORY_FIRST_CODE, CATEGORY_SECOND_CODE, PHENOMENON_CODE,BASE_DEPT_ID)',
'            values (apex_custom_auth.get_user,',
'                    apex_custom_auth.get_user,',
'                    apex_util.get_session_state(''USERTENANT''),',
'                    null,',
'                    :P112_PARENT_CODE,',
'                    :P112_CODE,',
'                    pCode,',
'                    :BASE_DEPT_ID);',
'            row_count := row_count + SQL%ROWCOUNT;',
'',
'',
'        end loop;',
'    apex_util.set_session_state(''P112_ROW_COUNT'', row_count);',
'',
'end;'))
,p_attribute_02=>'P112_PNAME,P112_NAME,P112_SNAME,P112_PARENT_CODE,P112_CODE,P112_SCODE'
,p_attribute_03=>'P112_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196058545232614964)
,p_event_id=>wwv_flow_imp.id(2196058182699614961)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'apex.server.process(''UPDATE_EVENT_LIBRARY'',',
'    { x01: $v(''P112_SCODE''), x02: $v(''P112_PARENT_CODE''), x03: $v(''P112_CODE'') },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {           ',
'            console.log(pData);',
'          ',
'',
'        },',
'        error: function (e) {',
'          ',
'            ',
'        },',
'        dataType: "text"                        // Response type',
'    }',
');',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196058615262614965)
,p_event_id=>wwv_flow_imp.id(2196058182699614961)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196059912776614978)
,p_name=>unistr('\66F4\6539\503C')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P112_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196060050960614979)
,p_event_id=>wwv_flow_imp.id(2196059912776614978)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_SCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(t.name,'','') key',
'from TENANT_EVENT_PHENOMENON t',
'         inner join tenant_event_library e on t.CODE = e.PHENOMENON_CODE and e.TENANT_ID=:USERTENANT',
'where e.CATEGORY_SECOND_CODE = :P112_CODE and t.TENANT_ID=:USERTENANT',
'and t.BASE_DEPT_ID = :BASE_DEPT_ID',
'and e.BASE_DEPT_ID = :BASE_DEPT_ID',
' ;',
'',
'',
'',
''))
,p_attribute_07=>'P112_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196060435327614983)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P112_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196060524638614984)
,p_event_id=>wwv_flow_imp.id(2196060435327614983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P112_SCODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (select listagg(name, '','')',
'        from (select *',
'              from TENANT_EVENT_PHENOMENON',
'              where CODE in (select l.PHENOMENON_CODE',
'                             from tenant_event_library l',
'                             where l.CATEGORY_SECOND_CODE = :P112_NAME',
'                             and BASE_DEPT_ID = :BASE_DEPT_ID',
'                             ))) key,',
'       (select listagg(code, '','')',
'        from (select *',
'              from TENANT_EVENT_PHENOMENON',
'              where CODE in (select l.PHENOMENON_CODE',
'                             from tenant_event_library l',
'                             where l.CATEGORY_SECOND_CODE = :P112_NAME ',
'                             and BASE_DEPT_ID = :BASE_DEPT_ID',
'                             ))) val',
'from dual;'))
,p_attribute_07=>'P112_NAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2197459576192785786)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2197459712415785787)
,p_event_id=>wwv_flow_imp.id(2197459576192785786)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',112,''\4E8B\4EF6\914D\7F6E\8868\5355-\4FEE\6539'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2196052872452582688)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>41609000790148283
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2196052105894582688)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2196043711207582678)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \4E8B\4EF6\914D\7F6E\8868\5355-\4FEE\6539')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>41608234232148283
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2288415181724794907)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE_EVENT_LIBRARY'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    count1    number(10);',
'    row_count number(10);',
'    pCode     nvarchar2(50);',
'    count2    number(10);',
'    cursor c_job is select *',
'                    from (select * from table ( SPLITSTR(apex_application.g_x01, '':'') ));',
'',
'begin',
'    apex_util.set_session_state(''P112_SNAME'', apex_application.g_x01);',
'    delete',
'    from tenant_event_library',
'    where CATEGORY_FIRST_CODE = apex_application.g_x02',
'      and CATEGORY_SECOND_CODE = apex_application.g_x03',
'    and BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    for c_row in c_job',
'        loop',
'            htp.prn(c_row.COLUMN_VALUE);',
'            pCode := c_row.COLUMN_VALUE;',
unistr('            --\67E5\8BE2\6570\636E\662F\5426\5B58\5728'),
'            select count(*)',
'            into count2',
'            from tenant_event_library',
'            where CATEGORY_FIRST_CODE = apex_application.g_x02',
'              and CATEGORY_SECOND_CODE = apex_application.g_x03',
'              and PHENOMENON_CODE = pCode',
'            and BASE_DEPT_ID = :BASE_DEPT_ID',
'            ;',
'',
'            if count2 = 0 then',
'',
'                insert into tenant_event_library(CREATED_BY, UPDATED_BY, TENANT_ID, REMARK,',
'                                                 CATEGORY_FIRST_CODE, CATEGORY_SECOND_CODE, PHENOMENON_CODE,BASE_DEPT_ID)',
'                values (apex_custom_auth.get_user,',
'                        apex_custom_auth.get_user,',
'                        apex_util.get_session_state(''USERTENANT''),',
'                        null,',
'                        apex_application.g_x02,',
'                        apex_application.g_x03,',
'                        pCode,',
'                        :BASE_DEPT_ID);',
'',
'            end if;',
'        end loop;',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>133971310062360502
);
wwv_flow_imp.component_end;
end;
/

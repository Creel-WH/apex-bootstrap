prompt --application/pages/page_00248
begin
--   Manifest
--     PAGE: 00248
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
 p_id=>248
,p_name=>unistr('\6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_alias=>unistr('\6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'$(''.ui-dialog-titlebar-close'', window.parent.document).append(''<span class="ui-button-icon ui-icon ui-icon-closethick"></span>'');'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#P248_KNOWLEDGE_NAME {',
'    margin-top: -25px;',
'    height: 50px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2382577952099810146)
,p_plug_name=>unistr('\6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DEVICE_ID,',
'       DEVICE_CODE,',
'       DEVICE_NAME,',
'       FAB_ID,',
'       MANAGEMENT_EXT_ORG_ID,',
'       CATEGORY_FIRST_CODE,',
'       CATEGORY_SECOND_CODE,',
'       LINE_ID,',
'       AREA_ID,',
'       IP,',
'       REMARK,',
'       TENANT_ID,',
'       IS_ENABLE',
'from CODE_DEVICE WHERE BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2382587437660810158)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286666486182554749)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2382587783829810158)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2382587437660810158)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2382589653361810161)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2382587437660810158)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5E94\7528\66F4\6539')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P248_DEVICE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2382590051030810161)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2382587437660810158)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_condition=>'P248_DEVICE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152449119373082899)
,p_name=>'P248_KNOWLEDGE_NAME'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'-- listagg(e.KNOWLEDGE_NAME, '':'') within group ( order by e.KNOWLEDGE_ID) key,',
'       listagg(e.KNOWLEDGE_ID, '':'') within group ( order by e.KNOWLEDGE_ID)   val',
'from CODE_KNOWLEDGE e',
'where exists(',
'        select 1',
'        from CODE_KNOWLEDGE_DEVICE_ASSO s',
'        where s.DEVICE_ID = :P248_DEVICE_ID',
'          and e.KNOWLEDGE_ID = s.KNOWLEDGE_ID',
'    )',
'  and e.DEL_FLAG = 0',
'  and e.TENANT_ID = :USERTENANT',
'  AND e.BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_item_default_type=>'SQL_QUERY_COLON'
,p_prompt=>unistr('\8D44\6599\5E93')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select e.KNOWLEDGE_NAME, e.KNOWLEDGE_ID',
'from CODE_KNOWLEDGE e',
'where  e.DEL_FLAG=0 and e.TENANT_ID=:USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152449217757082900)
,p_name=>'P248_KNOWLEDGE_NAME_RAW'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'-- listagg(e.KNOWLEDGE_NAME, '':'') within group ( order by e.KNOWLEDGE_ID) key,',
'       listagg(e.KNOWLEDGE_ID, '':'') within group ( order by e.KNOWLEDGE_ID)   val',
'from CODE_KNOWLEDGE e',
'where exists(',
'        select 1',
'        from CODE_KNOWLEDGE_DEVICE_ASSO s',
'        where s.DEVICE_ID = :P248_DEVICE_ID',
'          and e.KNOWLEDGE_ID = s.KNOWLEDGE_ID',
'    )',
'  and e.DEL_FLAG = 0',
'  and e.TENANT_ID = :USERTENANT',
'  AND e.BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_item_default_type=>'SQL_QUERY_COLON'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382578319314810149)
,p_name=>'P248_DEVICE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Device Id'
,p_source=>'DEVICE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382578715021810152)
,p_name=>'P248_DEVICE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\8BBE\5907\7F16\7801')
,p_source=>'DEVICE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382579136602810153)
,p_name=>'P248_DEVICE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\8BBE\5907\540D\79F0')
,p_source=>'DEVICE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>20
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382579481142810153)
,p_name=>'P248_FAB_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\5382\533A')
,p_source=>'FAB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('select decode(DEL_FLAG,0,NAME,NAME||''\FF08\5DF2\5931\6548\FF09'') NAME,FAB_ID from FND_FAB where TENANT_ID = :USERTENANT  AND BASE_DEPT_ID=:BASE_DEPT_ID')
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382579953637810154)
,p_name=>'P248_MANAGEMENT_EXT_ORG_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\8D23\4EFB\90E8\95E8')
,p_source=>'MANAGEMENT_EXT_ORG_ID'
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
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382580270700810154)
,p_name=>'P248_CATEGORY_FIRST_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B')
,p_source=>'CATEGORY_FIRST_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('select decode(DEL_FLAG,0,NAME,NAME||''\FF08\5DF2\5931\6548\FF09'') name,code from TENANT_EVENT_CATEGORY where NODE_LEVEL=1 and TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID;')
,p_lov_display_null=>'YES'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382580723163810154)
,p_name=>'P248_CATEGORY_SECOND_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B')
,p_source=>'CATEGORY_SECOND_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(DEL_FLAG,0,NAME,NAME||''\FF08\5DF2\5931\6548\FF09'') name,code from TENANT_EVENT_CATEGORY'),
' where TENANT_ID = :USERTENANT and PARENT_CODE=:P248_CATEGORY_FIRST_CODE and NODE_LEVEL=2 AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P248_CATEGORY_FIRST_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382581072821810154)
,p_name=>'P248_LINE_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\4EA7\7EBF')
,p_source=>'LINE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(DEL_FLAG,0,NAME,NAME||''\FF08\5DF2\5931\6548\FF09'') NAME,AREA_ID from FND_AREAS where  TYPE=2 '),
'and TENANT_ID = :USERTENANT   and FAB_ID=:P248_FAB_ID AND BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P248_FAB_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382581539443810154)
,p_name=>'P248_AREA_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\5DE5\6BB5')
,p_source=>'AREA_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select decode(DEL_FLAG,0,NAME,NAME||''\FF08\5DF2\5931\6548\FF09'') NAME,AREA_ID from FND_AREAS where  TYPE=1'),
'and TENANT_ID = :USERTENANT   and FAB_ID=:P248_FAB_ID AND BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P248_FAB_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>32
,p_cMaxlength=>50
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
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
 p_id=>wwv_flow_imp.id(2382581947784810155)
,p_name=>'P248_IP'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>'IP'
,p_source=>'IP'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>39
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382582292410810155)
,p_name=>'P248_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382582673682810155)
,p_name=>'P248_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2382583062818810155)
,p_name=>'P248_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_item_source_plug_id=>wwv_flow_imp.id(2382577952099810146)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(2374289250467305146)
,p_validation_name=>unistr('\9A8C\8BC1code\91CD\590D')
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_count number(10);',
'begin',
'    if :P248_DEVICE_ID is null then',
'        select count(1)',
'        into v_count',
'        from CODE_DEVICE',
'        where TENANT_ID = :USERTENANT',
'          and DEVICE_CODE = :P248_DEVICE_CODE',
'          and DEL_FLAG = 0',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    else',
'        select count(1)',
'        into v_count',
'        from CODE_DEVICE',
'        where TENANT_ID = :USERTENANT',
'          and DEVICE_CODE = :P248_DEVICE_CODE',
'          and DEL_FLAG = 0',
'          and DEVICE_ID != :P248_DEVICE_ID',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    end if;',
'    if v_count > 0 then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\8BBE\5907\7F16\7801\91CD\590D')
,p_associated_item=>wwv_flow_imp.id(2382578715021810152)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1641161916476863338)
,p_validation_name=>unistr('\9A8C\8BC1code\662F\5426\4E2D\6587')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
' ',
'    if REGEXP_LIKE(:P248_DEVICE_CODE, UNISTR(''[\4E00-\9FA5]'')) or REGEXP_LIKE(:P248_DEVICE_CODE, '' '') then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\8BBE\5907\7F16\7801\5305\542B\4E2D\6587\6216\8005\7A7A\683C')
,p_associated_item=>wwv_flow_imp.id(2382578715021810152)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1412008699959819038)
,p_validation_name=>unistr('\9A8C\8BC1code\662F\5426\5305\542B\7279\6B8A\5B57\7B26')
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'--     if regexp_like(regexp_replace(:P248_DEVICE_CODE, ''[a-zA-Z0-9.]'', ''''), ''[+#&-_@~]'') then',
'    if regexp_replace(regexp_replace(:P248_DEVICE_CODE, ''[a-zA-Z0-9]'', ''''), ''[-+#&_@~]'', '''') is not null then',
'        return false;',
'    else',
'        return true;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('\8BBE\5907\7F16\7801\53EA\80FD\5305\542B\4EE5\4E0B\7279\6B8A\5B57\7B26 +#&-_@~')
,p_associated_item=>wwv_flow_imp.id(2382578715021810152)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(1641161817684863337)
,p_validation_name=>unistr('\9A8C\8BC1IP')
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'begin',
'',
'    if :P248_IP is not null then',
'',
'        if validate_ip(:P248_IP) or REGEXP_LIKE(:P248_IP, ''^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$'') then',
'            return true;',
'        else',
'            return false;',
'        end if;',
'    end if;',
'    return true;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('IP\683C\5F0F\9519\8BEF')
,p_always_execute=>'Y'
,p_associated_item=>wwv_flow_imp.id(2382581947784810155)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2382587930892810158)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2382587783829810158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2382588723487810161)
,p_event_id=>wwv_flow_imp.id(2382587930892810158)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2382590788051810162)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\5904\7406\8868\5355 \6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_device_id number(20);',
'begin',
'    if :P248_DEVICE_ID is null then',
'        insert into CODE_DEVICE(device_code, device_name, fab_id, management_ext_org_id, category_first_code,',
'                                category_second_code, line_id, area_id, ip, remark,',
'                                tenant_id, created_by, creation_date, updated_by, updated_date, del_flag, BASE_DEPT_ID)',
'        values (:P248_DEVICE_CODE, :P248_DEVICE_NAME, :P248_FAB_ID, :P248_MANAGEMENT_EXT_ORG_ID,',
'                :P248_CATEGORY_FIRST_CODE, :P248_CATEGORY_SECOND_CODE,',
'                :P248_LINE_ID, :P248_AREA_ID, :P248_IP, :P248_REMARK, :USERTENANT, :USER_ID, sysdate, :USER_ID, sysdate,',
'                0, :BASE_DEPT_ID)',
'        returning DEVICE_ID into v_device_id;',
'    else',
'        update CODE_DEVICE',
'        set DEVICE_CODE=:P248_DEVICE_CODE,',
'            DEVICE_NAME=:P248_DEVICE_NAME,',
'            FAB_ID=:P248_FAB_ID,',
'            LINE_ID=:P248_LINE_ID,',
'            AREA_ID=:P248_AREA_ID,',
'            MANAGEMENT_EXT_ORG_ID=:P248_MANAGEMENT_EXT_ORG_ID,',
'            CATEGORY_FIRST_CODE=:P248_CATEGORY_FIRST_CODE,',
'            CATEGORY_SECOND_CODE=:P248_CATEGORY_SECOND_CODE,',
'            IP=:P248_IP,',
'            REMARK=:P248_REMARK,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where DEVICE_ID = :P248_DEVICE_ID ',
'          and  BASE_DEPT_ID=:BASE_DEPT_ID',
'          and TENANT_ID= :USERTENANT',
'          and DEL_FLAG = 0;',
'        v_device_id := :P248_DEVICE_ID;',
'    end if;',
'    MERGE INTO CODE_KNOWLEDGE_DEVICE_ASSO t',
'    USING (',
'        select v_device_id DEVICE_ID, data_val KNOWLEDGE_ID',
'        from JA_UTILS_PKG.SPLIT_STR(:P248_KNOWLEDGE_NAME, '':'')',
'    ) s',
'    ON (t.DEVICE_ID = s.DEVICE_ID and t.KNOWLEDGE_ID = s.KNOWLEDGE_ID)',
'    WHEN NOT MATCHED THEN',
'        INSERT (created_by, creation_date, tenant_id, device_id, knowledge_id)',
'        VALUES (:user_id, sysdate, :USERTENANT, s.DEVICE_ID, s.KNOWLEDGE_ID);',
unistr('    -- \5220\9664\53D6\6D88\7684\8D44\6599\5E93'),
'    for c in (SELECT data_val AS missing_element',
'              FROM JA_UTILS_PKG.SPLIT_STR(:P248_KNOWLEDGE_NAME_RAW, '':'') str1',
'              MINUS',
'              SELECT data_val',
'              FROM JA_UTILS_PKG.SPLIT_STR(:P248_KNOWLEDGE_NAME, '':'') str2)',
'        loop',
'            delete CODE_KNOWLEDGE_DEVICE_ASSO where KNOWLEDGE_ID=c.missing_element and DEVICE_ID=v_device_id;',
'        end loop;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>272388733774306751
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2382591165710810162)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>272389111433306751
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2382590441667810162)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2382577952099810146)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \6676\7801\8BBE\5907\7BA1\7406-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>272388387390306751
);
wwv_flow_imp.component_end;
end;
/

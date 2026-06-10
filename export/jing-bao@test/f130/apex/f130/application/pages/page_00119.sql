prompt --application/pages/page_00119
begin
--   Manifest
--     PAGE: 00119
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
 p_id=>119
,p_name=>unistr('\65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_alias=>unistr('\65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(function () {',
'',
'//     $(''#P119_IMAGE_URL'').attr(''name'', ''file'');',
'//     $(''#P119_SORT_NUM'').attr(''type'', ''number'');',
'',
'//     var file = $(''[upload-type="FILE"]'')[0];',
'',
unistr('//     //\4E0A\4F20\56FE\7247-\5355\4E2A'),
'//     $("body").on("change", file, function () {',
'//         alert()',
'//         var type = "file";',
unistr('//         //\5B9E\4F8B\5316\4E00\4E2AFormData\6765\8FDB\884C\6587\4EF6\4E0A\4F20'),
'//         var formData = new FormData();',
'//         formData.append(type, file.files[0]);',
'//         $.ajax({',
'//             type: ''post'',',
'//             url: ''http://jingbao_test_api.ywjasolar.com/apex/oss/upload'',',
'//             data: formData,',
'//             cache: false,',
'//             contentType: false,',
unistr('//             //\53D6\6D88\683C\5F0F\5316\6570\636E'),
'//             processData: false,',
'//             headers: {',
'//                 ''appKey'': ''1b4b778137c04c869237'',',
'//                 ''appSecret'': ''a6ec17ed1c8747e2ac30117503483795''',
'//             },',
'//             success: function (data, textStatus, jqXHR) {',
'//                 console.log(data);',
'//                 if (data.code === 200) {',
'//                     $s("P119_URL", data.data);',
'//                     url = data.data;',
'//                     $(''span[class="apex-item-filedrop-filename"]'').text(data.data);',
'//                 } else {',
'//                     alert(data.msg);',
'//                 }',
'//             },',
'//             error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('//                 alert("\4E0A\4F20\5931\8D25");'),
'//             }',
'//         });',
'',
'//     });',
'// })',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var files = $(''[upload-type="FILE"]'')[0];',
'files.onchange = async () => {',
'',
'    const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([files.files[0]], []));',
'    // alert(data);',
'    $s("P119_URL", data);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2198387645226383992)
,p_plug_name=>unistr('\65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select HOME_BANNER_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATE_DATE,',
'       UPDATED_BY,',
'       TENANT_ID,',
'       BANNER_TYPE,',
'       TITLE,',
'       SUB_TITLE,',
'       IMAGE_URL,',
'       CLICK_TYPE,',
'       CLICK_LINK_URL,',
'       SORT_NUM,',
'       BASE_DEPT_ID',
'from TENANT_HOME_BANNER',
'where BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2198397151134383999)
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
 p_id=>wwv_flow_imp.id(2198397551975383999)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2198397151134383999)
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
 p_id=>wwv_flow_imp.id(2198399091648384002)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2198397151134383999)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P119_HOME_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2198399497043384002)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2198397151134383999)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P119_HOME_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2198399934702384003)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2198397151134383999)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\521B\5EFA')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P119_HOME_BANNER_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(600409481554451867)
,p_name=>'P119_BASE_DEPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_default=>'BASE_DEPT_ID'
,p_item_default_type=>'ITEM'
,p_source=>'BASE_DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196061649493614995)
,p_name=>'P119_URL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196061670868614996)
,p_name=>'P119_ROW_COUNT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198387977928383992)
,p_name=>'P119_HOME_BANNER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Home Banner Id'
,p_source=>'HOME_BANNER_ID'
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
 p_id=>wwv_flow_imp.id(2198388364458383995)
,p_name=>'P119_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198388842796383995)
,p_name=>'P119_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198389249859383995)
,p_name=>'P119_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198389635876383995)
,p_name=>'P119_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198389963058383995)
,p_name=>'P119_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198390439774383996)
,p_name=>'P119_BANNER_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\8F6E\64AD\56FE\7C7B\578B')
,p_source=>'BANNER_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\6D3B\52A8;ACTIVITY,\9ED8\8BA4;DEFAULT')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198390767051383996)
,p_name=>'P119_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\6807\9898')
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198391246088383996)
,p_name=>'P119_SUB_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\5B50\6807\9898')
,p_source=>'SUB_TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198391599280383996)
,p_name=>'P119_IMAGE_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_source=>'IMAGE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'file_types', 'image/*',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198391982697383996)
,p_name=>'P119_CLICK_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\70B9\51FB\8DF3\8F6C\7C7B\578B')
,p_source=>'CLICK_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\5916\7F51 ;OUTSIDE,\5185\7F51;INTRANET,\4E0D\53EF\64CD\4F5C;OPERATION')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198392455554383996)
,p_name=>'P119_CLICK_LINK_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\70B9\51FB\8DF3\8F6C\94FE\63A5')
,p_source=>'CLICK_LINK_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2198392768888383997)
,p_name=>'P119_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_item_source_plug_id=>wwv_flow_imp.id(2198387645226383992)
,p_prompt=>unistr('\6392\5E8F')
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2330987967814485776)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2198397645331383999)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2198397551975383999)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2198398410817384001)
,p_event_id=>wwv_flow_imp.id(2198397645331383999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196061835850614997)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2198399934702384003)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196061902773614998)
,p_event_id=>wwv_flow_imp.id(2196061835850614997)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    row_count number(3);',
'begin',
'    insert into TENANT_HOME_BANNER(CREATED_BY,',
'                                   CREATION_DATE,',
'                                   UPDATE_DATE,',
'                                   UPDATED_BY,',
'                                   TENANT_ID,',
'                                   BANNER_TYPE,',
'                                   TITLE,',
'                                   SUB_TITLE,',
'                                   IMAGE_URL,',
'                                   CLICK_TYPE,',
'                                   CLICK_LINK_URL,',
'                                   SORT_NUM,',
'                                   BASE_DEPT_ID)',
'    values (apex_custom_auth.get_user,',
'            sysdate,',
'            sysdate,',
'            apex_custom_auth.get_user,',
'            V(''USERTENANT''),',
'            :P119_BANNER_TYPE,',
'            :P119_TITLE,',
'            :P119_SUB_TITLE,',
'            :P119_URL,',
'            :P119_CLICK_TYPE,',
'            :P119_CLICK_LINK_URL,',
'            :P119_SORT_NUM,',
'            :BASE_DEPT_ID);',
'    row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P119_ROW_COUNT'', row_count);',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P119_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P119_TITLE,P119_SUB_TITLE,P119_CLICK_LINK_URL,P119_BANNER_TYPE,P119_CLICK_TYPE,P119_SORT_NUM,P119_URL'
,p_attribute_03=>'P119_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196061980759614999)
,p_event_id=>wwv_flow_imp.id(2196061835850614997)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P119_ROW_COUNT'') == 1) {',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196062129786615000)
,p_event_id=>wwv_flow_imp.id(2196061835850614997)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2205626426110581693)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2205626485363581694)
,p_event_id=>wwv_flow_imp.id(2205626426110581693)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' appID number(20):= :APP_ID;',
' appUSER number(20):=:APP_USER;',
'begin',
unistr('  APEX_PAGE_VISITED_RECORD(appUSER,appID,''\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF'',119,''\65B0\589E\8F6E\64AD\56FE-\8868\5355'');'),
'end;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2198400677785384003)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2198387645226383992)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43956806122949598
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2198401101717384003)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>43957230054949598
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2198400303460384003)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2198387645226383992)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \65B0\589E\8F6E\64AD\56FE-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43956431797949598
);
wwv_flow_imp.component_end;
end;
/

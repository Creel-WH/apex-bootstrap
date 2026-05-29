prompt --application/pages/page_00170
begin
--   Manifest
--     PAGE: 00170
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
 p_id=>170
,p_name=>unistr('\5C97\4F4D\5750\6807\7BA1\7406-\8868\5355')
,p_alias=>unistr('\5C97\4F4D\5750\6807\7BA1\7406-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5C97\4F4D\5750\6807\7BA1\7406-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var formData = new FormData();',
'$(function () {',
'    $(''#P170_WORK_STATION_IMAGE_URL'').attr(''name'', ''file'');',
'    if (!utils.checkNull($v(''P170_IMAGE_RUL''))) {',
'        $(''span[class="apex-item-filedrop-filename"]'').text($v(''P170_IMAGE_RUL''));',
'    }',
'',
unistr('    //\4E0A\4F20\6587\4EF6-\5355\4E2A'),
'    $("body").on("change", "#P170_WORK_STATION_IMAGE_URL", function () {',
'        var type = "file";',
unistr('        //\5B9E\4F8B\5316\4E00\4E2AFormData\6765\8FDB\884C\6587\4EF6\4E0A\4F20'),
'        formData.append(type, $("#P170_WORK_STATION_IMAGE_URL")[0].files[0]);',
unistr('        //\8BFB\53D6\56FE\7247\6570\636E'),
'        var reader = new FileReader();',
'        reader.onload = function (e) {',
'            var data = e.target.result;',
unistr('            //\52A0\8F7D\56FE\7247\83B7\53D6\56FE\7247\771F\5B9E\5BBD\5EA6\548C\9AD8\5EA6'),
'            var image = new Image();',
'            image.onload=function(){',
'                var width = image.width;',
'                var height = image.height;',
'                $s("P170_IMAGE_WIDTH", width);',
'                $s("P170_IMAGE_HEIGHT", height);',
'            };',
'            image.src= data;',
'        };',
'        reader.readAsDataURL($("#P170_WORK_STATION_IMAGE_URL")[0].files[0]);',
'',
'        $.ajax({',
'            type: ''post'',',
'            url: ''http://jingbao_api.ywjasolar.com/apex/oss/upload'',',
'            async: false,',
'            data: formData,',
'            cache: false,',
'            contentType: false,',
unistr('            //\53D6\6D88\683C\5F0F\5316\6570\636E'),
'            processData: false,',
'            headers: {',
'                ''appKey'': ''&APPKEY.'',',
'                ''appSecret'': ''&APPSECRET.''',
'            },',
'            success: function (data, textStatus, jqXHR) {',
'',
'                if (data.code === 200) {',
'                    $s("P170_IMAGE_RUL", data.data);',
'                    $(''span[class="apex-item-filedrop-filename"]'').text(data.data);',
unistr('                    // apex.message.showPageSuccess("\4E0A\4F20\6210\529F,\6587\4EF6\5730\5740\5DF2\590D\5236\5230\526A\8D34\677F!");'),
'                    return true;',
'                } else {',
'                    alert(data.msg);',
'                    return false;',
'',
'                }',
'            },',
'            error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('                alert("\4E0A\4F20\5931\8D25");'),
'                return false;',
'            }',
'        });',
'',
'    });',
'})',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2162789438076275503)
,p_plug_name=>unistr('\5382\533A-\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
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
 p_id=>wwv_flow_imp.id(2162800218963275516)
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
 p_id=>wwv_flow_imp.id(2156325899631136490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2162800218963275516)
,p_button_name=>'CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2156326266025136490)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2162800218963275516)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156310023634062990)
,p_name=>'P170_IS_WORK_STATION_ENABLE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_prompt=>unistr('\5927\5C4F\662F\5426\5C55\793A')
,p_source=>'IS_WORK_STATION_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'YES_NO_LOV'
,p_lov=>'.'||wwv_flow_imp.id(2242997277151765856)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
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
 p_id=>wwv_flow_imp.id(2156310096618062991)
,p_name=>'P170_IMAGE_WIDTH'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_source=>'IMAGE_WIDTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156310171044062992)
,p_name=>'P170_IMAGE_HEIGHT'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_source=>'IMAGE_HEIGHT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156311230617063002)
,p_name=>'P170_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156319477378136484)
,p_name=>'P170_FAB_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_prompt=>unistr('\5382\533A')
,p_source=>'FAB_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID =:BASE_DEPT_ID AND DEL_FLAG = 0 AND IS_ENABLE = 1 AND IS_WORK_STATION_ENABLE = :P170_FLAG'
,p_lov_cascade_parent_items=>'P170_FLAG'
,p_ajax_items_to_submit=>'P170_FLAG'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
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
 p_id=>wwv_flow_imp.id(2156319866695136485)
,p_name=>'P170_BASE_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_prompt=>unistr('\6240\5C5E\57FA\5730')
,p_source=>'BASE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,BASE_ID FROM TENANT_BASE WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND  BASE_DEPT_ID =:BASE_DEPT_ID'
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
 p_id=>wwv_flow_imp.id(2156320973632136486)
,p_name=>'P170_WORK_STATION_IMAGE_URL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_prompt=>unistr('\8BF7\4E0A\4F20\5382\533A\80CC\666F\56FE\7247')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'file_types', 'image/*',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156321432466136486)
,p_name=>'P170_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>512
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156321806569136486)
,p_name=>'P170_IMAGE_RUL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_item_source_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_source=>'WORK_STATION_IMAGE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156322203859136487)
,p_name=>'P170_ROW_COUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2162789438076275503)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2156327064167136501)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2156325899631136490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156327545948136502)
,p_event_id=>wwv_flow_imp.id(2156327064167136501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2156328007919136502)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2156326266025136490)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156328530859136503)
,p_event_id=>wwv_flow_imp.id(2156328007919136502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P170_BASE_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\57FA\5730'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P170_FAB_ID''))) {',
unistr('    alert(''\8BF7\9009\62E9\5382\533A'');'),
'     return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P170_IS_WORK_STATION_ENABLE''))) {',
unistr('    alert(''\8BF7\9009\62E9\5927\5C4F\662F\5426\5C55\793A'');'),
'     return false;',
'}',
'',
'if (utils.checkNull($v(''P170_IMAGE_RUL''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\5382\533A\80CC\666F\56FE\7247'');'),
'     return false;',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156328988647136503)
,p_event_id=>wwv_flow_imp.id(2156328007919136502)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER(3);',
'    FLAG      NUMBER(1);',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    UPDATE FND_FAB',
'        SET UPDATED_BY = :APP_USER, ',
'            UPDATE_DATE = SYSDATE, ',
'            REMARK = :P170_REMARK, ',
'            WORK_STATION_IMAGE_URL = :P170_IMAGE_RUL, ',
'            -- BASE_ID = :P170_BASE_ID,',
'            IS_WORK_STATION_ENABLE = :P170_IS_WORK_STATION_ENABLE,',
'            IMAGE_WIDTH = :P170_IMAGE_WIDTH,',
'            IMAGE_HEIGHT = :P170_IMAGE_HEIGHT',
'    WHERE FAB_ID = :P170_FAB_ID;',
'    ROW_COUNT := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P170_ROW_COUNT'',ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P170_ROW_COUNT'',-1);',
'END;',
''))
,p_attribute_02=>'P170_REMARK,P170_IMAGE_RUL,P170_BASE_ID,P170_IS_WORK_STATION_ENABLE,P170_IMAGE_WIDTH,P170_IMAGE_HEIGHT,P170_FAB_ID,P170_ROW_COUNT'
,p_attribute_03=>'P170_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156329509796136503)
,p_event_id=>wwv_flow_imp.id(2156328007919136502)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P170_ROW_COUNT'') == 0){',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}else {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156329947288136504)
,p_event_id=>wwv_flow_imp.id(2156328007919136502)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156325220591136489)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2162789438076275503)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5382\533A-\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46123166313633078
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156326663190136500)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>46124608912633089
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156324789164136489)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2162789438076275503)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5382\533A-\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46122734886633078
);
wwv_flow_imp.component_end;
end;
/

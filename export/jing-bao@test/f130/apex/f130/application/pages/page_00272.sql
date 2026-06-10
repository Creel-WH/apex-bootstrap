prompt --application/pages/page_00272
begin
--   Manifest
--     PAGE: 00272
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
 p_id=>272
,p_name=>unistr('\4E0A\4F20\6587\4EF6')
,p_alias=>unistr('\4E0A\4F20\6587\4EF6')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E0A\4F20\6587\4EF6')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var files = document.getElementById(''files'');',
'files.onchange = async () => {',
'',
unistr('    //\6821\9A8C\6587\4EF6\5927\5C0F'),
'    if (!checkFileSize(files)) {',
'        return false;',
'    }',
unistr('    //\6821\9A8C\6587\4EF6\6587\4EF6'),
'    if (!validateFileName(files.files[0].name)) {',
'        files.value = '''';',
'        $s(''P272_FILE_URL'', '''');',
'        $s(''P272_FILE_TYPE'', '''');',
'        $s(''P272_FILE_NAME'', '''');',
unistr('        alert(''\6587\4EF6\540D\5305\542B\7279\6B8A\5B57\7B26\FF0C\8BF7\4FEE\6B63'');'),
'        return false;',
'    }',
'',
'    add_loading()',
'    var data;',
'    for (var k = 0; k < files.files.length; k++) {',
'',
'        data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([files.files[k]], []));',
'        console.log(''raw'', data)',
'        var f_name = files.files[0].name;',
'        var fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'        $s(''P272_FILE_URL'', data);',
'        $s(''P272_FILE_TYPE'', fileExtension);',
'        if (f_name.lastIndexOf(''.'') == -1) {',
'            $s(''P272_FILE_NAME'', f_name);',
'        } else {',
'            $s(''P272_FILE_NAME'', f_name.substring(0, f_name.lastIndexOf(''.'')));',
'        }',
'        console.log($v(''P272_FILE_TYPE''));',
'        console.log($v(''P272_FILE_NAME''));',
'',
'    }',
'    $(''.custom-file-upload'').text(files.files[0].name);',
'    await hide_loading()',
'',
'}',
'',
'function add_loading() {',
'',
'    var html = `<div id="loading-container" style="position: fixed; top: 0; left: 0; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.5);display: flex; justify-content: center; align-items: center; z-index: 9999;">',
'    <div style="border: 8px solid #f3f3f3; border-top: 8px solid #3498db; border-radius: 50%; width: 50px; height: 50px; animation: spin 1s linear infinite;" id="loading-spinner"></div></div>`;',
'    var body = window.parent.document.body;',
'    $(body).append(html)',
'}',
'',
'async function hide_loading() {',
'    setTimeout(function () {',
'        var body = window.parent.document.body;',
'        var loadingContainer = body.querySelector(''#loading-container'')',
'        $(loadingContainer).remove();',
'        console.log(loadingContainer);',
'        return 1;',
'    }, 500)',
'',
'}',
'',
'function checkFileSize(input) {',
unistr('    var maxSizeInBytes = 104857600; // 100 \5146\7684\5B57\8282\6570'),
'    var fileSize = input.files[0].size;',
'    if (fileSize > maxSizeInBytes) {',
unistr('        alert(''\6587\4EF6\5927\5C0F\8D85\8FC7 100 \5146\9650\5236'');'),
unistr('        // \6E05\9664\6587\4EF6\8F93\5165\6846\7684\503C\FF0C\907F\514D\63D0\4EA4\8FC7\5927\7684\6587\4EF6'),
'        input.value = '''';',
'        return false;',
'    }',
'    return true;',
'}',
'',
'function validateFileName(fileName) {',
unistr('    // \4F7F\7528\6B63\5219\8868\8FBE\5F0F\8FDB\884C\9A8C\8BC1'),
'    var pattern = /^[\u4e00-\u9fa5a-zA-Z0-9.]+$/;',
'    return pattern.test(fileName);',
'}',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  /* \9690\85CF\9ED8\8BA4\7684\6587\4EF6\4E0A\4F20\6309\94AE */'),
'       #files {',
'            position: absolute;',
'            left: -9999px;',
'        }',
unistr('        /* \81EA\5B9A\4E49\6837\5F0F\7684\6309\94AE */'),
'        .custom-file-upload {',
'               width: 100%;',
'    display: inline-block;',
'    padding: 8px 16px;',
'    cursor: pointer;',
'    background-color: #999b9c;',
'    color: #fff;',
'    border: 1px solid #6c6d6e;',
'    border-radius: 4px;',
'    text-align: center;',
'        }',
'',
unistr('        /* \9F20\6807\60AC\505C\6548\679C */'),
'        .custom-file-upload:hover {',
'            background-color: #8f9599;',
'            border: 1px solid #4b4d4e;',
'        }',
'',
unistr('        /* \7528\4E8E\663E\793A\6587\4EF6\540D\7684\5BB9\5668 */'),
'        .file-name-container {',
'            margin-top: 10px;',
'            font-size: 14px;',
'            color: #555;',
'            display: inline-block;',
'        }',
'',
'      '))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1933546422834160802)
,p_plug_name=>unistr('\6DFB\52A0\94FE\63A5')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330908303567485743)
,p_plug_display_sequence=>60
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2218889882603029580)
,p_plug_name=>unistr('\672C\5730\4E0A\4F20\94FE\63A5')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<!-- <input type="file" id="files" name="files" placeholder="\8BF7\9009\62E9\6587\4EF6" multiple> -->'),
'',
unistr('<!-- \4F7F\7528label\6765\89E6\53D1\6587\4EF6\9009\62E9 -->'),
'<label for="files" class="custom-file-upload">',
unistr('    \9009\62E9\6587\4EF6'),
'</label>',
'',
unistr('<!-- \6587\4EF6\9009\62E9\8F93\5165 -->'),
'<input type="file" id="files" name="files">',
'',
unistr('<!-- \7528\4E8E\663E\793A\6587\4EF6\540D\7684\5BB9\5668 -->'),
'<div class="file-name-container" id="fileNames"></div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1924974691483554669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1933546422834160802)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1924974314786554669)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1933546422834160802)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1924935937614279357)
,p_name=>'P272_NEW'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218891039575029589)
,p_name=>'P272_KNOWLEDGE_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218891340488029592)
,p_name=>'P272_TYPE'
,p_item_sequence=>20
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218892050381029599)
,p_name=>'P272_FILE_TYPE'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218892161133029600)
,p_name=>'P272_FILE_NAME'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218892438902029603)
,p_name=>'P272_FILE_URL'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2218892615543029605)
,p_name=>'P272_ROW_COUNT'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924978085039554675)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1924974691483554669)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924978622499554676)
,p_event_id=>wwv_flow_imp.id(1924978085039554675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924982368689554678)
,p_name=>unistr('\4E0A\4F20')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1924974314786554669)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924983868122554679)
,p_event_id=>wwv_flow_imp.id(1924982368689554678)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var file = document.getElementById(''files'');',
'if (file.files.length < 1 || utils.checkNull($v(''P272_FILE_URL''))) {',
unistr('    alert(''\8BF7\9009\62E9\6587\4EF6'');'),
'    return false;',
'};'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924984804272554679)
,p_event_id=>wwv_flow_imp.id(1924982368689554678)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    row_count NUMBER := 0;',
'    V_ERR_MSG NVARCHAR2(2000);',
'BEGIN',
'    IF :P272_FILE_URL IS NULL THEN',
'        row_count := 0;',
'    ELSE',
'        INSERT INTO CODE_KNOWLEDGE_ITEM(CREATED_BY,',
'                                       CREATION_DATE,',
'                                       UPDATED_BY,',
'                                       UPDATED_DATE,',
'                                       TENANT_ID,',
'                                       BASE_DEPT_ID,',
'                                       NAME,',
'                                       URL,',
'                                       TYPE,',
'                                       SUFFIX,',
'                                       SORT_NUM,',
'                                       KNOWLEDGE_ID)',
'        VALUES (:USER_ID,',
'                sysdate,',
'                :USER_ID,',
'                sysdate,',
'                :USERTENANT,',
'                :BASE_DEPT_ID,',
'                :P272_FILE_NAME,',
'                :P272_FILE_URL,',
'                ''FILE'',',
'                :P272_FILE_TYPE,',
'                0,',
'                :P272_KNOWLEDGE_ID);',
'        row_count := SQL%ROWCOUNT;',
'    END IF;',
'    apex_util.set_session_state(''P272_ROW_COUNT'', row_count);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;',
'            V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            JA_WRITE_LOG(:APP_PAGE_ALIAS||'':''||:APP_PAGE_ID||'':\672C\5730\6587\4EF6\4E0A\4F20'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P272_KNOWLEDGE_ID,P272_TYPE,P272_FILE_TYPE,P272_FILE_NAME,P272_FILE_URL,P272_ROW_COUNT'
,p_attribute_03=>'P272_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924983287983554679)
,p_event_id=>wwv_flow_imp.id(1924982368689554678)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P272_ROW_COUNT'') == 0) {',
unistr('    alert(''\6587\4EF6\4E0A\4F20\5931\8D25'');'),
'    return false;',
'}',
'',
'if ($v(''P272_ROW_COUNT'') == 1) {',
unistr('    alert(''\6587\4EF6\4E0A\4F20\6210\529F'');'),
'    // return true;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924982848704554678)
,p_event_id=>wwv_flow_imp.id(1924982368689554678)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924985245973554680)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1933546422834160802)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924985741768554680)
,p_event_id=>wwv_flow_imp.id(1924985245973554680)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1933546422834160802)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924935774974279355)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924935807647279356)
,p_event_id=>wwv_flow_imp.id(1924935774974279355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P272_NEW'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'1'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1924936018051279358)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P272_NEW'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1924936134413279359)
,p_event_id=>wwv_flow_imp.id(1924936018051279358)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(12,$(''#files''));',
'console.log($(''#files'')[0].files);',
'$(''#files'').click();',
'// var files = document.getElementById(''files'');',
'// files.onchange();',
'',
'// $("#files").on("change", function () {',
'//     alert("Handler for `change` called.");',
'// });'))
);
wwv_flow_imp.component_end;
end;
/

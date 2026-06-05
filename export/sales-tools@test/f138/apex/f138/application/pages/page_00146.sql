prompt --application/pages/page_00146
begin
--   Manifest
--     PAGE: 00146
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>146
,p_name=>unistr('\6587\4EF6\66F4\65B0')
,p_alias=>unistr('\6587\4EF6\66F4\65B0')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\66F4\65B0')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697989430613186384)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var f_name;',
'var newData;',
'var f_size;',
'var fileExtension;',
'var files = document.getElementById(''P136_FILE'');',
'files.onchange = async () => {',
'    var files_length =files.files.length;',
'    if (files_length >0 && files_length <= 50) {',
'        pxmu.loading({',
unistr('            msg: ''\6587\4EF6\4E0A\4F20\4E2D\FF0C\8BF7\52FF\79BB\5F00\672C\754C\9762'', //loading\4FE1\606F \4E3A\7A7A\65F6\4E0D\663E\793A\6587\672C'),
'            time: 6000000,',
unistr('            bg: ''rgba(105,105,105, 0.65)'', //\80CC\666F\8272'),
unistr('            color: ''#fff'', //\6587\5B57\989C\8272'),
unistr('            animation: ''fade'', //\52A8\753B\540D \8BE6\89C1\52A8\753B\6587\6863'),
unistr('            close: true, // \81EA\52A8\5173\95ED \4E3Afalse\65F6\53EF\5728\4E1A\52A1\5B8C\6210\540E\8C03\7528 pxmu.closeload();\624B\52A8\5173\95ED'),
unistr('            inscroll: true, //\6A21\6001 \4E0D\53EF\70B9\51FB\548C\6EDA\52A8'),
'        });',
'    ',
'    for (var k = 0; k < files.files.length; k++) {',
'        const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([files.files[k]], []));',
'        f_name = files.files[k].name;',
'        f_size = files.files[k].size;',
'        // console.log(''files:'' , files.files[k]);',
'        newData = data.replace(f_name,encodeURIComponent(f_name));',
'        fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'        console.log(''f_size:'' + f_size);',
'        // console.log(''encodeURIComponent:'' + encodeURIComponent(f_name));',
'        // console.log(''data:'' +data);',
'        // console.log(''newData:'' +newData);',
'        // console.log(''raw'', encodeURIComponent(data));',
'        // $s(''P66_FILE_URL'',newData);',
'            ',
'         if (utils.checkNull($v(''P136_URL''))) {',
'                $s(''P136_URL'', newData);',
'                // $s(''P136_NAME'', f_name);',
'                $s(''P136_TYPE'', fileExtension);',
'                // $s(''P136_QUANTITY'',k);',
'                $s(''P136_SIZE'',f_size);',
'                $s(''P136_NAME'', f_name.substring(0,f_name.lastIndexOf(''.'')));',
'            } else {',
'                $s(''P136_URL'', $v(''P136_URL'') + '','' + newData);',
'                // $s(''P136_NAME'', $v(''P136_NAME'') + '','' + f_name);',
'                $s(''P136_TYPE'', $v(''P136_TYPE'') + '','' + fileExtension);',
'                $s(''P136_SIZE'', $v(''P136_SIZE'') + '','' + f_size);',
'                // $s(''P136_QUANTITY'',k)',
'                $s(''P136_NAME'', $v(''P136_NAME'') + '',''+ f_name.substring(0,f_name.lastIndexOf(''.'')));',
'            }',
'',
'            if((files.files.length)-1 == k){',
'                $s(''P136_QUANTITY'',k);',
'            }',
'',
'',
'    }',
'}else if(files_length > 50){',
'    $(''.a-FileDrop-action-icon'').click();',
unistr('    alert(''\4E00\6B21\6027\4E0A\4F20\7684\6587\4EF6\6570\91CF\4E0D\80FD\5927\4E8E50\4E2A'');'),
'}',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3977695964058865225)
,p_plug_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714838117168168554)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3977696138318865226)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9714861085952168561)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262838791007993696)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3977696138318865226)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262838466288993696)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3977696138318865226)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262462359144718672)
,p_name=>'P146_FILE_ID'
,p_data_type=>'CLOB'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3731667783394973097)
,p_name=>'P146_ROOT_FOLDER_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3731667988981973099)
,p_name=>'P146_PARENT_FOLDER_ID'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3977697399942865239)
,p_name=>'P146_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3977695964058865225)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'INLINE',
  'max_file_size', '2097152',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4194684882345929195)
,p_name=>'P146_URL'
,p_data_type=>'CLOB'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4194684947077929196)
,p_name=>'P146_NAME'
,p_data_type=>'CLOB'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4194685040759929197)
,p_name=>'P146_TYPE'
,p_data_type=>'CLOB'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4194685226184929198)
,p_name=>'P146_COUNT'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4194685529649929202)
,p_name=>'P146_QUANTITY'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4196507882708118831)
,p_name=>'P146_SIZE'
,p_data_type=>'CLOB'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262841858622993700)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262838466288993696)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262842308355993701)
,p_event_id=>wwv_flow_imp.id(3262841858622993700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262842707080993701)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262838791007993696)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262843265389993701)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    if (true) {',
'        pxmu.loading({',
unistr('            msg: ''\6B63\5728\52A0\8F7D'', //loading\4FE1\606F \4E3A\7A7A\65F6\4E0D\663E\793A\6587\672C'),
'            time: 600000,',
unistr('            bg: ''rgba(105,105,105, 0.65)'', //\80CC\666F\8272'),
unistr('            color: ''#fff'', //\6587\5B57\989C\8272'),
unistr('            animation: ''fade'', //\52A8\753B\540D \8BE6\89C1\52A8\753B\6587\6863'),
unistr('            close: true, // \81EA\52A8\5173\95ED \4E3Afalse\65F6\53EF\5728\4E1A\52A1\5B8C\6210\540E\8C03\7528 pxmu.closeload();\624B\52A8\5173\95ED'),
unistr('            inscroll: true, //\6A21\6001 \4E0D\53EF\70B9\51FB\548C\6EDA\52A8'),
'        });',
'    }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262844283943993702)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_URL              VARCHAR2(1000);',
'V_CONTENT_URL      VARCHAR2(1000);',
'V_APP_KEY          VARCHAR2(1000);',
'V_APP_SECRET       VARCHAR2(1000);',
'V_FILE_VERSION_TAG VARCHAR2(100);',
'V_NAME             VARCHAR2(1000);',
'V_ERR_MSG          VARCHAR2(2000);',
'V_TYPE             VARCHAR2(1000);',
'V_SIZE             NUMBER(20);',
'V_CODE             VARCHAR2(2000);',
'V_SCOPE_TYPE       VARCHAR2(100);',
'V_FILE_PATH        VARCHAR2(4000);',
'V_FILE_LEVEL       NUMBER(20);',
'V_FILE_ID          NUMBER(20);',
'V_FILE_IDS       VARCHAR2(2000) := ''['';',
'/**',
' * CREATE BY: WXX',
' * CREATE DATE: 2025/5/22 15:30',
unistr(' * DESCRIBE: \6587\4EF6\66F4\65B0'),
' */',
'BEGIN',
unistr('--\83B7\53D6\94FE\63A5\5C5E\6027'),
'SELECT CODE_VALUE',
'INTO V_CONTENT_URL',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''URL''',
'  AND APP_ID = :APP_ID',
'  AND TENANT_ID = :USER_TENANT;',
'SELECT CODE_VALUE',
'INTO V_APP_KEY',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_KEY''',
'  AND APP_ID = :APP_ID',
'  AND TENANT_ID = :USER_TENANT;',
'SELECT CODE_VALUE',
'INTO V_APP_SECRET',
'FROM JA_SYSTEM_DICT',
'WHERE DICT_CODE = ''APP_SECRET''',
'  AND APP_ID = :APP_ID',
'  AND TENANT_ID = :USER_TENANT;',
'',
'SELECT SCOPE_TYPE, FILE_PATH, FILE_LEVEL',
'INTO V_SCOPE_TYPE,V_FILE_PATH,V_FILE_LEVEL',
'FROM STS_FILE',
'WHERE FILE_ID = :P146_PARENT_FOLDER_ID;',
'FOR I IN 0..:P146_QUANTITY',
'    LOOP',
unistr('--\622A\53D6\5B57\7B26'),
'V_URL := SUBSTRING_INSTR2(:P146_URL, '','', I, I + 1);',
'V_NAME := SUBSTRING_INSTR2(:P146_NAME, '','', I, I + 1);',
'V_TYPE := SUBSTRING_INSTR2(:P146_TYPE, '','', I, I + 1);',
'V_SIZE := SUBSTRING_INSTR2(:P146_SIZE, '','', I, I + 1);',
unistr('--\8BB0\5F55\539F\6587\4EF6\4E0A\4F20\6807\8BB0'),
'select FILE_VERSION_TAG',
'into  V_FILE_VERSION_TAG',
'from STS_FILE',
'WHERE FILE_ID = :P146_FILE_ID',
'  AND DEL_FLAG = 0',
'  AND TENANT_ID = :USER_TENANT;',
'',
unistr('if V_URL = ''\51FA\73B0\9519\8BEF'' OR V_NAME = ''\51FA\73B0\9519\8BEF'' OR V_NAME = ''\51FA\73B0\9519\8BEF'' or V_NAME = ''\51FA\73B0\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P146_COUNT'', -1);',
'ROLLBACK;',
'return;',
unistr('elsif V_URL = ''\503C\9519\8BEF'' OR V_NAME = ''\503C\9519\8BEF'' OR V_NAME = ''\503C\9519\8BEF'' or V_NAME = ''\503C\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P146_COUNT'', -1);',
'ROLLBACK;',
'return;',
unistr('elsif V_URL = ''\6570\636E\6CA1\627E\5230'' OR V_NAME = ''\6570\636E\6CA1\627E\5230'' OR V_NAME = ''\6570\636E\6CA1\627E\5230'' or V_NAME = ''\6570\636E\6CA1\627E\5230'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P146_COUNT'', -1);',
'ROLLBACK;',
'return;',
'ELSE',
unistr('--\66F4\65B0\6587\4EF6\FF0C\65B0\589E\4E00\6761\6570\636E'),
'INSERT INTO STS_FILE(FILE_NAME,ROOT_FOLDER_ID,PARENT_FOLDER_ID,FILE_FORMAT,FILE_STATUS,FILE_URL,FILE_TYPE,DEL_FLAG,TENANT_ID,',
'                     CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_SIZE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,UPLOADER_DING_ID,UPLOAD_DATE)',
'VALUES (V_NAME, DECODE(V_FILE_LEVEL, 1, :P146_PARENT_FOLDER_ID, :P146_ROOT_FOLDER_ID),:P146_PARENT_FOLDER_ID,V_TYPE, ''NORMAL'',',
'        V_URL,''FILE'',0, :USER_TENANT,:MPF_USER_ID, SYSDATE,V_SCOPE_TYPE, V_SIZE, V_FILE_VERSION_TAG, V_FILE_PATH || ''/'' || V_NAME,',
'        (V_FILE_LEVEL) + 1,:DIAN_USER_ID,SYSDATE)',
'RETURNING FILE_ID INTO V_FILE_ID;',
'V_FILE_IDS := V_FILE_IDS || V_FILE_ID || '','';',
unistr('--\540C\6B65\6743\9650'),
'INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID, SOURCE_USER_ID,PERMISSIONS_TYPE, CREATED_BY, CREATION_DATE,',
'                      UPDATED_BY, UPDATE_DATE, RANGE_TYPE, RANGE_ID)',
'SELECT V_FILE_ID,',
'       REFERENCE_TYPE,',
'       USER_ID,',
'       SOURCE_USER_ID,',
'       PERMISSIONS_TYPE,',
'       :MPF_USER_ID,',
'       SYSDATE,',
'       :MPF_USER_ID,',
'       SYSDATE,',
'       RANGE_TYPE,',
'       RANGE_ID',
'FROM STS_SCOPE',
'WHERE REFERENCE_TYPE = ''FILE''',
'  AND REFERENCE_ID = :P146_PARENT_FOLDER_ID;',
'        END IF;',
'    END LOOP;',
'COMMIT;',
unistr('--\8C03\7528\63A5\53E3'),
'V_FILE_IDS := SUBSTR(V_FILE_IDS, 1, length(V_FILE_IDS) - 1);',
'V_FILE_IDS := V_FILE_IDS || '']'';',
'V_CODE := JA_HTTP_REQUEST(V_content_URL, ''POST'', V_FILE_IDS, V_APP_KEY, V_APP_SECRET);',
'APEX_UTIL.SET_SESSION_STATE(''P146_COUNT'', 1);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\66F4\65B0\6587\4EF6'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'                     :APP_ID, :APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P146_COUNT'', -1);',
'END;',
''))
,p_attribute_02=>'P146_URL,P146_NAME,P146_TYPE,P146_QUANTITY,P146_SIZE,P146_ROOT_FOLDER_ID,P146_PARENT_FOLDER_ID,P146_FILE_ID'
,p_attribute_03=>'P146_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262844743462993702)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\7ED3\679C\53CD\9988')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pxmu.closeload();',
'if($v(''P146_COUNT'')>0){',
unistr('    alert(''\66F4\65B0\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\66F4\65B0\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262464566851718694)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4F20\9012\6587\4EF6id\53C2\6570')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin    ',
'    APEX_UTIL.SET_SESSION_STATE( ''P147_FILE_ID'' , :P146_FILE_ID);',
'end;'))
,p_attribute_02=>'P146_FILE_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262464458361718693)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8DF3\8F6C\539F\6587\4EF6\5F52\6863\9875')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('    // \4F7F\7528 APEX \5185\7F6E\7684\5BFC\822A API  \5347\7EA724.2\53EF\517C\5BB9'),
'    apex.navigation.redirect("f?p=&APP_ID.:147:&APP_SESSION.");'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262843774565993701)
,p_event_id=>wwv_flow_imp.id(3262842707080993701)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262845173881993702)
,p_name=>unistr('\542F\7528')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P146_QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262846124684993703)
,p_event_id=>wwv_flow_imp.id(3262845173881993702)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3262838791007993696)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262845638084993702)
,p_event_id=>wwv_flow_imp.id(3262845173881993702)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pxmu.closeload()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262846493352993703)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262846990277993704)
,p_event_id=>wwv_flow_imp.id(3262846493352993703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3262838791007993696)
);
wwv_flow_imp.component_end;
end;
/

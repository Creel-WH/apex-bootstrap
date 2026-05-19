prompt --application/pages/page_00125
begin
--   Manifest
--     PAGE: 00125
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>125
,p_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_alias=>unistr('\6587\4EF6\4E0A\4F20')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\4E0A\4F20')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var f_name;',
'var newData;',
'var f_size;',
'var fileExtension;',
'var files = document.getElementById(''P125_FILE'');',
'files.onchange = async () => {',
'    if (true) {',
'        pxmu.loading({',
unistr('            msg: ''\6587\4EF6\4E0A\4F20\4E2D\FF0C\8BF7\52FF\79BB\5F00\672C\754C\9762'', //loading\4FE1\606F \4E3A\7A7A\65F6\4E0D\663E\793A\6587\672C'),
'            time: 6000000,',
unistr('            bg: ''rgba(105,105,105, 0.65)'', //\80CC\666F\8272'),
unistr('            color: ''#fff'', //\6587\5B57\989C\8272'),
unistr('            animation: ''fade'', //\52A8\753B\540D \8BE6\89C1\52A8\753B\6587\6863'),
unistr('            close: true, // \81EA\52A8\5173\95ED \4E3Afalse\65F6\53EF\5728\4E1A\52A1\5B8C\6210\540E\8C03\7528 pxmu.closeload();\624B\52A8\5173\95ED'),
unistr('            inscroll: true, //\6A21\6001 \4E0D\53EF\70B9\51FB\548C\6EDA\52A8'),
'        });',
'    }',
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
'         if (utils.checkNull($v(''P125_URL''))) {',
'                $s(''P125_URL'', newData);',
'                // $s(''P125_NAME'', f_name);',
'                $s(''P125_TYPE'', fileExtension);',
'                // $s(''P125_QUANTITY'',k);',
'                $s(''P125_SIZE'',f_size);',
'                $s(''P125_NAME'', f_name.substring(0,f_name.lastIndexOf(''.'')));',
'            } else {',
'                $s(''P125_URL'', $v(''P125_URL'') + '','' + newData);',
'                // $s(''P125_NAME'', $v(''P125_NAME'') + '','' + f_name);',
'                $s(''P125_TYPE'', $v(''P125_TYPE'') + '','' + fileExtension);',
'                $s(''P125_SIZE'', $v(''P125_SIZE'') + '','' + f_size);',
'                // $s(''P125_QUANTITY'',k)',
'                $s(''P125_NAME'', $v(''P125_NAME'') + '',''+ f_name.substring(0,f_name.lastIndexOf(''.'')));',
'            }',
'',
'            if((files.files.length)-1 == k){',
'                $s(''P125_QUANTITY'',k);',
'            }',
'',
'',
'    }',
'',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3118650182714345325)
,p_plug_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3118650356974345326)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3335635094073409284)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3118650356974345326)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3335635036573409283)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3118650356974345326)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3118650384292345327)
,p_name=>'P125_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3118650182714345325)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'INLINE',
  'max_file_size', '2097152',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335634627250409279)
,p_name=>'P125_URL'
,p_data_type=>'CLOB'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335634691982409280)
,p_name=>'P125_NAME'
,p_data_type=>'CLOB'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335634785664409281)
,p_name=>'P125_TYPE'
,p_data_type=>'CLOB'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335634971089409282)
,p_name=>'P125_COUNT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335635257692409285)
,p_name=>'P125_FOLDER_LIB_ID'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3335635274554409286)
,p_name=>'P125_QUANTITY'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3337457627612598915)
,p_name=>'P125_SIZE'
,p_data_type=>'CLOB'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335635383054409287)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3335635036573409283)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335635506494409288)
,p_event_id=>wwv_flow_imp.id(3335635383054409287)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335635577031409289)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3335635094073409284)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337457765304598916)
,p_event_id=>wwv_flow_imp.id(3335635577031409289)
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
 p_id=>wwv_flow_imp.id(3335636223180409295)
,p_event_id=>wwv_flow_imp.id(3335635577031409289)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_URL         VARCHAR2(1000);',
'V_content_URL VARCHAR2(1000);',
'V_APP_KEY     VARCHAR2(1000);',
'V_APP_SECRET  VARCHAR2(1000);',
'-- V_content_URL VARCHAR2(1000) := ''https://dev_gateway.ywjasolar.com:19999/salestool/apis/apex/folder/text'';',
'V_NAME        VARCHAR2(1000);',
'V_ERR_MSG     VARCHAR2(2000);',
'V_TYPE        VARCHAR2(1000);',
'V_SIZE        NUMBER(20);',
'V_CODE        VARCHAR2(2000);',
'V_FOLDER_ID   NUMBER(20);',
'V_FOLDER_IDS  VARCHAR2(2000) := ''['';',
'V_SCOPE_TYPE  VARCHAR2(100);',
'BEGIN',
unistr('--\83B7\53D6\94FE\63A5\5C5E\6027'),
'SELECT CODE_VALUE INTO V_content_URL FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''URL'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_KEY FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''APP_KEY'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_SECRET FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''APP_SECRET'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'SELECT SCOPE_TYPE INTO V_SCOPE_TYPE FROM STS_FOLDER_LIB WHERE FOLDER_LIB_ID=:P125_FOLDER_LIB_ID;',
'',
'FOR I IN 0..:P125_QUANTITY',
'LOOP',
unistr('--\622A\53D6\5B57\7B26'),
'V_URL := SUBSTRING_INSTR2(:P125_URL, '','', I, I + 1);',
'V_NAME := SUBSTRING_INSTR2(:P125_NAME, '','', I, I + 1);',
'V_TYPE := SUBSTRING_INSTR2(:P125_TYPE, '','', I, I + 1);',
'V_SIZE := SUBSTRING_INSTR2(:P125_SIZE, '','', I, I + 1);',
unistr('if V_URL =''\51FA\73B0\9519\8BEF'' OR V_NAME =''\51FA\73B0\9519\8BEF'' OR V_NAME =''\51FA\73B0\9519\8BEF'' or V_NAME =''\51FA\73B0\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
unistr('elsif V_URL =''\503C\9519\8BEF'' OR V_NAME =''\503C\9519\8BEF'' OR V_NAME =''\503C\9519\8BEF'' or V_NAME =''\503C\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
unistr('elsif V_URL =''\6570\636E\6CA1\627E\5230'' OR V_NAME =''\6570\636E\6CA1\627E\5230'' OR V_NAME =''\6570\636E\6CA1\627E\5230'' or V_NAME =''\6570\636E\6CA1\627E\5230'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
'ELSE',
unistr('--\4FDD\5B58\6587\4EF6'),
'INSERT INTO STS_FOLDER(FOLDER_LIB_ID,FOLDER_NAME, FOLDER_FORMAT, FOLDER_STATUS, FOLDER_URL,DEL_FLAG, UPLOAD_DATE,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_SIZE)',
'VALUES (:P125_FOLDER_LIB_ID,',
'V_NAME,',
'V_TYPE,',
'''NORMAL'',',
'V_URL,',
'0,',
'SYSDATE,',
':USER_TENANT,',
':MPF_USER_ID,',
'SYSDATE,',
'V_SCOPE_TYPE,',
'V_SIZE)',
'RETURNING FOLDER_ID INTO V_FOLDER_ID;',
'V_FOLDER_IDS := V_FOLDER_IDS || V_FOLDER_ID || '','';',
unistr('--\540C\6B65\6743\9650'),
'INSERT INTO STS_SCOPE(REFERENCE_ID,',
'REFERENCE_TYPE,',
'USER_ID,',
'SOURCE_USER_ID,',
'PERMISSIONS_TYPE,',
'ROLE_ID,',
'CREATED_BY,',
'CREATION_DATE,',
'UPDATED_BY,',
'UPDATE_DATE,',
'RANGE_TYPE,',
'RANGE_ID)',
'SELECT V_FOLDER_ID,',
'''FOLDER'',',
'USER_ID,',
':MPF_USER_ID,',
'DECODE(PERMISSIONS_TYPE,''VIEW'',''VIEW_DOWN'',PERMISSIONS_TYPE),',
'ROLE_ID,',
':MPF_USER_ID,',
'SYSDATE,',
':MPF_USER_ID,',
'SYSDATE,',
'RANGE_TYPE,',
'RANGE_ID',
'FROM STS_SCOPE',
'WHERE REFERENCE_ID = :P125_FOLDER_LIB_ID',
'AND REFERENCE_TYPE = ''FOLDER_LIB'';',
'END IF;',
'END LOOP;',
'FOR ITEM IN (SELECT RANGE_TYPE, RANGE_ID',
'FROM STS_SCOPE',
'WHERE REFERENCE_ID = :P125_FOLDER_LIB_ID',
'AND REFERENCE_TYPE = ''FOLDER_LIB''',
'AND PERMISSIONS_TYPE = ''MANAGE'')',
'LOOP',
unistr('--\6587\4EF6\7BA1\7406'),
'STS_SYNCHRONIZE_ACCOUNTS_PRO(ITEM.RANGE_TYPE, ITEM.RANGE_ID, :MPF_USER_ID, :USER_TENANT, ''FOLDER'');',
'END LOOP;',
'COMMIT;',
unistr('--\8C03\7528\63A5\53E3'),
'V_FOLDER_IDS := SUBSTR(V_FOLDER_IDS,1,length(V_FOLDER_IDS)-1);',
'V_FOLDER_IDS := V_FOLDER_IDS || '']'';',
'V_CODE := JA_HTTP_REQUEST(V_content_URL, ''POST'', V_FOLDER_IDS,V_APP_KEY,V_APP_SECRET);',
unistr('if V_URL =''\51FA\73B0\9519\8BEF'' OR V_NAME =''\51FA\73B0\9519\8BEF'' OR V_NAME =''\51FA\73B0\9519\8BEF'' or V_NAME =''\51FA\73B0\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
unistr('elsif V_URL =''\503C\9519\8BEF'' OR V_NAME =''\503C\9519\8BEF'' OR V_NAME =''\503C\9519\8BEF'' or V_NAME =''\503C\9519\8BEF'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
unistr('elsif V_URL =''\6570\636E\6CA1\627E\5230'' OR V_NAME =''\6570\636E\6CA1\627E\5230'' OR V_NAME =''\6570\636E\6CA1\627E\5230'' or V_NAME =''\6570\636E\6CA1\627E\5230'' then'),
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
'ELSE',
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', 1);',
'end if;',
'',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E\6587\4EF6'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
':APP_ID, :APP_CODE);',
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P125_URL,P125_NAME,P125_TYPE,P125_QUANTITY,P125_FOLDER_LIB_ID,P125_SIZE'
,p_attribute_03=>'P125_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3022909730728783928)
,p_event_id=>wwv_flow_imp.id(3335635577031409289)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\52A0\5165\64CD\4F5C\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG                 NVARCHAR2(2000);',
'V_ROW_COUNT               NUMBER(10) := 0;',
'V_URL         VARCHAR2(1000);',
unistr('V_APP_KEY     VARCHAR2(1000);--BY:wxx 2025-04-17 \5C06\94FE\63A5\5B58\50A8\5230\5B57\6BB5\8868\FF0C\4ECE\5B57\5178\8868\4E2D\83B7\53D6'),
'V_APP_SECRET  VARCHAR2(1000);',
'V_CONTENT_URL VARCHAR2(1000);',
'-- V_content_URL VARCHAR2(1000) := ''https://devjing.jasolar.com/i/salestool/apis/apex/folder/text'';',
'-- V_content_URL VARCHAR2(1000) := ''https://dev_gateway.ywjasolar.com:19999/salestool/apis/apex/folder/text'';',
'V_NAME        VARCHAR2(1000);',
'V_TYPE        VARCHAR2(1000);',
'V_SIZE        NUMBER(20);',
'V_CODE        VARCHAR2(2000);',
'V_FOLDER_ID   NUMBER(20);',
'V_FOLDER_IDS  VARCHAR2(2000) := ''['';',
unistr('V_FOLDER_LIB_NAME   VARCHAR2(45) ;--\5B58\50A8\6587\4EF6\5E93\540D --BY:wxx  2025-04-25'),
'V_RESULT                  NVARCHAR2(4000);',
'V_JSON                    CLOB;',
'/**',
'* CREATE BY: LCB',
'* CREATE DATE:',
'* MODIFY BY:WXX',
'* MODIFY DATE:2025/4/25 15:13',
unistr('* DESCRIPTION:\64CD\4F5C\65E5\5FD7125 \6587\4EF6\4E0A\4F20'),
'*/',
'BEGIN',
unistr('        --\83B7\53D6\94FE\63A5\5C5E\6027  BY:wxx 2025-04-17 \5C06\94FE\63A5\5B58\50A8\5230\5B57\6BB5\8868\FF0C\4ECE\5B57\5178\8868\4E2D\83B7\53D6'),
'    SELECT CODE_VALUE INTO V_CONTENT_URL FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''URL'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'    SELECT CODE_VALUE INTO V_APP_KEY FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''APP_KEY'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'    SELECT CODE_VALUE INTO V_APP_SECRET FROM JA_SYSTEM_DICT WHERE  DICT_CODE=''APP_SECRET'' AND APP_ID =:APP_ID AND TENANT_ID =:USER_TENANT;',
'',
'    FOR I IN 0..:P125_QUANTITY LOOP',
unistr('--\622A\53D6\5B57\7B26'),
'V_URL := JA_UTILS_PKG.SUBSTRING_INSTR2(:P125_URL, '','', I, I + 1);',
'V_NAME := JA_UTILS_PKG.SUBSTRING_INSTR2(:P125_NAME, '','', I, I + 1);',
'V_TYPE := JA_UTILS_PKG.SUBSTRING_INSTR2(:P125_TYPE, '','', I, I + 1);',
'V_SIZE := JA_UTILS_PKG.SUBSTRING_INSTR2(:P125_SIZE, '','', I, I + 1);',
unistr('--\4FDD\5B58\6587\4EF6'),
'INSERT INTO STS_FOLDER(FOLDER_LIB_ID,FOLDER_NAME,FOLDER_FORMAT,FOLDER_STATUS,FOLDER_URL,DEL_FLAG,UPLOAD_DATE,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_SIZE)',
'VALUES (:P125_FOLDER_LIB_ID,V_NAME,V_TYPE,''NORMAL'',V_URL,0,SYSDATE,:USER_TENANT,:MPF_USER_ID,SYSDATE,''USER'',V_SIZE)',
'RETURNING FOLDER_ID INTO V_FOLDER_ID;',
'V_FOLDER_IDS := V_FOLDER_IDS || V_FOLDER_ID || '','';',
unistr(' --\540C\6B65\6743\9650'),
' INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,ROLE_ID,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)',
' SELECT V_FOLDER_ID,''FOLDER'',USER_ID,:MPF_USER_ID,DECODE(PERMISSIONS_TYPE,''VIEW'',''VIEW_DOWN'',PERMISSIONS_TYPE),ROLE_ID,:MPF_USER_ID,SYSDATE,:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID',
' FROM STS_SCOPE',
' WHERE REFERENCE_ID = :P125_FOLDER_LIB_ID',
'   AND REFERENCE_TYPE = ''FOLDER_LIB'';',
unistr(' --\67E5\8BE2\6587\4EF6\5E93\540D --BY:wxx  2025-04-25'),
' select FOLDER_LIB_NAME into V_FOLDER_LIB_NAME from STS_FOLDER_LIB where FOLDER_LIB_ID = :P125_FOLDER_LIB_ID and DEL_FLAG = 0 AND TENANT_ID = :USER_TENANT;',
unistr(' -- #\65B0\589E\64CD\4F5C\65E5\5FD7\64CD\4F5C --BY\FF1Awxx  2025-04-25'),
' V_JSON     := ''{',
' "current_name": "'' || V_NAME || ''",',
' "old_name": " '' || V_FOLDER_LIB_NAME ||'' ",',
' "new_name": "",',
' "permission_type": "",',
' "user_ids": "",',
' "dept_ids": "",',
' "range_content": ""',
'    }'';',
unistr('        V_RESULT := STS_OPERATION_LOG_COMMON_FUN(  --\4E0A\4F20\6587\4EF6\81F3\6587\4EF6\5E93'),
' P_MODULE_CODE => ''FOLDER'',',
' P_OPERATION_CODE => ''FILE'',',
' P_BEHAVIOR_CODE => ''UPLOAD'',',
' P_ENTITY_ID => V_FOLDER_ID,',
' P_EXTRA_PARAMS => V_JSON,',
' P_APP_ID => :APP_ID,',
' P_TENANT_ID => :USER_TENANT,',
' P_SYS_USER_ID =>:MPF_USER_ID',
' );',
'END LOOP;',
'COMMIT;',
unistr('--\8C03\7528\63A5\53E3'),
'V_FOLDER_IDS := SUBSTR(V_FOLDER_IDS,1,length(V_FOLDER_IDS)-1);',
'V_FOLDER_IDS := V_FOLDER_IDS || '']'';',
'V_CODE := JA_HTTP_REQUEST(V_CONTENT_URL, ''POST'', V_FOLDER_IDS,''dEOKFmFNKwwDDzNi'',''nXmtmVwjlfsbZyIGAMubUfCVzktglrVf'');',
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', 1);',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4E0A\4F20\6587\4EF6'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT, :APP_NAME,'),
'          :APP_ID, :APP_CODE);',
'APEX_UTIL.SET_SESSION_STATE(''P125_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P125_URL,P125_NAME,P125_TYPE,P125_QUANTITY,P125_FOLDER_LIB_ID,P125_SIZE'
,p_attribute_03=>'P125_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335636286924409296)
,p_event_id=>wwv_flow_imp.id(3335635577031409289)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pxmu.closeload();',
'if($v(''P125_COUNT'')>0){',
unistr('    alert(''\4E0A\4F20\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\4E0A\4F20\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335635725757409290)
,p_event_id=>wwv_flow_imp.id(3335635577031409289)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335635830577409291)
,p_name=>unistr('\542F\7528')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P125_QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335635961224409292)
,p_event_id=>wwv_flow_imp.id(3335635830577409291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3335635094073409284)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3337869839365353988)
,p_event_id=>wwv_flow_imp.id(3335635830577409291)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pxmu.closeload()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3335636063490409293)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3335636076400409294)
,p_event_id=>wwv_flow_imp.id(3335636063490409293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3335635094073409284)
);
wwv_flow_imp.component_end;
end;
/

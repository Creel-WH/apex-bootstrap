prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
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
 p_id=>136
,p_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_alias=>unistr('\6587\4EF6\4E0A\4F201')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\4E0A\4F20')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js',
'-- #WORKSPACE_FILES#s3-client.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/s3-client.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('   // \901A\7528\73AF\5883'),
unistr('// OSS\6539\902004 start'),
'const s3Client = S3Client.init({',
unistr('    baseURL: $v(''P0_UPLOAD_LINK''), // S3\670D\52A1\7684API\57FA\7840\5730\5740 \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801URL'),
unistr('    aliasKey:''SALES_TOOL_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
unistr('    appKey: $v(''P0_STS_APPKEY''),    // \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801'),
unistr('    appSecret: $v(''P0_STS_APPSECRET''), // \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801'),
unistr('    //  token: ''your-auth-token'',            // \8BA4\8BC1\4EE4\724C\FF08\53EF\9009\FF09'),
unistr('    // proxy: ''https://jing.jasolar.com:26000/s3'',// \4EE3\7406\5730\5740,\907F\514D\8DE8\57DF\FF0C\9ED8\8BA4\FF1Ahttps://jing.jasolar.com:26000/s3'),
'});',
unistr('// OSS\6539\902004 end'),
'',
unistr('// // \5F00\53D1\73AF\5883'),
unistr('// const s3Client = S3Client.init({   // OSS\6539\902001 start'),
unistr('//     baseURL: ''https://devjing.jasolar.com/i/salestool/apis/oss'', // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
unistr('//     aliasKey:''SALES_TOOL_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
'//     appKey:''dEOKFmFNKwwDDzNi'',',
'//     appSecret:''nXmtmVwjlfsbZyIGAMubUfCVzktglrVf'',',
unistr('//     //  token: ''your-auth-token'',            // \8BA4\8BC1\4EE4\724C\FF08\53EF\9009\FF09'),
unistr('//     // proxy: ''https://jing.jasolar.com:26000/s3'',// \4EE3\7406\5730\5740,\907F\514D\8DE8\57DF\FF0C\9ED8\8BA4\FF1Ahttps://jing.jasolar.com:26000/s3'),
'// });',
unistr('// // OSS\6539\902001 end'),
'',
unistr('// // \6D4B\8BD5\73AF\5883'),
unistr('// const s3Client = S3Client.init({   // OSS\6539\902001 start'),
unistr('//     baseURL: ''https://testjing.jasolar.com/i/salestool/apis/oss'', // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
unistr('//     aliasKey:''SALES_TOOL_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
'//     appKey:''CVOCnsNPPpGmwVzY'',',
'//     appSecret:''xXckVVxHwxdNmFEAQXtsoEozyMjEvZwF'',',
unistr('//     //  token: ''your-auth-token'',            // \8BA4\8BC1\4EE4\724C\FF08\53EF\9009\FF09'),
unistr('//     // proxy: ''https://jing.jasolar.com:26000/s3'',// \4EE3\7406\5730\5740,\907F\514D\8DE8\57DF\FF0C\9ED8\8BA4\FF1Ahttps://jing.jasolar.com:26000/s3'),
'// });',
unistr('// // OSS\6539\902001 end'),
'',
unistr('// // \751F\4EA7\73AF\5883'),
unistr('// const s3Client = S3Client.init({   // OSS\6539\902001 start'),
unistr('//     baseURL: ''https://api.jasolar.com:26000/salestool/apis/oss'', // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
unistr('//     aliasKey:''SALES_TOOL_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
'//     appKey:''YZWywngUbOAgcqJJ'',',
'//     appSecret:''qKeWWrffVadFjukBbvOIbkhmEMBqnlBN'',',
unistr('//     //  token: ''your-auth-token'',            // \8BA4\8BC1\4EE4\724C\FF08\53EF\9009\FF09'),
unistr('//     // proxy: ''https://jing.jasolar.com:26000/s3'',// \4EE3\7406\5730\5740,\907F\514D\8DE8\57DF\FF0C\9ED8\8BA4\FF1Ahttps://jing.jasolar.com:26000/s3'),
'// });',
unistr('// // OSS\6539\902001 end'),
'',
'',
'var f_name;',
'var newData;',
'var f_size;',
'var fileExtension;',
'var files = document.getElementById(''P136_FILE'');',
'files.onchange = async () => {',
'    var files_length = files.files.length;',
'    if (files_length > 0 && files_length <= 50) {',
'        pxmu.loading({',
unistr('            msg: ''\6587\4EF6\4E0A\4F20\4E2D\FF0C\8BF7\52FF\79BB\5F00\672C\754C\9762'', //loading\4FE1\606F \4E3A\7A7A\65F6\4E0D\663E\793A\6587\672C'),
'            time: 6000000,',
unistr('            bg: ''rgba(105,105,105, 0.65)'', //\80CC\666F\8272'),
unistr('            color: ''#fff'', //\6587\5B57\989C\8272'),
unistr('            animation: ''fade'', //\52A8\753B\540D \8BE6\89C1\52A8\753B\6587\6863'),
unistr('            close: true, // \81EA\52A8\5173\95ED \4E3Afalse\65F6\53EF\5728\4E1A\52A1\5B8C\6210\540E\8C03\7528 pxmu.closeload();\624B\52A8\5173\95ED'),
unistr('            inscroll: true, //\6A21\6001 \4E0D\53EF\70B9\51FB\548C\6EDA\52A8'),
'        });',
'',
'        for (var k = 0; k < files.files.length; k++) {',
'            // const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([files.files[k]], []));',
unistr('            // OSS\6539\902002 start'),
'            let data = await s3Client.uploadFile(files.files[k], { isPrivate: true })',
'            data = data.fileKey',
'',
unistr('            // \6DFB\52A0\5224\65AD\FF1A\5982\679Cdata\4E3A\7A7A\FF0C\63D0\793A\7528\6237\5E76\8DF3\8FC7\5F53\524D\6587\4EF6'),
'            if (!data) {',
unistr('                alert(''\6587\4EF6 "'' + files.files[k].name + ''" \4E0A\4F20\5931\8D25\FF0C\8BF7\91CD\65B0\5C1D\8BD5\6216\8054\7CFB\7BA1\7406\5458'');'),
unistr('                continue; // \8DF3\8FC7\5F53\524D\6587\4EF6\FF0C\7EE7\7EED\5904\7406\4E0B\4E00\4E2A'),
'            }',
unistr('            // OSS\6539\902002 end'),
'',
'            f_name = files.files[k].name;',
'            f_size = files.files[k].size;',
'            console.log(''data:'', data);',
'            newData = data.replace(f_name, encodeURIComponent(f_name));',
'            fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'            console.log(''f_size:'' + f_size);',
'            // console.log(''encodeURIComponent:'' + encodeURIComponent(f_name));',
'            // console.log(''data:'' +data);',
'            // console.log(''newData:'' +newData);',
'            // console.log(''raw'', encodeURIComponent(data));',
'            // $s(''P66_FILE_URL'',newData);',
'',
'            if (utils.checkNull($v(''P136_URL''))) {',
'                $s(''P136_URL'', newData);',
'                // $s(''P136_NAME'', f_name);',
'                $s(''P136_TYPE'', fileExtension);',
'                // $s(''P136_QUANTITY'',k);',
'                $s(''P136_SIZE'', f_size);',
'                $s(''P136_NAME'', encodeURIComponent(f_name.substring(0, f_name.lastIndexOf(''.''))));',
'            } else {',
'                $s(''P136_URL'', $v(''P136_URL'') + '','' + newData);',
'                // $s(''P136_NAME'', $v(''P136_NAME'') + '','' + f_name);',
'                $s(''P136_TYPE'', $v(''P136_TYPE'') + '','' + fileExtension);',
'                $s(''P136_SIZE'', $v(''P136_SIZE'') + '','' + f_size);',
'                // $s(''P136_QUANTITY'',k)',
'                $s(''P136_NAME'', $v(''P136_NAME'') + '','' + encodeURIComponent(f_name.substring(0, f_name.lastIndexOf(''.''))));',
'            }',
'',
'            if ((files.files.length) - 1 == k) {',
'                $s(''P136_QUANTITY'', k);',
'            }',
'',
'',
'        }',
'    } else if (files_length > 50) {',
'        $(''.a-FileDrop-action-icon'').click();',
unistr('        alert(''\4E00\6B21\6027\4E0A\4F20\7684\6587\4EF6\6570\91CF\4E0D\80FD\5927\4E8E50\4E2A'');'),
'    }',
'}',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4043529979299771030)
,p_plug_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249541851839239699)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4043530153559771031)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(10249564820623239706)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3797486518711771993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4043530153559771031)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3797486109089771993)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4043530153559771031)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(10249681653463239769)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797499546695878896)
,p_name=>'P136_ROOT_FOLDER_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3797499752282878898)
,p_name=>'P136_PARENT_FOLDER_ID'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4043530775999771041)
,p_name=>'P136_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4043529979299771030)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(10249679185703239764)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'INLINE',
  'max_file_size', '2097152',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4260516645646834994)
,p_name=>'P136_URL'
,p_data_type=>'CLOB'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4260516710378834995)
,p_name=>'P136_NAME'
,p_data_type=>'CLOB'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4260516804060834996)
,p_name=>'P136_TYPE'
,p_data_type=>'CLOB'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4260516989485834997)
,p_name=>'P136_COUNT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4260517292950835001)
,p_name=>'P136_QUANTITY'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4262339646009024630)
,p_name=>'P136_SIZE'
,p_data_type=>'CLOB'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797489203154771999)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3797486109089771993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797489683252771999)
,p_event_id=>wwv_flow_imp.id(3797489203154771999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797490082449771999)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3797486518711771993)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797490542531771999)
,p_event_id=>wwv_flow_imp.id(3797490082449771999)
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
 p_id=>wwv_flow_imp.id(3797492094454772003)
,p_event_id=>wwv_flow_imp.id(3797490082449771999)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\672A\5199\5165\64CD\4F5C\65E5\5FD7-\52A0\5165\5F52\6863\7C7B\578B\548C\65F6\95F420250523wxx')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_URL VARCHAR2(1000);V_content_URL VARCHAR2(1000);V_APP_KEY VARCHAR2(1000);V_APP_SECRET VARCHAR2(1000);V_FILE_VERSION_TAG VARCHAR2(100);V_NAME VARCHAR2(1000);V_ERR_MSG VARCHAR2(2000);V_TYPE VARCHAR2(1000);V_SIZE NUMBER(20);V_CODE VARCHAR2(2000);V_SCO'
||'PE_TYPE VARCHAR2(100);V_FILE_PATH VARCHAR2(4000);V_FILE_LEVEL NUMBER(20);V_FILE_ID NUMBER(20);V_PLANS_FILE_TYPE VARCHAR2(500);V_PLANS_FILE_DATE DATE;V_FILE_IDS VARCHAR2(2000):=''['';',
unistr('--BY:wxx 2025-07-04  STS_FILE\65B0\589E\6309\94AE\57CB\70B9\FF0C\533A\5206\4E0A\4F20/\66F4\65B0\6587\4EF6'),
'BEGIN',
'SELECT CODE_VALUE INTO V_CONTENT_URL FROM JA_SYSTEM_DICT WHERE DICT_CODE=''URL'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_KEY FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_KEY'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_SECRET FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_SECRET'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT SCOPE_TYPE,DECODE(FILE_PATH,null,FILE_NAME,FILE_PATH||''/''||FILE_NAME),FILE_LEVEL INTO V_SCOPE_TYPE,V_FILE_PATH,V_FILE_LEVEL FROM STS_FILE WHERE FILE_ID=:P136_PARENT_FOLDER_ID;',
'FOR I IN 0..:P136_QUANTITY LOOP',
'V_URL:=SUBSTRING_INSTR2(:P136_URL,'','',I,I+1);V_NAME:=SUBSTRING_INSTR2(:P136_NAME,'','',I,I+1);V_TYPE:=SUBSTRING_INSTR2(:P136_TYPE,'','',I,I+1);V_SIZE:=SUBSTRING_INSTR2(:P136_SIZE,'','',I,I+1);',
'SELECT TO_CHAR(SYSDATE,''YYYY-MM-DD HH24:MI:SSSS'')||''-''||DBMS_RANDOM.STRING(''A'',32) INTO V_FILE_VERSION_TAG FROM DUAL;',
unistr('IF V_URL=''\51FA\73B0\9519\8BEF''OR V_NAME=''\51FA\73B0\9519\8BEF''OR V_NAME=''\51FA\73B0\9519\8BEF''OR V_NAME=''\51FA\73B0\9519\8BEF''THEN APEX_UTIL.SET_SESSION_STATE(''P136_COUNT'',-1);ROLLBACK;RETURN;'),
unistr('ELSIF V_URL=''\503C\9519\8BEF''OR V_NAME=''\503C\9519\8BEF''OR V_NAME=''\503C\9519\8BEF''OR V_NAME=''\503C\9519\8BEF''THEN APEX_UTIL.SET_SESSION_STATE(''P136_COUNT'',-1);ROLLBACK;RETURN;'),
unistr('ELSIF V_URL=''\6570\636E\6CA1\627E\5230''OR V_NAME=''\6570\636E\6CA1\627E\5230''OR V_NAME=''\6570\636E\6CA1\627E\5230''OR V_NAME=''\6570\636E\6CA1\627E\5230''THEN APEX_UTIL.SET_SESSION_STATE(''P136_COUNT'',-1);ROLLBACK;RETURN;'),
'ELSE',
'SELECT PLANS_FILE_TYPE INTO V_PLANS_FILE_TYPE FROM STS_FILE WHERE DEL_FLAG=0 AND TENANT_ID=:USER_TENANT AND FILE_ID=:P136_ROOT_FOLDER_ID;',
'IF V_PLANS_FILE_TYPE=''ONE_YEAR_LATER''THEN V_PLANS_FILE_DATE:=ADD_MONTHS(SYSDATE,12);',
'ELSIF V_PLANS_FILE_TYPE=''TWO_YEAR_LATER''THEN V_PLANS_FILE_DATE:=ADD_MONTHS(SYSDATE,24);',
'ELSIF V_PLANS_FILE_TYPE=''THREE_YEAR_LATER''THEN V_PLANS_FILE_DATE:=ADD_MONTHS(SYSDATE,36);',
'ELSE V_PLANS_FILE_DATE:=NULL;END IF;',
'SELECT UTL_URL.UNESCAPE(url => V_NAME , URL_CHARSET => ''AL32UTF8'' ) INTO V_NAME FROM DUAL;',
'INSERT INTO STS_FILE(FILE_NAME,ROOT_FOLDER_ID,PARENT_FOLDER_ID,FILE_FORMAT,FILE_STATUS,FILE_URL,FILE_TYPE,DEL_FLAG,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_SIZE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,UPLOADER_DING_ID,UPLOAD_DATE,PLANS_FILE_T'
||'YPE,PLANS_FILE_DATE,ADD_METHOD)',
'VALUES(V_NAME,DECODE(V_FILE_LEVEL,1,:P136_PARENT_FOLDER_ID,:P136_ROOT_FOLDER_ID),:P136_PARENT_FOLDER_ID,V_TYPE,''NORMAL'',V_URL,''FILE'',0,:USER_TENANT,:MPF_USER_ID,SYSDATE,V_SCOPE_TYPE,V_SIZE,V_FILE_VERSION_TAG,V_FILE_PATH,(V_FILE_LEVEL)+1,:DIAN_USER_ID'
||',SYSDATE,V_PLANS_FILE_TYPE,V_PLANS_FILE_DATE,''UPLOAD'')',
'RETURNING FILE_ID INTO V_FILE_ID;',
'V_FILE_IDS:=V_FILE_IDS||V_FILE_ID||'','';',
'INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)',
'SELECT V_FILE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,:MPF_USER_ID,SYSDATE,:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID FROM STS_SCOPE WHERE REFERENCE_TYPE=''FILE'' AND REFERENCE_ID=:P136_PARENT_FOLDER_ID;',
'END IF;',
'END LOOP;',
'COMMIT;',
'V_FILE_IDS:=SUBSTR(V_FILE_IDS,1,LENGTH(V_FILE_IDS)-1);V_FILE_IDS:=V_FILE_IDS||'']'';',
'V_CODE:=JA_HTTP_REQUEST(V_content_URL,''POST'',V_FILE_IDS,V_APP_KEY,V_APP_SECRET);',
'APEX_UTIL.SET_SESSION_STATE(''P136_COUNT'',1);',
'EXCEPTION WHEN OTHERS THEN',
'ROLLBACK;V_ERR_MSG:=SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\65B0\589E\6587\4EF6'',''ERROR'',V_ERR_MSG,:MPF_USER_ID,:USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
'APEX_UTIL.SET_SESSION_STATE(''P136_COUNT'',-1);',
'END;'))
,p_attribute_02=>'P136_URL,P136_NAME,P136_TYPE,P136_QUANTITY,P136_SIZE,P136_ROOT_FOLDER_ID,P136_PARENT_FOLDER_ID'
,p_attribute_03=>'P136_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797492608862772004)
,p_event_id=>wwv_flow_imp.id(3797490082449771999)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pxmu.closeload();',
'if($v(''P136_COUNT'')>0){',
unistr('    alert(''\4E0A\4F20\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\4E0A\4F20\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797491608436772000)
,p_event_id=>wwv_flow_imp.id(3797490082449771999)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797492936481772004)
,p_name=>unistr('\542F\7528')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797493920973772004)
,p_event_id=>wwv_flow_imp.id(3797492936481772004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3797486518711771993)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797493456954772004)
,p_event_id=>wwv_flow_imp.id(3797492936481772004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pxmu.closeload()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3797494329739772004)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3797494833003772004)
,p_event_id=>wwv_flow_imp.id(3797494329739772004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3797486518711771993)
);
wwv_flow_imp.component_end;
end;
/

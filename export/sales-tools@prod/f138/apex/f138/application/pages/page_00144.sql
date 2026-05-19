prompt --application/pages/page_00144
begin
--   Manifest
--     PAGE: 00144
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>144
,p_name=>unistr('\66F4\65B0\6587\4EF6')
,p_alias=>unistr('\66F4\65B0\6587\4EF6')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\66F4\65B0\6587\4EF6')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3241923574672635103)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js',
'-- #WORKSPACE_FILES#s3-client.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
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
unistr('// \83B7\53D6\5BF9\5E94\6587\4EF6\4FE1\606F BY\FF1Awxx 2025-09-19  14:59'),
'var f_name;',
'var newData;',
'var f_size;',
'var fileExtension;',
'var fileInput = document.getElementById(''P144_FILE'');',
'',
'fileInput.onchange = async () => {',
'    if (fileInput.files.length > 0) {',
unistr('        // \53EA\5904\7406\7B2C\4E00\4E2A\6587\4EF6\FF08\5355\4E2A\6587\4EF6\FF09'),
'        var file = fileInput.files[0];',
'        ',
'        pxmu.loading({',
unistr('            msg: ''\6587\4EF6\4E0A\4F20\4E2D\FF0C\8BF7\52FF\79BB\5F00\672C\754C\9762'','),
'            time: 6000000,',
'            bg: ''rgba(105,105,105, 0.65)'',',
'            color: ''#fff'',',
'            animation: ''fade'',',
'            close: true,',
'            inscroll: true,',
'        });',
'',
unistr('         // OSS\6539\902002 start'),
'        try {           ',
'            let uploadResult = await s3Client.uploadFile(file, { isPrivate: true });',
unistr('            console.log(''\4E0A\4F20\7ED3\679C:'', uploadResult); // \8C03\8BD5\4FE1\606F'),
'            ',
unistr('            // \68C0\67E5\4E0A\4F20\7ED3\679C\7684\7ED3\6784\FF0C\53EF\80FD\8FD4\56DE\7684\662F\5BF9\8C61\800C\4E0D\662F\76F4\63A5\7684URL'),
'            let data;',
'            if (typeof uploadResult === ''string'') {',
unistr('                // \5982\679C\76F4\63A5\8FD4\56DE\5B57\7B26\4E32URL'),
'                data = uploadResult;',
'            } else if (uploadResult && uploadResult.fileKey) {',
unistr('                // \5982\679C\8FD4\56DE\7684\662F\5305\542Burl\5C5E\6027\7684\5BF9\8C61'),
'                data = uploadResult.fileKey;',
'            } else if (uploadResult && uploadResult.data && uploadResult.data.fileKey) {',
unistr('                // \5982\679C\8FD4\56DE\7684\662F\5D4C\5957\7ED3\6784\7684\5BF9\8C61'),
'                data = uploadResult.data.fileKey;',
'            } else {',
unistr('                // \65E0\6CD5\8BC6\522B\8FD4\56DE\7ED3\6784'),
unistr('                throw new Error(''\65E0\6CD5\8BC6\522B\7684\4E0A\4F20\8FD4\56DE\683C\5F0F'');'),
'            }',
'',
unistr('            // \6DFB\52A0\5224\65AD\FF1A\5982\679Cdata\4E3A\7A7A\FF0C\63D0\793A\7528\6237'),
'            if (!data) {',
unistr('                alert(''\6587\4EF6 "'' + file.name + ''" \4E0A\4F20\5931\8D25\FF0C\8FD4\56DE\6570\636E\4E3A\7A7A'');'),
'                pxmu.closeload();',
'                return;',
'            }',
unistr('            // OSS\6539\902002 end'),
'            ',
unistr('            // \5904\7406\6587\4EF6\4FE1\606F'),
'            f_name = file.name;',
'            f_size = file.size;',
'            ',
unistr('            // \786E\4FDD\6B63\786E\5904\7406URL\7F16\7801'),
'            newData = data.replace(f_name, encodeURIComponent(f_name));',
'            fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'            ',
unistr('            console.log(''\8C03\8BD5\4FE1\606F:'', {'),
unistr('                \539F\59CB\6587\4EF6\540D: f_name,'),
unistr('                \6587\4EF6\5927\5C0F: f_size,'),
unistr('                \6587\4EF6\7C7B\578B: fileExtension,'),
unistr('                \539F\59CBURL: data,'),
unistr('                \7F16\7801\540EURL: newData'),
'            });',
'            ',
unistr('            // \8BBE\7F6E\9875\9762\9879\503C'),
'            $s(''P144_FILE_URL'', newData);',
'            $s(''P144_FILE_TYPE'', fileExtension);',
'            $s(''P144_FILE_SIZE'', f_size);',
'            ',
unistr('            // \83B7\53D6\6587\4EF6\540D\FF08\4E0D\542B\6269\5C55\540D\FF09'),
'            var fileNameWithoutExtension = f_name.lastIndexOf(''.'') > -1 ',
'                ? f_name.substring(0, f_name.lastIndexOf(''.''))',
'                : f_name;',
'            $s(''P144_FILE_NAME'', fileNameWithoutExtension);',
'            ',
unistr('            $s(''P144_FILE_QUANTITY'', 1); // \5355\4E2A\6587\4EF6\6570\91CF\8BBE\4E3A1'),
'            ',
'        } catch (error) {',
unistr('            console.error(''\4E0A\4F20\9519\8BEF:'', error);'),
unistr('            alert(''\6587\4EF6\4E0A\4F20\5931\8D25: '' + error.message);'),
'        } finally {',
unistr('            // \5173\95ED\52A0\8F7D\63D0\793A'),
'            pxmu.closeload();',
'        }',
'    }',
'};',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709118819291490441)
,p_plug_name=>unistr('\5904\7406\53CD\9988')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3709120757021490460)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258794938549615344)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2807118470356773479)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3709120757021490460)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2807118878911773488)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3709120757021490460)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(491760581952206103)
,p_name=>'P144_FILE_ID_NEW'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807016004591641171)
,p_name=>'P144_FILE_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807151525730763949)
,p_name=>'P144_IS_IMMEDIATELY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3709118819291490441)
,p_item_default=>'1'
,p_prompt=>unistr('\539F\6587\4EF6\662F\5426\7ACB\5373\5F52\6863')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:\662F;1,\5426;0')
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807861436568997242)
,p_name=>'P144_FILE_QUANTITY'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807861450981997243)
,p_name=>'P144_FILE_SIZE'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807861542453997244)
,p_name=>'P144_FILE_TYPE'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807861792460997246)
,p_name=>'P144_PARENT_FOLDER_ID'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2807861883015997247)
,p_name=>'P144_ROOT_FOLDER_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3709120479472490475)
,p_name=>'P144_FILE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3709118819291490441)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'max_file_size', '2097152',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3709122353174490483)
,p_name=>'P144_FEEDBACK_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3713444473055025650)
,p_name=>'P144_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3713444829796025654)
,p_name=>'P144_FILE_URL'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3713444962725025655)
,p_name=>'P144_FILE_FORMAT'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3713445011514025656)
,p_name=>'P144_FILE_NAME'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2807120985506773504)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807121535285773504)
,p_event_id=>wwv_flow_imp.id(2807120985506773504)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_FEEDBACK_TYPE,P144_REMARK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEEDBACK_TYPE,REMARK from STS_FEEDBACK',
'where TENANT_ID = :USER_TENANT',
'and FEEDBACK_ID = :P144_FEEDBACK_ID',
';'))
,p_attribute_07=>'P144_FEEDBACK_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2807121876967773510)
,p_name=>unistr('\4E0D\540C\5904\7406\65B9\6848\5BF9\5E94\4E0D\540C\5185\5BB9')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P144_FEEDBACK_TYPE'
,p_condition_element=>'P144_FEEDBACK_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807122356808773511)
,p_event_id=>wwv_flow_imp.id(2807121876967773510)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \663E\793A\8BF4\660E')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807122928089773511)
,p_event_id=>wwv_flow_imp.id(2807121876967773510)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \5C55\793A\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_FILE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807123296134773511)
,p_event_id=>wwv_flow_imp.id(2807121876967773510)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \9690\85CF\8BF4\660E')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807123753555773511)
,p_event_id=>wwv_flow_imp.id(2807121876967773510)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \9690\85CF\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P144_FILE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2807124156448773511)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2807118470356773479)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807124728123773512)
,p_event_id=>wwv_flow_imp.id(2807124156448773511)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(3709118819291490441)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2807125090227773512)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2807118878911773488)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807125570790773513)
,p_event_id=>wwv_flow_imp.id(2807125090227773512)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\8868\5355\5B57\6BB5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P144_FILE''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\66F4\65B0\6587\4EF6\FF01'');'),
'    return false;',
'} else{',
'    return true;',
'}',
'if (utils.checkNull($v(''P144_IS_IMMEDIATELY''))) {',
unistr('    alert(''\8BF7\9009\62E9\539F\6587\4EF6\662F\5426\5F52\6863\FF01'');'),
'    return false;',
'} else{',
'    return true;',
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807861672168997245)
,p_event_id=>wwv_flow_imp.id(2807125090227773512)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6267\884C\66F4\65B0\5F53\524D\4E0A\4F20\5185\5BB9\5230\6587\4EF6\88685.0-2025 0529 1539')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG VARCHAR2(2000);V_ROW_COUNT NUMBER(10);V_FILE_ID NUMBER(10);v_original_file_rec STS_FILE%ROWTYPE;V_PLANS_FILE_TYPE VARCHAR2(2000);v_PLANS_FILE_DATE DATE;V_URL VARCHAR2(1000):=:P144_FILE_URL;V_NAME VARCHAR2(1000):=:P144_FILE_NAME;V_FORMAT VAR'
||'CHAR2(1000):=:P144_FILE_TYPE;V_SIZE NUMBER(20):=:P144_FILE_SIZE;V_CODE VARCHAR2(2000);V_CONTENT_URL VARCHAR2(1000);V_APP_KEY VARCHAR2(1000);V_APP_SECRET VARCHAR2(1000);V_SCOPE_TYPE VARCHAR2(100);V_FILE_PATH VARCHAR2(4000);V_FILE_LEVEL NUMBER(20);',
'BEGIN',
'SELECT ROOT_FOLDER_ID,PARENT_FOLDER_ID,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,IS_PERMISSION_CHANGES INTO v_original_file_rec.ROOT_FOLDER_ID,v_original_file_rec.PARENT_FOLDER_ID,v_original_file_rec.SCOPE_TYPE,v_original_file_rec.FILE_VERSION'
||'_TAG,v_original_file_rec.FILE_PATH,v_original_file_rec.FILE_LEVEL,v_original_file_rec.IS_PERMISSION_CHANGES FROM STS_FILE WHERE FILE_ID=:P144_FILE_ID AND TENANT_ID=:USER_TENANT AND DEL_FLAG=0;',
'IF :P144_IS_IMMEDIATELY=1 THEN',
'UPDATE STS_FILE SET PLANS_FILE_TYPE=''IMMEDIATELY'',PLANS_FILE_DATE=TRUNC(SYSDATE,''MI''),ACTUAL_FILE_DATE=TRUNC(SYSDATE,''MI''),FILE_STATUS=''ARCHIVE'',UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE WHERE FILE_ID=:P144_FILE_ID AND DEL_FLAG=0 AND TENANT_ID=:USE'
||'R_TENANT;',
'END IF;',
'select PLANS_FILE_TYPE,DECODE(PLANS_FILE_TYPE,''ONE_YEAR_LATER'',ADD_MONTHS(SYSDATE,12),''TWO_YEAR_LATER'',ADD_MONTHS(SYSDATE,24),''THREE_YEAR_LATER'',ADD_MONTHS(SYSDATE,36),''IMMEDIATELY'',SYSDATE,NULL)into v_PLANS_FILE_TYPE,v_PLANS_FILE_DATE from STS_FILE '
||'where FILE_ID=:P144_ROOT_FOLDER_ID AND TENANT_ID=:USER_TENANT AND DEL_FLAG=0;commit;',
'SELECT CODE_VALUE INTO V_CONTENT_URL FROM JA_SYSTEM_DICT WHERE DICT_CODE=''URL'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_KEY FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_KEY'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_SECRET FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_SECRET'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT SCOPE_TYPE,FILE_PATH,FILE_LEVEL INTO V_SCOPE_TYPE,V_FILE_PATH,V_FILE_LEVEL FROM STS_FILE WHERE FILE_ID=:P144_PARENT_FOLDER_ID;',
unistr('IF V_URL IN(''\51FA\73B0\9519\8BEF'',''\503C\9519\8BEF'',''\6570\636E\6CA1\627E\5230'')OR V_NAME IN(''\51FA\73B0\9519\8BEF'',''\503C\9519\8BEF'',''\6570\636E\6CA1\627E\5230'')THEN APEX_UTIL.SET_SESSION_STATE(''P144_ROW_COUNT'',-1);ROLLBACK;RETURN;END IF;'),
'INSERT INTO STS_FILE(ROOT_FOLDER_ID,PARENT_FOLDER_ID,FILE_STATUS,FILE_TYPE,DEL_FLAG,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,UPLOADER_DING_ID,UPLOAD_DATE,PLANS_FILE_TYPE,PLANS_FILE_DATE,ACTUAL_FILE_DATE,IS_P'
||'ERMISSION_CHANGES,FILE_NAME,FILE_URL,FILE_FORMAT,FILE_SIZE,UPDATED_BY,UPDATE_DATE,ADD_METHOD)VALUES(v_original_file_rec.ROOT_FOLDER_ID,v_original_file_rec.PARENT_FOLDER_ID,''NORMAL'',''FILE'',0,:USER_TENANT,:MPF_USER_ID,SYSDATE,v_original_file_rec.SCOPE_'
||'TYPE,v_original_file_rec.FILE_VERSION_TAG,v_original_file_rec.FILE_PATH,v_original_file_rec.FILE_LEVEL,:DIAN_USER_ID,SYSDATE,V_PLANS_FILE_TYPE,v_PLANS_FILE_DATE,NULL,v_original_file_rec.IS_PERMISSION_CHANGES,V_NAME,V_URL,V_FORMAT,V_SIZE,:MPF_USER_ID,'
||'SYSDATE,''UPDATE'')RETURNING FILE_ID INTO V_FILE_ID;',
'V_ROW_COUNT:=SQL%ROWCOUNT;',
'INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)SELECT V_FILE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,:MPF_USER_ID,SYSDATE'
||',:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID FROM STS_SCOPE WHERE REFERENCE_TYPE=''FILE'' AND REFERENCE_ID=:P144_FILE_ID;',
'APEX_UTIL.SET_SESSION_STATE(''P144_FILE_ID_NEW'',V_FILE_ID);APEX_UTIL.SET_SESSION_STATE(''P144_ROW_COUNT'',V_ROW_COUNT);COMMIT;V_CODE:=JA_HTTP_REQUEST(V_CONTENT_URL,''POST'',''[''||V_FILE_ID||'']'',V_APP_KEY,V_APP_SECRET);',
unistr('EXCEPTION WHEN OTHERS THEN ROLLBACK;APEX_UTIL.SET_SESSION_STATE(''P144_ROW_COUNT'',0);V_ERR_MSG:=SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\6587\4EF6\66F4\65B0'',''ERROR'',V_ERR_MSG,:MPF_USER_ID,:USER_TENANT,:APP_NAME,:APP_ID')
||',:APP_CODE);END;'))
,p_attribute_02=>'P144_FILE_ID,P144_FILE_NAME,P144_FILE_TYPE,P144_FILE_URL,P144_FILE_SIZE,P144_PARENT_FOLDER_ID,P144_ROOT_FOLDER_ID,P144_IS_IMMEDIATELY'
,p_attribute_03=>'P144_ROW_COUNT,P144_FILE_ID_NEW'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(452205521726953683)
,p_event_id=>wwv_flow_imp.id(2807125090227773512)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53D1\9001\66F4\65B0\901A\77E5')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG VARCHAR2(2000);',
'    v_file_name_old  VARCHAR2(256);',
'',
'        /**',
'     * create by: wxx',
'     * create date:1445/10/31 16:37',
'     * modify by:',
'     * modify date:',
unistr('     * describe:P144  \6587\4EF6\66F4\65B0-\70B9\51FB\786E\5B9A\540E\53D1\9001\5C0F\6676\63D0\793Aand\8C03\7528\51FD\6570\63D0\793A\5173\6CE8\4EBA\6587\4EF6\5DF2\66F4\65B0'),
'     */',
'BEGIN',
unistr('--     \67E5\8BE2\66F4\65B0\524D\6587\4EF6\540D'),
'select FILE_NAME',
'into v_file_name_old',
'from STS_FILE where FILE_ID = :P144_FILE_ID',
'and DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT;',
'',
'',
'    STS_PAY_ATTENTION_TO_FILE_UPDATES(',
'        :P144_FILE_ID,',
'        :P144_FILE_ID_NEW,',
'        v_file_name_old,',
'        :P144_FILE_NAME,',
'        :MPF_USER_ID,',
'        :USER_TENANT,',
'        :APP_ID,',
'        :APP_NAME,',
'        :APP_CODE',
'    );',
'    COMMIT;',
'EXCEPTION WHEN OTHERS THEN',
'    ROLLBACK;',
'    V_ERR_MSG:=SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('    JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\6587\4EF6\66F4\65B0-\5C0F\6676\63D0\793A'',''ERROR'',V_ERR_MSG,:USER_ID,:USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P144_FILE_ID,P144_FILE_NAME,P144_FILE_ID_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807126596682773513)
,p_event_id=>wwv_flow_imp.id(2807125090227773512)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P144_ROW_COUNT'') > 0) {',
unistr('alert(''\66F4\65B0\6210\529F\FF01'');'),
'} else {',
unistr('    alert(''\66F4\65B0\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2807127130363773514)
,p_event_id=>wwv_flow_imp.id(2807125090227773512)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00136
begin
--   Manifest
--     PAGE: 00136
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>136
,p_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_alias=>unistr('\6587\4EF6\4E0A\4F201')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\4E0A\4F20')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
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
 p_id=>wwv_flow_imp.id(3554007484661795560)
,p_plug_name=>unistr('\6587\4EF6\4E0A\4F20')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3554007658921795561)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3307964024073796523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3554007658921795561)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3307963614451796523)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3554007658921795561)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307977052057903426)
,p_name=>'P136_ROOT_FOLDER_ID'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307977257644903428)
,p_name=>'P136_PARENT_FOLDER_ID'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3554008281361795571)
,p_name=>'P136_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3554007484661795560)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9760156691065264294)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'Y',
  'display_as', 'INLINE',
  'max_file_size', '2097152',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3770994151008859524)
,p_name=>'P136_URL'
,p_data_type=>'CLOB'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3770994215740859525)
,p_name=>'P136_NAME'
,p_data_type=>'CLOB'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3770994309422859526)
,p_name=>'P136_TYPE'
,p_data_type=>'CLOB'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3770994494847859527)
,p_name=>'P136_COUNT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3770994798312859531)
,p_name=>'P136_QUANTITY'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3772817151371049160)
,p_name=>'P136_SIZE'
,p_data_type=>'CLOB'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307966708516796529)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3307963614451796523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307967188614796529)
,p_event_id=>wwv_flow_imp.id(3307966708516796529)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307967587811796529)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3307964024073796523)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307968047893796529)
,p_event_id=>wwv_flow_imp.id(3307967587811796529)
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
 p_id=>wwv_flow_imp.id(3307969599816796533)
,p_event_id=>wwv_flow_imp.id(3307967587811796529)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\4E0A\4F20\6587\4EF6')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    fmp_upload_files_from_dialog_pro(',
'        p_urls => :P136_URL,',
'        p_names => :P136_NAME,',
'        p_types => :P136_TYPE,',
'        p_quantity => :P136_QUANTITY,',
'        p_sizes => :P136_SIZE,',
'        p_root_folder_id => TO_NUMBER(NULLIF(:P136_ROOT_FOLDER_ID, '''')),',
'        p_parent_folder_id => TO_NUMBER(NULLIF(:P136_PARENT_FOLDER_ID, '''')),',
'        p_user_tenant => :USER_TENANT,',
'        p_mpf_user_id => :MPF_USER_ID,',
'        p_dian_user_id => :DIAN_USER_ID,',
'        p_upload_link => :P0_UPLOAD_LINK,',
'        p_app_key => :P0_STS_APPKEY,',
'        p_app_secret => :P0_STS_APPSECRET,',
'        p_count => :P136_COUNT',
'    );',
'END;'))
,p_attribute_02=>'P136_URL,P136_NAME,P136_TYPE,P136_QUANTITY,P136_SIZE,P136_ROOT_FOLDER_ID,P136_PARENT_FOLDER_ID'
,p_attribute_03=>'P136_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307970114224796534)
,p_event_id=>wwv_flow_imp.id(3307967587811796529)
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
 p_id=>wwv_flow_imp.id(3307969113798796530)
,p_event_id=>wwv_flow_imp.id(3307967587811796529)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307970441843796534)
,p_name=>unistr('\542F\7528')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P136_QUANTITY'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307971426335796534)
,p_event_id=>wwv_flow_imp.id(3307970441843796534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3307964024073796523)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307970962316796534)
,p_event_id=>wwv_flow_imp.id(3307970441843796534)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'pxmu.closeload()'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3307971835101796534)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3307972338365796534)
,p_event_id=>wwv_flow_imp.id(3307971835101796534)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3307964024073796523)
);
wwv_flow_imp.component_end;
end;
/

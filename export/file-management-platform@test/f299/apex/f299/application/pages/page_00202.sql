prompt --application/pages/page_00202
begin
--   Manifest
--     PAGE: 00202
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>202
,p_name=>unistr('\5904\7406\53CD\9988-\8868\5355')
,p_alias=>unistr('\5904\7406\53CD\9988-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5904\7406\53CD\9988-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627309343706248)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/pxmu.min.js',
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
'var fileInput = document.getElementById(''P202_FILE'');',
'',
'fileInput.onchange = async () => {',
'    if (fileInput.files.length > 0) {',
unistr('        // \53EA\5904\7406\7B2C\4E00\4E2A\6587\4EF6\FF08\5355\4E2A\6587\4EF6\FF09'),
'        var file = fileInput.files[0];',
'        ',
unistr('        // \663E\793A\52A0\8F7D\63D0\793A'),
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
'        try {',
unistr('            // OSS\6539\902002 start - \4FEE\590D\FF1A\4F7F\7528\6B63\786E\7684file\53D8\91CF'),
'            let data = await s3Client.uploadFile(file, { isPrivate: true });',
'            ',
unistr('            // \68C0\67E5\4E0A\4F20\7ED3\679C'),
'            if (!data || !data.fileKey) {',
unistr('                throw new Error(''\6587\4EF6\4E0A\4F20\5931\8D25\FF0C\8FD4\56DE\6570\636E\4E3A\7A7A'');'),
'            }',
'            ',
'            data = data.fileKey;',
'',
unistr('            // \5904\7406\6587\4EF6\4FE1\606F'),
'            var f_name = file.name;',
'            var f_size = file.size;',
'            var newData = data.replace(f_name, encodeURIComponent(f_name));',
'            var fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'            ',
unistr('            console.log(''\6587\4EF6\4E0A\4F20\6210\529F:'', {'),
'                fileName: f_name,',
'                fileSize: f_size,',
'                fileKey: data,',
'                fileExtension: fileExtension',
'            });',
'            ',
unistr('            // \8BBE\7F6E\9875\9762\9879\503C'),
'            $s(''P202_FILE_URL'', newData);',
'            $s(''P202_FILE_TYPE'', fileExtension);',
'            $s(''P202_FILE_SIZE'', f_size);',
'            $s(''P202_FILE_NAME'', f_name.substring(0, f_name.lastIndexOf(''.'')));',
unistr('            $s(''P202_FILE_QUANTITY'', 1); // \5355\4E2A\6587\4EF6\6570\91CF\8BBE\4E3A1'),
'            ',
unistr('            // \5173\95ED\52A0\8F7D\63D0\793A'),
'            pxmu.closeload();',
'            ',
unistr('            // \53EF\9009\FF1A\663E\793A\4E0A\4F20\6210\529F\63D0\793A'),
unistr('            apex.message.showPageSuccess(''\6587\4EF6\4E0A\4F20\6210\529F\FF01'');'),
'            ',
'        } catch (error) {',
unistr('            // \5173\95ED\52A0\8F7D\63D0\793A'),
'            pxmu.closeload();',
'            ',
unistr('            console.error(''\6587\4EF6\4E0A\4F20\5931\8D25:'', error);'),
'            ',
unistr('            // \663E\793A\5177\4F53\7684\9519\8BEF\4FE1\606F'),
unistr('            let errorMsg = ''\6587\4EF6\4E0A\4F20\5931\8D25\FF0C\8BF7\91CD\65B0\5C1D\8BD5'';'),
'            if (error.message) {',
unistr('                errorMsg += ''\3002\9519\8BEF\4FE1\606F\FF1A'' + error.message;'),
'            }',
'            ',
'            apex.message.showErrors({',
'                type: ''error'',',
'                location: ''page'',',
'                message: errorMsg,',
'                unsafe: false',
'            });',
'            ',
unistr('            // \6E05\7A7A\6587\4EF6\8F93\5165'),
'            fileInput.value = '''';',
'        }',
'    }',
'};',
'',
unistr('// // \83B7\53D6\5BF9\5E94\6587\4EF6\4FE1\606F BY\FF1Awxx 2025-05-30  15:59'),
'// var f_name;',
'// var newData;',
'// var f_size;',
'// var fileExtension;',
'// var fileInput = document.getElementById(''P202_FILE'');',
'',
'// fileInput.onchange = async () => {',
'//     if (fileInput.files.length > 0) {',
unistr('//         // \53EA\5904\7406\7B2C\4E00\4E2A\6587\4EF6\FF08\5355\4E2A\6587\4EF6\FF09'),
'//         var file = fileInput.files[0];',
'        ',
'//         pxmu.loading({',
unistr('//             msg: ''\6587\4EF6\4E0A\4F20\4E2D\FF0C\8BF7\52FF\79BB\5F00\672C\754C\9762'','),
'//             time: 6000000,',
'//             bg: ''rgba(105,105,105, 0.65)'',',
'//             color: ''#fff'',',
'//             animation: ''fade'',',
'//             close: true,',
'//             inscroll: true,',
'//         });',
'',
unistr('//         // // \83B7\53D6OSS\914D\7F6E\5E76\4E0A\4F20\6587\4EF6'),
'//         // const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', ',
'//         //     () => updateImage([file], []));',
'//          for (var k = 0; k < files.files.length; k++) {',
unistr('//             // OSS\6539\902002 start'),
'//             let data = await s3Client.uploadFile(files.files[k],true)',
'//             data = data.fileKey',
'',
unistr('//             // \6DFB\52A0\5224\65AD\FF1A\5982\679Cdata\4E3A\7A7A\FF0C\63D0\793A\7528\6237\5E76\8DF3\8FC7\5F53\524D\6587\4EF6'),
'//             if (!data) {',
unistr('//                 alert(''\6587\4EF6 "'' + files.files[k].name + ''" \4E0A\4F20\5931\8D25\FF0C\8BF7\91CD\65B0\5C1D\8BD5\6216\8054\7CFB\7BA1\7406\5458'');'),
unistr('//                 continue; // \8DF3\8FC7\5F53\524D\6587\4EF6\FF0C\7EE7\7EED\5904\7406\4E0B\4E00\4E2A'),
'//             }',
'',
'//          }',
unistr('//             // OSS\6539\902002 end'),
'        ',
unistr('//         // \5904\7406\6587\4EF6\4FE1\606F'),
'//         f_name = file.name;',
'//         f_size = file.size;',
'//         newData = data.replace(f_name, encodeURIComponent(f_name));',
'//         fileExtension = f_name.lastIndexOf(''.'') > -1 ? f_name.substring(f_name.lastIndexOf(''.'') + 1) : '''';',
'        ',
unistr('//         console.log(''\6587\4EF6\5927\5C0F:'' + f_size);'),
'        ',
unistr('//         // \8BBE\7F6E\9875\9762\9879\503C'),
'//         $s(''P202_FILE_URL'', newData);',
'//         $s(''P202_FILE_TYPE'', fileExtension);',
'//         $s(''P202_FILE_SIZE'', f_size);',
'//         $s(''P202_FILE_NAME'', f_name.substring(0, f_name.lastIndexOf(''.'')));',
unistr('//         $s(''P202_FILE_QUANTITY'', 1); // \5355\4E2A\6587\4EF6\6570\91CF\8BBE\4E3A1'),
'        ',
'   ',
'',
unistr('//         // \5173\95ED\52A0\8F7D\63D0\793A'),
'//         pxmu.closeload();',
'//     }',
'// };',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3774607170455063265)
,p_plug_name=>unistr('\5904\7406\53CD\9988')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>160
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3774609108185063284)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793498673220686489)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3774608544754063279)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3774609108185063284)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3774608896428063282)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(3774609108185063284)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342566095478068397)
,p_name=>'P202_FILE_SIZE'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342566254616068398)
,p_name=>'P202_FILE_QUANTITY'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342566349014068399)
,p_name=>'P202_FILE_TYPE'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342566522458068401)
,p_name=>'P202_FILE_ID'
,p_item_sequence=>220
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342566861513068404)
,p_name=>'P202_DING_USER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342568561918068421)
,p_name=>'P202_FEEDBACK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3774607170455063265)
,p_prompt=>unistr('\6587\4EF6\540D')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3342568632078068422)
,p_name=>'P202_STATUS'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3344946353155903080)
,p_name=>'P202_IS_IMMEDIATELY'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3774607170455063265)
,p_item_default=>'1'
,p_prompt=>unistr('\539F\6587\4EF6\662F\5426\7ACB\5373\5F52\6863')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC:\662F;1,\5426;0')
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3344946705351903084)
,p_name=>'P202_IS_IMMEDIATELY_RECORD'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774606978924063263)
,p_name=>'P202_FEEDBACK_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3774607170455063265)
,p_item_default=>'0'
,p_prompt=>unistr('\5904\7406\65B9\6848')
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FEEDBACK_TYPE from STS_FEEDBACK',
'where FEEDBACK_ID = :P202_FEEDBACK_ID;'))
,p_source_type=>'QUERY'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>unistr('FEEDBACK_TYPE\FF08\5904\7406\65B9\6848\FF09')
,p_lov=>'.'||wwv_flow_imp.id(3778888423523712854)||'.'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9793614301921686549)
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
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774607082419063264)
,p_name=>'P202_REMARK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3774607170455063265)
,p_prompt=>unistr('\8BF4\660E')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9793613851693686548)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774607915946063272)
,p_name=>'P202_FEEDBACK_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3774608235913063275)
,p_name=>'P202_FILE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3774607170455063265)
,p_prompt=>unistr('\6587\4EF6\4E0A\4F20')
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'INLINE',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3778930035826598439)
,p_name=>'P202_ROW_COUNT'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3778930392567598443)
,p_name=>'P202_FILE_URL'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3778930525496598444)
,p_name=>'P202_FILE_FORMAT'
,p_item_sequence=>210
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3778930574285598445)
,p_name=>'P202_FILE_NAME'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774606772575063261)
,p_name=>unistr('\521D\59CB\5316-\672A\5904\7406')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P202_STATUS'
,p_display_when_cond2=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3344946208197903079)
,p_event_id=>wwv_flow_imp.id(3774606772575063261)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FEEDBACK'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774607256783063266)
,p_name=>unistr('\4E0D\540C\5904\7406\65B9\6848\5BF9\5E94\4E0D\540C\5185\5BB9')
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P202_FEEDBACK_TYPE'
,p_condition_element=>'P202_FEEDBACK_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774607421294063267)
,p_event_id=>wwv_flow_imp.id(3774607256783063266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \663E\793A\8BF4\660E')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774608305375063276)
,p_event_id=>wwv_flow_imp.id(3774607256783063266)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \663E\793A\539F\6587\4EF6\662F\5426\4E0A\4F20\6587\4EF6\3001\6587\4EF6\540D\56DE\663E\3001\7ACB\5373\5F52\6863')
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FILE,P202_IS_IMMEDIATELY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774607968029063273)
,p_event_id=>wwv_flow_imp.id(3774607256783063266)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\9700\66F4\65B0 \9690\85CF\8BF4\660E')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_REMARK'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3344946600154903083)
,p_event_id=>wwv_flow_imp.id(3774607256783063266)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\65E0\9700\66F4\65B0 \539F\6587\4EF6\662F\5426\4E0A\4F20\6587\4EF6\3001\6587\4EF6\540D\56DE\663E\3001\7ACB\5373\5F52\6863')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FILE,P202_FEEDBACK,P202_IS_IMMEDIATELY'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774608679753063280)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3774608544754063279)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3774608809756063281)
,p_event_id=>wwv_flow_imp.id(3774608679753063280)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3774609175107063285)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3774608896428063282)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3342567032090068406)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\8868\5355\5B57\6BB5-\52A0\5165\5224\65AD')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\5904\7406\65B9\6848\548C\5907\6CE8/\6587\4EF6\7684\503C'),
'var feedbackType = $v(''P202_FEEDBACK_TYPE'');',
'var remark = $v(''P202_REMARK'');',
'var file = $v(''P202_FILE'');',
'',
unistr('// \6821\9A8C\5904\7406\65B9\6848\662F\5426\4E3A\7A7A'),
'if (utils.checkNull(feedbackType)) {',
unistr('    alert(''\8BF7\9009\62E9\5904\7406\65B9\6848\FF01'');'),
'    return false;',
'}',
'',
unistr('// \6839\636E\5904\7406\65B9\6848\7C7B\578B\8FDB\884C\4E0D\540C\6821\9A8C'),
'if (feedbackType === ''0'') {',
unistr('    // \7C7B\578B\4E3A0\65F6\FF0C\6821\9A8C\5907\6CE8\662F\5426\4E3A\7A7A'),
'    if (utils.checkNull(remark)) {',
unistr('        alert(''\8BF7\586B\5199\8BF4\660E\FF01'');'),
'        return false;',
'    }',
'} else if (feedbackType === ''1'') {',
unistr('    // \7C7B\578B\4E3A1\65F6\FF0C\6821\9A8C\6587\4EF6\662F\5426\4E3A\7A7A'),
'    if (utils.checkNull(file)) {',
unistr('        alert(''\8BF7\9009\62E9\8981\66F4\65B0\7684\6587\4EF6\FF01'');'),
'        return false;',
'    }',
'    if (utils.checkNull($v(''P202_IS_IMMEDIATELY''))) {',
unistr('    alert(''\8BF7\9009\62E9\539F\6587\4EF6\662F\5426\5F52\6863\FF01'');'),
'    return false;',
'} else{',
'    return true;',
'}',
'}',
'',
unistr('// \6240\6709\6821\9A8C\901A\8FC7'),
'return true;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3342566031492068396)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\7248\6587\4EF6\8868')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);V_ROW_COUNT NUMBER(10);V_PLANS_FILE_TYPE VARCHAR2(20);V_PLANS_FILE_DATE DATE;v_original_file_rec STS_FILE%ROWTYPE;V_CONTENT_URL VARCHAR2(1000);V_APP_KEY VARCHAR2(1000);V_APP_SECRET VARCHAR2(1000);V_SCOPE_TYPE VARCHAR2(100);V'
||'_FILE_PATH VARCHAR2(4000);V_FILE_LEVEL NUMBER(20);V_FILE_ID NUMBER(10);V_CODE VARCHAR2(2000);V_URL VARCHAR2(1000):=:P202_FILE_URL;V_NAME VARCHAR2(1000):=:P202_FILE_NAME;V_FORMAT VARCHAR2(1000):=:P202_FILE_TYPE;V_SIZE NUMBER(20):=:P202_FILE_SIZE;',
'BEGIN',
'IF :P202_FEEDBACK_TYPE=1 THEN',
'SELECT ROOT_FOLDER_ID,PARENT_FOLDER_ID,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,IS_PERMISSION_CHANGES,PLANS_FILE_TYPE,DECODE(PLANS_FILE_TYPE,''ONE_YEAR_LATER'',ADD_MONTHS(SYSDATE,12),''TWO_YEAR_LATER'',ADD_MONTHS(SYSDATE,24),''THREE_YEAR_LATER'',AD'
||'D_MONTHS(SYSDATE,36),''IMMEDIATELY'',SYSDATE,NULL)INTO v_original_file_rec.ROOT_FOLDER_ID,v_original_file_rec.PARENT_FOLDER_ID,v_original_file_rec.SCOPE_TYPE,v_original_file_rec.FILE_VERSION_TAG,v_original_file_rec.FILE_PATH,v_original_file_rec.FILE_LE'
||'VEL,v_original_file_rec.IS_PERMISSION_CHANGES,V_PLANS_FILE_TYPE,V_PLANS_FILE_DATE FROM STS_FILE WHERE FILE_ID=:P202_FILE_ID AND TENANT_ID=:USER_TENANT AND DEL_FLAG=0;',
'SELECT CODE_VALUE INTO V_CONTENT_URL FROM JA_SYSTEM_DICT WHERE DICT_CODE=''URL'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_KEY FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_KEY'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_APP_SECRET FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_SECRET'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT SCOPE_TYPE,FILE_PATH,FILE_LEVEL INTO V_SCOPE_TYPE,V_FILE_PATH,V_FILE_LEVEL FROM STS_FILE WHERE FILE_ID=v_original_file_rec.PARENT_FOLDER_ID;',
'INSERT INTO STS_FILE(ROOT_FOLDER_ID,PARENT_FOLDER_ID,FILE_STATUS,FILE_TYPE,DEL_FLAG,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,UPLOADER_DING_ID,UPLOAD_DATE,PLANS_FILE_TYPE,PLANS_FILE_DATE,ACTUAL_FILE_DATE,IS_P'
||'ERMISSION_CHANGES,FILE_NAME,FILE_URL,FILE_FORMAT,FILE_SIZE,UPDATED_BY,UPDATE_DATE)VALUES(v_original_file_rec.ROOT_FOLDER_ID,v_original_file_rec.PARENT_FOLDER_ID,''NORMAL'',''FILE'',0,:USER_TENANT,:MPF_USER_ID,SYSDATE,v_original_file_rec.SCOPE_TYPE,v_orig'
||'inal_file_rec.FILE_VERSION_TAG,v_original_file_rec.FILE_PATH,v_original_file_rec.FILE_LEVEL,:DING_USER_ID,SYSDATE,V_PLANS_FILE_TYPE,V_PLANS_FILE_DATE,NULL,v_original_file_rec.IS_PERMISSION_CHANGES,V_NAME,V_URL,V_FORMAT,V_SIZE,:MPF_USER_ID,SYSDATE)RET'
||'URNING FILE_ID INTO V_FILE_ID;',
'V_ROW_COUNT:=SQL%ROWCOUNT;',
'INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)SELECT V_FILE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,:MPF_USER_ID,SYSDATE'
||',:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID FROM STS_SCOPE WHERE REFERENCE_TYPE=''FILE'' AND REFERENCE_ID=:P202_FILE_ID;',
'UPDATE STS_FEEDBACK SET UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE,FILE_ID=V_FILE_ID,STATUS=1,PROCESS_DATE=SYSDATE,PROCESS_USER_ID=:MPF_USER_ID,FEEDBACK_TYPE=:P202_FEEDBACK_TYPE WHERE FEEDBACK_ID=:P202_FEEDBACK_ID AND DEL_FLAG=0 AND TENANT_ID=:USER_'
||'TENANT;',
'ELSE',
'UPDATE STS_FEEDBACK SET UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE,STATUS=1,PROCESS_DATE=SYSDATE,PROCESS_USER_ID=:MPF_USER_ID,FEEDBACK_TYPE=:P202_FEEDBACK_TYPE,REMARK=:P202_REMARK WHERE FEEDBACK_ID=:P202_FEEDBACK_ID AND DEL_FLAG=0 AND TENANT_ID=:USE'
||'R_TENANT;',
'END IF;',
'V_ROW_COUNT:=SQL%ROWCOUNT;',
'APEX_UTIL.SET_SESSION_STATE(''P202_ROW_COUNT'',V_ROW_COUNT);',
'IF :P202_FEEDBACK_TYPE=1 AND V_FILE_ID IS NOT NULL THEN V_CODE:=JA_HTTP_REQUEST(V_CONTENT_URL,''POST'',''[''||V_FILE_ID||'']'',V_APP_KEY,V_APP_SECRET);END IF;',
unistr('EXCEPTION WHEN OTHERS THEN ROLLBACK;APEX_UTIL.SET_SESSION_STATE(''P202_ROW_COUNT'',0);V_ERR_MSG:=SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\53CD\9988\7BA1\7406-\5904\7406\64CD\4F5C'',''ERROR'',V_ERR_MSG,:MPF_USER_ID,:USER_TENANT,:APP_NAME,:A')
||'PP_ID,:APP_CODE);END;'))
,p_attribute_02=>'P202_FEEDBACK_ID,P202_FEEDBACK_TYPE,P202_FILE_ID,P202_REMARK,P202_FILE_URL,P202_FILE_NAME, P202_FILE_FORMAT,P202_FILE_ID,P202_FILE_TYPE,P202_FILE_SIZE'
,p_attribute_03=>'P202_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3344946964783903086)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\56DE\4F20\539F\6587\4EF6\662F\5426\7ACB\5373\5F52\6863')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'     APEX_UTIL.SET_SESSION_STATE(''P202_IS_IMMEDIATELY_RECORD'', ''P202_IS_IMMEDIATELY'');',
'end;'))
,p_attribute_02=>'P202_IS_IMMEDIATELY'
,p_attribute_03=>'P202_IS_IMMEDIATELY_RECORD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3344946446319903081)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\7248\6587\4EF6\8868-\65B0\589E\539F\6587\4EF6\662F\5426\7ACB\5373\5F52\6863')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);V_R NUMBER(10):=0;V_PFT VARCHAR2(20);V_PFD DATE;v_of STS_FILE%ROWTYPE;V_CU VARCHAR2(1000);V_AK VARCHAR2(1000);V_AS VARCHAR2(1000);V_ST VARCHAR2(100);V_FP VARCHAR2(4000);V_FL NUMBER(20);V_FI NUMBER(10);V_C VARCHAR2(2000);V_U '
||'VARCHAR2(1000):=:P202_FILE_URL;V_N VARCHAR2(1000):=:P202_FILE_NAME;V_F VARCHAR2(1000):=:P202_FILE_TYPE;V_S NUMBER(20):=:P202_FILE_SIZE;',
'BEGIN',
'IF :P202_FEEDBACK_TYPE=1 THEN',
'SELECT ROOT_FOLDER_ID,PARENT_FOLDER_ID,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,IS_PERMISSION_CHANGES,PLANS_FILE_TYPE,DECODE(PLANS_FILE_TYPE,''ONE_YEAR_LATER'',ADD_MONTHS(SYSDATE,12),''TWO_YEAR_LATER'',ADD_MONTHS(SYSDATE,24),''THREE_YEAR_LATER'',AD'
||'D_MONTHS(SYSDATE,36),''IMMEDIATELY'',SYSDATE,NULL)',
'INTO v_of.ROOT_FOLDER_ID,v_of.PARENT_FOLDER_ID,v_of.SCOPE_TYPE,v_of.FILE_VERSION_TAG,v_of.FILE_PATH,v_of.FILE_LEVEL,v_of.IS_PERMISSION_CHANGES,V_PFT,V_PFD',
'FROM STS_FILE',
'WHERE FILE_ID=:P202_FILE_ID AND TENANT_ID=:USER_TENANT AND DEL_FLAG=0;',
'SELECT CODE_VALUE INTO V_CU FROM JA_SYSTEM_DICT WHERE DICT_CODE=''URL'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_AK FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_KEY'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT CODE_VALUE INTO V_AS FROM JA_SYSTEM_DICT WHERE DICT_CODE=''APP_SECRET'' AND APP_ID=:APP_ID AND TENANT_ID=:USER_TENANT;',
'SELECT SCOPE_TYPE,FILE_PATH,FILE_LEVEL INTO V_ST,V_FP,V_FL FROM STS_FILE WHERE FILE_ID=v_of.PARENT_FOLDER_ID;',
'INSERT INTO STS_FILE(ROOT_FOLDER_ID,PARENT_FOLDER_ID,FILE_STATUS,FILE_TYPE,DEL_FLAG,TENANT_ID,CREATED_BY,CREATION_DATE,SCOPE_TYPE,FILE_VERSION_TAG,FILE_PATH,FILE_LEVEL,UPLOADER_DING_ID,UPLOAD_DATE,PLANS_FILE_TYPE,PLANS_FILE_DATE,ACTUAL_FILE_DATE,IS_P'
||'ERMISSION_CHANGES,FILE_NAME,FILE_URL,FILE_FORMAT,FILE_SIZE,UPDATED_BY,UPDATE_DATE)',
'VALUES(v_of.ROOT_FOLDER_ID,v_of.PARENT_FOLDER_ID,''NORMAL'',''FILE'',0,:USER_TENANT,:MPF_USER_ID,SYSDATE,v_of.SCOPE_TYPE,v_of.FILE_VERSION_TAG,v_of.FILE_PATH,v_of.FILE_LEVEL,:DING_USER_ID,SYSDATE,V_PFT,V_PFD,NULL,v_of.IS_PERMISSION_CHANGES,V_N,V_U,V_F,V_'
||'S,:MPF_USER_ID,SYSDATE)',
'RETURNING FILE_ID INTO V_FI;',
'V_R:=SQL%ROWCOUNT;',
'IF :P202_IS_IMMEDIATELY=1 THEN',
'UPDATE STS_FILE SET PLANS_FILE_TYPE=''IMMEDIATELY'',PLANS_FILE_DATE=SYSDATE,ACTUAL_FILE_DATE=SYSDATE,FILE_STATUS=''ARCHIVE'',UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE WHERE FILE_ID=:P202_FILE_ID AND DEL_FLAG=0 AND TENANT_ID=:USER_TENANT;',
'END IF;',
'INSERT INTO STS_SCOPE(REFERENCE_ID,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,CREATED_BY,CREATION_DATE,UPDATED_BY,UPDATE_DATE,RANGE_TYPE,RANGE_ID)',
'SELECT V_FI,REFERENCE_TYPE,USER_ID,SOURCE_USER_ID,PERMISSIONS_TYPE,:MPF_USER_ID,SYSDATE,:MPF_USER_ID,SYSDATE,RANGE_TYPE,RANGE_ID FROM STS_SCOPE WHERE REFERENCE_TYPE=''FILE'' AND REFERENCE_ID=:P202_FILE_ID;',
'UPDATE STS_FEEDBACK SET UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE,FILE_ID=V_FI,STATUS=1,PROCESS_DATE=SYSDATE,PROCESS_USER_ID=:MPF_USER_ID,FEEDBACK_TYPE=:P202_FEEDBACK_TYPE WHERE FEEDBACK_ID=:P202_FEEDBACK_ID AND DEL_FLAG=0 AND TENANT_ID=:USER_TENAN'
||'T;',
'V_R:=SQL%ROWCOUNT;',
'ELSE',
'UPDATE STS_FEEDBACK SET UPDATED_BY=:MPF_USER_ID,UPDATE_DATE=SYSDATE,STATUS=1,PROCESS_DATE=SYSDATE,PROCESS_USER_ID=:MPF_USER_ID,FEEDBACK_TYPE=:P202_FEEDBACK_TYPE,REMARK=:P202_REMARK WHERE FEEDBACK_ID=:P202_FEEDBACK_ID AND DEL_FLAG=0 AND TENANT_ID=:USE'
||'R_TENANT;',
'V_R:=SQL%ROWCOUNT;',
'END IF;',
'APEX_UTIL.SET_SESSION_STATE(''P202_ROW_COUNT'',V_R);',
'IF :P202_FEEDBACK_TYPE=1 AND V_FI IS NOT NULL THEN',
'V_C:=JA_HTTP_REQUEST(V_CU,''POST'',''[''||V_FI||'']'',V_AK,V_AS);',
'END IF;',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
unistr('ROLLBACK;APEX_UTIL.SET_SESSION_STATE(''P202_ROW_COUNT'',0);V_ERR_MSG:=SQLERRM||CHR(13)||DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\53CD\9988\7BA1\7406-\5904\7406\64CD\4F5C'',''ERROR'',V_ERR_MSG,:MPF_USER_ID,:USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P202_FEEDBACK_ID,P202_FEEDBACK_TYPE,P202_FILE_ID,P202_REMARK,P202_FILE_URL,P202_FILE_NAME, P202_FILE_FORMAT,P202_FILE_ID,P202_FILE_TYPE,P202_FILE_SIZE,P202_IS_IMMEDIATELY'
,p_attribute_03=>'P202_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3342566408154068400)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53D1\9001\5C0F\6676\901A\77E5\7528\6237and\8C03\7528\51FD\6570\53D6\6D88\7BA1\7406\5458\5F85\529E\72B6\6001')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG VARCHAR2(2000);',
'        /**',
'     * create by: wxx',
'     * create date:2025/6/05 08:58',
'     * modify by:',
'     * modify date:',
unistr('     * describe:P202  \95EE\9898\53CD\9988-\70B9\51FB\786E\5B9A\540E\53D1\9001\5C0F\6676\63D0\793Aand\8C03\7528\51FD\6570\53D6\6D88\7BA1\7406\5458\5F85\529E\72B6\6001'),
'     */',
'BEGIN',
'    STS_SHARE_NOTIFY_PRO(',
'        :P202_FEEDBACK_ID,',
'        :P202_FILE_ID,',
'        :P202_FEEDBACK_TYPE,',
'        :P202_DING_USER_ID,',
'        :P202_REMARK,',
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
unistr('    JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\62A5\544A\5206\4EAB'',''ERROR'',V_ERR_MSG,:USER_ID,:USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
'END;'))
,p_attribute_02=>'P202_FEEDBACK_ID,P202_FEEDBACK_TYPE,P202_REMARK,P202_FILE_URL,P202_FILE_NAME, P202_FILE_FORMAT,P202_FILE_ID,P202_FILE_TYPE,P202_FILE_SIZE,P202_DING_USER_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778929867212598438)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P202_ROW_COUNT'') > 0) {',
unistr('alert(''\5904\7406\6210\529F\FF01'');'),
unistr('    // apex.message.showPageSuccess("\5904\7406\6210\529F!");'),
'    // setTimeout(function () {',
unistr('    //     $(''button[title="\5173\95ED"]'', window.parent.document).click();'),
unistr('    //     console.log($(''button[title="\5173\95ED"]''));'),
'    // }, 2000);',
'',
'',
'} else {',
unistr('    alert(''\5904\7406\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3778930052145598440)
,p_event_id=>wwv_flow_imp.id(3774609175107063285)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3342568962365068425)
,p_name=>unistr('\521D\59CB\5316-\5DF2\5904\7406')
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P202_STATUS'
,p_display_when_cond2=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3342568860827068424)
,p_event_id=>wwv_flow_imp.id(3342568962365068425)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FEEDBACK_TYPE,P202_REMARK,,P202_FEEDBACK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sf.FEEDBACK_TYPE,sf.REMARK,fi.FILE_NAME || ''.''|| fi.FILE_FORMAT',
'from STS_FEEDBACK sf',
'left join STS_FILE fi on sf.FILE_ID = fi.FILE_ID',
'and fi.TENANT_ID= :USER_TENANT',
'where sf.TENANT_ID = :USER_TENANT',
'and sf.FEEDBACK_ID = :P202_FEEDBACK_ID',
';'))
,p_attribute_07=>'P202_FEEDBACK_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P202_STATUS'
,p_server_condition_expr2=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3345080486225439879)
,p_event_id=>wwv_flow_imp.id(3342568962365068425)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5DF2\5904\7406-\9690\85CF\4E0A\4F20\6587\4EF6 \662F\5426\7ACB\5373\5F52\6863')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P202_FILE,P202_IS_IMMEDIATELY'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3342569213527068428)
,p_event_id=>wwv_flow_imp.id(3342568962365068425)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5DF2\5904\7406-\9690\85CF\786E\5B9A\6309\94AE')
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(3774608896428063282)
);
wwv_flow_imp.component_end;
end;
/

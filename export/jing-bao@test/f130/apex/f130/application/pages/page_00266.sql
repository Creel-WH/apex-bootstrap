prompt --application/pages/page_00266
begin
--   Manifest
--     PAGE: 00266
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
 p_id=>266
,p_name=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5-\67E5\770B\70B9\68C0\9879')
,p_alias=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5-\67E5\770B\70B9\68C0\9879')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\70B9\68C0\8BB0\5F55-\67E5\770B\8BE6\60C5-\67E5\770B\70B9\68C0\9879')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#bootstrap.bundle.min.js',
'#APP_FILES#lightbox.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/s3-client.js  '))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801\FF0C\52A8\6001\83B7\53D6\6570\636E'),
'const s3Client = S3Client.init({',
unistr('    baseURL: $v(''P0_LINK_1'') + ''apis/oss'' , // S3\670D\52A1\7684API\57FA\7840\5730\5740 \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801URL'),
unistr('    // baseURL: $v(''P0_LINK'') + ''apis/oss'' , // S3\670D\52A1\7684API\57FA\7840\5730\5740 \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801URL'),
unistr('    aliasKey:''JING_BAO_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
unistr('    appKey: $v(''P0_APPKEY''),    // \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801'),
'    appSecret: $v(''P0_APPSECRET'')',
'});',
'',
unistr('// // \786C\7F16\7801'),
'// const s3Client = S3Client.init({',
'//     baseURL: ''https://testjing.jasolar.com/i/bao/apis/oss'',',
unistr('//     aliasKey:''JING_BAO_S3'',   //\533A\5206\5E94\7528\6807\8BC6'),
unistr('//     appKey: ''awdkSSxxx123okKOKDID3'',    // \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801'),
'//     appSecret: ''Jf5qaChzZiolklxeIs522Dsd6DiP3''',
'// });'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'lightbox.option({',
'    ''resizeDuration'': 100,',
'    ''wrapAround'': true',
'});',
'',
unistr('// \5B9A\4E49\63A5\53E3URL'),
'var tenant_id = ''&USERTENANT.'';',
'var user_id = ''&USER_ID.'';',
'var record_id = $v(''P266_RECORD_ID'');',
'var base_dept_id = ''&BASE_DEPT_ID.'';',
'',
'const url = $v(''P266_API_URL'') + `/jing_bao/jing_bao/check/detail?tenant_id=${tenant_id}&user_id=${user_id}&record_id=${record_id}&base_dept_id=${base_dept_id}`;',
'',
'console.log(url);',
'',
unistr('// \83B7\53D6\9875\9762\4E0A\7684container\5143\7D20'),
'const container = document.getElementById("container");',
'',
unistr('// \53D1\9001GET\8BF7\6C42\83B7\53D6\63A5\53E3\6570\636E'),
'fetch(url)',
'    .then((response) => response.json())',
unistr('    .then(async (data) => { // \4FEE\590D\FF1A\8FD9\91CC\589E\52A0 async\FF0C\540E\9762\9700\8981 await'),
unistr('        // \68C0\67E5\54CD\5E94\662F\5426\5305\542B\6709\6548\6570\636E'),
'        if (data && data.resp && data.resp.data) {',
'            const responseData = JSON.parse(data.resp.data);',
'',
'            const userName = responseData.form_data.check_user_name || "-";',
'            const checkDate = formatDateString(responseData.form_data.check_date) || "-";',
'            const status = getStatusText(responseData.form_data.status);',
'            const result = responseData.form_data.result || "-";',
'            const resultText = getResultText(result);',
'            const statusResult = setStatusText(result);',
'            const formName = responseData.form_data.form_name;',
'            const realreviewuser = responseData.form_data.real_review_user || "-";',
'            const reasonforrefusal = responseData.form_data.reason_for_refusal || "-";',
'',
'            const item_data = responseData.item_data || [];',
'',
'            // =========================',
unistr('            // \4FEE\590D1\FF1A\6309 sort_num \6392\5E8F'),
'            // =========================',
'            item_data.sort((a, b) => {',
'                return (a.sort_num || 0) - (b.sort_num || 0);',
'            });',
'',
'            if ($v(''P266_TYPE'') == ''PATROL'') {',
'                container.innerHTML = `',
'                <table class="table table-borderless" style="margin-bottom:35px">',
'                    <thead>',
'                    <tr>',
unistr('                     <th scope="col">\70B9\68C0\4EBA\FF1A</th>'),
unistr('                     <th scope="col">\70B9\68C0\65E5\671F\FF1A</th>'),
unistr('                     <th scope="col">\70B9\68C0\72B6\6001\FF1A</th>'),
'                    </tr>',
'                 </thead>',
'                    <tbody>',
'                 <tr>',
'                    <th>${userName}</th>',
'                    <th>${checkDate}</th>',
'                    <th>${status}</th>',
'                 </tr>',
'                <tr>',
unistr('                     <th scope="col">\70B9\68C0\7ED3\679C\FF1A</th>'),
unistr('                     <th scope="col">\8868\5355\540D\79F0\FF1A</th>'),
unistr('                     <th scope="col">\5BA1\6838\4EBA\FF1A</th>'),
'                </tr>',
'                <tr>',
'                  <th id="result" style="color: ${resultText.color}">${resultText.text}</th>',
'                   <th>${formName}</th>',
'                   <th>${realreviewuser}</th>',
'                </tr>',
'                 <tr>',
unistr('                     <th scope="col">\62D2\7EDD\7406\7531\FF1A</th>'),
'                </tr>',
'                <tr>',
'                    <th>${reasonforrefusal}</th>',
'                </tr>',
'                </tbody>',
'                </table>',
'                `;',
'            } else {',
'                container.innerHTML = `',
'                <table class="table table-borderless" style="margin-bottom:35px">',
'                    <thead>',
'                    <tr>',
unistr('                     <th scope="col">\68C0\67E5\4EBA\FF1A</th>'),
unistr('                     <th scope="col">\68C0\67E5\65E5\671F\FF1A</th>'),
unistr('                     <th scope="col">\7EF4\4FDD\72B6\6001\FF1A</th>'),
'                    </tr>',
'                 </thead>',
'                    <tbody>',
'                 <tr>',
'                    <th>${userName}</th>',
'                    <th>${checkDate}</th>',
'                    <th>${status}</th>',
'                    <th id="result" style="color: ${resultText.color}">${resultText.text}</th>',
'                    <th>${formName}</th>',
'                </tr>',
'                 <tr>',
unistr('                     <th scope="col">\7EF4\4FDD\7ED3\679C\FF1A</th>'),
unistr('                     <th scope="col">\8868\5355\540D\79F0\FF1A</th>'),
unistr('                     <th scope="col">\5BA1\6838\4EBA\FF1A</th>'),
'                 </tr>',
'                <tr>',
'                    <th id="result" style="color: ${resultText.color}">${resultText.text}</th>',
'                    <th>${formName}</th>',
'                    <th>${realreviewuser}</th>',
'                </tr>',
'                </tr>',
'                   <tr>',
unistr('                     <th scope="col">\62D2\7EDD\7406\7531\FF1A</th>'),
'                </tr>',
'                <tr>',
'                    <th>${reasonforrefusal}</th>',
'                </tr>',
'                </tbody>',
'                </table>',
'                `;',
'            };',
'',
'            const statusElement = document.createElement("ul");',
'            statusElement.classList.add("list-group");',
'',
'            statusElement.innerHTML = `',
unistr('                <li class="list-group-item border-0">\8BBE\5907\72B6\6001\FF1A</li>'),
'                <li class="list-group-item border-0">',
'                    <input class="form-control" type="text" value="${statusResult.text}" disabled readonly>',
'                </li>',
'            `;',
'',
'            container.appendChild(statusElement);',
'',
'            // ====================================================',
unistr('            // \4FEE\590D2\FF1AforEach(async) \6539\6210 for...of'),
unistr('            // \89E3\51B3\5F02\6B65\56FE\7247\8BF7\6C42\5BFC\81F4\9875\9762\987A\5E8F\9519\4E71\95EE\9898'),
'            // ====================================================',
'            for (const [index, item] of item_data.entries()) {',
'',
'                const ulElement = document.createElement("ul");',
'                ulElement.classList.add("list-group");',
'',
unistr('                // \70B9\68C0\9879\72B6\6001'),
unistr('                let isNormalText = "\6B63\5E38";'),
'',
'                if (item.is_normal === 0) {',
unistr('                    isNormalText = "\5F02\5E38";'),
'                }',
'',
unistr('                // \70B9\68C0\9879\5185\5BB9'),
'                let value = '''';',
'',
'                if (item.type === "NUMBER") {',
'                    if (item.value !== null && item.number_unit !== null) {',
'                        value = item.value + item.number_unit;',
'                    }',
'                } else if (item.type === "TEXT" || item.type === "COMMON") {',
'                    if (item.value !== null) {',
'                        value = item.value;',
'                    }',
'                }',
'',
'                const images = item.images ? item.images.split('','') : [];',
'',
'                console.log(images);',
'',
'                let showImages = [];',
'',
'                // ============================================',
unistr('                // \4FEE\590D3\FF1A\589E\52A0 images[0] \5B89\5168\5224\65AD'),
unistr('                // \9632\6B62 images \4E3A\7A7A\65F6\62A5\9519'),
'                // ============================================',
'                if (images.length > 0 && !/^http/i.test(images[0])) {',
'',
unistr('                    // \79C1\6709\5316\94FE\63A5\8BF7\6C42\4E34\65F6URL'),
'                    const data = await s3Client.getDownloadUrls(images);',
'',
unistr('                    console.log(''\6210\529F\83B7\53D6:'', data);'),
'',
'                    const urls = Array.isArray(data) ? data : [data];',
'',
'                    urls.forEach(item => {',
'                        const link = item.proxySignedFileUrl;',
unistr('                        console.log(''\53EF\4E0B\8F7D\94FE\63A5:'', link);'),
'                    });',
'',
'                    showImages = urls.map(i => i.proxySignedFileUrl);',
'',
'                } else if (images.length > 0 && /^http/i.test(images[0])) {',
'',
unistr('                    // \65E7\94FE\63A5\76F4\63A5\5C55\793A'),
'                    showImages = images;',
'                }',
'',
unistr('                console.log(''\6210\529F\83B7\53D6showImages:'', showImages);'),
'',
'                const imageElements = showImages.map((imageUrl, i) => {',
'                    console.log(imageUrl);',
'',
'                    return `',
'                        <a href="${imageUrl}" data-lightbox="image-group-${index}-${i}">',
'                            <img src="${imageUrl}" style="width:75px;height:75px" alt="Image ${i + 1}">',
'                        </a>',
'                    `;',
'                }).join('''');',
'',
'                const imageContainer = document.createElement("div");',
'',
'                imageContainer.style.display = "flex";',
'                imageContainer.style.flexWrap = "wrap";',
'                imageContainer.style.marginTop = "10px";',
'                imageContainer.style.gap = "10px 10px";',
'',
'                imageContainer.innerHTML = imageElements;',
'',
'                console.log(''result:'' + result, ''status:'' + status);',
'',
'                if (',
'                    (',
'                        result == ''NORMAL'' ||',
'                        result == ''RECHECK_NORMAL'' ||',
'                        result == "ERROR" ||',
'                        result == "REJECT"',
'                    ) &&',
'                    (',
unistr('                        status == ''\5DF2\5B8C\6210'' ||'),
unistr('                        status == ''\5DF2\70B9\68C0'' ||'),
unistr('                        status == ''\5BA1\6838\4E2D'' ||'),
unistr('                        status == ''\5BA1\6838\672A\901A\8FC7'''),
'                    )',
'                ) {',
'',
'                    const liValue = value',
'                        ? `<li class="list-group-item border-0">',
'                            <input class="form-control" type="text" value="${value}" disabled readonly>',
'                           </li>`',
'                        : '''';',
'',
'                    const liIsNormalText = isNormalText',
'                        ? `<li class="list-group-item border-0">',
'                            <input class="form-control" type="text" value="${isNormalText}" disabled readonly>',
'                           </li>`',
'                        : '''';',
'',
'                    const liImageContainer = imageElements',
'                        ? `<li class="list-group-item border-0">${imageContainer.outerHTML}</li>`',
'                        : '''';',
'',
'                    ulElement.innerHTML = `',
'                        <li class="list-group-item border-0">',
unistr('                            ${index + 1}\3001 ${item.name}'),
'                        </li>',
'',
'                        ${liValue}',
'',
'                        ${liIsNormalText}',
'',
'                        ${liImageContainer}',
'                    `;',
'',
'                } else {',
'',
'                    ulElement.innerHTML = `',
'                        <li class="list-group-item border-0">',
unistr('                            ${index + 1}\3001 ${item.name}'),
'                        </li>',
'                    `;',
'                }',
'',
'                container.appendChild(ulElement);',
'            }',
'        }',
'    })',
'    .catch((error) => {',
'        console.error("Error fetching data:", error);',
'    });',
'',
unistr('// \683C\5F0F\5316\65E5\671F\5B57\7B26\4E32'),
'function formatDateString(dateString) {',
'    if (dateString) {',
'        return dateString.replace(/T/, '' '').replace(/\//g, ''-'');',
'    } else {',
'        return "";',
'    }',
'}',
'',
unistr('// \83B7\53D6\72B6\6001\6587\672C'),
'if ($v(''P266_TYPE'') == ''PATROL'') {',
'',
'    function getStatusText(status) {',
'',
'        const statusMap = {',
unistr('            "COMPLETED": "\5DF2\70B9\68C0",'),
unistr('            "WAIT": "\672A\70B9\68C0",'),
unistr('            "OVERDUE": "\8FC7\671F\672A\70B9\68C0",'),
unistr('            "WAIT_REVIEW": "\5BA1\6838\4E2D",'),
unistr('            "REJECT": "\5BA1\6838\672A\901A\8FC7"'),
'        };',
'',
'        return statusMap[status] || status;',
'    }',
'',
'} else {',
'',
'    function getStatusText(status) {',
'',
'        const statusMap = {',
unistr('            "COMPLETED": "\5DF2\5B8C\6210",'),
unistr('            "WAIT": "\672A\5B8C\6210",'),
unistr('            "OVERDUE": "\8FC7\671F\672A\5B8C\6210",'),
unistr('            "WAIT_REVIEW": "\5BA1\6838\4E2D",'),
unistr('            "REJECT": "\5BA1\6838\672A\901A\8FC7"'),
'        };',
'',
'        return statusMap[status] || status;',
'    }',
'}',
'',
unistr('// \83B7\53D6\5904\7406\540E\7684\7ED3\679C\6587\672C\548C\989C\8272'),
'function getResultText(result) {',
'',
'    console.log(''001:'' + result);',
'',
'    if (result === "STOP") {',
unistr('        return { text: "\505C\673A", color: "red" };'),
'    }',
'    else if (result === "ERROR") {',
unistr('        return { text: "\5F02\5E38", color: "red" };'),
'    } else if (result === "NORMAL") {',
unistr('        return { text: ''\6B63\5E38'', color: "black" };'),
'    } else if (result === "RECHECK_NORMAL") {',
unistr('        return { text: ''\590D\68C0\6B63\5E38'', color: "black" };'),
'    } else {',
'        return { text: result, color: "black" };',
'    }',
'}',
'',
'function setStatusText(result) {',
'',
'    if (result === "STOP") {',
unistr('        return { text: "\505C\673A" };'),
'    }',
'    else if (',
'        result === "NORMAL" ||',
'        result === "RECHECK_NORMAL" ||',
'        result === "ERROR"',
'    ) {',
unistr('        return { text: ''\6B63\5E38'' };'),
'    } else {',
'        return { text: ''-'' };',
'    }',
'}'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#bootstrap.min.css',
'#APP_FILES#lightbox.css',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.red{',
'    color: red;',
'}',
'',
'img{',
'    width: 75px;',
'    height: 75px;',
'}',
'',
'.no_display{',
'    display: none;',
'}',
'',
'ul{',
'    list-style-type: none;',
'}',
'',
'table{',
'    font-size:16px;',
'}',
'',
'.list-group-item{',
'    font-size:16px;',
'}',
'',
'',
'.form-control{',
'    margin-top: 10px !important;',
'        font-size:16px;',
'}',
'',
'.list-group{',
'    --bs-list-group-item-padding-y:0px !important;',
'    --bs-list-group-item-padding-x:0px !important;',
'    margin-left:10px !important;',
'    margin-top:20px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'800'
,p_dialog_max_width=>'800'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2908487452840564337)
,p_plug_name=>unistr('\8BE6\60C5')
,p_region_name=>'container'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2359778576122135288)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629811240108493009)
,p_name=>'P266_RECORD_ID'
,p_item_sequence=>10
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2629811666611493009)
,p_name=>'P266_API_URL'
,p_item_sequence=>20
,p_item_default=>'select VALUE from DICTIONARY_MAP where  key=''ODRS_YWJA_API'' and BASE_DEPT_ID=:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2636941539512063899)
,p_name=>'P266_TYPE'
,p_item_sequence=>40
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_item_comment=>unistr('\533A\5206\662F\70B9\68C0\8FD8\662F\7EF4\4FDD')
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633408932861613840)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633409417408613839)
,p_event_id=>wwv_flow_imp.id(633408932861613840)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P266_RECORD_ID'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(633409800389613839)
,p_name=>unistr('\9690\85CF\672A\70B9\68C0')
,p_event_sequence=>20
,p_condition_element=>'P266_NI,P266_NI_STATUS,P266_AIR,P266_AIR_STATUS,P266_WATER,P266_WATER_STATUS,P266_AIR_EXIT,P266_CLEAN,P266_CLEAN_STATUS,P266_AIR_EXIT_STATUS'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(633410333432613839)
,p_event_id=>wwv_flow_imp.id(633409800389613839)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P266_CONTENT_1,P266_CONTENT_1_STATUS,P266_CONTENT_2_STATUS,P266_CONTENT_2,P266_CONTENT_3,P266_CONTENT_3_STATUS,P266_CONTENT_4,P266_CONTENT_5,P266_CONTENT_5_STATUS,P266_CONTENT_4_STATUS'
);
wwv_flow_imp.component_end;
end;
/

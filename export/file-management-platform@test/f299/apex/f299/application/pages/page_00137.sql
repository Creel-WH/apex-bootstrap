prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_name=>unistr('\6587\4EF6\9884\89C8')
,p_alias=>unistr('\6587\4EF6\9884\89C81')
,p_step_title=>unistr('\6587\4EF6\9884\89C8')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3743170670646282059)
,p_javascript_file_urls=>'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js  '
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
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''h1[class="t-Breadcrumb-label"]'').text($v(''P137_FILE_NAME''))',
'',
'',
'    function p137ExtractFileKey(fileUrl) {',
'    const rawFileUrl = String(fileUrl || '''');',
'    const bucketMarker = ''/ywja-public-bucket/'';',
'    const bucketIndex = rawFileUrl.indexOf(bucketMarker);',
'    return bucketIndex >= 0 ? rawFileUrl.substring(bucketIndex + bucketMarker.length) : rawFileUrl;',
'}',
'',
'    async function p137ResolveSignedUrl(fileUrl) {',
'    const rawFileUrl = String(fileUrl || '''');',
'    const objectKey = p137ExtractFileKey(rawFileUrl);',
'    const baseUrl = String($v(''P0_UPLOAD_LINK'') || '''');',
'    const appKey = String($v(''P0_STS_APPKEY'') || '''');',
'    const appSecret = String($v(''P0_STS_APPSECRET'') || '''');',
'    const candidates = [];',
'',
'    if (!objectKey || !baseUrl || !appKey || !appSecret) {',
'        return '''';',
'    }',
'',
'    candidates.push(objectKey);',
'    try {',
'        const decodedKey = decodeURIComponent(objectKey);',
'        if (decodedKey && decodedKey !== objectKey) {',
'            candidates.push(decodedKey);',
'        }',
'    } catch (e) {',
'    }',
'',
'    for (const candidate of candidates) {',
'        const response = await fetch(baseUrl + ''/download/batchSign'', {',
'            method: ''POST'',',
'            headers: {',
'                ''Content-Type'': ''application/json'',',
'                appKey: appKey,',
'                appSecret: appSecret',
'            },',
'            body: JSON.stringify({',
'                fileKeys: [candidate],',
'                expireHours: 24,',
'                aliasKey: ''SALES_TOOL_S3''',
'            })',
'        });',
'        if (!response.ok) {',
'            continue;',
'        }',
'        const result = await response.json();',
'        const data = Array.isArray(result && result.data) ? result.data[0] : (result && result.data);',
'        if (!data) {',
'            continue;',
'        }',
'        if (data.proxySignedFileUrl) {',
'            return data.proxySignedFileUrl;',
'        }',
'        if (data.signedFileUrl) {',
'            return data.signedFileUrl.replace(''https://ossha.jasolar.com:8083'', ''https://jingobj.jasolar.com:26000/s3'');',
'        }',
'        if (data.url) {',
'            return data.url;',
'        }',
'        if (typeof data === ''string'' && data) {',
'            return data;',
'        }',
'    }',
'',
'    return '''';',
'}',
'',
'    async function p137CanDirectPreview(fileUrl) {',
'    try {',
'        const response = await fetch(fileUrl, { method: ''HEAD'' });',
'        return response.ok;',
'    } catch (e) {',
'        return false;',
'    }',
'}',
'',
'    async function p137ResolvePreviewUrl(fileUrl) {',
'    const rawFileUrl = String(fileUrl || '''');',
'',
'    if (!rawFileUrl) {',
'        return '''';',
'    }',
'',
'    if (rawFileUrl.startsWith("http") && await p137CanDirectPreview(rawFileUrl)) {',
'        return rawFileUrl;',
'    }',
'',
'    try {',
'        const signedUrl = await p137ResolveSignedUrl(rawFileUrl);',
'        if (signedUrl) {',
'            return signedUrl;',
'        }',
'    } catch (error) {',
unistr('            console.warn(''\83B7\53D6\7B7E\540D\9884\89C8\5730\5740\5931\8D25\FF0C\56DE\9000\539F\59CB\5730\5740:'', error);'),
'    }',
'',
'    return '''';',
'}',
'',
'    function p137RenderPreview(fileUrl) {',
'    const url = ''https://jingobj.jasolar.com:26000/kkPreview?sourceUrl='' + encodeURIComponent(fileUrl);',
'    $(''#left-area'').append($(''#back_btn''));',
'    $(''#right-area'').append($(''#share_btn''));',
'    $(''#iframe'').remove();',
'    $(''#main'').append(`<iframe id=''iframe'' width="100%" height="100%" src="${url}"></iframe>`);',
'}',
'',
'    function p137RenderPreviewMessage(message) {',
'    $(''#iframe'').remove();',
'    $(''#p137-preview-message'').remove();',
'    $(''#main'').append(''<div id="p137-preview-message" style="padding: 24px; color: #333;">'' + message + ''</div>'');',
'}',
'',
'    async function downloadFile() {',
'    const fileUrl = String($v(''P137_FILE_URL'') || '''');',
'    if (!fileUrl) {',
unistr('        alert(''\6587\4EF6\5730\5740\65E0\6548'');'),
'        return;',
'    }',
'    try {',
'        const previewUrl = await p137ResolvePreviewUrl(fileUrl);',
'        if (!previewUrl) {',
unistr('            p137RenderPreviewMessage(''\5F53\524D\6587\4EF6\9884\89C8\670D\52A1\4E0D\53EF\7528\FF0C\8BF7\8054\7CFB\7BA1\7406\5458\68C0\67E5 OSS \4E0B\8F7D\7B7E\540D\914D\7F6E\3002'');'),
'            return;',
'        }',
'        $s(''P137_FILE_URL'', previewUrl);',
'        p137RenderPreview(previewUrl);',
'    } catch (error) {',
unistr('        console.error(''\83B7\53D6\6587\4EF6\9884\89C8\5730\5740\5931\8D25:'', error);'),
unistr('        p137RenderPreviewMessage(''\6587\4EF6\9884\89C8\5931\8D25\FF1A'' + (error && error.message ? error.message : error));'),
'    }',
'}',
'',
' downloadFile();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn  {',
'    display: none;',
'}',
'',
'#fun-area {',
'    padding: 3px 50px;',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'}',
'#left-area {',
'    /* padding: 3px 50px; */',
'    display: flex;',
'    justify-content: flex-end;',
'    align-items: center;',
'}',
'',
'.info {',
'    margin-right: 10px;',
'}',
'',
'#request_btn,#read_btn {',
'    display: none;',
'}',
'',
'#share_btn {',
'    margin-left: 10px;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display: none;',
'}',
'.t-Footer{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3307978422265903439)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>120
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4668698026078730757)
,p_plug_name=>unistr('\62A5\544A\5185\5BB9')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(9760095805010264254)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FILE_ID,',
'       FILE_NAME,',
'       FILE_URL,',
'       FILE_PATH||''/''||FILE_NAME FILE_PATH',
'from STS_FILE;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3307978316583903438)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3307978422265903439)
,p_button_name=>unistr('\8FD4\56DE\4E0A\7EA7')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--link'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('<  \8FD4\56DE\4E0A\7EA7')
,p_button_position=>'UP'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307977797265903433)
,p_name=>'P137_FILE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_item_source_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_source=>'FILE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307977905776903434)
,p_name=>'P137_FILE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_item_source_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_source=>'FILE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307978018970903435)
,p_name=>'P137_FILE_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_item_source_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_source=>'FILE_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3307978111762903436)
,p_name=>'P137_FILE_PATH'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3307978422265903439)
,p_item_display_point=>'SMART_FILTERS'
,p_item_source_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_source=>'FILE_PATH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9760156350373264292)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174854)
,p_name=>'P137_REPORT_CAN_WATCH'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3308006853518985718)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4668698026078730757)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \62A5\544A\8BE6\60C5\67E5\770B')
,p_internal_uid=>468858228879061693
);
wwv_flow_imp.component_end;
end;
/

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
,p_javascript_file_urls=>'https://jingobj.jasolar.com:26000/tdd-public/public/s3-client.js  '
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
'    function p137ReadBreadcrumbs() {',
'    try {',
'        return JSON.parse($v(''P137_BREADCRUMB_JSON'') || ''[]'');',
'    } catch (e) {',
'        return [];',
'    }',
'}',
'',
'    function p137SyncBackButton() {',
'    const returnUrl = String($v(''P137_RETURN_URL'') || '''');',
'    const $backButton = $(''#back_btn, .ja-bpoint-btn'').first();',
'',
'    if (!$backButton.length || !returnUrl) {',
'        return;',
'    }',
'',
'    $backButton.attr(''href'', returnUrl);',
'    $backButton.off(''click.p137return'').on(''click.p137return'', function(event) {',
'        event.preventDefault();',
'        window.location.href = returnUrl;',
'    });',
'}',
'',
'    function p137RenderBreadcrumbs() {',
'    const crumbs = p137ReadBreadcrumbs();',
'    const detail = p137ReadJsonItem(''P137_FILE_DETAIL_JSON'', {});',
'    const $body = $(''#p137_titlebar .t-BreadcrumbRegion-body'');',
'    let $path = $(''#p137_titlebar_path'');',
'',
'    if (!$body.length) {',
'        return;',
'    }',
'',
'    if (!$path.length) {',
'        $body.append(''<div id="p137_titlebar_path"><div class="p137-crumbs"></div><div class="p137-file-title"></div></div>'');',
'        $path = $(''#p137_titlebar_path'');',
'    }',
'',
'    const breadcrumbHtml = (crumbs || []).filter(function(crumb) {',
'        const isCurrent = crumb && (crumb.current === true || String(crumb.current || '''').toLowerCase() === ''true'');',
'        return !isCurrent;',
'    }).map(function(crumb, index) {',
'        const label = apex.util.escapeHTML(String((crumb && crumb.label) || ''''));',
'        const url = apex.util.escapeHTML(String((crumb && crumb.url) || ''''));',
'        const separator = ''<span class="p137-crumb-sep"><span class="fa fa-angle-right" aria-hidden="true"></span></span>'';',
'',
'        return (index ? separator : '''') + (!url',
'            ? ''<span class="p137-crumb-current">'' + label + ''</span>''',
'            : ''<a class="p137-crumb" href="'' + url + ''">'' + label + ''</a>'');',
'    }).join('''');',
'',
'    const fileFormat = String(detail.fileFormat || '''').toUpperCase();',
'    const fileName = apex.util.escapeHTML(String(detail.fileName || $v(''P137_FILE_NAME'') || ''''));',
 '    const titleSeparator = breadcrumbHtml ? ''<span class="p137-file-title-sep"><span class="fa fa-angle-right" aria-hidden="true"></span></span>'' : '''';',
'    const iconClass = ({',
'        PDF: ''fa-file-pdf-o'',',
'        DOC: ''fa-file-word-o'',',
'        DOCX: ''fa-file-word-o'',',
'        XLS: ''fa-file-excel-o'',',
'        XLSX: ''fa-file-excel-o'',',
'        CSV: ''fa-file-excel-o'',',
'        PPT: ''fa-file-powerpoint-o'',',
'        PPTX: ''fa-file-powerpoint-o'',',
'        TXT: ''fa-file-text-o'',',
'        JPG: ''fa-file-image-o'',',
'        JPEG: ''fa-file-image-o'',',
'        PNG: ''fa-file-image-o'',',
'        GIF: ''fa-file-image-o'',',
'        BMP: ''fa-file-image-o'',',
'        ZIP: ''fa-file-archive-o'',',
'        RAR: ''fa-file-archive-o'',',
'        MP4: ''fa-file-video-o'',',
'        AVI: ''fa-file-video-o'',',
'        MP3: ''fa-file-audio-o'',',
'        WAV: ''fa-file-audio-o''',
'    }[fileFormat] || ''fa-file-o'');',
'',
'    $path.find(''.p137-crumbs'').html(breadcrumbHtml);',
'    $path.find(''.p137-file-title'').html(',
'        titleSeparator +',
'        ''<span class="p137-file-title-icon fa '' + iconClass + ''" aria-hidden="true"></span>'' +',
'        ''<span class="p137-file-title-text">'' + fileName + ''</span>''',
'    );',
'}',
'',
'    function p137ReadJsonItem(itemName, fallbackValue) {',
'    try {',
'        const raw = $v(itemName);',
'        return raw ? JSON.parse(raw) : fallbackValue;',
'    } catch (e) {',
'        return fallbackValue;',
'    }',
'}',
'',
'    function p137EnsureActionBar() {',
'    const $top = $(''#p137_titlebar .t-BreadcrumbRegion-top'');',
'    const $region = $(''#p137_action_bar'');',
'',
'    if (!$top.length || !$region.length) {',
'        return;',
'    }',
'',
'    let $actions = $(''#p137_titlebar_actions'');',
'    if (!$actions.length) {',
'        $actions = $(''<div id="p137_titlebar_actions"></div>'');',
'        $top.append($actions);',
'    }',
'',
'    $actions.append($region);',
'}',
'',
'    function p137SetFavoriteButtonState(isFavorite) {',
'    const $button = $(''#P137_BTN_FAVORITE'');',
'    const $icon = $button.find(''.t-Icon, .fa'').first();',
'    const favorite = isFavorite === true || String(isFavorite || '''').toUpperCase() === ''Y'';',
'',
'    $button.attr(''data-favorite'', favorite ? ''Y'' : ''N'');',
'    $button.attr(''title'', favorite ? ''取消收藏'' : ''收藏'');',
'    $button.attr(''aria-label'', favorite ? ''取消收藏'' : ''收藏'');',
'',
'    if ($icon.length) {',
'        $icon.removeClass(''fa-star fa-star-o'').addClass(favorite ? ''fa-star'' : ''fa-star-o'');',
'    }',
'}',
'',
'    function p137EscapeHtml(value) {',
'    return apex.util.escapeHTML(String(value == null ? '''' : value));',
'}',
'',
'    function p137OpenRegion(staticId) {',
'    try {',
'        if (apex.theme && typeof apex.theme.openRegion === ''function'') {',
'            apex.theme.openRegion(staticId);',
'            return;',
'        }',
'    } catch (e) {',
'    }',
'',
'    try {',
'        $(''#'' + staticId).dialog(''open'');',
'    } catch (e) {',
'        $(''#'' + staticId).show();',
'    }',
'}',
'',
'    function p137CloseRegion(staticId) {',
'    try {',
'        if (apex.theme && typeof apex.theme.closeRegion === ''function'') {',
'            apex.theme.closeRegion(staticId);',
'            return;',
'        }',
'    } catch (e) {',
'    }',
'',
'    try {',
'        $(''#'' + staticId).dialog(''close'');',
'    } catch (e) {',
'        $(''#'' + staticId).hide();',
'    }',
'}',
'',
'    function p137RenderDetailDrawer() {',
'    const detail = p137ReadJsonItem(''P137_FILE_DETAIL_JSON'', {});',
'    const $container = $(''#p137_detail_drawer_content'');',
'',
'    if (!$container.length) {',
'        return;',
'    }',
'',
'    const rows = [',
'        [''文件名'', detail.fileName],',
'        [''文件类型'', detail.fileFormat],',
'        [''文件大小'', detail.fileSize],',
'        [''上传人'', detail.createdBy],',
'        [''上传时间'', detail.creationDate],',
'        [''最新修改'', detail.updateDate],',
'        [''位置'', detail.filePath],',
'        [''文件ID'', detail.fileId],',
'        [''文件链接'', detail.fileUrl, true]',
'    ];',
'',
'    $container.html(rows.map(function(row) {',
'        const label = p137EscapeHtml(row[0]);',
'        const value = row[1] == null || row[1] === '''' ? ''--'' : row[1];',
'        const isLink = row[2] === true && value !== ''--'';',
'',
'        return ''<div class="p137-detail-row">'' +',
'            ''<div class="p137-detail-label">'' + label + ''</div>'' +',
'            ''<div class="p137-detail-value">'' +',
'                (isLink',
'                    ? ''<a href="'' + p137EscapeHtml(value) + ''" target="_blank" rel="noopener noreferrer">'' + p137EscapeHtml(value) + ''</a>''',
'                    : p137EscapeHtml(value)) +',
'            ''</div>'' +',
'        ''</div>'';',
'    }).join(''''));',
'}',
'',
'    function p137OpenDetailDrawer() {',
'    p137OpenRegion(''p137_detail_drawer'');',
'    window.setTimeout(function() {',
'        p137RenderDetailDrawer();',
'    }, 0);',
'}',
'',
'    function p137TriggerDownload(downloadUrl) {',
'    const frameId = ''p137_download_frame'';',
'    let frame = document.getElementById(frameId);',
'    if (!frame) {',
'        frame = document.createElement(''iframe'');',
'        frame.id = frameId;',
'        frame.style.display = ''none'';',
'        document.body.appendChild(frame);',
'    }',
'    frame.src = downloadUrl;',
'}',
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
'    async function p137DownloadCurrentFile() {',
'    const fileUrl = String($v(''P137_FILE_URL'') || '''');',
'    if (!fileUrl) {',
unistr('        apex.message.alert(''\672A\83B7\53D6\5230\5F53\524D\6587\4EF6\5730\5740'');'),
'        return;',
'    }',
'',
'    if (fileUrl.startsWith(''http'')) {',
'        p137TriggerDownload(fileUrl);',
'        return;',
'    }',
'',
'    try {',
'        const downloadUrl = await p137ResolveSignedUrl(fileUrl);',
'        if (!downloadUrl) {',
unistr('            apex.message.alert(''\5F53\524D\6587\4EF6\4E0B\8F7D\5730\5740\4E0D\53EF\7528'');'),
'            return;',
'        }',
'',
'        p137TriggerDownload(downloadUrl);',
'    } catch (error) {',
unistr('        apex.message.alert(''\6587\4EF6\4E0B\8F7D\5931\8D25\FF1A'' + (error && error.message ? error.message : error));'),
'    }',
'}',
'',
'    function p137BindActionButtons() {',
'    $(''#P137_BTN_FAVORITE'').off(''click.p137'').on(''click.p137'', function() {',
'        const $button = $(this);',
'        const currentState = $button.attr(''data-favorite'') === ''Y'';',
'        if ($button.prop(''disabled'')) {',
'            return;',
'        }',
'        $button.prop(''disabled'', true);',
'',
'        apex.server.process(''P137_TOGGLE_FAVORITE'', {',
'            x01: $v(''P137_FILE_ID''),',
'            x02: currentState ? ''REMOVE'' : ''ADD''',
'        }, {',
'            dataType: ''json'',',
'            success: function(resp) {',
'                if (resp && String(resp.code) === ''200'') {',
'                    const nextState = String(resp.isFavorite || (currentState ? ''N'' : ''Y'')).toUpperCase();',
'                    $s(''P137_IS_FAVORITE'', nextState);',
'                    p137SetFavoriteButtonState(nextState);',
'                } else {',
unistr('                    apex.message.alert(resp && resp.message ? resp.message : ''\6536\85CF\64CD\4F5C\5931\8D25'');'),
'                }',
'                $button.prop(''disabled'', false);',
'            },',
'            error: function(xhr, status, error) {',
'                apex.message.alert(error || status || ''Favorite action failed'');',
'                $button.prop(''disabled'', false);',
'            }',
'        });',
'    });',
'',
'    $(''#P137_BTN_DETAIL'').off(''click.p137'').on(''click.p137'', function() {',
'        p137OpenDetailDrawer();',
'    });',
'',
'    $(''#P137_BTN_DOWNLOAD'').off(''click.p137'').on(''click.p137'', function() {',
'        p137DownloadCurrentFile();',
'    });',
'',
'    $(''#P137_BTN_DETAIL_CLOSE'').off(''click.p137'').on(''click.p137'', function() {',
'        p137CloseRegion(''p137_detail_drawer'');',
'    });',
'}',
'',
'    p137SyncBackButton();',
'    p137RenderBreadcrumbs();',
'    p137EnsureActionBar();',
'    p137SetFavoriteButtonState($v(''P137_IS_FAVORITE''));',
'    p137BindActionButtons();',
'',
' downloadFile();',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn  {',
'    display: none;',
'}',
'',
'#p137_titlebar {',
'    display: block;',
'    margin: 0 0 8px 0;',
'    background: transparent;',
'    border: 0;',
'}',
'',
'#p137_titlebar .t-BreadcrumbRegion-top {',
'    display: flex;',
'    align-items: flex-start;',
'    justify-content: space-between;',
'    min-height: 0;',
'    padding: 0;',
'}',
'',
'#p137_titlebar .t-BreadcrumbRegion-body {',
'    flex: 1 1 auto;',
'    min-width: 0;',
'    padding: 0;',
'}',
'',
'#p137_titlebar .t-BreadcrumbRegion-breadcrumb,',
'#p137_titlebar .t-BreadcrumbRegion-title,',
'#p137_titlebar .t-BreadcrumbRegion-buttons {',
'    display: none !important;',
'}',
'',
'#p137_titlebar .t-Breadcrumb {',
'    display: none !important;',
'}',
'',
'#P137_FILE_PATH_CONTAINER {',
'    display: none !important;',
'}',
'',
'#p137_titlebar_path {',
'    display: flex;',
'    flex-direction: column;',
'    align-items: flex-start;',
'    gap: 10px;',
'    min-height: 32px;',
'    padding: 0 0 8px;',
'}',
'',
'#p137_titlebar_actions {',
'    flex: 0 0 auto;',
'    margin-left: 16px;',
'}',
'',
'#p137_action_bar .t-ButtonRegion-wrap,',
'#p137_action_bar .t-ButtonRegion-buttons {',
'    display: flex;',
'    align-items: center;',
'    justify-content: flex-end;',
'    gap: 8px;',
'}',
'',
'#p137_action_bar .t-Button {',
'    width: 40px;',
'    height: 40px;',
'    min-width: 40px;',
'    padding: 0;',
'    border: 1px solid #d0d7e2;',
'    border-radius: 8px;',
'    background: #fff;',
'    box-shadow: none;',
'}',
'',
'#p137_action_bar .t-Button .t-Button-label {',
'    display: none;',
'}',
'',
'#p137_action_bar .t-Button .t-Icon {',
'    margin: 0;',
'    font-size: 18px;',
'    color: #6b7280;',
'}',
'',
'#p137_action_bar .t-Button[data-favorite="Y"] .t-Icon {',
'    color: #f59e0b;',
'}',
'',
'#p137_action_bar .t-Button:hover .t-Icon,',
'#p137_action_bar .t-Button:focus .t-Icon {',
'    color: #111827;',
'}',
'',
'#p137_titlebar_path .p137-crumbs {',
'    display: flex;',
'    align-items: center;',
'    flex-wrap: wrap;',
'    min-width: 0;',
'}',

'#p137_titlebar_path .p137-file-title {',
'    display: flex;',
'    align-items: center;',
'    gap: 12px;',
'    min-width: 0;',
'    color: #111827;',
'}',

'#p137_titlebar_path .p137-file-title-sep {',
'    display: inline-flex;',
'    align-items: center;',
'    color: #94a3b8;',
'    font-size: 18px;',
'    margin-right: 2px;',
'}',

'#p137_titlebar_path .p137-file-title-icon {',
'    flex: 0 0 auto;',
'    font-size: 28px;',
'    color: #1677ff;',
'}',

'#p137_titlebar_path .p137-file-title-text {',
'    min-width: 0;',
'    font-size: 28px;',
'    line-height: 1.35;',
'    font-weight: 600;',
'    color: #111827;',
'    word-break: break-word;',
'}',
'',
'#p137_titlebar_path .p137-crumb,',
'#p137_titlebar_path .p137-crumb-current {',
'    color: #1677ff;',
'    font-size: 13px;',
'    line-height: 20px;',
'    text-decoration: none;',
'}',
'',
'#p137_titlebar_path .p137-crumb-current {',
'    color: #111827;',
'    font-weight: 600;',
'}',
'',
'#p137_titlebar_path .p137-crumb-sep {',
'    display: inline-flex;',
'    align-items: center;',
'    margin: 0 8px;',
'    color: #94a3b8;',
'    font-size: 12px;',
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
'#p137_detail_drawer_content {',
'    padding: 8px 0;',
'}',
'',
'.p137-detail-row {',
'    display: grid;',
'    grid-template-columns: 92px minmax(0, 1fr);',
'    gap: 16px;',
'    padding: 10px 0;',
'    border-bottom: 1px solid #eef2f7;',
'}',
'',
'.p137-detail-row:last-child {',
'    border-bottom: 0;',
'}',
'',
'.p137-detail-label {',
'    color: #6b7280;',
'    font-size: 14px;',
'}',
'',
'.p137-detail-value {',
'    color: #111827;',
'    font-size: 14px;',
'    line-height: 1.6;',
'    word-break: break-word;',
'}',
'',
'.p137-drawer-close .t-Button-label {',
'    display: inline;',
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
,p_region_name=>'p137_titlebar'
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
 p_id=>wwv_flow_imp.id(910001370000000101)
,p_plug_name=>unistr('\64CD\4F5C\680F')
,p_region_name=>'p137_action_bar'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader:t-Region--noUI'
,p_region_css_classes=>'p137-action-bar-region'
,p_plug_template=>wwv_flow_imp.id(9760042325985264236)
,p_plug_display_sequence=>125
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'layout', 'HORIZONTAL',
  'size', 'SMALL')).to_clob
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
'from FMP_FILE;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(910001370000000103)
,p_plug_name=>unistr('\6587\6863\8BE6\60C5')
,p_region_name=>'p137_detail_drawer'
,p_region_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_plug_template=>wwv_flow_imp.id(9760066165122264245)
,p_plug_display_sequence=>310
,p_plug_source=>'<div id="p137_detail_drawer_content"></div>'
,p_plug_source_type=>'NATIVE_STATIC'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
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
,p_button_redirect_url=>'&P137_RETURN_URL.'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001370000000104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910001370000000101)
,p_button_name=>'P137_BTN_FAVORITE'
,p_button_static_id=>'P137_BTN_FAVORITE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\6536\85CF')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-star-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001370000000106)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(910001370000000101)
,p_button_name=>'P137_BTN_DETAIL'
,p_button_static_id=>'P137_BTN_DETAIL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\6587\6863\8BE6\60C5')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-file-text-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001370000000107)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(910001370000000101)
,p_button_name=>'P137_BTN_DOWNLOAD'
,p_button_static_id=>'P137_BTN_DOWNLOAD'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_image_alt=>unistr('\4E0B\8F7D')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-download'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(910001370000000109)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(910001370000000103)
,p_button_name=>'P137_BTN_DETAIL_CLOSE'
,p_button_static_id=>'P137_BTN_DETAIL_CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\5173\95ED')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'p137-drawer-close'
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
,p_name=>'P137_SOURCE_PAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174855)
,p_name=>'P137_SOURCE_PARENT_FOLDER_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174856)
,p_name=>'P137_SOURCE_MODULE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174857)
,p_name=>'P137_RETURN_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174858)
,p_name=>'P137_BREADCRUMB_JSON'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4669034044214174860)
,p_name=>'P137_REPORT_CAN_WATCH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001370000000110)
,p_name=>'P137_IS_FAVORITE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(910001370000000111)
,p_name=>'P137_FILE_DETAIL_JSON'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4668698026078730757)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
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
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001370000000113)
,p_process_sequence=>12
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P137_INIT_ACTION_DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_is_favorite      number := 0;',
'',
'    function p137_file_size_display(p_size number) return varchar2 is',
'    begin',
'        if p_size is null then',
'            return ''--'';',
'        elsif p_size >= 1024 * 1024 * 1024 then',
'            return to_char(round(p_size / (1024 * 1024 * 1024), 2), ''fm9999990d00'') || '' GB'';',
'        elsif p_size >= 1024 * 1024 then',
'            return to_char(round(p_size / (1024 * 1024), 2), ''fm9999990d00'') || '' MB'';',
'        elsif p_size >= 1024 then',
'            return to_char(round(p_size / 1024, 2), ''fm9999990d00'') || '' KB'';',
'        else',
'            return to_char(p_size) || '' B'';',
'        end if;',
'    end;',
'begin',
'    if :P137_FILE_ID is null then',
'        :P137_IS_FAVORITE := ''N'';',
'        :P137_FILE_DETAIL_JSON := ''{}'';',
'        return;',
'    end if;',
'',
'    select count(*)',
'      into l_is_favorite',
'      from fmp_favorite_file ff',
'     where ff.file_id = :P137_FILE_ID',
'       and ff.user_id = to_char(:MPF_USER_ID);',
'',
'    :P137_IS_FAVORITE := case when l_is_favorite > 0 then ''Y'' else ''N'' end;',
'',
'    select json_object(',
'               ''fileId'' value f.file_id,',
'               ''fileName'' value f.file_name,',
'               ''fileFormat'' value upper(coalesce(nullif(f.file_format, ''''), regexp_substr(f.file_name, ''\.([^.]+)$'', 1, 1, null, 1), ''FILE'')),',
'               ''fileSize'' value case',
'                   when f.file_size is null then ''--''',
'                   when f.file_size >= 1024 * 1024 * 1024 then to_char(round(f.file_size / (1024 * 1024 * 1024), 2), ''fm9999990d00'') || '' GB''',
'                   when f.file_size >= 1024 * 1024 then to_char(round(f.file_size / (1024 * 1024), 2), ''fm9999990d00'') || '' MB''',
'                   when f.file_size >= 1024 then to_char(round(f.file_size / 1024, 2), ''fm9999990d00'') || '' KB''',
'                   else to_char(f.file_size) || '' B''',
'               end,',
'               ''createdBy'' value nvl(cu.name, nvl(cfu.user_name, to_char(f.created_by))),',
'               ''creationDate'' value to_char(f.creation_date, ''yyyy-mm-dd hh24:mi''),',
'               ''updateDate'' value to_char(nvl(f.update_date, f.creation_date), ''yyyy-mm-dd hh24:mi''),',
'               ''filePath'' value nvl(f.file_path, ''--''),',
'               ''fileUrl'' value nvl(f.file_url, ''--'')',
'               returning varchar2(4000)',
'           )',
'      into :P137_FILE_DETAIL_JSON',
'      from fmp_file f',
'      left join basic_user cu',
'        on cu.user_id = f.created_by',
'       and cu.tenant_id = f.tenant_id',
'       and cu.del_flag = 0',
'      left join fmp_user cfu',
'        on cfu.user_id = f.created_by',
'       and cfu.tenant_id = f.tenant_id',
'       and nvl(cfu.del_flag, 0) = 0',
'     where f.file_id = :P137_FILE_ID',
'       and f.tenant_id = :USER_TENANT',
'       and nvl(f.del_flag, 0) = 0;',
'',
'exception',
'    when no_data_found then',
'        :P137_IS_FAVORITE := ''N'';',
'        :P137_FILE_DETAIL_JSON := ''{}'';',
'end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(4669034044214174859)
,p_process_sequence=>15
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P137_INIT_NAVIGATION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_source_page      varchar2(20) := trim(:P137_SOURCE_PAGE);',
'    l_source_module    varchar2(30) := upper(trim(:P137_SOURCE_MODULE));',
'    l_source_module_label varchar2(100);',
'    l_parent_folder_id number;',
'    l_return_url       varchar2(32767);',
'',
'    function p137_module_label(p_module varchar2) return varchar2 is',
'    begin',
'        case p_module',
'            when ''RECENT'' then',
unistr('                return ''\6700\8FD1\8BBF\95EE'';'),
'            when ''FAVORITE'' then',
unistr('                return ''\6211\7684\5173\6CE8'';'),
'            when ''SHARED_TO_ME'' then',
unistr('                return ''\4E0E\6211\5206\4EAB'';'),
'            when ''SHARED_BY_ME'' then',
unistr('                return ''\6211\5206\4EAB\7684'';'),
'            else',
unistr('                return ''\9996\9875'';'),
'        end case;',
'    end;',
'begin',
'    begin',
'        l_parent_folder_id := to_number(nullif(:P137_SOURCE_PARENT_FOLDER_ID, ''''));',
'    exception',
'        when value_error then',
'            l_parent_folder_id := null;',
'    end;',
'',
'    if l_parent_folder_id is null then',
'        begin',
'            select parent_folder_id',
'              into l_parent_folder_id',
'              from fmp_file',
'             where file_id = :P137_FILE_ID;',
'        exception',
'            when no_data_found then',
'                l_parent_folder_id := null;',
'        end;',
'    end if;',
'',
'    if l_source_page = ''1'' then',
'        l_source_module_label := p137_module_label(l_source_module);',
'        l_return_url := apex_page.get_url(p_page => 1);',
'        select json_arrayagg(',
'                   json_object(',
'                       ''label'' value label,',
'                       ''url'' value url,',
'                       ''current'' value current_flag',
'                   )',
'                   order by seq',
'                   returning varchar2(4000)',
'               )',
'          into :P137_BREADCRUMB_JSON',
'          from (select 1 seq,',
unistr('                       ''\9996\9875'' label,'),
'                       l_return_url url,',
'                       ''false'' current_flag',
'                  from dual',
'                union all',
'                select 2 seq,',
'                       l_source_module_label label,',
'                       l_return_url url,',
'                       case when l_source_module_label = ',
unistr('''\9996\9875'' then ''true'' else ''false'' end current_flag'),
'                  from dual',
'                union all',
'                select 3 seq,',
'                       nvl(:P137_FILE_NAME, ''File Preview'') label,',
'                       cast(null as varchar2(4000)) url,',
'                       ''true'' current_flag',
'                  from dual);',
'    else',
'        if l_parent_folder_id is not null then',
'            l_return_url := apex_page.get_url(',
'                p_page   => 133,',
'                p_items  => ''P133_PARENT_FOLDER_ID'',',
'                p_values => to_char(l_parent_folder_id)',
'            );',
'',
'            select json_arrayagg(',
'                       json_object(',
'                           ''label'' value crumb_name,',
'                           ''url'' value crumb_url,',
'                           ''current'' value current_flag',
'                       )',
'                       order by seq',
'                       returning varchar2(4000)',
'                   )',
'              into :P137_BREADCRUMB_JSON',
'              from (select row_number() over(order by file_level) seq,',
'                           file_name crumb_name,',
'                           apex_page.get_url(',
'                               p_page   => 133,',
'                               p_items  => ''P133_PARENT_FOLDER_ID'',',
'                               p_values => to_char(file_id)',
'                           ) crumb_url,',
'                           ''false'' current_flag',
'                      from (select file_id, file_name, file_level',
'                              from fmp_file',
'                             where tenant_id = :USER_TENANT',
'                             start with file_id = l_parent_folder_id',
'                           connect by prior parent_folder_id = file_id)',
'                    union all',
'                    select 9999 seq,',
'                           nvl(:P137_FILE_NAME, ''File Preview'') crumb_name,',
'                           cast(null as varchar2(4000)) crumb_url,',
'                           ''true'' current_flag',
'                      from dual);',
'        else',
'            l_return_url := apex_page.get_url(p_page => 133);',
'            select json_arrayagg(',
'                       json_object(',
'                           ''label'' value label,',
'                           ''url'' value url,',
'                           ''current'' value current_flag',
'                       )',
'                       order by seq',
'                       returning varchar2(4000)',
'                   )',
'              into :P137_BREADCRUMB_JSON',
'              from (select 1 seq,',
unistr('                           ''\6587\4EF6\5E93'' label,'),
'                           l_return_url url,',
'                           ''false'' current_flag',
'                      from dual',
'                    union all',
'                    select 2 seq,',
'                           nvl(:P137_FILE_NAME, ''File Preview'') label,',
'                           cast(null as varchar2(4000)) url,',
'                           ''true'' current_flag',
'                      from dual);',
'        end if;',
'    end if;',
'',
'    :P137_RETURN_URL := l_return_url;',
'    if :P137_BREADCRUMB_JSON is null then',
'        :P137_BREADCRUMB_JSON := ''[]'';',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>1823399320671959600
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001370000000001)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P137_LOG_FILE_PREVIEW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_file_name fmp_file.file_name%type;',
'begin',
'    if :P137_FILE_ID is null or :MPF_USER_ID is null then',
'        return;',
'    end if;',
'',
'    select f.file_name',
'      into l_file_name',
'      from fmp_file f',
'     where f.file_id = :P137_FILE_ID',
'       and f.tenant_id = :USER_TENANT',
'       and nvl(f.del_flag, 0) = 0',
'       and upper(nvl(f.file_type, ''FILE'')) <> ''FOLDER'';',
'',
'    insert into fmp_operation_log (',
'        operation_action,',
'        operation_module,',
'        operation_content,',
'        operation_reference_id,',
'        del_flag,',
'        tenant_id,',
'        created_by,',
'        creation_date,',
'        updated_by,',
'        update_date,',
'        operation_params',
'    ) values (',
'        ''VIEW'',',
'        ''FILE_PREVIEW'',',
'        substr(''Preview file "'' || l_file_name || ''"'', 1, 255),',
'        :P137_FILE_ID,',
'        0,',
'        :USER_TENANT,',
'        :MPF_USER_ID,',
'        sysdate,',
'        :MPF_USER_ID,',
'        sysdate,',
'        ''APP_PAGE_ID='' || :APP_PAGE_ID',
'    );',
'exception',
'    when dup_val_on_index then',
'        null;',
'    when no_data_found then',
'        null;',
'end;'))
,p_process_when=>':P137_FILE_ID is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>910001370000000001
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(910001370000000114)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P137_TOGGLE_FAVORITE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_file_id number := to_number(nullif(apex_application.g_x01, ''''));',
'    l_action  varchar2(20) := upper(trim(apex_application.g_x02));',
'    l_exists  number := 0;',
'    l_is_favorite varchar2(1) := ''N'';',
'begin',
'    apex_json.initialize_clob_output;',
'',
'    if l_file_id is null then',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''400'');',
unistr('        apex_json.write(''message'', ''\672A\63A5\6536\5230\6587\4EF6\4FE1\606F'');'),
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'        return;',
'    end if;',
'',
'    if l_action = ''ADD'' then',
'        select count(*)',
'          into l_exists',
'          from fmp_favorite_file',
'         where user_id = :MPF_USER_ID',
'           and file_id = l_file_id',
'           and group_id is null;',
'',
'        if l_exists = 0 then',
'            insert into fmp_favorite_file (group_id, user_id, file_id, favorite_date)',
'            values (null, :MPF_USER_ID, l_file_id, sysdate);',
'        end if;',
'        l_is_favorite := ''Y'';',
'    else',
'        delete from fmp_favorite_file',
'         where user_id = :MPF_USER_ID',
'           and file_id = l_file_id;',
'        l_is_favorite := ''N'';',
'    end if;',
'',
'    commit;',
'    apex_json.open_object;',
'    apex_json.write(''code'', ''200'');',
'    apex_json.write(''isFavorite'', l_is_favorite);',
'    apex_json.close_object;',
'    sys.htp.p(apex_json.get_clob_output);',
'    apex_json.free_output;',
'exception',
'    when others then',
'        rollback;',
'        begin',
'            apex_json.free_output;',
'        exception when others then null; end;',
'        apex_json.initialize_clob_output;',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', sqlerrm);',
'        apex_json.close_object;',
'        sys.htp.p(apex_json.get_clob_output);',
'        apex_json.free_output;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp.component_end;
end;
/

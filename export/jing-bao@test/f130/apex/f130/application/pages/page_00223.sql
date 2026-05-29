prompt --application/pages/page_00223
begin
--   Manifest
--     PAGE: 00223
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
 p_id=>223
,p_name=>unistr('\5176\5B83-\590D\76D8\8BE6\60C5')
,p_alias=>unistr('\5176\5B83-\590D\76D8\8BE6\60C5')
,p_step_title=>unistr('\5176\5B83-\590D\76D8\8BE6\60C5')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/2/upload/2022-10-09/1665298006083.jspdf.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/compressor.min.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/2/upload/2022-10-09/1665297976246.html2canvas.min.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/2/upload/2022-10-09/1665297995026.vue.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/2/upload/2022-10-09/1665298000780.element.js',
'#WORKSPACE_FILES#static/js/medash.min.js',
'-- https://unpkg.com/medash@3.2.2/dist/medash.min.js',
'#WORKSPACE_FILES#static/js/jquery.tagsinput.min.js',
'-- #WORKSPACE_FILES#static/js/aliyun_upload#MIN#.js',
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var updateImage;',
'var map_image = new Map();',
'var close_img_url = ''https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/2/upload/2022-11-15/1668516290204_close.png'';',
'',
'var canvas = document.createElement(''canvas'')',
'var image = new Image()',
unistr('image.crossOrigin = ''Anonymous'';//\89E3\51B3Canvas.toDataURL \56FE\7247\8DE8\57DF\95EE\9898'),
unistr('image.src = close_img_url  //\56FE\7247\8DEF\5F84'),
'var context = canvas.getContext(''2d'')',
'context.drawImage(image, 0, 0, 200, 200)',
unistr('// var img_base_64 = canvas.toDataURL() //imageBase64\5C31\662F\60F3\8981\83B7\53D6\7684\5185\5BB9'),
'var img_base_64 = close_img_url',
'',
'',
'',
'var why5_analysis_images = new Map();',
'var abnormal_problem_images = new Map();',
'var process_analysis_images = new Map();',
'var improve_method_images = new Map();',
'var function_name_images = new Map();',
'var analysis_key_components_images = new Map();',
'var structural_principle_images = new Map();',
'var daily_maintain_images = new Map();',
'var ppt_url = new Map();',
'var file_url;',
'',
'',
'var updateImage;',
'var ossConfig = {}',
'var createEnvironment;',
'$(''#P207_CREATED_TIME'').attr(''readonly'', ''true'');',
'$(''#P207_FAULT_TIME'').attr(''readonly'', ''true'');',
'$(''#P207_END_TIME'').attr(''readonly'', ''true'');',
'$(''#P207_DEPT_MANAGER'').attr(''readonly'', ''true'');',
'',
'',
'',
'/**',
unistr('* \76D1\542C\56FE\7247\53D8\5316'),
'*/',
'function img_close(e) {',
'    console.log(''id:''+$(e).attr(''id''));',
unistr('    // \5220\9664 map\503C'),
'    map_image.delete(parseInt( $(e).attr(''id'')));',
unistr('    // \5220\9664image\5143\7D20'),
'    $($(e).parent()).remove();',
'}',
'',
'',
'',
'function hex2a(hexx) {',
'    var hex = hexx.toString();//force conversion',
'    var str = '''';',
'    for (var i = 0; (i < hex.length && hex.substr(i, 2) !== ''00''); i += 2)',
'        str += String.fromCharCode(parseInt(hex.substr(i, 2), 16));',
'',
'    return str;',
'}',
'',
'function decodeStr(text) {',
'    if (!text)',
'        return "";',
'',
'    //string to byte[]',
'    let byteArr = [];',
'    for (let i = 0; i < text.length; i++) {',
'        byteArr.push(text.charCodeAt(i));',
'    }',
'',
'    let str = "";',
'    for (let i = 0; i < byteArr.length;) {',
'        let binary = byteArr[i].toString(2);',
'        let head = binary.match(/^1+?(?=0)/);',
'',
'        if (head && binary.length == 8) {',
unistr('            //\8A72\5B57\5143\9700\8981\5E7E\500B\4F4D\5143\7D44'),
'            let bytesLength = head[0].length;',
unistr('            //\7B2C\4E00\500B\4F4D\5143\7D44\7684\5BE6\969B\8CC7\6599\5340                 '),
'            let body = binary.slice(bytesLength);',
'            for (let j = 1; j < bytesLength; j++) {',
unistr('                //\7D44\5408\8CC7\6599'),
'                body += byteArr[i + j].toString(2).slice(2);',
'            }',
'            str += String.fromCharCode(parseInt(body, 2));',
'            i += bytesLength;',
'        } else {',
'            str += String.fromCharCode(byteArr[i]);',
'            i++;',
'        }',
'    }',
'    return str;',
'}',
'',
'createEnvironment = (config) => {',
'    let maxNum = 2;',
'    const MAX_SIZE = 1024 * 1024 * 2;',
'    const isArray = (value) => Array.isArray(value);',
'    const gte = (param1, param2) => {',
'        return param1 === param2 || param1 > param2',
'    }',
'    const fileUpdate = async ({ url, fileName, formData }) => {',
'',
'        let { status } = await axios({',
'            method: ''POST'',',
'            headers: { "Content-Type": "multipart/form-data" },',
'            data: formData,',
'            url',
'        })',
'        return status === 200 ? `${url}/${fileName}` : null;',
'    }',
'',
'    /**',
unistr('     * \670D\52A1\5668\7B7E\540D\76F4\8FDE'),
'     */',
'    const getFormData = async (result) => {',
'        // console.log(result)',
'        let data = config,',
'            fileName = `${Date.now()}.${result.type.split("/")[1]}`,',
'            pathName = `${data.dir}${fileName}`;',
'        const formData = new FormData();',
'        formData.set("key", pathName);',
'        formData.set("policy", data.policy);',
'        formData.set("OSSAccessKeyId", data.accessId);',
'        formData.set("success_action_status", "200");',
'        formData.set("signature", data.signature);',
'        formData.set("name", fileName);',
'        formData.set("file", result, result.name);',
'        return { data, formData };',
'    }',
'',
'    const upDataImage = async (result, mapValue) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(Array.from(mapValue.values()).length, maxNum)) return;',
'',
'        if (url) {',
'            mapValue.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, mapValue) => {',
'        // console.log(''222'');',
unistr('        // \62E6\622A\8D85\8FC7\6570\91CF\7684\56FE\7247'),
'        // console.log(file.accepted)',
'        if (!file.accepted) {',
'            return',
'        }',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, mapValue);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, mapValue);',
'    }',
'',
'    const upDataSingleImages = (images, mapValue) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, mapValue)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * mapValue(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, mapValue, max) => {',
'        // console.log(''111'');',
'        maxNum = max',
'        if (gte(mapValue.length, maxNum)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, mapValue) : upDataSingleImage(images, mapValue);',
'    }',
'}',
'',
'function deleteMapItem(data, mapValue) {',
unistr('    //\5220\9664 map \5143\7D20'),
'    var obj = JSON.parse(JSON.stringify(data));',
'    // console.log(obj);',
unistr('    // \4E0A\4F20\672A\6210\529F\7684\6587\4EF6\65E0\9700\5220\9664map'),
'    if (obj.status === ''error'') return',
'    // console.log(obj.xhr.responseText);',
'    var message = JSON.parse(obj.xhr.responseText).message;',
'    var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'    // console.log(file_name);',
'    mapValue.delete(obj.id + file_name);',
'    // console.log(mapValue);',
'}',
'',
'const createEnvironmentFile = (config) => {',
unistr('    // \6700\5927\4E2A\6570'),
'    const MAX_NUM = 6;',
unistr('    //\6587\4EF6\5927\5C0F'),
'    const MAX_SIZE = 1024 * 1024 * 100;',
unistr('    //\6BD4\5BF9\662F\5426\8D85\51FA\9650\5236'),
'    const gte = (param1, param2) => {',
'        return param1 === param2 || param1 > param2',
'    }',
unistr('    //\6587\4EF6\4E0A\4F20'),
'    const fileUpdate = async ({ url, fileName, formData }) => {',
'        let { status } = await axios({',
'            method: ''POST'',',
'            headers: { "Content-Type": "multipart/form-data" },',
'            data: formData,',
'            url',
'        })',
'        return status === 200 ? `${url}/${fileName}` : null;',
'    }',
'    /**',
unistr('     * \670D\52A1\5668\7B7E\540D\76F4\8FDE'),
'     */',
'    const getFormData = async (result) => {',
'        // console.log(result);',
'        let data = config,',
'            fileName = `${Date.now()}.${result.name.substring(result.name.lastIndexOf(''.'') + 1, result.name.length)}`,',
'            pathName = `${data.dir}${fileName}`;',
'        const formData = new FormData();',
'        formData.set("key", pathName);',
'        formData.set("policy", data.policy);',
'        formData.set("OSSAccessKeyId", data.accessId);',
'        formData.set("success_action_status", "200");',
'        formData.set("signature", data.signature);',
'        formData.set("name", fileName);',
'        formData.set("file", result, result.name);',
'        return { data, formData };',
'    }',
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
'        if (gte(htmlContext.size, MAX_NUM)) return;',
unistr('        //\6570\7EC4\6DFB\52A0\7684\65B9\5F0F\FF0C\53EF\4EE5\6362\6210 map'),
'        if (url) {',
'            htmlContext.set(url, result.name);',
'            var div_html = `',
'            <div class="apex-item-text" style="display:block;height:32px;width: 461px;margin: 5px 0 5px 0;">',
'                <span style="float: left">${result.name}</span>',
unistr('                <a href="javascript:void(0);" onclick="btnDel(this)" style="float: right" value = ${url}>\5220\9664</a>'),
'            </div>',
'            `;',
'            $("#my_div").prepend(div_html);',
'            if (ppt_url.size == 6) {',
'                $("#upfile_btn").attr("disabled", true);',
'                return;',
'            }',
'        }',
'',
'    }',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.size, MAX_NUM)) {',
unistr('            console.warn(''\6587\4EF6\4E2A\6570\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        upDataImage(images, htmlContext);',
'    }',
'}',
'',
unistr('// \8BF7\6C42\963F\91CC\4E91\6570\636E'),
'function getOssConfigFile(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.'' + ''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data) {',
'',
'            if (data.code === 200) {',
'                upFile = createEnvironmentFile({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'',
'$("body").append(''<input id="fileupload" type="file" name="" onchange="upload_file(this)" style="display:none">'')',
'var html = `',
'    <div class="row ">',
'    <div class="col col-12 apex-col-auto col-start col-end">',
'        <div class="t-Form-fieldContainer is-required rel-col t-Form-fieldContainer--large apex-item-wrapper apex-item-wrapper--text-field ">',
unistr('            <div class="t-Form-labelContainer col col-2"><label for="my_div" class="t-Form-label">\6807\7B7E<span class="u-VisuallyHidden">(\5FC5\9700\7684\503C)</span></label></div>'),
'            <div class="t-Form-inputContainer col col-10" id="my_tags">',
'                <input id="tags" type="text" class="tags"  style="display: none;">',
'            </div>',
'        </div>',
'    </div>',
'    </div>',
'`;',
'$(html).insertBefore($("#off_line_re_check .container .row")[1]);',
'var html = `',
'    <div class="row ">',
'    <div class="col col-12 apex-col-auto col-start col-end">',
'        <div class="t-Form-fieldContainer is-required rel-col t-Form-fieldContainer--large apex-item-wrapper apex-item-wrapper--text-field ">',
unistr('            <div class="t-Form-labelContainer col col-2"><label for="my_div" class="t-Form-label">\9644\4EF6<span class="u-VisuallyHidden">(\5FC5\9700\7684\503C)</span></label></div>'),
'            <div class="t-Form-inputContainer col col-10" id="my_div">',
'            </div>',
'        </div>',
'    </div>',
'    </div>',
'`;',
'$(html).insertBefore($("#off_line_re_check .container .row")[2]);',
'',
'var file_name;',
'',
'',
'function upload_file(obj) {',
'    var file = obj.files[0];',
'    getOssConfigFile(''&APPKEY.'', ''&APPSECRET.'', () => upFile(file, ppt_url));',
'}',
'',
'',
'',
'function btnClick() {',
'    $(''#fileupload'').click();',
'}',
'',
'function btnDel(obj) {',
'    ppt_url.delete($(obj).attr("value"));',
'    $(obj).parent().remove();',
'    if (ppt_url.size == 5) {',
'        $("#upfile_btn").attr("disabled", false);',
'    }',
'}',
'',
'function btnDownload(url, name) {',
'    return new Promise((resolve, reject) => {',
'        var xhr = new XMLHttpRequest();',
unistr('        xhr.open("GET", url, true); // \4E5F\53EF\4EE5\4F7F\7528POST\65B9\5F0F\FF0C\6839\636E\63A5\53E3'),
unistr('        xhr.responseType = "blob"; // \8FD4\56DE\7C7B\578Bblob'),
unistr('        // \5B9A\4E49\8BF7\6C42\5B8C\6210\7684\5904\7406\51FD\6570\FF0C\8BF7\6C42\524D\4E5F\53EF\4EE5\589E\52A0\52A0\8F7D\6846/\7981\7528\4E0B\8F7D\6309\94AE\903B\8F91'),
'        xhr.onload = function () {',
unistr('            // \8BF7\6C42\5B8C\6210'),
'            if (this.status === 200) {',
unistr('                // \8FD4\56DE200'),
'                var blob = this.response;',
'                var reader = new FileReader();',
unistr('                reader.readAsDataURL(blob); // \8F6C\6362\4E3Abase64\FF0C\53EF\4EE5\76F4\63A5\653E\5165a\8868\60C5href'),
'                reader.onload = function (e) {',
unistr('                    // \8F6C\6362\5B8C\6210\FF0C\521B\5EFA\4E00\4E2Aa\6807\7B7E\7528\4E8E\4E0B\8F7D'),
'                    var a = document.createElement("a");',
'                    a.download = name;',
'                    a.href = e.target.result;',
unistr('                    $("body").append(a); // \4FEE\590Dfirefox\4E2D\65E0\6CD5\89E6\53D1click'),
'                    a.click();',
'                    resolve(200)',
'                    $(a).remove();',
'                };',
'            }',
'        };',
unistr('        // \53D1\9001ajax\8BF7\6C42'),
'        xhr.send();',
'    })',
'};',
'',
'$(''#tags'').tagsInput({',
'    ''width'': ''460px'',',
'    ''height'': ''60px'',',
'    ''interactive'': true,',
unistr('    ''defaultText'': ''\6DFB\52A0\6807\7B7E'','),
'    ''removeWithBackspace'': false,',
'    ''minChars'': 1,',
unistr('    // ''onAddTag'': callback_function, // \6807\7B7E\56DE\8C03'),
'    ''placeholderColor'': ''#666666''',
'});',
'',
'',
'function callback_function() {',
'    var tags_list = $(''#tags'').val().split('','');',
'    if (tags_list.slice(-1)[0].length > 30) {',
'        var tag = tags_list.slice(-1)[0].substring(0, 29);',
'        $(''#tags'').removeTag(tags_list.slice(-1)[0]);',
'        $(''#tags'').addTag(tag);',
'    }',
'    if ($(''#tags'').val().length > 154) {',
'        $(''#tags'').removeTag(tags_list.slice(-1)[0]);',
'    }',
'    if (tags_list.length == 6) {',
'        $(''#tags'').removeTag(tags_list[5]);',
'    }',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/css/ppt#MIN#.css',
'#WORKSPACE_FILES#static/css/recordComments.css',
'-- https://unpkg.com/element-ui/lib/theme-chalk/index.css',
'#WORKSPACE_FILES#static/css/index#MIN#.css',
'#WORKSPACE_FILES#static/css/jquery.tagsinput.css',
'#WORKSPACE_FILES#static/css/layui.css',
'#WORKSPACE_FILES#static/css/laydate.css?v=5.3.1.css',
'#WORKSPACE_FILES#static/css/layer.css?v=3.5.1.css',
'#WORKSPACE_FILES#static/css/code.css?v=2.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .page-1 {',
'    background-size: 100%;',
'    background-image: url(''#WORKSPACE_FILES#static/images/ppt-page1.png'');',
'}',
'',
'.page-2,.page-3,.page-4,.page-5 {',
'    background-size: 100%;',
'    background-image: url(''#WORKSPACE_FILES#static/images/ppt-page2.png'');',
'}',
'',
'.page-6 {',
'    background-size: 100%;',
'    background-image: url(''#WORKSPACE_FILES#static/images/ppt-page3.png'');',
'} */',
'.page-1 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/ywja-public-bucket/jingbao/ppt-page1.png'');',
'}',
'',
'.page-2,.page-3,.page-4,.page-5 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/ywja-public-bucket/jingbao/ppt-page2.png'');',
'}',
'',
'.page-6 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/ywja-public-bucket/jingbao/ppt-page3.png'');',
'}',
'',
'.image-must {',
'    position: relative;',
'}',
'.image-must::before {',
'    position: absolute;',
'    content: '''';',
'    border-width: 4px;',
'    border-color: var(--a-form-required-asterisk-text-color, red) transparent transparent var(--a-form-required-asterisk-text-color, red);',
'    border-style: solid;',
'    z-index: 2;',
'    border-top-left-radius: var(--a-field-input-border-radius, 2px);',
'}',
'',
'',
' .img-item {',
'        position: relative;',
'        width: 200px;',
'        display: inline-block;',
'        margin-left: 20px;',
'    }',
'',
'    .close-icon {',
'        position: absolute;',
'        content: '''';',
'        width: 15px;',
'        height: 15px;',
'        top: -5px;',
'        right: -5px;',
'    }'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2215138615026957353)
,p_plug_name=>unistr('\57FA\672C\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>51
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2227665724397674638)
,p_plug_name=>unistr('\5BA1\6838\7ED3\679C\63CF\8FF0')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>60
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id=''results'' class="comment"></span>',
''))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from TENANT_EVENT_REVIEW_OTHER',
'where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'  and TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID=:BASE_DEPT_ID',
'  and AUDIT_STATE IN (''COMPLETE'', ''REJECT'');'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2287249688176762026)
,p_plug_name=>unistr('\533A\57DF\9009\62E9')
,p_region_name=>'region_id'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2286691210933554757)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'N',
  'rds_mode', 'STANDARD',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2287249467357762024)
,p_plug_name=>unistr('\7EBF\4E0A\590D\76D8')
,p_region_name=>'on_line_re_check'
,p_parent_plug_id=>wwv_flow_imp.id(2287249688176762026)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    IF :P223_STATUS = ''WAIT'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        IF :P223_AUDIT_TYPE = ''ON_LINE'' THEN',
'            RETURN TRUE;',
'        ELSE',
'            RETURN FALSE;',
'        END IF;',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259987422191233165)
,p_plug_name=>unistr('\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>180
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'       ',
'        return true;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259989201923233182)
,p_plug_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS=''AUDIT'' then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259989249282233183)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>280
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS=''REJECT'' then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2259989318346233184)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\5B8C\6210-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>300
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS IN (''COMPLETE'',''UNREVIEW'')  then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260534849096268488)
,p_plug_name=>unistr('\5BA1\6838\4EBA-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2263391578862193647)
,p_plug_name=>unistr('PDF\9884\89C8-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>200
,p_plug_grid_column_css_classes=>'preview-box'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="pdf-area">',
'    <div id="pdfView">',
'        <div class="page page-1">',
'            <div class="page-1-title">',
'                <p>',
'                    <span id=''beginTime''></span>',
'                    <span id=''fabName''></span>',
'                    <span id=''areaName''></span>',
'                </p>',
'                <P>',
'                    <span id=''deviceName''></span>',
'                    <span id=''secondEventName''></span>',
'                </P>',
'            </div>',
'        </div>',
'        <div class="page page-2">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3</span>'),
'            <ul class="directory">',
unistr('                <li><span>\6545\969C\57FA\672C\4FE1\606F\63CF\8FF0</span></li>'),
unistr('                <li><span>\5F02\5E38\5206\6790OPL(One Point Lesson)</span></li>'),
unistr('                <li><span>\77E5\8BC6\52A0\6CB9\7AD9</span></li>'),
'            </ul>',
'        </div>',
'        <div class="page page-3">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-\57FA\672C\4FE1\606F</span>'),
'            <ul class="fault-info">',
'                <li>',
unistr('                    <span>when\FF08\6545\969C\53D1\751F\65E5\671F\FF0C\8D77\59CB\65F6\95F4\53CA\4FEE\590D\65F6\95F4\FF09\FF1A</span>'),
'                    <span id=''faultWhen''></span>',
'                </li>',
'                <li>',
unistr('                    <span>where\FF08\6545\969C\5728\54EA\4E2A\533A\57DF\FF0C\54EA\4E2A\673A\53F0\FF09\FF1A</span>'),
'                    <span id=''faultWhere''></span>',
'                </li>',
'                <li>',
unistr('                    <span>who\FF08\6545\969C\53D1\751F\4EBA\5458\3001\5904\7406\4EBA\5458\3001\62A5\544A\603B\7ED3\4EBA\FF09\FF1A</span>'),
'                    <ul>',
'                        <li>',
unistr('                            <span>\62A5\4FEE\4EBA\FF08\53D1\73B0\4EBA\FF09\FF1A</span>'),
'                            <span id=''submitExtUserName''></span>',
'                        </li>',
'                        <li>',
unistr('                            <span>\5904\7406\FF08\7EF4\4FEE\FF09\4EBA\5458\FF1A</span>'),
'                            <span id=''handleUsers''></span>',
'                        </li>',
'                        <li>',
unistr('                            <span>\5F02\5E38\5206\6790\62A5\544A\62DF\5B9A\4EBA\FF1A</span>'),
'                            <span id=''analysisExtUserName''></span>',
'                        </li>',
'                    </ul>',
'                </li>',
'                <li>',
unistr('                    <span>what\FF08\6545\969C\540D\79F0\6982\8FF0\FF09\FF1A</span>'),
'                    <span id=''auditName'' class="fault-name"></span>',
'                </li>',
'            </ul>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\5F02\5E38\95EE\9898\63CF\8FF0\FF1A</span>'),
'                    <div id=''abnormalProblemContent'' class="text"></div>',
'                    <div id=''abnormalProblemImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\5904\7406\8FC7\7A0B\5206\6790\FF1A</span>'),
'                    <div id=''processAnalysisContent'' class="text"></div>',
'                    <div id=''processAnalysisImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">5why\6839\6E90\5206\6790\FF1A</span>'),
'                    <div id=''why5AnalysisContent'' class="text"></div>',
'                    <div id=''why5AnalysisImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\6539\5584\63AA\65BD\FF1A</span>'),
'                    <div id=''improveMethodContent'' class="text"></div>',
'                    <div id=''improveMethodImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\540D\79F0\529F\80FD\4ECB\7ECD\FF1A</span>'),
'                    <div id=''functionNameContent'' class="text"></div>',
'                    <div id=''functionNameImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\7ED3\6784\539F\7406\5206\6790\FF1A</span>'),
'                    <div id=''structuralPrincipleContent'' class="text"></div>',
'                    <div id=''structuralPrincipleImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\5173\952E\5668\4EF6\5206\6790\FF1A</span>'),
'                    <div id=''deviceKeyContent'' class="text"></div>',
'                    <div id=''deviceKeyImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-4">',
unistr('            <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'            <div class="page-body">',
'                <div class="module">',
unistr('                    <span class="title">\65E5\5E38\3001\7EF4\62A4\4FDD\517B\6216\7EF4\4FEE\65F6\9700\6CE8\610F\70B9\FF1A</span>'),
'                    <div id=''dailyMaintainContent'' class="text"></div>',
'                    <div id=''dailyMaintainImages'' class="img-group"></div>',
'                </div>',
'            </div>',
'        </div>',
'        <div class="page page-6">',
'        </div>',
'    </div>',
'</div>'))
,p_plug_column_width=>' style="display:none"'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360808833993082356)
,p_plug_name=>unistr('OPL (\5F02\5E38\5206\6790/\7ECF\9A8C\603B\7ED3)')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260530947461268449)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_1'
,p_parent_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>6
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'') ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'') ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531018383268450)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_2'
,p_parent_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360809272682082360)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360810076289082368)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'      ',
'    if num1 > 0 then',
'        select  count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'') ',
'        AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and AUDIT_STATE  = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360809655577082364)
,p_plug_name=>unistr('\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL-tail')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531184233268451)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_3'
,p_parent_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531213192268452)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_4'
,p_parent_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')      ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')          ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360809169913082359)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360810138873082369)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')      ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360810310085082371)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531677168268456)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_5'
,p_parent_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>60
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'      ',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531877759268458)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_6'
,p_parent_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360811072134082378)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>100
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360811136236082379)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>110
,p_plug_new_grid_row=>false
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360810696867082374)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9-tail')
,p_parent_plug_id=>wwv_flow_imp.id(2287249467357762024)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531553310268455)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790  \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_7'
,p_parent_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>60
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2260531759268268457)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_8'
,p_parent_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>70
,p_plug_new_grid_row=>false
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    end if;',
'',
'',
'',
'    if num2 > 0 then',
'        return true;',
'    end if;',
'',
'   return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360811220523082380)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>80
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360811336936082381)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>100
,p_plug_new_grid_row=>false
,p_plug_source_type=>'PLUGIN_DE.DANIELH.DROPZONE2'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'COLLECTION',
  'attribute_02', 'DROPZONE_UPLOAD',
  'attribute_07', 'STYLE1',
  'attribute_08', '700px',
  'attribute_09', '200px',
  'attribute_10', '5',
  'attribute_11', '4',
  'attribute_12', '1',
  'attribute_13', 'image/*',
  'attribute_14', '700',
  'attribute_15', 'NORMAL',
  'attribute_16', 'true',
  'attribute_17', 'true',
  'attribute_18', 'false',
  'attribute_19', 'false',
  'attribute_20', 'true',
  'attribute_22', 'false')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2287249563500762025)
,p_plug_name=>unistr('\7EBF\4E0B\590D\76D8')
,p_region_name=>'off_line_re_check'
,p_parent_plug_id=>wwv_flow_imp.id(2287249688176762026)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    IF :P223_STATUS = ''WAIT'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        IF :P223_AUDIT_TYPE = ''OFF_LINE'' THEN',
'            RETURN TRUE;',
'        ELSE',
'            RETURN FALSE;',
'        END IF;',
'    END IF;',
'END;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2292196388266284502)
,p_plug_name=>unistr('\5BA1\6838\4EBA-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2292196720331284506)
,p_plug_name=>unistr('\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'    --   and TENANT_ID = V(''USERTENANT'')',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'       ',
'        return true;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2292198136217284520)
,p_plug_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS=''AUDIT'' then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2292198670408284525)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>190
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS=''REJECT'' then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2292199404750284533)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>210
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P223_STATUS IN (''COMPLETE'',''UNREVIEW'')  then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'        return true;',
'    end if;',
'',
'    return false;',
'',
'end;'))
,p_plug_display_when_cond2=>'PLSQL'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2356383235484192266)
,p_plug_name=>unistr('\4E8B\4EF6\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2360811432903082382)
,p_plug_name=>unistr('\6545\969C\56FE\7247(\5FC5\586B)')
,p_region_name=>'images_content'
,p_parent_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>340
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!-- <div id="eventImgView" class="img-area">',
'    <el-image v-for=''image in doImageList(messageList)'' :key="image" :src="image"',
'        style="width: 70px; height: 70px;margin-right: 10px;" :preview-src-list="doImageList(messageList)"',
'        :z-index=''3000''>',
'    </el-image>',
'</div> -->',
'',
'',
'<!-- ',
'<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">',
unistr('    <legend>\4E0A\4F20\591A\5F20\56FE\7247</legend>'),
'</fieldset> -->',
'',
'<div class="layui-upload">',
unistr('    <button type="button" class="layui-btn" id="test2">\56FE\7247\4E0A\4F20</button>'),
'    <blockquote class="layui-elem-quote layui-quote-nm" style="margin-top: 10px;">',
unistr('        \9884\89C8\56FE\FF1A'),
'        <div class="layui-upload-list" id="demo2"></div>',
'    </blockquote>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213677621022643496)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2259987422191233165)
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213703975582643519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2292199404750284533)
,p_button_name=>unistr('\8FD4\56DE-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213678680597643497)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2259989201923233182)
,p_button_name=>unistr('\8FD4\56DE1')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213700779940643517)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2292196720331284506)
,p_button_name=>unistr('\8FD4\56DE-\5F85\590D\76D8-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213678010716643496)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2259987422191233165)
,p_button_name=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P223_STATUS = ''WAIT'' or :P223_STATUS = ''REJECT'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213679850877643498)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2259989249282233183)
,p_button_name=>unistr('\8FD4\56DE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213701829622643518)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2292198136217284520)
,p_button_name=>unistr('\8FD4\56DE-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213679140375643497)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2259989201923233182)
,p_button_name=>unistr('\5BA1\6838')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:225:P225_EVENT_REVIEW_ID:&P223_EVENT_REVIEW_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213701205539643517)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2292196720331284506)
,p_button_name=>unistr('\63D0\4EA4\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P223_STATUS = ''WAIT'' or :P223_STATUS = ''REJECT'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213702905924643519)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2292198670408284525)
,p_button_name=>unistr('\8FD4\56DE-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213680216196643498)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2259989249282233183)
,p_button_name=>unistr('\5BA1\6838_1')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:225:P225_EVENT_REVIEW_ID:&P223_EVENT_REVIEW_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213702214987643518)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2292198136217284520)
,p_button_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:225:P225_EVENT_REVIEW_ID:&P223_EVENT_REVIEW_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213703291118643519)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2292198670408284525)
,p_button_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:225:&SESSION.::&DEBUG.:225:P225_EVENT_REVIEW_ID:&P223_EVENT_REVIEW_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213680583245643498)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2259989249282233183)
,p_button_name=>unistr('\4E0B\8F7DPPT_1')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\4E0B\8F7DPDF')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213683919774643502)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2263391578862193647)
,p_button_name=>unistr('\8FD4\56DE4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213684281893643502)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2263391578862193647)
,p_button_name=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213681290281643499)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2259989318346233184)
,p_button_name=>unistr('\8FD4\56DE3')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2213681746879643499)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2259989318346233184)
,p_button_name=>unistr('\4E0B\8F7DPDF')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\4E0B\8F7DPDF')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P223_STATUS  = ''COMPLETE''  then',
'           return true;',
'        else',
'           return false;',
'        end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213682437920643499)
,p_name=>'P223_AUDIT_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2260534849096268488)
,p_prompt=>unistr('\8BF7\9009\62E9\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT U.EXT_ORG_NAME || ''-'' || U.NAME, U.EXT_USER_ID',
'FROM TENANT_AREA_UPGRADE_USERS_V U',
'WHERE U.EXT_USER_ID <> :USER_ID',
'  AND U.EXT_ORG_ID = :USERDEPT',
'  AND U.UPGRADE_LEVEL = 2',
'  AND U.TENANT_ID = :USERTENANT',
'  AND U.BASE_DEPT_ID=:BASE_DEPT_ID',
'UNION',
'SELECT V.EXT_ORG_NAME || ''-'' || V.NAME, V.EXT_USER_ID',
'  FROM BAO_USER_DEPT_EXPAND F',
' INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V V ON F.USER_ID = V.EXT_USER_ID and  v.BASE_DEPT_ID=:BASE_DEPT_ID',
' WHERE F.DEPT_ID  = :USERDEPT',
'   AND F.TENANT_ID = :USERTENANT',
'   AND F.JOB_LEVEL_CODE = 30',
'   AND F.BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_column=>4
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(2213682843498643501)
,p_name=>'P223_TEMP_AUDIT_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2260534849096268488)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213683182959643501)
,p_name=>'P223_TEMP_AUDIT_USER_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2260534849096268488)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213684980046643503)
,p_name=>'P223_WHY5_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_prompt=>unistr('5Why\6839\6E90\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213685370900643503)
,p_name=>'P223_ABNORMAL_PROBLEM_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_prompt=>unistr('\5F02\5E38\63CF\8FF0')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213685781661643503)
,p_name=>'P223_WHY5_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213686160012643503)
,p_name=>'P223_ABNORMAL_PROBLEM_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2360808833993082356)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213688139618643505)
,p_name=>'P223_PROCESS_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_prompt=>unistr('\5904\7406\8FC7\7A0B\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213688538807643506)
,p_name=>'P223_IMPROVE_METHOD_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_prompt=>unistr('\6539\5584\63AA\65BD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286746150429554782)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213688948116643506)
,p_name=>'P223_PROCESS_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213689303853643506)
,p_name=>'P223_IMPROVE_METHOD_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2360809655577082364)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213691237532643508)
,p_name=>'P223_FUNCTION_NAME_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_prompt=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213691645457643508)
,p_name=>'P223_DEVICE_KEY_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_prompt=>unistr('\5173\952E\5668\4EF6\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213691986152643508)
,p_name=>'P223_FUNCTION_NAME_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213692394731643509)
,p_name=>'P223_DEVICE_KEY_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2360810310085082371)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213694283047643511)
,p_name=>'P223_STRUCTURAL_PRINCIPLE_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_prompt=>unistr('\7ED3\6784\539F\7406\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213694696375643512)
,p_name=>'P223_DAILY_MAINTAIN_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_prompt=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213695068790643513)
,p_name=>'P223_STRUCTURAL_PRINCIPLE_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213695489672643513)
,p_name=>'P223_DAILY_MAINTAIN_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2360810696867082374)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213697379839643515)
,p_name=>'P223_AUDIT_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_prompt=>unistr('\590D\76D8\6807\9898')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213697763310643515)
,p_name=>'P223_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213698164885643515)
,p_name=>'P223_PPT_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213698561959643516)
,p_name=>'P223_REMARK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2287249563500762025)
,p_prompt=>unistr(' \5907\6CE8')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213699329664643516)
,p_name=>'P223_AUDIT_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2292196388266284502)
,p_prompt=>unistr('\8BF7\9009\62E9\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT U.EXT_ORG_NAME || ''-'' || U.NAME, U.EXT_USER_ID',
'FROM TENANT_AREA_UPGRADE_USERS_V U',
'WHERE U.EXT_USER_ID <> :USER_ID',
'  AND U.EXT_ORG_ID = :USERDEPT',
'  AND U.UPGRADE_LEVEL = 2',
'  AND U.TENANT_ID = :USERTENANT',
'  AND U.BASE_DEPT_ID=:BASE_DEPT_ID',
'UNION',
'SELECT V.EXT_ORG_NAME || ''-'' || V.NAME, V.EXT_USER_ID',
'  FROM BAO_USER_DEPT_EXPAND F',
' INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V V ON F.USER_ID = V.EXT_USER_ID',
' WHERE F.DEPT_ID  = :USERDEPT',
'   AND F.TENANT_ID = :USERTENANT',
'   AND F.JOB_LEVEL_CODE <= 30',
'   AND F.BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_display_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where CREATED_BY = NVL2(:P223_EVENT_REVIEW_ID,V(''USERID''),1)',
'      and TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = NVL(:P223_EVENT_REVIEW_ID,1);',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and ROWNUM = 1;',
'',
'        if num2 > 0 then',
'',
'            return false;',
'        else',
'            return true;',
'        end if;',
'        return false;',
'    else',
'        return false;',
'    end if;',
'',
'    return true;',
'',
'end;'))
,p_display_when2=>'PLSQL'
,p_display_when_type=>'FUNCTION_BODY'
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
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
 p_id=>wwv_flow_imp.id(2213699711673643517)
,p_name=>'P223_TEMP_AUDIT_USER_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2292196388266284502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213700069889643517)
,p_name=>'P223_TEMP_AUDIT_USER_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2292196388266284502)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213706351347643521)
,p_name=>'P223_SECONDARY_USER'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_prompt=>unistr('\534F\52A9\4EBA\5458\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') AND BASE_DEPT_ID=:BASE_DEPT_ID;;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>512
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213706679327643521)
,p_name=>'P223_CREATED_TIME'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213707058766643521)
,p_name=>'P223_END_TIME'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_prompt=>unistr('\6545\969C\7ED3\675F\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'Y',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213707522929643522)
,p_name=>'P223_AUDIT_NAME'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_prompt=>unistr('\4E8B\4EF6\540D\79F0\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213707915738643522)
,p_name=>'P223_DEPT_MANAGER'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_item_default=>':USERDEPT'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\90E8\95E8\7ECF\7406\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME,EXT_ORG_ID',
'  FROM TENANT_AREA_UPGRADE_USERS_V',
'where UPGRADE_LEVEL = 2',
'  AND EXT_ORG_ID = :USERDEPT',
'  AND TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID=:BASE_DEPT_ID',
' AND ROWNUM = 1'))
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213708320358643522)
,p_name=>'P223_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_item_sequence=>500
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213708679826643522)
,p_name=>'P223_TEMP_MAIN_RESPONSIBLE_USER_NAME'
,p_item_sequence=>510
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213709095233643522)
,p_name=>'P223_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_item_sequence=>520
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213709527561643522)
,p_name=>'P223_TEMP_ABNORMAL_ANALYSIS_USER_NAME'
,p_item_sequence=>530
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213709952105643523)
,p_name=>'P223_TEMP_P223_SECONDARY_USER_IDS'
,p_item_sequence=>540
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213710298403643523)
,p_name=>'P223_TEMP_P223_SECONDARY_USER_NAMES'
,p_item_sequence=>550
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213710716240643523)
,p_name=>'P223_PDF_URL'
,p_item_sequence=>560
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213711092182643523)
,p_name=>'P223_AUDIT_OPINION'
,p_item_sequence=>570
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213711814762643524)
,p_name=>'P223_EVENT_REVIEW_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213712568037643524)
,p_name=>'P223_FIRST_EVENT_CATEGORY_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME A,NAME B FROM TENANT_EVENT_CATEGORY',
' WHERE TENANT_ID = :USERTENANT AND NODE_LEVEL = 1 AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_cSize=>30
,p_cMaxlength=>128
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213713361217643524)
,p_name=>'P223_FAB_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\5382\533A\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,FAB_ID FROM FND_FAB WHERE TENANT_ID = :USERTENANT AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(2213713788009643525)
,p_name=>'P223_SECOND_EVENT_CATEGORY_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME A,NAME B FROM TENANT_EVENT_CATEGORY A',
' WHERE TENANT_ID = :USERTENANT ',
'  AND NODE_LEVEL = 2 ',
'  AND DEL_FLAG = 0 ',
'  AND BASE_DEPT_ID=:BASE_DEPT_ID',
'  AND EXISTS (SELECT 1 FROM TENANT_EVENT_CATEGORY B WHERE B.CODE = A.PARENT_CODE AND B.NAME = :P223_FIRST_EVENT_CATEGORY_NAME',
'               AND B.TENANT_ID = :USERTENANT AND B.NODE_LEVEL = 1 AND B.DEL_FLAG = 0)'))
,p_lov_cascade_parent_items=>'P223_FIRST_EVENT_CATEGORY_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213714616312643525)
,p_name=>'P223_MAP_AREA_Y_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\7EBF\522B\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND TYPE = 2 AND FAB_ID = :P223_FAB_NAME AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_cascade_parent_items=>'P223_FAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(2213714973779643525)
,p_name=>'P223_EVENT_PHENOMENON_NAME'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME A,NAME B',
'  FROM TENANT_EVENT_PHENOMENON',
' WHERE TENANT_ID = :USERTENANT',
'   AND DEL_FLAG = 0',
'   AND CODE IN (SELECT PHENOMENON_CODE',
'  FROM TENANT_EVENT_LIBRARY A1',
' WHERE IS_ENABLE = 1 ',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID',
'   AND EXISTS (SELECT 1 FROM TENANT_EVENT_CATEGORY A2 WHERE A2.CODE = A1.CATEGORY_FIRST_CODE',
'       AND TENANT_ID = :USERTENANT AND NODE_LEVEL = 1 AND DEL_FLAG = 0 AND A2.NAME = :P223_FIRST_EVENT_CATEGORY_NAME)',
'   AND EXISTS (SELECT 1 FROM TENANT_EVENT_CATEGORY A3 WHERE A3.CODE = A1.CATEGORY_SECOND_CODE',
'       AND TENANT_ID = :USERTENANT AND NODE_LEVEL = 2 AND DEL_FLAG = 0 AND A3.NAME = :P223_SECOND_EVENT_CATEGORY_NAME',
'  AND EXISTS (SELECT 1 FROM TENANT_EVENT_CATEGORY B WHERE B.CODE = A3.PARENT_CODE AND B.NAME = :P223_FIRST_EVENT_CATEGORY_NAME',
'               AND B.TENANT_ID = :USERTENANT AND B.NODE_LEVEL = 1 AND B.DEL_FLAG = 0)))'))
,p_lov_cascade_parent_items=>'P223_FIRST_EVENT_CATEGORY_NAME,P223_SECOND_EVENT_CATEGORY_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_cMaxlength=>300
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'Y',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213715446471643525)
,p_name=>'P223_FAULT_LEVEL'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\6545\969C\7B49\7EA7\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>unistr('STATIC2:\4E00\822C\6545\969C;\4E00\822C\6545\969C,\4E25\91CD\6545\969C;\4E25\91CD\6545\969C,\81F4\547D\6545\969C;\81F4\547D\6545\969C')
,p_cSize=>30
,p_cMaxlength=>128
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(2213715834624643525)
,p_name=>'P223_MAP_AREA_X_NAME'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\5DE5\6BB5\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,AREA_ID FROM FND_AREAS WHERE TENANT_ID = :USERTENANT AND TYPE = 1 AND FAB_ID = :P223_FAB_NAME AND DEL_FLAG = 0 AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_cascade_parent_items=>'P223_FAB_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745695870554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(2213716156641643526)
,p_name=>'P223_DESCRIPTION'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_prompt=>unistr('\4E8B\4EF6\63CF\8FF0\FF1A')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>40
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213716562173643526)
,p_name=>'P223_IMAGES_URLS'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213717440028643526)
,p_name=>'P223_TEMP_MAIN_ORG_ID'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213717762173643526)
,p_name=>'P223_TEMP_MAIN_ORG_NAME'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213718251113643526)
,p_name=>'P223_ROW_COUNT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213718621550643527)
,p_name=>'P223_STATUS'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213718992155643527)
,p_name=>'P223_PAGE_ID'
,p_item_sequence=>400
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213719355514643527)
,p_name=>'P223_EVENT_DATAS'
,p_item_sequence=>410
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213719801537643527)
,p_name=>'P223_DEVICE_NAME'
,p_item_sequence=>420
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213720230102643527)
,p_name=>'P223_DEVICE_CODE'
,p_item_sequence=>430
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213720625323643527)
,p_name=>'P223_SUBMIT_EXT_ORG_NAME'
,p_item_sequence=>440
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213721003776643528)
,p_name=>'P223_EVENT_MESSAGE'
,p_item_sequence=>450
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_display_when_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213721386821643528)
,p_name=>'P223_ACTIVE'
,p_item_sequence=>460
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213721756643643528)
,p_name=>'P223_AUDIT_TYPE'
,p_item_sequence=>470
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213722233690643528)
,p_name=>'P223_CREATED_BY'
,p_item_sequence=>480
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213722598313643528)
,p_name=>'P223_AUDIT_TITLE_TMP'
,p_item_sequence=>490
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213958657484648814)
,p_name=>'P223_FAULT_URL'
,p_item_sequence=>580
,p_item_plug_id=>wwv_flow_imp.id(2356383235484192266)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2213961076200648838)
,p_name=>'P223_ABNORMAL_ANALYSIS_USER'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(2215138615026957353)
,p_prompt=>unistr('\5F02\5E38\5206\6790\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,EXT_USER_ID FROM MPF_USER_BASIC_V WHERE TENANT_ID = :USERTENANT'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2286745980361554781)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213724254160643536)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215138725535957354)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'     APEX_PAGE.PURGE_CACHE (',
'         p_current_session_only => true );',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P223_EVENT_REVIEW_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213961192911648839)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_ABNORMAL_ANALYSIS_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT V(''USER_ID'') FROM DUAL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213726169122643538)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_PDF_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  PDF_URL',
'from TENANT_EVENT_REVIEW_OTHER',
'where TENANT_ID = V(''USERTENANT'')  ',
'    AND BASE_DEPT_ID=:BASE_DEPT_ID',
'    and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;'))
,p_attribute_07=>'P223_EVENT_REVIEW_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213726718483643538)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_SECONDARY_USER,P223_AUDIT_USER,P223_WHY5_ANALYSIS_CONTENT,P223_PROCESS_ANALYSIS_CONTENT,P223_FUNCTION_NAME_CONTENT,P223_STRUCTURAL_PRINCIPLE_CONTENT,P223_ABNORMAL_PROBLEM_CONTENT,P223_IMPROVE_METHOD_CONTENT,P223_DEVICE_KEY_CONTENT,P223_DAILY_MAI'
||'NTAIN_CONTENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213729183112643539)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_SECONDARY_USER,P223_AUDIT_USER,P223_WHY5_ANALYSIS_CONTENT,P223_WHY5_ANALYSIS_IMAGE,P223_ABNORMAL_PROBLEM_CONTENT,P223_ABNORMAL_PROBLEM_IMAGE,P223_PROCESS_ANALYSIS_CONTENT,P223_PROCESS_ANALYSIS_IMAGE,P223_IMPROVE_METHOD_CONTENT,P223_IMPROVE_METHO'
||'D_IMAGE,P223_FUNCTION_NAME_CONTENT,P223_FUNCTION_NAME_IMAGE,P223_DEVICE_KEY_CONTENT,P223_DEVICE_KEY_IMAGE,P223_STRUCTURAL_PRINCIPLE_CONTENT,P223_STRUCTURAL_PRINCIPLE_IMAGE,P223_DAILY_MAINTAIN_CONTENT,P223_DAILY_MAINTAIN_IMAGE,P223_ABNORMAL_ANALYSIS_U'
||'SER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       SECONDARY_USER,',
'       AUDIT_USER,',
'       WHY5_ANALYSIS_CONTENT,',
'       WHY5_ANALYSIS_IMAGE,',
'       ABNORMAL_PROBLEM_CONTENT,',
'       ABNORMAL_PROBLEM_IMAGE,',
'       PROCESS_ANALYSIS_CONTENT,',
'       PROCESS_ANALYSIS_IMAGE,',
'       IMPROVE_METHOD_CONTENT,',
'       IMPROVE_METHOD_IMAGE,',
'       FUNCTION_NAME_CONTENT,',
'       FUNCTION_NAME_IMAGE,',
'       DEVICE_KEY_CONTENT,',
'       DEVICE_KEY_IMAGE,',
'       STRUCTURAL_PRINCIPLE_CONTENT,',
'       STRUCTURAL_PRINCIPLE_IMAGE,',
'       DAILY_MAINTAIN_CONTENT,',
'       DAILY_MAINTAIN_IMAGE,abnormal_analysis_user',
'from TENANT_EVENT_REVIEW_OTHER',
'where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID ',
'    AND BASE_DEPT_ID=:BASE_DEPT_ID',
'    and TENANT_ID = V(''USERTENANT'');'))
,p_attribute_07=>'P223_EVENT_REVIEW_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213730170449643540)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_FAB_NAME,P223_MAP_AREA_X_NAME,P223_MAP_AREA_Y_NAME,P223_FIRST_EVENT_CATEGORY_NAME,P223_SECOND_EVENT_CATEGORY_NAME,P223_EVENT_PHENOMENON_NAME,P223_DESCRIPTION,P223_END_TIME,P223_CREATED_TIME,P223_FAULT_LEVEL,P223_FAULT_URL,P223_AUDIT_TITLE,P223_T'
||'AGS,P223_REMARK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  FAB_ID,AREA_X_ID,AREA_Y_ID,FIRST_EVENT_NAME,SECOND_EVENT_NAME,PHENOMENON_NAME,DESCRIPTION,',
'      END_TIME,CREATED_TIME,FAULT_LEVEL,FAULT_URL,AUDIT_TITLE,TAGS,REMARK',
'      FROM TENANT_EVENT_REVIEW_OTHER',
'     WHERE TENANT_ID = V(''USERTENANT'') ',
'        AND BASE_DEPT_ID=:BASE_DEPT_ID',
'       AND EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;'))
,p_attribute_07=>'P223_EVENT_REVIEW_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213731167515643540)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_TEMP_P223_SECONDARY_USER_IDS,P223_TEMP_P223_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(EXT_USER_ID,'',''),listagg( name,'','')  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'')',
'and EXT_USER_ID in (select * from table(SPLITSTR(:P223_SECONDARY_USER,'':'')));'))
,p_attribute_07=>'P223_SECONDARY_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213731728484643540)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_TEMP_AUDIT_USER_ID,P223_TEMP_AUDIT_USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  EXT_USER_ID,EXT_ORG_NAME || ''-'' || name  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'')',
'and EXT_USER_ID =:P223_AUDIT_USER ;'))
,p_attribute_07=>'P223_AUDIT_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P223_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213732180219643541)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P223_FAULT_URL'')){',
'    var urls = $v(''P223_FAULT_URL'').split('','');',
'    for(var i = 0;i < urls.length;i++) {',
'        map_image.set(i,urls[i]);',
'    }   ',
'}',
'function create_images(images, static_id) {',
'    if (images) {',
'',
'        var arr_image = images.split('','');',
'        console.log(images);',
'        for (var i = 0; i < arr_image.length; i < i++) {',
'',
'            var img = new Image();',
'            img.src = arr_image[i];',
'            img.width = 180;',
'            $(img).css(''padding-left'', ''20px'');',
'            $("#" + static_id).find(''div'').remove();',
'            $("#" + static_id).append(img);',
'        }',
'',
'    }',
'}',
'',
'',
'',
'',
'// console.log(''ids: '' + $v(''P223_TEMP_P223_SECONDARY_USER_IDS''));',
'// console.log(''names: '' + $v(''P223_TEMP_P223_SECONDARY_USER_NAMES''));',
'if ($v(''P223_STATUS'') != ''WAIT'') {',
'    // apex.item(''P223_SECONDARY_USER'').setValue($v(''P223_TEMP_P223_SECONDARY_USER_IDS'').split('',''), $v(''P223_TEMP_P223_SECONDARY_USER_NAMES'').split('',''), true);',
'    apex.item(''P223_AUDIT_USER'').setValue($v(''P223_TEMP_AUDIT_USER_ID''), $v(''P223_TEMP_AUDIT_USER_NAME''), true);',
'    create_images($v(''P223_WHY5_ANALYSIS_IMAGE''), ''div_1'');',
'    create_images($v(''P223_ABNORMAL_PROBLEM_IMAGE''), ''div_2'');',
'    create_images($v(''P223_PROCESS_ANALYSIS_IMAGE''), ''div_3'');',
'    create_images($v(''P223_IMPROVE_METHOD_IMAGE''), ''div_4'');',
'    create_images($v(''P223_FUNCTION_NAME_IMAGE''), ''div_5'');',
'    create_images($v(''P223_DEVICE_KEY_IMAGE''), ''div_6'');',
'    create_images($v(''P223_STRUCTURAL_PRINCIPLE_IMAGE''), ''div_7'');',
'    create_images($v(''P223_DAILY_MAINTAIN_IMAGE''), ''div_8'');',
'}',
'',
'// console.log($v(''P223_TEMP_MAIN_RESPONSIBLE_USER_ID''));',
'// console.log($v(''P223_TEMP_MAIN_RESPONSIBLE_USER_NAME''));',
'// apex.item(''P223_SECONDARY_USER'').setValue($v(''P223_TEMP_P223_SECONDARY_USER_IDS'').split('',''), $v(''P223_TEMP_P223_SECONDARY_USER_NAMES'').split('',''), true);',
'',
'// console.log(''AAAAAA : '' + $v(''P223_EVENT_REVIEW_ID''));',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213733715308643541)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'new Vue({',
'    el: ''#eventImgView'', ',
'    data: {},',
'    computed: {',
'        messageList() {',
'            return $v(''P223_IMAGES_URLS'')',
'        }',
'    },',
'    methods: {',
'',
'        doImageList(imagesStr) {',
'            return imagesStr.split('','')',
'        }',
'    }',
'})',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213734239003643542)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const resultsDom = document.getElementById(''results'')',
'console.log(resultsDom)',
'console.log($v(''P223_AUDIT_OPINION''))',
'if (resultsDom) {',
'    resultsDom.innerHTML = $v(''P223_AUDIT_OPINION'')',
'}',
'',
'new Vue({',
unistr('    el: ''#messageView'', //el\7528\4E8E\6307\5B9A\5F53\524DVue\5B9E\4F8B\4E3A\54EA\4E2A\5BB9\5668\670D\52A1\FF0C\503C\901A\5E38\4E3A\9009\62E9\5668\5B57\7B26\4E32\3002'),
unistr('    data: { //data\4E2D\7528\4E8E\5B58\50A8\6570\636E\FF0C\6570\636E\4F9Bel\6240\6307\5B9A\7684\5BB9\5668\53BB\4F7F\7528\3002'),
'        // messageList: JSON.parse($v(''P223_EVENT_MESSAGE''))',
'    },',
'    computed: {',
'        messageList() {',
'            const messageList = JSON.parse($v(''P223_EVENT_MESSAGE''))',
'            for (let i = 0; i < messageList.length - 1; i++) {',
'                for (let j = 0; j < messageList.length - 1 - i; j++) {',
'                    let value = {}',
'                    if (messageList[j].eventMessageBoardId > messageList[j + 1].eventMessageBoardId) {',
'                        value = messageList[j]',
'                        messageList[j] = messageList[j + 1]',
'                        messageList[j + 1] = value',
'                    }',
'                }',
'            }',
'            return messageList',
'        }',
'    },',
'    methods: {',
'        leaveAvatar(isLeave) {',
'            return isLeave ? ''departure'' : ''''',
'        },',
'',
'        leaveName(isLeave, name) {',
unistr('            return isLeave ? `${name}(\5DF2\79BB\804C)` : name'),
'        },',
'',
'',
'        userHead(avatar, name) {',
'            if (avatar !== null) return avatar',
unistr('            const avatarText = name ? name : ''\4F5A\540D'''),
'            const bg = ''RGB(51, 150, 251)''',
'            const w = 96',
'            const h = 96',
'            const can = document.createElement(''canvas'')',
'            can.width = w',
'            can.height = h',
'            const _ctxt = can.getContext(''2d'')',
'            _ctxt.fillStyle = bg',
'            _ctxt.fillRect(0, 0, w, h)',
unistr('            _ctxt.font = ''bold 35px \82F9\65B9'''),
'            _ctxt.fillStyle = ''#FFF''',
'            _ctxt.textAlign = ''center''',
'            _ctxt.textBaseline = ''middle''',
'            _ctxt.fillText(avatarText.slice(-2), w / 2, h / 2)',
'            return can.toDataURL()',
'        },',
'',
'        doImageList(imagesStr) {',
'            return imagesStr.split('','')',
'        }',
'    }',
'})',
''))
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213734736628643542)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P223_AUDIT_TYPE'') == ''OFF_LINE'') {',
'    if ($v(''P223_CREATED_BY'') == ''&USER_ID.'') {',
'        var div_html = `',
'        <div style="margin: 5px 0 0 0;">',
'                        <button onclick="btnClick()" class="t-Button" type="button" style="width: 461px"; id="upfile_btn">',
unistr('                            <span class="t-Button-label">\4E0A\4F20\9644\4EF6</span></button>'),
'                    </div>',
'        `;',
'        $("#my_div").prepend(div_html);',
'        $v(''P223_PPT_URL'').split('','').forEach((item) => {',
'            ppt_url.set(item.split(''&&'')[0], item.split(''&&'')[1]);',
'            var div_html = `',
'            <div class="apex-item-text" style="display:block;height:32px;width: 461px;margin: 5px 0 5px 0;">',
'                <span style="float: left">${item.split(''&&'')[1]}</span>',
unistr('                <a href="javascript:void(0);" onclick="btnDel(this)" style="float: right" value=${item.split(''&&'')[0]}>\5220\9664</a>'),
'            </div>',
'            `;',
'            $("#my_div").prepend(div_html);',
'        })',
'    } else {',
'        $v(''P223_PPT_URL'').split('','').forEach((item) => {',
'            ppt_url.set(item.split(''&&'')[0], item.split(''&&'')[1]);',
'            var div_html = `',
'            <div class="apex-item-text" style="display:block;height:32px;width: 461px;margin: 5px 0 5px 0;">',
'                <span style="float: left">${item.split(''&&'')[1]}</span>',
unistr('                <a href="javascript:void(0);" onclick="btnDownload(''${item.split(''&&'')[0]}'',''${item.split(''&&'')[1]}'')" style="float: right">\4E0B\8F7D</a>'),
'            </div>',
'            `;',
'            $("#my_div").prepend(div_html);',
'        })',
'',
'    }',
'    if (ppt_url.size == 6) {',
'        $("#upfile_btn").attr("disabled", true);',
'    }',
'',
'} else {',
'    var div_html = `',
'    <div style="margin: 5px 0 0 0;">',
'                    <button onclick="btnClick()" class="t-Button" type="button" style="width: 461px"; id="upfile_btn">',
unistr('                        <span class="t-Button-label">\4E0A\4F20\9644\4EF6</span></button>'),
'                </div>',
'    `;',
'    $("#my_div").prepend(div_html);',
'}',
'',
'',
'$("#SR_off_line_re_check_tab span").click(function () {',
'    $s(''P223_AUDIT_TITLE'', $v(''P223_AUDIT_TITLE_TMP''));',
'    $(''#P223_TAGS'').attr(''value'', $v(''P223_FIRST_EVENT_CATEGORY_NAME'') + '','' + $v(''P223_SECOND_EVENT_CATEGORY_NAME'') + '','' + $v(''P223_EVENT_PHENOMENON_NAME''));',
'    $v(''P223_TAGS'').split('','').forEach((item) => {',
'        var tag_html = `',
unistr('            <span class="inputTags-item" data-tag="${item}"><span class="value" title="">${item}</span><i class="close-item">\00D7</i></span>'),
'            `;',
'        $(".inputTags-list").prepend(tag_html);',
'    })',
'    if ($v(''P223_TAGS'') != '''') {',
'        $(''#tags'').importTags($v(''P223_TAGS''));',
'    }',
'});',
'$(''#P223_TAGS'').attr(''value'', $v(''P223_TAGS'') ? $v(''P223_TAGS'') : $v(''P223_FIRST_EVENT_CATEGORY_NAME'') + '','' + $v(''P223_SECOND_EVENT_CATEGORY_NAME'') + '','' + $v(''P223_EVENT_PHENOMENON_NAME''));',
'$v(''P223_TAGS'').split('','').forEach((item) => {',
'    var tag_html = `',
unistr('            <span class="inputTags-item" data-tag="${item}"><span class="value" title="">${item}</span><i class="close-item">\00D7</i></span>'),
'            `;',
'    $(".inputTags-list").prepend(tag_html);',
'})',
'if ($v(''P223_TAGS'') != '''') {',
'    $(''#tags'').importTags($v(''P223_TAGS''));',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213736208965643543)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('var audit = [''\53BB\590D\76D8'',''\5F85\590D\76D8'']'),
'if(audit.indexOf($v(''P223_ACTIVE'')) == -1){',
unistr('    $(''.apex-item-group--popup-lov'').addClass(''apex_disabled''); // \7981\7528LOV'),
unistr('    $(''input[type="file"]'').attr(''type'',''input''); //\628A\56FE\7247\4E0A\4F20\7981\7528'),
unistr('    $(''input'').attr(''readonly'',''true''); // \628A\8F93\5165\6846\7981\7528'),
unistr('    $(''textarea'').prop(''disabled'',''true''); // \628A\5185\5BB9\6846\7981\7528'),
'    $("a[title=''Removing tag'']").attr(''style'',''display:none'');',
unistr('    // console.log(''\786E\5B9A\8D70\8FD9\91CC\4E86'');'),
'}',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213962645461648853)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_ABNORMAL_ANALYSIS_USER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2181581838766512261)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(function () {',
'',
'',
'    for (let item of map_image) {',
'        const imgDom = `<div class="img-item">',
'                    <img  class="close-icon" src="${img_base_64}" id="${item[0]}" onclick="img_close(this)" alt="">',
'                    <img width="200px" src="${item[1]}" alt="${item[0]}" class="layui-upload-img">',
'                    </div>`;',
'        console.log(imgDom)',
'        $(''#demo2'').append(imgDom);',
'    }',
'',
'})',
'',
'',
'layui.use([''upload'', ''element'', ''layer''], function () {',
'    var $ = layui.jquery',
'        , upload = layui.upload',
'        , element = layui.element',
'        , layer = layui.layer;',
'',
unistr('    //\591A\56FE\7247\4E0A\4F20'),
'    upload.render({',
'        elem: ''#test2'',',
'        // auto: false,',
unistr('        url: ''/'', //\6B64\5904\914D\7F6E\4F60\81EA\5DF1\7684\4E0A\4F20\63A5\53E3\5373\53EF'),
unistr('        accept: ''images'', //\666E\901A\6587\4EF6'),
'        number: 5,',
unistr('        size: 6144, //\9650\5236\6587\4EF6\5927\5C0F\FF0C\5355\4F4D KB'),
'        multiple: false,',
'        before: function (obj) {',
unistr('            //\9884\8BFB\672C\5730\6587\4EF6\793A\4F8B\FF0C\4E0D\652F\6301ie8'),
'',
'            obj.preview(function (index, file, result) {',
'                var key = Date.now();',
unistr('                //\4E0A\4F20'),
'                utils.uploadImage(''i1CZR2wUT8kyFklk'', ''5udWwybW5f5uTsrlH4wDYObvevuZQoeH'', () => updateImage([file], [])).then(res => {',
'                    map_image.set(key, res);',
'                });',
'',
'                const imgDom = `<div class="img-item">',
'                    <img  class="close-icon" src="${img_base_64}" id="${key}" onclick="img_close(this)">',
'                    <img width="200px" src="${result}" alt="${file.name}" class="layui-upload-img">',
'                    </div>`;',
'                $(''#demo2'').append(imgDom);',
'',
'            });',
'        }',
'        , done: function (res) {',
unistr('            //\4E0A\4F20\5B8C\6BD5'),
'            layer.closeAll(''loading'');',
'        }, error: function (e) {',
'            layer.closeAll();',
'        }',
'    });',
'',
'',
'});',
'',
''))
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'    IF :P223_EVENT_REVIEW_ID IS NULL THEN',
'        return true;',
'    ELSE',
'        select count(*)',
'        into num1',
'        from TENANT_EVENT_REVIEW_OTHER',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE IN (''WAIT'',''REJECT'')',
'          and TENANT_ID = V(''USERTENANT'') ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'        if num1 > 0 then',
'           return true;',
'        else',
'           return false;',
'        end if;',
'    END IF;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2215138536895957352)
,p_event_id=>wwv_flow_imp.id(2213724254160643536)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'$(''#test2'').hide()',
'$(function () {',
'    for (let item of map_image) {',
'        const imgDom = `<div class="img-item">',
'                    <img width="200px" src="${item[1]}" alt="${item[0]}" class="layui-upload-img">',
'                    </div>`;',
'        console.log(imgDom)',
'        $(''#demo2'').append(imgDom);',
'    }',
'',
'})',
''))
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    num1 number(10) := 0;',
'    num2 number(10) := 0;',
'begin',
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where (AUDIT_STATE IN (''COMPLETE'',''AUDIT'') OR (AUDIT_STATE = ''REJECT'' AND CREATED_BY <> V(''USERID'')))',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID;',
'    if num1 > 0 then',
'       return true;',
'    else',
'       return false;',
'    end if;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213736606455643543)
,p_name=>unistr('upload 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810076289082368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213737115365643543)
,p_event_id=>wwv_flow_imp.id(2213736606455643543)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \8BF7\6C42\963F\91CC\4E91\6570\636E'),
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.'' + ''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data) {',
'',
'            if (data.code === 200) {',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
unistr('console.log(''\5F85\4E0A\4F20\7684\7167\7247'',file)'),
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', ()=>updateImage([file],why5_analysis_images,4));',
'console.log(why5_analysis_images);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213737462638643543)
,p_name=>unistr('upload \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809272682082360)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213737986107643544)
,p_event_id=>wwv_flow_imp.id(2213737462638643543)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], abnormal_problem_images,4));',
'console.log(abnormal_problem_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213738361420643544)
,p_name=>unistr('upload \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809169913082359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213738855974643544)
,p_event_id=>wwv_flow_imp.id(2213738361420643544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], process_analysis_images,4));',
'console.log(process_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213739287958643544)
,p_name=>unistr('upload \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810138873082369)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213739835213643545)
,p_event_id=>wwv_flow_imp.id(2213739287958643544)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], improve_method_images, 4));',
'console.log(improve_method_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213740238153643545)
,p_name=>unistr('upload \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811072134082378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213740678518643545)
,p_event_id=>wwv_flow_imp.id(2213740238153643545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], function_name_images, 4));',
'console.log(function_name_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213741136669643545)
,p_name=>unistr('upload \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811136236082379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213741586995643546)
,p_event_id=>wwv_flow_imp.id(2213741136669643545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], analysis_key_components_images,4));',
'console.log(analysis_key_components_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213741997906643546)
,p_name=>unistr('upload \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811220523082380)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213742517820643546)
,p_event_id=>wwv_flow_imp.id(2213741997906643546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], structural_principle_images, 4));',
'console.log(structural_principle_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213742900430643546)
,p_name=>unistr('upload \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811336936082381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213743398137643546)
,p_event_id=>wwv_flow_imp.id(2213742900430643546)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                console.log(data.data);',
'                updateImage = createEnvironment({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
'var file = this.data;',
'',
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], daily_maintain_images, 4));',
'console.log(daily_maintain_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213743799462643547)
,p_name=>unistr('delete 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810076289082368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213744320275643547)
,p_event_id=>wwv_flow_imp.id(2213743799462643547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'deleteMapItem(this.data,why5_analysis_images)'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213744717530643547)
,p_name=>unistr('delete \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809272682082360)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213745248162643547)
,p_event_id=>wwv_flow_imp.id(2213744717530643547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'deleteMapItem(this.data,abnormal_problem_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213745644432643547)
,p_name=>unistr('delete \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809169913082359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213746070050643547)
,p_event_id=>wwv_flow_imp.id(2213745644432643547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'deleteMapItem(this.data,process_analysis_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213746464892643548)
,p_name=>unistr('delete \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810138873082369)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213747029283643548)
,p_event_id=>wwv_flow_imp.id(2213746464892643548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,improve_method_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213747432183643548)
,p_name=>unistr('delete \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811072134082378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213747869687643548)
,p_event_id=>wwv_flow_imp.id(2213747432183643548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'deleteMapItem(this.data,function_name_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213748295355643548)
,p_name=>unistr('delete \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811136236082379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213748818107643548)
,p_event_id=>wwv_flow_imp.id(2213748295355643548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,analysis_key_components_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213749247228643549)
,p_name=>unistr('delete \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811220523082380)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213749704625643549)
,p_event_id=>wwv_flow_imp.id(2213749247228643549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,structural_principle_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213750062994643549)
,p_name=>unistr('delete \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811336936082381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213750642226643549)
,p_event_id=>wwv_flow_imp.id(2213750062994643549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,daily_maintain_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213750981422643549)
,p_name=>unistr('upload success 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810076289082368)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213751492638643549)
,p_event_id=>wwv_flow_imp.id(2213750981422643549)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// console.log(''\6210\529F\7684\6587\4EF6'',this.data);'),
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'',
'why5_analysis_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        why5_analysis_images.delete(key);',
'        why5_analysis_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'// console.log(why5_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213751938688643550)
,p_name=>unistr('upload success \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809272682082360)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213752395627643550)
,p_event_id=>wwv_flow_imp.id(2213751938688643550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'abnormal_problem_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        abnormal_problem_images.delete(key);',
'        abnormal_problem_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(abnormal_problem_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213752842598643550)
,p_name=>unistr('upload success \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360809169913082359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213753286141643550)
,p_event_id=>wwv_flow_imp.id(2213752842598643550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'process_analysis_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        process_analysis_images.delete(key);',
'        process_analysis_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(process_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213753733021643550)
,p_name=>unistr('upload success \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360810138873082369)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213754205681643551)
,p_event_id=>wwv_flow_imp.id(2213753733021643550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'improve_method_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        improve_method_images.delete(key);',
'        improve_method_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(improve_method_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213754584170643551)
,p_name=>unistr('upload success \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811072134082378)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213755115020643551)
,p_event_id=>wwv_flow_imp.id(2213754584170643551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'function_name_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        function_name_images.delete(key);',
'        function_name_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(function_name_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213755547947643551)
,p_name=>unistr('upload success \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811136236082379)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213756039154643551)
,p_event_id=>wwv_flow_imp.id(2213755547947643551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'analysis_key_components_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        analysis_key_components_images.delete(key);',
'        analysis_key_components_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(analysis_key_components_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213756387416643551)
,p_name=>unistr('upload success \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811220523082380)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213756896543643552)
,p_event_id=>wwv_flow_imp.id(2213756387416643551)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'structural_principle_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        structural_principle_images.delete(key);',
'        structural_principle_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(structural_principle_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213757298038643552)
,p_name=>unistr('upload success \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2360811336936082381)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213757812614643552)
,p_event_id=>wwv_flow_imp.id(2213757298038643552)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(this.data);',
'',
'var str = JSON.parse(this.data).message;',
'var file_id = JSON.parse(this.data).id;',
'var file_name = str.substring(str.indexOf(''File '') + 5, str.indexOf('' successfully''));',
'',
'',
'daily_maintain_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        daily_maintain_images.delete(key);',
'        daily_maintain_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(daily_maintain_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213758241063643552)
,p_name=>unistr('\63D0\4EA4')
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213678010716643496)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213761731737643555)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P223_ABNORMAL_ANALYSIS_USER''))){',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P223_FIRST_EVENT_CATEGORY_NAME''))){',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\5927\7C7B'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_SECOND_EVENT_CATEGORY_NAME''))){',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\5C0F\7C7B'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P223_EVENT_PHENOMENON_NAME''))){',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\73B0\8C61'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P223_FAULT_LEVEL''))){',
unistr('    alert(''\8BF7\9009\62E9\6545\969C\7B49\7EA7'');'),
'    return false;',
'}',
'if(utils.checkNull($v(''P223_DESCRIPTION''))){',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\63CF\8FF0'');'),
'    return false;',
'}',
'var start=$v(''P223_CREATED_TIME'');',
'var end=$v(''P223_END_TIME'');',
unistr('if (utils.checkNull(start)){alert(''\8BF7\8F93\5165\6545\969C\5F00\59CB\65F6\95F4'');return false;}'),
'var reg = /^(\d{4})(-)(\d{2})(-)(\d{2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;',
unistr('if (start.match(reg) == null){alert(''\6545\969C\5F00\59CB\65F6\95F4\683C\5F0F\9519\8BEF\FF0C\8BF7\8F93\5165\6B63\786E\7684\65F6\95F4'');return false;}'),
unistr('if (utils.checkNull(end)){alert(''\8BF7\9009\8F93\5165\6545\969C\7ED3\675F\65F6\95F4''); return false; }'),
unistr('if (end.match(reg) == null) {alert(''\6545\969C\7ED3\675F\65F6\95F4\683C\5F0F\9519\8BEF\FF0C\8BF7\8F93\5165\6B63\786E\7684\65F6\95F4'');return false;}'),
unistr('if (new Date(end.replace(/-/g, ''/'')) - new Date(start.replace(/-/g, ''/'')) < 0){alert(''\6545\969C\7ED3\675F\65F6\95F4\4E0D\80FD\5C0F\4E8E\6545\969C\5F00\59CB\65F6\95F4\FF0C\8BF7\91CD\65B0\8F93\5165''); return false;}'),
'$s(''P223_FAULT_URL'', [...map_image.values()].join('',''));',
'if (utils.checkNull($v(''P223_FAULT_URL''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\6545\969C\56FE\7247'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_WHY5_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\51655why\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_ABNORMAL_PROBLEM_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5F02\5E38\63CF\8FF0'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_PROCESS_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5904\7406\8FC7\7A0B\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_IMPROVE_METHOD_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\6539\5584\63AA\65BD\5185\5BB9'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_AUDIT_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'if (Array.from(why5_analysis_images.values()).length > 4) {',
unistr('    alert(''5Why\6839\6E90\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(abnormal_problem_images.values()).length > 4) {',
unistr('    alert(''\5F02\5E38\63CF\8FF0\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(process_analysis_images.values()).length > 4) {',
unistr('    alert(''\5904\7406\8FC7\7A0B\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(improve_method_images.values()).length > 4) {',
unistr('    alert(''\6539\5584\63AA\65BD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(function_name_images.values()).length > 4) {',
unistr('    alert(''\540D\79F0/\529F\80FD\4ECB\7ECD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(analysis_key_components_images.values()).length > 4) {',
unistr('    alert(''\5173\952E\5668\4EF6\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(structural_principle_images.values()).length > 4) {',
unistr('    alert(''\7ED3\6784\539F\7406\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if (Array.from(daily_maintain_images.values()).length > 4) {',
unistr('    alert(''\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'$s(''P223_WHY5_ANALYSIS_IMAGE'', Array.from(why5_analysis_images.values()));',
'$s(''P223_ABNORMAL_PROBLEM_IMAGE'', Array.from(abnormal_problem_images.values()));',
'$s(''P223_PROCESS_ANALYSIS_IMAGE'', Array.from(process_analysis_images.values()));',
'$s(''P223_IMPROVE_METHOD_IMAGE'', Array.from(improve_method_images.values()));',
'$s(''P223_FUNCTION_NAME_IMAGE'', Array.from(function_name_images.values()));',
'$s(''P223_DEVICE_KEY_IMAGE'', Array.from(analysis_key_components_images.values()));',
'$s(''P223_STRUCTURAL_PRINCIPLE_IMAGE'', Array.from(structural_principle_images.values()));',
'$s(''P223_DAILY_MAINTAIN_IMAGE'', Array.from(daily_maintain_images.values()));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213760684622643554)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_count   number(10) := 0;',
'    V_EVENT_REVIEW_ID NUMBER;',
'begin',
'    select count(1) into v_count from TENANT_EVENT_REVIEW_OTHER where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID and TENANT_ID = V(''USERTENANT'');',
' if v_count = 0 then',
'insert into TENANT_EVENT_REVIEW_OTHER(DEPT_ID,created_time, end_time, audit_state, audit_user,abnormal_analysis_user, secondary_user,why5_analysis_content,why5_analysis_image, ',
'abnormal_problem_content, abnormal_problem_image,process_analysis_content, process_analysis_image, improve_method_content,improve_method_image, function_name_content, function_name_image,',
'device_key_content,device_key_image, structural_principle_content, structural_principle_image,daily_maintain_content, daily_maintain_image, creation_date,created_by, tenant_id,PDF_URL,AUDIT_TYPE,',
'FAB_ID,AREA_X_ID,AREA_Y_ID,FIRST_EVENT_NAME,SECOND_EVENT_NAME,PHENOMENON_NAME,FAULT_LEVEL,FAULT_URL,DESCRIPTION,AUDIT_NAME,BASE_DEPT_ID)',
'values (:USERDEPT,TO_DATE(:P223_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),TO_DATE(:P223_END_TIME,''YYYY-MM-DD HH24:MI:SS''),''AUDIT'',:P223_AUDIT_USER,:USERID,:P223_SECONDARY_USER, :P223_WHY5_ANALYSIS_CONTENT,:P223_WHY5_ANALYSIS_IMAGE,:P223_ABNORMAL_PROBLEM_'
||'CONTENT,',
':P223_ABNORMAL_PROBLEM_IMAGE,:P223_PROCESS_ANALYSIS_CONTENT, :P223_PROCESS_ANALYSIS_IMAGE,:P223_IMPROVE_METHOD_CONTENT,:P223_IMPROVE_METHOD_IMAGE, :P223_FUNCTION_NAME_CONTENT,:P223_FUNCTION_NAME_IMAGE,',
':P223_DEVICE_KEY_CONTENT,:P223_DEVICE_KEY_IMAGE,:P223_STRUCTURAL_PRINCIPLE_CONTENT,:P223_STRUCTURAL_PRINCIPLE_IMAGE,:P223_DAILY_MAINTAIN_CONTENT,:P223_DAILY_MAINTAIN_IMAGE, sysdate, V(''USERID''), V(''USERTENANT''),:P223_PDF_URL,''ON_LINE'',',
':P223_FAB_NAME,:P223_MAP_AREA_X_NAME,:P223_MAP_AREA_Y_NAME,:P223_FIRST_EVENT_CATEGORY_NAME,:P223_SECOND_EVENT_CATEGORY_NAME,:P223_EVENT_PHENOMENON_NAME,:P223_FAULT_LEVEL,:P223_FAULT_URL,:P223_DESCRIPTION,:P223_AUDIT_NAME,:BASE_DEPT_ID) RETURNING EVEN'
||'T_REVIEW_ID INTO V_EVENT_REVIEW_ID;',
'row_count := SQL%ROWCOUNT;',
'apex_util.set_session_state(''P223_EVENT_REVIEW_ID'', V_EVENT_REVIEW_ID);',
'    else',
'        update TENANT_EVENT_REVIEW_OTHER',
'        set AUDIT_USER=:P223_AUDIT_USER,audit_state=''AUDIT'',AUDIT_TYPE=''ON_LINE'',ABNORMAL_ANALYSIS_USER=:USERID,SECONDARY_USER=:P223_SECONDARY_USER,',
'            WHY5_ANALYSIS_CONTENT=:P223_WHY5_ANALYSIS_CONTENT,WHY5_ANALYSIS_IMAGE=:P223_WHY5_ANALYSIS_IMAGE,created_time=TO_DATE(:P223_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),end_time=TO_DATE(:P223_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'            ABNORMAL_PROBLEM_CONTENT=:P223_ABNORMAL_PROBLEM_CONTENT,ABNORMAL_PROBLEM_IMAGE=:P223_ABNORMAL_PROBLEM_IMAGE,',
'            PROCESS_ANALYSIS_CONTENT=:P223_PROCESS_ANALYSIS_CONTENT,PROCESS_ANALYSIS_IMAGE=:P223_PROCESS_ANALYSIS_IMAGE,',
'            IMPROVE_METHOD_CONTENT=:P223_IMPROVE_METHOD_CONTENT,IMPROVE_METHOD_IMAGE=:P223_IMPROVE_METHOD_IMAGE,',
'            FUNCTION_NAME_CONTENT=:P223_FUNCTION_NAME_CONTENT,FUNCTION_NAME_IMAGE=:P223_FUNCTION_NAME_IMAGE,',
'            DEVICE_KEY_CONTENT=:P223_DEVICE_KEY_CONTENT,DEVICE_KEY_IMAGE=:P223_DEVICE_KEY_IMAGE,',
'            STRUCTURAL_PRINCIPLE_CONTENT=:P223_STRUCTURAL_PRINCIPLE_CONTENT,STRUCTURAL_PRINCIPLE_IMAGE=:P223_STRUCTURAL_PRINCIPLE_IMAGE,',
'            DAILY_MAINTAIN_CONTENT=:P223_DAILY_MAINTAIN_CONTENT,DAILY_MAINTAIN_IMAGE=:P223_DAILY_MAINTAIN_IMAGE,',
'            UPDATE_DATE=sysdate,UPDATED_BY=V(''USERID''),PDF_URL=:P223_PDF_URL,AUDIT_NAME=:P223_AUDIT_NAME,',
'            FAB_ID=:P223_FAB_NAME,AREA_X_ID=:P223_MAP_AREA_X_NAME,AREA_Y_ID=:P223_MAP_AREA_Y_NAME,',
'            FIRST_EVENT_NAME=:P223_FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_NAME=:P223_SECOND_EVENT_CATEGORY_NAME,PHENOMENON_NAME=:P223_EVENT_PHENOMENON_NAME,',
'            FAULT_LEVEL=:P223_FAULT_LEVEL,FAULT_URL=:P223_FAULT_URL,DESCRIPTION=:P223_DESCRIPTION',
'        where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID AND BASE_DEPT_ID=:BASE_DEPT_ID',
'          and TENANT_ID = V(''USERTENANT'');',
'        row_count := SQL%ROWCOUNT;',
'    end if;',
'    apex_util.set_session_state(''P223_ROW_COUNT'', row_count);',
'    ',
'end;'))
,p_attribute_02=>'P223_EVENT_REVIEW_ID,P223_END_TIME,P223_AUDIT_USER,P223_SECONDARY_USER,P223_WHY5_ANALYSIS_CONTENT,P223_WHY5_ANALYSIS_IMAGE,P223_ABNORMAL_PROBLEM_CONTENT,P223_ABNORMAL_PROBLEM_IMAGE,P223_PROCESS_ANALYSIS_CONTENT,P223_PROCESS_ANALYSIS_IMAGE,P223_IMPROV'
||'E_METHOD_CONTENT,P223_IMPROVE_METHOD_IMAGE,P223_FUNCTION_NAME_CONTENT,P223_FUNCTION_NAME_IMAGE,P223_DEVICE_KEY_CONTENT,P223_DEVICE_KEY_IMAGE,P223_STRUCTURAL_PRINCIPLE_CONTENT,P223_STRUCTURAL_PRINCIPLE_IMAGE,P223_DAILY_MAINTAIN_CONTENT,P223_DAILY_MAIN'
||'TAIN_IMAGE,P223_PDF_URL,P223_AUDIT_NAME,P223_FAB_NAME,P223_FIRST_EVENT_CATEGORY_NAME,P223_EVENT_PHENOMENON_NAME,P223_MAP_AREA_Y_NAME,P223_SECOND_EVENT_CATEGORY_NAME,P223_FAULT_LEVEL,P223_MAP_AREA_X_NAME,P223_DESCRIPTION,P223_CREATED_TIME,P223_FAULT_U'
||'RL,P223_ABNORMAL_ANALYSIS_USER'
,p_attribute_03=>'P223_ROW_COUNT,P223_EVENT_REVIEW_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213761159778643555)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var previewBoxDom = document.getElementsByClassName(''preview-box'')[0]',
'',
'var beginTimeDom = document.getElementById(''beginTime'')',
'var fabNameDom = document.getElementById(''fabName'')',
'var areaNameDom = document.getElementById(''areaName'')',
'var deviceNameDom = document.getElementById(''deviceName'')',
'var secondEventNameDom = document.getElementById(''secondEventName'')',
'',
'var faultWhenDom = document.getElementById(''faultWhen'')',
'var faultWhereDom = document.getElementById(''faultWhere'')',
'var submitExtUserNameDom = document.getElementById(''submitExtUserName'')',
'var handleUsersDom = document.getElementById(''handleUsers'')',
'var analysisExtUserNameDom = document.getElementById(''analysisExtUserName'')',
'var auditNameDom = document.getElementById(''auditName'')',
'',
'',
'',
'previewBoxDom.style.display = ''inline''',
'',
'var reg = new RegExp(''-'', ''g'')',
'var texts = $v(''P223_CREATED_TIME'').split('' '')',
'var beginTimeText = texts[0].replace(reg, '''').slice(2)',
'beginTimeDom.innerHTML = beginTimeText',
'fabNameDom.innerHTML = $v(''P223_FIRST_EVENT_CATEGORY_NAME'')',
'areaNameDom.innerHTML = $v(''P223_SECOND_EVENT_CATEGORY_NAME'')',
'deviceNameDom.innerHTML = $v(''P223_EVENT_PHENOMENON_NAME'')',
'// secondEventNameDom.innerHTML = $v(''P223_SECOND_EVENT_CATEGORY_NAME'')',
'',
'',
'function whenTime(beginTime, endTime) {',
'    var beginTimeData = new Date(beginTime)',
'    var endTimeData = new Date(endTime)',
'    var format = ''YYYY-MM-DD hh:mm''',
unistr('        // useTime = medash.diff(beginTimeData, endTimeData, { hour: ''\65F6'', minute: ''\5206'', concat: '''' })'),
'    return medash.getCalender(beginTimeData, format) + ''~'' + medash.getCalender(endTimeData, format)',
'        // + ''('' + useTime + '')''',
'}',
'faultWhenDom.innerHTML = whenTime($v(''P223_CREATED_TIME''), $v(''P223_END_TIME''))',
'if ($v(''P223_DEVICE_CODE'') === '''') {',
'    faultWhereDom.innerHTML = $v(''P223_FAB_NAME'') + ''-'' + $v(''P223_MAP_AREA_X_NAME'')',
'} else {',
'    faultWhereDom.innerHTML = $v(''P223_FAB_NAME'') + ''-'' + $v(''P223_MAP_AREA_X_NAME'') + ''-'' + $v(''P223_DEVICE_CODE'')',
'}',
'// submitExtUserNameDom.innerHTML = $v(''P223_MAIN_NAME'') + ''-'' + $v(''P223_SUBMIT_NAME'')',
'var handleUsersValue = apex.item(''P223_SECONDARY_USER'').getValue();',
'handleUsersDom.innerHTML = apex.item(''P223_SECONDARY_USER'').displayValueFor(handleUsersValue);',
'var analysisExtUserValue = apex.item(''P223_ABNORMAL_ANALYSIS_USER'').getValue();',
'analysisExtUserNameDom.innerHTML = apex.item(''P223_ABNORMAL_ANALYSIS_USER'').displayValueFor(analysisExtUserValue);',
'auditNameDom.innerHTML = $v(''P223_AUDIT_NAME'')',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213758667254643553)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var abnormalProblemContentDom = document.getElementById(''abnormalProblemContent'')',
'var abnormalProblemImagesDom = document.getElementById(''abnormalProblemImages'')',
'var processAnalysisContentDom = document.getElementById(''processAnalysisContent'')',
'var processAnalysisImagesDom = document.getElementById(''processAnalysisImages'')',
'var why5AnalysisContentDom = document.getElementById(''why5AnalysisContent'')',
'var why5AnalysisImagesDom = document.getElementById(''why5AnalysisImages'')',
'var improveMethodContentDom = document.getElementById(''improveMethodContent'')',
'var improveMethodImagesDom = document.getElementById(''improveMethodImages'')',
'',
'var functionNameContentDom = document.getElementById(''functionNameContent'')',
'var functionNameImagesDom = document.getElementById(''functionNameImages'')',
'var structuralPrincipleContentDom = document.getElementById(''structuralPrincipleContent'')',
'var structuralPrincipleImagesDom = document.getElementById(''structuralPrincipleImages'')',
'var deviceKeyContentDom = document.getElementById(''deviceKeyContent'')',
'var deviceKeyImagesDom = document.getElementById(''deviceKeyImages'')',
'var dailyMaintainContentDom = document.getElementById(''dailyMaintainContent'')',
'var dailyMaintainImagesDom = document.getElementById(''dailyMaintainImages'')',
'',
'function getImages(imageMap, imagesDom, maxNum) {',
'    imagesDom.innerHTML = ''''',
'    var mapToList = [...imageMap]',
'    mapToList.forEach((val, index) => {',
'        if (index < maxNum) {',
'            var img = document.createElement(''img'')',
'            img.src = val[1]',
'            img.crossOrigin = ''anonymous''',
'            imagesDom.appendChild(img)',
'        }',
'    })',
'}',
'',
'abnormalProblemContentDom.innerHTML = $v(''P223_ABNORMAL_PROBLEM_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(abnormal_problem_images, abnormalProblemImagesDom,4)',
'processAnalysisContentDom.innerHTML = $v(''P223_PROCESS_ANALYSIS_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(process_analysis_images, processAnalysisImagesDom,4)',
'why5AnalysisContentDom.innerHTML = $v(''P223_WHY5_ANALYSIS_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(why5_analysis_images, why5AnalysisImagesDom,4)',
'improveMethodContentDom.innerHTML = $v(''P223_IMPROVE_METHOD_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(improve_method_images, improveMethodImagesDom,4)',
'',
'functionNameContentDom.innerHTML = $v(''P223_FUNCTION_NAME_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(function_name_images, functionNameImagesDom,4)',
'structuralPrincipleContentDom.innerHTML = $v(''P223_STRUCTURAL_PRINCIPLE_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(structural_principle_images, structuralPrincipleImagesDom,4)',
'deviceKeyContentDom.innerHTML = $v(''P223_DEVICE_KEY_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(analysis_key_components_images, deviceKeyImagesDom,4)',
'dailyMaintainContentDom.innerHTML = $v(''P223_DAILY_MAINTAIN_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(daily_maintain_images, dailyMaintainImagesDom,4)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213759249229643553)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pdfFileToOSS = (config) => {',
'    console.log(''number: ''+3);',
'    const MAX_SIZE = 1024 * 1024 * 2;',
'    const fileUpdate = async ({ url, fileName, formData }) => {',
'',
'        let { status } = await axios({',
'            method: ''POST'',',
'            headers: { "Content-Type": "multipart/form-data" },',
'            data: formData,',
'            url',
'        })',
'        if(status === 200)',
'        {',
'            return  `${url}${fileName}`;',
'            }else{',
unistr('                console.log(''\6587\4EF6\4E0A\4F20\5931\8D25'')'),
'                return null',
'            }',
'        ',
'    }',
'',
'    /**',
unistr('     * \670D\52A1\5668\7B7E\540D\76F4\8FDE'),
'     */',
'    const getFormData = async (result) => {',
'        console.log(''number: ''+2);',
'        let data = config,',
'            fileName = `${Date.now()}.${result.type.split("/")[1]}`,',
'            pathName = `${data.dir}${fileName}`;',
'        const formData = new FormData();',
'        formData.set("key", pathName);',
'        formData.set("policy", data.policy);',
'        formData.set("OSSAccessKeyId", data.accessId);',
'        formData.set("success_action_status", "200");',
'        formData.set("signature", data.signature);',
'        formData.set("name", fileName);',
'        formData.set("file", result, result.name);',
'        return { data, formData };',
'    }',
'',
'    const upDataImage = async (result) => {',
'         console.log(''number: ''+1);',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
'          console.log(''url: ''+url);',
'        if (url) {',
'            $s(''P223_PDF_URL'',url);',
'        }else{',
unistr('            alert(''pdf\6587\4EF6\751F\6210\5931\8D25\FF0C\8BF7\91CD\65B0\63D0\4EA4'');'),
'            return false;',
'        }',
'    }',
'',
'    const upDataSingleImage = (file) => {',
'        console.log(''number: ''+0);',
'        if (file.size===MAX_SIZE) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'        upDataImage(file);',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (image) => {',
'        upDataSingleImage(image);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213759725923643553)
,p_event_id=>wwv_flow_imp.id(2213758241063643552)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'savePdf(uploadPdf)',
'',
'function savePdf(callbcak) {',
unistr('    console.log(''\5F00\59CB\626B\63CF\9875\9762\5143\7D20'')'),
'    html2canvas(document.querySelector(''#pdfView''), {',
'        allowTaint: true,',
'        taintTest: false,',
'        useCORS: true,',
'        // width:960,',
'        // height:3240,',
unistr('        dpi: window.devicePixelRatio * 4, //\5C06\5206\8FA8\7387\63D0\9AD8\5230\7279\5B9A\7684DPI \63D0\9AD8\56DB\500D'),
unistr('        scale: 4 //\6309\6BD4\4F8B\589E\52A0\5206\8FA8\7387'),
'    }).then(function (canvas) {',
'        let contentWidth = canvas.width',
'        let contentHeight = canvas.height',
'        let pageHeight = contentWidth / 960 * 540',
'        let leftHeight = contentHeight',
'        let position = 0',
'        let imgWidth = 960',
'        let imgHeight = 6480',
'        let pageData = canvas.toDataURL(''image/jpeg'', 1.0)',
'        let PDF = new jsPDF(''l'', ''pt'', [540, 960]);',
'        if (leftHeight < pageHeight) {',
'            PDF.addImage(pageData, ''JPEG'', 0, 0, imgWidth, imgHeight)',
'        } else {',
'            while (leftHeight > 0) {',
'                PDF.addImage(pageData, ''JPEG'', 0, position, imgWidth, imgHeight)',
'                leftHeight -= pageHeight',
'                position -= 540',
'                if (leftHeight > 0) {',
'                    PDF.addPage()',
'                }',
'            }',
'        }',
unistr('        // \672C\5730\4E0B\8F7Dppt'),
'        var pdfData = PDF.output(''datauristring'')',
'        callbcak(pdfData)',
'    })',
'}',
'',
'function uploadPdf(res) {',
'    console.log(res)',
unistr('    //res\62FF\5230base64\7684pdf'),
'    let pdfBase64Str = res;',
unistr('    let title = "\590D\76D8ppt"'),
unistr('    var fileObj = dataURLtoFile(pdfBase64Str, title + ".pdf");//\8C03\7528\4E00\4E0B\4E0B\9762\7684\8F6C\6587\4EF6\6D41\51FD\6570'),
'    console.log(fileObj, ''fileObj----222'')',
'    getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updatePdf(fileObj));',
'',
'    if (utils.checkNull($s(''P223_PDF_URL''))) {',
'        return true;',
'    } else {',
'        return false;',
'    }',
'}',
'',
unistr('//\5C06base64\8F6C\6362\4E3A\6587\4EF6,\63A5\65362\4E2A\53C2\6570\FF0C\7B2C\4E00\662Fbase64\FF0C\7B2C\4E8C\4E2A\662F\6587\4EF6\540D\5B57\6700\540E\8FD4\56DE\6587\4EF6\5BF9\8C61'),
'function dataURLtoFile(dataurl, filename) {',
'    var arr = dataurl.split(","),',
'        mime = arr[0].match(/:(.*?);/)[1],',
'        bstr = atob(arr[1]),',
'        n = bstr.length,',
'        u8arr = new Uint8Array(n);',
'    while (n--) {',
'        u8arr[n] = bstr.charCodeAt(n);',
'    }',
'    return new File([u8arr], filename, { type: mime });',
'}',
'',
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''&MPF_API_URL.''+''/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
'',
'            if (data.code === 200) {',
'                updatePdf = pdfFileToOSS({',
'                    "accessId": data.data.accessId,',
'                    "policy": data.data.policy,',
'                    "signature": data.data.signature,',
'                    "host": data.data.host,',
'                    "expire": data.data.expire,',
'                    "prefixFormat": data.data.prefixFormat,',
'                    "dir": data.data.prefixFormat',
'                });',
'                callback()',
'                return true;',
'            } else {',
'                alert(data.msg);',
'                return false;',
'            }',
'        },',
'        error: function (XMLHttpRequest, textStatus, errorThrown) {',
unistr('            alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'            return false;',
'        }',
'    });',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213762642977643556)
,p_name=>unistr('\63D0\4EA4\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213701205539643517)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213763075898643556)
,p_event_id=>wwv_flow_imp.id(2213762642977643556)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_ABNORMAL_ANALYSIS_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_FIRST_EVENT_CATEGORY_NAME''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\5927\7C7B'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_SECOND_EVENT_CATEGORY_NAME''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\5C0F\7C7B'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_EVENT_PHENOMENON_NAME''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E8B\4EF6\73B0\8C61'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_FAULT_LEVEL''))) {',
unistr('    alert(''\8BF7\9009\62E9\6545\969C\7B49\7EA7'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P223_DESCRIPTION''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\63CF\8FF0'');'),
'    return false;',
'}',
'var start = $v(''P223_CREATED_TIME'');',
'',
'var end = $v(''P223_END_TIME'');',
'',
unistr('if (utils.checkNull(start)) { alert(''\8BF7\8F93\5165\6545\969C\5F00\59CB\65F6\95F4''); return false; }'),
'',
'var reg = /^(\d{4})(-)(\d{2})(-)(\d{2}) (\d{1,2}):(\d{1,2}):(\d{1,2})$/;',
'',
unistr('if (start.match(reg) == null) { alert(''\6545\969C\5F00\59CB\65F6\95F4\683C\5F0F\9519\8BEF\FF0C\8BF7\8F93\5165\6B63\786E\7684\65F6\95F4''); return false; }'),
'',
unistr('if (utils.checkNull(end)) { alert(''\8BF7\9009\8F93\5165\6545\969C\7ED3\675F\65F6\95F4''); return false; }'),
'',
unistr('if (end.match(reg) == null) { alert(''\6545\969C\7ED3\675F\65F6\95F4\683C\5F0F\9519\8BEF\FF0C\8BF7\8F93\5165\6B63\786E\7684\65F6\95F4''); return false; }'),
'',
unistr('if (new Date(end.replace(/-/g, ''/'')) - new Date(start.replace(/-/g, ''/'')) < 0) { alert(''\6545\969C\7ED3\675F\65F6\95F4\4E0D\80FD\5C0F\4E8E\6545\969C\5F00\59CB\65F6\95F4\FF0C\8BF7\91CD\65B0\8F93\5165''); return false; }'),
'',
'$s(''P223_FAULT_URL'', [...map_image.values()].join('',''));',
'if (utils.checkNull($v(''P223_FAULT_URL''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\6545\969C\56FE\7247'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P223_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P223_AUDIT_TITLE''))) {',
unistr('    alert(''\8BF7\8F93\5165\590D\76D8\6807\9898'');'),
'    return false;',
'}',
'',
'$s(''P223_TAGS'', $(''#tags'').val())',
'if (utils.checkNull($v(''P223_TAGS''))) {',
unistr('    alert(''\8BF7\8F93\5165\6807\7B7E'');'),
'    return false;',
'}',
'',
'var url_tmp;',
'ppt_url.forEach((value, key) => { url_tmp ? url_tmp = url_tmp + '','' + key + ''&&'' + value : url_tmp = key + ''&&'' + value });',
'$s(''P223_PPT_URL'', url_tmp);',
'// console.log(url_tmp);',
'if (utils.checkNull($v(''P223_PPT_URL''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\590D\76D8\6587\4EF6'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P223_AUDIT_USER_1''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'',
'// return false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213763633083643556)
,p_event_id=>wwv_flow_imp.id(2213762642977643556)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER(10) := 0;',
'    V_COUNT   NUMBER(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    SELECT COUNT(1) INTO V_COUNT',
'    FROM TENANT_EVENT_REVIEW_OTHER',
'    WHERE EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      AND TENANT_ID = V(''USERTENANT'');',
'IF V_COUNT = 0 THEN',
'        INSERT INTO TENANT_EVENT_REVIEW_OTHER(DEPT_ID,CREATED_TIME,END_TIME,AUDIT_STATE,AUDIT_USER,AUDIT_TYPE,TAGS,',
'                                        AUDIT_TITLE,PPT_URL,REMARK,CREATION_DATE,CREATED_BY,TENANT_ID,',
'        FAB_ID,AREA_X_ID,AREA_Y_ID,FIRST_EVENT_NAME,SECOND_EVENT_NAME,PHENOMENON_NAME,FAULT_LEVEL,FAULT_URL,DESCRIPTION,AUDIT_NAME,BASE_DEPT_ID)',
'        VALUES (:USERDEPT,TO_DATE(:P223_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),TO_DATE(:P223_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'                ''AUDIT'',:P223_AUDIT_USER_1,''OFF_LINE'',:P223_TAGS,:P223_AUDIT_TITLE,:P223_PPT_URL,:P223_REMARK,SYSDATE,V(''USERID''),V(''USERTENANT''),',
'                :P223_FAB_NAME,:P223_MAP_AREA_X_NAME,:P223_MAP_AREA_Y_NAME,:P223_FIRST_EVENT_CATEGORY_NAME,:P223_SECOND_EVENT_CATEGORY_NAME,',
'                :P223_EVENT_PHENOMENON_NAME,:P223_FAULT_LEVEL,:P223_FAULT_URL,:P223_DESCRIPTION,:P223_AUDIT_NAME,:BASE_DEPT_ID);',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    ELSE',
'        UPDATE TENANT_EVENT_REVIEW_OTHER',
'        SET AUDIT_USER=:P223_AUDIT_USER_1,',
'            AUDIT_STATE=''AUDIT'',',
'            AUDIT_TYPE=''OFF_LINE'',',
'            TAGS=:P223_TAGS,',
'            AUDIT_TITLE=:P223_AUDIT_TITLE,',
'            PPT_URL=:P223_PPT_URL,',
'            REMARK=:P223_REMARK,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=V(''USERID''),created_time=TO_DATE(:P223_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),end_time=TO_DATE(:P223_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'            FAB_ID=:P223_FAB_NAME,AREA_X_ID=:P223_MAP_AREA_X_NAME,AREA_Y_ID=:P223_MAP_AREA_Y_NAME,',
'            FIRST_EVENT_NAME=:P223_FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_NAME=:P223_SECOND_EVENT_CATEGORY_NAME,PHENOMENON_NAME=:P223_EVENT_PHENOMENON_NAME,',
'            FAULT_LEVEL=:P223_FAULT_LEVEL,FAULT_URL=:P223_FAULT_URL,DESCRIPTION=:P223_DESCRIPTION,AUDIT_NAME=:P223_AUDIT_NAME',
'        WHERE EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          AND TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    END IF;',
'    APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P223_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P223_EVENT_REVIEW_ID,P223_END_TIME,P223_PPT_URL,P223_AUDIT_USER_1,P223_AUDIT_TITLE,P223_TAGS,P223_REMARK,P223_CREATED_TIME,P223_END_TIME,P223_FAB_NAME,P223_MAP_AREA_X_NAME,P223_MAP_AREA_Y_NAME,P223_FIRST_EVENT_CATEGORY_NAME,P223_SECOND_EVENT_CATEGORY'
||'_NAME,P223_EVENT_PHENOMENON_NAME,P223_FAULT_URL,P223_DESCRIPTION,P223_AUDIT_NAME,P223_FAULT_LEVEL'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213764135376643556)
,p_event_id=>wwv_flow_imp.id(2213762642977643556)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P223_ROW_COUNT'')>0){',
unistr('   alert(''\63D0\4EA4\6210\529F'');'),
'   apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");',
'   return true;',
'}else{',
unistr('    alert(''\63D0\4EA4\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213764488742643557)
,p_name=>unistr('\8FD4\56DE')
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213677621022643496)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213765023579643557)
,p_event_id=>wwv_flow_imp.id(2213764488742643557)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213765372585643557)
,p_name=>unistr('\8FD4\56DE-\5F85\590D\76D8-\7EBF\4E0B')
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213700779940643517)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213765882158643557)
,p_event_id=>wwv_flow_imp.id(2213765372585643557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213766346392643557)
,p_name=>unistr('\8FD4\56DE1')
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213678680597643497)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213766830712643558)
,p_event_id=>wwv_flow_imp.id(2213766346392643557)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213767185349643558)
,p_name=>unistr('\8FD4\56DE-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213701829622643518)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213767740264643558)
,p_event_id=>wwv_flow_imp.id(2213767185349643558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213768133711643558)
,p_name=>unistr('\8FD4\56DE2')
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213679850877643498)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213768574151643558)
,p_event_id=>wwv_flow_imp.id(2213768133711643558)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213768987568643559)
,p_name=>unistr('\8FD4\56DE-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213702905924643519)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213769464885643559)
,p_event_id=>wwv_flow_imp.id(2213768987568643559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213769864009643559)
,p_name=>unistr('\8FD4\56DE3')
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213681290281643499)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213770436061643559)
,p_event_id=>wwv_flow_imp.id(2213769864009643559)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213770769839643560)
,p_name=>unistr('\8FD4\56DE-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213703975582643519)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213771286697643560)
,p_event_id=>wwv_flow_imp.id(2213770769839643560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213771727267643560)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213772226336643560)
,p_event_id=>wwv_flow_imp.id(2213771727267643560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213772605747643560)
,p_name=>unistr('\786E\8BA4\63D0\4EA4\5BA1\6838')
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213684281893643502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213773144041643560)
,p_event_id=>wwv_flow_imp.id(2213772605747643560)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P223_PDF_URL'')){',
unistr('   alert(''PDF\6587\4EF6\4E0A\4F20\672A\5B8C\6210\FF0C\8BF7\7A0D\7B49'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213773589467643561)
,p_event_id=>wwv_flow_imp.id(2213772605747643560)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_count   number(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'        update TENANT_EVENT_REVIEW_OTHER',
'        set AUDIT_USER=:P223_AUDIT_USER,audit_state=''AUDIT'',AUDIT_TYPE=''ON_LINE'',',
'            ABNORMAL_ANALYSIS_USER=:USERID,SECONDARY_USER=:P223_SECONDARY_USER,created_time=To_date(:P223_CREATED_TIME, ''YYYY-MM-DD HH24:MI:SS''),end_time=TO_DATE(:P223_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'            WHY5_ANALYSIS_CONTENT=:P223_WHY5_ANALYSIS_CONTENT,WHY5_ANALYSIS_IMAGE=:P223_WHY5_ANALYSIS_IMAGE,',
'            ABNORMAL_PROBLEM_CONTENT=:P223_ABNORMAL_PROBLEM_CONTENT,ABNORMAL_PROBLEM_IMAGE=:P223_ABNORMAL_PROBLEM_IMAGE,',
'            PROCESS_ANALYSIS_CONTENT=:P223_PROCESS_ANALYSIS_CONTENT,PROCESS_ANALYSIS_IMAGE=:P223_PROCESS_ANALYSIS_IMAGE,',
'            IMPROVE_METHOD_CONTENT=:P223_IMPROVE_METHOD_CONTENT,IMPROVE_METHOD_IMAGE=:P223_IMPROVE_METHOD_IMAGE,',
'            FUNCTION_NAME_CONTENT=:P223_FUNCTION_NAME_CONTENT,FUNCTION_NAME_IMAGE=:P223_FUNCTION_NAME_IMAGE,',
'            DEVICE_KEY_CONTENT=:P223_DEVICE_KEY_CONTENT,DEVICE_KEY_IMAGE=:P223_DEVICE_KEY_IMAGE,',
'            STRUCTURAL_PRINCIPLE_CONTENT=:P223_STRUCTURAL_PRINCIPLE_CONTENT,STRUCTURAL_PRINCIPLE_IMAGE=:P223_STRUCTURAL_PRINCIPLE_IMAGE,',
'            DAILY_MAINTAIN_CONTENT=:P223_DAILY_MAINTAIN_CONTENT,DAILY_MAINTAIN_IMAGE=:P223_DAILY_MAINTAIN_IMAGE,',
'            UPDATE_DATE=sysdate,UPDATED_BY=V(''USERID''),PDF_URL=:P223_PDF_URL,AUDIT_NAME=:P223_AUDIT_NAME,',
'            FAB_ID=:P223_FAB_NAME,AREA_X_ID=:P223_MAP_AREA_X_NAME,AREA_Y_ID=:P223_MAP_AREA_Y_NAME,',
'            FIRST_EVENT_NAME=:P223_FIRST_EVENT_CATEGORY_NAME,SECOND_EVENT_NAME=:P223_SECOND_EVENT_CATEGORY_NAME,PHENOMENON_NAME=:P223_EVENT_PHENOMENON_NAME,',
'            FAULT_LEVEL=:P223_FAULT_LEVEL,FAULT_URL=:P223_FAULT_URL,DESCRIPTION=:P223_DESCRIPTION',
'        where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        row_count := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P223_ROW_COUNT'', row_count);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P223_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P223_EVENT_REVIEW_ID,P223_END_TIME,P223_AUDIT_USER,P223_SECONDARY_USER,P223_WHY5_ANALYSIS_CONTENT,P223_WHY5_ANALYSIS_IMAGE,P223_ABNORMAL_PROBLEM_CONTENT,P223_ABNORMAL_PROBLEM_IMAGE,P223_PROCESS_ANALYSIS_CONTENT,P223_PROCESS_ANALYSIS_IMAGE,P223_IMPROV'
||'E_METHOD_CONTENT,P223_IMPROVE_METHOD_IMAGE,P223_FUNCTION_NAME_CONTENT,P223_FUNCTION_NAME_IMAGE,P223_DEVICE_KEY_CONTENT,P223_DEVICE_KEY_IMAGE,P223_STRUCTURAL_PRINCIPLE_CONTENT,P223_STRUCTURAL_PRINCIPLE_IMAGE,P223_DAILY_MAINTAIN_CONTENT,P223_DAILY_MAIN'
||'TAIN_IMAGE,P223_PDF_URL,P223_AUDIT_NAME,P223_FAB_NAME,P223_FIRST_EVENT_CATEGORY_NAME,P223_EVENT_PHENOMENON_NAME,P223_MAP_AREA_Y_NAME,P223_SECOND_EVENT_CATEGORY_NAME,P223_FAULT_LEVEL,P223_MAP_AREA_X_NAME,P223_DESCRIPTION,P223_CREATED_TIME,P223_FAULT_U'
||'RL,P223_ABNORMAL_ANALYSIS_USER'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213774105101643561)
,p_event_id=>wwv_flow_imp.id(2213772605747643560)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_count   number(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'',
'    select count(1)',
'    into v_count',
'    from TENANT_EVENT_REVIEW_OTHER',
'    where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'      and TENANT_ID = V(''USERTENANT'') ',
'      AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_count = 1 then',
'',
'        update TENANT_EVENT_REVIEW_OTHER',
'        set PDF_URL=:P223_PDF_URL,UPDATED_BY=:USERID,UPDATE_DATE=sysdate',
'        where EVENT_REVIEW_ID = :P223_EVENT_REVIEW_ID',
'          and TENANT_ID = V(''USERTENANT'') ',
'          AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'        row_count := SQL%ROWCOUNT;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P223_ROW_COUNT'', row_count);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P223_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P223_EVENT_REVIEW_ID,P223_PDF_URL'
,p_attribute_03=>'P223_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213774557347643561)
,p_event_id=>wwv_flow_imp.id(2213772605747643560)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P223_ROW_COUNT'')>0){',
unistr('   alert(''\63D0\4EA4\6210\529F'');'),
'   apex.navigation.redirect("f?p=&APP_ID.:"+$v("P223_PAGE_ID")+":&APP_SESSION.:::::");',
'   return true;',
'}else{',
unistr('    alert(''\63D0\4EA4\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213775036758643562)
,p_name=>unistr('\53D6\6D88\5BA1\6838')
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213683919774643502)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213775545152643562)
,p_event_id=>wwv_flow_imp.id(2213775036758643562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var previewBoxDom = document.getElementsByClassName(''preview-box'')[0]',
'previewBoxDom.style.display = ''none'''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213775923116643562)
,p_name=>unistr('\4E0B\8F7Dppt')
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213681746879643499)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213776443931643562)
,p_event_id=>wwv_flow_imp.id(2213775923116643562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_PDF_URL''))) {',
unistr('    alert(''\6587\4EF6\4E0D\5B58\5728'');'),
'} else {',
'    var a = document.createElement(''a'')',
'    a.href = $v("P223_PDF_URL")',
unistr('    a.download = ''\590D\76D8ppt.pdf'''),
'    a.style.display = ''none''',
'    document.body.appendChild(a)',
'    a.click()',
'    a.remove()',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213776815409643562)
,p_name=>unistr('\9A73\56DE-\4E0B\8F7Dppt')
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2213680583245643498)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213777352825643562)
,p_event_id=>wwv_flow_imp.id(2213776815409643562)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P223_PDF_URL''))) {',
unistr('    alert(''\6587\4EF6\4E0D\5B58\5728'');'),
'} else {',
'    var a = document.createElement(''a'')',
'    a.href = $v("P223_PDF_URL")',
unistr('    a.download = ''\590D\76D8ppt.pdf'''),
'    a.style.display = ''none''',
'    document.body.appendChild(a)',
'    a.click()',
'    a.remove()',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213723292078643536)
,p_name=>unistr('\533A\57DF\9009\62E9')
,p_event_sequence=>420
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2287249563500762025)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213723758096643536)
,p_event_id=>wwv_flow_imp.id(2213723292078643536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'console.log(111);'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2213958467434648812)
,p_name=>unistr('\4E8B\4EF6\540D\79F0\8D4B\503C')
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P223_EVENT_PHENOMENON_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2213958602324648813)
,p_event_id=>wwv_flow_imp.id(2213958467434648812)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P223_AUDIT_NAME,P223_AUDIT_TITLE_TMP,P223_AUDIT_TITLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select :P223_FIRST_EVENT_CATEGORY_NAME||:P223_SECOND_EVENT_CATEGORY_NAME||:P223_EVENT_PHENOMENON_NAME name1,',
'       :P223_FIRST_EVENT_CATEGORY_NAME||:P223_SECOND_EVENT_CATEGORY_NAME||:P223_EVENT_PHENOMENON_NAME name2,',
'       :P223_FIRST_EVENT_CATEGORY_NAME||:P223_SECOND_EVENT_CATEGORY_NAME||:P223_EVENT_PHENOMENON_NAME name3 from dual;'))
,p_attribute_07=>'P223_FIRST_EVENT_CATEGORY_NAME,P223_SECOND_EVENT_CATEGORY_NAME,P223_EVENT_PHENOMENON_NAME'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

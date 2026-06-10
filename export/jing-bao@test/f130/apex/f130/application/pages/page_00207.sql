prompt --application/pages/page_00207
begin
--   Manifest
--     PAGE: 00207
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
 p_id=>207
,p_name=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5')
,p_alias=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5')
,p_step_title=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://jingobj.jasolar.com:26000/tdd-public/public/1665298006083.jspdf.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/compressor.min.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/1665297976246.html2canvas.min.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/1665297995026.vue.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/1665298000780.element.js',
'#WORKSPACE_FILES#static/js/medash.min.js',
'-- https://unpkg.com/medash@3.2.2/dist/medash.min.js',
'#WORKSPACE_FILES#static/js/jquery.tagsinput.min.js',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
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
'https://unpkg.com/element-ui/lib/theme-chalk/index.css',
'#WORKSPACE_FILES#static/css/index#MIN#.css',
'#WORKSPACE_FILES#static/css/jquery.tagsinput.css'))
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
'',
'.page-1 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/tdd-public/jingbao/ppt-page1.png'');',
'}',
'',
'.page-2,.page-3,.page-4,.page-5 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/tdd-public/jingbao/ppt-page2.png'');',
'}',
'',
'.page-6 {',
'    background-size: 100%;',
'    background-image: url(''https://jingobj.jasolar.com:26000/tdd-public/jingbao/ppt-page3.png'');',
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2137376140869097977)
,p_plug_name=>unistr('\73B0\573A\8DDF\8E2A')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id=''messageView''>',
'    <div v-for="value in messageList" :key="value.eventMessageBoardId">',
'        <div v-if="value.type===''COMMENT''" class="comments">',
'            <div class="comment-info">',
'                <img',
'        :class="[''comments-avatar'', leaveAvatar(value.isLeave)]"',
'        :src="userHead(value.avatar,value.name)"',
'      />',
'                <div class="out-avatar">',
'                    <div class="comment-view">',
'                        <p class="comment-author">',
'                            <span>{{ leaveName(value.isLeave, value.name) }}</span>',
'                        </p>',
'                        <span class="comment-time">{{ value.updateDate }}</span>',
'                    </div>',
'                    <span class="comment">{{ value.content }}</span>',
'                    <div v-if="value.imagesUrl&&value.imagesUrl.length" class="img-area">',
'                        <el-image v-for=''image in doImageList(value.imagesUrl)'' :key="image" :src="image"',
'                        style="width: 70px; height: 70px;margin-right: 10px;"',
'                            :preview-src-list="doImageList(value.imagesUrl)" :z-index=''3000''>',
'                        </el-image>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <div v-else class="records">',
'            <img',
'      src="https://jingobj.jasolar.com:26000/tdd-public/jingbao/record.png"',
'      class="record-icon"',
'    />',
'            <div class="record-info">',
'                <p>{{ value.content }}</p>',
'                <span>{{ value.updateDate }}</span>',
'            </div>',
'        </div>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2139553072199816003)
,p_plug_name=>unistr('\5BA1\6838\7ED3\679C\63CF\8FF0')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>60
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id=''results'' class="comment"></span>',
''))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from TENANT_EVENT_REVIEW',
'where EVENT_ID = :P207_EVENT_ID',
'  and TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID',
'  and AUDIT_STATE IN (''COMPLETE'', ''REJECT'');'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199137035978903391)
,p_plug_name=>unistr('\533A\57DF\9009\62E9')
,p_region_name=>'region_id'
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2302052297226836202)
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
 p_id=>wwv_flow_imp.id(2199136815159903389)
,p_plug_name=>unistr('\7EBF\4E0A\590D\76D8')
,p_region_name=>'on_line_re_check'
,p_parent_plug_id=>wwv_flow_imp.id(2199137035978903391)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    IF :P207_STATUS = ''WAIT'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        IF :P207_AUDIT_TYPE = ''ON_LINE'' THEN',
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
 p_id=>wwv_flow_imp.id(2171874769993374530)
,p_plug_name=>unistr('\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2171876549725374547)
,p_plug_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS=''AUDIT'' then',
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
 p_id=>wwv_flow_imp.id(2171876597084374548)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS=''REJECT'' then',
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
 p_id=>wwv_flow_imp.id(2171876666148374549)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\5B8C\6210-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS IN (''COMPLETE'',''UNREVIEW'')  then',
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
 p_id=>wwv_flow_imp.id(2172422196898409853)
,p_plug_name=>unistr('\5BA1\6838\4EBA-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2175278926664335012)
,p_plug_name=>unistr('PDF\9884\89C8-\7EBF\4E0A')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
 p_id=>wwv_flow_imp.id(2272696181795223721)
,p_plug_name=>unistr('OPL (\5F02\5E38\5206\6790/\7ECF\9A8C\603B\7ED3)')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172418295263409814)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_1'
,p_parent_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    select count(*)',
'    into num1',
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2172418366185409815)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_2'
,p_parent_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2272696620484223725)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272697424091223733)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select  count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE  = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272697003379223729)
,p_plug_name=>unistr('\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL-tail')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>140
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172418532035409816)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_3'
,p_parent_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2172418560994409817)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_4'
,p_parent_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2272696517715223724)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272697486675223734)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272697657887223736)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>150
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172419024970409821)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_5'
,p_parent_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2172419225561409823)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_6'
,p_parent_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID = :BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2272698419936223743)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272698484038223744)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272698044669223739)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9-tail')
,p_parent_plug_id=>wwv_flow_imp.id(2199136815159903389)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2172418901112409820)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790  \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_7'
,p_parent_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2172419107070409822)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_8'
,p_parent_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID= :BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2272698568325223745)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2272698684738223746)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2199136911302903390)
,p_plug_name=>unistr('\7EBF\4E0B\590D\76D8')
,p_region_name=>'off_line_re_check'
,p_parent_plug_id=>wwv_flow_imp.id(2199137035978903391)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>110
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_display_condition_type=>'FUNCTION_BODY'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'BEGIN',
'    IF :P207_STATUS = ''WAIT'' THEN',
'        RETURN TRUE;',
'    ELSE',
'        IF :P207_AUDIT_TYPE = ''OFF_LINE'' THEN',
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
 p_id=>wwv_flow_imp.id(2204083736068425867)
,p_plug_name=>unistr('\5BA1\6838\4EBA-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>130
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2204084068133425871)
,p_plug_name=>unistr('\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_ID = :P207_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2204085484019425885)
,p_plug_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID= :BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS=''AUDIT'' then',
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
 p_id=>wwv_flow_imp.id(2204086018210425890)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS=''REJECT'' then',
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
 p_id=>wwv_flow_imp.id(2204086752552425898)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_parent_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE NOT IN (''COMPLETE'',''UNREVIEW'')',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P207_STATUS IN (''COMPLETE'',''UNREVIEW'')  then',
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
 p_id=>wwv_flow_imp.id(2268270132017333626)
,p_plug_name=>unistr('\57FA\672C\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2268270583286333631)
,p_plug_name=>unistr('\4E8B\4EF6\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2272698780705223747)
,p_plug_name=>unistr('\6545\969C\56FE\7247')
,p_region_name=>'images_content'
,p_parent_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>140
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="eventImgView" class="img-area">',
'    <el-image v-for=''image in doImageList(messageList)'' :key="image" :src="image"',
'        style="width: 70px; height: 70px;margin-right: 10px;" :preview-src-list="doImageList(messageList)"',
'        :z-index=''3000''>',
'    </el-image>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134199432836315092)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2171874769993374530)
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204086929670425899)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2204086752552425898)
,p_button_name=>unistr('\8FD4\56DE-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134200499025315090)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2171876549725374547)
,p_button_name=>unistr('\8FD4\56DE1')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204084213712425872)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2204084068133425871)
,p_button_name=>unistr('\8FD4\56DE-\5F85\590D\76D8-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134199799902315091)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2171874769993374530)
,p_button_name=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P207_STATUS = ''WAIT'' or :P207_STATUS = ''REJECT'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134201635167315089)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2171876597084374548)
,p_button_name=>unistr('\8FD4\56DE2')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>6
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204085631833425886)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2204085484019425885)
,p_button_name=>unistr('\8FD4\56DE-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134200866166315090)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2171876549725374547)
,p_button_name=>unistr('\5BA1\6838')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_EVENT_ID:&P207_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P207_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204084279038425873)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2204084068133425871)
,p_button_name=>unistr('\63D0\4EA4\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P207_STATUS = ''WAIT'' or :P207_STATUS = ''REJECT'''
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204086131437425891)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2204086018210425890)
,p_button_name=>unistr('\8FD4\56DE-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column_span=>2
,p_grid_column=>3
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134201964309315089)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2171876597084374548)
,p_button_name=>unistr('\5BA1\6838_1')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_EVENT_ID:&P207_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P207_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204085695886425887)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(2204085484019425885)
,p_button_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_EVENT_ID:&P207_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P207_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2204086230893425892)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(2204086018210425890)
,p_button_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:200:&SESSION.::&DEBUG.:200:P200_EVENT_ID:&P207_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P207_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and AUDIT_STATE in  (''AUDIT'',''REJECT'') and rownum=1;'))
,p_button_condition_type=>'EXISTS'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134202439696315088)
,p_button_sequence=>80
,p_button_plug_id=>wwv_flow_imp.id(2171876597084374548)
,p_button_name=>unistr('\4E0B\8F7DPPT_1')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\4E0B\8F7DPDF')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134205676502315085)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2175278926664335012)
,p_button_name=>unistr('\8FD4\56DE4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134206098747315085)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2175278926664335012)
,p_button_name=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134203068860315088)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2171876666148374549)
,p_button_name=>unistr('\8FD4\56DE3')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2134203463998315087)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2171876666148374549)
,p_button_name=>unistr('\4E0B\8F7DPDF')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\4E0B\8F7DPDF')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if  :P207_STATUS  = ''COMPLETE''  then',
'           return true;',
'        else',
'           return false;',
'        end if;'))
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'FUNCTION_BODY'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134193202543315102)
,p_name=>'P207_FUNCTION_NAME_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_prompt=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134193632692315101)
,p_name=>'P207_DEVICE_KEY_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_prompt=>unistr('\5173\952E\5668\4EF6\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134194020351315101)
,p_name=>'P207_FUNCTION_NAME_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134194414353315101)
,p_name=>'P207_DEVICE_KEY_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2272697657887223736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134196243430315096)
,p_name=>'P207_STRUCTURAL_PRINCIPLE_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_prompt=>unistr('\7ED3\6784\539F\7406\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134196652999315096)
,p_name=>'P207_DAILY_MAINTAIN_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_prompt=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134197112216315096)
,p_name=>'P207_STRUCTURAL_PRINCIPLE_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134197511713315095)
,p_name=>'P207_DAILY_MAINTAIN_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2272698044669223739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134204239820315087)
,p_name=>'P207_AUDIT_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2172422196898409853)
,p_prompt=>unistr('\8BF7\9009\62E9\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT U.EXT_ORG_NAME || ''-'' || U.NAME, U.EXT_USER_ID',
'FROM TENANT_AREA_UPGRADE_USERS_V U',
'WHERE U.EXT_USER_ID <> :USER_ID',
'  AND U.EXT_ORG_ID = :USERDEPT',
'  AND U.UPGRADE_LEVEL = 2',
'  AND U.TENANT_ID = :USERTENANT',
'  AND U.BASE_DEPT_ID =:BASE_DEPT_ID',
'UNION',
'SELECT V.EXT_ORG_NAME || ''-'' || V.NAME, V.EXT_USER_ID',
'  FROM BAO_USER_DEPT_EXPAND F',
' INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V V ON F.USER_ID = V.EXT_USER_ID',
' WHERE F.DEPT_ID  = :USERDEPT',
'   AND F.TENANT_ID = :USERTENANT',
'   AND F.BASE_DEPT_ID =:BASE_DEPT_ID',
'   AND F.JOB_LEVEL_CODE = 30'))
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and EVENT_ID = :P207_EVENT_ID',
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
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(2134204619386315086)
,p_name=>'P207_TEMP_AUDIT_USER_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2172422196898409853)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134204989206315086)
,p_name=>'P207_TEMP_AUDIT_USER_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2172422196898409853)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134206754694315084)
,p_name=>'P207_MAIN_RESPONSIBLE_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\4E3B\8D1F\8D23\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID and EXT_ORG_ID=:P207_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P207_TEMP_MAIN_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(2134207169324315084)
,p_name=>'P207_SECOND_EVENT_CATEGORY_NAME2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134207584268315084)
,p_name=>'P207_ABNORMAL_ANALYSIS_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\5F02\5E38\5206\6790\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID and EXT_ORG_ID=:P207_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P207_TEMP_MAIN_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(2134207952771315084)
,p_name=>'P207_CREATED_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\4E0A\62A5\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134208347906315084)
,p_name=>'P207_SECONDARY_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\534F\52A9\4EBA\5458\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID;'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134208819645315083)
,p_name=>'P207_FAULT_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134209150673315083)
,p_name=>'P207_END_TIME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\6545\969C\7ED3\675F\65F6\95F4\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134209575398315083)
,p_name=>'P207_AUDIT_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\4E8B\4EF6\540D\79F0\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134210024346315083)
,p_name=>'P207_DEPT_MANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_prompt=>unistr('\90E8\95E8\7ECF\7406\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134210433783315083)
,p_name=>'P207_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134210743456315082)
,p_name=>'P207_TEMP_MAIN_RESPONSIBLE_USER_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134211195143315082)
,p_name=>'P207_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134211567309315082)
,p_name=>'P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134212010519315082)
,p_name=>'P207_TEMP_P207_SECONDARY_USER_IDS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134212417611315082)
,p_name=>'P207_TEMP_P207_SECONDARY_USER_NAMES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134212828133315082)
,p_name=>'P207_PDF_URL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134213472604315081)
,p_name=>'P207_EVENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134213844812315081)
,p_name=>'P207_EVENT_SERIAL_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E8B\4EF6\7F16\53F7\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134214241015315081)
,p_name=>'P207_FIRST_EVENT_CATEGORY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134214730462315080)
,p_name=>'P207_SUBMIT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E0A\62A5\4EBA\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134215115582315080)
,p_name=>'P207_FAB_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\5382\533A\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134215472211315080)
,p_name=>'P207_SECOND_EVENT_CATEGORY_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134215849048315080)
,p_name=>'P207_MAIN_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E0A\62A5\90E8\95E8\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134216291243315080)
,p_name=>'P207_MAP_AREA_Y_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\7EBF\522B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134216653145315079)
,p_name=>'P207_EVENT_PHENOMENON_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134217118864315079)
,p_name=>'P207_AUDIT_STATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134217450624315079)
,p_name=>'P207_MAP_AREA_X_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\5DE5\6BB5\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134217869242315079)
,p_name=>'P207_DESCRIPTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_prompt=>unistr('\4E8B\4EF6\63CF\8FF0\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134218289597315079)
,p_name=>'P207_IMAGES_URLS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134218732655315078)
,p_name=>'P207_FAB_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134219052909315078)
,p_name=>'P207_TEMP_MAIN_ORG_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134219522222315078)
,p_name=>'P207_TEMP_MAIN_ORG_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134219877594315078)
,p_name=>'P207_ROW_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134220298451315078)
,p_name=>'P207_STATUS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134220738210315078)
,p_name=>'P207_PAGE_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134221122402315077)
,p_name=>'P207_EVENT_DATAS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134221479742315077)
,p_name=>'P207_DEVICE_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134221849391315077)
,p_name=>'P207_DEVICE_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134222314526315077)
,p_name=>'P207_SUBMIT_EXT_ORG_NAME'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134223268562315076)
,p_name=>'P207_WHY5_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_prompt=>unistr('5Why\6839\6E90\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134223739203315076)
,p_name=>'P207_ABNORMAL_PROBLEM_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_prompt=>unistr('\5F02\5E38\63CF\8FF0')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134224060591315076)
,p_name=>'P207_WHY5_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134224490056315075)
,p_name=>'P207_ABNORMAL_PROBLEM_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2272696181795223721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134226378629315073)
,p_name=>'P207_PROCESS_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_prompt=>unistr('\5904\7406\8FC7\7A0B\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134226824944315073)
,p_name=>'P207_IMPROVE_METHOD_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_prompt=>unistr('\6539\5584\63AA\65BD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>5
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134227235380315073)
,p_name=>'P207_PROCESS_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2134227602900315073)
,p_name=>'P207_IMPROVE_METHOD_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2272697003379223729)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2139552860202816001)
,p_name=>'P207_EVENT_MESSAGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2139553398430816006)
,p_name=>'P207_AUDIT_OPINION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2268270132017333626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199134767109903369)
,p_name=>'P207_ACTIVE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199137135692903392)
,p_name=>'P207_TAGS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199137538660903396)
,p_name=>'P207_AUDIT_TYPE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199137562732903397)
,p_name=>'P207_AUDIT_TITLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_prompt=>unistr('\590D\76D8\6807\9898')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199137708102903398)
,p_name=>'P207_PPT_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2199137833229903399)
,p_name=>'P207_REMARK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2199136911302903390)
,p_prompt=>unistr(' \5907\6CE8')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2204083768557425868)
,p_name=>'P207_AUDIT_USER_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2204083736068425867)
,p_prompt=>unistr('\8BF7\9009\62E9\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT U.EXT_ORG_NAME || ''-'' || U.NAME, U.EXT_USER_ID',
'FROM TENANT_AREA_UPGRADE_USERS_V U',
'WHERE U.EXT_USER_ID <> :USER_ID',
'  AND U.EXT_ORG_ID = :USERDEPT',
'  AND U.UPGRADE_LEVEL = 2',
'  AND U.TENANT_ID = :USERTENANT',
'  AND U.BASE_DEPT_ID =:BASE_DEPT_ID',
'UNION',
'SELECT V.EXT_ORG_NAME || ''-'' || V.NAME, V.EXT_USER_ID',
'  FROM BAO_USER_DEPT_EXPAND F',
' INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V V ON F.USER_ID = V.EXT_USER_ID',
' WHERE F.DEPT_ID  = :USERDEPT',
'   AND F.TENANT_ID = :USERTENANT',
'   AND F.BASE_DEPT_ID =:BASE_DEPT_ID',
'   AND F.JOB_LEVEL_CODE <= 30'))
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
'    from TENANT_EVENT_REVIEW',
'    where CREATED_BY = V(''USERID'')',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID= :BASE_DEPT_ID',
'      and EVENT_ID = :P207_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE IN (''COMPLETE'',''UNREVIEW'',''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID ',
'          and EVENT_ID = :P207_EVENT_ID',
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
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
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
 p_id=>wwv_flow_imp.id(2204083855041425869)
,p_name=>'P207_TEMP_AUDIT_USER_ID_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2204083736068425867)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2204083976467425870)
,p_name=>'P207_TEMP_AUDIT_USER_NAME_1'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2204083736068425867)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2204810854182427277)
,p_name=>'P207_CREATED_BY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2224622940322549890)
,p_name=>'P207_AUDIT_TITLE_TMP'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2262475507032724002)
,p_name=>'P207_LOGIN_FLAG'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(2268270583286333631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134229143801315068)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2262475730556724004)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\514D\767B\521D\59CB\5316\52A0\8F7D')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_event_id    number(20);',
'    v_status      varchar2(64);',
'    v_audit_state varchar2(64);',
'    v_page_id     number(20) := 205;',
'    v_active      varchar2(64);',
'    v_audit_type  varchar2(64);',
'    v_ppt_url     varchar2(64);',
'    v_created_by  varchar2(64);',
'begin',
'',
'    apex_util.set_session_state(''P207_LOGIN_FLAG'', ''false'');',
'',
'    SELECT A.EVENT_ID,',
unistr('           DECODE(B.AUDIT_STATE, ''COMPLETE'', ''\5DF2\5B8C\6210'', ''REJECT'', ''\5DF2\9A73\56DE'', ''AUDIT'', ''\5BA1\6838\4E2D'', ''UNREVIEW'', ''\65E0\9700\590D\76D8'','),
unistr('                  ''\5F85\590D\76D8'')                                           AUDIT_STATE,'),
unistr('           DECODE(NVL(B.AUDIT_STATE, ''WAIT''), ''WAIT'', ''\53BB\590D\76D8'', ''\8BE6\60C5'') ACTIVE,'),
'           NVL(B.AUDIT_STATE, ''WAIT'') as                           status,',
'           B.AUDIT_TYPE,',
'           nvl(B.PPT_URL,''''),',
'           B.CREATED_BY',
'    into v_event_id,v_audit_state,v_active,v_status,v_audit_type,v_ppt_url,v_created_by',
'    FROM TENANT_EVENT_REVIEW_V A',
'             LEFT JOIN TENANT_EVENT_REVIEW B',
'                       ON A.EVENT_ID = B.EVENT_ID and B.TENANT_ID = :USERTENANT and B.BASE_DEPT_ID =:BASE_DEPT_ID and b.EVENT_ID = :P207_EVENT_ID',
'    WHERE A.TENANT_ID = :USERTENANT',
'    and A.BASE_DEPT_ID =:BASE_DEPT_ID',
'      and A.EVENT_ID = :P207_EVENT_ID;',
'    apex_util.set_session_state(''P207_EVENT_ID'', v_event_id);',
'    apex_util.set_session_state(''P207_STATUS'', v_status);',
'    apex_util.set_session_state(''P207_AUDIT_STATE'', v_audit_state);',
'    apex_util.set_session_state(''P207_PAGE_ID'', v_page_id);',
'    apex_util.set_session_state(''P207_ACTIVE'', v_active);',
'    apex_util.set_session_state(''P207_AUDIT_TYPE'', v_audit_type);',
'    apex_util.set_session_state(''P207_PPT_URL'', v_ppt_url);',
'    apex_util.set_session_state(''P207_CREATED_BY'', v_created_by);',
'end;'))
,p_attribute_02=>'P207_LOGIN_FLAG,P207_EVENT_ID'
,p_attribute_03=>'P207_EVENT_ID,P207_STATUS,P207_AUDIT_STATE,P207_PAGE_ID,P207_ACTIVE,P207_AUDIT_TYPE,P207_PPT_URL,P207_CREATED_BY'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>':P207_LOGIN_FLAG=''true'''
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134229720542315067)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\514D\767B\521D\59CB\5316')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_event_id    number(20);',
'    v_status      varchar2(64);',
'    v_audit_state varchar2(64);',
'    v_page_id     number(20) := 205;',
'    v_active      varchar2(64);',
'    v_audit_type  varchar2(64);',
'    v_ppt_url     varchar2(64);',
'    v_created_by  varchar2(64);',
'begin',
'',
'   if :P207_LOGIN_FLAG =''true'' then',
'',
'    apex_util.set_session_state(''P207_LOGIN_FLAG'', ''init'');',
'   else',
'',
'    apex_util.set_session_state(''P207_LOGIN_FLAG'', ''false''); ',
'   end if;',
'    ',
'',
'end;'))
,p_attribute_02=>'P207_LOGIN_FLAG'
,p_attribute_03=>'P207_LOGIN_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2262475623201724003)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'alert()',
'window.location.href = "f?p=&APP_ID.:207:&APP_SESSION.::YES:::";'))
,p_server_condition_type=>'EXPRESSION'
,p_server_condition_expr1=>':P207_LOGIN_FLAG=''init'''
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2262475353268724001)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_device_name nvarchar2(256);',
'    v_device_code nvarchar2(256);',
'    v_row_count   number(10) := 0;',
'begin',
'',
'    select count(DEVICE_CODE)',
'    into v_row_count',
'    from BASIC_DEVICE',
'    where DEVICE_CODE =',
'          (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P207_EVENT_ID and e.TENANT_ID = :USERTENANT)',
'      and TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    if v_row_count > 0 then',
'        select DEVICE_NAME, DEVICE_CODE',
'        into v_device_name,v_device_code',
'        from BASIC_DEVICE',
'        where DEVICE_CODE =',
'              (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P207_EVENT_ID and e.TENANT_ID = :USERTENANT)',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID;',
'    else',
'        ',
'        ',
'        select max(DEVICE_CODE)',
'        into v_device_code',
'        from TENANT_EVENT',
'        where EVENT_ID = :P207_EVENT_ID',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
'    end if;',
'',
'',
'    apex_util.set_session_state(''P207_DEVICE_CODE'', v_device_code);',
'    apex_util.set_session_state(''P207_DEVICE_NAME'', v_device_name);',
'',
'end;',
''))
,p_attribute_02=>'P207_EVENT_ID'
,p_attribute_03=>'P207_DEVICE_NAME,P207_DEVICE_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2139553017798816002)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_data clob;',
'',
'begin',
'    select',
'                   json_arrayagg(',
'                           json_object(',
'                                   key ''eventMessageBoardId'' value EVENT_MESSAGE_BOARD_ID,',
'                                   key ''updateDate'' value UPDATE_DATE,',
'                                   key ''eventId'' value EVENT_ID,',
'                                   key ''extUserId'' value EXT_USER_ID,',
'                                   key ''syncUserId'' value SYNC_USER_ID,',
'                                   key ''extOrgId'' value EXT_ORG_ID,',
'                                   key ''extOrgName'' value ext_org_name,',
'                                   key ''name'' value NAME,',
'                                   key ''jobNumber'' value JOB_NUMBER,',
'                                   key ''avatar'' value AVATAR,',
'                                   key ''mobile'' value MOBILE,',
'                                   key ''isLeave'' value IS_LEAVE,',
'                                   key ''content'' value CONTENT,',
'                                   key ''type'' value TYPE,',
'                                   key ''imagesUrl'' value IMAGES_URL',
'                               ) returning clob',
'                       ) into v_data',
'    from (',
'             select m.EVENT_MESSAGE_BOARD_ID,',
'                    m.CREATED_BY,',
'                   to_char( m.UPDATE_DATE,''YYYY-MM-DD hh24:mi:ss'') as UPDATE_DATE,',
'                    m.EVENT_ID,',
'                    m.TENANT_ID,',
'                    m.EXT_USER_ID,',
'                    f.EXT_ORG_ID,',
'                    SELECT_DEPT_NAME(f.EXT_ORG_ID) ext_org_name,',
'                    u.JOB_NUMBER,',
'                    u.SYNC_USER_ID,',
'                    u.NAME,',
'                    u.AVATAR,',
'                    u.MOBILE,',
'                    u.IS_LEAVE,',
'                    m.CONTENT,',
'                    m.TYPE,',
'                    m.IMAGES_URL',
'             from TENANT_EVENT_MESSAGE_BOARD m',
'                      left join TENANT_EVENT_FOLLOW_USERS f on m.EVENT_ID = f.EVENT_ID and f.EXT_USER_ID=m.EXT_USER_ID',
'                      left join MPF_SHARE_USER_V u on u.EXT_USER_ID = m.EXT_USER_ID',
'             where m.EVENT_ID = :P207_EVENT_ID',
'             order by m.CREATION_DATE',
'         );',
'',
'    apex_util.set_session_state(''P207_EVENT_MESSAGE'',v_data);',
'end;'))
,p_attribute_02=>'P207_EVENT_ID'
,p_attribute_03=>'P207_EVENT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2147139077134129857)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_AUDIT_OPINION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(AUDIT_OPINION)',
'from TENANT_EVENT_REVIEW',
'where EVENT_ID = :P207_EVENT_ID',
'  and TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID =:BASE_DEPT_ID',
'  and AUDIT_STATE IN (''COMPLETE'', ''REJECT'');'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134231642824315066)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_PDF_URL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  PDF_URL',
'from TENANT_EVENT_REVIEW',
'where TENANT_ID = V(''USERTENANT'') ',
'and BASE_DEPT_ID= :BASE_DEPT_ID',
'  and EVENT_ID = :P207_EVENT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134232159315315065)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_SECONDARY_USER,P207_AUDIT_USER,P207_WHY5_ANALYSIS_CONTENT,P207_PROCESS_ANALYSIS_CONTENT,P207_FUNCTION_NAME_CONTENT,P207_STRUCTURAL_PRINCIPLE_CONTENT,P207_ABNORMAL_PROBLEM_CONTENT,P207_IMPROVE_METHOD_CONTENT,P207_DEVICE_KEY_CONTENT,P207_DAILY_MAI'
||'NTAIN_CONTENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134232681750315065)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_IMAGES_URLS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMAGES_URL',
'from TENANT_EVENT where EVENT_ID=:P207_EVENT_ID and TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2139553257578816005)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_P207_SECONDARY_USER_IDS,P207_TEMP_P207_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(v.EXT_USER_ID, '','') as ids, listagg(v.NAME, '','') as names',
'from TENANT_EVENT_FOLLOW_USERS e',
'         inner join MPF_USER_DEPT_MAIN_ASSO_V v on e.EXT_USER_ID = v.EXT_USER_ID',
'where e.EVENT_ID = :P207_EVENT_ID',
'  and e.USER_IDENTITY = ''MAIN''',
'  and e.TENANT_ID = :USERTENANT',
'  and e.BASE_DEPT_ID =:BASE_DEPT_ID ;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134230223960315066)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_EVENT_SERIAL_NO,P207_FIRST_EVENT_CATEGORY_NAME,P207_SUBMIT_NAME,P207_FAB_NAME,P207_SECOND_EVENT_CATEGORY_NAME,P207_MAP_AREA_Y_NAME,P207_EVENT_PHENOMENON_NAME,P207_MAP_AREA_X_NAME,P207_DESCRIPTION,P207_TEMP_MAIN_ORG_ID,P207_END_TIME,P207_FAULT_TI'
||'ME,P207_CREATED_TIME,P207_DEPT_MANAGER,P207_TEMP_MAIN_ORG_NAME,P207_FAB_ID,P207_SECOND_EVENT_CATEGORY_NAME2,P207_AUDIT_NAME,P207_AUDIT_TITLE_TMP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_SERIAL_NO,',
'       FIRST_EVENT_CATEGORY_NAME,',
'       SUBMIT_NAME,',
'       FAB_NAME,',
'       SECOND_EVENT_CATEGORY_NAME,',
'       MAP_AREA_Y_NAME,',
'       EVENT_PHENOMENON_NAME,',
'       MAP_AREA_X_NAME,',
'       DESCRIPTION,',
'       MAIN_ORG_ID,',
'       to_char(END_TIME ,''YYYY-MM-DD HH24:MI:SS'') as END_TIME,',
'       to_char(BEGIN_TIME ,''YYYY-MM-DD HH24:MI:SS'') as BEGIN_TIME,',
'       to_char(BEGIN_TIME ,''YYYY-MM-DD HH24:MI:SS'') as create_time,',
'       select_dept_manager(FAB_ID,MAIN_ORG_ID,:BASE_DEPT_ID),',
'       MAIN_ORG_NAME,',
'       FAB_ID,',
'       SECOND_EVENT_CATEGORY_NAME as SECOND_EVENT_CATEGORY_NAME2,',
'       NVL(AUDIT_NAME,FIRST_EVENT_CATEGORY_NAME||SECOND_EVENT_CATEGORY_NAME||EVENT_PHENOMENON_NAME) AUDIT_NAME,',
'       FIRST_EVENT_CATEGORY_NAME||SECOND_EVENT_CATEGORY_NAME||EVENT_PHENOMENON_NAME AUDIT_TITLE',
'from TENANT_EVENT_REVIEW_V',
'where TENANT_ID = V(''USERTENANT'')',
'  and BASE_DEPT_ID =:BASE_DEPT_ID',
'  and EVENT_ID = :P207_EVENT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P207_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134230715021315066)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_MAIN_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SUBMIT_EXT_ORG_NAME',
'from TENANT_EVENT_V',
'where TENANT_ID = V(''USERTENANT'') ',
'  and BASE_DEPT_ID =:BASE_DEPT_ID',
'  and EVENT_ID = :P207_EVENT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_NULL'
,p_client_condition_element=>'P207_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134233734572315065)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_MAIN_RESPONSIBLE_USER,P207_ABNORMAL_ANALYSIS_USER,P207_SECONDARY_USER,P207_AUDIT_USER,P207_WHY5_ANALYSIS_CONTENT,P207_WHY5_ANALYSIS_IMAGE,P207_ABNORMAL_PROBLEM_CONTENT,P207_ABNORMAL_PROBLEM_IMAGE,P207_PROCESS_ANALYSIS_CONTENT,P207_PROCESS_ANALYS'
||'IS_IMAGE,P207_IMPROVE_METHOD_CONTENT,P207_IMPROVE_METHOD_IMAGE,P207_FUNCTION_NAME_CONTENT,P207_FUNCTION_NAME_IMAGE,P207_DEVICE_KEY_CONTENT,P207_DEVICE_KEY_IMAGE,P207_STRUCTURAL_PRINCIPLE_CONTENT,P207_STRUCTURAL_PRINCIPLE_IMAGE,P207_DAILY_MAINTAIN_CON'
||'TENT,P207_DAILY_MAINTAIN_IMAGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select MAIN_RESPONSIBLE_USER,',
'       ABNORMAL_ANALYSIS_USER,',
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
'       DAILY_MAINTAIN_IMAGE',
'from TENANT_EVENT_REVIEW',
'where EVENT_ID = :P207_EVENT_ID',
'  and TENANT_ID = V(''USERTENANT'')',
'  and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134234224397315065)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_MAIN_RESPONSIBLE_USER_NAME,P207_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_USER_DEPT_MAIN_ASSO_V u on f.EXT_USER_ID = u.EXT_USER_ID and f.BASE_DEPT_ID = u.BASE_DEPT_ID',
'where f.EVENT_ID = :P207_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  and u.BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204811019215427278)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_AUDIT_TITLE,P207_TAGS,P207_REMARK'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  AUDIT_TITLE,TAGS,REMARK',
'      FROM TENANT_EVENT_REVIEW',
'     WHERE TENANT_ID = V(''USERTENANT'')',
'     AND BASE_DEPT_ID =:BASE_DEPT_ID',
'       AND EVENT_ID = :P207_EVENT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134234675495315064)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P207_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'')',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
' and EXT_USER_ID =:P207_ABNORMAL_ANALYSIS_USER ;'))
,p_attribute_07=>'P207_ABNORMAL_ANALYSIS_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134235142347315064)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_P207_SECONDARY_USER_IDS,P207_TEMP_P207_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(EXT_USER_ID,'',''),listagg( name,'','')  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID',
'and EXT_USER_ID in (select * from table(SPLITSTR(:P207_SECONDARY_USER,'','')));'))
,p_attribute_07=>'P207_SECONDARY_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134235643029315064)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_AUDIT_USER_ID,P207_TEMP_AUDIT_USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  EXT_USER_ID,EXT_ORG_NAME || ''-'' || name  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID',
'and EXT_USER_ID =:P207_AUDIT_USER ;'))
,p_attribute_07=>'P207_AUDIT_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134236167726315064)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(111111111);',
'',
'function create_images(images, static_id) {',
'    if (images) {',
'',
'        var arr_image = images.split('','');',
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
'console.log(''ids: '' + $v(''P207_TEMP_P207_SECONDARY_USER_IDS''));',
'console.log(''names: '' + $v(''P207_TEMP_P207_SECONDARY_USER_NAMES''));',
'if ($v(''P207_STATUS'') != ''WAIT'') {',
'    apex.item(''P207_ABNORMAL_ANALYSIS_USER'').setValue($v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'    apex.item(''P207_SECONDARY_USER'').setValue($v(''P207_TEMP_P207_SECONDARY_USER_IDS'').split('',''), $v(''P207_TEMP_P207_SECONDARY_USER_NAMES'').split('',''), true);',
'    apex.item(''P207_AUDIT_USER'').setValue($v(''P207_TEMP_AUDIT_USER_ID''), $v(''P207_TEMP_AUDIT_USER_NAME''), true);',
'',
'    create_images($v(''P207_WHY5_ANALYSIS_IMAGE''), ''div_1'');',
'    create_images($v(''P207_ABNORMAL_PROBLEM_IMAGE''), ''div_2'');',
'    create_images($v(''P207_PROCESS_ANALYSIS_IMAGE''), ''div_3'');',
'    create_images($v(''P207_IMPROVE_METHOD_IMAGE''), ''div_4'');',
'    create_images($v(''P207_FUNCTION_NAME_IMAGE''), ''div_5'');',
'    create_images($v(''P207_DEVICE_KEY_IMAGE''), ''div_6'');',
'    create_images($v(''P207_STRUCTURAL_PRINCIPLE_IMAGE''), ''div_7'');',
'    create_images($v(''P207_DAILY_MAINTAIN_IMAGE''), ''div_8'');',
'}',
'',
'',
'apex.item(''P207_MAIN_RESPONSIBLE_USER'').setValue($v(''P207_TEMP_MAIN_RESPONSIBLE_USER_ID''), $v(''P207_TEMP_MAIN_RESPONSIBLE_USER_NAME''), true);',
'apex.item(''P207_SECONDARY_USER'').setValue($v(''P207_TEMP_P207_SECONDARY_USER_IDS'').split('',''), $v(''P207_TEMP_P207_SECONDARY_USER_NAMES'').split('',''), true);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134236655446315063)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P207_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_USER_DEPT_MAIN_ASSO_V u on f.EXT_USER_ID = u.EXT_USER_ID AND F.BASE_DEPT_ID =u.BASE_DEPT_ID',
'where f.EVENT_ID = :P207_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  and u.BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P207_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134237160467315063)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P207_STATUS'') == ''WAIT'') {',
'',
'    // apex.item(''P207_ABNORMAL_ANALYSIS_USER'').setValue($v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_ID'').split('',''), $v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME'').split('',''), true);',
'    apex.item(''P207_ABNORMAL_ANALYSIS_USER'').setValue($v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P207_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'',
'}'))
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P207_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2137376581131097981)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'new Vue({',
'    el: ''#eventImgView'', ',
'    data: {},',
'    computed: {',
'        messageList() {',
'            return $v(''P207_IMAGES_URLS'')',
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
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2147139187951129858)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const resultsDom = document.getElementById(''results'')',
'// console.log(resultsDom)',
'// console.log($v(''P207_AUDIT_OPINION''))',
'if (resultsDom) {',
'    resultsDom.innerHTML = $v(''P207_AUDIT_OPINION'')',
'}',
'',
'new Vue({',
unistr('    el: ''#messageView'', //el\7528\4E8E\6307\5B9A\5F53\524DVue\5B9E\4F8B\4E3A\54EA\4E2A\5BB9\5668\670D\52A1\FF0C\503C\901A\5E38\4E3A\9009\62E9\5668\5B57\7B26\4E32\3002'),
unistr('    data: { //data\4E2D\7528\4E8E\5B58\50A8\6570\636E\FF0C\6570\636E\4F9Bel\6240\6307\5B9A\7684\5BB9\5668\53BB\4F7F\7528\3002'),
'        // messageList: JSON.parse($v(''P207_EVENT_MESSAGE''))',
'    },',
'    computed: {',
'        messageList() {',
'            const messageList = JSON.parse($v(''P207_EVENT_MESSAGE''))',
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
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204809919175427267)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P207_AUDIT_TYPE'') == ''OFF_LINE'') {',
'    if ($v(''P207_CREATED_BY'') == ''&USER_ID.'') {',
'        var div_html = `',
'        <div style="margin: 5px 0 0 0;">',
'                        <button onclick="btnClick()" class="t-Button" type="button" style="width: 461px"; id="upfile_btn">',
unistr('                            <span class="t-Button-label">\4E0A\4F20\9644\4EF6</span></button>'),
'                    </div>',
'        `;',
'        $("#my_div").prepend(div_html);',
'        $v(''P207_PPT_URL'').split('','').forEach((item) => {',
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
'        $v(''P207_PPT_URL'').split('','').forEach((item) => {',
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
'$("#SR_off_line_re_check_tab span").click(function () { $s(''P207_AUDIT_TITLE'', $v(''P207_AUDIT_TITLE_TMP'')); });',
'',
'$(''#P207_TAGS'').attr(''value'', $v(''P207_TAGS'') ? $v(''P207_TAGS'') : $v(''P207_FIRST_EVENT_CATEGORY_NAME'') + '','' + $v(''P207_SECOND_EVENT_CATEGORY_NAME'') + '','' + $v(''P207_EVENT_PHENOMENON_NAME''));',
'$v(''P207_TAGS'').split('','').forEach((item) => {',
'    var tag_html = `',
unistr('            <span class="inputTags-item" data-tag="${item}"><span class="value" title="">${item}</span><i class="close-item">\00D7</i></span>'),
'            `;',
'    $(".inputTags-list").prepend(tag_html);',
'})',
'if ($v(''P207_TAGS'') != '''') {',
'    $(''#tags'').importTags($v(''P207_TAGS''));',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134237673110315063)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>270
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2268270132017333626)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2188629547198277858)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>280
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P207_ABNORMAL_ANALYSIS_USER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134233212160315065)
,p_event_id=>wwv_flow_imp.id(2134229143801315068)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log($v(''P207_EVENT_ID''));',
unistr('var audit = [''\53BB\590D\76D8'',''\5F85\590D\76D8'']'),
'if(audit.indexOf($v(''P207_ACTIVE'')) == -1){',
unistr('    $(''.apex-item-group--popup-lov'').addClass(''apex_disabled''); // \7981\7528LOV'),
unistr('    $(''input[type="file"]'').attr(''type'',''input''); //\628A\56FE\7247\4E0A\4F20\7981\7528'),
unistr('    $(''input'').attr(''readonly'',''true''); // \628A\8F93\5165\6846\7981\7528'),
unistr('    $(''textarea'').prop(''disabled'',''true''); // \628A\5185\5BB9\6846\7981\7528'),
'    $("a[title=''Removing tag'']").attr(''style'',''display:none'');',
unistr('    // console.log(''\786E\5B9A\8D70\8FD9\91CC\4E86'');'),
'}',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134238130953315063)
,p_name=>unistr('upload 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697424091223733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134238575137315062)
,p_event_id=>wwv_flow_imp.id(2134238130953315063)
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
unistr('// console.log(''\5F85\4E0A\4F20\7684\7167\7247'',file)'),
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', ()=>updateImage([file],why5_analysis_images,4));',
'// console.log(why5_analysis_images);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134239020022315062)
,p_name=>unistr('upload \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696620484223725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134239461517315062)
,p_event_id=>wwv_flow_imp.id(2134239020022315062)
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
'                // console.log(data.data);',
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
'// console.log(abnormal_problem_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134239929831315062)
,p_name=>unistr('upload \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696517715223724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134240436404315062)
,p_event_id=>wwv_flow_imp.id(2134239929831315062)
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
'                // console.log(data.data);',
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
'// console.log(process_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134240753622315061)
,p_name=>unistr('upload \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697486675223734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134241305349315061)
,p_event_id=>wwv_flow_imp.id(2134240753622315061)
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
'                // console.log(data.data);',
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
'// console.log(improve_method_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134241701492315061)
,p_name=>unistr('upload \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698419936223743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134242188090315061)
,p_event_id=>wwv_flow_imp.id(2134241701492315061)
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
'                // console.log(data.data);',
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
'// console.log(function_name_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134242587697315061)
,p_name=>unistr('upload \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698484038223744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134243111629315060)
,p_event_id=>wwv_flow_imp.id(2134242587697315061)
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
'                // console.log(data.data);',
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
'// console.log(analysis_key_components_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134243534122315060)
,p_name=>unistr('upload \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698568325223745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134244030888315060)
,p_event_id=>wwv_flow_imp.id(2134243534122315060)
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
'                // console.log(data.data);',
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
'// console.log(structural_principle_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134244373474315060)
,p_name=>unistr('upload \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698684738223746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134244868056315059)
,p_event_id=>wwv_flow_imp.id(2134244373474315060)
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
'                // console.log(data.data);',
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
'// console.log(daily_maintain_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134268148251315048)
,p_name=>unistr('delete 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697424091223733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134268674094315048)
,p_event_id=>wwv_flow_imp.id(2134268148251315048)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'deleteMapItem(this.data,why5_analysis_images)'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134269122878315048)
,p_name=>unistr('delete \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696620484223725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134269553639315048)
,p_event_id=>wwv_flow_imp.id(2134269122878315048)
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
 p_id=>wwv_flow_imp.id(2134269991050315048)
,p_name=>unistr('delete \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696517715223724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134270538775315047)
,p_event_id=>wwv_flow_imp.id(2134269991050315048)
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
 p_id=>wwv_flow_imp.id(2134270867554315047)
,p_name=>unistr('delete \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697486675223734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134271386158315047)
,p_event_id=>wwv_flow_imp.id(2134270867554315047)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,improve_method_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134271808386315047)
,p_name=>unistr('delete \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698419936223743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134272249137315047)
,p_event_id=>wwv_flow_imp.id(2134271808386315047)
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
 p_id=>wwv_flow_imp.id(2134245292040315059)
,p_name=>unistr('delete \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698484038223744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134245759531315059)
,p_event_id=>wwv_flow_imp.id(2134245292040315059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,analysis_key_components_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134246235061315059)
,p_name=>unistr('delete \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698568325223745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134246712703315059)
,p_event_id=>wwv_flow_imp.id(2134246235061315059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,structural_principle_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134247118842315059)
,p_name=>unistr('delete \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698684738223746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134247603321315058)
,p_event_id=>wwv_flow_imp.id(2134247118842315059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'deleteMapItem(this.data,daily_maintain_images)'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134248019337315058)
,p_name=>unistr('upload success 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697424091223733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134248446393315058)
,p_event_id=>wwv_flow_imp.id(2134248019337315058)
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
 p_id=>wwv_flow_imp.id(2134248861170315058)
,p_name=>unistr('upload success \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696620484223725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134249372480315058)
,p_event_id=>wwv_flow_imp.id(2134248861170315058)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(abnormal_problem_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134249786133315057)
,p_name=>unistr('upload success \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272696517715223724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134250276697315057)
,p_event_id=>wwv_flow_imp.id(2134249786133315057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(process_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134250716528315057)
,p_name=>unistr('upload success \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272697486675223734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134251219950315057)
,p_event_id=>wwv_flow_imp.id(2134250716528315057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(improve_method_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134251546929315057)
,p_name=>unistr('upload success \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698419936223743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134252098897315056)
,p_event_id=>wwv_flow_imp.id(2134251546929315057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(function_name_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134252496204315056)
,p_name=>unistr('upload success \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698484038223744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134252941784315056)
,p_event_id=>wwv_flow_imp.id(2134252496204315056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(analysis_key_components_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134253440484315056)
,p_name=>unistr('upload success \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698568325223745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134253866128315056)
,p_event_id=>wwv_flow_imp.id(2134253440484315056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(structural_principle_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134254304547315056)
,p_name=>unistr('upload success \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2272698684738223746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134254805736315055)
,p_event_id=>wwv_flow_imp.id(2134254304547315056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// console.log(this.data);',
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
'// console.log(daily_maintain_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134255158843315055)
,p_name=>unistr('\63D0\4EA4')
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134199799902315091)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134255668771315055)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P207_MAIN_RESPONSIBLE_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E3B\8D1F\8D23\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_ABNORMAL_ANALYSIS_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_SECONDARY_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\534F\52A9\4EBA\5458'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_CREATED_TIME''))) {',
unistr('    alert(''\4E0A\62A5\65F6\95F4\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_WHY5_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\51655why\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_ABNORMAL_PROBLEM_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5F02\5E38\63CF\8FF0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_PROCESS_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5904\7406\8FC7\7A0B\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_IMPROVE_METHOD_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\6539\5584\63AA\65BD\5185\5BB9'');'),
'    return false;',
'}',
'',
'',
'// if (utils.checkNull($v(''P207_FUNCTION_NAME_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\540D\79F0/\529F\80FD\63CF\8FF0'');'),
'//     return false;',
'// }',
'',
'',
'// if (utils.checkNull($v(''P207_DEVICE_KEY_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\5173\952E\5668\4EF6\5206\6790'');'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P207_STRUCTURAL_PRINCIPLE_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\7ED3\6784\539F\7406\5185\5BB9'');'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P207_DAILY_MAINTAIN_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\65E5\5E38\4FDD\517B/\7EF4\62A4\5185\5BB9'');'),
'//     return false;',
'// }',
'',
'',
'if (utils.checkNull($v(''P207_AUDIT_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'',
'',
'if(Array.from(why5_analysis_images.values()).length>4){',
unistr('    alert(''5Why\6839\6E90\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(abnormal_problem_images.values()).length>4){',
unistr('    alert(''\5F02\5E38\63CF\8FF0\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(process_analysis_images.values()).length>4){',
unistr('    alert(''\5904\7406\8FC7\7A0B\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(improve_method_images.values()).length>4){',
unistr('    alert(''\6539\5584\63AA\65BD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(function_name_images.values()).length>4){',
unistr('    alert(''\540D\79F0/\529F\80FD\4ECB\7ECD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(analysis_key_components_images.values()).length>4){',
unistr('    alert(''\5173\952E\5668\4EF6\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(structural_principle_images.values()).length>4){',
unistr('    alert(''\7ED3\6784\539F\7406\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'if(Array.from(daily_maintain_images.values()).length>4){',
unistr('    alert(''\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\56DB\5F20'');'),
'    return false;',
'}',
'',
'',
'// var why5_analysis_images = new Map();',
'// var abnormal_problem_images = new Map();',
'// var process_analysis_images = new Map();',
'// var improve_method_images = new Map();',
'// var function_name_images = new Map();',
'// var analysis_key_components_images = new Map();',
'// var structural_principle_images = new Map();',
'// var daily_maintain_images = new Map();',
'',
'',
'',
'$s(''P207_WHY5_ANALYSIS_IMAGE'', Array.from(why5_analysis_images.values()));',
'$s(''P207_ABNORMAL_PROBLEM_IMAGE'', Array.from(abnormal_problem_images.values()));',
'$s(''P207_PROCESS_ANALYSIS_IMAGE'', Array.from(process_analysis_images.values()));',
'$s(''P207_IMPROVE_METHOD_IMAGE'', Array.from(improve_method_images.values()));',
'$s(''P207_FUNCTION_NAME_IMAGE'', Array.from(function_name_images.values()));',
'$s(''P207_DEVICE_KEY_IMAGE'', Array.from(analysis_key_components_images.values()));',
'$s(''P207_STRUCTURAL_PRINCIPLE_IMAGE'', Array.from(structural_principle_images.values()));',
'$s(''P207_DAILY_MAINTAIN_IMAGE'', Array.from(daily_maintain_images.values()));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2147139518120129861)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P207_MAIN_RESPONSIBLE_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E3B\8D1F\8D23\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_ABNORMAL_ANALYSIS_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_SECONDARY_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\534F\52A9\4EBA\5458'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_CREATED_TIME''))) {',
unistr('    alert(''\4E0A\62A5\65F6\95F4\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_WHY5_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\51655why\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_ABNORMAL_PROBLEM_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5F02\5E38\63CF\8FF0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_PROCESS_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5904\7406\8FC7\7A0B\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_IMPROVE_METHOD_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\6539\5584\63AA\65BD\5185\5BB9'');'),
'    return false;',
'}',
'',
'',
'// if (utils.checkNull($v(''P207_FUNCTION_NAME_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\540D\79F0/\529F\80FD\63CF\8FF0'');'),
'//     return false;',
'// }',
'',
'',
'// if (utils.checkNull($v(''P207_DEVICE_KEY_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\5173\952E\5668\4EF6\5206\6790'');'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P207_STRUCTURAL_PRINCIPLE_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\7ED3\6784\539F\7406\5185\5BB9'');'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P207_DAILY_MAINTAIN_CONTENT''))) {',
unistr('//     alert(''\8BF7\8F93\5165\65E5\5E38\4FDD\517B/\7EF4\62A4\5185\5BB9'');'),
'//     return false;',
'// }',
'',
'',
'if (utils.checkNull($v(''P207_AUDIT_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
''))
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134256217017315054)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'',
'',
'if (Array.from(why5_analysis_images.values()).length > 2) {',
unistr('    alert(''5Why\6839\6E90\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if (Array.from(abnormal_problem_images.values()).length > 2) {',
unistr('    alert(''\5F02\5E38\63CF\8FF0\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if (Array.from(process_analysis_images.values()).length > 3) {',
unistr('    alert(''\5904\7406\8FC7\7A0B\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if (Array.from(improve_method_images.values()).length > 3) {',
unistr('    alert(''\6539\5584\63AA\65BD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if (Array.from(function_name_images.values()).length > 2) {',
unistr('    alert(''\540D\79F0/\529F\80FD\4ECB\7ECD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if (Array.from(analysis_key_components_images.values()).length > 2) {',
unistr('    alert(''\5173\952E\5668\4EF6\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if (Array.from(structural_principle_images.values()).length > 3) {',
unistr('    alert(''\7ED3\6784\539F\7406\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if (Array.from(daily_maintain_images.values()).length > 3) {',
unistr('    alert(''\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'',
'',
'$s(''P207_WHY5_ANALYSIS_IMAGE'', Array.from(why5_analysis_images.values()));',
'$s(''P207_ABNORMAL_PROBLEM_IMAGE'', Array.from(abnormal_problem_images.values()));',
'$s(''P207_PROCESS_ANALYSIS_IMAGE'', Array.from(process_analysis_images.values()));',
'$s(''P207_IMPROVE_METHOD_IMAGE'', Array.from(improve_method_images.values()));',
'$s(''P207_FUNCTION_NAME_IMAGE'', Array.from(function_name_images.values()));',
'$s(''P207_DEVICE_KEY_IMAGE'', Array.from(analysis_key_components_images.values()));',
'$s(''P207_STRUCTURAL_PRINCIPLE_IMAGE'', Array.from(structural_principle_images.values()));',
'$s(''P207_DAILY_MAINTAIN_IMAGE'', Array.from(daily_maintain_images.values()));',
''))
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134256672427315054)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
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
'    SELECT COUNT(EVENT_ID) INTO V_COUNT',
'    FROM TENANT_EVENT_REVIEW',
'    WHERE EVENT_ID = :P207_EVENT_ID',
'      AND TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'    IF V_COUNT = 0 THEN',
'        INSERT INTO TENANT_EVENT_REVIEW(EVENT_ID,CREATED_TIME,END_TIME,AUDIT_STATE,AUDIT_USER,AUDIT_TYPE,TAGS,',
'                                        AUDIT_TITLE,PPT_URL,REMARK,CREATION_DATE,CREATED_BY,TENANT_ID,BASE_DEPT_ID)',
'        VALUES (:P207_EVENT_ID,TO_DATE(:P207_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),TO_DATE(:P207_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'                ''WAIT'',:P207_AUDIT_USER_1,''OFF_LINE'',:P207_TAGS,:P207_AUDIT_TITLE,:P207_PPT_URL,:P207_REMARK,SYSDATE,V(''USERID''),V(''USERTENANT''),:BASE_DEPT_ID);',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    ELSE',
'        UPDATE TENANT_EVENT_REVIEW',
'        SET AUDIT_USER=:P207_AUDIT_USER_1,',
'            AUDIT_STATE=''AUDIT'',',
'            AUDIT_TYPE=''OFF_LINE'',',
'            TAGS=:P207_TAGS,',
'            AUDIT_TITLE=:P207_AUDIT_TITLE,',
'            PPT_URL=:P207_PPT_URL,',
'            REMARK=:P207_REMARK,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=V(''USERID'')',
'        WHERE EVENT_ID = :P207_EVENT_ID',
'          AND TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    END IF;',
'    APEX_UTIL.SET_SESSION_STATE(''P207_ROW_COUNT'', ROW_COUNT);',
'    ',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P207_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P207_EVENT_ID,P207_CREATED_TIME,P207_END_TIME,P207_AUDIT_USER,P207_MAIN_RESPONSIBLE_USER,P207_ABNORMAL_ANALYSIS_USER,P207_SECONDARY_USER,P207_WHY5_ANALYSIS_CONTENT,P207_WHY5_ANALYSIS_IMAGE,P207_ABNORMAL_PROBLEM_CONTENT,P207_ABNORMAL_PROBLEM_IMAGE,P20'
||'7_PROCESS_ANALYSIS_CONTENT,P207_PROCESS_ANALYSIS_IMAGE,P207_IMPROVE_METHOD_CONTENT,P207_IMPROVE_METHOD_IMAGE,P207_FUNCTION_NAME_CONTENT,P207_FUNCTION_NAME_IMAGE,P207_DEVICE_KEY_CONTENT,P207_DEVICE_KEY_IMAGE,P207_STRUCTURAL_PRINCIPLE_CONTENT,P207_STRU'
||'CTURAL_PRINCIPLE_IMAGE,P207_DAILY_MAINTAIN_CONTENT,P207_DAILY_MAINTAIN_IMAGE,P207_PDF_URL,P207_AUDIT_NAME'
,p_attribute_03=>'P207_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134257150242315053)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
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
'var texts = $v(''P207_CREATED_TIME'').split('' '')',
'var beginTimeText = texts[0].replace(reg, '''').slice(2)',
'beginTimeDom.innerHTML = beginTimeText',
'fabNameDom.innerHTML = $v(''P207_FAB_NAME'')',
'areaNameDom.innerHTML = $v(''P207_MAP_AREA_X_NAME'')',
'deviceNameDom.innerHTML = $v(''P207_DEVICE_NAME'')',
'secondEventNameDom.innerHTML = $v(''P207_SECOND_EVENT_CATEGORY_NAME'')',
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
'faultWhenDom.innerHTML = whenTime($v(''P207_FAULT_TIME''), $v(''P207_END_TIME''))',
'if ($v(''P207_DEVICE_CODE'') === '''') {',
'    faultWhereDom.innerHTML = $v(''P207_FAB_NAME'') + ''-'' + $v(''P207_MAP_AREA_X_NAME'')',
'} else {',
'    faultWhereDom.innerHTML = $v(''P207_FAB_NAME'') + ''-'' + $v(''P207_MAP_AREA_X_NAME'') + ''-'' + $v(''P207_DEVICE_CODE'')',
'}',
'submitExtUserNameDom.innerHTML = $v(''P207_MAIN_NAME'') + ''-'' + $v(''P207_SUBMIT_NAME'')',
'var handleUsersValue = apex.item(''P207_SECONDARY_USER'').getValue();',
'handleUsersDom.innerHTML = apex.item(''P207_SECONDARY_USER'').displayValueFor(handleUsersValue);',
'var analysisExtUserValue = apex.item(''P207_ABNORMAL_ANALYSIS_USER'').getValue();',
'analysisExtUserNameDom.innerHTML = apex.item(''P207_ABNORMAL_ANALYSIS_USER'').displayValueFor(analysisExtUserValue);',
'auditNameDom.innerHTML = $v(''P207_AUDIT_NAME'')',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134257697454315053)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
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
'abnormalProblemContentDom.innerHTML = $v(''P207_ABNORMAL_PROBLEM_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(abnormal_problem_images, abnormalProblemImagesDom,4)',
'processAnalysisContentDom.innerHTML = $v(''P207_PROCESS_ANALYSIS_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(process_analysis_images, processAnalysisImagesDom,4)',
'why5AnalysisContentDom.innerHTML = $v(''P207_WHY5_ANALYSIS_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(why5_analysis_images, why5AnalysisImagesDom,4)',
'improveMethodContentDom.innerHTML = $v(''P207_IMPROVE_METHOD_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(improve_method_images, improveMethodImagesDom,4)',
'',
'functionNameContentDom.innerHTML = $v(''P207_FUNCTION_NAME_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(function_name_images, functionNameImagesDom,4)',
'structuralPrincipleContentDom.innerHTML = $v(''P207_STRUCTURAL_PRINCIPLE_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(structural_principle_images, structuralPrincipleImagesDom,4)',
'deviceKeyContentDom.innerHTML = $v(''P207_DEVICE_KEY_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(analysis_key_components_images, deviceKeyImagesDom,4)',
'dailyMaintainContentDom.innerHTML = $v(''P207_DAILY_MAINTAIN_CONTENT'').replace(/[\r\n]/g, "")',
'getImages(daily_maintain_images, dailyMaintainImagesDom,4)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134258204731315053)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'pdfFileToOSS = (config) => {',
'    // console.log(''number: ''+3);',
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
'        // console.log(''number: ''+2);',
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
'        //  console.log(''number: ''+1);',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
'          console.log(''url: ''+url);',
'        if (url) {',
'            $s(''P207_PDF_URL'',url);',
'        }else{',
unistr('            alert(''pdf\6587\4EF6\751F\6210\5931\8D25\FF0C\8BF7\91CD\65B0\63D0\4EA4'');'),
'            return false;',
'        }',
'    }',
'',
'    const upDataSingleImage = (file) => {',
'        // console.log(''number: ''+0);',
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
 p_id=>wwv_flow_imp.id(2134258668813315052)
,p_event_id=>wwv_flow_imp.id(2134255158843315055)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'savePdf(uploadPdf)',
'',
'function savePdf(callbcak) {',
unistr('    // console.log(''\5F00\59CB\626B\63CF\9875\9762\5143\7D20'')'),
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
'    // console.log(res)',
unistr('    //res\62FF\5230base64\7684pdf'),
'    let pdfBase64Str = res;',
unistr('    let title = "\590D\76D8ppt"'),
unistr('    var fileObj = dataURLtoFile(pdfBase64Str, title + ".pdf");//\8C03\7528\4E00\4E0B\4E0B\9762\7684\8F6C\6587\4EF6\6D41\51FD\6570'),
'    // console.log(fileObj, ''fileObj----222'')',
'    getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updatePdf(fileObj));',
'',
'    if (utils.checkNull($s(''P207_PDF_URL''))) {',
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
 p_id=>wwv_flow_imp.id(2204084572412425876)
,p_name=>unistr('\63D0\4EA4\5BA1\6838-\5F85\590D\76D8-\7EBF\4E0B')
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2204084279038425873)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204084679091425877)
,p_event_id=>wwv_flow_imp.id(2204084572412425876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P207_MAIN_RESPONSIBLE_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E3B\8D1F\8D23\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_ABNORMAL_ANALYSIS_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_SECONDARY_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\534F\52A9\4EBA\5458'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_CREATED_TIME''))) {',
unistr('    alert(''\4E0A\62A5\65F6\95F4\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_AUDIT_TITLE''))) {',
unistr('    alert(''\8BF7\8F93\5165\590D\76D8\6807\9898'');'),
'    return false;',
'}',
'',
'$s(''P207_TAGS'',$(''#tags'').val())',
'if (utils.checkNull($v(''P207_TAGS''))) {',
unistr('    alert(''\8BF7\8F93\5165\6807\7B7E'');'),
'    return false;',
'}',
'',
'var url_tmp;',
'ppt_url.forEach((value,key) => {url_tmp?url_tmp= url_tmp + '','' + key + ''&&'' + value:url_tmp=key + ''&&'' + value});',
'$s(''P207_PPT_URL'',url_tmp);',
'// console.log(url_tmp);',
'if (utils.checkNull($v(''P207_PPT_URL''))) {',
unistr('    alert(''\8BF7\4E0A\4F20\590D\76D8\6587\4EF6'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P207_AUDIT_USER_1''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'',
'// return false;'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204085012740425880)
,p_event_id=>wwv_flow_imp.id(2204084572412425876)
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
'    SELECT COUNT(EVENT_ID) INTO V_COUNT',
'    FROM TENANT_EVENT_REVIEW',
'    WHERE EVENT_ID = :P207_EVENT_ID',
'      AND TENANT_ID = V(''USERTENANT'')',
'      AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'    IF V_COUNT = 0 THEN',
'        INSERT INTO TENANT_EVENT_REVIEW(EVENT_ID,CREATED_TIME,END_TIME,AUDIT_STATE,AUDIT_USER,AUDIT_TYPE,TAGS,',
'                                        AUDIT_TITLE,PPT_URL,REMARK,CREATION_DATE,CREATED_BY,TENANT_ID,BASE_DEPT_ID)',
'        VALUES (:P207_EVENT_ID,TO_DATE(:P207_CREATED_TIME,''YYYY-MM-DD HH24:MI:SS''),TO_DATE(:P207_END_TIME,''YYYY-MM-DD HH24:MI:SS''),',
'                ''WAIT'',:P207_AUDIT_USER_1,''OFF_LINE'',:P207_TAGS,:P207_AUDIT_TITLE,:P207_PPT_URL,:P207_REMARK,SYSDATE,V(''USERID''),V(''USERTENANT''),:BASE_DEPT_ID);',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    ELSE',
'        UPDATE TENANT_EVENT_REVIEW',
'        SET AUDIT_USER=:P207_AUDIT_USER_1,',
'            AUDIT_STATE=''AUDIT'',',
'            AUDIT_TYPE=''OFF_LINE'',',
'            TAGS=:P207_TAGS,',
'            AUDIT_TITLE=:P207_AUDIT_TITLE,',
'            PPT_URL=:P207_PPT_URL,',
'            REMARK=:P207_REMARK,',
'            UPDATE_DATE=SYSDATE,',
'            UPDATED_BY=V(''USERID'')',
'        WHERE EVENT_ID = :P207_EVENT_ID',
'          AND TENANT_ID = V(''USERTENANT'')',
'          AND BASE_DEPT_ID =:BASE_DEPT_ID;',
'        ROW_COUNT := SQL%ROWCOUNT;',
'    END IF;',
'    APEX_UTIL.SET_SESSION_STATE(''P207_ROW_COUNT'', ROW_COUNT);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P207_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P207_EVENT_ID,P207_CREATED_TIME,P207_END_TIME,P207_PPT_URL,P207_AUDIT_USER_1,P207_AUDIT_TITLE,P207_TAGS,P207_REMARK'
,p_attribute_03=>'P207_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204809598350427264)
,p_event_id=>wwv_flow_imp.id(2204084572412425876)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P207_ROW_COUNT'')>0){',
unistr('   alert(''\63D0\4EA4\6210\529F'');'),
'   apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");',
'   return true;',
'}else{',
unistr('    alert(''\63D0\4EA4\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134259046642315052)
,p_name=>unistr('\8FD4\56DE')
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134199432836315092)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134259566738315052)
,p_event_id=>wwv_flow_imp.id(2134259046642315052)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2204084395023425874)
,p_name=>unistr('\8FD4\56DE-\5F85\590D\76D8-\7EBF\4E0B')
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2204084213712425872)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204084447172425875)
,p_event_id=>wwv_flow_imp.id(2204084395023425874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134260038485315052)
,p_name=>unistr('\8FD4\56DE1')
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134200499025315090)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134260456465315052)
,p_event_id=>wwv_flow_imp.id(2134260038485315052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2204085793805425888)
,p_name=>unistr('\8FD4\56DE-\5BA1\6838\4E2D-\7EBF\4E0B')
,p_event_sequence=>310
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2204085631833425886)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204085911911425889)
,p_event_id=>wwv_flow_imp.id(2204085793805425888)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134260851597315052)
,p_name=>unistr('\8FD4\56DE2')
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134201635167315089)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134261403185315051)
,p_event_id=>wwv_flow_imp.id(2134260851597315052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2204086409029425894)
,p_name=>unistr('\8FD4\56DE-\5DF2\9A73\56DE-\7EBF\4E0B')
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2204086131437425891)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204086474266425895)
,p_event_id=>wwv_flow_imp.id(2204086409029425894)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134261771356315051)
,p_name=>unistr('\8FD4\56DE3')
,p_event_sequence=>340
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134203068860315088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134262286841315051)
,p_event_id=>wwv_flow_imp.id(2134261771356315051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2204087319925425903)
,p_name=>unistr('\8FD4\56DE-\5DF2\5B8C\6210-\7EBF\4E0B')
,p_event_sequence=>350
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2204086929670425899)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2204087370452425904)
,p_event_id=>wwv_flow_imp.id(2204087319925425903)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134262700571315051)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>360
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134263192011315051)
,p_event_id=>wwv_flow_imp.id(2134262700571315051)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134263604566315050)
,p_name=>unistr('\786E\8BA4\63D0\4EA4\5BA1\6838')
,p_event_sequence=>370
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134206098747315085)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2136101416647304606)
,p_event_id=>wwv_flow_imp.id(2134263604566315050)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!$v(''P207_PDF_URL'')){',
unistr('   alert(''PDF\6587\4EF6\4E0A\4F20\672A\5B8C\6210\FF0C\8BF7\7A0D\7B49'');'),
'   return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134264105225315050)
,p_event_id=>wwv_flow_imp.id(2134263604566315050)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'row_count number(10) := 0;',
'v_count   number(10) := 0;',
unistr('V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'select count(EVENT_ID)',
'into v_count',
'from TENANT_EVENT_REVIEW',
'where EVENT_ID = :P207_EVENT_ID',
'and TENANT_ID = V(''USERTENANT'')',
'and BASE_DEPT_ID =:BASE_DEPT_ID;',
'if v_count = 0 then',
'insert into TENANT_EVENT_REVIEW(event_id, created_time, end_time, audit_state, audit_user,main_responsible_user, abnormal_analysis_user, secondary_user,',
'                                why5_analysis_content,why5_analysis_image, abnormal_problem_content, abnormal_problem_image,process_analysis_content, process_analysis_image, improve_method_content,',
'                                improve_method_image, function_name_content, function_name_image,device_key_content,device_key_image, structural_principle_content, structural_principle_image,',
'                                daily_maintain_content, daily_maintain_image, creation_date,created_by, tenant_id,PDF_URL,AUDIT_TYPE,BASE_DEPT_ID)',
'values (:P207_EVENT_ID, to_date(:P207_CREATED_TIME, ''YYYY-MM-DD HH24:MI:SS''),to_date(:P207_END_TIME, ''YYYY-MM-DD HH24:MI:SS''), ''WAIT'', :P207_AUDIT_USER, :P207_MAIN_RESPONSIBLE_USER,',
'        :P207_ABNORMAL_ANALYSIS_USER,',
'        :P207_SECONDARY_USER, :P207_WHY5_ANALYSIS_CONTENT, :P207_WHY5_ANALYSIS_IMAGE,',
'        :P207_ABNORMAL_PROBLEM_CONTENT,',
'        :P207_ABNORMAL_PROBLEM_IMAGE, :P207_PROCESS_ANALYSIS_CONTENT, :P207_PROCESS_ANALYSIS_IMAGE,',
'        :P207_IMPROVE_METHOD_CONTENT, :P207_IMPROVE_METHOD_IMAGE, :P207_FUNCTION_NAME_CONTENT,',
'        :P207_FUNCTION_NAME_IMAGE,',
'        :P207_DEVICE_KEY_CONTENT, :P207_DEVICE_KEY_IMAGE, :P207_STRUCTURAL_PRINCIPLE_CONTENT,',
'        :P207_STRUCTURAL_PRINCIPLE_IMAGE,',
'        :P207_DAILY_MAINTAIN_CONTENT, :P207_DAILY_MAINTAIN_IMAGE, sysdate, V(''USERID''), V(''USERTENANT''),:P207_PDF_URL,''ON_LINE'',:BASE_DEPT_ID);',
'row_count := SQL%ROWCOUNT;',
'else',
'update TENANT_EVENT_REVIEW',
'set AUDIT_USER=:P207_AUDIT_USER, audit_state=''AUDIT'', AUDIT_TYPE=''ON_LINE'', MAIN_RESPONSIBLE_USER=:P207_MAIN_RESPONSIBLE_USER,',
'    ABNORMAL_ANALYSIS_USER=:P207_ABNORMAL_ANALYSIS_USER,',
'    SECONDARY_USER=:P207_SECONDARY_USER,',
'    WHY5_ANALYSIS_CONTENT=:P207_WHY5_ANALYSIS_CONTENT,',
'    WHY5_ANALYSIS_IMAGE=:P207_WHY5_ANALYSIS_IMAGE,',
'    ABNORMAL_PROBLEM_CONTENT=:P207_ABNORMAL_PROBLEM_CONTENT,',
'    ABNORMAL_PROBLEM_IMAGE=:P207_ABNORMAL_PROBLEM_IMAGE,',
'    PROCESS_ANALYSIS_CONTENT=:P207_PROCESS_ANALYSIS_CONTENT,',
'    PROCESS_ANALYSIS_IMAGE=:P207_PROCESS_ANALYSIS_IMAGE,',
'    IMPROVE_METHOD_CONTENT=:P207_IMPROVE_METHOD_CONTENT,',
'    IMPROVE_METHOD_IMAGE=:P207_IMPROVE_METHOD_IMAGE,',
'    FUNCTION_NAME_CONTENT=:P207_FUNCTION_NAME_CONTENT,',
'    FUNCTION_NAME_IMAGE=:P207_FUNCTION_NAME_IMAGE,',
'    DEVICE_KEY_CONTENT=:P207_DEVICE_KEY_CONTENT,',
'    DEVICE_KEY_IMAGE=:P207_DEVICE_KEY_IMAGE,',
'    STRUCTURAL_PRINCIPLE_CONTENT=:P207_STRUCTURAL_PRINCIPLE_CONTENT,',
'    STRUCTURAL_PRINCIPLE_IMAGE=:P207_STRUCTURAL_PRINCIPLE_IMAGE,',
'    DAILY_MAINTAIN_CONTENT=:P207_DAILY_MAINTAIN_CONTENT,',
'    DAILY_MAINTAIN_IMAGE=:P207_DAILY_MAINTAIN_IMAGE,',
'    UPDATE_DATE=sysdate,',
'    UPDATED_BY=V(''USERID''),',
'    PDF_URL=:P207_PDF_URL,',
'    AUDIT_NAME=:P207_AUDIT_NAME',
'where EVENT_ID = :P207_EVENT_ID',
'  and TENANT_ID = V(''USERTENANT'')',
'  and BASE_DEPT_ID =:BASE_DEPT_ID;',
'row_count := SQL%ROWCOUNT;',
'end if;',
'apex_util.set_session_state(''P207_ROW_COUNT'', row_count);',
'EXCEPTION',
'WHEN',
'OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('--\5199\5165\5F02\5E38\65E5\5FD7'),
'JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'apex_util.set_session_state(''P207_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P207_EVENT_ID,P207_CREATED_TIME,P207_END_TIME,P207_AUDIT_USER,P207_MAIN_RESPONSIBLE_USER,P207_ABNORMAL_ANALYSIS_USER,P207_SECONDARY_USER,P207_WHY5_ANALYSIS_CONTENT,P207_WHY5_ANALYSIS_IMAGE,P207_ABNORMAL_PROBLEM_CONTENT,P207_ABNORMAL_PROBLEM_IMAGE,P20'
||'7_PROCESS_ANALYSIS_CONTENT,P207_PROCESS_ANALYSIS_IMAGE,P207_IMPROVE_METHOD_CONTENT,P207_IMPROVE_METHOD_IMAGE,P207_FUNCTION_NAME_CONTENT,P207_FUNCTION_NAME_IMAGE,P207_DEVICE_KEY_CONTENT,P207_DEVICE_KEY_IMAGE,P207_STRUCTURAL_PRINCIPLE_CONTENT,P207_STRU'
||'CTURAL_PRINCIPLE_IMAGE,P207_DAILY_MAINTAIN_CONTENT,P207_DAILY_MAINTAIN_IMAGE,P207_PDF_URL,P207_AUDIT_NAME'
,p_attribute_03=>'P207_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134264628582315050)
,p_event_id=>wwv_flow_imp.id(2134263604566315050)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_count   number(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'',
'begin',
'',
'    select count(EVENT_ID)',
'    into v_count',
'    from TENANT_EVENT_REVIEW',
'    where EVENT_ID = :P207_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID ;',
'    if v_count = 1 then',
'',
'        update TENANT_EVENT_REVIEW',
'        set PDF_URL=:P207_PDF_URL,UPDATED_BY=:USERID,UPDATE_DATE=sysdate',
'        where EVENT_ID = :P207_EVENT_ID',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID = :BASE_DEPT_ID;',
'        row_count := SQL%ROWCOUNT;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P207_ROW_COUNT'', row_count);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P207_ROW_COUNT'', row_count);',
'end;'))
,p_attribute_02=>'P207_EVENT_ID,P207_PDF_URL'
,p_attribute_03=>'P207_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134265055088315049)
,p_event_id=>wwv_flow_imp.id(2134263604566315050)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P207_ROW_COUNT'')>0){',
unistr('   alert(''\63D0\4EA4\6210\529F'');'),
'   apex.navigation.redirect("f?p=&APP_ID.:"+$v("P207_PAGE_ID")+":&APP_SESSION.:::::");',
'   return true;',
'}else{',
unistr('    alert(''\63D0\4EA4\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134265474078315049)
,p_name=>unistr('\53D6\6D88\5BA1\6838')
,p_event_sequence=>380
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134205676502315085)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134266015385315049)
,p_event_id=>wwv_flow_imp.id(2134265474078315049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var previewBoxDom = document.getElementsByClassName(''preview-box'')[0]',
'previewBoxDom.style.display = ''none'''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2134266418854315049)
,p_name=>unistr('\4E0B\8F7Dppt')
,p_event_sequence=>390
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134203463998315087)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134266846243315049)
,p_event_id=>wwv_flow_imp.id(2134266418854315049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P207_PDF_URL''))) {',
unistr('    alert(''\6587\4EF6\4E0D\5B58\5728'');'),
'} else {',
'    var a = document.createElement(''a'')',
'    a.href = $v("P207_PDF_URL")',
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
 p_id=>wwv_flow_imp.id(2134267279709315049)
,p_name=>unistr('\9A73\56DE-\4E0B\8F7Dppt')
,p_event_sequence=>410
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2134202439696315088)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2134267772870315048)
,p_event_id=>wwv_flow_imp.id(2134267279709315049)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P207_PDF_URL''))) {',
unistr('    alert(''\6587\4EF6\4E0D\5B58\5728'');'),
'} else {',
'    var a = document.createElement(''a'')',
'    a.href = $v("P207_PDF_URL")',
unistr('    a.download = ''\590D\76D8ppt.pdf'''),
'    a.style.display = ''none''',
'    document.body.appendChild(a)',
'    a.click()',
'    a.remove()',
'}',
'',
''))
);
wwv_flow_imp.component_end;
end;
/

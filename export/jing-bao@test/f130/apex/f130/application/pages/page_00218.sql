prompt --application/pages/page_00218
begin
--   Manifest
--     PAGE: 00218
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
 p_id=>218
,p_name=>unistr('\95EE\9898\53CD\9988-\8868\5355')
,p_alias=>unistr('\95EE\9898\53CD\9988-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\95EE\9898\53CD\9988-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://jingobj.jasolar.com:26000/tdd-public/public/1665297976246.html2canvas.min.js',
'-- #WORKSPACE_FILES#static/js/canvas2image#MIN#.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var pro_url;',
'function base64ToFile(dataurl) {',
unistr('    let filename = `\622A\56FE${Date.now()}.png`;'),
'    let arr = dataurl.split('','');',
unistr('    // \83B7\53D6\6587\4EF6\7C7B\578B'),
'    let mime = "png";',
unistr('    // \89E3\7801base64\5B57\7B26\4E32'),
'    let bstr = atob(arr[1]);',
'    let n = bstr.length;',
unistr('    // \521B\5EFA\4E00\4E2A\5185\5BB9\957F\5EA6\7684\6570\7EC4\FF0C\6BCF\4E2A\5143\7D20\4E3A\5BF9\5E94\5B57\7B26\4E32\7684Unicode\7801'),
unistr('    // \6570\7EC4\7C7B\578B\8868\793A\4E00\4E2A8\4F4D\65E0\7B26\53F7\6574\578B\6570\7EC4\FF0C\521B\5EFA\65F6\5185\5BB9\88AB\521D\59CB\5316\4E3A0\3002'),
'    let u8arr = new Uint8Array(n);',
unistr('    // UTF-16 \7F16\7801\5355\5143\5339\914D Unicode \7F16\7801\5355\5143'),
'    while (n--) {',
'        u8arr[n] = bstr.charCodeAt(n);',
'    }',
'    return new File([u8arr], filename, { type: mime });',
'}',
'',
'const createEnvironmentFile = (config, resolve) => {',
'',
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
'',
'    const getFormData = async (result) => {',
'        //   console.log(result);',
'        let data = config,',
'            fileName = `${Date.now()}.${result.name}`,',
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
'        htmlContext = url;',
'        resolve(url);',
'        // console.log(''url : '' + pro_url);',
'    }',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        upDataImage(images, htmlContext);',
'    }',
'}',
unistr('// \8BF7\6C42\963F\91CC\4E91\6570\636E'),
'function getOssConfigFile(appKey, appSecret, callback) {',
'    return new Promise((resolve, reject) => {',
'        $.ajax({',
'            type: ''get'',',
'            dataType: ''json'',',
'            url: ''&MPF_API_URL.'' + ''/basic/api/aliyun/oss/config'',',
'            headers: {',
'                ''appKey'': appKey,',
'                ''appSecret'': appSecret',
'            },',
'            success: function (data) {',
'',
'                if (data.code === 200) {',
'                    upFile = createEnvironmentFile({',
'                        "accessId": data.data.accessId,',
'                        "policy": data.data.policy,',
'                        "signature": data.data.signature,',
'                        "host": data.data.host,',
'                        "expire": data.data.expire,',
'                        "prefixFormat": data.data.prefixFormat,',
'                        "dir": data.data.prefixFormat',
'                    }, resolve);',
'                    callback()',
'                } else {',
'                    alert(data.msg);',
'                    return false;',
'                }',
'            },',
'            error: function (XMLHttpRequest) {',
unistr('                alert("\83B7\53D6\963F\91CC\4E91OSS\6570\636E\5931\8D25");'),
'                reject(false);',
'            }',
'        });',
'    });',
'}',
'',
'',
'',
unistr('// \6253\5F00\56FE\7247'),
'function openDiv(obj) {',
'    src_url = $(obj).attr(''value'');',
'    $(window.parent.document.getElementById(''myImag'')).attr(''src'', src_url);',
'    $(window.parent.document.getElementById(''zzcDiv'')).attr(''style'', ''width:100%;height:100%;background:rgba(0, 0, 0, 0.5);position:fixed;top:0;left:0;display:block;z-index:909;'');',
'}',
unistr('// \5173\95ED\56FE\7247'),
'function closeDiv() {',
'    $(window.parent.document.getElementById(''zzcDiv'')).attr(''style'', ''width:100%;height:100%;background:rgba(0, 0, 0, 0.5);position:fixed;top:0;left:0;display:none;z-index:909;'');',
'}',
'',
'var url_map = new Map();',
'$("body").append(''<input id="fileupload" type="file" name="" onchange="upload_file(this)" style="display:none">'')',
'function upload_file(obj) {',
'    file = obj.files[0];',
unistr('    // \9650\5236\53EA\80FD\4E0A\4F20\56FE\7247'),
'    if(file.type.match(/^image.*/)){',
'        const url = getOssConfigFile(''&APPKEY.'', ''&APPSECRET.'', () => upFile(file, pro_url));',
'        url.then(async (result) => {',
'            var url_value = result;',
'            url_map.set(url_value, file.name);',
'            var html_url = `',
'            <div class="apex-item-text" style="display:block;height:32px;width: 80%;margin: 5px 0 5px 0;">',
'                <a href="javascript:void(0);" onclick="openDiv(this)" value=''${url_value}''>${file.name}</a>',
unistr('                <a href="javascript:void(0);" onclick="btnDel(this)" style="float: right" value=${url_value}>\5220\9664</a>'),
'            </div>',
'            `;',
'            $(''#PRO_URL'').prepend(html_url);',
'            if (url_map.size == 3) {',
'                $("#upfile_btn").attr("disabled", true);',
'            } ',
'        });',
'    }else{',
unistr('        alert(''\6587\4EF6\683C\5F0F\4E0D\6B63\786E\FF0C\53EA\652F\6301\4E0A\4F20\56FE\7247\FF0C\8BF7\91CD\65B0\4E0A\4F20\FF01'')'),
'    }',
'}',
'',
'',
'function btnClick() {',
'    $(''#fileupload'').click();',
'}',
'',
'function btnDel(obj) {',
'    url_map.delete($(obj).attr("value"));',
'    $(obj).parent().remove();',
'    var file = document.getElementById(''fileupload'');',
'    file.outerHTML = file.outerHTML;',
'    if (url_map.size == 2) {',
'        $("#upfile_btn").attr("disabled", false);',
'    }',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#label_id{',
'    position:relative;',
'}',
'#label_id::before{',
'    position: absolute;',
'    content: "\e058";',
'    font-family: "apex-5-icon-font"!important;',
'    color: var(--a-form-required-asterisk-text-color, red);',
'    top:8px;',
'    left: -15px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3320997666631403921)
,p_plug_name=>unistr('\53CD\9988')
,p_region_name=>'region_feedback'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2616995229771372118)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_button_name=>unistr('\70B9\51FB\622A\56FE')
,p_button_static_id=>'myBtn-x'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\70B9\51FB\622A\56FE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2616995584821372118)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2616996017865372118)
,p_button_sequence=>70
,p_button_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--gapLeft:t-Button--gapRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616996385794372118)
,p_name=>'P218_PRO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\53CD\9988\65E5\671F')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616996870931372118)
,p_name=>'P218_USER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_item_default=>'USERNAME'
,p_item_default_type=>'ITEM'
,p_prompt=>unistr(' \53CD\9988\4EBA')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616997257844372119)
,p_name=>'P218_SYS_SOURCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_item_default=>':APP_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>unistr('\6765\6E90\7CFB\7EDF')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616997651469372119)
,p_name=>'P218_PRO_TITLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_prompt=>unistr('\95EE\9898\6807\9898')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616997992080372119)
,p_name=>'P218_PRO_TAG'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_prompt=>unistr('\95EE\9898\7C7B\522B')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>unistr('STATIC2:\529F\80FD\7C7B;\529F\80FD\7C7B,\64CD\4F5C\7C7B;\64CD\4F5C\7C7B,\4F18\5316\7C7B;\4F18\5316\7C7B')
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616998435124372119)
,p_name=>'P218_PRO_DESC'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_prompt=>unistr('\95EE\9898\63CF\8FF0')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>500
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2330987797746485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large:margin-top-none:margin-bottom-none:margin-left-none:margin-right-none'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616998859628372120)
,p_name=>'P218_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2616999262207372120)
,p_name=>'P218_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3320997666631403921)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2616999644197372120)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617000158630372120)
,p_event_id=>wwv_flow_imp.id(2616999644197372120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2616995229771372118)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617000571753372121)
,p_event_id=>wwv_flow_imp.id(2616999644197372120)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'setTimeout("$(''#myBtn-x'').click()",1000)',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617001166128372121)
,p_event_id=>wwv_flow_imp.id(2616999644197372120)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P218_PRO_TITLE,P218_PRO_TAG,P218_PRO_DESC'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2617001478672372121)
,p_name=>unistr('\70B9\51FB\622A\56FE')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2616995229771372118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617002042085372121)
,p_event_id=>wwv_flow_imp.id(2617001478672372121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var shareContent = window.parent.document.getElementById(''wwvFlowForm'');',
'var width = shareContent.offsetWidth;',
'var height = shareContent.offsetHeight;',
'var canvas = document.createElement("canvas");',
'var scale = window.devicePixelRatio;',
'canvas.width = width * scale;',
'canvas.height = height * scale;',
'// canvas.getContext("2d").scale(scale, scale); ',
'var context = canvas.getContext(''2d'');',
unistr('// \53BB\56FE\7247\952F\9F7F \5B98\7F51'),
'context.mozImageSmoothingEnabled = false;',
'context.webkitImageSmoothingEnabled = false;',
'context.msImageSmoothingEnabled = false;',
'context.imageSmoothingEnabled = false;',
'var opts = {',
'    scale: scale,',
'    canvas: canvas,',
'    logging: true,',
'    dpi: 600,',
'    allowTaint: false,',
'    useCORS: true',
'    // scrollX : -window.innerWidth,',
'    // scrollY : -window.innerHeight',
'};',
'imgBlobData = html2canvas(shareContent, opts).then(function (canvas) {',
'    // var context = canvas.getContext(''2d'');',
'    // var img = Canvas2Image.convertToImage(canvas, canvas.width, canvas.height);',
'    // console.log(img);',
'    var html = `',
'    <div class="row ">',
'        <div class="col col-12 apex-col-auto col-start col-end">',
'            <div class="t-Form-fieldContainer rel-col t-Form-fieldContainer--large apex-item-wrapper apex-item-wrapper--display-image ">',
'                <div class="t-Form-labelContainer col col-2">',
unistr('                    <label for="PRO_URL" class="t-Form-label" id="label_id">\9644\4EF6</label>'),
'                </div>',
'                <div class="t-Form-inputContainer col col-10">',
'                    <div class="t-Form-itemWrapper" style="display:block;" id="PRO_URL">',
'                        <!--<div style="height:32px;margin: 5px 0 0 0;">',
'                            <button onclick="btnClick()" class="t-Button" type="button" style="width: 80%;"  id="upfile_btn">',
unistr('                                <span class="t-Button-label">\4E0A\4F20\9644\4EF6</span></button>'),
'                        </div>-->',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'    `;',
'    $(''#region_feedback  div.container'').append(html);',
'    // $(''#PRO_URL'').append(img);',
'    // $(img).css(''width'', width / 2);',
'    var img_file = base64ToFile(canvas.toDataURL());',
unistr('    // \9700\8981\4FEE\6539'),
'    const img_url = getOssConfigFile(''&APPKEY.'', ''&APPSECRET.'', () => upFile(img_file, pro_url));',
'    // console.log(img_url);',
'    img_url.then(async (result) => {',
'        $s(''P218_URL'', result);',
'        var url_value = result;',
'        var html_url = `',
'        <div class="apex-item-text" style="display:block;height:32px;width: 80%;margin: 5px 0 5px 0;">',
unistr('            <a href="javascript:void(0);" onclick="openDiv(this)" value=''${url_value}''>\5C4F\5E55\622A\56FE.png</a>'),
'        </div>',
'        `;',
'    $(''#PRO_URL'').prepend(html_url);',
'    });',
'',
'    var zzchtml = `',
'    <div id="zzcDiv"',
'        style="width: 100%;height: 100%;background: rgba(0, 0, 0, 0.5);position: fixed;top: 0;left: 0;display: none;z-index:909;">',
'        <span href="javascript:;" id="mySpan" onclick="$(''iframe'')[0].contentWindow.closeDiv()"',
'            style="position:relative;display:inline-block;width:24px;height:24px;font-size:24px;color:#f0f0f0;top:10%;left:90%;z-index:920;text-decoration:none;cursor:pointer;">X</span>',
'        <img id="myImag"',
'            src=""',
'            style="width:70%;height:70%;position:absolute;left:50%;top:50%;transform:translate(-50%, -50%);">',
'    </div>',
'    `;',
'    $(window.parent.document.body).append(zzchtml);',
'});',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2617002447652372121)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2616995584821372118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617002944596372122)
,p_event_id=>wwv_flow_imp.id(2617002447652372121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2617003295536372122)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2616996017865372118)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617003813510372122)
,p_event_id=>wwv_flow_imp.id(2617003295536372122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P218_PRO_TITLE'') == '''') {',
unistr('    alert(''\95EE\9898\6807\9898\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if ($v(''P218_PRO_TAG'') == '''') {',
unistr('    alert(''\95EE\9898\7C7B\578B\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if ($v(''P218_PRO_DESC'') == '''') {',
unistr('    alert(''\95EE\9898\63CF\8FF0\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if ($v(''P218_URL'') == '''') {',
unistr('    alert(''\622A\56FE\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617004302666372122)
,p_event_id=>wwv_flow_imp.id(2617003295536372122)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_DATA VARCHAR2(4000);',
'    V_PROGRAM VARCHAR2(4000);',
'    V_TENANT VARCHAR2(16) := 2;',
'    V_PARAM VARCHAR2(4000);',
'    V_URL VARCHAR2(512);',
'BEGIN',
unistr('    SELECT API_URL INTO V_URL FROM MPF.APEX_API_URL WHERE API_SOURCE = ''\53CD\9988\63A5\53E3'' AND ROWNUM = 1;'),
'    V_PARAM := ''{"user_name":"''||V(''USERNAME'')||''","ding_user_id":"''||V(''USER_ID'')||''","app_id":"''||V(''APP_ID'')||''","app_name":"''||V(''APP_NAME'')||''","pro_tag":"''||',
'    :P218_PRO_TAG||''","pro_title":"''||:P218_PRO_TITLE||''","pro_desc":"''||:P218_PRO_DESC||''","pro_image":"''||:P218_URL||''"}'';',
'    V_DATA := APEX_HTTP_POST_01(V_URL,V_PARAM);',
'    APEX_UTIL.SET_SESSION_STATE(''P218_FLAG'',V_DATA);',
'    EXCEPTION',
'        WHEN OTHERS THEN',
'            APEX_UTIL.SET_SESSION_STATE(''P218_FLAG'',''error'');',
'END;'))
,p_attribute_02=>'P218_PRO_TITLE,P218_PRO_TAG,P218_PRO_DESC,P218_URL'
,p_attribute_03=>'P218_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617004825180372122)
,p_event_id=>wwv_flow_imp.id(2617003295536372122)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P218_FLAG'') == ''error'') {',
unistr('    alert(''\53CD\9988\5931\8D25\FF0C\8BF7\4E0E\7CFB\7EDF\7BA1\7406\5458\8054\7CFB'');'),
'    return false;',
'} else {',
unistr('    alert(''\60A8\7684\53CD\9988\5DF2\7ECF\6536\5230\FF0C\8BF7\8010\5FC3\7B49\5F85\FF01'')'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2617005316058372123)
,p_event_id=>wwv_flow_imp.id(2617003295536372122)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

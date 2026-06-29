prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>unistr('\767B\5F55\9875')
,p_alias=>'LOGIN'
,p_step_title=>unistr('\6587\4EF6\7BA1\7406\5E73\53F0 - \767B\5F55')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9760302505770877276)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://g.alicdn.com/dingding/dingtalk-jsapi/3.0.25/dingtalk.open.js',
'https://g.alicdn.com/dingding/h5-dingtalk-login/0.21.0/ddlogin.js',
'-- https://cdn.jsdelivr.net/npm/vconsole@latest/dist/vconsole.min.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// 2.0 \65E0\6CD5\81EA\52A8\514D\767B'),
'console.log(''env'', ''&APEX_ENV.'');',
'var parts = window.location.href.split("f?p");',
'var newUrl = encodeURIComponent(parts.shift() + ''f?p=&APP_ID.:1'')',
'var dingLoginUrl = ($v(''P9999_DING_LOGIN_URL'') || ''https://api.jasolar.com:26000/jingjie/open/oauth2/dingtalk'').replace(/\/$/, '''');',
'var redirectUrl = dingLoginUrl + ''?redirectUrl='' + newUrl;',
'',
'',
unistr('//\63D2\5165\4F7F\7528\4E8C\7EF4\7801\767B\5F55\5207\6362\6309\94AE'),
'',
'if ([''dev'', ''DEV'', ''test'', ''TEST''].includes($v(''P9999_APP_ENV''))) {',
'',
'    $(''.t-Login-header'').before(`<div class="switch-qrcode" style="position:absolute;right:0px;top:0">',
'        <svg width="52" height="52" xmlns:xlink="http://www.w3.org/1999/xlink" fill="#0434cc">',
'            <defs>',
'                <path id="id-3938311804-a" d="M0 0h48a4 4 0 0 1 4 4v48L0 0z"></path>',
'            </defs>',
'            <g fill="none" fill-rule="evenodd">',
'                <mask id="id-3938311804-b" fill="#fff">',
'                    <use xlink:href="#id-3938311804-a"></use>',
'                </mask>',
'                <use fill="#0434cc" xlink:href="#id-3938311804-a"></use>',
'                <image width="52" height="52" mask="url(#id-3938311804-b)"',
'                    xlink:href="data:image/png;base64,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">',
'                </image>',
'            </g>',
'        </svg>',
'    </div>`);',
'}',
'',
'',
'function getParameterValue(url, paramName) {',
'    var urlParams = new URLSearchParams(url);',
'    return urlParams.get(paramName);',
'}',
'',
'!function (window, document) {',
'    function preLoad(url) {',
'        let link = document.createElement(''link'');',
'        link.href = url;',
'        link.rel = ''preload'';',
'        link.as = "document";',
'        document.head.appendChild(link);',
'    }',
'',
'    function d(a) {',
'        preLoad(a.qrcodeUrl);',
'        let e, c = document.createElement("iframe"),',
'            d = a.qrcodeUrl;',
'        d += a.style ? "&style=" + a.style : ""',
'        d += a.href ? "&href=" + a.href : ""',
'        c.src = d',
'        c.id = "myIframe"',
'        c.frameBorder = "0"',
'        c.allowTransparency = "true"',
'        c.scrolling = "no"',
'        // c.width = "260px"',
'        // c.height = "290px"',
'        c.backgroundColor = "#F4F4F4"',
'        e = document.getElementById(a.id)',
'        e.innerHTML = " "',
'        e.appendChild(c)',
'    }',
'    window.DDLogin = d',
'}(window, document);',
'',
'var appid = $v(''P9999_DING_APP_ID'');',
unistr('// \626B\7801\540E\56DE\8C03\5730\5740'),
'var app_url = encodeURIComponent($v(''P9999_APEX_APP_URL'') + ''f?p=&APP_ID.:9999'');',
'console.log(app_url);',
'',
'var url = `https://oapi.dingtalk.com/connect/oauth2/sns_authorize?appid=${appid}&response_type=code&scope=snsapi_login&redirect_uri=${app_url}`',
'',
'',
'const loginHeader = ''https://login.dingtalk.com/login/qrcode.htm?goto=''',
'const loginBody = () => {',
'    return url',
'}',
'const qrcodeUrl = () => {',
'    return `${loginHeader}${(loginBody())}`',
'}',
'',
'class DingDingScan {',
'    getUrlParam(name, url) {',
unistr('        // \5982\679C\94FE\63A5\6CA1\6709\53C2\6570\FF0C\6216\8005\94FE\63A5\4E2D\4E0D\5B58\5728\6211\4EEC\8981\83B7\53D6\7684\53C2\6570\FF0C\76F4\63A5\8FD4\56DE\7A7A'),
'        if (url.indexOf(''?'') === -1 || url.indexOf(name + ''='') === -1) {',
'            return ''''',
'        }',
unistr('        // \83B7\53D6\94FE\63A5\4E2D\53C2\6570\90E8\5206'),
'        let queryString = url.substring(url.indexOf(''?'') + 1)',
'        if (queryString.indexOf(''#'') > -1) {',
'            queryString = queryString.substring(0, queryString.indexOf(''#''))',
'        }',
unistr('        // \5206\79BB\53C2\6570\5BF9 ?key=value&key2=value2'),
'        const parameters = queryString.split(''&'')',
'        let pos, paraName, paraValue',
'        for (let i = 0; i < parameters.length; i++) {',
unistr('            // \83B7\53D6\7B49\53F7\4F4D\7F6E'),
'            pos = parameters[i].indexOf(''='')',
'            if (pos === -1) {',
'                continue',
'            }',
unistr('            // \83B7\53D6name \548C value'),
'            paraName = parameters[i].substring(0, pos)',
'            paraValue = parameters[i].substring(pos + 1)',
unistr('            // \5982\679C\67E5\8BE2\7684name\7B49\4E8E\5F53\524Dname\FF0C\5C31\8FD4\56DE\5F53\524D\503C\FF0C\540C\65F6\FF0C\5C06\94FE\63A5\4E2D\7684+\53F7\8FD8\539F\6210\7A7A\683C'),
'            if (paraName === name) {',
'                return decodeURIComponent(paraValue.replace(''+'', '' ''))',
'            }',
'        }',
'        return ''''',
'    }',
'',
'    handleMessage(event) {',
'        const origin = event.origin',
'        if ([''https://login.dingtalk.com'', ''https://pre-login.dingtalk.com''].includes(origin)) {',
unistr('            // \5224\65AD\662F\5426\6765\81EAddLogin\626B\7801\4E8B\4EF6\3002'),
'            const loginTmpCode = event.data',
'            window.location.href =',
'                this.getUrlParam(''goto'', qrcodeUrl()) + ''&loginTmpCode='' + loginTmpCode',
'        }',
'    }',
'',
'    listenerMessage() {',
'        if (typeof window.addEventListener !== ''undefined'') {',
'            window.addEventListener(''message'', this.handleMessage.bind(this), false)',
'        } else if (typeof window.attachEvent !== ''undefined'') {',
'            window.attachEvent(''onmessage'', this.handleMessage.bind(this))',
'        }',
'    }',
'',
'    /**',
unistr('     * \5F00\59CB\6E32\67D3\9489\9489\4E8C\7EF4\7801'),
unistr('     * @param \5143\7D20id'),
'     */',
'    render(id) {',
'        window.DDLogin({',
'            id,',
'            qrcodeUrl: `${loginHeader}${encodeURIComponent(loginBody())}`,',
'            style: ''border:none;background-color:#F4F4F4;''',
'        })',
'        this.listenerMessage()',
'    }',
'}',
'',
unistr('/* \4EE5\4E0B\4E3A\5207\6362\4E8C\7EF4\7801\767B\5F55\6548\679C */'),
'const loginHeaderDiv = document.querySelector(''.t-Login-header'');',
'',
'function insertElementBelowHeading(elementToInsert, headingElement) {',
'    const parentElement = headingElement.parentElement;',
'    parentElement.insertBefore(elementToInsert, headingElement.nextSibling);',
'}',
'',
unistr('//\6784\5EFA\9489\9489\626B\7801\767B\5F55\51FD\6570'),
'window.dingDingScan = new DingDingScan()',
'',
unistr('//\521B\5EFA\4E8C\7EF4\7801div \5BB9\5668"self_defined_element"'),
'const selfDefinedElement = document.createElement(''div'');',
'selfDefinedElement.id = ''self_defined_element'';',
'selfDefinedElement.className = ''self-defined-classname'';',
'selfDefinedElement.style = ''position:relative;top:-20px;left:65px;width:300px;height:300px'';',
'',
'insertElementBelowHeading(selfDefinedElement, loginHeaderDiv.querySelector(''.t-Login-title''));',
'',
unistr('/*  1. \9009\62E9\4E00\FF1A\9ED8\8BA4\663E\793A\767B\5F55\9875'),
'',
'$(''#self_defined_element'').hide();',
'',
'$(''.switch-qrcode'').click(function () {',
'',
'    if ($(''#self_defined_element'').is('':visible'')) {',
'        $(''.t-Login-body, .t-Login-buttons, .t-Login-links, .t-Login-subRegions'').fadeIn();',
'        $(''#self_defined_element'').hide();',
'    } else {',
'',
'        $(''.t-Login-body, .t-Login-buttons, .t-Login-links, .t-Login-subRegions'').hide();',
'        $(''#self_defined_element'').fadeIn();',
'    }',
'});',
'*/',
'',
'',
'var login_method = `<div class="login_method" style="position: absolute;z-index: 99999;width: 81%;display: flex;justify-content: space-between;margin-top: 5px;">',
unistr('<p style="color:#999;line-height:24px; font-size:14px;font-weight:500;">\5176\4ED6\65B9\5F0F</p>'),
'<div>',
'<a class="js-ding-auth-link" href="${redirectUrl}">',
'  <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;"',
'     src="https://jingobj.jasolar.com:26000/tdd-public/public/ding-logo.png"',
'     alt=""',
'  />',
'</a>',
unistr('<!--\591A\79CD\767B\5F55\65B9\5F0F\5728\6B64\6DFB\52A0 \540C\4E0A\6837\5F0F\7684a\6807\7B7E\5373\53EF  -->'),
'</div>',
'</div>`;',
'',
'$(''#self_defined_element'').after(login_method);',
'$(''a.js-ding-auth-link'').attr(''href'', redirectUrl);',
'',
unistr('//  2. \9009\62E9\4E8C\FF1A\9ED8\8BA4\663E\793A\626B\63CF\4E8C\7EF4\7801\9875'),
'$(''.t-Login-body, .t-Login-buttons, .t-Login-links, .t-Login-subRegions'').hide();',
'',
unistr('/* \70B9\51FB\5207\6362\4E8C\7EF4\7801\767B\5F55\6548\679C */'),
'$(''.switch-qrcode'').click(function () {',
'    if ([''dev'', ''DEV'', ''test'', ''TEST''].includes($v(''P9999_APP_ENV''))) {',
'        if ($(''#self_defined_element'').is('':visible'')) {',
'            $(''.t-Login-body, .t-Login-buttons, .t-Login-links, .t-Login-subRegions'').fadeIn();',
'            $(''#self_defined_element'').hide();',
'            $(''.login_method'').hide();',
'        } else {',
'            $(''.t-Login-body, .t-Login-buttons, .t-Login-links, .t-Login-subRegions'').hide();',
'            $(''#self_defined_element'').fadeIn();',
'            $(''.login_method'').show();',
'        }',
'    } else {',
'        return;',
'    }',
'});',
'',
'',
'',
unistr('// \6E32\67D3\4E8C\7EF4\7801'),
'dingDingScan.render(''self_defined_element'');',
'',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \521D\59CB\5316vConsole\FF0C\5E76\542F\7528Console\548CNetwork\63D2\4EF6'),
'// var vConsole = new VConsole();'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.ui-dialog-titlebar-close{',
'    display: none;',
'}',
'',
'.t-Form-fieldContainer--floatingLabel{',
'    --ut-field-fl-label-line-height:0px !important;',
'}',
'',
'.aErrMsgTitle{',
'    display: none;',
'}',
'',
'.icon-info{',
'    display: none;',
'}',
'',
'.self-defined-classname {',
'         width: 300px;',
'         height: 312px;',
'}',
'',
'#myIframe{',
'            width:260px;',
'        height:290px;',
'        border-radius: 14px;',
'}',
'',
'.t-Login-container{',
'    background: url(#APP_FILES#ja_background.png) no-repeat center center fixed;',
'    background-size: cover;',
'}',
'',
'.hint{',
'    font-weight: bold;',
'    color: white;',
'}',
'',
'.loader {',
'  border: 16px solid #f3f3f3;',
'  border-radius: 50%;',
'  border-top: 16px solid #3498db;',
'  width: 100px;',
'  height: 100px;',
'  -webkit-animation: spin 2s linear infinite; /* Safari */',
'  animation: spin 2s linear infinite;',
'}',
'',
'/* Safari */',
'@-webkit-keyframes spin {',
'  0% { -webkit-transform: rotate(0deg); }',
'  100% { -webkit-transform: rotate(360deg); }',
'}',
'',
'@keyframes spin {',
'  0% { transform: rotate(0deg); }',
'  100% { transform: rotate(360deg); }',
'}',
'',
''))
,p_step_template=>wwv_flow_imp.id(9759991864744264213)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9760276594395264585)
,p_plug_name=>unistr('\6587\4EF6\7BA1\7406\5E73\53F0')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760080816980264249)
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9765087251541682732)
,p_plug_name=>unistr('\7B2C\4E09\65B9\767B\5F55')
,p_parent_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:100%; display: flex; justify-content: space-between;margin-top:10px;">',
unistr('<p style="color:#999;line-height:24px; font-size:14px;font-weight:500;">\5176\4ED6\65B9\5F0F</p>'),
'<div>',
'<a class="js-ding-auth-link" href="#">',
'  <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;"',
'     src="https://jingobj.jasolar.com:26000/tdd-public/public/ding-logo.png"',
'     alt=""',
'  />',
'</a>',
unistr('<!--\591A\79CD\767B\5F55\65B9\5F0F\5728\6B64\6DFB\52A0 \540C\4E0A\6837\5F0F\7684a\6807\7B7E\5373\53EF  -->'),
'</div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9760278311872264594)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_button_name=>'LOGIN'
,p_button_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(5232398805574061139)
,p_name=>'P9999_APP_ENV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271080327533952)
,p_name=>'P9999_DING_CORPID'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271109700533953)
,p_name=>'P9999_DING_APP_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271247120533954)
,p_name=>'P9999_APEX_APP_URL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271385264533955)
,p_name=>'P9999_CODE_LOGIN_URL'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271457466533956)
,p_name=>'P9999_AUTO_LOGIN_URL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(6519271910838533963)
,p_name=>'P9999_DING_LOGIN_URL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9760277125644264591)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_prompt=>unistr('\7528\6237\540D')
,p_placeholder=>unistr('\7528\6237\540D')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_field_template=>wwv_flow_imp.id(9760156350373264292)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9760277522000264592)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(9760156350373264292)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(9760277897973264593)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_prompt=>unistr('\8BB0\4F4F\7528\6237\540D')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(9760156350373264292)
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13066533652764577748)
,p_name=>'P9999_HANDOFF_USER'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13066533652764577749)
,p_name=>'P9999_HANDOFF_SYSTEM_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(9760276594395264585)
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271590727533957)
,p_computation_sequence=>10
,p_computation_item=>'P9999_APP_ENV'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select any_value(CODE_VALUE) from JA_SYSTEM_DICT where DICT_CODE=''APP_ENV'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(5232398960743061140)
,p_computation_sequence=>20
,p_computation_item=>'P9999_DING_CORPID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_CORPID_138'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271675405533958)
,p_computation_sequence=>30
,p_computation_item=>'P9999_DING_APP_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_APP_ID_138'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271732802533959)
,p_computation_sequence=>40
,p_computation_item=>'P9999_APEX_APP_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where  DICT_CODE=''APEX_APP_URL_138'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271861673533960)
,p_computation_sequence=>50
,p_computation_item=>'P9999_CODE_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''CODE_LOGIN_URL_138'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271910838533961)
,p_computation_sequence=>60
,p_computation_item=>'P9999_AUTO_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''AUTO_LOGIN_URL_138'';'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(6519271910838533964)
,p_computation_sequence=>70
,p_computation_item=>'P9999_DING_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select coalesce(',
'         max(case when dict_code = ''DING_LOGIN_URL_138'' then code_value end),',
'         max(case when dict_code = ''DING_LOGIN_URL'' then code_value end),',
'         rtrim(max(case when dict_code = ''BASIC_URL'' then code_value end), ''/'') || ''/jingjie/open/oauth2/dingtalk'',',
'         ''https://api.jasolar.com:26000/jingjie/open/oauth2/dingtalk''',
'       )',
'  from ja_system_dict',
' where dict_code in (''DING_LOGIN_URL_138'', ''DING_LOGIN_URL'', ''BASIC_URL'');'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6519272030731533962)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(6519272144410533963)
,p_event_id=>wwv_flow_imp.id(6519272030731533962)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'var url = window.location.href;',
unistr('var codes = '''';//\9489\9489\6388\6743\7801'),
'',
'codes = getParameterValue(url, ''code'');',
'var login_type;',
'let startTime = performance.now();',
'//  alert(dd.env.platform);',
unistr('// \5224\65AD\662F\5426\662F\9489\9489\73AF\5883'),
'if (dd.env.platform != ''notInDingTalk'') {    ',
unistr('    $(''#qrcode'').hide();//\5904\4E8E\9489\9489\73AF\5883\65F6\9690\85CF\4E8C\7EF4\7801'),
unistr('    // // \767B\5F55\52A8\753B'),
'    // var loaderDiv = document.createElement(''div'');',
'    // loaderDiv.className = ''loader'';',
'    // var containerBodyDiv = document.querySelector(''.t-Login-containerBody'');',
'    // containerBodyDiv.appendChild(loaderDiv);',
'    // var pTag = document.createElement(''p'');',
'    // pTag.className = ''hint'';',
unistr('    // pTag.textContent = ''\767B\5F55\4E2D, \8BF7\7A0D\5019...'';'),
'    // containerBodyDiv.insertBefore(pTag, loaderDiv);',
'    dd.ready(() => {',
'        dd.runtime.permission.requestAuthCode({',
'            corpId: $v(''P9999_DING_CORPID''),',
'            onSuccess: function (info) {',
'                codes = info.code',
'                login_type = ''auto_login''',
'                // $(''.t-Login-containerBody'').append(''<span>''+codes+''</span>'');',
'                dd_login()',
'            },',
'            onFail: function (err) {',
'                console.log(err)',
'                alert(JSON.stringify(err))',
'            }',
'        })',
'    })',
'} else {',
'    codes = getParameterValue(url, ''code'');',
unistr('    // \626B\7801\767B\5F55'),
'    if (codes) {',
'        login_type = ''code_login''',
'        dd_login()',
'    }',
'',
'}',
'',
'function showLoginError(message) {',
'    apex.message.clearErrors();',
'    apex.message.showErrors([',
'        {',
'            type: ''error'',',
'            location: ''page'',',
'            message: message,',
'            unsafe: false',
'        }',
'    ]);',
'}',
'',
'function dd_login() {',
'    // alert(codes);',
'    // return false;',
'    apex.server.process(''ding_login'',',
'        { x01: codes, x02: login_type, x03: $v(''P9999_AUTO_LOGIN_URL''), x04: $v(''P9999_CODE_LOGIN_URL'') },',
'        {',
'            dataType: ''json'',',
'            success: function (datas) {',
'                var data = datas && datas.resp ? datas.resp : {};',
'                var message = data.message || null;',
'                console.log(data);',
'                if (String(data.code) === ''200'' && data.user_name && data.password) {',
'                    $s(''P9999_USERNAME'', data.user_name);',
'                    $s(''P9999_PASSWORD'', data.password);',
'                    $(''#login'').click();',
'                    return;',
'                }',
'                if (!message) {',
unistr('                    message = ''\626B\7801\767B\5F55\5931\8D25\FF0C\8BF7\7A0D\540E\91CD\8BD5\6216\6539\7528\8D26\53F7\5BC6\7801\767B\5F55'';'),
'                }',
'                showLoginError(message);',
'            },',
'            error: function (jqXHR, textStatus, errorThrown) {',
'                console.log("Error\n" + textStatus + '':'' + errorThrown);',
unistr('                showLoginError(''\626B\7801\767B\5F55\5931\8D25\FF0C\5F53\524D\670D\52A1\6682\4E0D\53EF\7528\FF0C\8BF7\7A0D\540E\91CD\8BD5\6216\6539\7528\8D26\53F7\5BC6\7801\767B\5F55'');'),
'            }',
'',
'        }',
'    );',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9760280488590264602)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>unistr('\8BBE\7F6E\7528\6237\540D Cookie')
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>174704044399631111
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9760280962732264602)
,p_page_process_id=>wwv_flow_imp.id(9760280488590264602)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9760281508555264603)
,p_page_process_id=>wwv_flow_imp.id(9760280488590264602)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9760278617827264597)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>174702173636631106
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9760279057509264600)
,p_page_process_id=>wwv_flow_imp.id(9760278617827264597)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9760279548137264602)
,p_page_process_id=>wwv_flow_imp.id(9760278617827264597)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>':P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(9760280088913264602)
,p_page_process_id=>wwv_flow_imp.id(9760278617827264597)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9760282415250264603)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>unistr('\6E05\9664\9875\9AD8\901F\7F13\5B58')
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>174705971059631112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13066533652764577750)
,p_process_sequence=>1
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'P300_HANDOFF_LOGIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_job_number varchar2(100) := upper(:P9999_HANDOFF_USER);',
'    v_system_id  number;',
'    v_count      number;',
'    v_err_msg    varchar2(2000);',
'begin',
'    v_system_id := to_number(:P9999_HANDOFF_SYSTEM_ID);',
'',
'    select count(*)',
'      into v_count',
'      from sts_system',
'     where system_id = v_system_id',
'       and nvl(del_flag, 0) = 0',
'       and nvl(is_enable, 1) = 1;',
'',
'    if v_count = 0 then',
'        return;',
'    end if;',
'',
'    select count(*)',
'      into v_count',
'      from sts_user u',
'     where u.del_flag = 0',
'       and u.is_leave = 0',
'       and u.is_enable = 1',
'       and u.tenant_id = 3',
'       and u.job_number = v_job_number',
'       and exists (',
'             select 1',
'               from sts_user_role ur',
'              where ur.user_id = u.ext_user_id',
'                and ur.del_flag = 0',
'                and ur.is_enable = 1',
'                and ur.tenant_id = 3',
'           );',
'',
'    if v_count = 0 then',
'        return;',
'    end if;',
'',
'    apex_util.set_session_state(''P9999_USERNAME'', v_job_number);',
'    apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'',
'    apex_custom_auth.post_login(',
'        p_uname      => v_job_number,',
'        p_session_id => :APP_SESSION,',
'        p_app_page   => :APP_ID || '':133''',
'    );',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        ja_write_log(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', ''P300 handoff login failed: '' || v_err_msg, -1, -1);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>':REQUEST = ''P300_HANDOFF'' and :P9999_HANDOFF_USER is not null and :P9999_HANDOFF_SYSTEM_ID is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_internal_uid=>13099990000000000003
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3308315540116702044)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B\81F3201\9875')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'    V_JOB_NUMBER nvarchar2(100);',
'begin',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    select instr(v_url, ''jobNumber'') into v_count from dual;',
'',
'    if v_count = 0 then',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := STS_LOGIN_SUCCESS_201(v_url);',
'        -- APEX_UTIL.SET_SESSION_STATE(''P9999_USERNAME'', V_JOB_NUMBER);',
'        -- JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''info'',''V_JOB_NUMBER: ''||V_JOB_NUMBER ,-1, -1);',
'        if v_name != ''ERROR'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 201);',
'        ELSE',
'            :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'            :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'            ',
'        end if;',
'',
'    end if;',
'-- JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''info'',''P9999_USERNAME:'' || :P9999_USERNAME ||chr(13)||''V_JOB_NUMBER: ''||V_JOB_NUMBER ,-1, -1);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_url        nvarchar2(512);',
'    v_page_id    nvarchar2(100);',
'begin',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
unistr('    -- JA_WRITE_LOG(''\6D4B\8BD5100'', ''info'', v_url,3,1);'),
'    if v_page_id= 201 then',
'      return true;',
'    end if;',
'    return false;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>469166915476778019
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9760282011529264603)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\83B7\53D6\7528\6237\540D Cookie')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>174705567338631112
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(9763686813556606600)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6676\6377\514D\767B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg   nvarchar2(2000);',
'    v_user_name varchar2(32);',
'    v_url       nvarchar2(2000) := :FSP_AFTER_LOGIN_URL;',
'    v_flag      boolean;',
'',
'begin',
'',
'    if regexp_like(v_url, ''code'') or regexp_like(v_url, ''jjCode'')  then',
'    --if regexp_like(v_url, ''code'') then',
unistr('        WRITE_LOG(''\514D\767BURL'', ''debug'', ''v_url:'' || :FSP_AFTER_LOGIN_URL, -1, -1);'),
'        v_flag := STS_RESOLVE_URL_BASIC(v_url, v_user_name);',
'        if v_flag then',
unistr('            -- \6267\884C\767B\5F55'),
'            APEX_CUSTOM_AUTH.POST_LOGIN(',
'                    p_uname => v_user_name,',
'                    p_session_id => :APP_SESSION,',
unistr('                    -- \6307\5B9A\767B\5F55\6210\529F\540E\8DF3\8F6C\7684\9875'),
'                    p_app_page => :APP_ID || '':'' || 1);',
'        else',
unistr('            WRITE_LOG(''\514D\767BURL\5931\8D25'', ''debug'', ''v_flag:false'', -1, -1);'),
'            :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'            :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'        end if;',
'    else',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --ja_write_log(:app_page_alias || '':'' || :app_page_id || '':\5E94\7528-\529F\80FD\6A21\5757'', ''error'', v_err_msg, :user_id, :user_tenant,:app_name || '':'' || :app_id);'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>178110369365973109
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(6519272233307533964)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ding_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        varchar2(2000);',
'    v_message        varchar2(2000);',
'    v_user_name      varchar2(64);',
'    v_password       varchar2(64);',
'    v_result         boolean;',
unistr('    -- \9489\9489\626B\7801\767B\5F55\63A5\53E3'),
'    v_code_login_url varchar2(512) := apex_application.g_x04;',
unistr('    -- \9489\9489\73AF\5883\514D\767B\63A5\53E3'),
'    v_auto_login_url varchar2(512) := apex_application.g_x03;',
'    v_request_url    varchar2(512);',
'    v_url            varchar2(512) := apex_application.g_x05;',
'    v_tenant_id      number(10);',
'    V_TEMP           VARCHAR2(2000);',
'    V_page           VARCHAR2(100);',
'begin',
'    if apex_application.g_x02 = ''code_login'' then',
'        v_request_url := v_code_login_url;',
'    else',
'        v_request_url := v_auto_login_url;',
'    end if;',
'',
'    V_TEMP := SUBSTRING_INSTR2(v_url, '':::::'', 1, 2);',
'    V_page := SUBSTRING_INSTR2(V_TEMP, ''='', 1, 2);',
'   JA_WRITE_LOG(JA_UTILS_PKG.GET_FN_NAME(), ''debug'',''apex_application.g_x01: ''|| apex_application.g_x01 ||CHR(13)|| ''v_request_url: ''||NVL(v_request_url,1) ||CHR(13)||''v_url: ''||NVL(v_url,1) ||CHR(13)|| ''V_page: ''||V_page ||',
'   chr(13)|| ''g_x02: ''||NVL(apex_application.g_x02,1), -1, 1);',
'    apex_util.set_session_state(''PAGE'', NVL(V_page,1));',
'    v_result := ja_sts_apex_ding_login(v_request_url, apex_application.g_x01, apex_application.g_x02, v_user_name,',
'                                         v_password, v_tenant_id);',
'    JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''TEST2'',TO_CHAR(CASE WHEN v_result THEN 1 ELSE 0 END), -1, -1);',
'',
'    apex_json.open_object;',
'    apex_json.open_object(''resp'');',
'    if v_result and v_user_name is not null and v_password is not null then',
'        apex_json.write(''code'', ''200'');',
'        apex_json.write(''user_name'', v_user_name);',
'        apex_json.write(''password'', v_password);',
'        apex_json.write(''message'', '''');',
'    else',
'        v_message := case',
'            when apex_application.g_x02 = ''code_login'' then',
unistr('                ''\626B\7801\767B\5F55\5931\8D25\FF0C\9489\9489\670D\52A1\6682\4E0D\53EF\7528\6216\5F53\524D\8D26\53F7\672A\5F00\901A\8BBF\95EE\6743\9650\FF0C\8BF7\7A0D\540E\91CD\8BD5\6216\6539\7528\8D26\53F7\5BC6\7801\767B\5F55'''),
'            else',
unistr('                ''\81EA\52A8\767B\5F55\5931\8D25\FF0C\8BF7\6539\7528\8D26\53F7\5BC6\7801\767B\5F55'''),
'        end;',
'        apex_json.write(''code'', ''401'');',
'        apex_json.write(''user_name'', '''');',
'        apex_json.write(''password'', '''');',
'        apex_json.write(''message'', v_message);',
'    end if;',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.open_object(''resp'');',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''user_name'', '''');',
'        apex_json.write(''password'', '''');',
'        apex_json.write(''tenant_id'', '''');',
unistr('        apex_json.write(''message'', ''\7CFB\7EDF\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458\6216\6539\7528\8D26\53F7\5BC6\7801\767B\5F55'');'),
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, -1, -1);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>326826730214014837
);
wwv_flow_imp.component_end;
end;
/

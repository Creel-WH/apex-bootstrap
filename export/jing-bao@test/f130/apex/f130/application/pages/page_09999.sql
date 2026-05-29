prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF - Sign In')
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://g.alicdn.com/dingding/dingtalk-jsapi/3.0.25/dingtalk.open.js',
'https://g.alicdn.com/dingding/h5-dingtalk-login/0.21.0/ddlogin.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''env'', ''&APEX_ENV.'');',
'var parts = window.location.href.split("f?p");',
unistr('// \8BBE\7F6E\767B\5F55\540E\7684\4E3B\9875'),
'var newUrl = encodeURIComponent(parts.shift() + ''f?p=&APP_ID.:129'')',
'document.getElementById(''redirectLink'').href = `https://oapi.ywjasolar.com/jingjie/open/oauth2/dingtalk?redirectUrl=` + newUrl;',
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
'var login_method = `<div class="login_method" style="position: absolute;z-index: 99999;width: 81%;display: flex;justify-content: space-between;margin-top: 10px;">',
unistr('<p style="color:#999;line-height:24px; font-size:14px;font-weight:500;">\5176\4ED6\65B9\5F0F</p>'),
'<div>',
'<a id="redirectLink" href="${''https://oapi.ywjasolar.com/jingjie/open/oauth2/dingtalk?redirectUrl='' + newUrl}">',
'  <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;"',
'     src="https://jingobj.jasolar.com:26000/ywja-public-bucket/dingtalk/ding-logo.png"',
'     alt=""',
'  />',
'</a>',
unistr('<!--\591A\79CD\767B\5F55\65B9\5F0F\5728\6B64\6DFB\52A0 \540C\4E0A\6837\5F0F\7684a\6807\7B7E\5373\53EF  -->'),
'<!--',
'<a id="hand_login" href="f?p=&APP_ID.:99999:&APP_SESSION.:::::">',
'  <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;transform: rotate(95deg);background-color: #1c1c7e;"',
'     src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2025-01-09/1736394999911_iShot_2025-01-09_11.56.34.png"',
'     alt=""',
'  />',
'</a>',
'-->',
'</div>',
'</div>`;',
'',
'$(''#self_defined_element'').after(login_method);',
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
'dingDingScan.render(''self_defined_element'');'))
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
,p_step_template=>wwv_flow_imp.id(2286645079504554738)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2185638560040009932)
,p_plug_name=>unistr('\8BF7\9009\62E9\79DF\6237')
,p_region_name=>'tenant_region'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>3
,p_plug_display_column=>6
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2185639013558009936)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_parent_plug_id=>wwv_flow_imp.id(2185638560040009932)
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noBorder'
,p_plug_template=>wwv_flow_imp.id(2286666486182554749)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2286773744043554835)
,p_plug_name=>unistr('\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF')
,p_region_name=>'log_div'
,p_icon_css_classes=>'app-icon'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286683125468554755)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(215379432584199188)
,p_plug_name=>unistr('\7B2C\4E09\65B9\767B\5F55')
,p_parent_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_region_template_options=>'#DEFAULT#:margin-top-sm'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="width:100%; display: flex; justify-content: space-between;margin-top:10px;">',
unistr('    <p style="color:#999;line-height:24px; font-size:12px;font-weight:500;">\5176\4ED6\65B9\5F0F</p>'),
'    <div>',
'        <a id="redirectLink" href="#">',
'            <img class="image-button"',
'     style="width: 24px;height: 24px;border-radius:50%;"',
'     src="https://jingobj.jasolar.com:26000/ywja-public-bucket/dingtalk/ding-logo.png"',
'     alt=""',
'  />',
'        </a>',
'',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2286778476807554844)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286656027645554745)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2185639137670009937)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2185639013558009936)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2286776595256554842)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_button_name=>unistr('\767B\5F55')
,p_button_static_id=>'login'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\767B\5F55')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2153131169091325682)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_button_name=>unistr('\5FD8\8BB0\5BC6\7801')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5FD8\8BB0\5BC6\7801')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:186:&SESSION.::&DEBUG.:186:P186_MOBILE:&P9999_USERNAME.'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(1412008837437819039)
,p_branch_action=>'f?p=&APP_ID.:10009:&SESSION.::&DEBUG.:10009::'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'IS_CHANGE_PSWD'
,p_branch_condition_text=>'1'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(158989250449246702)
,p_name=>'P9999_APP_ENV'
,p_item_sequence=>90
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(850981942919834199)
,p_name=>'P9999_AUTO_LOGIN_URL'
,p_item_sequence=>80
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(850982043339834200)
,p_name=>'P9999_DING_CORPID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(850982056494834201)
,p_name=>'P9999_DING_APP_ID'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(850982146710834202)
,p_name=>'P9999_APEX_APP_URL'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(850982255166834203)
,p_name=>'P9999_CODE_LOGIN_URL'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2169976886747946105)
,p_name=>'P9999_USER_TENANT'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_placeholder=>unistr('\79DF\6237')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID',
'           -- from MPF_USER_DEPT_MAIN_ASSO_V v',
'    from APEX_TENANT_USERS v',
'             inner join MPF_USER_DEPT_MAIN_ASSO_V s on s.EXT_USER_ID = v.EXT_USER_ID and s.BASE_DEPT_ID = v.BASE_DEPT_ID',
'    WHERE v.IS_LEAVE = 0',
'      and v.DEL_FLAG = 0',
'      and v.TENANT_ID = 3',
'      and (v.MOBILE = :P9999_USERNAME',
'        or v.JOB_NUMBER = :P9999_USERNAME)',
');'))
,p_lov_cascade_parent_items=>'P9999_USERNAME'
,p_ajax_items_to_submit=>'P9999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-address-card-o'
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_imp.id(2185638505668009931)
,p_name=>'P9999_TENANT_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185638660713009933)
,p_name=>'P9999_TENANT_SELECT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2185638560040009932)
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID',
'           -- from MPF_USER_DEPT_MAIN_ASSO_V v',
'    from APEX_TENANT_USERS v',
'             inner join MPF_USER_DEPT_MAIN_ASSO_V s on s.EXT_USER_ID = v.EXT_USER_ID and s.BASE_DEPT_ID = v.BASE_DEPT_ID',
'    WHERE v.IS_LEAVE = 0',
'      and v.DEL_FLAG = 0',
'      and v.TENANT_ID = 3',
'      and (v.MOBILE = :P9999_USERNAME',
'        or v.JOB_NUMBER = :P9999_USERNAME)',
');'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P9999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2286745833006554781)
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
 p_id=>wwv_flow_imp.id(2286774178514554837)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_prompt=>unistr('\8D26\53F7')
,p_placeholder=>unistr('JA\5DE5\53F7')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'text_case', 'UPPER',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286774595728554838)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_prompt=>unistr('\5BC6\7801')
,p_placeholder=>unistr('\5BC6\7801')
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2286775620713554840)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2286773744043554835)
,p_prompt=>unistr('\8BB0\4F4F\8D26\53F7')
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_imp.id(2286774881882554838)||'.'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(2286745581627554781)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(850982399490834204)
,p_computation_sequence=>10
,p_computation_item=>'P9999_APP_ENV'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''APP_ENV'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(158989382644246703)
,p_computation_sequence=>20
,p_computation_item=>'P9999_AUTO_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''AUTO_LOGIN_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(850982495582834205)
,p_computation_sequence=>30
,p_computation_item=>'P9999_CODE_LOGIN_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''CODE_LOGIN_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(850982605352834206)
,p_computation_sequence=>40
,p_computation_item=>'P9999_APEX_APP_URL'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''APEX_APP_URL'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(850982724478834207)
,p_computation_sequence=>50
,p_computation_item=>'P9999_DING_APP_ID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_APP_ID'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_computation(
 p_id=>wwv_flow_imp.id(850982775028834208)
,p_computation_sequence=>60
,p_computation_item=>'P9999_DING_CORPID'
,p_computation_point=>'BEFORE_HEADER'
,p_computation_type=>'QUERY'
,p_computation=>'select CODE_VALUE from JA_SYSTEM_DICT where DICT_CODE=''DING_CORPID'' and APP_ID=:APP_ID;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2234475860359509593)
,p_name=>unistr('\9489\9489\767B\5165')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152484313044350103)
,p_event_id=>wwv_flow_imp.id(2234475860359509593)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9489\9489\767B\5F55')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var url = window.location.href;',
unistr('var codes = '''';//\9489\9489\6388\6743\7801'),
'',
'codes = getParameterValue(url, ''code'');',
'var login_type;',
'',
unistr('// \5224\65AD\662F\5426\662F\9489\9489\73AF\5883'),
'if (dd.env.platform != ''notInDingTalk'') {',
unistr('    // $(''#qrcode'').hide();//\5904\4E8E\9489\9489\73AF\5883\65F6\9690\85CF\4E8C\7EF4\7801'),
unistr('    // \767B\5F55\52A8\753B'),
'    var loaderDiv = document.createElement(''div'');',
'    loaderDiv.className = ''loader'';',
'    var containerBodyDiv = document.querySelector(''.t-Login-containerBody'');',
'    containerBodyDiv.appendChild(loaderDiv);',
'    var pTag = document.createElement(''p'');',
'    pTag.className = ''hint'';',
unistr('    pTag.textContent = ''\767B\5F55\4E2D, \8BF7\7A0D\5019...'';'),
'    containerBodyDiv.insertBefore(pTag, loaderDiv);',
'    dd.ready(() => {',
'        dd.runtime.permission.requestAuthCode({',
'            corpId: $v(''P9999_DING_CORPID''),',
'            onSuccess: function (info) {',
'                codes = info.code',
'                login_type = ''auto_login''',
'                // $(''#self_defined_element'').append(''<span>''+codes+''</span>'');',
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
'function dd_login() {',
'    // alert(codes)',
'    // return false;',
'    apex.server.process(''ding_login'',',
'        { x01: codes, x02: login_type, x03: $v(''P9999_AUTO_LOGIN_URL''), x04: $v(''P9999_CODE_LOGIN_URL'') },',
'        {',
'            dataType: ''json'',',
'            success: function (datas) {',
unistr('                // \767B\5F55'),
'                var data = JSON.parse(JSON.stringify(datas.resp));',
'                console.log(data);',
'                if (data.code == 200) {',
'                    $s(''P9999_TENANT_COUNT'', data.base_dept_id_count);',
'                    $s(''P9999_USERNAME'', data.user_name);',
unistr('                    // \767B\5F55\5C55\793A\65B9\5F0F'),
'                    if (data.base_dept_id_count == 1) {',
'                        $s(''P9999_PASSWORD'', data.password);',
'                        $s(''P9999_USER_TENANT'', data.base_dept_id);',
'                        $(''#login'').click();',
'                    } else if (data.base_dept_id_count > 1) {',
'                        $(''.hint'').hide();',
unistr('                        $(''div[aria-label="\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF"]'').hide();'),
'                        $(''#tenant_region'').show();',
'                    } else {',
'                        $(''.hint'').hide();',
'                        $(''#tenant_region'').hide();',
'                    }',
'                }',
'',
'            },',
'            error: function (jqXHR, textStatus, errorThrown) {',
'                apex.message.showErrors([',
'                    {',
'                        type: "error",',
'                        location: "page",',
unistr('                        message: ''\767B\5F55\5931\8D25'','),
'                        unsafe: false',
'                    }',
'                ]);',
'                console.log("Error\n" + textStatus + '':'' + errorThrown);',
'            }',
'',
'        }',
'    );',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185638812998009934)
,p_name=>unistr('\8BBE\7F6E\79DF\6237')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_TENANT_SELECT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185638856492009935)
,p_event_id=>wwv_flow_imp.id(2185638812998009934)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USER_TENANT'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>':P9999_TENANT_SELECT'
,p_attribute_07=>'P9999_TENANT_SELECT'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185639245280009938)
,p_name=>unistr('\767B\5F55\4FE1\606F\56DE\663E\8BBE\7F6E')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2185639137670009937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185639310657009939)
,p_event_id=>wwv_flow_imp.id(2185639245280009938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_password varchar2(64);',
'    v_err_msg  nvarchar2(2000);',
'begin',
'',
'    select MAX(UTILS_PKG.DECRYPT_DEC_AES256(PASSWORD))',
'    into v_password',
'    from APEX_TENANT_USERS',
'    where JOB_NUMBER = :P9999_USERNAME',
'      AND BASE_DEPT_ID = :P9999_TENANT_SELECT',
'      AND DEL_FLAG = 0;',
unistr('    -- \767B\5F55\6A21\5757\5DF2\7ED9\8FC7\9ED8\8BA4\5BC6\7801'),
unistr('    -- \6CE8\91CA\65F6\95F4\FF1A 20230914 11:31'),
'    if v_password is null then',
'        v_password := ''Aa123456'';',
'    end if;',
'    APEX_UTIL.SET_SESSION_STATE(''P9999_PASSWORD'', v_password);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('         --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P9999_USERNAME,P9999_TENANT_SELECT'
,p_attribute_03=>'P9999_PASSWORD'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185639446549009940)
,p_event_id=>wwv_flow_imp.id(2185639245280009938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#login'').click();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185639516793009941)
,p_name=>unistr('\9ED8\8BA4\9009\62E9\4E00\4E2A\79DF\6237')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_USERNAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185639567604009942)
,p_event_id=>wwv_flow_imp.id(2185639516793009941)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_USER_TENANT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORG_ID',
'    FROM (select ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID',
'    from MPF_USER_DEPT_MAIN_ASSO_V v',
'    WHERE v.TENANT_ID=3 and(MOBILE = :P9999_USERNAME',
'        or JOB_NUMBER = :P9999_USERNAME))',
'        order by ORG_ID',
')',
'    WHERE ROWNUM = 1;'))
,p_attribute_07=>'P9999_USERNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2185639743301009943)
,p_name=>unistr('\591A\79DF\6237')
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185639788976009944)
,p_event_id=>wwv_flow_imp.id(2185639743301009943)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P9999_TENANT_COUNT'') < 1 || $v(''P9999_TENANT_COUNT'') == "") {',
'    $(''#tenant_region'').hide();',
'}',
'else if ($v(''P9999_TENANT_COUNT'') > 1) {',
unistr('    $(''div[aria-label="\6676\8C79\540E\53F0\7BA1\7406\7CFB\7EDF"]'').hide();'),
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2185639949641009945)
,p_event_id=>wwv_flow_imp.id(2185639743301009943)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P9999_TENANT_SELECT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ORG_ID',
'    FROM (select ORG_NAME, ORG_ID',
'from mpf.ops_org',
'where TENANT_ID = 3',
'  and DEL_FLAG = 0',
'  and ORG_ID in (',
'    select v.BASE_DEPT_ID',
'    from MPF_USER_DEPT_MAIN_ASSO_V v',
'    WHERE v.TENANT_ID=3 and (MOBILE = :P9999_USERNAME',
'        or JOB_NUMBER = :P9999_USERNAME))',
'        order by ORG_ID',
')',
'    WHERE ROWNUM = 1;'))
,p_attribute_07=>'P9999_USERNAME'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2286777351422554843)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>176575297145051432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2286776916547554842)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>176574862270051431
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2286778134153554843)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>176576079876051432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2286777702034554843)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_required_patch=>-wwv_flow_imp.id(2130883247292644920)
,p_internal_uid=>176575647757051432
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2178309811319399753)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B235')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    ',
'',
'    select instr(v_url, ''EVENT_ID'') into v_count from dual;',
'',
unistr('    -- --\8BB0\5F55\65E5\5FD7'),
'    -- WRITE_LOG(GET_FN_NAME(), ''debug'',',
'    --           ''url: '' || v_url || chr(13) ||''count:''||v_count|| chr(13) || ''date: '' || sysdate,  :USER_ID, :USERTENANT,',
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
unistr('    --\89E3\6790URL\FF0C\6267\884C\767B\5F55\9A8C\8BC1'),
'',
'    if v_count = 0 then',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := check_parse_url_login(v_url);',
'        ',
'        if v_name != ''error'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 235);',
'        end if;',
'',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'    if v_page_id= 235 then',
'      return true;',
'    end if;',
'    return false;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>68107757041896342
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2247114084214442554)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\514D\767B207')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_session_id := SUBSTRING_INSTR2(v_url, '':'', 2, 3);',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'',
'    ',
'',
'    select instr(v_url, ''EVENT_ID'') into v_count from dual;',
'',
unistr('    -- --\8BB0\5F55\65E5\5FD7'),
'    -- WRITE_LOG(GET_FN_NAME(), ''debug'',',
'    --           ''url: '' || v_url || chr(13) ||''count:''||v_count|| chr(13) || ''date: '' || sysdate,  :USER_ID, :USERTENANT,',
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
unistr('    --\89E3\6790URL\FF0C\6267\884C\767B\5F55\9A8C\8BC1'),
'',
'    if v_count = 0 then',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    else',
'',
'        v_name := check_parse_url_login_207(v_url);',
'        ',
'        if v_name != ''error'' then',
'            Apex_Custom_Auth.Post_Login(p_Uname => v_name',
'                , p_Session_Id => v_session_id',
'                , p_App_Page => :APP_ID || '':'' || 207);',
'        end if;',
'',
'    end if;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', ''url: '' || v_url || chr(13) || ''date: '' || sysdate || chr(13) || v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end ;'))
,p_process_clob_language=>'PLSQL'
,p_process_when=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name       nvarchar2(100);',
'    v_url        nvarchar2(512);',
'    v_session_id nvarchar2(100);',
'    v_page_id    nvarchar2(100);',
'    v_err_msg    nvarchar2(2000);',
'    v_flag       nvarchar2(100);',
'    v_count      number(10) := 0;',
'',
'begin',
'',
'',
'',
'    v_url := :FSP_AFTER_LOGIN_URL;',
'    v_page_id := SUBSTRING_INSTR2(v_url, '':'', 1, 2);',
'    if v_page_id= 207 then',
'      return true;',
'    end if;',
'    return false;',
'',
'end;'))
,p_process_when_type=>'FUNCTION_BODY'
,p_process_when2=>'PLSQL'
,p_internal_uid=>136912029936939143
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2304547084875778623)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6676\6377\514D\767B')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg      nvarchar2(2000);',
'    v_user_name    varchar2(32);',
'    v_tenant_count number;',
'    v_url          nvarchar2(2000) := :FSP_AFTER_LOGIN_URL;',
'    v_flag         boolean;',
'',
'begin',
unistr('    -- WRITE_LOG(:APP_NAME || '':'' || :APP_ID||''\514D\767BURL'', ''debug'', ''v_url:'' || :FSP_AFTER_LOGIN_URL ,  :USER_ID, :USERTENANT,'),
'    --                 :APP_NAME ,:APP_ID ,:APP_CODE);',
'    if regexp_like(v_url, ''code'') or regexp_like(v_url, ''jjCode'') then',
'        v_flag := resolve_url_jingbao_basic(v_url, v_user_name, v_tenant_count);',
'        -- v_tenant_count :=2;',
'        APEX_UTIL.SET_SESSION_STATE(''P9999_TENANT_COUNT'', v_tenant_count);',
unistr('        -- \5355\79DF\6237\5219\76F4\63A5\767B\5F55'),
'        if v_tenant_count = 1 then',
'            APEX_CUSTOM_AUTH.POST_LOGIN(',
'                    p_uname => v_user_name,',
'                    p_session_id => :APP_SESSION,',
'                    p_app_page => :APP_ID || '':'' || 129);',
'',
'        end if;',
'    else',
'        APEX_UTIL.SET_SESSION_STATE(''P9999_TENANT_COUNT'', -1);',
'        :P9999_USERNAME := apex_authentication.get_login_username_cookie;',
'        :P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;',
'    end if;',
'',
'',
'exception',
'    when others then',
'        APEX_UTIL.SET_SESSION_STATE(''P9999_TENANT_COUNT'', -1);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(GET_FN_NAME(), ''error'', ''v_url:'' || v_url || chr(13) || v_err_msg,  :USER_ID, :USERTENANT,',
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>194345030598275212
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(850983037408834210)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'ding_login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg            varchar2(2000);',
'    v_user_name          varchar2(64);',
'    v_password           varchar2(64);',
'    v_base_dept_id_count number(20);',
'    v_base_dept_id       nvarchar2(64);',
'    v_result             boolean;',
unistr('    -- \9489\9489\626B\7801\767B\5F55\63A5\53E3'),
'    v_code_login_url     varchar2(512) := apex_application.g_x04;',
unistr('    -- \9489\9489\73AF\5883\514D\767B\63A5\53E3'),
'    v_auto_login_url     varchar2(512) := apex_application.g_x03;',
'    v_request_url        varchar2(512);',
'',
'begin',
'',
'    if apex_application.g_x02 = ''code_login'' then',
'        v_request_url := v_code_login_url || apex_application.g_x01;',
'    else',
'        v_request_url := v_auto_login_url || ''?code='' || apex_application.g_x01;',
'    end if;',
'',
'    v_result := ding_login_jing_bao(v_request_url, v_user_name, v_base_dept_id_count, v_base_dept_id);',
'',
'    APEX_UTIL.SET_SESSION_STATE(''P9999_TENANT_COUNT'', v_base_dept_id_count);',
'',
'    if v_base_dept_id_count = 1 then',
'',
'        select JA_UTILS_PKG.DECRYPT_DEC_AES256(PASSWORD)',
'        into v_password',
'        from APEX_TENANT_USERS',
'        where JOB_NUMBER = v_user_name',
'          and base_dept_id = v_base_dept_id',
'          and DEL_FLAG = 0;',
'',
'    end if;',
'',
'    apex_json.open_object;',
'    apex_json.open_object(''resp'');',
'    apex_json.write(''code'', ''200'');',
'    apex_json.write(''user_name'', nvl(v_user_name, ''''));',
'    apex_json.write(''password'', nvl(v_password, ''''));',
'    apex_json.write(''base_dept_id'', v_base_dept_id);',
'    apex_json.write(''base_dept_id_count'', v_base_dept_id_count);',
'    apex_json.close_all;',
'',
'exception',
'    when others then',
'        APEX_UTIL.SET_SESSION_STATE(''P9999_TENANT_COUNT'', -1);',
'        apex_json.open_object;',
'        apex_json.open_object(''resp'');',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''user_name'', '''');',
'        apex_json.write(''base_dept_id_count'', -1);',
'        apex_json.close_all;',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>58227293484498629
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00244
begin
--   Manifest
--     PAGE: 00244
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
 p_id=>244
,p_name=>unistr('\6253\5370\8BBE\7F6E')
,p_alias=>unistr('\6253\5370\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6253\5370\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- #APP_FILES#jquery.qrcode.min.js',
'#APP_FILES#qrcode.js',
'#APP_FILES#jszip.min.js',
'#APP_FILES#html2canvas.min.js',
'#APP_FILES#bootstrap.bundle.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (!$(''.ui-button-icon.ui-icon.ui-icon-closethick'', window.parent.document).length) {',
'  $(''.ui-dialog-titlebar-close'', window.parent.document).append(''<span class="ui-button-icon ui-icon ui-icon-closethick"></span>'');',
'}',
'//   window.onload = function() {',
'//     var textItem = document.getElementsByClassName("device_name");',
'',
'//     var actualHeight = textItem.Height;',
'',
'//     if (actualHeight > 2 * parseFloat(getComputedStyle(textItem).lineHeight)) {',
unistr('//       // \5982\679C\6587\672C\9AD8\5EA6\5927\4E8E\4E8C\884C\7684\9AD8\5EA6\FF0C\51CF\5C0F\5B57\4F53\5927\5C0F'),
unistr('//       textItem.style.fontSize = "14px"; /* \8BBE\7F6E\7F29\5C0F\540E\7684\5B57\4F53\5927\5C0F */'),
'//     }',
'//   }',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const dataContainers = document.querySelectorAll(".data-container");',
'const prevButton = document.getElementById("prev-button");',
'const nextButton = document.getElementById("next-button");',
'const downloadButton = document.getElementById("download-button");',
'let currentIndex = 0;',
'let data = [];',
'',
'var deviceIds = apex.item(''P244_DEVICE_IDS'').getValue();',
'',
unistr('// \6784\5EFAAPI URL'),
'var url = $v(''P244_API_URL'') + ''/jing_bao/jing_bao/jingma/device?tenant_id='' + ''&USERTENANT.'' + ''&decive_ids='' + deviceIds + ''&base_dept_id='' +  ''&BASE_DEPT_ID.'' ;',
'console.log(url)',
unistr('// AJAX\8BF7\6C42\83B7\53D6\6570\636E'),
'fetch(url)',
'    .then(response => response.json())',
'    .then(responseData => {',
'        const parsedData = JSON.parse(responseData.resp.data);',
'        console.log(1, parsedData);',
'        data = parsedData;',
'',
unistr('        // \66F4\65B0\9875\9762\6570\663E\793A'),
'        function updatePageNumber() {',
'            const pageNumberElement = document.getElementById("device_page");',
'            const totalItems = data.length;',
'            const currentPage = currentIndex + 1;',
'            pageNumberElement.innerHTML = `<b>${currentPage}/${totalItems}</b>`;',
'        }',
'',
unistr('        // \6839\636EcurrentIndex\66F4\65B0\9875\6570\548C\8BBE\5907\540D\79F0'),
'        function updateContent() {',
'            const containers = document.querySelectorAll(".data-container");',
'            for (let i = 0; i < containers.length; i++) {',
'                if (i === currentIndex) {',
'                    containers[i].style.display = "block";',
'                    updateDeviceBottom(i);',
'                    createQRCode(i);',
'                } else {',
'                    containers[i].style.display = "none";',
'                }',
'            }',
'            updatePageNumber();',
'        }',
'',
'        updateContent();',
'',
'        // updateDeviceBottom(currentIndex);',
unistr('        // \66F4\65B0\8BBE\5907\540D\79F0'),
'        function updateDeviceBottom(index) {',
'            const deviceBottom = document.querySelector("#device_bottom");',
'            deviceBottom.innerHTML = `',
'        <b>${data[index].device_code}</b>',
'        <b>${data[index].device_name}</b>',
'    `;',
'        }',
'',
'        function createQRCode(index) {',
'            // const qr_content = `&APP_URL.f?p=277:33:&device_ids=${data[index].device_code}`;',
'            const qr_content = $v(''P244_JING_MA_URL'') + `${window.encodeURIComponent(data[index].device_code)}`+''&baseDeptId=''+''&BASE_DEPT_ID.'';',
'            const qrcodeElem = document.querySelector(`#qrcode-${index}`);',
'            qrcodeElem.innerHTML = `<img src="#APP_FILES#qrcode_logo.png" class="qr_logo">`;',
'            makeqrcode(qr_content, qrcodeElem);',
'        }',
'',
unistr('        // \4E0A\4E00\9875\6309\94AE\70B9\51FB\4E8B\4EF6'),
'        prevButton.addEventListener("click", () => {',
'            if (currentIndex > 0) {',
'                container.children[currentIndex].style.display = "none";',
'                currentIndex--;',
'                updateContent();',
'            }',
'        });',
'',
unistr('        // \4E0B\4E00\9875\6309\94AE\70B9\51FB\4E8B\4EF6'),
'        nextButton.addEventListener("click", () => {',
'            if (currentIndex < data.length - 1) {',
'                container.children[currentIndex].style.display = "none";',
'                currentIndex++;',
'                updateContent();',
'            }',
'        });',
'',
unistr('        // \521D\59CB\5316\663E\793A'),
'        updatePageNumber();',
'        updateDeviceBottom(currentIndex);',
'',
unistr('        // \52A8\6001\521B\5EFA\6570\636E\5BB9\5668'),
'        const container = document.getElementById("container");',
'',
'        data.forEach((item, index) => {',
'            const dataContainer = document.createElement("div");',
'            dataContainer.classList.add("data-container", "blue-box", "w3-content", "w3-margin-top");',
'            dataContainer.id = `data-container_${index}`;',
'',
unistr('            // \751F\6210\6570\636E\5185\5BB9\FF0C\53EF\4EE5\6839\636Eitem\7684\503C\8FDB\884C\586B\5145'),
'            dataContainer.innerHTML = `',
'                <div class="white-box">',
'                    <h1 class="device_name">${item.device_name}</h1>',
unistr('                    <h4 class="device_code">\8BBE\5907\7F16\7801: ${item.device_code}</h4>'),
'                </div>',
'                <table class="data-list">',
unistr('                <tr class="device_ip"><td class="title">\8BBE\5907IP:</td><td width="260">${item.ip}</td></tr>'),
unistr('                <tr class="position"><td class="title">\6240\5728\4F4D\7F6E: </td><td width="260">${item.address}</td></tr>'),
unistr('                <tr class="dept"><td class="title">\8D23\4EFB\90E8\95E8:</td><td width="260">${item.ext_org_name}</td></tr>'),
unistr('                <tr class="first_name"><td class="title">\5927\7C7B\540D\79F0:</td><td width="260">${item.category_first_name}</td></tr>'),
unistr('                <tr class="last_name"><td class="title">\5C0F\7C7B\540D\79F0:</td><td width="260">${item.category_second_name}</td></tr>'),
'                </table>',
'            `;',
'',
unistr('            // \9690\85CF\9664\7B2C\4E00\4E2A\6570\636E\5BB9\5668\5916\7684\5176\4ED6\5BB9\5668'),
'            if (index > 0) {',
'                dataContainer.style.display = "none";',
'            }',
'',
'            container.appendChild(dataContainer);',
'',
unistr('            // \7FFB\9875\65F6\66F4\65B0\6570\636E'),
'            dataContainer.addEventListener(''click'', () => {',
'                currentIndex = index;',
'                updateContent();',
'            });',
'',
'            const qrCodeContainer = document.createElement("div");',
'            qrCodeContainer.id = `qrcode-${index}`;',
'            dataContainer.appendChild(qrCodeContainer);',
'',
'            createQRCode(index);',
'',
'        })',
'',
'    }).catch(error => {',
'        console.error("Error fetching data:", error);',
'    });',
'',
'function makeqrcode(qr_content, qrcodeElem) {',
'    const qr = new QRCode(qrcodeElem, {',
'        text: qr_content,',
'        width: 180,',
'        height: 180',
'    });',
'    return qr;',
'}',
'',
'downloadButton.addEventListener("click", () => {',
'',
'    const zip = new JSZip();',
'    const dataContainers = document.querySelectorAll(".data-container");',
'    // const dataContainers = document.querySelectorAll([id^="data-container_"]);',
'',
'    // console.log(''length:''+$($(dataContainers)[0]).html());',
'',
'    setTimeout(function () {',
'',
unistr('        // \5BFC\51FA\56FE\50CF\524D\8BBE\7F6E\5168\90E8\5143\7D20\53EF\89C1'),
'        dataContainers.forEach(container => {',
'            container.style.display = "block";',
'        });',
'',
'        const imagePromises = Array.from(dataContainers).map((container, index) => {',
'            const deviceData = data[index];',
'            const fileName = `${deviceData.device_code}.png`;',
'            console.log(container)',
'            return html2canvas(container, {',
'                useCORS: true,',
'                scale: 5,',
'            }).then((canvas) => {',
'                const imgDataUrl = canvas.toDataURL("image/png");',
'                console.log(imgDataUrl)',
'                zip.file(fileName, imgDataUrl.split("base64,")[1], { base64: true });',
'            });',
'        });',
'',
'        Promise.all(imagePromises).then(() => {',
'            $("#spinner").css("display", "none");',
'            $(".offcanvas-backdrop").css("display", "none");',
unistr('            // \9664\5F53\524D\9875\5143\7D20\5916\FF0C\9690\85CF\6240\6709\5176\4ED6\5143\7D20'),
'            dataContainers.forEach((container, index) => {',
'                if (container.style.display === "block" && index !== currentIndex) {',
'                    container.style.display = "none";',
'                }',
'            });',
'',
'            zip.generateAsync({ type: "blob" }).then(function (content) {',
'                const zipUrl = URL.createObjectURL(content);',
'                const downloadBtn = document.createElement("a");',
'                downloadBtn.href = zipUrl;',
'                downloadBtn.download = "data_images.zip";',
'                downloadBtn.style.display = "none";',
'                document.body.appendChild(downloadBtn);',
'                downloadBtn.click();',
'                document.body.removeChild(downloadBtn);',
'            });',
'        });',
'    }, 200);',
'',
'});',
'',
unistr('//\5907\4EFD'),
'                    // <ul class="data-list">',
unistr('                    //     <li class="device_ip">\8BBE\5907IP: ${item.ip}</li>'),
unistr('                    //     <li class="position">\6240\5728\4F4D\7F6E: ${item.address}</li>'),
unistr('                    //     <li class="dept">\8D23\4EFB\90E8\95E8: ${item.ext_org_name}</li>'),
unistr('                    //     <li class="first_name">\5927\7C7B\540D\79F0: ${item.category_first_name}</li>'),
unistr('                    //     <li class="last_name">\5C0F\7C7B\540D\79F0: ${item.category_second_name}</li>'),
'                    // </ul>'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#w3.css',
'#APP_FILES#bootstrap.min.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#qrcode_overview{',
'    background-color:#ebedf3;',
'}',
'',
'.data-container{',
'    position: relative;',
'}',
'',
'.qr_logo{',
'    width: 70px;',
'    height: 70px;',
'    top: 99px;',
'    left:  100px;',
'    transform: translate(-50%, -50%);',
'    position: absolute;',
'    border: 2.25px solid white; ',
'    border-radius: 10px;  ',
'        z-index: 999;',
'}',
'',
'/* #qrcode{',
'    position: absolute;',
'    top:150px;',
'    right: 50px;',
'} */',
'',
'  [id^="qrcode-"] {',
'    position: absolute;',
'    top:156px;',
'    right: 20px;',
'    background-color: white;',
'    width: 200px;',
'    height: 200px;',
'    border-radius: 6px;',
'    display: flex;',
'    padding: 10px;',
'  }',
'',
'/* img{ */',
'    /* position: absolute; */',
'        /* top: 50%; */',
'    /* left: 50%; */',
'    /* transform: translate(-50%, -50%); */',
'/* } */',
'',
' .device_name{',
'     /* flex:1;  */',
'    font-size: 28px;',
'    font-weight: 600;',
'    line-height: 1;  ',
'    max-height: 2em; ',
'    margin-bottom: 16px;',
'    /* flex-direction: column; */',
'}',
'',
'',
'.device_code{',
'    font-size: 20px;',
'    font-weight: 600;',
'    /* line-height: 1;  */',
'    max-height: 2em; ',
'    /* flex-direction: column; */',
'}',
'',
'        .blue-box {',
'            width: 600px;',
'            height: 400px;',
'            /* background-color: #050052; */',
'            background-color: #0B3CA1;',
'        }',
'        .white-box {',
'            /* display: flex;',
'            justify-content: space-between;',
'            align-items:center; */',
'            height: 112px;',
'            background-color: white;',
'            padding: 20px;',
'        }',
'        /* .data-list {',
'            list-style: none;',
'            padding: 20px;',
'            margin: 0;',
'            color:white;',
'            margin-top: 10px;',
'            width: 350px;',
'        }',
'        .data-list li {',
'            margin-bottom: 25px;',
'            font-size: 20px;',
'        } */',
'',
'         .data-list {',
'     position: absolute;',
'    top:156px;',
'    left: 20px;',
'    color: white;',
'    height: 200px;',
'    font-weight: 600;',
'    font-size: 16px;',
'        }',
'',
'        .title{',
'            width: 80px;',
'        }',
'',
'',
'tr{',
'    margin-top: 16px;',
'}',
'',
'        td {',
'vertical-align: top;',
'}',
'        '))
,p_page_template_options=>'#DEFAULT#:ui-dialog--stretch'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2414139923132441612)
,p_plug_name=>unistr('\6807\9898\680F')
,p_region_template_options=>'#DEFAULT#:margin-left-md'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>2
,p_plug_display_column=>1
,p_plug_source=>unistr('<h4><b>\8BBE\5907\7801\5185\5BB9</b></h4>')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2671349741635813351)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2330908303567485743)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2671350761939813361)
,p_plug_name=>unistr('\9884\89C8\4E8C\7EF4\7801')
,p_region_name=>'qrcode_overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2330926299816485749)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script',
'    src="https://jingobj.jasolar.com:26000/tdd-public/public/1679986842038.qrcode.min.js">',
'</script>',
'',
'<!-- <div id="data-container" class="data-container blue-box w3-content w3-margin-top">',
'    <div class="white-box">',
'    </div>',
'    <div id="qrcode"></div>',
'</div> -->',
'',
'<div id="container" class="w3-content w3-margin-top" style="position:relative">',
'</div>',
'',
'<!-- <div class="text-center">',
'<div id="spinner" class="spinner-grow mb-3" style="width: 3rem; height: 3rem; display:none;" role="status">',
unistr('    <p class="mb-3">\4E0B\8F7D\4E2D,\8BF7\7A0D\540E...</p>'),
'</div>',
'</div> -->',
'',
'<div class="w3-center">',
'    <div class="w3-section">',
unistr('        <button id="prev-button" class="w3-button w3-white w3-border w3-border-black w3-round-large" onclick="event.preventDefault();">\4E0A\4E00\5F20</button>'),
'        <span id="device_bottom" class="w3-margin-right w3-margin-left"></span>',
unistr('        <button id="next-button" class="w3-button w3-white w3-border w3-border-black w3-round-large" onclick="event.preventDefault();">\4E0B\4E00\5F20</button>'),
'    </div>',
'    <span id="device_page" class="w3-margin-right w3-margin-left"></span>',
'</div>'))
,p_plug_customized=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2671351463112813368)
,p_plug_name=>unistr('\4FA7\8FB9\680F')
,p_region_template_options=>'#DEFAULT#:margin-left-md'
,p_plug_template=>wwv_flow_imp.id(2330897845030485739)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2414414549734822723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2671349741635813351)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2414414926446822722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2671349741635813351)
,p_button_name=>unistr('\4E0B\8F7D\56FE\7247')
,p_button_static_id=>'download-button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2330988765910485777)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D\56FE\7247')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2414428288373822703)
,p_branch_name=>unistr('\8F6C\5230\9875 1')
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2229882266032940944)
,p_name=>'P244_JING_MA_URL'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE  from DICTIONARY_MAP where TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID and KEY=''JING_MA_LOGIN_URL'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2411531759526176632)
,p_name=>'P244_API_URL'
,p_item_sequence=>70
,p_item_default=>'select VALUE  from DICTIONARY_MAP where  KEY=''ODRS_YWJA_API'' and BASE_DEPT_ID=:BASE_DEPT_ID;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414416181319822721)
,p_name=>'P244_DEVICE_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\8BBE\5907\7F16\7801')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414416649401822719)
,p_name=>'P244_DEVICE_IP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\8BBE\5907IP')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414417026798822719)
,p_name=>'P244_POSITION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\6240\5728\4F4D\7F6E')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414417407345822719)
,p_name=>'P244_DEPT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\8D23\4EFB\90E8\95E8')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414417793487822719)
,p_name=>'P244_FIRST_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\5927\7C7B\540D\79F0')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414418240890822718)
,p_name=>'P244_SECOND_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2671351463112813368)
,p_item_default=>'1'
,p_prompt=>unistr('\5C0F\7C7B\540D\79F0')
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_field_template=>wwv_flow_imp.id(2330987650391485775)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '1',
  'unchecked_value', '0',
  'use_defaults', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414418935896822710)
,p_name=>'P244_DEVICE_IDS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2414419365611822710)
,p_name=>'P244_RESP_DATA'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414421513712822707)
,p_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2414414549734822723)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414421983912822706)
,p_event_id=>wwv_flow_imp.id(2414421513712822707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414422391000822706)
,p_name=>'spinner'
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2414414926446822722)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2426600654162162012)
,p_event_id=>wwv_flow_imp.id(2414422391000822706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var newContent = `',
'  <div id="spinner" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index:9999;text-align: center;">',
'    <div style="text-align: center;">',
'      <div class="spinner-border text-primary" style="width: 4rem; height: 4rem;" role="status">',
'      </div> ',
unistr('      <p style="margin-top: 10px; color:white; font-size:18px;font-weight:600;">\4E0B\8F7D\4E2D,\8BF7\7A0D\5019...</p>'),
'    </div>',
'    </div>',
'        <div class="offcanvas-backdrop fade show"></div>',
'  `;',
'',
unistr('  // \4F7F\7528jQuery\9009\62E9\5668\9009\4E2D\6240\6709class\4E3A"t-Dialog"\7684div\5143\7D20'),
'  $(".t-Dialog").append(newContent);'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414419722401822709)
,p_name=>unistr('\7F16\7801\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_DEVICE_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414420247301822707)
,p_event_id=>wwv_flow_imp.id(2414419722401822709)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "device_code" \7C7B\7684\5143\7D20'),
'  const codeCheckedCheckbox = document.getElementById(''P244_DEVICE_CODE'');',
'  const deviceCodeElements = document.querySelectorAll(''.device_code'');',
'',
'    if (codeCheckedCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "device_code" \5143\7D20'),
'      deviceCodeElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "device_code" \5143\7D20'),
'      deviceCodeElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414423712905822706)
,p_name=>unistr('IP\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_DEVICE_IP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414424184872822705)
,p_event_id=>wwv_flow_imp.id(2414423712905822706)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkbox = document.getElementById("P244_DEVICE_IP");',
'var deviceIpRows = document.querySelectorAll(".device_ip");',
'',
'if (checkbox.checked) {',
'    deviceIpRows.forEach(function(deviceIpRow) {',
'        deviceIpRow.style.display = "table-row";',
'    });',
'} else {',
'    deviceIpRows.forEach(function(deviceIpRow) {',
'        deviceIpRow.style.display = "none";',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414424633851822705)
,p_name=>unistr('\4F4D\7F6E\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_POSITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414425102510822705)
,p_event_id=>wwv_flow_imp.id(2414424633851822705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkbox = document.getElementById("P244_POSITION");',
'var positionRow = document.querySelectorAll(".position");',
'',
'    if (checkbox.checked) {',
'            positionRow.forEach(function(positionRow) {',
'        positionRow.style.display = "table-row";',
'            });',
'    } else {',
'            positionRow.forEach(function(positionRow) {',
'        positionRow.style.display = "none";',
'    });',
'    }',
'',
'    ',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414425570078822705)
,p_name=>unistr('\8D23\4EFB\90E8\95E8\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_DEPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414426000392822704)
,p_event_id=>wwv_flow_imp.id(2414425570078822705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "dept" \7C7B\7684\5143\7D20'),
'var checkbox = document.getElementById("P244_DEPT");',
'var deptElements = document.querySelectorAll(".dept");',
'',
'if (checkbox.checked) {',
'    deptElements.forEach(function (deptElements) {',
'        deptElements.style.display = "table-row";',
'    });',
'} else {',
'    deptElements.forEach(function (deptElements) {',
'        deptElements.style.display = "none";',
'    });',
'}',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414426463824822704)
,p_name=>unistr('\5927\7C7B\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_FIRST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414426911413822704)
,p_event_id=>wwv_flow_imp.id(2414426463824822704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var checkbox = document.getElementById("P244_FIRST_NAME");',
'var firstNameElements = document.querySelectorAll(".first_name");',
'',
'if (checkbox.checked) {',
'    firstNameElements.forEach(function (firstNameElements) {',
'        firstNameElements.style.display = "table-row";',
'    });',
'} else {',
'    firstNameElements.forEach(function (firstNameElements) {',
'        firstNameElements.style.display = "none";',
'    });',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2414427342153822704)
,p_name=>unistr('\5C0F\7C7B\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P244_SECOND_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2414427773296822704)
,p_event_id=>wwv_flow_imp.id(2414427342153822704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "last_name" \7C7B\7684\5143\7D20'),
'var checkbox = document.getElementById("P244_SECOND_NAME");',
'var secondNameElements = document.querySelectorAll(".last_name");',
'',
'if (checkbox.checked) {',
'    secondNameElements.forEach(function (secondNameElements) {',
'        secondNameElements.style.display = "table-row";',
'    });',
'} else {',
'    secondNameElements.forEach(function (secondNameElements) {',
'        secondNameElements.style.display = "none";',
'    });',
'}'))
);
wwv_flow_imp.component_end;
end;
/

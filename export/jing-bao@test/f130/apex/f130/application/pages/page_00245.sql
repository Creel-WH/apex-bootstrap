prompt --application/pages/page_00245
begin
--   Manifest
--     PAGE: 00245
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
 p_id=>245
,p_name=>unistr('\4E8C\7EF4\7801\5C55\793A')
,p_alias=>unistr('\4E8C\7EF4\7801\5C55\793A-\70B9\51FB\8BBE\5907\540D\79F0-\7F16\7801')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E8C\7EF4\7801\5C55\793A')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- #WORKSPACE_FILES#static/js/qrcode.min.js',
'-- #APP_FILES#jquery.qrcode.min.js',
'-- #APP_FILES#qrcode_new.min.js',
'#APP_FILES#qrcode.js',
'#APP_FILES#bootstrap.bundle.min.js',
'#APP_FILES#jszip.min.js',
'#APP_FILES#html2canvas.min.js'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const downloadButton = document.getElementById("download-button");',
'var deviceIds = apex.item(''P245_DEVICE_IDS'').getValue();',
'',
'var url = $v(''P245_API_URL'') + ''/jing_bao/jing_bao/jingma/device?tenant_id='' + ''&USERTENANT.'' + ''&decive_ids='' + deviceIds + ''&base_dept_id='' +  ''&BASE_DEPT_ID.'';',
unistr('console.log(''\6D4B\8BD5\FF1A''+url);'),
'console.log($v(''P245_API_URL''));',
'',
'fetch(url)',
'    .then(response => response.json())',
'    .then(responseData => {',
'        const parsedData = JSON.parse(responseData.resp.data);',
'        data = parsedData;',
'',
'        function createQRCode(index) {',
'            // const qr_content = `&APP_URL.f?p=277:33:&device_ids=${data[index].device_code}`;',
'            const qr_content = $v(''P245_JIGN_MA_URL'') + `${window.encodeURIComponent(data[index].device_code)}`+`&baseDeptId=`+''&BASE_DEPT_ID.'';',
'            const div = $("<div style=''display:inline-block;position:relative'' class=''data_container''></div>");',
'            div.html(`<img src="#APP_FILES#qrcode_logo.png" class="qr_logo">`)',
'            makeqrcode(qr_content, div[0]);',
'            return div;',
'        }',
'',
'        function makeqrcode(qr_content, qrcodeElem) {',
'            const qr = new QRCode(qrcodeElem, {',
'                text: qr_content,',
'                width: 200,',
'                height: 200',
'            });',
'            return qr;',
'        }',
'',
unistr('        // \751F\6210\6570\636E\5185\5BB9\FF0C\53EF\4EE5\6839\636Eitem\7684\503C\8FDB\884C\586B\5145'),
'        var qrcode_remark = `',
'                    <div id="ul_div" class="w3-content w3-center">',
'                    </div>',
'            `;',
'        var div_qrcode = createQRCode(0);',
'        $(''#container'').append(qrcode_remark);',
'        $(''#ul_div'').append(div_qrcode);',
'',
unistr('        // \6DFB\52A0\70B9\51FB\4E8B\4EF6\5904\7406\7A0B\5E8F'),
'        downloadButton.addEventListener("click", function () {',
'            const deviceData = data[0];',
'            const fileName = `${deviceData.device_name}_${deviceData.device_code}.png`;',
'            html2canvas(document.querySelector(".data_container")).then(canvas => {',
unistr('                // \5C06 Canvas \8F6C\6362\4E3A\56FE\7247\5E76\4E0B\8F7D'),
'                const link = document.createElement("a");',
'                link.href = canvas.toDataURL("image/png");',
'                link.download = fileName;',
'                link.click();',
'            });',
'        });',
'    });',
'',
'$(''.ui-dialog-titlebar-close'', window.parent.document).append(''<span class="ui-button-icon ui-icon ui-icon-closethick"></span>'');',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#bootstrap.min.css',
'#APP_FILES#w3.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#container{',
'    overflow: hidden;',
'    position: relative;',
'',
'}',
'',
'#qrcode_overview {',
'    display: flex;',
'    justify-content: center;',
'    align-items: center;',
'    min-height: 70vh; ',
'}',
'',
'',
'.qr_logo{',
'    width: 70px;',
'    height: 70px;',
'    top: 50%;',
'    left: 50%;',
'    transform: translate(-50%, -50%);',
'    position: absolute;',
'    border: 2.25px solid white;',
'    border-radius: 10px; ',
'}',
'',
'.white-box{',
'    width: 45px;',
'    height: 45px;',
'    top: 50%;',
'    left: 50%;',
'    transform: translate(-50%, -50%);',
'    position: absolute;',
'}',
'',
'  [id^="qrcode-"] {',
'    position: absolute;',
'    top:150px;',
'    right: 50px;',
'  }',
'',
'.device_code{',
'    position: absolute;',
'    left: 500px;',
'    bottom: 35px;',
'    font-size: 20px;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'500'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2887774705739380088)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2286666486182554749)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2887775726043380098)
,p_plug_name=>unistr('\8BBE\5907\4E8C\7EF4\7801')
,p_region_name=>'qrcode_overview'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2286693857423554758)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script',
'    src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/1/upload/2023-03-28/1679986842038.qrcode.min.js">',
'</script>',
'',
'<div id="container" class="w3-content w3-margin-top">',
'</div>'))
,p_plug_customized=>'1'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2370869697163001114)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2887774705739380088)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2370870128358001113)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2887774705739380088)
,p_button_name=>unistr('\4E0B\8F7D\56FE\7247')
,p_button_static_id=>'download-button'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D\56FE\7247')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2370882850335001089)
,p_branch_name=>unistr('\8F6C\5230\9875 1')
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2185640328273009949)
,p_name=>'P245_JIGN_MA_URL'
,p_item_sequence=>80
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE',
'from DICTIONARY_MAP',
'where TENANT_ID = :USERTENANT',
'  and BASE_DEPT_ID = :BASE_DEPT_ID',
'  and KEY = ''JING_MA_LOGIN_URL'';'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2370873461570001098)
,p_name=>'P245_DEVICE_IDS'
,p_item_sequence=>50
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2370873803566001098)
,p_name=>'P245_RESP_DATA'
,p_item_sequence=>60
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2370874178561001097)
,p_name=>'P245_API_URL'
,p_item_sequence=>70
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VALUE  from DICTIONARY_MAP where ',
'   KEY=''ODRS_YWJA_API'' and BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370875488887001094)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370876508661001093)
,p_event_id=>wwv_flow_imp.id(2370875488887001094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg nvarchar2(2000);',
'    v_clob    clob;',
'    /**',
'     * create by: xiaoxian',
unistr('     * create date: 2023-10-9 13\FF1A31'),
'     * modify by:',
'     * modify date:',
unistr('     * describe:\8BBE\5907\4E8C\7EF4\7801\9884\89C8'),
'     */',
'begin',
'',
'     select json_arrayagg(',
'               json_object(',
'                       key ''DEVICE_ID'' value DEVICE_ID,',
'                       key ''DEVICE_NAME'' value DEVICE_NAME,',
'                       key ''DEVICE_CODE'' value DEVICE_CODE,',
'                       key ''IP'' value IP,',
'                       key ''FAB_ID'' value FAB_ID,',
'                       key ''AREA_ID'' value AREA_ID,',
'                       key ''LINE_ID'' value LINE_ID,',
'                       key ''MANAGEMENT_EXT_ORG_ID'' value MANAGEMENT_EXT_ORG_ID,',
'                       key ''CATEGORY_FIRST_CODE'' value CATEGORY_FIRST_CODE,',
'                       key ''CATEGORY_SECOND_CODE'' value CATEGORY_SECOND_CODE',
'                   )',
'           )',
'into v_clob',
'from (',
'         select s.DEVICE_ID,',
'                s.DEVICE_NAME,',
'                s.DEVICE_CODE,',
'                s.IP,',
'                (select d.NAME from FND_FAB d where d.FAB_ID = s.FAB_ID) FAB_ID ,',
'                (select x.NAME from FND_AREAS x where x.FAB_ID = s.AREA_ID) AREA_ID,',
'                (select y.NAME from FND_AREAS y where y.FAB_ID = s.LINE_ID) LINE_ID,',
'                (select b.MANAGEMENT_EXT_ORG_NAME from BASIC_DEVICE_BUFF_3 b where b.MANAGEMENT_EXT_ORG_ID = s.MANAGEMENT_EXT_ORG_ID) MANAGEMENT_EXT_ORG_ID,',
'                (select b.CATEGORY_FIRST_NAME from BASIC_DEVICE_BUFF_3 b where b.CATEGORY_FIRST_CODE = s.CATEGORY_FIRST_CODE) CATEGORY_FIRST_CODE,',
'                (select b.CATEGORY_SECOND_NAME from BASIC_DEVICE_BUFF_3 b where b.CATEGORY_SECOND_CODE= s.CATEGORY_SECOND_CODE) CATEGORY_SECOND_CODE',
'         from CODE_DEVICE s',
'     )',
'where DEVICE_ID in (select * from table ( SPLITSTR(:P245_DEVICE_IDS, '','') ));',
'     apex_util.set_session_state(''P245_RESP_DATA'', v_clob);',
'',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''\4E8C\7EF4\7801\751F\6210'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P245_DEVICE_IDS'
,p_attribute_03=>'P245_RESP_DATA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2369898426141510621)
,p_event_id=>wwv_flow_imp.id(2370875488887001094)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  var closeButton = document.querySelector(''.ui-dialog-titlebar-close'');',
'  console.log("test1");',
'    closeButton.classList.add(''ui-button'', ''ui-corner-all'', ''ui-widget'', ''ui-button-icon-only'');',
'  console.log("test2");',
'    var iconSpan = document.createElement(''span'');',
'      console.log("test3");',
'    iconSpan.className = ''ui-button-icon ui-icon ui-icon-closethick'';',
'      console.log("test4");',
'',
'    closeButton.appendChild(iconSpan);',
'      console.log("test5");',
''))
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370876935529001093)
,p_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2370869697163001114)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370877424626001093)
,p_event_id=>wwv_flow_imp.id(2370876935529001093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370882277461001090)
,p_name=>unistr('\4E0B\8F7D')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2370870128358001113)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2367290523775245644)
,p_event_id=>wwv_flow_imp.id(2370882277461001090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'//   const imgContainer = document.querySelector(".data_container");',
'//   const imgTags = imgContainer.querySelectorAll("img");',
'//   const zip = new JSZip();',
'//   const promises = [];',
'',
'//   imgTags.forEach((img, index) => {',
'//     const imageUrl = img.getAttribute("src");',
'',
'//     const promise = fetch(imageUrl)',
'//       .then(response => response.blob())',
'//       .then(blob => {',
'//         zip.file(`image_${index}.png`, blob);',
'//       });',
'',
'//     promises.push(promise);',
'//   });',
'',
'//   Promise.all(promises).then(() => {',
'//     zip.generateAsync({ type: ''blob'' }).then(blob => {',
'//       const downloadLink = document.createElement(''a'');',
'//       downloadLink.href = URL.createObjectURL(blob);',
'//       downloadLink.download = ''compressed_images.zip'';',
'//       downloadLink.click();',
'//     });',
'//   });',
''))
,p_build_option_id=>-wwv_flow_imp.id(2130883247292644920)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370874564536001096)
,p_name=>unistr('\7F16\7801\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_DEVICE_CODE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370875089734001094)
,p_event_id=>wwv_flow_imp.id(2370874564536001096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "device_code" \7C7B\7684\5143\7D20'),
'  const codeCheckedCheckbox = document.getElementById(''P245_DEVICE_CODE'');',
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
 p_id=>wwv_flow_imp.id(2370877823825001092)
,p_name=>unistr('IP\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_DEVICE_IP'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370878330423001092)
,p_event_id=>wwv_flow_imp.id(2370877823825001092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "device_ip" \7C7B\7684\5143\7D20'),
'  const ipCheckedCheckbox = document.getElementById(''P245_DEVICE_IP'');',
'  const ipElements = document.querySelectorAll(''.device_ip'');',
'',
'    if (ipCheckedCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "device_ip" \5143\7D20'),
'      ipElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "device_ip" \5143\7D20'),
'      ipElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370878744722001092)
,p_name=>unistr('\4F4D\7F6E\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_POSITION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370879161959001092)
,p_event_id=>wwv_flow_imp.id(2370878744722001092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "position" \7C7B\7684\5143\7D20'),
'  const positionCheckedCheckbox = document.getElementById(''P245_POSITION'');',
'  const positionElements = document.querySelectorAll(''.position'');',
'',
'    if (positionCheckedCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "device_code" \5143\7D20'),
'      positionElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "device_code" \5143\7D20'),
'      positionElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370879611464001091)
,p_name=>unistr('\8D23\4EFB\90E8\95E8\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_DEPT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370880070298001091)
,p_event_id=>wwv_flow_imp.id(2370879611464001091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "dept" \7C7B\7684\5143\7D20'),
'  const deptCheckedCheckbox = document.getElementById(''P245_DEPT'');',
'  const deptElements = document.querySelectorAll(''.dept'');',
'',
'    if (deptCheckedCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "dept" \5143\7D20'),
'      deptElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "dept" \5143\7D20'),
'      deptElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370880467503001091)
,p_name=>unistr('\5927\7C7B\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_FIRST_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370881018391001091)
,p_event_id=>wwv_flow_imp.id(2370880467503001091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "first_name" \7C7B\7684\5143\7D20'),
'  const firstNameCheckbox = document.getElementById(''P245_FIRST_NAME'');',
'  const firstNameElements = document.querySelectorAll(''.first_name'');',
'',
'    if (firstNameCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "first_name" \5143\7D20'),
'      firstNameElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "first_name" \5143\7D20'),
'      firstNameElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2370881437486001091)
,p_name=>unistr('\5C0F\7C7B\663E\793A\4E0E\9690\85CF')
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P245_SECOND_NAME'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2370881893973001090)
,p_event_id=>wwv_flow_imp.id(2370881437486001091)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('  // \83B7\53D6\8F93\5165\5355\9009\6846\548C\6240\6709\5177\6709 "last_name" \7C7B\7684\5143\7D20'),
'  const secondNameCheckbox = document.getElementById(''P245_SECOND_NAME'');',
'  const secondNameElements = document.querySelectorAll(''.last_name'');',
'',
'    if (secondNameCheckbox.checked) {',
unistr('      // \5982\679C\5355\9009\6846\88AB\9009\4E2D\FF0C\663E\793A\6240\6709 "last_name" \5143\7D20'),
'      secondNameElements.forEach(element => {',
'        element.style.display = ''block'';',
'      });',
'    } else {',
unistr('      // \5982\679C\5355\9009\6846\672A\9009\4E2D\FF0C\9690\85CF\6240\6709 "last_name" \5143\7D20'),
'      secondNameElements.forEach(element => {',
'        element.style.display = ''none'';',
'      });',
'    }',
''))
);
wwv_flow_imp.component_end;
end;
/

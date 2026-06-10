prompt --application/pages/page_00194
begin
--   Manifest
--     PAGE: 00194
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
 p_id=>194
,p_name=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5\65B0')
,p_alias=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5\65B0')
,p_step_title=>unistr('\4E8B\4EF6\590D\76D8\8BE6\60C5\65B0')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/compressor.min.js',
'#WORKSPACE_FILES#static/js/html2canvas.min.js',
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'https://unpkg.com/medash@3.2.2/dist/medash.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var why5_analysis_images = new Map();',
'var abnormal_problem_images = new Map();',
'var process_analysis_images = new Map();',
'var improve_method_images = new Map();',
'var function_name_images = new Map();',
'var analysis_key_components_images = new Map();',
'var structural_principle_images = new Map();',
'var daily_maintain_images = new Map();',
'',
'',
'var updateImage;',
'var createEnvironment;',
'$(''#P161_CREATED_TIME'').attr(''readonly'',''true'');',
'$(''#P161_FAULT_TIME'').attr(''readonly'',''true'');',
'$(''#P161_END_TIME'').attr(''readonly'',''true'');',
'$(''#P161_DEPT_MANAGER'').attr(''readonly'',''true'');',
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
'',
'',
''))
,p_css_file_urls=>'#WORKSPACE_FILES#static/css/ppt#MIN#.css'
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
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2154447260517265530)
,p_plug_name=>unistr('\5BA1\6838-\5F85\590D\76D8')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>130
,p_include_in_reg_disp_sel_yn=>'Y'
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
'      and AUDIT_STATE != ''COMPLETE''',
'      and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2154449040249265547)
,p_plug_name=>unistr('\5BA1\6838-\5BA1\6838\4E2D')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
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
'      and AUDIT_STATE != ''COMPLETE''',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P194_STATUS=''AUDIT'' then',
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
 p_id=>wwv_flow_imp.id(2154449087608265548)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\9A73\56DE')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>150
,p_include_in_reg_disp_sel_yn=>'Y'
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
'      and AUDIT_STATE != ''COMPLETE''',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P194_STATUS=''REJECT'' then',
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
 p_id=>wwv_flow_imp.id(2154449156672265549)
,p_plug_name=>unistr('\5BA1\6838-\5DF2\5B8C\6210')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>160
,p_include_in_reg_disp_sel_yn=>'Y'
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
'      and AUDIT_STATE != ''COMPLETE''',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0  then',
'       ',
'        return false;',
'    else',
'        if  :P194_STATUS=''COMPLETE'' then',
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
 p_id=>wwv_flow_imp.id(2154994687422300853)
,p_plug_name=>unistr('\5BA1\6838\4EBA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2157851417188226012)
,p_plug_name=>unistr('PPT\9884\89C8')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>170
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_css_classes=>'preview-box'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="pdfView">',
'    <div class="page page-1">',
'        <div class="page-1-title">',
'            <p>',
'                <span id=''beginTime''></span>',
'                <span id=''fabName''></span>',
'                <span id=''areaName''></span>',
'            </p>',
'            <P>',
'                <span id=''deviceName''></span>',
'                <span id=''secondEventName''></span>',
'            </P>',
'        </div>',
'    </div>',
'    <div class="page page-2">',
unistr('        <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3</span>'),
'        <ul class="directory">',
unistr('            <li><span>\6545\969C\57FA\672C\4FE1\606F\63CF\8FF0</span></li>'),
unistr('            <li><span>\5F02\5E38\5206\6790OPL(One Point Lesson)</span></li>'),
unistr('            <li><span>\77E5\8BC6\52A0\6CB9\7AD9</span></li>'),
'        </ul>',
'    </div>',
'    <div class="page page-3">',
unistr('        <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-\57FA\672C\4FE1\606F</span>'),
'        <ul class="fault-info">',
'            <li>',
unistr('                <span>when\FF08\6545\969C\53D1\751F\65E5\671F\FF0C\8D77\59CB\65F6\95F4\53CA\4FEE\590D\65F6\95F4\FF09\FF1A</span>'),
'                <span id=''faultWhen''></span>',
'            </li>',
'            <li>',
unistr('                <span>where\FF08\6545\969C\5728\54EA\4E2A\533A\57DF\FF0C\54EA\4E2A\673A\53F0\FF09\FF1A</span>'),
'                <span id=''faultWhere''></span>',
'            </li>',
'            <li>',
unistr('                <span>who\FF08\6545\969C\53D1\751F\4EBA\5458\3001\5904\7406\4EBA\5458\3001\62A5\544A\603B\7ED3\4EBA\FF09\FF1A</span>'),
'                <ul>',
'                    <li>',
unistr('                        <span>\62A5\4FEE\4EBA\FF08\53D1\73B0\4EBA\FF09\FF1A</span>'),
'                        <span id=''submitExtUserName''></span>',
'                    </li>',
'                    <li>',
unistr('                        <span>\5904\7406\FF08\7EF4\4FEE\FF09\4EBA\5458\FF1A</span>'),
'                        <span id=''handleUsers''></span>',
'                    </li>',
'                    <li>',
unistr('                        <span>\5F02\5E38\5206\6790\62A5\544A\62DF\5B9A\4EBA\FF1A</span>'),
'                        <span id=''analysisExtUserName''></span>',
'                    </li>',
'                </ul>',
'            </li>',
'            <li>',
unistr('                <span>what\FF08\6545\969C\540D\79F0\6982\8FF0\FF09\FF1A</span>'),
'                <span id=''auditName'' class="fault-name"></span>',
'            </li>',
'        </ul>',
'    </div>',
'    <div class="page page-4">',
unistr('        <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL</span>'),
'        <div class="page-body">',
'            <div>',
'                <div class="module">',
unistr('                    <span class="title">\5F02\5E38\95EE\9898\63CF\8FF0\FF1A</span>'),
'                    <div id=''abnormalProblemContent'' class="text text-1"></div>',
'                    <div id=''abnormalProblemImages'' class="img-group-1"></div>',
'                </div>',
'                <div class="module">',
unistr('                    <span class="title">\5904\7406\8FC7\7A0B\5206\6790\FF1A</span>'),
'                    <div id=''processAnalysisContent'' class="text text-2"></div>',
'                    <div id=''processAnalysisImages'' class="img-group-2"></div>',
'                </div>',
'            </div>',
'            <div class="line"></div>',
'            <div>',
'                <div class="module">',
unistr('                    <span class="title">5why\6839\6E90\5206\6790\FF1A</span>'),
'                    <div id=''why5AnalysisContent'' class="text text-1"></div>',
'                    <div id=''why5AnalysisImages'' class="img-group-1"></div>',
'                </div>',
'                <div class="module">',
unistr('                    <span class="title">\6539\5584\63AA\65BD\FF1A</span>'),
'                    <div id=''improveMethodContent'' class="text text-2"></div>',
'                    <div id=''improveMethodImages'' class="img-group-2"></div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'    <div class="page page-5">',
unistr('        <span class="page-title">\8BBE\5907\90E8\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-\77E5\8BC6\52A0\6CB9\7AD9</span>'),
'        <div class="page-body">',
'            <div>',
'                <div class="module">',
unistr('                    <span class="title">\540D\79F0\529F\80FD\4ECB\7ECD\FF1A</span>'),
'                    <div id=''functionNameContent'' class="text text-1"></div>',
'                    <div id=''functionNameImages'' class="img-group-1"></div>',
'                </div>',
'                <div class="module">',
unistr('                    <span class="title">\7ED3\6784\539F\7406\5206\6790\FF1A</span>'),
'                    <div id=''structuralPrincipleContent'' class="text text-2"></div>',
'                    <div id=''structuralPrincipleImages'' class="img-group-2"></div>',
'                </div>',
'            </div>',
'            <div class="line">',
'            </div>',
'            <div>',
'                <div class="module">',
unistr('                    <span class="title">\5173\952E\5668\4EF6\5206\6790\FF1A</span>'),
'                    <div id=''deviceKeyContent'' class="text text-1"></div>',
'                    <div id=''deviceKeyImages'' class="img-group-1"></div>',
'                </div>',
'                <div class="module">',
unistr('                    <span class="title">\65E5\5E38\3001\7EF4\62A4\4FDD\517B\6216\7EF4\4FEE\65F6\9700\6CE8\610F\70B9\FF1A</span>'),
'                    <div id=''dailyMaintainContent'' class="text text-2"></div>',
'                    <div id=''dailyMaintainImages'' class="img-group-2"></div>',
'                </div>',
'            </div>',
'        </div>',
'    </div>',
'    <div class="page page-6">',
'    </div>',
'</div>'))
,p_plug_column_width=>' style="display:none"'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2250842622541224626)
,p_plug_name=>unistr('\57FA\672C\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2250843073810224631)
,p_plug_name=>unistr('\4E8B\4EF6\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255271271229114747)
,p_plug_name=>unistr('\6545\969C\56FE\7247')
,p_region_name=>'images_content'
,p_parent_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>140
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2255268672319114721)
,p_plug_name=>unistr('OPL (\5F02\5E38\5206\6790/\7ECF\9A8C\603B\7ED3)')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2154990785787300814)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_1'
,p_parent_plug_id=>wwv_flow_imp.id(2255268672319114721)
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
'      and BASE_DEPT_ID= :BASE_DEPT_ID',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2154990856709300815)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_2'
,p_parent_plug_id=>wwv_flow_imp.id(2255268672319114721)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID=:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2255269111008114725)
,p_plug_name=>unistr('\5F02\5E38\63CF\8FF0 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255268672319114721)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255269914615114733)
,p_plug_name=>unistr('5Why\6839\6E90\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255268672319114721)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select  count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'') ',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255269493903114729)
,p_plug_name=>unistr('\5F02\5E38\5206\6790&\7ECF\9A8C\603B\7ED3-OPL-tail')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2154991022559300816)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_3'
,p_parent_plug_id=>wwv_flow_imp.id(2255269493903114729)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID ',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2154991051518300817)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_4'
,p_parent_plug_id=>wwv_flow_imp.id(2255269493903114729)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2255269008239114724)
,p_plug_name=>unistr('\5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255269493903114729)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255269977199114734)
,p_plug_name=>unistr('\6539\5584\63AA\65BD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255269493903114729)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255270148411114736)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2154991515494300821)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_5'
,p_parent_plug_id=>wwv_flow_imp.id(2255270148411114736)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2154991716085300823)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_6'
,p_parent_plug_id=>wwv_flow_imp.id(2255270148411114736)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2255270910460114743)
,p_plug_name=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255270148411114736)
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
'      and BASE_DEPT_ID=:BASE_DEPT_ID',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255270974562114744)
,p_plug_name=>unistr('\5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255270148411114736)
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
'      and BASE_DEPT_ID = :BASE_DEPT_ID',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255270535193114739)
,p_plug_name=>unistr('\77E5\8BC6\52A0\6CB9\7AD9-tail')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2154991391636300820)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790  \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_7'
,p_parent_plug_id=>wwv_flow_imp.id(2255270535193114739)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2154991597594300822)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247 \5B50\533A\57DF')
,p_region_name=>'div_8'
,p_parent_plug_id=>wwv_flow_imp.id(2255270535193114739)
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
'      and BASE_DEPT_ID =:BASE_DEPT_ID',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE in (''WAIT'', ''COMPLETE'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID= :BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID;',
'    else',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where AUDIT_STATE in (''COMPLETE'', ''REJECT'', ''AUDIT'')',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and CREATED_BY != V(''USERID'')',
'          and EVENT_ID = :P194_EVENT_ID;',
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
 p_id=>wwv_flow_imp.id(2255271058849114745)
,p_plug_name=>unistr('\7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255270535193114739)
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
'      and BASE_DEPT_ID= :BASE_DEPT_ID',
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
 p_id=>wwv_flow_imp.id(2255271175262114746)
,p_plug_name=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_parent_plug_id=>wwv_flow_imp.id(2255270535193114739)
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID=:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
  'attribute_10', '10',
  'attribute_11', '2',
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
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2146072683853912962)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2154447260517265530)
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
 p_id=>wwv_flow_imp.id(2146073774139912963)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2154449040249265547)
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
 p_id=>wwv_flow_imp.id(2146073057525912962)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2154447260517265530)
,p_button_name=>unistr('\6253\5F00\9884\89C8ppt')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2302108173168836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2146074887508912964)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2154449087608265548)
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
 p_id=>wwv_flow_imp.id(2146042089239912937)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2154449156672265549)
,p_button_name=>unistr('\8FD4\56DE3')
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
 p_id=>wwv_flow_imp.id(2146074223084912963)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2154449040249265547)
,p_button_name=>unistr('\5BA1\6838')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.::P170_EVENT_ID:&P194_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P194_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2146075228696912964)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(2154449087608265548)
,p_button_name=>unistr('\5BA1\6838_1')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:170:&SESSION.::&DEBUG.::P170_EVENT_ID:&P194_EVENT_ID.'
,p_button_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select *',
'    from TENANT_EVENT_REVIEW',
'    where AUDIT_USER = V(''USERID'')',
'      and EVENT_ID = :P194_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2146041395071912932)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2157851417188226012)
,p_button_name=>unistr('\8FD4\56DE4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2146040958892912930)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2157851417188226012)
,p_button_name=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\786E\8BA4\63D0\4EA4')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146042745823912938)
,p_name=>'P194_AUDIT_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2154994687422300853)
,p_prompt=>unistr('\8BF7\9009\62E9\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID;'))
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
'      and EVENT_ID = :P194_EVENT_ID;',
'',
'    if num1 > 0 then',
'        select count(*)',
'        into num2',
'        from TENANT_EVENT_REVIEW',
'        where CREATED_BY = V(''USERID'')',
'          and AUDIT_STATE = ''COMPLETE''',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID',
'          and EVENT_ID = :P194_EVENT_ID',
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
 p_id=>wwv_flow_imp.id(2146043161919912940)
,p_name=>'P194_TEMP_AUDIT_USER_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2154994687422300853)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146043540920912940)
,p_name=>'P194_TEMP_AUDIT_USER_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2154994687422300853)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146044263967912941)
,p_name=>'P194_MAIN_RESPONSIBLE_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_prompt=>unistr('\4E3B\8D1F\8D23\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P194_TEMP_MAIN_ORG_ID'
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
 p_id=>wwv_flow_imp.id(2146044698405912941)
,p_name=>'P194_SECOND_EVENT_CATEGORY_NAME2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146045090830912941)
,p_name=>'P194_ABNORMAL_ANALYSIS_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_prompt=>unistr('\5F02\5E38\5206\6790\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P194_TEMP_MAIN_ORG_ID'
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
 p_id=>wwv_flow_imp.id(2146045519121912942)
,p_name=>'P194_CREATED_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146045829671912942)
,p_name=>'P194_SECONDARY_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146046251504912942)
,p_name=>'P194_FAULT_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146046711358912942)
,p_name=>'P194_END_TIME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146047085503912943)
,p_name=>'P194_AUDIT_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
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
 p_id=>wwv_flow_imp.id(2146047504133912943)
,p_name=>'P194_DEPT_MANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_prompt=>unistr('\90E8\95E8\7ECF\7406:')
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
 p_id=>wwv_flow_imp.id(2146047843954912943)
,p_name=>'P194_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146048278475912945)
,p_name=>'P194_TEMP_MAIN_RESPONSIBLE_USER_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146048704559912945)
,p_name=>'P194_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146049119311912945)
,p_name=>'P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146049450610912945)
,p_name=>'P194_TEMP_P194_SECONDARY_USER_IDS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146049841335912946)
,p_name=>'P194_TEMP_P194_SECONDARY_USER_NAMES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146050253450912946)
,p_name=>'P194_PDF_URL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2250842622541224626)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146051003301912947)
,p_name=>'P194_EVENT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146051420691912947)
,p_name=>'P194_EVENT_SERIAL_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146051748485912947)
,p_name=>'P194_FIRST_EVENT_CATEGORY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146052164627912947)
,p_name=>'P194_SUBMIT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146052613371912947)
,p_name=>'P194_FAB_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146052953184912947)
,p_name=>'P194_SECOND_EVENT_CATEGORY_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146053383732912948)
,p_name=>'P194_MAIN_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146053815555912948)
,p_name=>'P194_MAP_AREA_Y_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146054102455912948)
,p_name=>'P194_EVENT_PHENOMENON_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146054437288912948)
,p_name=>'P194_AUDIT_STATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146054898520912948)
,p_name=>'P194_MAP_AREA_X_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146055305215912949)
,p_name=>'P194_DESCRIPTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
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
 p_id=>wwv_flow_imp.id(2146055693087912949)
,p_name=>'P194_IMAGES_URLS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146056086955912949)
,p_name=>'P194_FAB_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146056526956912949)
,p_name=>'P194_TEMP_MAIN_ORG_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146056848897912949)
,p_name=>'P194_TEMP_MAIN_ORG_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146057253201912949)
,p_name=>'P194_ROW_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146057712142912950)
,p_name=>'P194_STATUS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146058124404912950)
,p_name=>'P194_PAGE_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146058493781912950)
,p_name=>'P194_EVENT_DATAS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146058911744912950)
,p_name=>'P194_DEVICE_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146059322778912950)
,p_name=>'P194_DEVICE_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2250843073810224631)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146060266113912951)
,p_name=>'P194_WHY5_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2255268672319114721)
,p_prompt=>unistr('5Why\6839\6E90\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146060707553912952)
,p_name=>'P194_ABNORMAL_PROBLEM_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2255268672319114721)
,p_prompt=>unistr('\5F02\5E38\63CF\8FF0')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146061117883912952)
,p_name=>'P194_WHY5_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2255268672319114721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146061490169912952)
,p_name=>'P194_ABNORMAL_PROBLEM_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2255268672319114721)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146063407777912954)
,p_name=>'P194_PROCESS_ANALYSIS_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2255269493903114729)
,p_prompt=>unistr('\5904\7406\8FC7\7A0B\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146063791874912954)
,p_name=>'P194_IMPROVE_METHOD_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2255269493903114729)
,p_prompt=>unistr('\6539\5584\63AA\65BD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146064210499912954)
,p_name=>'P194_PROCESS_ANALYSIS_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2255269493903114729)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146064610892912954)
,p_name=>'P194_IMPROVE_METHOD_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2255269493903114729)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146066499411912957)
,p_name=>'P194_FUNCTION_NAME_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2255270148411114736)
,p_prompt=>unistr('\540D\79F0/\529F\80FD\4ECB\7ECD')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146066897813912957)
,p_name=>'P194_DEVICE_KEY_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2255270148411114736)
,p_prompt=>unistr('\5173\952E\5668\4EF6\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146067289313912957)
,p_name=>'P194_FUNCTION_NAME_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2255270148411114736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146067653158912957)
,p_name=>'P194_DEVICE_KEY_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2255270148411114736)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146069547306912959)
,p_name=>'P194_STRUCTURAL_PRINCIPLE_CONTENT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2255270535193114739)
,p_prompt=>unistr('\7ED3\6784\539F\7406\5206\6790')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146069992550912959)
,p_name=>'P194_DAILY_MAINTAIN_CONTENT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2255270535193114739)
,p_prompt=>unistr('\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_imp.id(2146070367726912960)
,p_name=>'P194_STRUCTURAL_PRINCIPLE_IMAGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2255270535193114739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2146070801541912960)
,p_name=>'P194_DAILY_MAINTAIN_IMAGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2255270535193114739)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146077480901912976)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146078016930912977)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_data clob;',
'begin',
'    select json_object(',
'  key ''EVENT_ID'' value v.EVENT_ID,',
'  key ''EVENT_SERIAL_NO'' value v.EVENT_SERIAL_NO,',
'  key ''CREATION_DATE'' value v.CREATION_DATE,',
'  key ''END_TIME'' value v.END_TIME,',
'  key ''MAIN_ORG_ID'' value v.MAIN_ORG_ID,',
'  key ''BASE_NAME'' value v.BASE_NAME,',
'  key ''FAB_NAME'' value v.FAB_NAME,',
'  key ''MAP_AREA_Y_NAME'' value v.MAP_AREA_Y_NAME,',
'  key ''MAP_AREA_X_NAME'' value v.MAP_AREA_X_NAME,',
'  key ''FIRST_EVENT_CATEGORY_NAME'' value v.FIRST_EVENT_CATEGORY_NAME,',
'  key ''SECOND_EVENT_CATEGORY_NAME'' value v.SECOND_EVENT_CATEGORY_NAME,',
'  key ''EVENT_PHENOMENON_NAME'' value v.EVENT_PHENOMENON_NAME,',
'  key ''DESCRIPTION'' value v.DESCRIPTION,',
'  key ''IMAGES_URL'' value v.IMAGES_URL,',
'  key ''IS_STOP_LINE'' value v.IS_STOP_LINE,',
'  key ''IS_KEY_PROCESS'' value v.IS_KEY_PROCESS,',
'  key ''SUBMIT_SOURCE'' value v.SUBMIT_SOURCE,',
'  key ''CALL_RANGE'' value v.CALL_RANGE,',
'  key ''BEGIN_TIME'' value v.BEGIN_TIME,',
'  key ''CALL_RANGE_NAME'' value v.CALL_RANGE_NAME,',
'  key ''SUBMIT_USER_ID'' value v.SUBMIT_USER_ID,',
'  key ''SUBMIT_NAME'' value v.SUBMIT_NAME,',
'  key ''SUBMIT_AVATAR'' value v.SUBMIT_AVATAR,',
'  key ''EXT_USER_ID'' value v.EXT_USER_ID,',
'  key ''EXT_USER_NAME'' value v.EXT_USER_NAME,',
'  key ''EXT_ORG_ID'' value v.EXT_ORG_ID,',
'  key ''MAIN_ORG_NAME'' value v.MAIN_ORG_NAME,',
'  key ''MAIN_NAME'' value v.MAIN_NAME,',
'  key ''AUDIT_STATE'' value v.AUDIT_STATE,',
'  key ''ABNORMAL_ANALYSIS_USER'' value v.ABNORMAL_ANALYSIS_USER,',
'  key ''EVENT_REVIEW_ID'' value e.EVENT_REVIEW_ID,',
'  key ''CREATED_TIME'' value e.CREATED_TIME,',
'  key ''END_TIME'' value e.END_TIME,',
'  key ''AUDIT_STATE'' value e.AUDIT_STATE,',
'  key ''AUDIT_USER'' value e.AUDIT_USER,',
'  key ''AUDIT_OPINION'' value e.AUDIT_OPINION,',
'  key ''MAIN_RESPONSIBLE_USER'' value e.MAIN_RESPONSIBLE_USER,',
'  key ''ABNORMAL_ANALYSIS_USER'' value e.ABNORMAL_ANALYSIS_USER,',
'  key ''SECONDARY_USER'' value e.SECONDARY_USER,',
'  key ''WHY5_ANALYSIS_CONTENT'' value e.WHY5_ANALYSIS_CONTENT,',
'  key ''WHY5_ANALYSIS_IMAGE'' value e.WHY5_ANALYSIS_IMAGE,',
'  key ''ABNORMAL_PROBLEM_CONTENT'' value e.ABNORMAL_PROBLEM_CONTENT,',
'  key ''ABNORMAL_PROBLEM_IMAGE'' value e.ABNORMAL_PROBLEM_IMAGE,',
'  key ''PROCESS_ANALYSIS_CONTENT'' value e.PROCESS_ANALYSIS_CONTENT,',
'  key ''PROCESS_ANALYSIS_IMAGE'' value e.PROCESS_ANALYSIS_IMAGE,',
'  key ''IMPROVE_METHOD_CONTENT'' value e.IMPROVE_METHOD_CONTENT,',
'  key ''IMPROVE_METHOD_IMAGE'' value e.IMPROVE_METHOD_IMAGE,',
'  key ''FUNCTION_NAME_CONTENT'' value e.FUNCTION_NAME_CONTENT,',
'  key ''FUNCTION_NAME_IMAGE'' value e.FUNCTION_NAME_IMAGE,',
'  key ''DEVICE_KEY_CONTENT'' value e.DEVICE_KEY_CONTENT,',
'  key ''DEVICE_KEY_IMAGE'' value e.DEVICE_KEY_IMAGE,',
'  key ''STRUCTURAL_PRINCIPLE_CONTENT'' value e.STRUCTURAL_PRINCIPLE_CONTENT,',
'  key ''STRUCTURAL_PRINCIPLE_IMAGE'' value e.STRUCTURAL_PRINCIPLE_IMAGE,',
'  key ''DAILY_MAINTAIN_CONTENT'' value e.DAILY_MAINTAIN_CONTENT,',
'  key ''DAILY_MAINTAIN_IMAGE'' value e.DAILY_MAINTAIN_IMAGE,',
'  key ''AUDIT_NAME'' value e.AUDIT_NAME,',
'  key ''PDF_URL'' value e.PDF_URL',
'               ) into v_data',
'    from TENANT_EVENT_REVIEW_V v',
'             inner join TENANT_EVENT_REVIEW e on v.EVENT_ID = e.EVENT_ID',
'    where v.TENANT_ID = e.TENANT_ID',
'      and v.BASE_DEPT_ID =e.BASE_DEPT_ID',
'      and e.AUDIT_STATE != ''WAIT''',
'      and e.EVENT_ID = :P194_EVENT_ID;',
'    apex_util.set_session_state(''P194_EVENT_DATAS'', v_data);',
'',
'end;'))
,p_attribute_02=>'P194_EVENT_ID'
,p_attribute_03=>'P194_EVENT_DATAS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146084505550912981)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>20
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
'          (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P194_EVENT_ID and e.TENANT_ID = :USERTENANT and e.BASE_DEPT_ID =:BASE_DEPT_ID)',
'      and TENANT_ID = :USERTENANT',
'      and BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    if v_row_count > 0 then',
'        select DEVICE_NAME, DEVICE_CODE',
'        into v_device_name,v_device_code',
'        from BASIC_DEVICE',
'        where DEVICE_CODE =',
'              (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P194_EVENT_ID and e.TENANT_ID = :USERTENANT and e.BASE_DEPT_ID=:BASE_DEPT_ID)',
'          and TENANT_ID = :USERTENANT',
'          and BASE_DEPT_ID= :BASE_DEPT_ID;',
'    end if;',
'',
'',
'    apex_util.set_session_state(''P194_DEVICE_CODE'', v_device_code);',
'    apex_util.set_session_state(''P194_DEVICE_NAME'', v_device_name);',
'',
'end;'))
,p_attribute_02=>'P194_EVENT_ID'
,p_attribute_03=>'P194_DEVICE_NAME,P194_DEVICE_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146078523088912977)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_SECONDARY_USER,P194_AUDIT_USER,P194_WHY5_ANALYSIS_CONTENT,P194_PROCESS_ANALYSIS_CONTENT,P194_FUNCTION_NAME_CONTENT,P194_STRUCTURAL_PRINCIPLE_CONTENT,P194_ABNORMAL_PROBLEM_CONTENT,P194_IMPROVE_METHOD_CONTENT,P194_DEVICE_KEY_CONTENT,P194_DAILY_MAI'
||'NTAIN_CONTENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146084938090912981)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P194_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME || ''-'' || NAME, EXT_USER_ID ',
'from MPF_USER_DEPT_MAIN_ASSO_V',
'where EXT_USER_ID = :USERID and TENANT_ID=:USERTENANT',
'and BASE_DEPT_ID =:BASE_DEPT_ID ;'))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146079026274912978)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_IMAGES_URLS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMAGES_URL',
'from TENANT_EVENT where EVENT_ID=:P194_EVENT_ID and TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID ;'))
,p_attribute_07=>'P194_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146080017170912978)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P194_EVENT_ID''));',
'',
'if ($v(''P194_IMAGES_URLS'')) {',
'',
'    var arr_image = $v(''P194_IMAGES_URLS'').split('','');',
'    for (var i = 0; i < arr_image.length; i < i++) {',
'      ',
'        var img = new Image();',
'        img.src = arr_image[i];',
'        img.width = 150;',
'        $(img).css(''padding-left'',''20px'');',
'        $("#images_content").append(img);',
'    }',
'',
'}',
'',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146080484547912978)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_EVENT_SERIAL_NO,P194_FIRST_EVENT_CATEGORY_NAME,P194_SUBMIT_NAME,P194_FAB_NAME,P194_SECOND_EVENT_CATEGORY_NAME,P194_MAIN_NAME,P194_MAP_AREA_Y_NAME,P194_EVENT_PHENOMENON_NAME,P194_MAP_AREA_X_NAME,P194_DESCRIPTION,P194_TEMP_MAIN_ORG_ID,P194_END_TIM'
||'E,P194_FAULT_TIME,P194_CREATED_TIME,P194_DEPT_MANAGER,P194_TEMP_MAIN_ORG_NAME,P194_FAB_ID,P194_SECOND_EVENT_CATEGORY_NAME2,P194_AUDIT_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_SERIAL_NO,',
'       FIRST_EVENT_CATEGORY_NAME,',
'       SUBMIT_NAME,',
'       FAB_NAME,',
'       SECOND_EVENT_CATEGORY_NAME,',
'       MAIN_NAME,',
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
'       AUDIT_NAME',
'',
'from TENANT_EVENT_REVIEW_V',
'where TENANT_ID = V(''USERTENANT'')',
'and BASE_DEPT_ID =:BASE_DEPT_ID',
'  and EVENT_ID = :P194_EVENT_ID;'))
,p_attribute_07=>'P194_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P194_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146080995266912979)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_MAIN_RESPONSIBLE_USER,P194_ABNORMAL_ANALYSIS_USER,P194_SECONDARY_USER,P194_AUDIT_USER,P194_WHY5_ANALYSIS_CONTENT,P194_WHY5_ANALYSIS_IMAGE,P194_ABNORMAL_PROBLEM_CONTENT,P194_ABNORMAL_PROBLEM_IMAGE,P194_PROCESS_ANALYSIS_CONTENT,P194_PROCESS_ANALYS'
||'IS_IMAGE,P194_IMPROVE_METHOD_CONTENT,P194_IMPROVE_METHOD_IMAGE,P194_FUNCTION_NAME_CONTENT,P194_FUNCTION_NAME_IMAGE,P194_DEVICE_KEY_CONTENT,P194_DEVICE_KEY_IMAGE,P194_STRUCTURAL_PRINCIPLE_CONTENT,P194_STRUCTURAL_PRINCIPLE_IMAGE,P194_DAILY_MAINTAIN_CON'
||'TENT,P194_DAILY_MAINTAIN_IMAGE'
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
'where EVENT_ID = :P194_EVENT_ID',
'  and TENANT_ID = V(''USERTENANT'')',
'  and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P194_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146081520899912979)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P194_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- select name ||''-''|| EXT_ORG_NAME,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'-- where TENANT_ID=V(''USERTENANT'')',
'--  and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID',
'--  and EXT_USER_ID= select_dept_manager(:P194_FAB_ID,:P194_TEMP_MAIN_ORG_ID,V(''USERTENANT''),1);',
'',
' select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_USER_DEPT_MAIN_ASSO_V  u on f.EXT_USER_ID = u.EXT_USER_ID and f.BASE_DEPT_ID =u.BASE_DEPT_ID',
'where f.EVENT_ID = :P194_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  and u.BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P194_TEMP_MAIN_ORG_ID,P194_FAB_ID,P194_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146081982258912979)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P194_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'')',
' and EXT_USER_ID =:P194_ABNORMAL_ANALYSIS_USER',
' and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID',
' and BASE_DEPT_ID =:BASE_DEPT_ID;'))
,p_attribute_07=>'P194_ABNORMAL_ANALYSIS_USER,P194_TEMP_MAIN_ORG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146082431311912980)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_P194_SECONDARY_USER_IDS,P194_TEMP_P194_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(EXT_USER_ID,'',''),listagg( name,'','')  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID',
'and EXT_USER_ID in (select * from table(SPLITSTR(:P194_SECONDARY_USER,'',''))) ;'))
,p_attribute_07=>'P194_SECONDARY_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146082962153912980)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_AUDIT_USER_ID,P194_TEMP_AUDIT_USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  EXT_USER_ID,EXT_ORG_NAME || ''-'' || name  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'') and BASE_DEPT_ID= :BASE_DEPT_ID',
'and EXT_USER_ID =:P194_AUDIT_USER and EXT_ORG_ID=:P194_TEMP_MAIN_ORG_ID;;'))
,p_attribute_07=>'P194_AUDIT_USER,P194_TEMP_MAIN_ORG_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146083526538912980)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function create_images(images, static_id) {',
'    if (images) {',
'',
'        var arr_image = images.split('','');',
'        for (var i = 0; i < arr_image.length; i < i++) {',
'',
'            var img = new Image();',
'            img.src = arr_image[i];',
'            img.width = 260;',
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
'',
'if ($v(''P194_STATUS'') != ''WAIT'') {',
'    apex.item(''P194_ABNORMAL_ANALYSIS_USER'').setValue($v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'    apex.item(''P194_SECONDARY_USER'').setValue($v(''P194_TEMP_P194_SECONDARY_USER_IDS'').split('',''), $v(''P194_TEMP_P194_SECONDARY_USER_NAMES'').split('',''), true);',
'    apex.item(''P194_AUDIT_USER'').setValue($v(''P194_TEMP_AUDIT_USER_ID''), $v(''P194_TEMP_AUDIT_USER_NAME''), true);',
'',
'    create_images($v(''P194_WHY5_ANALYSIS_IMAGE''), ''div_1'');',
'    create_images($v(''P194_ABNORMAL_PROBLEM_IMAGE''), ''div_2'');',
'    create_images($v(''P194_PROCESS_ANALYSIS_IMAGE''), ''div_3'');',
'    create_images($v(''P194_IMPROVE_METHOD_IMAGE''), ''div_4'');',
'    create_images($v(''P194_FUNCTION_NAME_IMAGE''), ''div_5'');',
'    create_images($v(''P194_DEVICE_KEY_IMAGE''), ''div_6'');',
'    create_images($v(''P194_STRUCTURAL_PRINCIPLE_IMAGE''), ''div_7'');',
'    create_images($v(''P194_DAILY_MAINTAIN_IMAGE''), ''div_8'');',
'}',
'',
'apex.item(''P194_MAIN_RESPONSIBLE_USER'').setValue($v(''P194_TEMP_MAIN_RESPONSIBLE_USER_ID''), $v(''P194_TEMP_MAIN_RESPONSIBLE_USER_NAME''), true);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146085515057912981)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P194_STATUS'') == ''WAIT'') {',
'',
'    console.log($v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_ID''));',
'    console.log($v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME''));',
'    // apex.item(''P194_ABNORMAL_ANALYSIS_USER'').setValue($v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_ID'').split('',''), $v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME'').split('',''), true);',
'    apex.item(''P194_ABNORMAL_ANALYSIS_USER'').setValue($v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P194_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'',
'}'))
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P194_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146079516940912978)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P194_TEMP_MAIN_RESPONSIBLE_USER_NAME,P194_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_USER_DEPT_MAIN_ASSO_V u on f.EXT_USER_ID = u.EXT_USER_ID AND f.BASE_DEPT_ID =u.BASE_DEPT_ID',
'where f.EVENT_ID = :P194_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and f.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  and u.BASE_DEPT_ID =:BASE_DEPT_ID;',
'',
''))
,p_attribute_07=>'P194_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146083936439912981)
,p_event_id=>wwv_flow_imp.id(2146077480901912976)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2250842622541224626)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146085898465912981)
,p_name=>unistr('upload 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>20
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269914615114733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146086420115912982)
,p_event_id=>wwv_flow_imp.id(2146085898465912981)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            why5_analysis_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146086875698912982)
,p_event_id=>wwv_flow_imp.id(2146085898465912981)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(why5_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146087248741912982)
,p_name=>unistr('upload \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269111008114725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146087797056912983)
,p_event_id=>wwv_flow_imp.id(2146087248741912982)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            abnormal_problem_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146088263977912983)
,p_event_id=>wwv_flow_imp.id(2146087248741912982)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(abnormal_problem_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146088630439912983)
,p_name=>unistr('upload \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269008239114724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146089136578912983)
,p_event_id=>wwv_flow_imp.id(2146088630439912983)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            process_analysis_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146089718332912984)
,p_event_id=>wwv_flow_imp.id(2146088630439912983)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(process_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146090033180912984)
,p_name=>unistr('upload \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269977199114734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146090579146912984)
,p_event_id=>wwv_flow_imp.id(2146090033180912984)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            improve_method_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146091103786912984)
,p_event_id=>wwv_flow_imp.id(2146090033180912984)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(improve_method_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146091503411912985)
,p_name=>unistr('upload \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>60
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270910460114743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146091969196912985)
,p_event_id=>wwv_flow_imp.id(2146091503411912985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            function_name_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146092456435912985)
,p_event_id=>wwv_flow_imp.id(2146091503411912985)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(function_name_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146092921351912985)
,p_name=>unistr('upload \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>70
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270974562114744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146093424878912986)
,p_event_id=>wwv_flow_imp.id(2146092921351912985)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            analysis_key_components_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146093924602912986)
,p_event_id=>wwv_flow_imp.id(2146092921351912985)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(analysis_key_components_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146094250889912986)
,p_name=>unistr('upload \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>80
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271058849114745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146094742233912987)
,p_event_id=>wwv_flow_imp.id(2146094250889912986)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            structural_principle_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146095282030912987)
,p_event_id=>wwv_flow_imp.id(2146094250889912986)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(structural_principle_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146095716509912987)
,p_name=>unistr('upload \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>90
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271175262114746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-added-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146096142536912987)
,p_event_id=>wwv_flow_imp.id(2146095716509912987)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_NUM = 3;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
unistr('        //\53EA\5141\8BB8\4E0A\4F20max\5F20\56FE\7247'),
'        if (gte(htmlContext.length, MAX_NUM)) return;',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(result);',
'            daily_maintain_images.set(url, result.name);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (gte(file.size, MAX_SIZE)) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    const upDataSingleImages = (images, htmlContext) => {',
'        images.forEach((image) => {',
'            upDataSingleImage(image, htmlContext)',
'        });',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        if (gte(htmlContext.length, MAX_NUM)) {',
unistr('            console.warn(''\56FE\7247\5DF2\8D85\51FA\6570\91CF'');'),
'            return;',
'        }',
'        isArray(images) ? upDataSingleImages(images, htmlContext) : upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146096709075912988)
,p_event_id=>wwv_flow_imp.id(2146095716509912987)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function getOssConfig(appKey, appSecret, callback) {',
'    $.ajax({',
'        type: ''get'',',
'        dataType: ''json'',',
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
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
'getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage([file], []));',
'console.log(daily_maintain_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146097117148912988)
,p_name=>unistr('delete 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>100
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269914615114733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146097609656912988)
,p_event_id=>wwv_flow_imp.id(2146097117148912988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'why5_analysis_images.delete(file_id + file_name);',
'console.log(why5_analysis_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146097991706912988)
,p_name=>unistr('delete \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>110
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269111008114725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146098513381912988)
,p_event_id=>wwv_flow_imp.id(2146097991706912988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'abnormal_problem_images.delete(file_id + file_name);',
'console.log(abnormal_problem_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146098847450912988)
,p_name=>unistr('delete \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>120
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269008239114724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146099398653912989)
,p_event_id=>wwv_flow_imp.id(2146098847450912988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'process_analysis_images.delete(file_id + file_name);',
'console.log(process_analysis_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146099749660912989)
,p_name=>unistr('delete \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>130
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269977199114734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146100297100912989)
,p_event_id=>wwv_flow_imp.id(2146099749660912989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'improve_method_images.delete(file_id + file_name);',
'console.log(improve_method_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146100699556912989)
,p_name=>unistr('delete \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>140
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270910460114743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146101194390912990)
,p_event_id=>wwv_flow_imp.id(2146100699556912989)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'function_name_images.delete(file_id + file_name);',
'console.log(function_name_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146101569593912990)
,p_name=>unistr('delete \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>150
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270974562114744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146102122607912990)
,p_event_id=>wwv_flow_imp.id(2146101569593912990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'analysis_key_components_images.delete(file_id + file_name);',
'console.log(analysis_key_components_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146102514906912990)
,p_name=>unistr('delete \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>160
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271058849114745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146102932725912990)
,p_event_id=>wwv_flow_imp.id(2146102514906912990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'structural_principle_images.delete(file_id + file_name);',
'console.log(structural_principle_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146103422234912990)
,p_name=>unistr('delete \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>170
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271175262114746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-deleted-file'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146103867348912991)
,p_event_id=>wwv_flow_imp.id(2146103422234912990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//\5220\9664 map \5143\7D20'),
'',
'// console.log(this.data);',
'',
'var obj = JSON.parse(JSON.stringify(this.data));',
'var file_id = obj.id;',
'// console.log(obj.id);',
'// console.log(obj.xhr.responseText);',
'var message = JSON.parse(obj.xhr.responseText).message;',
'var file_name = message.substring(message.indexOf(''File '') + 5, message.indexOf('' successfully''));',
'daily_maintain_images.delete(file_id + file_name);',
'console.log(daily_maintain_images);',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146104284927912991)
,p_name=>unistr('upload success 5Why\6839\6E90\5206\6790 \56FE\7247')
,p_event_sequence=>180
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269914615114733)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146104826378912991)
,p_event_id=>wwv_flow_imp.id(2146104284927912991)
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
'why5_analysis_images.forEach(function (value, key) {',
'',
'    if (value == file_name) {',
'        why5_analysis_images.delete(key);',
'        why5_analysis_images.set((file_id + file_name), key);',
'    }',
'',
'});',
'console.log(why5_analysis_images);',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146105143856912991)
,p_name=>unistr('upload success \5F02\5E38\63CF\8FF0 \56FE\7247')
,p_event_sequence=>190
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269111008114725)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146105720214912991)
,p_event_id=>wwv_flow_imp.id(2146105143856912991)
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
 p_id=>wwv_flow_imp.id(2146106065348912992)
,p_name=>unistr('upload success \5904\7406\8FC7\7A0B\5206\6790 \56FE\7247')
,p_event_sequence=>200
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269008239114724)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146106604289912992)
,p_event_id=>wwv_flow_imp.id(2146106065348912992)
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
 p_id=>wwv_flow_imp.id(2146106935740912992)
,p_name=>unistr('upload success \6539\5584\63AA\65BD \56FE\7247')
,p_event_sequence=>210
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255269977199114734)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146107448453912992)
,p_event_id=>wwv_flow_imp.id(2146106935740912992)
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
 p_id=>wwv_flow_imp.id(2146107905497912992)
,p_name=>unistr('upload success \540D\79F0/\529F\80FD\4ECB\7ECD \56FE\7247')
,p_event_sequence=>220
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270910460114743)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146108361550912992)
,p_event_id=>wwv_flow_imp.id(2146107905497912992)
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
 p_id=>wwv_flow_imp.id(2146108764812912993)
,p_name=>unistr('upload success \5173\952E\5668\4EF6\5206\6790 \56FE\7247')
,p_event_sequence=>230
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255270974562114744)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146109230439912993)
,p_event_id=>wwv_flow_imp.id(2146108764812912993)
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
 p_id=>wwv_flow_imp.id(2146109686101912993)
,p_name=>unistr('upload success \7ED3\6784\539F\7406\5206\6790 \56FE\7247')
,p_event_sequence=>240
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271058849114745)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146110222519912993)
,p_event_id=>wwv_flow_imp.id(2146109686101912993)
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
 p_id=>wwv_flow_imp.id(2146110575127912993)
,p_name=>unistr('upload success \65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\65F6\9700\6CE8\610F \56FE\7247')
,p_event_sequence=>250
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2255271175262114746)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'PLUGIN_DE.DANIELH.DROPZONE2|REGION TYPE|dropzone-upload-success'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146111069258912993)
,p_event_id=>wwv_flow_imp.id(2146110575127912993)
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
 p_id=>wwv_flow_imp.id(2146111451137912994)
,p_name=>unistr('\63D0\4EA4')
,p_event_sequence=>260
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146073057525912962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146113985368912996)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P194_MAIN_RESPONSIBLE_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\4E3B\8D1F\8D23\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_ABNORMAL_ANALYSIS_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5F02\5E38\5206\6790\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_SECONDARY_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\534F\52A9\4EBA\5458'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_AUDIT_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\4E8B\4EF6\540D\79F0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_CREATED_TIME''))) {',
unistr('    alert(''\4E0A\62A5\65F6\95F4\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_WHY5_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\51655why\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_ABNORMAL_PROBLEM_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5F02\5E38\63CF\8FF0'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_PROCESS_ANALYSIS_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5904\7406\8FC7\7A0B\5206\6790\5185\5BB9'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P194_FUNCTION_NAME_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\540D\79F0/\529F\80FD\63CF\8FF0'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P194_DEVICE_KEY_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\5173\952E\5668\4EF6\5206\6790'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_STRUCTURAL_PRINCIPLE_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\7ED3\6784\539F\7406\5185\5BB9'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_DAILY_MAINTAIN_CONTENT''))) {',
unistr('    alert(''\8BF7\8F93\5165\65E5\5E38\4FDD\517B/\7EF4\62A4\5185\5BB9'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P194_AUDIT_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P194_AUDIT_USER''))) {',
unistr('    alert(''\8BF7\9009\62E9\5BA1\6838\4EBA'');'),
'    return false;',
'}',
'',
'if(Array.from(why5_analysis_images.values()).length>2){',
unistr('    alert(''5Why\6839\6E90\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if(Array.from(abnormal_problem_images.values()).length>2){',
unistr('    alert(''\5F02\5E38\63CF\8FF0\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if(Array.from(process_analysis_images.values()).length>2){',
unistr('    alert(''\5904\7406\8FC7\7A0B\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if(Array.from(improve_method_images.values()).length>2){',
unistr('    alert(''\6539\5584\63AA\65BD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if(Array.from(function_name_images.values()).length>2){',
unistr('    alert(''\540D\79F0/\529F\80FD\4ECB\7ECD\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if(Array.from(analysis_key_components_images.values()).length>2){',
unistr('    alert(''\5173\952E\5668\4EF6\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E24\5F20'');'),
'    return false;',
'}',
'if(Array.from(structural_principle_images.values()).length>2){',
unistr('    alert(''\7ED3\6784\539F\7406\5206\6790\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
'    return false;',
'}',
'if(Array.from(daily_maintain_images.values()).length>2){',
unistr('    alert(''\65E5\5E38\7EF4\62A4\4FDD\517B/\7EF4\62A4\56FE\7247\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\5F20'');'),
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
'$s(''P194_WHY5_ANALYSIS_IMAGE'', Array.from(why5_analysis_images.values()));',
'$s(''P194_ABNORMAL_PROBLEM_IMAGE'', Array.from(abnormal_problem_images.values()));',
'$s(''P194_PROCESS_ANALYSIS_IMAGE'', Array.from(process_analysis_images.values()));',
'$s(''P194_IMPROVE_METHOD_IMAGE'', Array.from(improve_method_images.values()));',
'$s(''P194_FUNCTION_NAME_IMAGE'', Array.from(function_name_images.values()));',
'$s(''P194_DEVICE_KEY_IMAGE'', Array.from(analysis_key_components_images.values()));',
'$s(''P194_STRUCTURAL_PRINCIPLE_IMAGE'', Array.from(structural_principle_images.values()));',
'$s(''P194_DAILY_MAINTAIN_IMAGE'', Array.from(daily_maintain_images.values()));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146114462146912997)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
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
'',
'select count(EVENT_ID)',
'into v_count',
'from TENANT_EVENT_REVIEW',
'where EVENT_ID = :P194_EVENT_ID',
'and TENANT_ID = V(''USERTENANT'')',
'and BASE_DEPT_ID =:BASE_DEPT_ID;',
'if v_count = 0 then',
'insert into TENANT_EVENT_REVIEW(event_id, created_time, end_time, audit_state, audit_user, main_responsible_user, abnormal_analysis_user, secondary_user,',
'                            why5_analysis_content, why5_analysis_image, abnormal_problem_content, abnormal_problem_image, process_analysis_content, process_analysis_image, improve_method_content,',
'                            improve_method_image, function_name_content, function_name_image, device_key_content, device_key_image, structural_principle_content, structural_principle_image,',
'                            daily_maintain_content, daily_maintain_image, creation_date, created_by, tenant_id,PDF_URL,BASE_DEPT_ID)',
'values (:P194_EVENT_ID, to_date(:P194_CREATED_TIME, ''YYYY-MM-DD HH24:MI:SS''),to_date(:P194_END_TIME, ''YYYY-MM-DD HH24:MI:SS''), ''WAIT'', :P194_AUDIT_USER, :P194_MAIN_RESPONSIBLE_USER,',
'    :P194_ABNORMAL_ANALYSIS_USER,',
'    :P194_SECONDARY_USER, :P194_WHY5_ANALYSIS_CONTENT, :P194_WHY5_ANALYSIS_IMAGE,',
'    :P194_ABNORMAL_PROBLEM_CONTENT,',
'    :P194_ABNORMAL_PROBLEM_IMAGE, :P194_PROCESS_ANALYSIS_CONTENT, :P194_PROCESS_ANALYSIS_IMAGE,',
'    :P194_IMPROVE_METHOD_CONTENT, :P194_IMPROVE_METHOD_IMAGE, :P194_FUNCTION_NAME_CONTENT,',
'    :P194_FUNCTION_NAME_IMAGE,',
'    :P194_DEVICE_KEY_CONTENT, :P194_DEVICE_KEY_IMAGE, :P194_STRUCTURAL_PRINCIPLE_CONTENT,',
'    :P194_STRUCTURAL_PRINCIPLE_IMAGE,',
'    :P194_DAILY_MAINTAIN_CONTENT, :P194_DAILY_MAINTAIN_IMAGE, sysdate, V(''USERID''), V(''USERTENANT''),:P194_PDF_URL,:BASE_DEPT_ID);',
'row_count := SQL%ROWCOUNT;',
'else',
'update TENANT_EVENT_REVIEW',
'set AUDIT_USER=:P194_AUDIT_USER,',
'audit_state=''AUDIT'',',
'MAIN_RESPONSIBLE_USER=:P194_MAIN_RESPONSIBLE_USER,',
'ABNORMAL_ANALYSIS_USER=:P194_ABNORMAL_ANALYSIS_USER,',
'SECONDARY_USER=:P194_SECONDARY_USER,',
'WHY5_ANALYSIS_CONTENT=:P194_WHY5_ANALYSIS_CONTENT,',
'WHY5_ANALYSIS_IMAGE=:P194_WHY5_ANALYSIS_IMAGE,',
'ABNORMAL_PROBLEM_CONTENT=:P194_ABNORMAL_PROBLEM_CONTENT,',
'ABNORMAL_PROBLEM_IMAGE=:P194_ABNORMAL_PROBLEM_IMAGE,',
'PROCESS_ANALYSIS_CONTENT=:P194_PROCESS_ANALYSIS_CONTENT,',
'PROCESS_ANALYSIS_IMAGE=:P194_PROCESS_ANALYSIS_IMAGE,',
'IMPROVE_METHOD_CONTENT=:P194_IMPROVE_METHOD_CONTENT,',
'IMPROVE_METHOD_IMAGE=:P194_IMPROVE_METHOD_IMAGE,',
'FUNCTION_NAME_CONTENT=:P194_FUNCTION_NAME_CONTENT,',
'FUNCTION_NAME_IMAGE=:P194_FUNCTION_NAME_IMAGE,',
'DEVICE_KEY_CONTENT=:P194_DEVICE_KEY_CONTENT,',
'DEVICE_KEY_IMAGE=:P194_DEVICE_KEY_IMAGE,',
'STRUCTURAL_PRINCIPLE_CONTENT=:P194_STRUCTURAL_PRINCIPLE_CONTENT,',
'STRUCTURAL_PRINCIPLE_IMAGE=:P194_STRUCTURAL_PRINCIPLE_IMAGE,',
'DAILY_MAINTAIN_CONTENT=:P194_DAILY_MAINTAIN_CONTENT,',
'DAILY_MAINTAIN_IMAGE=:P194_DAILY_MAINTAIN_IMAGE,',
'UPDATE_DATE=sysdate,',
'UPDATED_BY=V(''USERID''),',
'PDF_URL=:P194_PDF_URL,',
'AUDIT_NAME=:P194_AUDIT_NAME',
'where EVENT_ID = :P194_EVENT_ID and TENANT_ID = V(''USERTENANT'') and BASE_DEPT_ID =:BASE_DEPT_ID;',
'row_count := SQL%ROWCOUNT;',
'end if;',
'apex_util.set_session_state(''P194_ROW_COUNT'', row_count);    ',
'EXCEPTION',
'WHEN',
'OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('--\5199\5165\5F02\5E38\65E5\5FD7'),
'JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'apex_util.set_session_state(''P194_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P194_EVENT_ID,P194_CREATED_TIME,P194_END_TIME,P194_AUDIT_USER,P194_MAIN_RESPONSIBLE_USER,P194_ABNORMAL_ANALYSIS_USER,P194_SECONDARY_USER,P194_WHY5_ANALYSIS_CONTENT,P194_WHY5_ANALYSIS_IMAGE,P194_ABNORMAL_PROBLEM_CONTENT,P194_ABNORMAL_PROBLEM_IMAGE,P19'
||'4_PROCESS_ANALYSIS_CONTENT,P194_PROCESS_ANALYSIS_IMAGE,P194_IMPROVE_METHOD_CONTENT,P194_IMPROVE_METHOD_IMAGE,P194_FUNCTION_NAME_CONTENT,P194_FUNCTION_NAME_IMAGE,P194_DEVICE_KEY_CONTENT,P194_DEVICE_KEY_IMAGE,P194_STRUCTURAL_PRINCIPLE_CONTENT,P194_STRU'
||'CTURAL_PRINCIPLE_IMAGE,P194_DAILY_MAINTAIN_CONTENT,P194_DAILY_MAINTAIN_IMAGE,P194_PDF_URL,P194_AUDIT_NAME'
,p_attribute_03=>'P194_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146114978865912997)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P194_ROW_COUNT'')>0){',
unistr('   alert(''\63D0\4EA4\6210\529F'');'),
'   window.location.href="f?p=&APP_ID.:162:&APP_SESSION.:::::";',
'   return true;',
'}else{',
unistr('    alert(''\63D0\4EA4\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146112985940912995)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
,p_event_result=>'TRUE'
,p_action_sequence=>40
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
'var reg = new RegExp(''-'',''g'')',
'var texts = $v(''P194_CREATED_TIME'').split('' '')',
'var beginTimeText = texts[0].replace(reg,'''').slice(2)',
'beginTimeDom.innerHTML = beginTimeText',
'fabNameDom.innerHTML = $v(''P194_FAB_NAME'')',
'areaNameDom.innerHTML = $v(''P194_MAP_AREA_X_NAME'')',
unistr('// \6682\65E0'),
unistr('deviceNameDom.innerHTML = ''\8BBE\5907\540D\79F0'''),
'secondEventNameDom.innerHTML = $v(''P194_SECOND_EVENT_CATEGORY_NAME'')',
'',
'',
'function whenTime(beginTime,endTime) {',
'    var beginTimeData = new Date(beginTime)',
'    var endTimeData = new Date(endTime)',
'    var format = ''YYYY-MM-DD hh:mm'',',
unistr('        useTime = medash.diff(beginTimeData,endTimeData,{hour:''\65F6'',minute:''\5206'',concat:''''})'),
'    return medash.getCalender(beginTimeData, format)+''~''+medash.getCalender(endTimeData, format)',
'        +''(''+useTime+'')''',
'}',
'faultWhenDom.innerHTML = whenTime($v(''P194_FAULT_TIME''),$v(''P194_END_TIME''))',
unistr('faultWhereDom.innerHTML = $v(''P194_FAB_NAME'')+ ''-''+ $v(''P194_MAP_AREA_X_NAME'')+''-''+''\8BBE\5907\7F16\53F7'''),
unistr('submitExtUserNameDom.innerHTML = ''\4E0A\62A5\90E8\95E8''+''-''+$v(''P194_SUBMIT_NAME'')'),
unistr('handleUsersDom.innerHTML = ''\54A9\6709'''),
'analysisExtUserNameDom.innerHTML = $v(''P194_ABNORMAL_ANALYSIS_USER'')',
'auditNameDom.innerHTML = $v(''P194_AUDIT_NAME'')',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146113475905912996)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
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
'function getImages(imageMap,imagesDom) {',
'    var mapToList = [...imageMap]',
'    mapToList.forEach(val=>{',
'        var img = document.createElement(''img'')',
'        img.src = val[1]',
'        img.crossOrigin = ''anonymous''',
'        imagesDom.appendChild(img)',
'    })',
'}',
'',
'abnormalProblemContentDom.innerHTML = $v(''P194_ABNORMAL_PROBLEM_CONTENT'')',
'getImages(abnormal_problem_images,abnormalProblemImagesDom)',
'processAnalysisContentDom.innerHTML = $v(''P194_PROCESS_ANALYSIS_CONTENT'')',
'getImages(process_analysis_images,processAnalysisImagesDom)',
'why5AnalysisContentDom.innerHTML = $v(''P194_WHY5_ANALYSIS_CONTENT'')',
'getImages(why5_analysis_images,why5AnalysisImagesDom)',
'improveMethodContentDom.innerHTML = $v(''P194_IMPROVE_METHOD_CONTENT'')',
'getImages(improve_method_images,improveMethodImagesDom)',
'',
'functionNameContentDom.innerHTML = $v(''P194_FUNCTION_NAME_CONTENT'')',
'getImages(function_name_images,functionNameImagesDom)',
'structuralPrincipleContentDom.innerHTML = $v(''P194_STRUCTURAL_PRINCIPLE_CONTENT'')',
'getImages(structural_principle_images,structuralPrincipleImagesDom)',
'deviceKeyContentDom.innerHTML = $v(''P194_DEVICE_KEY_CONTENT'')',
'getImages(analysis_key_components_images,deviceKeyImagesDom)',
'dailyMaintainContentDom.innerHTML = $v(''P194_DAILY_MAINTAIN_CONTENT'')',
'getImages(daily_maintain_images,dailyMaintainImagesDom)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146112471082912994)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'createEnvironment = (config) => {',
'    const MAX_SIZE = 1024 * 1024 * 2;',
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
'    const upDataImage = async (result, htmlContext) => {',
'        const { formData, data } = await getFormData(result);',
'        const url = await fileUpdate({ url: data.host, formData, fileName: formData.get(''key'') });',
'        url ? htmlContext.push({ url }) : null;',
'    ',
'        if (url) {',
'            console.log(''url: ''+url);',
'            // why5_analysis_images.set(url, result.name);',
'            $s(''P194_PDF_URL'',url);',
'        }',
'    }',
'',
'    const upDataSingleImage = (file, htmlContext) => {',
'        if (file.size===MAX_SIZE) {',
'            Promise.resolve().then(() => {',
unistr('                //\538B\7F29'),
'                new window.Compressor(file, {',
'                    success(result) {',
'                        upDataImage(result, htmlContext);',
'                    }',
'                });',
'            })',
'            return;',
'        }',
'        upDataImage(file, htmlContext);',
'    }',
'',
'    /**',
unistr('     * images(File|File[]):\56FE\7247'),
unistr('     * htmlContext(Array): \7528\4E8E\5B58\50A8\4E0A\4F20\56FE\7247\540E\7684\751F\6210\7684\94FE\63A5'),
'     */',
'    return (images, htmlContext) => {',
'        upDataSingleImage(images, htmlContext);',
'    }',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146111939261912994)
,p_event_id=>wwv_flow_imp.id(2146111451137912994)
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
'        let imgHeight = 3240',
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
'    getOssConfig(''&APPKEY.'', ''&APPSECRET.'', () => updateImage(fileObj, []));',
'',
'    if (utils.checkNull($s(''P194_PDF_URL''))) {',
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
'        url: ''https://gateway_test.ywjasolar.com/basic/api/aliyun/oss/config'',',
'        headers: {',
'            ''appKey'': appKey,',
'            ''appSecret'': appSecret',
'        },',
'        success: function (data, textStatus, jqXHR) {',
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
 p_id=>wwv_flow_imp.id(2146115395897912998)
,p_name=>unistr('\8FD4\56DE')
,p_event_sequence=>270
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146072683853912962)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146115922540912998)
,p_event_id=>wwv_flow_imp.id(2146115395897912998)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P194_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146116306709912998)
,p_name=>unistr('\8FD4\56DE1')
,p_event_sequence=>280
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146073774139912963)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146116819744912998)
,p_event_id=>wwv_flow_imp.id(2146116306709912998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P194_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146117219926912998)
,p_name=>unistr('\8FD4\56DE2')
,p_event_sequence=>290
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146074887508912964)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146117666518912999)
,p_event_id=>wwv_flow_imp.id(2146117219926912998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P194_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146118083683912999)
,p_name=>unistr('\8FD4\56DE3')
,p_event_sequence=>300
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146042089239912937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146118554053912999)
,p_event_id=>wwv_flow_imp.id(2146118083683912999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.navigation.redirect("f?p=&APP_ID.:"+$v("P194_PAGE_ID")+":&APP_SESSION.:::::");'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146118943916912999)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>310
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146119452387912999)
,p_event_id=>wwv_flow_imp.id(2146118943916912999)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.reload();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146075654101912974)
,p_name=>unistr('\786E\8BA4\63D0\4EA4\5BA1\6838')
,p_event_sequence=>320
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146040958892912930)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146076188599912975)
,p_event_id=>wwv_flow_imp.id(2146075654101912974)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    row_count number(10) := 0;',
'    v_count   number(10) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    ',
'begin',
'',
'    select count(EVENT_ID)',
'    into v_count',
'    from TENANT_EVENT_REVIEW',
'    where EVENT_ID = :P194_EVENT_ID',
'      and TENANT_ID = V(''USERTENANT'')',
'      and BASE_DEPT_ID =:BASE_DEPT_ID;',
'    if v_count = 1 then',
'',
'        update TENANT_EVENT_REVIEW',
'        set PDF_URL=:P194_PDF_URL',
'        where EVENT_ID = :P194_EVENT_ID',
'          and TENANT_ID = V(''USERTENANT'')',
'          and BASE_DEPT_ID =:BASE_DEPT_ID;',
'        row_count := SQL%ROWCOUNT;',
'',
'    end if;',
'',
'    apex_util.set_session_state(''P194_ROW_COUNT'', row_count);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P194_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P194_EVENT_ID,P194_PDF_URL'
,p_attribute_03=>'P194_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2146076610833912976)
,p_name=>unistr('\53D6\6D88\5BA1\6838')
,p_event_sequence=>330
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2146041395071912932)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2146077118603912976)
,p_event_id=>wwv_flow_imp.id(2146076610833912976)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var previewBoxDom = document.getElementsByClassName(''preview-box'')[0]',
'previewBoxDom.style.display = ''none'''))
);
wwv_flow_imp.component_end;
end;
/

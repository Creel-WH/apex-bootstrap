prompt --application/pages/page_00305
begin
--   Manifest
--     PAGE: 00305
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
 p_id=>305
,p_name=>unistr('\67E5\770B\660E\7EC6')
,p_alias=>unistr('\67E5\770B\660E\7EC6')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\67E5\770B\660E\7EC6')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(237278569520685912)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
'#APP_FILES#bootstrap.bundle.min.js',
'#APP_FILES#lightbox.js',
'-- #WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
'',
unistr('-- <!-- \5F15\5165jQuery\5E93 -->'),
'-- <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>',
'',
unistr('-- <!-- \5F15\5165jQuery Zoom\63D2\4EF6 -->'),
'-- <script src="path/to/jquery.zoom.min.js"></script>',
'',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \6362\884C\FF08\4F3C\4E4E\5931\6548\4E86\FF09'),
'var configItemId = apex.item("P305_CONFIG_ITEM_IDS").getValue();',
'var itemName = apex.item("P305_ITEM_NAMES").getValue();',
'',
'var html = `',
unistr('<h4>\53D8\66F4\70B9\8BB0\5F55</h4>'),
unistr('<p>\53D8\66F4\9879\63CF\8FF02222\FF1A${itemName}</p>'),
unistr('<p>\586B\5199\5185\5BB92222\FF1A ${configItemId}</p>'),
'`;',
'$(''#order_div'').append(html);',
'',
'',
unistr('// //\901A\7528\7684\65B9\6CD5'),
'// function toBigImg() {',
unistr('//     $(".opacityBottom").addClass("opacityBottom");//\6DFB\52A0\906E\7F69\5C42'),
'//     $(".opacityBottom").show();',
unistr('//     $("html,body").addClass("none-scroll");//\4E0B\5C42\4E0D\53EF\6ED1\52A8'),
unistr('//     $(".bigImg").addClass("bigImg");//\6DFB\52A0\56FE\7247\6837\5F0F'),
unistr('//     $(".opacityBottom").click(function () {//\70B9\51FB\5173\95ED'),
'//         $("html,body").removeClass("none-scroll");',
'//         $(".opacityBottom").remove();',
'//     });',
'// }',
'',
unistr('// //\5728\7EBF\9884\89C8\56FE\7247'),
'// function openImg(fileName) {',
'//     var opacityBottom = ''<div class="opacityBottom" style = "display:none"><img width="70%" class="bigImg" src="'' + fileName + ''"></div>'';',
'//     $(document.body).append(opacityBottom);',
'//     toBigImg();',
'// }',
''))
,p_css_file_urls=>'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/* \70B9\51FB\653E\5927\7684\6BD4\7387 */'),
'img{',
'    width: 90%;',
'    /* height: 50%; */',
'}',
'',
unistr('/*\70B9\51FB\4E0A\4F20\7684\6587\4EF6\FF08\56FE\7247\5168\5C4F\653E\5927\FF09start*/'),
'.bigImg {',
'    position: absolute;',
'    top: 50%;',
'    left: 50%;',
unistr('    /*\56FE\7247\5411\5DE6\79FB\52A8\81EA\8EAB\5BBD\5EA6\768450%, \5411\4E0A\79FB\52A8\81EA\8EAB\9AD8\5EA6\768450%\3002*/'),
'    transform: translate(-50%,-50%);',
'}',
unistr('/*\906E\7F69\5C42*/'),
'.opacityBottom {',
'    width: 100%;',
'    height: 100%;',
'    position: fixed;',
'    background: rgba(0,0,0,0.8);',
'    z-index: 1000;',
'    top: 0;',
'    left: 0;',
'}',
'',
unistr('/* \53D8\66F4\70B9\8BB0\5F55\6362\884C WXX */'),
'.item-details {',
'  white-space: pre-wrap;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(239208779524549732)
,p_plug_name=>unistr('\56FE\7247\56DE\663E')
,p_region_name=>'log'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>140
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_column=>3
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(239211299967549758)
,p_plug_name=>unistr('\5C55\793A')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>150
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238701644405689370)
,p_name=>'P305_RECORD_ID'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238701776037689371)
,p_name=>'P305_RECORD_DATE'
,p_item_sequence=>90
,p_prompt=>unistr('\8BB0\5F55\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238701824882689372)
,p_name=>'P305_RECORD_USER'
,p_item_sequence=>80
,p_prompt=>unistr('\8BB0\5F55\4EBA\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238701937847689373)
,p_name=>'P305_ITEM_NAME'
,p_item_sequence=>110
,p_prompt=>unistr('\53D8\66F4\70B9\8BB0\5F55\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'format', 'HTML',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702065107689374)
,p_name=>'P305_CONFIG_ITEM_ID'
,p_item_sequence=>100
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702175615689375)
,p_name=>'P305_REMARK'
,p_item_sequence=>130
,p_prompt=>unistr('\5907\6CE8\FF1A')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702248684689376)
,p_name=>'P305_IMAGES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(239208779524549732)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702336030689377)
,p_name=>'P305_EFFECT_MINUTE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(239211299967549758)
,p_prompt=>unistr('\5F71\54CD\65F6\95F4\FF1A')
,p_post_element_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<!DOCTYPE html>',
'<html>',
'<head>',
'<style>',
'  .bold-minute {',
unistr('    font-size: 16px; /* \8BBE\7F6E\5B57\4F53\5927\5C0F */'),
unistr('    font-weight: bold; /* \8BBE\7F6E\5B57\4F53\52A0\7C97 */'),
'  }',
'</style>',
'</head>',
'<body>',
'',
unistr('<p> <span class="bold-minute">\5206\949F</span></p>'),
'',
'</body>',
'</html>',
''))
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702385007689378)
,p_name=>'P305_DEVICE_CODE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(239211299967549758)
,p_prompt=>unistr('\5E94\7528\8303\56F4\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(238702750986689381)
,p_name=>'P305_COUNT'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(241337735554852445)
,p_name=>'P305_CONFIG_ITEM_IDS'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(241337837180852446)
,p_name=>'P305_ITEM_NAMES'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(288721113760874163)
,p_name=>'P305_JIT_IMAGES_SIGN_URL'
,p_item_sequence=>190
,p_item_default=>'select CODE_VALUE from JA_SYSTEM_DICT where APP_ID = 130 and DICT_CODE = ''JIT_IMAGES_SIGN_URL'''
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(238701367826689367)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238701477141689368)
,p_event_id=>wwv_flow_imp.id(238701367826689367)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\83B7\53D6\6570\636E')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_RECORD_ID      NUMBER(20); --\8BB0\5F55\6570\636E'),
'    V_RECORD_DATE    DATE;',
'    V_RECORD_USER    VARCHAR2(200);',
'    V_REMARK         VARCHAR2(4000);',
'    V_EFFECT_MINUTE  NUMBER(20);',
'    V_CONFIG_ITEM_ID VARCHAR2(2000);',
'    V_ITEM_NAME      VARCHAR2(4000);',
'    V_DEVICE_CODE    VARCHAR2(2000);',
unistr('    V_ERR_MSG        NVARCHAR2(1000);--\8BB0\5F55\5F02\5E38'),
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/20 9:28',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \8BBE\7F6E\9ED8\8BA4\503C'),
'     */',
'BEGIN',
unistr('    --\83B7\53D6\6570\636E \53D8\66F4\70B9\8BB0\5F55'),
'    SELECT RECORD_ID,',
'           RECORD_DATE,',
'           RECORD_JOB_NUMBER || ''-'' || RECORD_NAME AS RECORD_USER,',
'           REMARK,',
'           EFFECT_MINUTE',
'    INTO V_RECORD_ID,V_RECORD_DATE,V_RECORD_USER,V_REMARK,V_EFFECT_MINUTE',
'    FROM CHECK_CHANGE_RECORD',
'    WHERE RECORD_ID = :P305_RECORD_ID',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
unistr('  -- \53D8\66F4\70B9\8BB0\5F55\9879 \62FC\63A5\5E76\6362\884C'),
'-- SELECT LISTAGG(CONFIG_ITEM_ID, '', ''), LISTAGG(ITEM_NAME, '', ''|| CHR(13) )',
unistr('SELECT LISTAGG(CONFIG_ITEM_ID, '', ''), LISTAGG(''\53D8\66F4\9879\63CF\8FF0\FF1A'' || ITEM_NAME || '''' || CHR(13) || CHR(10) ||  ''\FF1B<br/>\586B\5199\5185\5BB9\FF1A''|| CONTENT, ''\FF1B<br/>'')'),
'INTO V_CONFIG_ITEM_ID,V_ITEM_NAME',
'FROM CHECK_CHANGE_RECORD_ITEM',
'WHERE RECORD_ID = V_RECORD_ID',
'  AND TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
unistr('    --     \8BB0\5F55\8BBE\5907\8868'),
'    -- SELECT LISTAGG(DEVICE_CODE, '',<br/>'') WITHIN GROUP (ORDER BY DEVICE_CODE)',
'    -- INTO V_DEVICE_CODE',
'    -- FROM CHECK_CHANGE_RECORD_DEVICE',
'    -- WHERE RECORD_ID = V_RECORD_ID',
'    --   AND TENANT_ID = :USERTENANT',
'    --   AND BASE_DEPT_ID = :BASE_DEPT_ID;',
unistr('    -- \8BB0\5F55\8BBE\5907\8868   \5230\8FBE\9875\9762\8FB9\7F18\6362\884C\6362\884C'),
'SELECT LISTAGG(DEVICE_CODE, '', '') WITHIN GROUP (ORDER BY DEVICE_CODE)',
'INTO V_DEVICE_CODE',
'FROM CHECK_CHANGE_RECORD_DEVICE',
'WHERE RECORD_ID = V_RECORD_ID',
'  AND TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'',
'',
unistr('    -- WRITE_LOG(''P305--\521D\59CB\5316\65E5\5FD7\8BE6\60C5'', ''debug'', ''\5C55\793A\9879:''||V_RECORD_ID||''1,''||V_RECORD_DATE||''2,''|| V_RECORD_USER  ||''3,''|| V_REMARK ||''4,''||'),
'    --                                V_EFFECT_MINUTE ||''5,''|| V_CONFIG_ITEM_ID  ||''6,''|| V_ITEM_NAME   ||''7,''|| V_DEVICE_CODE ||''8'', :USER_ID, :USERTENANT);',
unistr('    -- JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\521D\59CB\5316\65E5\5FD7\8BE6\60C5'', ''info'', ''\5C55\793A\9879:''||V_RECORD_ID||''1,''||V_RECORD_DATE||''2,''|| V_RECORD_USER  ||''3,''|| V_REMARK ||''4,''||'),
'    --                                V_EFFECT_MINUTE ||''5,''|| V_CONFIG_ITEM_ID  ||''6,''|| V_ITEM_NAME   ||''7,''|| V_DEVICE_CODE ||''8'', :USER_ID, :USERTENANT,',
'    --                  :APP_NAME || '':'' || :APP_ID);',
'    ',
unistr('    --\8BBE\7F6E\9ED8\8BA4\503C'),
'    APEX_UTIL.SET_SESSION_STATE(''P305_RECORD_ID'', V_RECORD_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_RECORD_DATE'', V_RECORD_DATE);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_RECORD_USER'', V_RECORD_USER);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_REMARK'', V_REMARK);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_EFFECT_MINUTE'', V_EFFECT_MINUTE);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_CONFIG_ITEM_ID'', V_CONFIG_ITEM_ID);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_ITEM_NAME'', V_ITEM_NAME);',
'    APEX_UTIL.SET_SESSION_STATE(''P305_DEVICE_CODE'', V_DEVICE_CODE);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P305_COUNT'', -1);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\521D\59CB\5316\65E5\5FD7\8BE6\60C5'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_attribute_02=>'P305_RECORD_ID'
,p_attribute_03=>'P305_RECORD_DATE,P305_RECORD_USER,P305_REMARK,P305_EFFECT_MINUTE,P305_CONFIG_ITEM_ID,P305_ITEM_NAME,P305_DEVICE_CODE,P305_COUNT,P305_RECORD_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238702518883689379)
,p_event_id=>wwv_flow_imp.id(238701367826689367)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\62FC\63A5\56FE\7247')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_COUNT      NUMBER(20); --\8BB0\5F55\72B6\6001'),
unistr('    V_IMAGES_URL CLOB; --\62FC\63A5\56FE\7247'),
unistr('    V_ERR_MSG    NVARCHAR2(1000); --\8BB0\5F55\5F02\5E38'),
'    L_CLOB CLOB;',
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE: 2024/8/20 10:11',
unistr('     * MODIFY BY:WXX    \62FC\63A5\56FE\7247  (\591A\5F20)'),
'     * MODIFY DATE:2024/8/26 19:11',
unistr('     * DESCRIBE: P305\62FC\63A5\56FE\7247'),
'     */',
'BEGIN',
unistr('    --\62FC\63A5\56FE\7247'),
'    V_IMAGES_URL := ''<FIGURE CLASS="IMAGE">'';',
'    FOR TIME IN ( SELECT IMAGES',
'                  FROM CHECK_CHANGE_RECORD',
'                  WHERE RECORD_ID = :P305_RECORD_ID',
'                    AND TENANT_ID = :USERTENANT',
'                    AND BASE_DEPT_ID = :BASE_DEPT_ID',
'        )',
'        LOOP',
'        IF TIME.IMAGES IS NOT NULL THEN',
'            FOR image_url IN (SELECT REGEXP_SUBSTR(TIME.IMAGES, ''[^,]+'', 1, LEVEL) AS IMAGE_URL',
'                              FROM DUAL',
'                              CONNECT BY LEVEL <= LENGTH(REGEXP_REPLACE(TIME.IMAGES, ''[^,]+'')) + 1)',
'                LOOP',
'                if 	REGEXP_LIKE(image_url.IMAGE_URL, ''^http'') then',
'                    V_IMAGES_URL := V_IMAGES_URL || ''<IMG SRC="'' || image_url.IMAGE_URL || ''" style="width:100px; height:100px;margin:3px;" >'';',
'                else',
'                    apex_web_service.g_request_headers(1).name := ''Content-Type'';',
'                    apex_web_service.g_request_headers(1).value := ''application/json'';',
'                    apex_web_service.g_request_headers(2).name := ''appKey'';',
unistr('                    apex_web_service.g_request_headers(2).value := :P0_APPKEY;-- \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801URL ''awdkSSxxx123okKOKDID3'''),
'                    apex_web_service.g_request_headers(3).name := ''appSecret'';',
unistr('                    apex_web_service.g_request_headers(3).value := :P0_APPSECRET;-- \4F7F\7528\9875\9762\9879\53D8\91CF\66FF\4EE3\786C\7F16\7801URL ''Jf5qaChzZiolklxeIs522Dsd6DiP3'''),
'',
'                    L_CLOB := APEX_WEB_SERVICE.MAKE_REST_REQUEST(',
'                            P_URL => :P305_JIT_IMAGES_SIGN_URL,',
'                            P_HTTP_METHOD => ''GET'',',
'                            P_BODY => ''{ "fileKeys": ["'' || image_url.IMAGE_URL || ''"], ',
'                                       "expireHours": 1}''',
'                              );',
'                    V_IMAGES_URL := V_IMAGES_URL || ''<IMG SRC="'' || image_url.IMAGE_URL || ''" style="width:100px; height:100px;margin:3px;" >'';',
'                end if;',
'',
'                    ',
'                END LOOP;',
'              END IF;',
'        END LOOP;',
'    V_IMAGES_URL := V_IMAGES_URL || ''</FIGURE>'';',
'    APEX_UTIL.SET_SESSION_STATE(''P305_IMAGES'', V_IMAGES_URL);',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_COUNT := -1;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(:APP_PAGE_ALIAS || '':'' || :APP_PAGE_ID || '':\62FC\63A5\56FE\7247'', ''ERROR'', V_ERR_MSG, :USER_ID,'),
'                     :USERTENANT, :APP_NAME ,:APP_ID ,:APP_CODE);',
'END;',
'',
''))
,p_attribute_02=>'P305_RECORD_ID,P305_JIT_IMAGES_SIGN_URL'
,p_attribute_03=>'P305_IMAGES'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(238702624280689380)
,p_event_id=>wwv_flow_imp.id(238701367826689367)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// \521B\5EFA\4E00\4E2A\65B0\7684 div \5143\7D20'),
'var divElement = document.createElement(''div'');',
'',
unistr('// \8BBE\7F6E div \7684\5C5E\6027'),
'divElement.id = ''myDiv'';',
'divElement.className = ''myDivClass'';',
'',
'var imageValue = $v(''P305_IMAGES'');',
'divElement.innerHTML = imageValue;',
'',
unistr('// \5C06 div \6DFB\52A0\5230\6587\6863\4E2D\7684\67D0\4E2A\5143\7D20\4E2D'),
'var container = document.getElementById(''log'');',
'container.appendChild(divElement);',
'',
'const link = document.querySelector(''a''); ',
'',
'if (link) {',
unistr('  link.setAttribute(''target'', ''_blank''); // \6DFB\52A0target="_blank"\5C5E\6027'),
'}',
'',
'',
unistr('// \83B7\53D6\6240\6709\56FE\7247\5143\7D20'),
'var images = document.querySelectorAll(''img'');',
'',
unistr('// \4E3A\6BCF\4E2A\56FE\7247\5143\7D20\6DFB\52A0\70B9\51FB\4E8B\4EF6\76D1\542C\5668'),
'images.forEach(function(image) {',
'    image.addEventListener(''click'', function() {',
unistr('        // \521B\5EFA\6A21\6001\6846\5E76\8BBE\7F6E\5176\5185\5BB9\4E3A\88AB\70B9\51FB\7684\56FE\7247'),
'        var modal = document.createElement(''div'');',
'        modal.style.position = ''fixed'';',
'        modal.style.top = ''0'';',
'        modal.style.left = ''0'';',
'        modal.style.width = ''100%'';',
'        modal.style.height = ''100%'';',
'        modal.style.backgroundColor = ''rgba(0, 0, 0, 0.8)'';',
'        modal.style.display = ''flex'';',
'        modal.style.justifyContent = ''center'';',
'        modal.style.alignItems = ''center'';',
'        modal.style.zIndex = ''9999'';',
'',
'        var modalImage = document.createElement(''img'');',
'        modalImage.src = this.src;',
'        modalImage.style.maxWidth = ''100%'';',
'        modalImage.style.maxHeight = ''100%'';',
'        modalImage.style.borderRadius = ''5px'';',
'        modalImage.style.boxShadow = ''0 4px 6px rgba(0, 0, 0, 0.1)'';',
'',
'        modal.appendChild(modalImage);',
'        document.body.appendChild(modal);',
'',
unistr('        // \70B9\51FB\6A21\6001\6846\5173\95ED\5B83'),
'        modal.addEventListener(''click'', function() {',
'            document.body.removeChild(modal);',
'        });',
'    });',
'});'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(241337635958852444)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\521D\59CB\5316\53D8\66F4\70B9\8BB0\5F55')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    l_config_item_id VARCHAR2(4000);',
'    l_item_name VARCHAR2(4000);',
'BEGIN',
unistr('    SELECT LISTAGG(CONFIG_ITEM_ID, '', ''), LISTAGG(''\53D8\66F4\9879\63CF\8FF0\FF1A'' || ITEM_NAME || '''' || CHR(13) || CHR(10) ||  ''\FF1B   \586B\5199\5185\5BB9\FF1A''|| CONTENT, '', '')'),
'    INTO l_config_item_id, l_item_name',
'    FROM CHECK_CHANGE_RECORD_ITEM',
'    WHERE RECORD_ID = :P305_RECORD_ID',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
'    apex_util.set_session_state(''P305_CONFIG_ITEM_IDS'', l_config_item_id);',
'    apex_util.set_session_state(''P305_ITEM_NAMES'', l_item_name);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>79731452712409913
);
wwv_flow_imp.component_end;
end;
/

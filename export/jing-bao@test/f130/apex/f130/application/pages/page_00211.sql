prompt --application/pages/page_00211
begin
--   Manifest
--     PAGE: 00211
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
 p_id=>211
,p_name=>unistr('\5173\4E8E\6676\8C79\5F39\7A97')
,p_alias=>unistr('\5173\4E8E\6676\8C79\5F39\7A97')
,p_step_title=>unistr('\5173\4E8E\6676\8C79\5F39\7A97')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#editorMd/editorMd/js/editormd.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/marked.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/prettify.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/raphael.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/underscore.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/sequence-diagram.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/flowchart.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/jquery.flowchart.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/codemirror/codemirror.min.js',
'#WORKSPACE_IMAGES#editorMd/editorMd/js/editormd.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var testEditor;',
'// $(function () {',
'//     $("main").append('' <div id="test-editormd"><textarea id="content" style="display:none;" name="markdownContent"></textarea></div>'');',
'//     init();',
'//     console.log($v(''P211_CONTENT''));',
'//     $(''#content'').val($v(''P211_CONTENT''));',
'// })',
'',
'function init() {',
'',
'    // #WORKSPACE_IMAGES#editorMd/editorMd/lib/',
'',
'    testEditor = editormd("test-editormd", {',
'        htmlDecode: "style,script,iframe,sub,sup|on*",',
'        width: "90%",',
'        height: "65%",',
'        emoji: true,',
unistr('        watch: true,//\662F\5426\5F00\542F\9884\89C8\7A97\53E3'),
'        syncScrolling: "single",',
'        // path: "/js/editorMd/lib/",',
'        path: "#WORKSPACE_IMAGES#editorMd/editorMd/lib/",',
'        saveHTMLToTextarea: true,',
'        imageUpload: true,',
'        imageFormats: ["jpg", "jpeg", "gif", "png", "bmp", "webp"],',
'        imageUploadURL: "https://jingbao_api.ywjasolar.com/apex/oss/editor/upload",',
'    });',
'',
'}',
'',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#editorMd/editorMd/css/style.css',
'#WORKSPACE_IMAGES#editorMd/editorMd/css/editormd.css',
'#WORKSPACE_IMAGES#editorMd/editorMd/lib/codemirror/codemirror.min.css'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2152845027647621376)
,p_button_sequence=>210
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2152845043452621377)
,p_button_sequence=>230
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P211_NOTIFY_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_column=>2
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2153409102713829158)
,p_button_sequence=>240
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P211_NOTIFY_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2152878096016661647)
,p_branch_action=>'f?p=&APP_ID.:202:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152843424235621360)
,p_name=>'P211_VERSION_NUMBER'
,p_item_sequence=>70
,p_prompt=>unistr('\7248\672C\53F7\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152843445310621361)
,p_name=>'P211_ROBOT_SUBSCRIBE_RANGE'
,p_item_sequence=>120
,p_prompt=>unistr('\7FA4\804A\9009\62E9\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT distinct CONVERSATION_NAME  KEY ,CONVERSATION_ID VAL FROM TENANT_ROBOT_SUBSCRIBE WHERE IS_ENABLE=1 AND TENANT_ID = :USERTENANT AND BASE_DEPT_ID=:BASE_DEPT_ID'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_cMaxlength=>500
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'Y',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152843606168621362)
,p_name=>'P211_NOTIFY_STYLE'
,p_item_sequence=>80
,p_prompt=>unistr('\901A\77E5\65B9\5F0F\FF1A')
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>unistr('STATIC:\5C0F\6676\63A8\9001;1')
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152846269087621389)
,p_name=>'P211_GROUPS'
,p_item_sequence=>260
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152847435175621400)
,p_name=>'P211_DATE'
,p_item_sequence=>270
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152847522750621401)
,p_name=>'P211_ROW_COUNT'
,p_item_sequence=>280
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152847885220621405)
,p_name=>'P211_NOTIFY_ID'
,p_item_sequence=>290
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152867240582661636)
,p_name=>'P211_IMPORTANCE_LEVEL'
,p_is_required=>true
,p_item_sequence=>100
,p_item_default=>'IMPORTANT'
,p_prompt=>unistr('\901A\77E5\7B49\7EA7\FF1A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\91CD\8981;IMPORTANT, \6B63\5E38;NORMAL')
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152867704566661636)
,p_name=>'P211_TITLE'
,p_is_required=>true
,p_item_sequence=>130
,p_prompt=>unistr('\6807\9898\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>16
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152868089800661637)
,p_name=>'P211_SORT_CONTENT'
,p_is_required=>true
,p_item_sequence=>150
,p_prompt=>unistr('\7B80\77ED\5185\5BB9\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>15
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152868532588661637)
,p_name=>'P211_CONTENT'
,p_item_sequence=>200
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152869740202661638)
,p_name=>'P211_BUTTON_LINK_URL'
,p_item_sequence=>110
,p_prompt=>unistr('\94FE\63A5\5730\5740\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
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
 p_id=>wwv_flow_imp.id(2152870054356661638)
,p_name=>'P211_BUTTON_DISPLAY_NAME'
,p_item_sequence=>180
,p_prompt=>unistr('\6309\94AE\540D\79F0\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2152870446090661638)
,p_name=>'P211_IS_DISPLAY_BUTTON'
,p_is_required=>true
,p_item_sequence=>140
,p_item_default=>'0'
,p_prompt=>unistr('\662F\5426\663E\793A\6309\94AE\FF1A')
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC2:\5426;0,\662F;1')
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107066654836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2153410044929829168)
,p_name=>'P211_SEND'
,p_item_sequence=>300
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2152845149825621378)
,p_name=>unistr('\65B0\5EFA')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2152845027647621376)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152845242682621379)
,p_event_id=>wwv_flow_imp.id(2152845149825621378)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// apex.navigation.redirect("f?p=&APP_ID.:202:&APP_SESSION.:::::");',
'',
'window.location.href="f?p=&APP_ID.:202:&APP_SESSION.:::::";'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2152845416823621380)
,p_name=>unistr('\65B0\5EFA_2')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2152845043452621377)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153411397878829181)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P211_CONTENT'',testEditor.getMarkdown());'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152846197209621388)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var deplist = "";',
' var tmp ;',
' var depJ = $(".apex-item-multi-item");',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}   ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'$s(''P211_GROUPS'',deplist);',
'console.log(deplist);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152845501172621381)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    ROW_COUNT NUMBER :=0;',
'    V_STYLE NUMBER :=0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'',
' IF (:P211_IS_DISPLAY_BUTTON=1 AND NVL(:P211_BUTTON_DISPLAY_NAME,''N'')=''N'')THEN',
'     ROW_COUNT := -1;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'  IF (INSTR(:P211_TITLE,'' '')>0 OR LENGTH(:P211_TITLE)>48)THEN',
'     ROW_COUNT := -6;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
' IF (INSTR(:P211_VERSION_NUMBER,'' '')>0 OR LENGTH(:P211_VERSION_NUMBER)>30)THEN',
'     ROW_COUNT := -2;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'  IF (INSTR(:P211_SORT_CONTENT,'' '')>0  OR LENGTH(:P211_SORT_CONTENT)>45)THEN',
'     ROW_COUNT := -4;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'  IF (INSTR(:P211_BUTTON_DISPLAY_NAME,'' '')>0  OR LENGTH(:P211_BUTTON_DISPLAY_NAME)>15)THEN',
'     ROW_COUNT := -3;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'   IF (INSTR(:P211_BUTTON_LINK_URL,'' '')>0  OR INSTR(:P211_BUTTON_LINK_URL,''https'')<=0)THEN',
'     ROW_COUNT := -5;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
' IF (:P211_NOTIFY_STYLE=''A'')THEN',
'   V_STYLE :=1;',
' END IF;',
'INSERT INTO TENANT_NOTIFY',
'(',
'  created_by,',
'  creation_date,',
'  update_date,',
'  updated_by,',
'  tenant_id,',
'  is_all,',
'  importance_level,',
'  title,',
'  sort_content,',
'  content,',
'  content_lang,',
'  sort_num,',
'  button_link_url,',
'  button_display_name,',
'  is_display_button,',
'  notify_type,',
'  version_number,',
'  robot_subscribe_range,',
'  is_xj_send,',
'  BASE_DEPT_ID',
')VALUES',
'(',
' :USER_ID,',
' SYSDATE,',
'  SYSDATE,',
' :USER_ID,',
' :USERTENANT,',
' 1,',
' :P211_IMPORTANCE_LEVEL,',
' :P211_TITLE,',
' :P211_SORT_CONTENT,',
' :P211_CONTENT,',
' ''MAKEDOWN'',',
' 1,',
' :P211_BUTTON_LINK_URL,',
' :P211_BUTTON_DISPLAY_NAME,',
' :P211_IS_DISPLAY_BUTTON,',
' ''SYSTEM'',',
' :P211_VERSION_NUMBER,',
' :P211_GROUPS,',
' V_STYLE,',
' :BASE_DEPT_ID',
');',
'',
'',
'ROW_COUNT := SQL%ROWCOUNT;',
'APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'<<ret>>',
'null;',
'EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;',
'            V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('            --\5199\5165\5F02\5E38\65E5\5FD7'),
'            JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'            ROW_COUNT := 0;',
'            APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',0);',
'            ',
'           ',
'END;'))
,p_attribute_02=>'P211_VERSION_NUMBER,P211_IMPORTANCE_LEVEL,P211_BUTTON_LINK_URL,P211_ROBOT_SUBSCRIBE_RANGE,P211_TITLE,P211_IS_DISPLAY_BUTTON,P211_SORT_CONTENT,P211_BUTTON_DISPLAY_NAME,P211_CONTENT,P211_GROUPS'
,p_attribute_03=>'P211_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152847569971621402)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P211_ROW_COUNT'') == 0){',
unistr('    alert(''\8BF7\6B63\786E\586B\5199\8868\5355\53C2\6570\FF01'');'),
'    return false;',
'}else if($v(''P211_ROW_COUNT'') == -1)',
'{',
unistr('    alert(''\9009\62E9\663E\793A\6309\94AE\540E\FF0C\5FC5\586B\6309\94AE\540D\79F0\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -2)',
'{',
unistr('    alert(''\7248\672C\53F7\4E0D\80FD\5E26\7A7A\683C\6216\957F\5EA6\4E0D\80FD\8D85\8FC710\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -6)',
'{',
unistr('    alert(''\6807\9898\4E0D\80FD\5E26\7A7A\683C\6216\6807\9898\4E0D\80FD\8D85\8FC716\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -3)',
'{',
unistr('    alert(''\6309\94AE\540D\79F0\4E0D\80FD\5E26\7A7A\683C\6216\540D\79F0\957F\5EA6\4E0D\80FD\8D85\8FC75\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -4)',
'{',
unistr('    alert(''\7B80\77ED\5185\5BB9\4E0D\80FD\5E26\7A7A\683C\6216\7B80\5355\5185\5BB9\4E0D\80FD\8D85\8FC715\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -5)',
'{',
unistr('    alert(''\6309\94AE\94FE\63A5\4E0D\80FD\5E26\7A7A\683C\6216\6CA1\6709\4EE5https\505A\5F00\5934\FF01'');'),
'    return false;',
'}else{',
unistr('   alert(''\65B0\589E\6210\529F\FF01'');'),
'    return true; ',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152847265132621399)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var ver = $x(''P211_VERSION_NUMBER'').value;',
'',
'var des = testEditor.getMarkdown();',
'des = des.replace(/[\n\r]/g, ''  \\n  '');',
'des = des.replace(/"/g, "''");',
'var uDate = $x(''P211_DATE'').value;',
'var dep = $x(''P211_GROUPS'').value;',
'',
'//var data = dep+''--''+fab+''--''+pb;',
unistr('apex.item(''pDetail'').setValue(''\8FD0\884C\4E2D'');'),
'console.log(des + ''--'' + ver + ''--'' + uDate + ''---'' + dep);',
'////////////////////////////',
'apex.server.process(''GETPROC'',',
'    { x01: des, x02: ver, x03: uDate, x04: dep },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {             // Success',
'            console.log(pData);',
'',
'            //apex.item(''pDetail'').setValue(pData);',
'',
'',
'        },',
'        error: function (e) {',
unistr('            //apex.item(''pDetail'').setValue(''\53D1\9001\5931\8D25\FF01'');'),
'        },',
'        dataType: "text"                        // Response type',
'    }',
');'))
,p_server_condition_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_server_condition_expr1=>'P211_ROBOT_SUBSCRIBE_RANGE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153411207217829179)
,p_event_id=>wwv_flow_imp.id(2152845416823621380)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.navigation.redirect("f?p=&APP_ID.:202:&APP_SESSION.:::::");',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2152845586561621382)
,p_name=>unistr('\65B0\5EFA_3')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P211_NOTIFY_STYLE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152845869651621385)
,p_event_id=>wwv_flow_imp.id(2152845586561621382)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'var e=document.querySelector("#main > div.t-Body-contentInner > div > div:nth-child(4) > div");',
'if ($v(''P211_NOTIFY_STYLE'') == ''1'') {',
'    console.log(''true'');',
'    $x_Show(''P211_ROBOT_SUBSCRIBE_RANGE'');',
'    $(e).show();',
'} else {',
'    $x_Hide(''P211_ROBOT_SUBSCRIBE_RANGE'');',
'     $(e).hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2154380698732993660)
,p_event_id=>wwv_flow_imp.id(2152845586561621382)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P211_ROBOT_SUBSCRIBE_RANGE'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2152846020651621386)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2152846134038621387)
,p_event_id=>wwv_flow_imp.id(2152846020651621386)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var e=document.querySelector("#main > div.t-Body-contentInner > div > div:nth-child(4) > div");',
'if ($v(''P211_NOTIFY_STYLE'') == ''1'') {',
'    console.log(''true'');',
'    $x_Show(''P211_ROBOT_SUBSCRIBE_RANGE'');',
'    $(e).show();',
'} else {',
'    $x_Hide(''P211_ROBOT_SUBSCRIBE_RANGE'');',
'    $(e).hide();',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153409033490829157)
,p_event_id=>wwv_flow_imp.id(2152846020651621386)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' V_IMPORT_LEVEL VARCHAR2(10);',
' V_TITLE VARCHAR2(50);',
' V_SORT_CONTENT VARCHAR2(100);',
' V_CONTENT CLOB;',
' V_BUTTON_URL VARCHAR2(100);',
' V_BUTTON_NAME VARCHAR2(50);',
' V_IS_DISPLAY VARCHAR2(10);',
' V_VERSION VARCHAR2(100);',
' V_ROBOT VARCHAR2(200);',
'BEGIN',
'IF NVL(:P211_NOTIFY_ID,''N'')!=''N'' THEN',
'   SELECT IMPORTANCE_LEVEL,TITLE,SORT_CONTENT,CONTENT,NVL(BUTTON_LINK_URL,'' ''),BUTTON_DISPLAY_NAME,IS_DISPLAY_BUTTON,VERSION_NUMBER--,ROBOT_SUBSCRIBE_RANGE',
'INTO V_IMPORT_LEVEL,V_TITLE,V_SORT_CONTENT,V_CONTENT,V_BUTTON_URL,V_BUTTON_NAME,V_IS_DISPLAY,V_VERSION--,V_ROBOT',
' FROM TENANT_NOTIFY WHERE NOTIFY_ID = :P211_NOTIFY_ID AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'apex_util.set_session_state(''P211_BUTTON_DISPLAY_NAME'',V_BUTTON_NAME);',
'apex_util.set_session_state(''P211_BUTTON_LINK_URL'',V_BUTTON_URL);',
'apex_util.set_session_state(''P211_CONTENT'',V_CONTENT);',
'apex_util.set_session_state(''P211_IMPORTANCE_LEVEL'',V_IMPORT_LEVEL);',
'apex_util.set_session_state(''P211_IS_DISPLAY_BUTTON'',V_IS_DISPLAY);',
'apex_util.set_session_state(''P211_ROBOT_SUBSCRIBE_RANGE'',V_ROBOT);',
'apex_util.set_session_state(''P211_SORT_CONTENT'',V_SORT_CONTENT);',
'apex_util.set_session_state(''P211_TITLE'',V_TITLE);',
'apex_util.set_session_state(''P211_VERSION_NUMBER'',V_VERSION);',
'END IF;',
'',
'END;'))
,p_attribute_02=>'P211_NOTIFY_ID'
,p_attribute_03=>'P211_VERSION_NUMBER,P211_NOTIFY_STYLE,P211_IMPORTANCE_LEVEL,P211_BUTTON_LINK_URL,P211_ROBOT_SUBSCRIBE_RANGE,P211_TITLE,P211_IS_DISPLAY_BUTTON,P211_SORT_CONTENT,P211_BUTTON_DISPLAY_NAME,P211_CONTENT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2154380784143993661)
,p_event_id=>wwv_flow_imp.id(2152846020651621386)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(function () {',
'    $("main").append('' <div id="test-editormd"><textarea id="content" style="display:none;" name="markdownContent"></textarea></div>'');',
'    init();',
'    console.log($v(''P211_CONTENT''));',
'    $(''#content'').val($v(''P211_CONTENT''));',
'})',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2153409175838829159)
,p_name=>unistr('\65B0\5EFA_1')
,p_event_sequence=>70
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2153409102713829158)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153411445937829182)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s(''P211_CONTENT'',testEditor.getMarkdown());',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153411617557829183)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var deplist = "";',
' var tmp ;',
' var depJ = $(".apex-item-multi-item");',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}   ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'$s(''P211_GROUPS'',deplist);',
'console.log(deplist);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153409337518829160)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
' ROW_COUNT NUMBER :=0;',
' V_STYLE NUMBER :=0;',
' V_SEND NUMBER :=0;',
'BEGIN',
'IF (:P211_IS_DISPLAY_BUTTON=1 AND NVL(:P211_BUTTON_DISPLAY_NAME,''N'')=''N'')THEN',
'     ROW_COUNT := -1;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
' IF (INSTR(:P211_TITLE,'' '')>0 OR LENGTH(:P211_TITLE)>48)THEN',
'     ROW_COUNT := -6;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
' IF (INSTR(:P211_VERSION_NUMBER,'' '')>0 OR LENGTH(:P211_VERSION_NUMBER)>30)THEN',
'     ROW_COUNT := -2;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'  IF (INSTR(:P211_SORT_CONTENT,'' '')>0  OR LENGTH(:P211_SORT_CONTENT)>45)THEN',
'     ROW_COUNT := -4;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'  IF (INSTR(:P211_BUTTON_DISPLAY_NAME,'' '')>0  OR LENGTH(:P211_BUTTON_DISPLAY_NAME)>18)THEN',
'     ROW_COUNT := -3;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
'   IF (INSTR(:P211_BUTTON_LINK_URL,'' '')>0  OR INSTR(:P211_BUTTON_LINK_URL,''https'')<=0)THEN',
'     ROW_COUNT := -5;',
'     APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'     goto ret;',
' END IF;',
'',
' IF (:P211_NOTIFY_STYLE=''A'' AND NVL(:P211_ROBOT_SUBSCRIBE_RANGE,''N'')!=null)THEN',
'   SELECT MAX(IS_XJ_SEND) INTO V_SEND FROM TENANT_NOTIFY WHERE NOTIFY_ID = :P211_NOTIFY_ID;',
'   V_STYLE :=1;',
'   APEX_UTIL.SET_SESSION_STATE(''P211_SEND'',V_SEND);',
'',
' END IF;',
'',
'',
'UPDATE Tenant_NOTIFY SET ',
'UPDATE_DATE =SYSDATE,',
'UPDATED_BY = :USERID,',
'IMPORTANCE_LEVEL = :P211_IMPORTANCE_LEVEL,',
'TITLE = :P211_TITLE,',
'SORT_CONTENT=:P211_SORT_CONTENT,',
'CONTENT =:P211_CONTENT,',
'BUTTON_LINK_URL=:P211_BUTTON_LINK_URL,',
'BUTTON_DISPLAY_NAME=:P211_BUTTON_DISPLAY_NAME,',
'IS_DISPLAY_BUTTON=:P211_IS_DISPLAY_BUTTON,',
'VERSION_NUMBER =:P211_VERSION_NUMBER,',
'ROBOT_SUBSCRIBE_RANGE=:P211_ROBOT_SUBSCRIBE_RANGE',
'WHERE NOTIFY_ID = :P211_NOTIFY_ID  AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'ROW_COUNT := SQL%ROWCOUNT;',
'APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'<<ret>>',
'null;',
'EXCEPTION',
'        WHEN OTHERS THEN',
'            ROLLBACK;',
'            ROW_COUNT := 0;',
'            APEX_UTIL.SET_SESSION_STATE(''P211_ROW_COUNT'',ROW_COUNT);',
'END;'))
,p_attribute_02=>'P211_VERSION_NUMBER,P211_IMPORTANCE_LEVEL,P211_BUTTON_LINK_URL,P211_ROBOT_SUBSCRIBE_RANGE,P211_TITLE,P211_IS_DISPLAY_BUTTON,P211_SORT_CONTENT,P211_BUTTON_DISPLAY_NAME,P211_CONTENT,P211_GROUPS'
,p_attribute_03=>'P211_ROW_COUNT,P211_SEND'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153409438426829161)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P211_ROW_COUNT'') == 0){',
unistr('    alert(''\8BF7\6B63\786E\586B\5199\8868\5355\53C2\6570\FF01'');'),
'    return false;',
'}else if($v(''P211_ROW_COUNT'') == -1)',
'{',
unistr('    alert(''\9009\62E9\663E\793A\6309\94AE\540E\FF0C\5FC5\586B\6309\94AE\540D\79F0\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -2)',
'{',
unistr('    alert(''\7248\672C\53F7\4E0D\80FD\5E26\7A7A\683C\6216\957F\5EA6\4E0D\80FD\8D85\8FC710\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -3)',
'{',
unistr('    alert(''\6309\94AE\540D\79F0\4E0D\80FD\5E26\7A7A\683C\6216\540D\79F0\957F\5EA6\4E0D\80FD\8D85\8FC75\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -4)',
'{',
unistr('    alert(''\7B80\77ED\5185\5BB9\4E0D\80FD\5E26\7A7A\683C\6216\7B80\5355\5185\5BB9\4E0D\80FD\8D85\8FC715\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -6)',
'{',
unistr('    alert(''\6807\9898\4E0D\80FD\5E26\7A7A\683C\6216\6807\9898\4E0D\80FD\8D85\8FC716\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'else if($v(''P211_ROW_COUNT'') == -5)',
'{',
unistr('    alert(''\6309\94AE\94FE\63A5\4E0D\80FD\5E26\7A7A\683C\6216\6CA1\6709\4EE5https\505A\5F00\5934\FF01'');'),
'    return false;',
'}else{',
unistr('   alert(''\66F4\65B0\6210\529F\FF01'');'),
'    return true; ',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153410246520829170)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' var deplist = "";',
' var tmp ;',
' var depJ = $(".apex-item-multi-item");',
'for (var i=0;i<depJ.length;i++){',
'     tmp = depJ[i].dataset.value;',
'     if (typeof(tmp) != "undefined"){deplist = deplist+tmp+'','';}   ',
'}',
'deplist=(deplist.substring(deplist.length-1)=='','')?deplist.substring(0,deplist.length-1):deplist;',
'$s(''P211_GROUPS'',deplist);',
'console.log(deplist);'))
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P211_SEND'
,p_server_condition_expr2=>'0'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153410176522829169)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('//  alert(''\53D1\9001\5C0F\6676\901A\77E5'');'),
'var ver = $x(''P211_VERSION_NUMBER'').value;',
'var des = testEditor.getMarkdown();',
'des = des.replace(/[\n\r]/g, ''  \\n  '');',
'des = des.replace(/"/g, "''");',
'var uDate = $x(''P211_DATE'').value;',
'var dep = $x(''P211_GROUPS'').value;',
'',
'//var data = dep+''--''+fab+''--''+pb;',
unistr('apex.item(''pDetail'').setValue(''\8FD0\884C\4E2D'');'),
'console.log(des + ''--'' + ver + ''--'' + uDate + ''---'' + dep);',
'////////////////////////////',
'apex.server.process(''GETPROC'',',
'    { x01: des, x02: ver, x03: uDate, x04: dep },  // Parameter to be passed to the server',
'    {',
'        success: function (pData) {             // Success',
'            console.log(pData);',
'',
'          //  apex.item(''pDetail'').setValue(pData);',
'',
'',
'        },',
'        error: function (e) {',
unistr('          //  apex.item(''pDetail'').setValue(''\53D1\9001\5931\8D25\FF01'');'),
'        },',
'        dataType: "text"                        // Response type',
'    }',
');'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2153411275629829180)
,p_event_id=>wwv_flow_imp.id(2153409175838829159)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.navigation.redirect("f?p=&APP_ID.:202:&APP_SESSION.:::::");',
''))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2152847172760621398)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETPROC'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  DECLARE',
'    HTML VARCHAR2(10):='''';',
'    BEGIN',
'      APEX_ONLY_NOTICE_PRO(apex_application.g_x01,apex_application.g_x02,apex_application.g_x03,apex_application.g_x04,:USERTENANT);',
unistr('      htp.prn(''\901A\77E5\6210\529F\FF01'');'),
'    END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>27284032189836542
);
wwv_flow_imp.component_end;
end;
/

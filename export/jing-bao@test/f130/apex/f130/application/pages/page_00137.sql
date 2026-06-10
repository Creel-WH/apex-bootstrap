prompt --application/pages/page_00137
begin
--   Manifest
--     PAGE: 00137
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
 p_id=>137
,p_name=>unistr('\5BCC\6587\672C')
,p_alias=>unistr('\5BCC\6587\672C')
,p_step_title=>unistr('\5BCC\6587\672C')
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
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var testEditor;',
'$(function () {',
'    $("#main").css({''height'':''700px''});',
'    $("#main").append('' <div id="test-editormd"><textarea id="content" style="display:none;" name="markdownContent"></textarea></div>'');',
'    init();',
'})',
'',
'function init() {',
'',
'',
'    testEditor = editormd("test-editormd", {',
'        htmlDecode: "style,script,iframe,sub,sup|on*",',
'        width: "90%",',
'        height: "70%",',
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
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2174955141556396329)
,p_plug_name=>unistr('\5BCC\6587\672C')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TENANT_RICH_TEXT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2174964480737396338)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2174965629243396340)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P137_RICH_TEXT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2174966074079396340)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P137_RICH_TEXT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2174966330234396340)
,p_branch_name=>unistr('\8F6C\5230\9875 133')
,p_branch_action=>'f?p=&APP_ID.:133:&SESSION.::&DEBUG.:137::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2171438522957943442)
,p_name=>'P137_ROW_COUNT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2171438617213943443)
,p_name=>'APP_KEY'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2171438640454943444)
,p_name=>'APP_SECRET'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174955459996396329)
,p_name=>'P137_RICH_TEXT_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'RICH_TEXT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174955727977396333)
,p_name=>'P137_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174956213732396333)
,p_name=>'P137_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174956600701396334)
,p_name=>'P137_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174957023285396334)
,p_name=>'P137_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174957365069396334)
,p_name=>'P137_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174957780811396334)
,p_name=>'P137_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174958194416396334)
,p_name=>'P137_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_prompt=>'CODE'
,p_source=>'CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>256
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174958617412396335)
,p_name=>'P137_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_prompt=>unistr('\6807\9898')
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>256
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174959007433396335)
,p_name=>'P137_SUBTITLE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_prompt=>unistr('\5B50\6807\9898')
,p_source=>'SUBTITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>256
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174959343198396335)
,p_name=>'P137_CONTENT'
,p_source_data_type=>'CLOB'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'CONTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174959794780396335)
,p_name=>'P137_LANGUAGE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_prompt=>unistr('\7C7B\578B')
,p_source=>'LANGUAGE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:HTML;HTML,MARKDOWN;MARKDOWN'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2174960188828396335)
,p_name=>'P137_CONTENT_RAW'
,p_source_data_type=>'CLOB'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_item_source_plug_id=>wwv_flow_imp.id(2174955141556396329)
,p_source=>'CONTENT_RAW'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171438768004943445)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171438908372943446)
,p_event_id=>wwv_flow_imp.id(2171438768004943445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'appKey nvarchar2(100);',
'appSecret  nvarchar2(100);',
'begin',
' select APP_KEY,APP_SECRET into appKey,appSecret from TENANT_APP where  ',
' TENANT_ID=V(''USERTENANT'') and ROWNUM=1 and DEL_FLAG=0;',
' apex_util.set_session_state(''APP_KEY'',appKey);',
' apex_util.set_session_state(''APP_SECRET'',appSecret);',
'end;'))
,p_attribute_02=>'APP_KEY,APP_SECRET'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171438951918943447)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171439040090943448)
,p_event_id=>wwv_flow_imp.id(2171438951918943447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!utils.checkNull($(''P137_RICH_TEXT_ID''))){',
'    $(''#content'').val($v(''P137_CONTENT_RAW''));',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171439128773943449)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2174966074079396340)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171439281169943450)
,p_event_id=>wwv_flow_imp.id(2171439128773943449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P137_TITLE''))){',
unistr('  alert(''\8BF7\8F93\5165\6807\9898'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P137_SUBTITLE''))){',
unistr('  alert(''\8BF7\8F93\5165\5B50\6807\9898'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P137_CODE''))){',
unistr('  alert(''\8BF7\8F93\5165CODE'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P137_LANGUAGE_TYPE''))){',
unistr('  alert(''\8BF7\9009\62E9\7C7B\578B'');'),
'  return false;',
'}',
'',
'if(utils.checkNull(testEditor.getMarkdown())){',
unistr('  alert(''\8BF7\8F93\5165\5185\5BB9'');'),
'  return false;',
'}',
'',
'',
'',
'',
'if ($v(''P137_LANGUAGE_TYPE'') == ''HTML'') {',
'   ',
'    $s(''P137_CONTENT'', testEditor.getHTML());',
'} else {',
'    ',
'    $s(''P137_CONTENT'', testEditor.getMarkdown());',
'}',
'$s(''P137_CONTENT_RAW'', testEditor.getMarkdown());'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171439553093943453)
,p_event_id=>wwv_flow_imp.id(2171439128773943449)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'    count1 number(3):=1;',
'begin',
' insert into TENANT_RICH_TEXT(CREATED_BY,',
'                                 UPDATED_BY,',
'                                 TENANT_ID,',
'                                 CODE,',
'                                 TITLE,',
'                                 SUBTITLE,',
'                                 CONTENT,',
'                                 LANGUAGE_TYPE,',
'                                 CONTENT_RAW,',
'                                 BASE_DEPT_ID)',
'    values (apex_custom_auth.get_user(),',
'            apex_custom_auth.get_user(),',
'            V(''USERTENANT''),',
'            :P137_CODE,',
'            :P137_TITLE,',
'            :P137_SUBTITLE,',
'            :P137_CONTENT,',
'            :P137_LANGUAGE_TYPE,',
'            :P137_CONTENT_RAW,',
'            :BASE_DEPT_ID);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P137_ROW_COUNT'',-1);',
'end;'))
,p_attribute_02=>'P137_TITLE,P137_SUBTITLE,P137_CODE,P137_CONTENT,P137_LANGUAGE_TYPE,P137_CONTENT_RAW'
,p_attribute_03=>'P137_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171439686796943454)
,p_event_id=>wwv_flow_imp.id(2171439128773943449)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P137_ROW_COUNT'') == 1) {',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171439806696943455)
,p_event_id=>wwv_flow_imp.id(2171439128773943449)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2171439890494943456)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2174965629243396340)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171440024794943457)
,p_event_id=>wwv_flow_imp.id(2171439890494943456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P137_TITLE''))){',
unistr('  alert(''\8BF7\8F93\5165\6807\9898'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P137_SUBTITLE''))){',
unistr('  alert(''\8BF7\8F93\5165\5B50\6807\9898'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P137_CODE''))){',
unistr('  alert(''\8BF7\8F93\5165CODE'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P137_LANGUAGE_TYPE''))){',
unistr('  alert(''\8BF7\9009\62E9\7C7B\578B'');'),
'  return false;',
'}',
'',
'if(utils.checkNull(testEditor.getMarkdown())){',
unistr('  alert(''\8BF7\8F93\5165\5185\5BB9'');'),
'  return false;',
'}',
'',
'',
'',
'',
'if ($v(''P137_LANGUAGE_TYPE'') == ''HTML'') {',
'   ',
'    $s(''P137_CONTENT'', testEditor.getHTML());',
'} else {',
'    ',
'    $s(''P137_CONTENT'', testEditor.getMarkdown());',
'}',
'$s(''P137_CONTENT_RAW'', testEditor.getMarkdown());'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171440041399943458)
,p_event_id=>wwv_flow_imp.id(2171439890494943456)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    count1 number(3) := 0;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'begin',
'    update TENANT_RICH_TEXT',
'    set UPDATED_BY=apex_custom_auth.get_user(),',
'        UPDATE_DATE=sysdate,',
'        CODE=:P137_CODE,',
'        TITLE=:P137_TITLE,',
'        SUBTITLE=:P137_SUBTITLE,',
'        CONTENT=:P137_CONTENT,',
'        LANGUAGE_TYPE=:P137_LANGUAGE_TYPE,',
'        BASE_DEPT_ID = :BASE_DEPT_ID,',
'        CONTENT_RAW=:P137_CONTENT_RAW where RICH_TEXT_ID=:P137_RICH_TEXT_ID and TENANT_ID=V(''USERTENANT'');',
'',
'    count1 := SQL%ROWCOUNT;',
'    apex_util.set_session_state(''P137_ROW_COUNT'', count1);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,',
'        :APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P137_ROW_COUNT'', -1);',
'end;'))
,p_attribute_02=>'P137_TITLE,P137_SUBTITLE,P137_RICH_TEXT_ID,P137_CODE,P137_CONTENT,P137_LANGUAGE_TYPE,P137_CONTENT_RAW'
,p_attribute_03=>'P137_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171440227278943459)
,p_event_id=>wwv_flow_imp.id(2171439890494943456)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P137_ROW_COUNT'') == 1) {',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'     return true;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'     return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2171440233433943460)
,p_event_id=>wwv_flow_imp.id(2171439890494943456)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2174967279014396342)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2174955141556396329)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5BCC\6587\672C')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>49404138443611486
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2174966869065396341)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2174955141556396329)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5BCC\6587\672C')
,p_internal_uid=>49403728494611485
);
wwv_flow_imp.component_end;
end;
/

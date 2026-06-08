prompt --application/pages/page_00161
begin
--   Manifest
--     PAGE: 00161
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
 p_id=>161
,p_name=>unistr('\89E3\51B3\65B9\6848-\8868\5355')
,p_alias=>unistr('\89E3\51B3\65B9\6848-\8868\5355')
,p_step_title=>unistr('\89E3\51B3\65B9\6848-\8868\5355')
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
 p_id=>wwv_flow_imp.id(2237604554776694774)
,p_plug_name=>unistr('\89E3\51B3\65B9\6848\8868\5355')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2359816405900135301)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'TENANT_EVENT_LIBRARY_SOLVING_ASSO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2225935931351469358)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-window-close-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2225936325144469359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_button_name=>'SAVE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P161_EVENT_LIBRARY_SOLVING_ASSO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-edit'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2225936756382469359)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(2359869635352135326)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P161_EVENT_LIBRARY_SOLVING_ASSO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-plus-square-o'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2225954979775469376)
,p_branch_name=>unistr('\8F6C\5230\9875 133')
,p_branch_action=>'f?p=&APP_ID.:162:&SESSION.::&DEBUG.:161::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225890595055880436)
,p_name=>'P161_EVENT_LIBRARY_SOLVING_ASSO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'EVENT_LIBRARY_SOLVING_ASSO_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225890729832880437)
,p_name=>'P161_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\662F\5426\5220\9664')
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'YES_NO_LOV'
,p_lov=>'.'||wwv_flow_imp.id(2316119825628346399)||'.'
,p_lov_display_null=>'YES'
,p_cSize=>35.8
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_display_when=>'P161_EVENT_LIBRARY_SOLVING_ASSO_ID'
,p_display_when_type=>'ITEM_IS_NOT_NULL'
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
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
 p_id=>wwv_flow_imp.id(2225890814589880438)
,p_name=>'P161_EVENT_LIBRARY_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'EVENT_LIBRARY_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225890932629880439)
,p_name=>'P161_SUMMARY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\89E3\51B3\65B9\6848\6807\9898')
,p_source=>'SUMMARY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>35.8
,p_cMaxlength=>2000
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225891079331880440)
,p_name=>'P161_LIKE_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'LIKE_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225891153623880441)
,p_name=>'P161_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\6392\5E8F')
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>35.8
,p_cMaxlength=>10
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'right',
  'virtual_keyboard', 'text')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225891234851880442)
,p_name=>'P161_SCREENING'
,p_source_data_type=>'CLOB'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\6392\67E5\9879')
,p_source=>'SCREENING'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>32767
,p_cHeight=>3
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225891309582880443)
,p_name=>'P161_FIRST_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\5927\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,CODE FROM TENANT_EVENT_CATEGORY WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND NODE_LEVEL = 1 AND DEL_FLAG = 0'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2225891477856880444)
,p_name=>'P161_SECOND_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\5C0F\7C7B')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'SELECT NAME,CODE FROM TENANT_EVENT_CATEGORY WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND NODE_LEVEL = 2 AND DEL_FLAG = 0 AND PARENT_CODE = :P161_FIRST_NAME'
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_FIRST_NAME'
,p_ajax_items_to_submit=>'P161_FIRST_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2225891551109880445)
,p_name=>'P161_PHENOMENON'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\73B0\8C61')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NAME,CODE FROM TENANT_EVENT_PHENOMENON A ',
' WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND DEL_FLAG = 0 ',
'   AND EXISTS (SELECT 1 FROM TENANT_EVENT_LIBRARY B WHERE B.PHENOMENON_CODE = A.CODE AND B.TENANT_ID = A.TENANT_ID AND A.BASE_DEPT_ID= B.BASE_DEPT_ID AND B.CATEGORY_FIRST_CODE = :P161_FIRST_NAME AND B.CATEGORY_SECOND_CODE = :P161_SECOND_NAME)'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P161_FIRST_NAME,P161_SECOND_NAME'
,p_ajax_items_to_submit=>'P161_FIRST_NAME,P161_SECOND_NAME'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_field_template=>wwv_flow_imp.id(2359868528838135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
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
 p_id=>wwv_flow_imp.id(2225938337574469360)
,p_name=>'P161_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225938719648469361)
,p_name=>'P161_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225939183203469361)
,p_name=>'P161_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225939497647469361)
,p_name=>'P161_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225939958250469361)
,p_name=>'P161_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225940772482469361)
,p_name=>'P161_CONTENT'
,p_source_data_type=>'CLOB'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_source=>'CONTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225941962900469362)
,p_name=>'P161_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_item_source_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cHeight=>3
,p_begin_on_new_line=>'N'
,p_colspan=>6
,p_field_template=>wwv_flow_imp.id(2359868244347135324)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225942331183469362)
,p_name=>'P161_ROW_COUNT'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225942715746469362)
,p_name=>'161_APP_KEY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2225943156725469362)
,p_name=>'161_APP_SECRET'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2237604554776694774)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2225953918189469376)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225954483525469376)
,p_event_id=>wwv_flow_imp.id(2225953918189469376)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'appKey nvarchar2(100);',
'appSecret  nvarchar2(100);',
'begin',
'--  select APP_KEY,APP_SECRET into appKey,appSecret from TENANT_APP where  ',
'--  TENANT_ID=V(''USERTENANT'') and ROWNUM=1 and DEL_FLAG=0;',
' apex_util.set_session_state(''161_APP_KEY'',:APPKEY);',
' apex_util.set_session_state(''161_APP_SECRET'',:APPSECRET);',
'end;'))
,p_attribute_03=>'161_APP_KEY,161_APP_SECRET'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2225953040687469375)
,p_name=>unistr('\8BBE\7F6E\503C')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225953573212469376)
,p_event_id=>wwv_flow_imp.id(2225953040687469375)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(!utils.checkNull($(''P161_EVENT_LIBRARY_SOLVING_ASSO_ID''))){',
'    $(''#content'').val($v(''P161_CONTENT''));',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2225950674441469374)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2225936756382469359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225952127760469375)
,p_event_id=>wwv_flow_imp.id(2225950674441469374)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P161_FIRST_NAME''))){',
unistr('  alert(''\8BF7\8F93\5165\5927\7C7B'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_SECOND_NAME''))){',
unistr('  alert(''\8BF7\8F93\5165\5C0F\7C7B'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_PHENOMENON''))){',
unistr('  alert(''\8BF7\8F93\5165\73B0\8C61'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P161_SUMMARY''))){',
unistr('  alert(''\8BF7\8F93\5165\89E3\51B3\65B9\6848\6807\9898'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_SCREENING''))){',
unistr('  alert(''\8BF7\8F93\5165\6392\67E5\9879'');'),
'  return false;',
'}',
'',
'',
'',
'if(utils.checkNull(testEditor.getMarkdown())){',
unistr('  alert(''\8BF7\8F93\5165\5185\5BB9'');'),
'  return false;',
'}',
'',
'',
'$s(''P161_CONTENT'', testEditor.getMarkdown());'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225952664819469375)
,p_event_id=>wwv_flow_imp.id(2225950674441469374)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    COUNT1 NUMBER(3):=0;',
'    LIBRARY_ID NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    SELECT EVENT_LIBRARY_ID INTO LIBRARY_ID FROM TENANT_EVENT_LIBRARY WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND CATEGORY_FIRST_CODE = :P161_FIRST_NAME AND CATEGORY_SECOND_CODE = :P161_SECOND_NAME AND PHENOMENON_CODE = :P161_PH'
||'ENOMENON;',
'    INSERT INTO TENANT_EVENT_LIBRARY_SOLVING_ASSO(CREATED_BY,',
'                                 UPDATED_BY,',
'                                 TENANT_ID,',
'                                 REMARK,',
'                                 EVENT_LIBRARY_ID,',
'                                 SUMMARY,',
'                                 CONTENT,',
'                                 SCREENING,',
'                                 SORT_NUM)',
'    VALUES (APEX_CUSTOM_AUTH.GET_USER(),',
'            APEX_CUSTOM_AUTH.GET_USER(),',
'            V(''USERTENANT''),',
'            :P161_REMARK,',
'             LIBRARY_ID,',
'            :P161_SUMMARY,',
'            :P161_CONTENT,',
'            :P161_SCREENING,',
'            :P161_SORT_NUM);',
'            COUNT1:=SQL%ROWCOUNT;',
'            APEX_UTIL.SET_SESSION_STATE(''P161_ROW_COUNT'',COUNT1);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'            APEX_UTIL.SET_SESSION_STATE(''P161_ROW_COUNT'',-1);',
'END;'))
,p_attribute_02=>'P161_CONTENT,P161_FIRST_NAME,P161_SECOND_NAME,P161_PHENOMENON,P161_EVENT_LIBRARY_SOLVING_ASSO_ID,P161_SUMMARY,P161_SORT_NUM,P161_SCREENING,P161_REMARK'
,p_attribute_03=>'P161_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225951590959469375)
,p_event_id=>wwv_flow_imp.id(2225950674441469374)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P161_ROW_COUNT'') == 1) {',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225951100968469374)
,p_event_id=>wwv_flow_imp.id(2225950674441469374)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2225948279187469373)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2225936325144469359)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225950243783469374)
,p_event_id=>wwv_flow_imp.id(2225948279187469373)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P161_FIRST_NAME''))){',
unistr('  alert(''\8BF7\8F93\5165\5927\7C7B'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_SECOND_NAME''))){',
unistr('  alert(''\8BF7\8F93\5165\5C0F\7C7B'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_PHENOMENON''))){',
unistr('  alert(''\8BF7\8F93\5165\73B0\8C61'');'),
'  return false;',
'}',
'',
'if(utils.checkNull($v(''P161_SUMMARY''))){',
unistr('  alert(''\8BF7\8F93\5165\89E3\51B3\65B9\6848\6807\9898'');'),
'  return false;',
'}',
'if(utils.checkNull($v(''P161_SCREENING''))){',
unistr('  alert(''\8BF7\8F93\5165\6392\67E5\9879'');'),
'  return false;',
'}',
'',
'',
'',
'if(utils.checkNull(testEditor.getMarkdown())){',
unistr('  alert(''\8BF7\8F93\5165\5185\5BB9'');'),
'  return false;',
'}',
'',
'',
'$s(''P161_CONTENT'', testEditor.getMarkdown());'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225949732758469374)
,p_event_id=>wwv_flow_imp.id(2225948279187469373)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    COUNT1 NUMBER(3) := 0;',
'    LIBRARY_ID NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    SELECT EVENT_LIBRARY_ID INTO LIBRARY_ID FROM TENANT_EVENT_LIBRARY ',
'    WHERE TENANT_ID = :USERTENANT AND BASE_DEPT_ID= :BASE_DEPT_ID AND CATEGORY_FIRST_CODE = :P161_FIRST_NAME AND CATEGORY_SECOND_CODE = :P161_SECOND_NAME AND PHENOMENON_CODE = :P161_PHENOMENON;',
'    UPDATE TENANT_EVENT_LIBRARY_SOLVING_ASSO',
'    SET UPDATED_BY=APEX_CUSTOM_AUTH.GET_USER(),',
'        UPDATE_DATE=SYSDATE,',
'        REMARK=:P161_REMARK,',
'        EVENT_LIBRARY_ID=LIBRARY_ID,',
'        SORT_NUM =:P161_SORT_NUM,',
'        DEL_FLAG=:P161_DEL_FLAG,',
'        SUMMARY=:P161_SUMMARY,',
'        CONTENT=:P161_CONTENT,',
'        SCREENING=:P161_SCREENING ',
'    WHERE EVENT_LIBRARY_SOLVING_ASSO_ID=:P161_EVENT_LIBRARY_SOLVING_ASSO_ID AND TENANT_ID=V(''USERTENANT'');',
'',
'    COUNT1 := SQL%ROWCOUNT;',
'    APEX_UTIL.SET_SESSION_STATE(''P161_ROW_COUNT'', COUNT1);',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        APEX_UTIL.SET_SESSION_STATE(''P161_ROW_COUNT'', -1);',
'END;'))
,p_attribute_02=>'P161_CONTENT,P161_FIRST_NAME,P161_SECOND_NAME,P161_PHENOMENON,P161_EVENT_LIBRARY_SOLVING_ASSO_ID,P161_SUMMARY,P161_SORT_NUM,P161_DEL_FLAG,P161_SCREENING,P161_REMARK'
,p_attribute_03=>'P161_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225949212498469373)
,p_event_id=>wwv_flow_imp.id(2225948279187469373)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P161_ROW_COUNT'') == 1) {',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'     return true;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'     return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2225948759279469373)
,p_event_id=>wwv_flow_imp.id(2225948279187469373)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2225947801950469366)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(2237604554776694774)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \5BCC\6587\672C')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>42623199196385412
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2225947417096469365)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(2237604554776694774)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5BCC\6587\672C')
,p_internal_uid=>42622814342385411
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>71
,p_name=>unistr('\901A\77E5\7F16\8F91')
,p_alias=>unistr('\901A\77E5\7F16\8F91')
,p_step_title=>unistr('\901A\77E5\7F16\8F91')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807464848508873)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/ckeditor.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/turndown.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const s3Client = S3Client.init({',
unistr('    baseURL: $v("P0_UPLOAD_URL"), // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
'    appKey: $v(''P0_JA_APP_KEY''),',
'    appSecret : $v(''P0_JA_APP_SECRET'')',
'});',
'',
'',
'function uploadFile(file,{ resolve, reject }) {',
'  s3Client.uploadFile(file)',
'    .then(obj => {',
unistr('      console.log(obj); // \4E0A\4F20\6210\529F\7684\6587\4EF6\94FE\63A5\4FE1\606F'),
'      resolve(obj)',
'    })',
'    .catch(err => {',
unistr('      console.error(err); // \9519\8BEF\4FE1\606F'),
'      reject(err)',
'    });',
'}',
'',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P71_VISIBLE_USERS'', result.users.map(i => i.emplId).join('':''))',
'    $s(''P71_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('':''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}',
'',
'var editorDom = ''''',
'var jsonIsError = false',
'',
'class MyUploadAdapter {',
'    constructor(loader) {',
'        this.loader = loader;',
'    }',
'',
'    async upload() {',
'        return this.loader.file',
'            .then(file => new Promise((resolve, reject) => {',
'                const image = { file }',
'                uploadFile(file, { resolve, reject })',
'            }));',
'    }',
'}',
'',
'function MyCustomUploadAdapterPlugin(editor) {',
'    // console.log(editor)',
'    editor.plugins.get(''FileRepository'').createUploadAdapter = (loader) => {',
'        // console.log(loader)',
'        return new MyUploadAdapter(loader);',
'    };',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P71_SCOPE_TYPE'') !== ''ALL'') {',
'    $(''#user_input'').show()',
'}',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P71_VISIBLE_USERS'').split(":");',
'    let deptList = $v(''P71_VISIBLE_DEPTS'').split(":");',
'    DingTalkAuth.chooseUsers(userList,deptList,visible_callback);',
'});',
'',
'$(''#chooseInput'').val($v(''P71_COMBINED_NAMES''))',
'',
'// DecoupledEditor',
'// classic-editor',
'',
'DecoupledEditor.create(document.querySelector(''.document-editor__editable''), {',
'    heading: {',
'        options: [',
unistr('            { model: ''paragraph'', title: ''\6B63\6587'', class: ''ck-heading_paragraph'' },'),
unistr('            { model: ''heading1'', view: ''h1'', title: ''\6807\9898\4E00'', class: ''ck-heading_heading1'' },'),
unistr('            { model: ''heading2'', view: ''h2'', title: ''\6807\9898\4E8C'', class: ''ck-heading_heading2'' },'),
unistr('            { model: ''heading3'', view: ''h3'', title: ''\6807\9898\4E09'', class: ''ck-heading_heading3'' }'),
'        ]',
'    },',
'    toolbar: {',
'        items: [',
'            ''heading'',',
'            ''|'', ''bold'', ''italic'',''fontsize'', ''fontColor'',''fontBackgroundColor'',',
'            ''|'', ''link'', ''uploadImage'',',
'            ''|'', ''bulletedList'', ''numberedList'', ''outdent'', ''indent'',',
'            ''|'', ''undo'', ''redo'',',
'        ]',
'    },',
'    extraPlugins: [MyCustomUploadAdapterPlugin],',
'})',
'    .then(editor => {',
'        const toolbarContainer = document.querySelector(''.document-editor__toolbar'');',
'        toolbarContainer.appendChild(editor.ui.view.toolbar.element);',
'        window.editor = editor;',
'        editorDom = editor;',
'',
'        editor.setData($v(''P71_CONTENT_HTML''))',
'',
'    })',
'    .catch(error => {',
'        console.log(error);',
'    });',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#user_input {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837834584710045974)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3837835295293045980)
,p_plug_name=>unistr('\901A\77E5\7F16\8F91')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NOTICE_ID,',
'       TITLE,',
'       NOTICE_TYPE,',
'       CONTENT,',
'       CONTENT_HTML,',
'       SCOPE_TYPE,',
'       IS_NOTIFY,',
'       (select LISTAGG(ENTITY_ID, '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''NOTICE''',
'          and s.REFERENCE_ID = w.NOTICE_ID',
'          and s.ENTITY_TYPE = ''USER'')                                as VISIBLE_USERS,',
'       (select LISTAGG(ENTITY_ID, '':'')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''NOTICE''',
'          and s.REFERENCE_ID = w.NOTICE_ID',
'          and s.ENTITY_TYPE = ''DEPT'')                                as VISIBLE_DEPTS,',
'       (SELECT LISTAGG(NAME, '','') WITHIN GROUP (ORDER BY NAME)',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''NOTICE''',
'                                       AND s.REFERENCE_ID = w.NOTICE_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''NOTICE''',
'                                       AND s.REFERENCE_ID = w.NOTICE_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS COMBINED_NAMES',
'from JW_NOTICE w'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3835848188320764767)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>90
,p_plug_display_column=>2
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center">',
unistr('    <input readonly  id="chooseInput" style="margin-right:20px"><button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>'),
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3840424848105503674)
,p_plug_name=>unistr('\5BCC\6587\672C')
,p_parent_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>50
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="document-editor">',
'    <div class="document-editor__toolbar"></div>',
'    <div class="document-editor__editable-container">',
'        <div id="content" class="document-editor__editable" style="border: 1px solid #dfdfdf; height: 500px;">',
'        </div>',
'    </div>',
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788832388770905593)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>unistr('\66F4\65B0\901A\77E5')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\66F4\65B0\901A\77E5')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P71_NOTICE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788832758070905593)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>unistr('\66F4\65B0\5E76\53D1\5E03')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\66F4\65B0\5E76\53D1\5E03')
,p_button_position=>'CHANGE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>':P71_NOTICE_ID  is not null and :P71_IS_NOTIFY = 0'
,p_button_condition2=>'PLSQL'
,p_button_condition_type=>'EXPRESSION'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788833213153905594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>'CANCEL'
,p_button_static_id=>'return_btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70::'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788833635508905594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>unistr('\4FDD\5B58\901A\77E5')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P71_NOTICE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788833940529905594)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>unistr('\4FDD\5B58\5E76\53D1\5E03')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\5E76\53D1\5E03')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P71_NOTICE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788834349297905594)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\5220\9664')
,p_button_position=>'DELETE'
,p_button_alignment=>'RIGHT'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P71_NOTICE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
,p_database_action=>'DELETE'
,p_required_patch=>wwv_flow_imp.id(4421750870193171812)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(2788857954757905609)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3721458174392488449)
,p_name=>'P71_NOTICE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_default=>'SYSTEM_NOTICE'
,p_prompt=>unistr('\901A\77E5\7C7B\578B\FF1A')
,p_source=>'NOTICE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'NOTICE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3396835491168742451)||'.'
,p_grid_label_column_span=>1
,p_display_when=>'JW_IS_ADMIN'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3721459968758488467)
,p_name=>'P71_IS_NOTIFY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'IS_NOTIFY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835851882906764773)
,p_name=>'P71_VISIBLE_USERS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835852030838764774)
,p_name=>'P71_VISIBLE_DEPTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835852077314764775)
,p_name=>'P71_COMBINED_NAMES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'COMBINED_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835852191820764776)
,p_name=>'P71_VISIBLE_USERS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3835852281325764777)
,p_name=>'P71_VISIBLE_DEPTS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3837839058387045983)
,p_name=>'P71_NOTICE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'NOTICE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3837839479198045987)
,p_name=>'P71_TITLE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_prompt=>unistr('\901A\77E5\6807\9898\FF1A')
,p_source=>'TITLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>128
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3837839867377045988)
,p_name=>'P71_CONTENT'
,p_source_data_type=>'CLOB'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'CONTENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3837840288517045989)
,p_name=>'P71_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_default=>'ALL'
,p_prompt=>unistr('\901A\77E5\4EBA\5458\FF1A')
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3840427964653503675)
,p_name=>'P71_CONTENT_HTML'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_item_source_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_source=>'CONTENT_HTML'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3840428534103503680)
,p_name=>'P71_TITLE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(3837835295293045980)
,p_prompt=>unistr('\901A\77E5\5185\5BB9\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788844431638905601)
,p_name=>unistr('\5207\6362\901A\77E5')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P71_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788844864060905601)
,p_event_id=>wwv_flow_imp.id(2788844431638905601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P71_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788845319139905601)
,p_name=>unistr('\4FDD\5B58\5E76\53D1\5E03')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788833940529905594)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788847836305905603)
,p_event_id=>wwv_flow_imp.id(2788845319139905601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmlContent = editorDom.getData()',
'$s(''P71_CONTENT_HTML'', htmlContent)',
'var turndownService = new TurndownService()',
'var markdown = turndownService.turndown(htmlContent)',
'$s(''P71_CONTENT'', markdown)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788845824545905602)
,p_event_id=>wwv_flow_imp.id(2788845319139905601)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P71_TITLE''))) {',
'',
unistr('    alert(''\901A\77E5\6807\9898\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'if (utils.checkNull($v(''P71_CONTENT''))) {',
'',
unistr('    alert(''\901A\77E5\5185\5BB9\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788846318707905602)
,p_event_id=>wwv_flow_imp.id(2788845319139905601)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\901A\77E5\5185\5BB9')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:54',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\901A\77E5\8303\56F4 \65E5\5FD7'),
'    */',
'    v_user_names varchar2(255);',
'    v_dept_names varchar2(255);',
unistr('    v_type_name  varchar2(255) default ''\66F4\65B0\65E5\5FD7'';'),
'begin',
'    insert into JW_NOTICE (CREATED_BY, UPDATED_BY, TITLE, CONTENT, CONTENT_HTML, SCOPE_TYPE, SOURCE_TYPE, NOTICE_TYPE)',
'    VALUES (:JW_USER_ID, :JW_USER_ID, :P71_TITLE, :P71_CONTENT, :P71_CONTENT_HTML, :P71_SCOPE_TYPE, ''PERSON'',',
'            :P71_NOTICE_TYPE)',
'    returning NOTICE_ID into :P71_NOTICE_ID;',
'',
'    if :P71_NOTICE_TYPE = ''SYSTEM_NOTICE'' then',
unistr('        v_type_name := ''\7CFB\7EDF\901A\77E5'';'),
'    end if;',
'',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'        select listagg(NAME, '','')',
'        into v_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CREATE_NOTICE'',',
unistr('                       ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name ||'),
unistr('                       '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' || '';\53EF\89C1\4EBA\5458:'' || v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
'        );',
'    else',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CREATE_NOTICE'',',
unistr('                       ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name || '';\53EF\89C1\8303\56F4:\5168\90E8'');'),
'    end if;',
'    save_audit_log(:JW_USER_ID, ''NAM'', ''PUBLISH_NOTICE'',',
unistr('                   ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name);'),
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\901A\77E5\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_TITLE,P71_CONTENT,P71_SCOPE_TYPE,P71_CONTENT_HTML,P71_NOTICE_TYPE,P71_VISIBLE_USERS,P71_VISIBLE_DEPTS'
,p_attribute_03=>'P71_NOTICE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788846739658905602)
,p_event_id=>wwv_flow_imp.id(2788845319139905601)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4  \65E5\5FD7'),
'    */',
'    cursor userCursor is select *',
'                         from table (SPLITSTR(:P71_VISIBLE_USERS, '':''));',
'    cursor deptCursor is select *',
'                         from table (SPLITSTR(:P71_VISIBLE_DEPTS, '':''));',
'begin',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        FOR cur in userCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'        FOR cur in deptCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_NOTICE_ID,P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788847258120905603)
,p_event_id=>wwv_flow_imp.id(2788845319139905601)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert( ''\53D1\5E03\6210\529F\FF01'');'),
'$("#return_btn").click()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788848212652905603)
,p_name=>unistr('\66F4\65B0\901A\77E5')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788832388770905593)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788848703138905603)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmlContent = editorDom.getData()',
'$s(''P71_CONTENT_HTML'', htmlContent)',
'var turndownService = new TurndownService()',
'var markdown = turndownService.turndown(htmlContent)',
'$s(''P71_CONTENT'', markdown)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788849201285905603)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P71_TITLE''))) {',
'',
unistr('    alert(''\901A\77E5\6807\9898\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'if (utils.checkNull($v(''P71_CONTENT''))) {',
'',
unistr('    alert(''\901A\77E5\5185\5BB9\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788849650821905604)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53EF\89C1\8303\56F4\8BB0\5F55')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ERR_MSG NVARCHAR2(2000);',
'/**',
'* CREATE BY: WXX',
unistr('* CREATE DATE: 2025/2/21 16:00 \53EF\89C1\8303\56F4\8BB0\5F55 \65E5\5FD7'),
'*/',
'v_old_scope      varchar2(10);',
'v_add_user_names varchar2(255);',
'v_del_user_names varchar2(255);',
'v_add_dept_names varchar2(255);',
'v_del_dept_names varchar2(255);',
'begin',
'select SCOPE_TYPE into v_old_scope from JW_NOTICE where NOTICE_ID = :P71_NOTICE_ID;',
'',
'if v_old_scope = ''ALL'' and :P71_SCOPE_TYPE != ''ALL'' then',
'select listagg(NAME, '','')',
'into v_add_user_names',
'from MPF_BASIC_JA_DING_USER_V',
'where USER_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'select listagg(NAME, '','')',
'into v_add_dept_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('               ''\5168\90E8\53D8\66F4\4E3A\FF1A'' || ''\53EF\89C1\4EBA\5458\FF1A'' || v_add_user_names || ''\FF1B\53EF\89C1\90E8\95E8\FF1A'' || v_add_dept_names'),
');',
'elsif v_old_scope != ''ALL'' and :P71_SCOPE_TYPE = ''ALL'' then',
'select listagg(NAME, '','')',
'into v_del_user_names',
'from MPF_BASIC_JA_DING_USER_V',
'where USER_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'select listagg(NAME, '','')',
'into v_del_dept_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('               ''\53EF\89C1\4EBA\5458\FF1A'' || v_del_user_names || ''\FF1B\53EF\89C1\90E8\95E8\FF1A'' || v_del_dept_names || ''\FF1B\53D8\66F4\4E3A\5168\90E8'''),
');',
'elsif v_old_scope != ''ALL'' and :P71_SCOPE_TYPE != ''ALL'' then',
'select listagg(NAME, '','')',
'into v_add_user_names',
'from MPF_BASIC_JA_DING_USER_V',
'where USER_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':''))',
'                  MINUS',
'                  SELECT COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':'')));',
'select listagg(NAME, '','')',
'into v_del_user_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':''))',
'                  MINUS',
'                  SELECT COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'select listagg(NAME, '','')',
'into v_add_dept_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':''))',
'                  MINUS',
'                  SELECT COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':'')));',
'select listagg(NAME, '','')',
'into v_del_dept_names',
'from MPF_BASIC_JA_DING_DEPT_V',
'where DEPT_ID in (select COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':''))',
'                  MINUS',
'                  SELECT COLUMN_VALUE',
'                  FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'',
'save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('               ''\65B0\589E\4EBA\5458:'' || v_add_user_names || ''\FF1B\5220\9664\4EBA\5458:'' || v_del_user_names ||'),
unistr('               ''\FF1B\65B0\589E\90E8\95E8\FF1A'' || v_add_dept_names || ''\FF1B\5220\9664\90E8\95E8\FF1A'' || v_del_dept_names'),
');',
'end if;',
'COMMIT;',
'EXCEPTION',
'WHEN OTHERS THEN',
'ROLLBACK;',
'V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53EF\89C1\8303\56F4\8BB0\5F55'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'end;'))
,p_attribute_02=>'P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_NOTICE_ID,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788850175659905604)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\901A\77E5\5185\5BB9')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\901A\77E5\5185\5BB9 \65E5\5FD7'),
'    */',
'    v_title VARCHAR2(255);',
'begin',
'    select TITLE into v_title from JW_NOTICE where NOTICE_ID = :P71_NOTICE_ID;',
'',
'    update JW_NOTICE',
'    set UPDATED_BY  = :JW_USER_ID,',
'        UPDATE_DATE = sysdate,',
'        TITLE=:P71_TITLE,',
'        CONTENT=:P71_CONTENT,',
'        CONTENT_HTML=:P71_CONTENT_HTML,',
'        SCOPE_TYPE=:P71_SCOPE_TYPE,',
'        NOTICE_TYPE=:P71_NOTICE_TYPE',
'    where NOTICE_ID = :P71_NOTICE_ID;',
'',
'    if v_title != :P71_TITLE then',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_TITLE'',',
unistr('                   ''\901A\77E5\6807\9898:'' || v_title || ''\6539\4E3A'' || :P71_TITLE);'),
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\901A\77E5\5185\5BB9'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;',
''))
,p_attribute_02=>'P71_TITLE,P71_CONTENT,P71_SCOPE_TYPE,P71_CONTENT_HTML,P71_NOTICE_ID,P71_NOTICE_TYPE'
,p_attribute_03=>'P71_NOTICE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788850702331905605)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4 \65E5\5FD7'),
'    */',
'    cursor addUser is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':'')));',
'    cursor delUser is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'    cursor addDept is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':'')));',
'    cursor delDept is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'begin',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        FOR cur in delUser',
'            LOOP',
'                delete JW_SCOPE',
'                where REFERENCE_ID = :P71_NOTICE_ID',
'                  and REFERENCE_TYPE = ''NOTICE''',
'                  and ENTITY_TYPE = ''USER''',
'                  and ENTITY_ID = cur.COLUMN_VALUE;',
'            end loop;',
'',
'        FOR cur in delDept',
'            LOOP',
'                delete JW_SCOPE',
'                where REFERENCE_ID = :P71_NOTICE_ID',
'                  and REFERENCE_TYPE = ''NOTICE''',
'                  and ENTITY_TYPE = ''DEPT''',
'                  and ENTITY_ID = cur.COLUMN_VALUE;',
'            end loop;',
'',
'        FOR cur in addUser',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'        FOR cur in addDept',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_NOTICE_ID,P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788851169049905605)
,p_event_id=>wwv_flow_imp.id(2788848212652905603)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert(''\4FEE\6539\6210\529F\FF01'');'),
'$("#return_btn").click()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788851587365905605)
,p_name=>unistr('\4FDD\5B58\901A\77E5')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788833635508905594)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788852099624905605)
,p_event_id=>wwv_flow_imp.id(2788851587365905605)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmlContent = editorDom.getData()',
'$s(''P71_CONTENT_HTML'', htmlContent)',
'var turndownService = new TurndownService()',
'var markdown = turndownService.turndown(htmlContent)',
'$s(''P71_CONTENT'', markdown)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788852585740905605)
,p_event_id=>wwv_flow_imp.id(2788851587365905605)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P71_TITLE''))) {',
'',
unistr('    alert(''\901A\77E5\6807\9898\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'if (utils.checkNull($v(''P71_CONTENT''))) {',
'',
unistr('    alert(''\901A\77E5\5185\5BB9\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788853097804905606)
,p_event_id=>wwv_flow_imp.id(2788851587365905605)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\901A\77E5\5185\5BB9')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:56',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\901A\77E5\5185\5BB9 \65E5\5FD7'),
'    */',
'    v_user_names varchar2(255);',
'    v_dept_names varchar2(255);',
unistr('    v_type_name varchar2(255) default ''\66F4\65B0\65E5\5FD7'';'),
'begin',
'    insert into JW_NOTICE (CREATED_BY, UPDATED_BY, TITLE, CONTENT, CONTENT_HTML, SCOPE_TYPE, SOURCE_TYPE, NOTICE_TYPE,',
'                           IS_NOTIFY)',
'    VALUES (:JW_USER_ID, :JW_USER_ID, :P71_TITLE, :P71_CONTENT, :P71_CONTENT_HTML, :P71_SCOPE_TYPE, ''PERSON'',',
'            :P71_NOTICE_TYPE, 0)',
'    returning NOTICE_ID into :P71_NOTICE_ID;',
'',
'    if :P71_NOTICE_TYPE = ''SYSTEM_NOTICE'' then',
unistr('        v_type_name := ''\7CFB\7EDF\901A\77E5'';'),
'    end if;',
'',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'        select listagg(NAME, '','')',
'        into v_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CREATE_NOTICE'',',
unistr('                       ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name ||'),
unistr('                       '';\53EF\89C1\8303\56F4:\90E8\5206\53EF\89C1'' || '';\53EF\89C1\4EBA\5458:'' || v_user_names || '';\53EF\89C1\90E8\95E8:'' || v_dept_names'),
'        );',
'    else',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CREATE_NOTICE'',',
unistr('                       ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name || '';\53EF\89C1\8303\56F4:\5168\90E8'');'),
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\901A\77E5\5185\5BB9'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_TITLE,P71_CONTENT,P71_SCOPE_TYPE,P71_CONTENT_HTML,P71_NOTICE_TYPE,P71_VISIBLE_USERS,P71_VISIBLE_DEPTS'
,p_attribute_03=>'P71_NOTICE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788853593605905606)
,p_event_id=>wwv_flow_imp.id(2788851587365905605)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\901A\77E5 \65E5\5FD7'),
'    */',
'    cursor userCursor is select *',
'                         from table (SPLITSTR(:P71_VISIBLE_USERS, '':''));',
'    cursor deptCursor is select *',
'                         from table (SPLITSTR(:P71_VISIBLE_DEPTS, '':''));',
'begin',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        FOR cur in userCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'        FOR cur in deptCursor',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_NOTICE_ID,P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788854074051905606)
,p_event_id=>wwv_flow_imp.id(2788851587365905605)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert(''\4FDD\5B58\6210\529F\FF01'');'),
'$("#return_btn").click()'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788854523898905607)
,p_name=>unistr('\66F4\65B0\5E76\53D1\5E03')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788832758070905593)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788855012542905607)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmlContent = editorDom.getData()',
'$s(''P71_CONTENT_HTML'', htmlContent)',
'var turndownService = new TurndownService()',
'var markdown = turndownService.turndown(htmlContent)',
'$s(''P71_CONTENT'', markdown)'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788855497828905607)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P71_TITLE''))) {',
'   ',
unistr('    alert(''\901A\77E5\6807\9898\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}',
'if (utils.checkNull($v(''P71_CONTENT''))) {',
'    ',
unistr('    alert(''\901A\77E5\5185\5BB9\4E0D\80FD\4E3A\7A7A'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788855958887905608)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53EF\89C1\8303\56F4\8BB0\5F55')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_old_scope      varchar2(10);',
'    v_add_user_names varchar2(255);',
'    v_del_user_names varchar2(255);',
'    v_add_dept_names varchar2(255);',
'    v_del_dept_names varchar2(255);',
'    v_err_msg        varchar2(2000);',
'begin',
'    select SCOPE_TYPE into v_old_scope from JW_NOTICE where NOTICE_ID = :P71_NOTICE_ID;',
'',
'    if v_old_scope = ''ALL'' and :P71_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_add_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'        select listagg(NAME, '','')',
'        into v_add_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('                       ''\5168\90E8\53D8\66F4\4E3A\FF1A'' || ''\53EF\89C1\4EBA\5458\FF1A'' || v_add_user_names || ''\FF1B\53EF\89C1\90E8\95E8\FF1A'' || v_add_dept_names'),
'        );',
'    elsif v_old_scope != ''ALL'' and :P71_SCOPE_TYPE = ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_del_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'        select listagg(NAME, '','')',
'        into v_del_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('                       ''\53EF\89C1\4EBA\5458\FF1A'' || v_del_user_names || ''\FF1B\53EF\89C1\90E8\95E8\FF1A'' || v_del_dept_names || ''\FF1B\53D8\66F4\4E3A\5168\90E8'''),
'        );',
'    elsif v_old_scope != ''ALL'' and :P71_SCOPE_TYPE != ''ALL'' then',
'        select listagg(NAME, '','')',
'        into v_add_user_names',
'        from MPF_BASIC_JA_DING_USER_V',
'        where USER_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':''))',
'                          MINUS',
'                          SELECT COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':'')));',
'        select listagg(NAME, '','')',
'        into v_del_user_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':''))',
'                          MINUS',
'                          SELECT COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'        select listagg(NAME, '','')',
'        into v_add_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':''))',
'                          MINUS',
'                          SELECT COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':'')));',
'        select listagg(NAME, '','')',
'        into v_del_dept_names',
'        from MPF_BASIC_JA_DING_DEPT_V',
'        where DEPT_ID in (select COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':''))',
'                          MINUS',
'                          SELECT COLUMN_VALUE',
'                          FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_SCOPE'',',
unistr('                       ''\65B0\589E\4EBA\5458:'' || v_add_user_names || ''\FF1B\5220\9664\4EBA\5458:'' || v_del_user_names ||'),
unistr('                       ''\FF1B\65B0\589E\90E8\95E8\FF1A'' || v_add_dept_names || ''\FF1B\5220\9664\90E8\95E8\FF1A'' || v_del_dept_names'),
'        );',
'    end if;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53EF\89C1\8303\56F4\8BB0\5F55'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,'),
'                  :APP_ID, :APP_CODE);',
'end;'))
,p_attribute_02=>'P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_NOTICE_ID,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788856447910905608)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\901A\77E5\5185\5BB9')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:57',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\901A\77E5\5185\5BB9 \65E5\5FD7'),
'    */',
'    v_title VARCHAR2(255);',
unistr('    v_type_name varchar2(255) default ''\66F4\65B0\65E5\5FD7'';'),
'begin',
'    select TITLE into v_title from JW_NOTICE where NOTICE_ID = :P71_NOTICE_ID;',
'',
'    if :P71_NOTICE_TYPE = ''SYSTEM_NOTICE'' then',
unistr('        v_type_name := ''\7CFB\7EDF\901A\77E5'';'),
'    end if;',
'',
'    update JW_NOTICE',
'    set UPDATED_BY  = :JW_USER_ID,',
'        UPDATE_DATE = sysdate,',
'        TITLE=:P71_TITLE,',
'        CONTENT=:P71_CONTENT,',
'        CONTENT_HTML=:P71_CONTENT_HTML,',
'        SCOPE_TYPE=:P71_SCOPE_TYPE,',
'        NOTICE_TYPE=:P71_NOTICE_TYPE,',
'        IS_NOTIFY=1',
'    where NOTICE_ID = :P71_NOTICE_ID;',
'',
'    if v_title != :P71_TITLE then',
'        save_audit_log(:JW_USER_ID, ''NAM'', ''CHANGE_NOTICE_TITLE'',',
unistr('                   ''\901A\77E5\6807\9898:'' || v_title || ''\6539\4E3A'' || :P71_TITLE);'),
'    end if;',
'    ',
'    save_audit_log(:JW_USER_ID, ''NAM'', ''PUBLISH_NOTICE'',',
unistr('                       ''\901A\77E5\6807\9898:'' || :P71_TITLE || '';\901A\77E5\7C7B\578B:'' || v_type_name);'),
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\901A\77E5\5185\5BB9'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'                     ',
'end;',
''))
,p_attribute_02=>'P71_TITLE,P71_CONTENT,P71_SCOPE_TYPE,P71_CONTENT_HTML,P71_NOTICE_ID,P71_NOTICE_TYPE'
,p_attribute_03=>'P71_NOTICE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788857006213905608)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4 \65E5\5FD7'),
'    */',
'    cursor addUser is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':'')));',
'    cursor delUser is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS_RAW, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_USERS, '':'')));',
'    cursor addDept is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':'')));',
'    cursor delDept is (select COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS_RAW, '':''))',
'                       MINUS',
'                       SELECT COLUMN_VALUE',
'                       FROM TABLE (SPLITSTR(:P71_VISIBLE_DEPTS, '':'')));',
'begin',
'    if :P71_SCOPE_TYPE != ''ALL'' then',
'        FOR cur in delUser',
'            LOOP',
'                delete JW_SCOPE',
'                where REFERENCE_ID = :P71_NOTICE_ID',
'                  and REFERENCE_TYPE = ''NOTICE''',
'                  and ENTITY_TYPE = ''USER''',
'                  and ENTITY_ID = cur.COLUMN_VALUE;',
'            end loop;',
'',
'        FOR cur in delDept',
'            LOOP',
'                delete JW_SCOPE',
'                where REFERENCE_ID = :P71_NOTICE_ID',
'                  and REFERENCE_TYPE = ''NOTICE''',
'                  and ENTITY_TYPE = ''DEPT''',
'                  and ENTITY_ID = cur.COLUMN_VALUE;',
'            end loop;',
'',
'        FOR cur in addUser',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''USER'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'        FOR cur in addDept',
'            LOOP',
'                INSERT INTO JW_SCOPE (TENANT_ID,',
'                                      CREATED_BY,',
'                                      UPDATED_BY,',
'                                      ENTITY_TYPE,',
'                                      ENTITY_ID,',
'                                      REFERENCE_ID,',
'                                      REFERENCE_TYPE)',
'                VALUES (:JW_USER_TENANT,',
'                        :JW_USER_ID,',
'                        :JW_USER_ID,',
'                        ''DEPT'',',
'                        cur.COLUMN_VALUE,',
'                        :P71_NOTICE_ID,',
'                        ''NOTICE'');',
'            END LOOP;',
'    end if;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P71_NOTICE_ID,P71_VISIBLE_USERS,P71_VISIBLE_USERS_RAW,P71_VISIBLE_DEPTS,P71_VISIBLE_DEPTS_RAW,P71_SCOPE_TYPE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788857527167905608)
,p_event_id=>wwv_flow_imp.id(2788854523898905607)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert(''\53D1\5E03\6210\529F\FF01'');'),
'$("#return_btn").click()'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788842795463905600)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(3837835295293045980)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \901A\77E5\7F16\8F91')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>328709957276055334
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788842406654905599)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(3837835295293045980)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \901A\77E5\7F16\8F91')
,p_internal_uid=>328709568467055333
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>unistr('\5E94\7528\8BBE\7F6E')
,p_alias=>unistr('\5E94\7528\8BBE\7F6E')
,p_step_title=>unistr('\5E94\7528\8BBE\7F6E')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807208866505119)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/ywja-public-bucket/s3-client.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var file = $(''[upload-type="FILE"]'')',
'',
'const s3Client = S3Client.init({',
unistr('    baseURL: $v("P0_UPLOAD_URL"), // S3 \670D\52A1\7684 API \57FA\7840\5730\5740'),
'    appKey: $v(''P0_JA_APP_KEY''),',
'    appSecret : $v(''P0_JA_APP_SECRET'')',
'});',
'',
'',
'function uploadFile(file, callback) {',
'    s3Client.uploadFile(file)',
'        .then(obj => {',
unistr('            console.log(obj); // \4E0A\4F20\6210\529F\7684\6587\4EF6\94FE\63A5\4FE1\606F'),
'            callback(obj)',
'        })',
'        .catch(err => {',
unistr('            console.error(err); // \9519\8BEF\4FE1\606F'),
'        });',
'}',
'',
'$.each(file, function (i, e) {',
'    e.onchange = async () => {',
'        console.log($(e));',
'        uploadFile(e.files[0], (data) => {',
'            if (data) {',
'                $s(''P41_APP_ICON'', data.url)',
'                $(''#app_icon'').attr(''src'', data.url)',
'                $(''#app_icon'').show()',
'                $(''#null_icon'').hide()',
'            }',
'        })',
'',
'    }',
'})',
'',
'function visible_callback(result) {',
'    console.log(result)',
'    $s(''P41_VISIBLE_USERS'', result.users.map(i => i.emplId).join('',''))',
'    $s(''P41_VISIBLE_DEPTS'', result.departments.map(i => +i.id).join('',''))',
'    if (result.users.length > 0 && result.departments.length > 0) {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + '','' + result.departments.map(i => i.name).join('',''))',
'    } else {',
'        $(''#chooseInput'').val(result.users.map(i => i.name).join('','') + result.departments.map(i => i.name).join('',''))',
'    }',
'}',
'',
'function isUrlValid(string) {',
'    try {',
'        new URL(string);',
'        return true;',
'    } catch (err) {',
'        return false;',
'    }',
'}',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_APP_ICON'') === '''' || $v(''P41_APP_ICON'') === ''null'') {',
'    $(''#app_icon'').hide()',
'    $(''#null_icon'').show()',
'} else {',
'    $(''#app_icon'').attr(''src'', $v(''P41_APP_ICON''))',
'    $(''#app_icon'').show()',
'    $(''#null_icon'').hide()',
'}',
'',
'if ($v(''P41_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}',
'',
'',
'',
'$(document).ready(function () {    ',
'    // if ($v(''P41_APP_TYPE'') != ''H5'') {',
'    //     $(''#save_btn'').hide()',
'    // }',
'',
'    if ($v(''P41_APP_TYPE'') === ''H5'') {',
'        $(''#sync_btn'').hide()',
'    }',
'});',
'',
unistr('// \9875\9762\52A0\8F7D\65F6\8C03\7528\9489\9489\9274\6743\5E76\521D\59CB\5316SDK'),
'DingTalkAuth.initDingTalkSDK($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'',
unistr('// \7ED1\5B9A\9009\62E9\4EBA\5458\6309\94AE'),
'document.getElementById(''chooseBtn'').addEventListener(''click'', function () {',
'    let userList = $v(''P41_VISIBLE_USERS'').split(",");',
'    let deptList = $v(''P41_VISIBLE_DEPTS'').split(",");',
'    DingTalkAuth.chooseUsers(userList, deptList, visible_callback);',
'});',
'',
'$(''#chooseInput'').val($v(''P41_COMBINED_NAMES''))',
'$(''#roleName'').val($v(''P41_ROLE_NAMES''))',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/* .add-img {',
'    cursor: pointer;',
'} */',
'',
'#app_icon {',
'    width: 100px;',
'    height: 100px;',
'}',
'',
'#null_icon {',
'    width: 100px;',
'    height: 100px;',
'    background-color: #e0e0e0;',
'    line-height: 100px;',
'    text-align: center;',
'}',
'',
'#add_tag_popup {',
'    height: 170px !important;',
'}',
'',
'#chooseInput {',
'    width: 400px;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4760572983710785624)
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
 p_id=>wwv_flow_imp.id(4966380162733198131)
,p_plug_name=>unistr('\8BBE\7F6E\5E94\7528')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421788139356171854)
,p_plug_display_sequence=>60
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select JW_APP_ID,',
'       APP_ICON,',
'       APP_NAME,',
'       (select LISTAGG(USER_ID, '','')',
'        from MPF_BASIC_JA_DING_USER_V u',
'        where u.USER_ID in (select USER_ID',
'                            from JW_ADMIN ad',
'                            where REFERENCE_TYPE = ''APP''',
'                              and ad.REFERENCE_ID = a.JW_APP_ID))    as ADMIN_IDS,',
'       (select LISTAGG(APP_TAG_ID, '':'')',
'        from JW_APP_TAG_ASSO u',
'        where u.APP_ID = a.JW_APP_ID)                                as TAG_IDS,',
'       SCOPE_TYPE,',
'       APP_TYPE,',
'       AGENT_ID,',
'       PC_URL,',
'       MP_URL,',
'       LOGIN_TYPE,',
'       JING_JIE_CODE,',
'       APP_OPEN_TYPE,',
'       DEVICE,',
'       (select XMLAGG(XMLELEMENT(e, ENTITY_ID, '','').extract(''//text()''))',
'           .getClobVal()',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''APP''',
'          and s.REFERENCE_ID = a.JW_APP_ID',
'          and s.ENTITY_TYPE = ''USER'')                                as VISIBLE_USERS,',
'       (select LISTAGG(ENTITY_ID, '','')',
'        from JW_SCOPE s',
'        where s.REFERENCE_TYPE = ''APP''',
'          and s.REFERENCE_ID = a.JW_APP_ID',
'          and s.ENTITY_TYPE = ''DEPT'')                                as VISIBLE_DEPTS,',
'       (select LISTAGG(DISTINCT g.WORKBENCH_ID, '','')',
'        from JW_APP_GROUP_ASSO asso',
'                 join JW_APP_GROUP g on asso.APP_GROUP_ID = g.APP_GROUP_ID',
'        where APP_ID = a.JW_APP_ID',
'          and g.DEL_FLAG = 0)                                        as WORKBENCH_IDS,',
'       (SELECT XMLAGG(XMLELEMENT(e, NAME, '','').extract(''//text()''))',
'           .getClobVal()',
'        FROM (',
unistr('                 -- \67E5\8BE2USER\7684\540D\5B57'),
'                 SELECT u.NAME',
'                 FROM MPF_BASIC_JA_DING_USER_V u',
'                 WHERE u.USER_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''APP''',
'                                       AND s.REFERENCE_ID = a.JW_APP_ID',
'                                       AND s.ENTITY_TYPE = ''USER'')',
'',
'                 UNION',
unistr('                 -- \4F7F\7528 UNION \53BB\91CD'),
unistr('                 -- \67E5\8BE2DEPT\7684\540D\5B57'),
'                 SELECT d.NAME',
'                 FROM MPF_BASIC_JA_DING_DEPT_V d',
'                 WHERE d.DEPT_ID IN (SELECT s.ENTITY_ID',
'                                     FROM JW_SCOPE s',
'                                     WHERE s.REFERENCE_TYPE = ''APP''',
'                                       AND s.REFERENCE_ID = a.JW_APP_ID',
'                                       AND s.ENTITY_TYPE = ''DEPT''))) AS COMBINED_NAMES,',
'       (SELECT LISTAGG(rg.GROUP_NAME || ''-'' || ROLE_NAME, '','')',
'        FROM MPF_BASIC_JA_DING_ROLE_V r',
'                 LEFT JOIN MPF_BASIC_JA_DING_ROLE_GROUP_V rg on r.ROLE_GROUP_ID = rg.ROLE_GROUP_ID',
'        WHERE r.ROLE_ID IN (SELECT s.ENTITY_ID',
'                                 FROM JW_SCOPE s',
'                                 WHERE s.REFERENCE_TYPE = ''APP''',
'                                   AND s.REFERENCE_ID = a.JW_APP_ID',
'                                   AND s.ENTITY_TYPE = ''ROLE''))      AS ROLE_NAMES',
'from JW_APP a',
'where DEL_FLAG = 0;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4758777293051098238)
,p_plug_name=>unistr('\5E94\7528\56FE\6807')
,p_parent_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_region_template_options=>'t-BreadcrumbRegion--showBreadcrumb:t-BreadcrumbRegion--compactTitle:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<img class=''add-img'' id=''app_icon'' src="" alt="\7CFB\7EDF\56FE\6807" />'),
unistr('<div class=''add-img'' id=''null_icon''>\6682\65E0\56FE\6807</div>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4765750231989634163)
,p_plug_name=>unistr('\9009\62E9')
,p_region_name=>'user_input'
,p_parent_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(4421864486337171884)
,p_plug_display_sequence=>140
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div style="display: flex;justify-content: flex-start;align-items: center;">',
'    <input readonly  id="chooseInput" style="margin-right:10px">',
unistr('    <button type=''button'' id="chooseBtn">\9009\62E9\4EBA\5458</button>    '),
'</div>',
'<div style="margin-top:20px">',
unistr('    <label>\53EF\89C1\89D2\8272\8303\56F4\FF08\65E0\6CD5\4FEE\6539\FF09\FF1A</label><input readonly  id="roleName" style="margin-right:20px">'),
'</div>',
''))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4792778017624581457)
,p_plug_name=>unistr('\6807\7B7E\65B0\589E')
,p_region_name=>'add_tag_popup'
,p_parent_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_region_template_options=>'#DEFAULT#:js-dialog-size480x320'
,p_plug_template=>wwv_flow_imp.id(4421806473195171861)
,p_plug_display_sequence=>110
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select APP_TAG_ID,',
'       TAG_NAME',
'from JW_APP_TAG'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788905390435087656)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_button_name=>unistr('\65B0\589E\6807\7B7E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\65B0\589E\6807\7B7E')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'JW_IS_ADMIN'
,p_button_condition2=>'1'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788905776373087656)
,p_button_sequence=>360
,p_button_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_button_name=>unistr('\4FDD\5B58\66F4\6539')
,p_button_static_id=>'save_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58\66F4\6539')
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788906182292087656)
,p_button_sequence=>370
,p_button_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_button_name=>unistr('\540C\6B65\5E94\7528')
,p_button_static_id=>'sync_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--iconRight:t-Button--gapTop'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\540C\6B65\5E94\7528')
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-repeat'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788923594661087669)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2788923986987087670)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4421927953593171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'CREATE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(51754204943969544)
,p_name=>'P41_JING_JIE_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\767B\5F55\51ED\8BC1')
,p_source=>'JING_JIE_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:code;code,jjCode;jjCode'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_imp.id(4421926197852171918)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3566048081445828032)
,p_name=>'P41_NAME_PINYIN'
,p_item_sequence=>390
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3934925105971506117)
,p_name=>'P41_IS_REPEAT'
,p_item_sequence=>380
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312414292998055031)
,p_name=>'P41_LOGIN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\767B\5F55\65B9\5F0F')
,p_source=>'LOGIN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOGIN_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3985423064601355068)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_imp.id(4421926197852171918)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312414379545055032)
,p_name=>'P41_APP_OPEN_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\6253\5F00\65B9\5F0F')
,p_source=>'APP_OPEN_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'APP_OPEN_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(3985424508146364463)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>3
,p_field_template=>wwv_flow_imp.id(4421926197852171918)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312415027614055038)
,p_name=>'P41_DEVICE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\4F7F\7528\8BBE\5907')
,p_source=>'DEVICE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'DEVICE'
,p_lov=>'.'||wwv_flow_imp.id(3985425880929371233)||'.'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_display_when=>'P41_APP_TYPE'
,p_display_when2=>'H5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421926197852171918)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4312415739083055045)
,p_name=>'P41_ROLE_NAMES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'ROLE_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4548793463034502336)
,p_name=>'P41_APP_NAME_1'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\5E94\7528\540D\79F0')
,p_source=>'APP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_display_when=>'P41_APP_TYPE'
,p_display_when2=>'H5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758779104571098237)
,p_name=>'P41_JW_APP_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'JW_APP_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758779637040098242)
,p_name=>'P41_FILE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_display_when=>':P41_APP_TYPE = ''H5'' or :P41_APP_TYPE = ''YIDA'''
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'allow_multiple_files', 'N',
  'display_as', 'NATIVE',
  'file_types', 'image/*',
  'purge_file_at', 'SESSION',
  'storage_type', 'APEX_APPLICATION_TEMP_FILES')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758780128745098247)
,p_name=>'P41_PC_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('PC\7AEF\94FE\63A5\FF1A')
,p_source=>'PC_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1024
,p_display_when=>'P41_APP_TYPE'
,p_display_when2=>'H5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758780249668098248)
,p_name=>'P41_MP_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\79FB\52A8\7AEF\94FE\63A5\FF1A')
,p_source=>'MP_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>1024
,p_display_when=>'P41_APP_TYPE'
,p_display_when2=>'H5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758780311787098249)
,p_name=>'P41_TITLE_3'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_default=>unistr('\5F00\53D1\914D\7F6E')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758780587172098251)
,p_name=>'P41_TITLE_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_default=>unistr('\5E94\7528\53EF\89C1\8303\56F4')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4758780610188098252)
,p_name=>'P41_TITLE_2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_default=>unistr('\5206\914D\81F3\5B9A\5236\5DE5\4F5C\53F0')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4765752021405634162)
,p_name=>'P41_SCOPE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'SCOPE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'SCOPE_TYPE'
,p_lov=>'.'||wwv_flow_imp.id(4445941052004953418)||'.'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4776531878246793229)
,p_name=>'P41_WORKBENCH_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'WORKBENCH_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select WORKBENCH_NAME, WORKBENCH_ID',
'from JW_WORKBENCH w',
'left join JW_WORKBENCH_TEMPLATE t on w.TEMPLATE_ID = t.TEMPLATE_ID',
'where w.DEL_FLAG = 0 and t.TEMPLATE_TYPE=''SUB_LINK'';'))
,p_cSize=>60
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(4776563432806255816)
,p_name=>'P41_VISIBLE_USERS'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4776563573334255817)
,p_name=>'P41_VISIBLE_DEPTS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791335344558737039)
,p_name=>'P41_APP_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'APP_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4791335762806737043)
,p_name=>'P41_COMBINED_NAMES'
,p_source_data_type=>'CLOB'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'COMBINED_NAMES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792201571007870124)
,p_name=>'P41_ADMIN_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\7BA1\7406\5458')
,p_source=>'ADMIN_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'NAME_BY_ID'
,p_lov=>'select USER_ID,NAME || JOB_NUMBER from MPF_BASIC_JA_DING_USER_V where IS_LEAVE = 0;'
,p_cSize=>30
,p_cMaxlength=>4000
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(4792201821197870127)
,p_name=>'P41_TAG_IDS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\6807\7B7E')
,p_source=>'TAG_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select TAG_NAME, APP_TAG_ID',
'from JW_APP_TAG',
'where DEL_FLAG = 0;'))
,p_cSize=>30
,p_cMaxlength=>4000
,p_display_when=>'JW_IS_ADMIN'
,p_display_when2=>'1'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--xlarge'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>':'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792204552844870154)
,p_name=>'P41_WORKBENCH_IDS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'WORKBENCH_IDS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792777087899581428)
,p_name=>'P41_VISIBLE_USERS_RAW'
,p_data_type=>'CLOB'
,p_source_data_type=>'CLOB'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'VISIBLE_USERS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792777113715581429)
,p_name=>'P41_VISIBLE_DEPTS_RAW'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'VISIBLE_DEPTS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792777515352581433)
,p_name=>'P41_AGENT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'AGENT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4792798233166581475)
,p_name=>'P41_APP_TAG_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_item_source_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_source=>'APP_TAG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4796970541771977132)
,p_name=>'P41_TAG_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_item_source_plug_id=>wwv_flow_imp.id(4792778017624581457)
,p_prompt=>unistr('\6807\7B7E\540D\FF1A')
,p_source=>'TAG_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_imp.id(4421925559756171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4966383697227198153)
,p_name=>'P41_APP_ICON'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_source=>'APP_ICON'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4966384089120198155)
,p_name=>'P41_APP_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_item_source_plug_id=>wwv_flow_imp.id(4966380162733198131)
,p_prompt=>unistr('\5E94\7528\540D\79F0')
,p_source=>'APP_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_display_when=>'P41_APP_TYPE'
,p_display_when2=>'H5'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_imp.id(4421925355818171917)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788926790618087671)
,p_name=>unistr('\5207\6362')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SCOPE_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788927238223087672)
,p_event_id=>wwv_flow_imp.id(2788926790618087671)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_SCOPE_TYPE'') === ''ALL'') {',
'    $(''#user_input'').hide()',
'} else {',
'    $(''#user_input'').show()',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788927725091087672)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788905776373087656)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788932718894087675)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C1')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_APP_TYPE'') === ''H5'' && utils.checkNull($v(''P41_APP_NAME''))) {',
unistr('    alert(''\5E94\7528\540D\79F0\4E0D\80FD\4E3A\7A7A\3002'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788933205484087676)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:56',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\7EDF\8BA1\5E94\7528\540D\662F\5426\91CD\590D \65E5\5FD7'),
'    */',
'    v_count NUMBER;',
'BEGIN',
'    SELECT COUNT(JW_APP_ID)',
'    INTO v_count',
'    FROM JW_APP',
'    WHERE APP_NAME = :P41_APP_NAME',
'    AND JW_APP_ID <> :P41_JW_APP_ID',
'    AND DEL_FLAG = 0',
'    AND IS_BLACKLIST = 0;',
'',
'    :P41_IS_REPEAT := v_count;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\7EDF\8BA1\5E94\7528\540D\662F\5426\91CD\590D'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'END;'))
,p_attribute_02=>'P41_JW_APP_ID,P41_APP_NAME'
,p_attribute_03=>'P41_IS_REPEAT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788933728018087676)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C2')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_IS_REPEAT'') > 0) {',
'',
unistr('    alert(''\5E94\7528\540D\79F0\4E0D\80FD\91CD\590D'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788934141397087676)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C3')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_APP_TYPE'') === ''H5'') {',
'    if (utils.checkNull($v(''P41_PC_URL''))  && utils.checkNull($v(''P41_MP_URL''))) {',
'',
unistr('        alert(''\5E94\7528\94FE\63A5\4E0D\80FD\540C\65F6\4E3A\7A7A\3002'');'),
'        return false',
'    } else if (!utils.checkNull($v(''P41_PC_URL'')) && !isUrlValid($v(''P41_PC_URL''))) {',
'',
unistr('         alert(''pc\7AEF\94FE\63A5\683C\5F0F\9519\8BEF\3002'');'),
'        return false',
'    } else if (!utils.checkNull($v(''P41_MP_URL'')) && !isUrlValid($v(''P41_MP_URL''))) {',
'',
unistr('         alert(''\79FB\52A8\7AEF\94FE\63A5\683C\5F0F\9519\8BEF\3002'');'),
'        return false',
'    }',
'}',
'',
'return true'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788934674508087676)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_name=>unistr('\83B7\53D6\5E94\7528\62FC\97F3\540D')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_NAME_PINYIN'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const result =   DingTalkAuth.getPinyin($v(''P0_DING_REQUEST_URL''),$v(''P41_APP_NAME''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''));',
'if(result && result.data){',
'        $s(''P41_NAME_PINYIN'',result.data);',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788929167297087673)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0app\8868')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:51',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\66F4\65B0APP\8868'),
'    */',
'begin',
'    if :P41_APP_TYPE = ''H5'' then',
'        update JW_APP',
'        set APP_ICON=nvl(:P41_APP_ICON, APP_ICON),',
'            APP_NAME=nvl(:P41_APP_NAME, APP_NAME),',
'            NAME_PINYIN=nvl(:P41_NAME_PINYIN, NAME_PINYIN),',
'            PC_URL=nvl(:P41_PC_URL, PC_URL),',
'            MP_URL=nvl(:P41_MP_URL, MP_URL),',
'            SCOPE_TYPE=nvl(:P41_SCOPE_TYPE, SCOPE_TYPE),',
'            LOGIN_TYPE=nvl(:P41_LOGIN_TYPE, LOGIN_TYPE),',
'            JING_JIE_CODE=:P41_JING_JIE_CODE,',
'            APP_OPEN_TYPE=nvl(:P41_APP_OPEN_TYPE, APP_OPEN_TYPE),',
'            DEVICE=nvl(:P41_DEVICE, DEVICE),',
'            UPDATED_BY = :JW_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where JW_APP_ID = :P41_JW_APP_ID;',
'    elsif :P41_APP_TYPE = ''YIDA'' then',
'        update JW_APP',
'        set APP_ICON=nvl(:P41_APP_ICON, APP_ICON),',
'            SCOPE_TYPE=nvl(:P41_SCOPE_TYPE, SCOPE_TYPE),',
'            LOGIN_TYPE=nvl(:P41_LOGIN_TYPE, LOGIN_TYPE),',
'            JING_JIE_CODE=:P41_JING_JIE_CODE,',
'            APP_OPEN_TYPE=nvl(:P41_APP_OPEN_TYPE, APP_OPEN_TYPE),',
'            DEVICE=nvl(:P41_DEVICE, DEVICE),',
'            UPDATED_BY = :JW_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where JW_APP_ID = :P41_JW_APP_ID;',
'    else',
'        update JW_APP',
'        set SCOPE_TYPE=nvl(:P41_SCOPE_TYPE, SCOPE_TYPE),',
'            LOGIN_TYPE=nvl(:P41_LOGIN_TYPE, LOGIN_TYPE),',
'            JING_JIE_CODE=:P41_JING_JIE_CODE,',
'            APP_OPEN_TYPE=nvl(:P41_APP_OPEN_TYPE, APP_OPEN_TYPE),',
'            DEVICE=nvl(:P41_DEVICE, DEVICE),',
'            UPDATED_BY = :JW_USER_ID,',
'            UPDATE_DATE = sysdate',
'        where JW_APP_ID = :P41_JW_APP_ID;',
'    end if;',
'    COMMIT;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\66F4\65B0APP\8868'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P41_APP_ICON,P41_JW_APP_ID,P41_APP_NAME,P41_SCOPE_TYPE,P41_PC_URL,P41_MP_URL,P41_VISIBLE_USERS,P41_VISIBLE_DEPTS,P41_APP_TYPE,P41_WORKBENCH_IDS,P41_ADMIN_IDS,P41_LOGIN_TYPE,P41_APP_OPEN_TYPE,P41_DEVICE,P41_NAME_PINYIN,P41_JING_JIE_CODE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788928146025087672)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:51',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\53EF\89C1\8303\56F4\65E5\5FD7'),
'    */',
'    cursor addUserCursor is select *',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_USERS, '',''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_USERS_RAW, '',''));',
'    cursor addDeptCursor is select *',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_DEPTS, '',''))',
'                            MINUS',
'                            SELECT *',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_DEPTS_RAW, '',''));',
'begin',
'    -- WRITE_LOG(''jw'', ''scope1'',:P41_SCOPE_TYPE, null, 1);',
'    if :P41_SCOPE_TYPE != ''ALL'' then',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P41_JW_APP_ID',
'          and REFERENCE_TYPE = ''APP''',
'          and ENTITY_TYPE = ''USER''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_USERS_RAW, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_USERS, '','')));',
'',
'        delete JW_SCOPE',
'        where REFERENCE_ID = :P41_JW_APP_ID',
'          and REFERENCE_TYPE = ''APP''',
'          and ENTITY_TYPE = ''DEPT''',
'          and ENTITY_ID in (select COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_DEPTS_RAW, '',''))',
'                            MINUS',
'                            SELECT COLUMN_VALUE',
'                            FROM TABLE (SPLITSTR(:P41_VISIBLE_DEPTS, '','')));',
'        -- WRITE_LOG(''jw'', ''scope2'',111, null, 1);',
'        for cur in addUserCursor',
'            loop',
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
'                        :P41_JW_APP_ID,',
'                        ''APP'');',
'            end loop;',
'',
'        for cur in addDeptCursor',
'            loop',
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
'                        :P41_JW_APP_ID,',
'                        ''APP'');',
'            end loop;',
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\53EF\89C1\8303\56F4'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P41_VISIBLE_USERS,P41_VISIBLE_USERS_RAW,P41_VISIBLE_DEPTS,P41_VISIBLE_DEPTS_RAW,P41_SCOPE_TYPE,P41_JW_APP_ID,P41_WORKBENCH_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788928714199087673)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53D1\9001\66F4\65B0\901A\77E5')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:40',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\53D1\9001\66F4\65B0\901A\77E5\65E5\5FD7'),
'    */',
'    cursor workbenchNameCursor is select *',
'                                  from table (SPLITSTR(:P41_WORKBENCH_IDS, '',''));',
'    v_app_name         varchar2(100);',
'    v_workbench_name   varchar2(100);',
'    v_update_notice_id number(20);',
'    v_app_in_group     number(1);',
'    v_content          CLOB;',
'begin',
'    select APP_NAME',
'    into v_app_name',
'    from JW_APP',
'    where JW_APP_ID = :P41_JW_APP_ID;',
'',
'    if :P41_VISIBLE_USERS != :P41_VISIBLE_USERS_RAW or :P41_VISIBLE_DEPTS != :P41_VISIBLE_DEPTS_RAW then',
'        for cur in workbenchNameCursor',
'            loop',
'                select WORKBENCH_NAME',
'                into v_workbench_name',
'                from JW_WORKBENCH',
'                where WORKBENCH_ID = cur.COLUMN_VALUE;',
unistr('                -- \67E5\8BE2\5E94\7528\662F\5426\4E0A\67B6'),
'                select count(1)',
'                into v_app_in_group',
'                from JW_APP_GROUP_ASSO ag',
'                         left join JW_APP_GROUP g on g.APP_GROUP_ID = ag.APP_GROUP_ID',
'                         left join JW_WORKBENCH w on w.WORKBENCH_ID = g.WORKBENCH_ID',
'                where w.WORKBENCH_ID = cur.COLUMN_VALUE',
'                  and g.IS_DEFAULT != 1',
'                  and g.DEL_FLAG = 0',
'                  and ag.DEL_FLAG = 0',
'                  and ag.APP_ID = :P41_JW_APP_ID;',
'',
unistr('                -- \7BA1\7406\5458\901A\77E5'),
unistr('                v_content := v_workbench_name || ''\5DE5\4F5C\53F0\4E0A'' || v_app_name ||'),
'                             CASE',
unistr('                                 WHEN v_app_in_group > 0 THEN ''\5E94\7528\53EF\89C1\8303\56F4\5DF2\8C03\6574'''),
unistr('                                 ELSE ''\5F85\4E0A\67B6\5E94\7528\53EF\89C1\8303\56F4\5DF2\8C03\6574'''),
'                                 END;',
'                insert into JW_NOTICE (CREATED_BY, UPDATED_BY, TITLE, CONTENT, CONTENT_HTML, SCOPE_TYPE, SOURCE_TYPE,',
'                                       NOTICE_TYPE)',
unistr('                VALUES (1, 1, ''\5E94\7528\53EF\89C1\8303\56F4\8C03\6574'', v_content, ''<p>'' || v_content || ''</p>'','),
'                        ''SPECIFIC'', ''AUTO'',',
'                        ''SYSTEM_NOTICE'')',
'                returning NOTICE_ID into v_update_notice_id;',
'',
'                FOR rec IN (',
'                    select USER_ID',
'                    from JW_ADMIN',
'                    where REFERENCE_TYPE = ''WORKBENCH''',
'                      and REFERENCE_ID = cur.COLUMN_VALUE',
'                    )',
'                    LOOP',
'                        INSERT INTO JW_SCOPE (CREATED_BY,',
'                                              UPDATED_BY,',
'                                              ENTITY_TYPE,',
'                                              ENTITY_ID,',
'                                              REFERENCE_ID,',
'                                              REFERENCE_TYPE)',
'                        VALUES (1,',
'                                1,',
'                                ''USER'',',
'                                rec.USER_ID,',
'                                v_update_notice_id,',
'                                ''NOTICE'');',
'                    END LOOP;',
'            end loop;',
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53D1\9001\66F4\65B0\901A\77E5'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P41_JW_APP_ID,P41_WORKBENCH_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788929680046087673)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53CD\5411\540C\6B65\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const users = $v(''P41_VISIBLE_USERS'').split('','');',
'const usersRaw = $v(''P41_VISIBLE_USERS_RAW'').split('','');',
'const depts = $v(''P41_VISIBLE_DEPTS'').split('','').map(Number);',
'const deptsRaw = $v(''P41_VISIBLE_DEPTS_RAW'').split('','').map(Number);',
'',
'const addUserIds = users.filter(userId => !usersRaw.includes(userId));',
'const delUserIds = usersRaw.filter(userId => !users.includes(userId));',
'const addDeptIds = depts.filter(userId => !deptsRaw.includes(userId));',
'const delDeptIds = deptsRaw.filter(userId => !depts.includes(userId));',
'const request = {',
'        addUserIds,',
'        delUserIds,',
'        addDeptIds,',
'        delDeptIds',
'    }',
'',
'if ($v(''P41_APP_TYPE'') === ''DING'') {',
'    DingTalkAuth.setAppScopes($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''), $v(''P41_AGENT_ID''), request);',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788930205555087674)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\7BA1\7406\5458')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:49',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\7BA1\7406\5458\65E5\5FD7'),
'    */',
'    v_admin_id  VARCHAR2(128);',
unistr('    v_admin_pos PLS_INTEGER := 0; -- \4F4D\7F6E\6307\9488'),
'begin',
'    delete JW_ADMIN where REFERENCE_ID = :P41_JW_APP_ID and REFERENCE_TYPE = ''APP'';',
'    -- delete JW_ADMIN where REFERENCE_ID = :P41_JW_APP_ID and REFERENCE_TYPE = ''APP'' and IS_CREATOR = 0;',
'    LOOP',
'        v_admin_id := REGEXP_SUBSTR(:P41_ADMIN_IDS, ''[^,]+'', 1, v_admin_pos + 1);',
'        EXIT WHEN v_admin_id IS NULL;',
'        insert into JW_ADMIN (TENANT_ID,',
'                              CREATED_BY,',
'                              UPDATED_BY,',
'                              USER_ID,',
'                              REFERENCE_ID,',
'                              REFERENCE_TYPE,',
'                              IS_CREATOR)',
'        values (:JW_USER_TENANT,',
'                :JW_USER_ID,',
'                :JW_USER_ID,',
'                v_admin_id,',
'                :P41_JW_APP_ID,',
'                ''APP'',',
'                0);',
'',
unistr('        -- \589E\52A0\4F4D\7F6E\6307\9488'),
'        v_admin_pos := v_admin_pos + 1;',
'    end loop;',
'    COMMIT;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\7BA1\7406\5458'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P41_JW_APP_ID,P41_ADMIN_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788930709531087674)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\5DE5\4F5C\53F0')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:47',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\5DE5\4F5C\53F0\914D\7F6E\65E5\5FD7'),
'    */',
'    v_app_group_id   number(20);',
'    cursor addCursor is select *',
'                        FROM TABLE (SPLITSTR(:P41_WORKBENCH_IDS, '','')) cur_ids',
'                        MINUS',
'                        SELECT *',
'                        FROM TABLE (SPLITSTR(:P41_WORKBENCH_IDS_RAW, '','')) raw_ids;',
'    cursor delCursor is select *',
'                        FROM TABLE (SPLITSTR(:P41_WORKBENCH_IDS_RAW, '','')) cur_ids',
'                        MINUS',
'                        SELECT *',
'                        FROM TABLE (SPLITSTR(:P41_WORKBENCH_IDS, '','')) raw_ids;',
'    v_workbench_name varchar2(100);',
'    v_app_name       varchar2(100);',
'begin',
'    select APP_NAME',
'    into v_app_name',
'    from JW_APP',
'    where JW_APP_ID = :P41_JW_APP_ID;',
'',
'    FOR cur in delCursor',
'        loop',
'            delete JW_APP_GROUP_ASSO',
'            where APP_ID = :P41_JW_APP_ID',
'              AND APP_GROUP_ID in',
'                  (select APP_GROUP_ID',
'                   from JW_APP_GROUP',
'                   where WORKBENCH_ID = TO_NUMBER(cur.COLUMN_VALUE));',
'            select WORKBENCH_NAME',
'            into v_workbench_name',
'            from JW_WORKBENCH',
'            where WORKBENCH_ID = TO_NUMBER(cur.COLUMN_VALUE);',
unistr('            JW_NOTICE_TO_USER( ''\5E94\7528\4E0B\67B6\901A\77E5'','),
unistr('                              v_workbench_name || ''\5DE5\4F5C\53F0\4E0A'' || v_app_name || ''\5E94\7528\5DF2\4E0B\67B6'','),
'                              TO_NUMBER(cur.COLUMN_VALUE), ''all'');',
'        end loop;',
'',
'    FOR cur in addCursor',
'        loop',
'            select APP_GROUP_ID',
'            into v_app_group_id',
'            from JW_APP_GROUP',
'            where WORKBENCH_ID = TO_NUMBER(cur.COLUMN_VALUE)',
'              and IS_DEFAULT = 1;',
'            insert into JW_APP_GROUP_ASSO(TENANT_ID,',
'                                          CREATED_BY,',
'                                          UPDATED_BY,',
'                                          APP_GROUP_ID,',
'                                          APP_ID)',
'            values (:JW_USER_TENANT,',
'                    :JW_USER_ID,',
'                    :JW_USER_ID,',
'                    v_app_group_id,',
'                    :P41_JW_APP_ID);',
'            select WORKBENCH_NAME',
'            into v_workbench_name',
'            from JW_WORKBENCH',
'            where WORKBENCH_ID = TO_NUMBER(cur.COLUMN_VALUE);',
unistr('            JW_NOTICE_TO_USER( ''\5E94\7528\5F85\4E0A\67B6\901A\77E5'','),
unistr('                              v_workbench_name || ''\5DE5\4F5C\53F0\6709'' || v_app_name || ''\5E94\7528\5F85\4E0A\67B6'','),
'                              TO_NUMBER(cur.COLUMN_VALUE), ''admin'');',
'        end loop;',
'        commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\5DE5\4F5C\53F0\914D\7F6E'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P41_WORKBENCH_IDS,P41_JW_APP_ID,P41_WORKBENCH_IDS_RAW,P41_APP_NAME'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788931151875087674)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FDD\5B58\6807\7B7E')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:45',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\4FDD\5B58\6807\7B7E\65E5\5FD7'),
'    */',
'    cursor tagCursor is select *',
'                        from table (SPLITSTR(:P41_TAG_IDS, '':''));',
'begin',
'    delete JW_APP_TAG_ASSO where APP_ID = :P41_JW_APP_ID;',
'    for cur in tagCursor',
'        loop',
'            insert into JW_APP_TAG_ASSO (TENANT_ID,',
'                                         CREATED_BY,',
'                                         APP_TAG_ID,',
'                                         APP_ID)',
'            values (:JW_USER_TENANT,',
'                    :JW_USER_ID,',
'                    cur.COLUMN_VALUE,',
'                    :P41_JW_APP_ID);',
'        end loop;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\4FDD\5B58\6807\7B7E'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'',
'end;'))
,p_attribute_02=>'P41_JW_APP_ID,P41_TAG_IDS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'JW_IS_ADMIN'
,p_server_condition_expr2=>'1'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788931697549087675)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
unistr('alert(''\4FDD\5B58\6210\529F\FF01'');')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788932174977087675)
,p_event_id=>wwv_flow_imp.id(2788927725091087672)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_name=>unistr('\66F4\65B0\539F\53EF\89C1\8303\56F4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$s("P41_VISIBLE_USERS_RAW",$v("P41_VISIBLE_USERS"))',
'$s("P41_VISIBLE_DEPTS_RAW",$v("P41_VISIBLE_DEPTS"))'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788935113119087677)
,p_name=>unistr('\540C\6B65\5E94\7528')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788906182292087656)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788935587696087677)
,p_event_id=>wwv_flow_imp.id(2788935113119087677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DingTalkAuth.syncAppOne($v(''P0_DING_REQUEST_URL''), $v(''P0_JA_APP_KEY''), $v(''P0_JA_APP_SECRET''), $v(''P41_AGENT_ID''));',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788936125430087677)
,p_event_id=>wwv_flow_imp.id(2788935113119087677)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>unistr('save_audit_log(:JW_USER_ID,''AAM'',''SYNC_APP'',''\624B\52A8\540C\6B65'' || :P41_APP_NAME_1);')
,p_attribute_02=>'P41_APP_NAME_1'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788936474783087677)
,p_name=>unistr('\65B0\589E\6807\7B7E')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788905390435087656)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788936996277087677)
,p_event_id=>wwv_flow_imp.id(2788936474783087677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4792778017624581457)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788937375108087678)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788923986987087670)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788937841491087678)
,p_event_id=>wwv_flow_imp.id(2788937375108087678)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 15:54',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\65B0\589E\65E5\5FD7'),
'    */',
'    v_tag_count number(10);',
'begin',
'    select count(APP_TAG_ID) into v_tag_count from JW_APP_TAG where TAG_NAME = :P41_TAG_NAME and DEL_FLAG = 0;',
'    if v_tag_count > 0 then',
'        apex_error.add_error(',
unistr('                p_message => ''\91CD\590D\6807\7B7E'','),
unistr('                p_additional_info=>''\9644\52A0\6D88\606F'','),
'                p_ignore_ora_error=> true,',
'                p_display_location => apex_error.c_inline_in_notification);',
'    else',
'        insert into JW_APP_TAG (TENANT_ID,',
'                                CREATED_BY,',
'                                UPDATED_BY,',
'                                TAG_NAME)',
'        values (:JW_USER_TENANT,',
'                :JW_USER_ID,',
'                :JW_USER_ID,',
'                :P41_TAG_NAME)',
'        returning APP_TAG_ID into :P41_APP_TAG_ID;',
'    end if;',
'    commit;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\65B0\589E'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;',
''))
,p_attribute_02=>'P41_TAG_NAME'
,p_attribute_03=>'P41_APP_TAG_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788938384942087678)
,p_event_id=>wwv_flow_imp.id(2788937375108087678)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P41_APP_TAG_ID'')) {',
'',
unistr('    alert(''\521B\5EFA\6210\529F\FF01'');'),
'    return true',
'} else {',
'',
unistr('    alert(''\521B\5EFA\5931\8D25,\8BF7\68C0\67E5\6807\7B7E\540D\662F\5426\91CD\590D'');'),
'    return false',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788938877531087678)
,p_event_id=>wwv_flow_imp.id(2788937375108087678)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4792778017624581457)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788939399519087679)
,p_event_id=>wwv_flow_imp.id(2788937375108087678)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$s(''P41_TAG_NAME'',"")'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788939918215087679)
,p_event_id=>wwv_flow_imp.id(2788937375108087678)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_TAG_IDS'
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2788940269542087679)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2788923594661087669)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2788940769317087679)
,p_event_id=>wwv_flow_imp.id(2788940269542087679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4792778017624581457)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(51754306375969545)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_LOGIN_TYPE'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51754455765969546)
,p_event_id=>wwv_flow_imp.id(51754306375969545)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_JING_JIE_CODE'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P41_LOGIN_TYPE'
,p_client_condition_expression=>'JING_JIE'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(51754507976969547)
,p_event_id=>wwv_flow_imp.id(51754306375969545)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_JING_JIE_CODE'
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P41_LOGIN_TYPE'
,p_client_condition_expression=>'JING_JIE'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788922087602087668)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(4966380162733198131)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \521B\5EFA\5E94\7528')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_required_patch=>wwv_flow_imp.id(4421750870193171812)
,p_internal_uid=>328789249414237402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788926398572087671)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_required_patch=>wwv_flow_imp.id(4421750870193171812)
,p_internal_uid=>328793560384237405
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788921714789087668)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4966380162733198131)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \521B\5EFA\5E94\7528')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>328788876601237402
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2788925586929087671)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4792778017624581457)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \5E94\7528\8BBE\7F6E')
,p_internal_uid=>328792748741237405
);
wwv_flow_imp.component_end;
end;
/

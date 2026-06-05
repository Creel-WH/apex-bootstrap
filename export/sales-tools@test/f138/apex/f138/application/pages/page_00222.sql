prompt --application/pages/page_00222
begin
--   Manifest
--     PAGE: 00222
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>222
,p_name=>unistr('\89D2\8272\8868\5355')
,p_alias=>unistr('\89D2\8272\8868\53551')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\89D2\8272\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9715120564634766804)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- #WORKSPACE_FILES#static/js/mkUtils.v1.min.js',
'#WORKSPACE_FILES#static/js/mkUtils.v1.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag = true;',
'var isAll = true;'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#per_id{',
'    height: 250px;',
'    overflow-y: auto;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11360664983190662471)
,p_plug_name=>unistr('\89D2\8272-\6743\9650\8868\5355')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714894936982168573)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROLE_ID,',
'       ROLE_NAME,',
'       IS_ENABLE,',
'       DEFAULT_ROLE,',
'       REMARK,',
'       DEL_FLAG,',
'       TENANT_ID,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATE_DATE,',
'       HOME_PAGE,',
'       SORT_NUM,',
'       ROLE_LEVEL',
'from STS_ROLE'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11361319542583449972)
,p_plug_name=>unistr('\6743\9650')
,p_parent_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714838117168168554)
,p_plug_display_sequence=>170
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<p class="title"><span class="icon">* </span>\6743\9650\FF1A</p>'),
'',
'<style>',
'    .title{',
'    font-size:16px;',
'    color:#262626;',
'    text-align:left;}',
'',
'    .icon{',
'    color:red;}',
'',
'    </style>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11361319628153449973)
,p_plug_name=>unistr('\6743\9650\83DC\5355')
,p_region_name=>'per_id'
,p_parent_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9714838117168168554)
,p_plug_display_sequence=>180
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT DISTINCT (O.PAGE_ID) AS ID,          --\6570\636EID'),
unistr('                O.PARENT_PAGE_ID  AS PARENT_ID,   --\7236ID'),
unistr('                O.PERMISSION_NAME AS TITLE,       --\663E\793A\7684\6807\9898'),
unistr('                O.PERMISSION_ID   AS VALUE,       --\6807\9898\5BF9\5E94\7684\503C'),
'                1                 AS TYPE,',
'                CASE',
'                    WHEN (SELECT COUNT(1)',
'                          FROM STS_ROLE_PERMISSION ROLE_PER',
'                          WHERE ROLE_PER.PERMISSION_ID = O.PERMISSION_ID',
'                            AND ROLE_PER.ROLE_ID = :P222_ROLE_ID',
'                            AND O.DEL_FLAG = 0',
'                            AND ROLE_PER.TENANT_ID = :USER_TENANT) = 1 THEN',
'                        1',
'                    ELSE',
'                        0',
unistr('                    END           AS SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(NULL): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('                0                 AS EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(NULL): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('                1                 AS CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(NULL): \7981\7528 1:\542F\7528'),
unistr('                0                 AS UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(NULL): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'FROM STS_PERMISSION O',
'WHERE O.TENANT_ID = :USER_TENANT',
'  AND DEL_FLAG = 0',
'  AND IS_ENABLE = 1',
'  AND PERMISSION_TYPE = 0',
'START WITH O.PERMISSION_ID IS NOT NULL',
'CONNECT BY PRIOR O.PAGE_ID = O.PARENT_PAGE_ID',
'ORDER BY O.PERMISSION_ID;'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_ajax_items_to_submit=>'P222_ROLE_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', wwv_flow_string.join(wwv_flow_t_varchar2(
    '{',
    '  "animationDuration": 200,',
    '  "autoExpand2Level": 0,',
    '  "checkbox": "fa-square-o",',
    '  "checkboxSelected": "fa-check-square",',
    '  "checkboxUnknown": "fa-square",',
    '  "enableCheckBox": true,',
    '  "forceSelectionSet": true,',
    '  "forceRefreshEventOnStart": false,',
    '  "markNodesWithChildren": false,',
    '  "markerModifier": "fam-plus fam-is-info",',
    '  "openParentOfActiveNode": true,',
    '  "openParentOfSelected": true,',
    '  "refresh": 0,',
    '  "search": {',
    '    "autoExpand": true,',
    '    "leavesOnly": false,',
    '    "highlight": true,',
    '    "counter": true,',
    '    "hideUnmatched": true,',
    '    "debounce": {',
    '      "enabled": true,',
    '      "time": 400',
    '    }',
    '  },',
    '  "selectMode": 2,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P222_PERMISSION_IDS",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11360673050052662475)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9714861085952168561)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697931727705156592)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11360673050052662475)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697932099141156592)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11360673050052662475)
,p_button_name=>unistr('\4FEE\6539')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'EDIT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P222_ROLE_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697932534165156592)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11360673050052662475)
,p_button_name=>unistr('\65B0\589E')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\65B0\589E')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P222_ROLE_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697929716845156591)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11361319628153449973)
,p_button_name=>unistr('\540C\6B65\6743\9650')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\540C\6B65\6743\9650')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697930083309156591)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11361319628153449973)
,p_button_name=>unistr('\5168\9009')
,p_button_static_id=>'btn_checkAll'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5168\9009')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697930502658156592)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11361319628153449973)
,p_button_name=>unistr('\5C55\5F00')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5C55\5F00')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-expand'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3697930894814156592)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11361319628153449973)
,p_button_name=>unistr('\5237\65B0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5237\65B0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697156962214912414)
,p_name=>'P222_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3697157090525912415)
,p_name=>'P222_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10049922944752827016)
,p_name=>'P222_DEFAULT_ROLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'DEFAULT_ROLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10049923274082827019)
,p_name=>'P222_HOME_PAGE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'HOME_PAGE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10049923357822827020)
,p_name=>'P222_SORT_NUM'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'SORT_NUM'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10776942605559426713)
,p_name=>'P222_ROLE_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_prompt=>unistr('\89D2\8272\540D\79F0')
,p_source=>'ROLE_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_imp.id(9714976714653168621)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10776942795279426714)
,p_name=>'P222_ROLE_LEVEL'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_prompt=>unistr('\89D2\8272\7EA7\522B')
,p_source=>'ROLE_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_imp.id(9714976714653168621)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_inline_help_text=>unistr('\7EA7\522B\6570\5B57\8D8A\5927\FF0C\6743\9650\8D8A\9AD8')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10776942940885426716)
,p_name=>'P222_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10776943262905426719)
,p_name=>'P222_PERMISSION_NAME'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360668941553662507)
,p_name=>'P222_ROLE_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'ROLE_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360669767529662507)
,p_name=>'P222_REMARK'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_prompt=>unistr('\5907\6CE8')
,p_source=>'REMARK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360670553513662507)
,p_name=>'P222_IS_ENABLE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'IS_ENABLE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360671000598662508)
,p_name=>'P222_TENANT_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'TENANT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360671328976662508)
,p_name=>'P222_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11360672135041662508)
,p_name=>'P222_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_item_source_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361322885766450009)
,p_name=>'P222_PERMISSION_IDS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361322968177450010)
,p_name=>'P222_ROW_COUNT'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361323025964450011)
,p_name=>'P222_MAX_LEVEL'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11361323152936450012)
,p_name=>'P222_RAW_LEVEL'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_imp.id(11360664983190662471)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697933455947156595)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697931727705156592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697934042479156595)
,p_event_id=>wwv_flow_imp.id(3697933455947156595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697934395090156596)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697934913122156596)
,p_event_id=>wwv_flow_imp.id(3697934395090156596)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_PERMISSION_IDS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697935358287156596)
,p_event_id=>wwv_flow_imp.id(3697934395090156596)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P222_RAW_LEVEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROLE_LEVEL',
'from STS_ROLE',
'where ROLE_ID = :P222_ROLE_ID',
'  and TENANT_ID = :USER_TENANT',
'  and DEL_FLAG = 0;'))
,p_attribute_07=>'P222_ROLE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'Y'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P222_ROLE_ID'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697935770725156596)
,p_name=>unistr('\5168\9009\4E0E\53D6\6D88\5168\9009')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697930083309156591)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697936257340156596)
,p_event_id=>wwv_flow_imp.id(3697935770725156596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (isAll) {',
'    $("#per_id").trigger("selectAll");',
'    isAll=false;',
'} else {',
'',
'    $("#per_id").trigger("unselectAll");',
'    isAll=true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697936693722156596)
,p_name=>unistr('\5C55\5F00\6811\5F62\7ED3\6784')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697930502658156592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697937209633156597)
,p_event_id=>wwv_flow_imp.id(3697936693722156596)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (flag) {',
'    $("#per_id").trigger("expandAll");',
'    flag=false;',
'} else {',
'    $("#per_id").trigger("collapseAll");',
'     flag=true;',
'}'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697937620900156597)
,p_name=>unistr('\5237\65B0\6811')
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697930894814156592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697938101760156597)
,p_event_id=>wwv_flow_imp.id(3697937620900156597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11361319628153449973)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697938546806156597)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697932099141156592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697939045617156597)
,p_event_id=>wwv_flow_imp.id(3697938546806156597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\8868\5355\5B57\6BB5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P222_ROLE_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\89D2\8272\540D\79F0\FF01'');'),
'    return false;',
'} else if ($v(''P222_ROLE_NAME'').length < 1 || $v(''P222_ROLE_NAME'').length > 30) {',
unistr('    alert(''\89D2\8272\540D\79F0\FF1A\6700\5C11\8F93\51651\4E2A\5B57\7B26\FF0C\6700\591A\4E0D\8D85\8FC730\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P222_ROLE_LEVEL''))) {',
unistr('    alert(''\8BF7\8F93\5165\89D2\8272\7EA7\522B\FF01'');'),
'    return false;',
'} else if (!/^\d{1,3}$/.test($v(''P222_ROLE_LEVEL''))) {',
unistr('    alert(''\89D2\8272\7EA7\522B\5FC5\987B\662F\6700\591A3\4E2A\6570\5B57\5B57\7B26\FF01'');'),
'    return false;',
'}else {',
'    if ($v(''P222_ROLE_LEVEL'')  > 100) {',
unistr('        alert(''\7EA7\522B\4E0D\80FD\5927\4E8E\6700\5927\7EA7\522B100'');'),
'        return false;',
'    }',
'}',
'',
'// if ($v(''P222_ROLE_NAME'').length < 1 || $v(''P222_ROLE_NAME'').length > 100) {',
unistr('//     alert("\89D2\8272\540D\79F0:\6700\5C11\8F93\51651\4E2A\5B57\7B26\FF0C\6700\591A\8F93\5165100\4E2A\5B57\7B26\FF01");'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P222_ROLE_LEVEL''))) {',
unistr('//     alert(''\8BF7\8F93\5165\89D2\8272\7EA7\522B\FF01'');'),
'//     return false;',
'// }',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697939532735156598)
,p_event_id=>wwv_flow_imp.id(3697938546806156597)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8868\5355\6570\636E\63D0\4EA4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG          NVARCHAR2(2000);--\5F02\5E38\4FE1\606F\63CF\8FF0'),
unistr('    V_ROW_COUNT        NUMBER(20) := 0; -- \8FD4\56DE\8BB0\5F55\503C'),
unistr('    V_PERMISSION_COUNT NVARCHAR2(64); -- \529F\80FD\6743\9650\8FD4\56DE\503C'),
unistr('    V_ROLE_NAME_COUNT  NUMBER(20) := 0;-- \6821\9A8C\89D2\8272\540D\79F0\662F\5426\91CD\590D'),
'    /**',
'     * CREATE BY: wxx',
'     * CREATE DATE: 2024/7/22 13:16 ',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:\89D2\8272\6743\9650-\4FEE\6539\64CD\4F5C'),
'     */',
'BEGIN',
unistr('    -- \6821\9A8C\89D2\8272\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT( ROLE_ID )',
'    INTO V_ROLE_NAME_COUNT',
'    FROM STS_ROLE T',
'    WHERE T.ROLE_NAME = :P222_ROLE_NAME',
'      AND T.ROLE_ID <> :P222_ROLE_ID',
'      AND T.DEL_FLAG = 0',
'      AND T.TENANT_ID = :USER_TENANT',
';',
'',
unistr('    IF V_ROLE_NAME_COUNT = 0 THEN -- \89D2\8272\540D\79F0\4E0D\91CD\590D\7684\60C5\51B5\4E0B'),
unistr('        -- \4FEE\6539\64CD\4F5C'),
'        UPDATE STS_ROLE',
'        SET UPDATED_BY   = :USER_ID,',
'            UPDATE_DATE  = SYSDATE,',
'            ROLE_LEVEL   = :P222_ROLE_LEVEL,',
'            ROLE_NAME    = :P222_ROLE_NAME,',
'            REMARK = :P222_REMARK',
'        WHERE ROLE_ID = :P222_ROLE_ID',
'          AND DEL_FLAG = 0',
'          AND TENANT_ID = :USER_TENANT;',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'',
'',
'        IF :P222_PERMISSION_IDS IS NOT NULL THEN',
unistr('            -- \9500\552E\5DE5\5177\96C6-\89D2\8272\7BA1\7406-\529F\80FD\6743\9650'),
'            V_PERMISSION_COUNT := STS_PERMISSION_CRUD( ''modify'' ,',
'                                                               :P222_ROLE_ID ,',
'                                                               :P222_PERMISSION_IDS ,',
'                                                               :USER_TENANT ,',
'                                                               :USER_ID );',
'        END IF;',
'',
'        IF V_PERMISSION_COUNT = ''error'' THEN',
'            V_ROW_COUNT := -1;',
'        END IF;',
'    ELSE',
'        V_ROW_COUNT := -2;',
'    END IF;',
'    ',
unistr('    APEX_UTIL.SET_SESSION_STATE( ''P222_ROW_COUNT'' , V_ROW_COUNT ); -- \8FD4\56DE\7ED3\679C\503C'),
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
unistr('        JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\89D2\8272\6743\9650-\4FEE\6539'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
unistr('        APEX_UTIL.SET_SESSION_STATE( ''P222_ROW_COUNT'' , -1 ); -- \8FD4\56DE\7ED3\679C\503C'),
'END;'))
,p_attribute_02=>'P222_ROLE_ID,P222_ROLE_NAME,P222_ROLE_LEVEL,P222_PERMISSION_IDS,P222_REMARK'
,p_attribute_03=>'P222_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697940017323156598)
,p_event_id=>wwv_flow_imp.id(3697938546806156597)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5ID\83B7\53D6\60C5\51B5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('console.log(''\89D2\8272id\FF1A'' + $v(''P222_ROLE_ID''));'),
unistr('console.log(''\6743\9650ids\FF1A'' + $v(''P222_PERMISSION_IDS''));')))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697940466445156598)
,p_event_id=>wwv_flow_imp.id(3697938546806156597)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\540E\8FD4\56DE\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P222_ROW_COUNT'') > 0) {',
unistr('    alert(''\4FEE\6539\6210\529F\FF01'');'),
'} else if ($v(''P222_ROW_COUNT'') == -2) {',
unistr('    alert(''\89D2\8272\540D\79F0\4E0D\80FD\91CD\590D\FF01'');'),
'    return false;',
'} else {',
unistr('    alert(''\4FEE\6539\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697941044198156598)
,p_event_id=>wwv_flow_imp.id(3697938546806156597)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697941411684156598)
,p_name=>unistr('\65B0\589E\6267\884C')
,p_event_sequence=>80
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697932534165156592)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697941933898156598)
,p_event_id=>wwv_flow_imp.id(3697941411684156598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6821\9A8C\8868\5355\5B57\6BB5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P222_ROLE_NAME''))) {',
unistr('    alert(''\8BF7\8F93\5165\89D2\8272\540D\79F0\FF01'');'),
'    return false;',
'} else if ($v(''P222_ROLE_NAME'').length < 1 || $v(''P222_ROLE_NAME'').length > 30) {',
unistr('    alert(''\89D2\8272\540D\79F0\FF1A\6700\5C11\8F93\51651\4E2A\5B57\7B26\FF0C\6700\591A\4E0D\8D85\8FC730\4E2A\5B57\7B26\FF01'');'),
'    return false;',
'}',
'',
'',
'if (utils.checkNull($v(''P222_ROLE_LEVEL''))) {',
unistr('    alert(''\8BF7\8F93\5165\89D2\8272\7EA7\522B\FF01'');'),
'    return false;',
'} else if (!/^\d{1,3}$/.test($v(''P222_ROLE_LEVEL''))) {',
unistr('    alert(''\89D2\8272\7EA7\522B\5FC5\987B\662F\6700\591A3\4E2A\6570\5B57\5B57\7B26\FF01'');'),
'    return false;',
'}else {',
'    if ($v(''P222_ROLE_LEVEL'')  > 100) {',
unistr('        alert(''\7EA7\522B\4E0D\80FD\5927\4E8E\6700\5927\7EA7\522B100'');'),
'        return false;',
'    }',
'}',
'',
'// if ($v(''P222_ROLE_NAME'').length < 1 || $v(''P222_ROLE_NAME'').length > 50) {',
unistr('//     alert("\89D2\8272\540D\79F0:\6700\5C11\8F93\51651\4E2A\5B57\7B26\FF0C\6700\591A\8F93\516550\4E2A\5B57\7B26\FF01");'),
'//     return false;',
'// }',
'',
'// if (utils.checkNull($v(''P222_ROLE_LEVEL''))) {',
unistr('//     alert(''\8BF7\8F93\5165\89D2\8272\7EA7\522B\FF01'');'),
'//     return false;',
'// }',
'',
'// var $type = "^[0-9]*[1-9][0-9]*$";',
'// var reg = new RegExp($type);',
'// if (parseInt($v(''P222_ROLE_LEVEL'')) == 0 || !reg.test($v(''P222_ROLE_LEVEL'')) || isNaN($v(''P222_ROLE_LEVEL''))) {',
unistr('//     alert(''\7EA7\522B\FF1A\8BF7\8F93\5165\6B63\786E\7684\6570\5B57\FF01'');'),
'//     return false;',
'// } else {',
'//     if ($v(''P222_ROLE_LEVEL'') - $v(''P222_MAX_LEVEL'') >= 0) {',
unistr('//         alert(''\7EA7\522B\4E0D\80FD\5927\4E8E\6700\5927\7EA7\522B'' + $v(''P222_MAX_LEVEL''));'),
'//         return false;',
'//     }',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697942422456156599)
,p_event_id=>wwv_flow_imp.id(3697941411684156598)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\8868\5355\6570\636E\63D0\4EA4')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
unistr('    V_ERR_MSG          NVARCHAR2(2000);--\5F02\5E38\4FE1\606F\63CF\8FF0'),
unistr('    V_ROW_COUNT        NUMBER(20) := 0; -- \8FD4\56DE\8BB0\5F55\503C'),
unistr('    V_PERMISSION_COUNT nvarchar2(64); -- \529F\80FD\6743\9650\8FD4\56DE\503C'),
unistr('    V_ROLE_NAME_COUNT  NUMBER(20) := 0;-- \6821\9A8C\89D2\8272\540D\79F0\662F\5426\91CD\590D'),
unistr('    V_ROLE_ID          NUMBER(20) := 0;-- \89D2\8272ID\8FD4\56DE\503C'),
'    /**',
'     * CREATE BY: wxx',
'     * CREATE DATE: 2024/7/22 13:30',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE: \89D2\8272\6743\9650-\65B0\589E\64CD\4F5C'),
'     */',
'BEGIN',
unistr('    -- \6821\9A8C\89D2\8272\540D\79F0\662F\5426\91CD\590D'),
'    SELECT COUNT( ROLE_ID )',
'    INTO V_ROLE_NAME_COUNT',
'    FROM STS_ROLE',
'    WHERE ROLE_NAME = :P222_ROLE_NAME',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USER_TENANT',
';',
'',
unistr('    IF V_ROLE_NAME_COUNT = 0 THEN -- \89D2\8272\540D\79F0\4E0D\91CD\590D\7684\60C5\51B5\4E0B'),
unistr('        -- \65B0\589E\89D2\8272\6743\9650'),
'        INSERT INTO STS_ROLE( ROLE_NAME ,                                      ',
'                             ROLE_LEVEL ,',
'                             TENANT_ID ,',
'                             CREATED_BY,',
'                             REMARK,',
'                             DEFAULT_ROLE,',
'                             IS_ENABLE)',
'        VALUES (',
'                :P222_ROLE_NAME ,',
'                :P222_ROLE_LEVEL ,',
'                :USER_TENANT ,',
'                :USER_ID,',
'                :P222_REMARK,',
'                0,',
'                1)',
'        RETURNING ROLE_ID INTO V_ROLE_ID;',
'',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'',
unistr('        -- \89D2\8272\7BA1\7406-\529F\80FD\6743\9650'),
'        V_PERMISSION_COUNT := STS_PERMISSION_CRUD( ''insert'' ,',
'                                                           V_ROLE_ID ,',
'                                                           :P222_PERMISSION_IDS ,',
'                                                           :USER_TENANT ,',
'                                                           :USER_ID',
'            );',
'',
'        IF V_PERMISSION_COUNT = ''error'' THEN',
'            V_ROW_COUNT := -1;',
'        END IF;',
'    ELSE',
'        V_ROW_COUNT := -2;',
'    END IF;',
'',
unistr('    APEX_UTIL.SET_SESSION_STATE( ''P222_ROW_COUNT'' , V_ROW_COUNT ); -- \8FD4\56DE\7ED3\679C\503C'),
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
unistr('        JA_WRITE_LOG(''P''||:APP_PAGE_ID||''-\89D2\8272\6743\9650-\65B0\589E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USER_TENANT,:APP_NAME,:APP_ID,:APP_CODE);'),
unistr('        APEX_UTIL.SET_SESSION_STATE( ''P222_ROW_COUNT'' , -1 ); -- \8FD4\56DE\7ED3\679C\503C'),
'END ;',
''))
,p_attribute_02=>'P222_ROLE_NAME,P222_ROLE_LEVEL,P222_REMARK,P222_PERMISSION_IDS'
,p_attribute_03=>'P222_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697942874237156599)
,p_event_id=>wwv_flow_imp.id(3697941411684156598)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6D4B\8BD5ID\83B7\53D6\60C5\51B5')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>unistr('console.log(''\6743\9650ids\FF1A'' + $v(''P222_PERMISSION_IDS''));')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697943422054156599)
,p_event_id=>wwv_flow_imp.id(3697941411684156598)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\540E\8FD4\56DE\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P222_ROW_COUNT'') > 0) {',
unistr('    alert(''\65B0\589E\6210\529F\FF01'');'),
'} else if ($v(''P222_ROW_COUNT'') == -2) {',
unistr('    alert(''\89D2\8272\540D\79F0\4E0D\80FD\91CD\590D\FF01'');'),
'    return false;',
'} else {',
unistr('    alert(''\65B0\589E\5931\8D25\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697943915790156599)
,p_event_id=>wwv_flow_imp.id(3697941411684156598)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697944287866156599)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'NATIVE_IG|REGION TYPE|interactivegridselectionchange'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697944776828156600)
,p_event_id=>wwv_flow_imp.id(3697944287866156599)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11360664983190662471)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3697945250651156600)
,p_name=>unistr('\540C\6B65\5E94\7528\9875\9762\6743\9650')
,p_event_sequence=>100
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3697929716845156591)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697945693840156600)
,p_event_id=>wwv_flow_imp.id(3697945250651156600)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_str   nvarchar2(2000);',
'    v_count number(10) := 0;',
'begin',
'',
'    v_str := sts_sync_permission_page_data(''APEX_230200'',:APP_ID, :USER_TENANT, null);',
'    apex_util.set_session_state(''P222_ROW_COUNT'',v_str);',
'',
'end;'))
,p_attribute_03=>'P222_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3697946218258156600)
,p_event_id=>wwv_flow_imp.id(3697945250651156600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P222_ROW_COUNT'') == ''success'') {',
unistr('    alert(''\540C\6B65\6210\529F'');'),
'} else {',
unistr('    alert(''\540C\6B65\5931\8D25'');'),
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3697928550939156590)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11360664983190662471)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \89D2\8272-\6743\9650\8868\5355')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452180600200568781
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3697933116531156595)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_attribute_02=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>452185165792568786
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3697928230373156590)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11360664983190662471)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \89D2\8272-\6743\9650\8868\5355')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>452180279634568781
);
wwv_flow_imp.component_end;
end;
/

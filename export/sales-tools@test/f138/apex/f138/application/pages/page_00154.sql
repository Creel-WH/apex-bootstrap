prompt --application/pages/page_00154
begin
--   Manifest
--     PAGE: 00154
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>154
,p_name=>unistr('\6587\4EF6\8FC1\79FB')
,p_alias=>unistr('\6587\4EF6\8FC1\79FB')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\8FC1\79FB')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1475098455007196077)
,p_plug_name=>unistr('\8BF7\9009\62E9\8981\79FB\52A8\5230\7684\76EE\6807\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793477160221686482)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1475098570152196078)
,p_plug_name=>unistr('\6587\4EF6\7ED3\6784\6811')
,p_parent_plug_id=>wwv_flow_imp.id(1475098455007196077)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9793542326215686504)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT FILE_ID          AS ID,          --\6570\636EID'),
unistr('       PARENT_FOLDER_ID AS PARENT_ID,   --\7236ID'),
unistr('       FILE_NAME        AS TITLE,       --\663E\793A\7684\6807\9898'),
unistr('       FILE_ID          AS VALUE,       --\6807\9898\5BF9\5E94\7684\503C'),
'       1                AS TYPE,',
unistr('       0 AS SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(NULL): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('       0                AS EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(NULL): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('       1                AS CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(NULL): \7981\7528 1:\542F\7528'),
unistr('       0                AS UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(NULL): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'FROM STS_FILE',
'WHERE TENANT_ID = :USER_TENANT',
'  AND DEL_FLAG = 0',
'  AND FILE_TYPE = ''FOLDER''',
unistr('START WITH PARENT_FOLDER_ID IS NULL  -- \4ECE\6240\6709\6839\76EE\5F55\5F00\59CB'),
'CONNECT BY PARENT_FOLDER_ID = PRIOR FILE_ID',
'AND DEL_FLAG = 0',
'AND PRIOR DEL_FLAG = 0',
unistr('ORDER SIBLINGS BY FILE_ID  -- \540C\4E00\5C42\7EA7\5185\6309ID\6392\5E8F'),
'; '))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
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
    '  "selectMode": 1,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P154_PARENT_FOLDER_ID",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1472714892007085017)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1475098570152196078)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1472715275418085040)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(1475098570152196078)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1475100535246196207)
,p_name=>'P154_PARENT_FOLDER_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1475100645512196208)
,p_name=>'P154_FILE_IDS'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1475102159773196223)
,p_name=>'P154_SUCCESS_FLAG'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1475102286425196224)
,p_name=>'P154_RESULT_MESSAGE'
,p_item_sequence=>160
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1475102378375196225)
,p_name=>'P154_PROCESSED_COUNT'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1472717713263085102)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1472714892007085017)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1472718196760085118)
,p_event_id=>wwv_flow_imp.id(1472717713263085102)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1472718565388085121)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1472715275418085040)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1472719110639085123)
,p_event_id=>wwv_flow_imp.id(1472718565388085121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P154_PARENT_FOLDER_ID''))){',
unistr('    alert(''\8981\8FC1\79FB\5230\7684\76EE\6807\6587\4EF6\5939\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1472720024032085124)
,p_event_id=>wwv_flow_imp.id(1472718565388085121)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_success VARCHAR2(1);',
'    v_message VARCHAR2(4000);',
'    v_processed_count NUMBER;',
'BEGIN',
unistr('    -- \8C03\7528\5B58\50A8\8FC7\7A0B'),
'    sts_transfer_files_to_folder_pro(',
'        p_target_folder_id => :P154_PARENT_FOLDER_ID,',
'        p_old_file_ids => :P154_FILE_IDS,',
'        p_mpf_user_id => :MPF_USER_ID,',
'        p_user_tenant => :USER_TENANT, ',
'        p_success => v_success,',
'        p_message => v_message,',
'        p_processed_count => v_processed_count  ',
'    );',
'    ',
unistr('    -- \76F4\63A5\8BBE\7F6E\9875\9762\9879\503C'),
'    APEX_UTIL.SET_SESSION_STATE(''P154_SUCCESS_FLAG'', v_success);',
'    APEX_UTIL.SET_SESSION_STATE(''P154_RESULT_MESSAGE'', v_message);',
'    APEX_UTIL.SET_SESSION_STATE(''P154_PROCESSED_COUNT'', v_processed_count);',
'',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P154_SUCCESS_FLAG := ''N'';',
unistr('        :P154_RESULT_MESSAGE := ''\8C03\7528\5B58\50A8\8FC7\7A0B\65F6\53D1\751F\9519\8BEF: '' || SQLERRM;'),
'        :P154_PROCESSED_COUNT := 0;',
'END;'))
,p_attribute_02=>'P154_PARENT_FOLDER_ID,P154_FILE_IDS'
,p_attribute_03=>'P154_SUCCESS_FLAG,P154_RESULT_MESSAGE,P154_PROCESSED_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1472719554359085123)
,p_event_id=>wwv_flow_imp.id(1472718565388085121)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P154_PROCESSED_COUNT'')>0){',
unistr('    alert(''\6587\4EF6\8FC1\79FB\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\6587\4EF6\8FC1\79FB\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1472720607484085152)
,p_event_id=>wwv_flow_imp.id(1472718565388085121)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00155
begin
--   Manifest
--     PAGE: 00155
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>155
,p_name=>unistr('\6587\4EF6\8FC1\79FB-\8868\5355')
,p_alias=>unistr('\6587\4EF6\8FC1\79FB-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6587\4EF6\8FC1\79FB-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919993404961180290)
,p_plug_name=>unistr('\8BF7\9009\62E9\8981\79FB\52A8\5230\7684\76EE\6807\533A\57DF')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760020812986264229)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(919993520106180291)
,p_plug_name=>unistr('\6587\4EF6\7ED3\6784\6811')
,p_parent_plug_id=>wwv_flow_imp.id(919993404961180290)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9760085978980264251)
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
'FROM FMP_FILE',
'WHERE TENANT_ID = :USER_TENANT',
'  AND SYSTEM_ID = NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 1)',
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
    '      "storeItem": "P155_PARENT_FOLDER_ID",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(919994044229180297)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(919993520106180291)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9760159158825264299)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(919994313736180299)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(919993520106180291)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(919993554080180292)
,p_name=>'P155_PARENT_FOLDER_ID'
,p_item_sequence=>110
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(919993664346180293)
,p_name=>'P155_FILE_IDS'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(919995178607180308)
,p_name=>'P155_SUCCESS_FLAG'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(919995305259180309)
,p_name=>'P155_RESULT_MESSAGE'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(919995397209180310)
,p_name=>'P155_PROCESSED_COUNT'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(919994357306180300)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(919994044229180297)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(919994439067180301)
,p_event_id=>wwv_flow_imp.id(919994357306180300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(919994618490180302)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(919994313736180299)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(919994715851180303)
,p_event_id=>wwv_flow_imp.id(919994618490180302)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P155_PARENT_FOLDER_ID''))){',
unistr('    alert(''\8981\8FC1\79FB\5230\7684\76EE\6807\6587\4EF6\5939\4E0D\53EF\4E3A\7A7A'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(919995074466180307)
,p_event_id=>wwv_flow_imp.id(919994618490180302)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_success VARCHAR2(1);',
'    v_message VARCHAR2(4000);',
'    v_processed_count NUMBER;',
'    l_system_id NUMBER := TO_NUMBER(NVL(NULLIF(:SYSTEM_ID, ''''), ''1''));',
'    l_source_parents apex_t_varchar2;',
'',
'    PROCEDURE resequence_folder(',
'        p_parent_folder_id NUMBER,',
'        p_append_file_ids  VARCHAR2 DEFAULT NULL',
'    ) IS',
'    BEGIN',
'        MERGE INTO fmp_file t',
'        USING (',
'            SELECT file_id,',
'                   ROW_NUMBER() OVER (',
'                       ORDER BY CASE',
'                                    WHEN p_append_file_ids IS NOT NULL',
'                                     AND file_id IN (SELECT TO_NUMBER(data_val)',
'                                                       FROM ja_utils_pkg.split_str(p_append_file_ids, '',''))',
'                                    THEN 1',
'                                    ELSE 0',
'                                END,',
'                                NVL(sort_num, 999999999),',
'                                file_id',
'                   ) AS new_sort',
'              FROM fmp_file',
'             WHERE tenant_id = :USER_TENANT',
'               AND system_id = l_system_id',
'               AND NVL(del_flag, 0) = 0',
'               AND ((p_parent_folder_id IS NULL AND parent_folder_id IS NULL)',
'                 OR parent_folder_id = p_parent_folder_id)',
'        ) s',
'           ON (t.file_id = s.file_id)',
'         WHEN MATCHED THEN',
'            UPDATE SET t.sort_num = s.new_sort',
'             WHERE NVL(t.sort_num, -1) <> s.new_sort;',
'    END;',
'BEGIN',
unistr('    -- \8C03\7528\5B58\50A8\8FC7\7A0B'),
'    SELECT DISTINCT NVL(TO_CHAR(parent_folder_id), ''#NULL#'')',
'      BULK COLLECT INTO l_source_parents',
'      FROM fmp_file',
'     WHERE tenant_id = :USER_TENANT',
'       AND system_id = l_system_id',
'       AND NVL(del_flag, 0) = 0',
'       AND file_id IN (SELECT TO_NUMBER(data_val)',
'                         FROM ja_utils_pkg.split_str(:P155_FILE_IDS, '',''));',
'',
'    fmp_transfer_files_to_folder_pro(',
'        p_target_folder_id => :P155_PARENT_FOLDER_ID,',
'        p_old_file_ids => :P155_FILE_IDS,',
'        p_mpf_user_id => :MPF_USER_ID,',
'        p_user_tenant => :USER_TENANT, ',
'        p_system_id => l_system_id,',
'        p_success => v_success,',
'        p_message => v_message,',
'        p_processed_count => v_processed_count  ',
'    );',
'    ',
unistr('    -- \76F4\63A5\8BBE\7F6E\9875\9762\9879\503C'),
'    APEX_UTIL.SET_SESSION_STATE(''P155_SUCCESS_FLAG'', v_success);',
'    APEX_UTIL.SET_SESSION_STATE(''P155_RESULT_MESSAGE'', v_message);',
'    APEX_UTIL.SET_SESSION_STATE(''P155_PROCESSED_COUNT'', v_processed_count);',
'',
'    IF v_success = ''Y'' THEN',
'        FOR i IN 1 .. l_source_parents.COUNT LOOP',
'            resequence_folder(CASE WHEN l_source_parents(i) = ''#NULL#'' THEN NULL ELSE TO_NUMBER(l_source_parents(i)) END);',
'        END LOOP;',
'',
'        resequence_folder(TO_NUMBER(NULLIF(:P155_PARENT_FOLDER_ID, '''')), :P155_FILE_IDS);',
'        COMMIT;',
'    END IF;',
'',
'    ',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        :P155_SUCCESS_FLAG := ''N'';',
unistr('        :P155_RESULT_MESSAGE := ''\8C03\7528\5B58\50A8\8FC7\7A0B\65F6\53D1\751F\9519\8BEF: '' || SQLERRM;'),
'        :P155_PROCESSED_COUNT := 0;',
'END;'))
,p_attribute_02=>'P155_PARENT_FOLDER_ID,P155_FILE_IDS'
,p_attribute_03=>'P155_SUCCESS_FLAG,P155_RESULT_MESSAGE,P155_PROCESSED_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(919994890123180305)
,p_event_id=>wwv_flow_imp.id(919994618490180302)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P155_PROCESSED_COUNT'')>0){',
unistr('    alert(''\6587\4EF6\8FC1\79FB\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\6587\4EF6\8FC1\79FB\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(919995479092180311)
,p_event_id=>wwv_flow_imp.id(919994618490180302)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

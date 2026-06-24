prompt --application/pages/page_00221
begin
--   Manifest
--     PAGE: 00221
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
 p_id=>221
,p_name=>unistr('\9875\9762\7BA1\7406')
,p_alias=>unistr('\9875\9762\7BA1\7406')
,p_step_title=>unistr('\9875\9762\7BA1\7406')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9760301804667862479)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82022100000000000001)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82022100000000000002)
,p_plug_name=>unistr('\9875\9762\7BA1\7406')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760076177015264248)
,p_plug_display_sequence=>20
,p_plug_source=>unistr('\52FE\9009\7684\9875\9762\4F1A\5728\5BFC\822A\83DC\5355\4E2D\663E\793A\FF0C\53D6\6D88\52FE\9009\5219\4F1A\9690\85CF\3002')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
,p_plug_source_type=>'NATIVE_STATIC'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(82022100000000000003)
,p_plug_name=>unistr('\9875\9762\6811')
,p_region_name=>'page_manage_tree'
,p_parent_plug_id=>wwv_flow_imp.id(82022100000000000002)
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(9760019357201264229)
,p_plug_display_sequence=>30
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'WITH nav_pages AS (',
'    SELECT 1 AS page_id, CAST(NULL AS NUMBER) AS parent_page_id, unistr(''\4E3B\9875'') AS page_name, 10 AS display_seq FROM dual',
'    UNION ALL SELECT 133, NULL, unistr(''\6587\4EF6\5E93''), 20 FROM dual',
'    UNION ALL SELECT 150, NULL, unistr(''\6570\636E\5206\6790''), 30 FROM dual',
'    UNION ALL SELECT 151, 150, unistr(''\6570\636E\5BFC\51FA''), 31 FROM dual',
'    UNION ALL SELECT 152, 150, unistr(''\6570\636E\63A8\9001''), 32 FROM dual',
'    UNION ALL SELECT 220, NULL, unistr(''\7CFB\7EDF\8BBE\7F6E''), 40 FROM dual',
'    UNION ALL SELECT 221, 220, unistr(''\9875\9762\7BA1\7406''), 41 FROM dual',
'    UNION ALL SELECT 230, 220, unistr(''\64CD\4F5C\65E5\5FD7''), 42 FROM dual',
'    UNION ALL SELECT 226, 220, unistr(''\57FA\7840\4FE1\606F\914D\7F6E''), 43 FROM dual',
'),',
'config_exists AS (',
'    SELECT COUNT(1) AS cnt',
'      FROM fmp_page_config c',
'     WHERE c.system_id = NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42)',
'       AND c.tenant_id = :USER_TENANT',
'       AND NVL(c.del_flag, 0) = 0',
')',
'SELECT n.page_id AS id,',
'       n.parent_page_id AS parent_id,',
'       n.page_name AS title,',
'       n.page_id AS value,',
'       1 AS type,',
'       CASE',
'           WHEN n.page_id = 221 THEN 1',
'           WHEN EXISTS (',
'               SELECT 1',
'                 FROM fmp_page_config c',
'                WHERE c.system_id = NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42)',
'                  AND c.tenant_id = :USER_TENANT',
'                  AND c.page_id = n.page_id',
'                  AND NVL(c.del_flag, 0) = 0',
'                  AND NVL(c.is_visible, 1) = 1',
'           ) THEN 1',
'           WHEN (SELECT cnt FROM config_exists) = 0',
'            AND n.page_id IN (1, 133, 150, 151, 152, 220, 221, 226, 230) THEN 1',
'           ELSE 0',
'       END AS selected,',
'       CASE WHEN n.parent_page_id IS NULL THEN 1 ELSE 0 END AS expanded,',
'       CASE WHEN n.page_id = 221 THEN 0 ELSE 1 END AS checkbox,',
'       CASE WHEN n.page_id = 221 THEN 1 ELSE 0 END AS unselectable',
'  FROM nav_pages n',
' ORDER BY n.display_seq'))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_ajax_items_to_submit=>'SYSTEM_ID'
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
'  "selectMode": 3,',
    '  "setActiveNode": true,',
    '  "setItemsOnInit": false,',
    '  "typeSettings": [',
    '    {',
    '      "id": 1,',
    '      "storeItem": "P221_PAGE_IDS",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82022100000000000004)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(82022100000000000003)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save_page_manage'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(82022100000000000005)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(82022100000000000003)
,p_button_name=>unistr('\5237\65B0')
,p_button_static_id=>'btn_refresh_page_manage'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(9760159296056264299)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5237\65B0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(82022100000000000006)
,p_name=>'P221_PAGE_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(82022100000000000002)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(82022100000000000012)
,p_name=>unistr('\5237\65B0\6811')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(82022100000000000005)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(82022100000000000013)
,p_event_id=>wwv_flow_imp.id(82022100000000000012)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(82022100000000000003)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82022100000000000016)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4FDD\5B58\9875\9762\7BA1\7406\914D\7F6E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_system_id NUMBER := NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42);',
'    v_page_ids  VARCHAR2(32767) := :P221_PAGE_IDS;',
'BEGIN',
'    DELETE FROM fmp_page_config',
'     WHERE system_id = v_system_id',
'       AND tenant_id = :USER_TENANT;',
'',
'    INSERT INTO fmp_page_config(',
'        system_id,',
'        tenant_id,',
'        page_id,',
'        is_visible,',
'        created_by,',
'        creation_date,',
'        updated_by,',
'        update_date,',
'        del_flag',
'    ) VALUES (',
'        v_system_id,',
'        :USER_TENANT,',
'        221,',
'        1,',
'        :USER_ID,',
'        SYSDATE,',
'        :USER_ID,',
'        SYSDATE,',
'        0',
'    );',
'',
'    FOR item IN (',
'        SELECT DISTINCT TO_NUMBER(REGEXP_SUBSTR(v_page_ids, ''\d+'', 1, LEVEL)) AS page_id',
'          FROM dual',
'        CONNECT BY REGEXP_SUBSTR(v_page_ids, ''\d+'', 1, LEVEL) IS NOT NULL',
'    ) LOOP',
'        IF item.page_id <> 221 THEN',
'            INSERT INTO fmp_page_config(',
'                system_id,',
'                tenant_id,',
'                page_id,',
'                is_visible,',
'                created_by,',
'                creation_date,',
'                updated_by,',
'                update_date,',
'                del_flag',
'            ) VALUES (',
'                v_system_id,',
'                :USER_TENANT,',
'                item.page_id,',
'                1,',
'                :USER_ID,',
'                SYSDATE,',
'                :USER_ID,',
'                SYSDATE,',
'                0',
'            );',
'        END IF;',
'    END LOOP;',
'',
'    apex_application.g_print_success_message := ''保存成功！'';',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        raise_application_error(-20001, SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(82022100000000000004)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(82022100000000000014)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\6821\9A8C\5B50\5E73\53F0\7BA1\7406\5458')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'    IF NOT fmp_is_system_manager(',
'        NVL(TO_NUMBER(NULLIF(:SYSTEM_ID, '''')), 42),',
'        :DIAN_USER_ID,',
'        :USER_TENANT',
'    ) THEN',
unistr('        raise_application_error(-20001, ''\4EC5\5B50\5E73\53F0\7BA1\7406\5458\53EF\8BBF\95EE\9875\9762\7BA1\7406\9875\9762'');'),
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/

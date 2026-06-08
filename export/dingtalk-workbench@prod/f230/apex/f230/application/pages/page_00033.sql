prompt --application/pages/page_00033
begin
--   Manifest
--     PAGE: 00033
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
 p_id=>33
,p_name=>unistr('\89D2\8272\6743\9650\914D\7F6E-\8868\5355')
,p_alias=>unistr('\89D2\8272\6743\9650\914D\7F6E-\8868\5355')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\89D2\8272\6743\9650\914D\7F6E-\8868\5355')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788806870077503243)
,p_javascript_file_urls=>'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var flag=true;',
'var isAll=true;'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4759766343391720350)
,p_plug_name=>unistr('\89D2\8272')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4759766519647720352)
,p_plug_name=>unistr('\8BE6\60C5')
,p_region_name=>'per_id'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(4421854746448171880)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('select distinct (o.PAGE_ID) as id,          --\6570\636Eid'),
unistr('                o.PAGE_PARENT_ID       as PARENT_ID,   --\7236id'),
unistr('                o.PERMISSION_NAME as title,       --\663E\793A\7684\6807\9898'),
unistr('                o.PERMISSION_ID   as VALUE,       --\6807\9898\5BF9\5E94\7684\503C'),
'                -- case',
'                --     when o.PARENT_ID is null then',
'                --         0',
'                --     else',
'                --         1',
unistr('                --     end           as TYPE,        --\4F7F\7528\9009\62E9\529F\80FD\65F6\9700\8981 - \662F\914D\7F6E json \4E2D typeSettings \7684\6620\5C04\503C'),
'                1 as TYPE,',
'                case',
'                    when (select count(*)',
'                          from JW_ROLE_PERMISSION role_per',
'                          where role_per.PERMISSION_ID = o.PERMISSION_ID',
'                            and role_per.ROLE_ID = :P33_ROLE_ID and role_per.TENANT_ID=V(''JW_USER_TENANT'') ) =1 then',
'                        1',
'                    else',
'                        0',
unistr('                    end           as SELECTED,    --\8BBE\7F6E\52A0\8F7D\65F6\9009\4E2D 0(null): \4E0D\9009\4E2D 1:\9009\4E2D'),
unistr('                0                 as EXPANDED,    --\662F\5426\5C55\5F00\672A\9009\4E2D\9879 0(null): \4E0D\5C55\5F00 1:\5C55\5F00'),
unistr('                1                 as CHECKBOX,    --\662F\5426\542F\7528\590D\9009\6846 0(null): \7981\7528 1:\542F\7528'),
unistr('                0                 as UNSELECTABLE --\8BBE\7F6E\4E0D\53EF\9009\4E2D 0(null): \53EF\4EE5 1: \4E0D\53EF\4EE5'),
'from JW_PERMISSION o where o.TENANT_ID =V(''jW_USER_TENANT'') and o.DEL_FLAG=0 and o.TYPE=0',
'and o.APP_ID = :APP_ID',
'start with o.PAGE_PARENT_ID is  null',
'connect by prior o.PAGE_ID = o.PAGE_PARENT_ID',
'order by o.PERMISSION_ID;',
''))
,p_plug_source_type=>'PLUGIN_APEX.FANCYTREE.SELECT'
,p_ajax_items_to_submit=>'P33_ROLE_ID'
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
    '      "storeItem": "P33_PERMISSION_IDS",',
    '      "icon": "fa-folder-o"',
    '    }',
    '  ]',
    '}')),
  'attribute_02', 'P33PERMISSION_NAME',
  'attribute_03', 'Error occured! Please check browser console for more information.',
  'attribute_05', 'N')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1476360284620203530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_button_name=>unistr('\5C55\5F00')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5C55\5F00')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_icon_css_classes=>'fa-expand'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1476360689136203531)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_button_name=>unistr('\5237\65B0')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5237\65B0')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-refresh'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1476361039640203531)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_button_name=>unistr('\5168\9009')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\5168\9009')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-check-square-o'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1476361457421203531)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_imp.id(4421928060914171921)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'TOP'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-box-arrow-in-east'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4759766959768720367)
,p_name=>'P33_ROLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4759766343391720350)
,p_prompt=>unistr('\8BF7\9009\62E9\89D2\8272')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROLE_NAME, ROLE_ID',
'from MPF_BASIC_JA_DING_ROLE_V',
'where ROLE_GROUP_ID = (select CODE_VALUE from JW_SYSTEM_DICT where DICT_CODE = ''DING_ROLE_GROUP_ID'')',
'order by ROLE_ID;'))
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
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
 p_id=>wwv_flow_imp.id(4760778900071611143)
,p_name=>'P33_PERMISSION_IDS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4760778995436611144)
,p_name=>'P33_PERMISSION_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_prompt=>unistr('\8BF7\8F93\5165\8981\641C\7D22\7684\6743\9650')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(4421925440658171917)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4760779093358611145)
,p_name=>'P33_ROW_COUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(4759766519647720352)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1476362907235203543)
,p_name=>unistr('\5C55\5F00\6811\5F62')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1476360284620203530)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476363418027203545)
,p_event_id=>wwv_flow_imp.id(1476362907235203543)
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
 p_id=>wwv_flow_imp.id(1476363873384203546)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1476360689136203531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476364346376203546)
,p_event_id=>wwv_flow_imp.id(1476363873384203546)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4759766519647720352)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1476364784828203547)
,p_name=>unistr('\5168\9009\4E0E\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1476361039640203531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476365210882203547)
,p_event_id=>wwv_flow_imp.id(1476364784828203547)
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
 p_id=>wwv_flow_imp.id(1476365676449203547)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1476361457421203531)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476366186828203547)
,p_event_id=>wwv_flow_imp.id(1476365676449203547)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P33_ROLE_ID''))){',
unistr('   alert(''\8BF7\9009\62E9\89D2\8272'');'),
'   return false;',
'}',
'',
'console.log(''ids: ''+$v(''P33_PERMISSION_IDS''));',
'',
'console.log(this.data);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476366659949203548)
,p_event_id=>wwv_flow_imp.id(1476365676449203547)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ERR_MSG NVARCHAR2(2000);',
'    /**',
'    * CREATE BY: WXX',
'    * CREATE DATE: 2025/2/21 16:00',
'    * MODIFY BY:',
'    * MODIFY DATE:',
unistr('    * DESCRIPTION:\89D2\8272\6743\9650\914D\7F6E \4FDD\5B58 \65E5\5FD7'),
'    */',
'    cursor c_obj is select * from (select * from table ( SPLITSTR(:P33_PERMISSION_IDS, '':'') ));',
'    count1    number(10) := 0;',
'    row_count number(10) := 0;',
'begin',
'    delete from JW_ROLE_PERMISSION where ROLE_ID=:P33_ROLE_ID and TENANT_ID=V(''JW_USER_TENANT'');',
'    row_count := row_count + SQL%ROWCOUNT;',
'    for c in c_obj',
'        loop',
'            select count(*)',
'            into count1',
'            from JW_ROLE_PERMISSION',
'            where ROLE_ID = :P33_ROLE_ID',
'              and PERMISSION_ID = c.column_value',
'              and TENANT_ID = V(''JW_USER_TENANT'');',
'            if count1 = 0 then',
'                insert into JW_ROLE_PERMISSION(ROLE_ID,',
'                                               PERMISSION_ID,',
'                                               IS_ENABLE,',
'                                               TENANT_ID,',
'                                               CREATED_BY,',
'                                               CREATED_DATE)',
'                values (:P33_ROLE_ID,',
'                        c.column_value,',
'                        1,',
'                        V(''JW_USER_TENANT''),',
'                        V(''JW_USER_ID''),',
'                        sysdate);',
'                row_count := row_count + SQL%ROWCOUNT;',
'            end if;',
'        end loop;',
'    apex_util.set_session_state(''P33_ROW_COUNT'', row_count);',
'',
'    EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        -- WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\89D2\8272\6743\9650\914D\7F6E \4FDD\5B58'', ''ERROR'', V_ERR_MSG, :JW_USER_ID, :JW_USER_TENANT, :APP_NAME,:APP_ID,:APP_CODE);'),
'',
'',
'end;'))
,p_attribute_02=>'P33_PERMISSION_IDS,P33_ROLE_ID,P33_ROW_COUNT'
,p_attribute_03=>'P33_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476367115088203548)
,p_event_id=>wwv_flow_imp.id(1476365676449203547)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log($v(''P33_PERMISSION_IDS''));',
'',
'if ($v(''P33_ROW_COUNT'') >0) {',
unistr('    alert(''\64CD\4F5C\6210\529F'');'),
'    return true;',
'} else {',
unistr('    alert(''\64CD\4F5C\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476367689418203548)
,p_event_id=>wwv_flow_imp.id(1476365676449203547)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1476368101846203548)
,p_name=>unistr('\66F4\6539\503C')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P33_ROLE_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1476368576883203548)
,p_event_id=>wwv_flow_imp.id(1476368101846203548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(4759766519647720352)
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

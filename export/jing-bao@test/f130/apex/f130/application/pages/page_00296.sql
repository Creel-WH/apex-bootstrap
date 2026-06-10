prompt --application/pages/page_00296
begin
--   Manifest
--     PAGE: 00296
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
 p_id=>296
,p_name=>unistr('\53D8\66F4\70B9\9879-\7F16\8F91')
,p_alias=>unistr('\53D8\66F4\70B9\9879-\7F16\8F91')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\53D8\66F4\70B9\9879-\7F16\8F91')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(237278569520685912)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237046601722583795)
,p_plug_name=>unistr('\53D8\66F4\70B9\9879-\7F16\8F91')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ITEM_ID,',
'       CONFIG_ID,',
'       NAME,',
'       DEL_FLAG,',
'       REMARKS,',
'       CREATED_BY,',
'       CREATION_DATE,',
'       UPDATED_BY,',
'       UPDATED_DATE,',
'       BASE_DEPT_ID',
'from CHECK_CHANGE_CONFIG_ITEM',
'where DEL_FLAG = 0',
'and TENANT_ID = :USERTENANT',
'and CONFIG_ID = :P296_CONFIG_ID;'))
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P296_CONFIG_ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(237054038444583802)
,p_plug_name=>unistr('\6309\94AE')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237054418759583803)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(237054038444583802)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(237056638988583804)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(237054038444583802)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(226927798037454855)
,p_name=>'P296_ROW_COUNT'
,p_item_sequence=>70
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237047060242583795)
,p_name=>'P296_ITEM_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Item Id'
,p_source=>'ITEM_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237047471635583797)
,p_name=>'P296_CONFIG_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237047861554583798)
,p_name=>'P296_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_prompt=>unistr('\53D8\66F4\70B9\63CF\8FF0')
,p_source=>'NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>60
,p_cMaxlength=>200
,p_cHeight=>4
,p_field_template=>wwv_flow_imp.id(2302107236722836227)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237048246293583798)
,p_name=>'P296_DEL_FLAG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'DEL_FLAG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237048673947583799)
,p_name=>'P296_REMARKS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'REMARKS'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237049054722583799)
,p_name=>'P296_CREATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'CREATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237049453487583799)
,p_name=>'P296_CREATION_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'CREATION_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237049808765583800)
,p_name=>'P296_UPDATED_BY'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'UPDATED_BY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237050222770583800)
,p_name=>'P296_UPDATED_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'UPDATED_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(237050593462583800)
,p_name=>'P296_BASE_DEPT_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_item_source_plug_id=>wwv_flow_imp.id(237046601722583795)
,p_source=>'BASE_DEPT_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(237054489760583803)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237054418759583803)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237055361921583804)
,p_event_id=>wwv_flow_imp.id(237054489760583803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(226927560887454852)
,p_name=>unistr('\65B0\589E')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237056638988583804)
,p_condition_element=>'P296_ITEM_ID'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226927647601454853)
,p_event_id=>wwv_flow_imp.id(226927560887454852)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P296_NAME''))) {',
unistr('    alert("\8BF7\8F93\5165\53D8\66F4\70B9\63CF\8FF0\FF01");'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237310072589316259)
,p_event_id=>wwv_flow_imp.id(226927560887454852)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\65B0\589E\56DE\663EP296_CONFIG_ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert($v(''P296_CONFIG_ID''))'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226927714355454854)
,p_event_id=>wwv_flow_imp.id(226927560887454852)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT NUMBER(10);',
'    V_ERR_MSG   NVARCHAR2(2000);',
unistr('    V_COUNT     NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\6570\636E'),
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/8/14   18:39',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:P296 \53D8\66F4\70B9\9879\65B0\589E'),
'     */',
'BEGIN',
unistr('    --     \6821\9A8C\662F\5426\6709\91CD\590D\6570\636E\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM CHECK_CHANGE_CONFIG_ITEM',
'    WHERE NAME = :P296_NAME',
'    AND CONFIG_ID = :P296_CONFIG_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID;',
'',
unistr('    IF V_COUNT > 0 THEN --\6709\91CD\590D\9879'),
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', -2);',
unistr('    ELSE --\65E0\91CD\590D\9879'),
'        INSERT INTO CHECK_CHANGE_CONFIG_ITEM(NAME, CONFIG_ID, TENANT_ID, DEL_FLAG, CREATED_BY, CREATION_DATE,',
'                                             BASE_DEPT_ID)',
'        VALUES (:P296_NAME, :P296_CONFIG_ID, :USERTENANT, 0, :USER_ID, SYSDATE, :BASE_DEPT_ID);',
'',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', V_ROW_COUNT);',
'    END IF;',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53D8\66F4\70B9\9879\5F39\7A97-\65B0\589E'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                    :APP_NAME ,:APP_ID ,:APP_CODE);',
'END',
';'))
,p_attribute_02=>'P296_NAME,P296_CONFIG_ID'
,p_attribute_03=>'P296_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928012605454857)
,p_event_id=>wwv_flow_imp.id(226927560887454852)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P296_ROW_COUNT'')>0){',
unistr('    alert(''\65B0\589E\6210\529F'');'),
'}else if ($v(''P296_ROW_COUNT'')== 0){',
unistr('    alert(''\65B0\589E\5931\8D25'');'),
'    return false;',
'}else if ($v(''P296_ROW_COUNT'')== -2){',
unistr('    alert(''\5DF2\6709\91CD\590D\53D8\66F4\70B9\63CF\8FF0\FF0C\8BF7\91CD\65B0\8F93\5165\FF01'');'),
'    return false;',
'}',
'',
'// if ($v(''P296_ROW_COUNT'')>0){',
unistr('//     alert(''\65B0\589E\6210\529F'');'),
'// }else{',
unistr('//     alert(''\65B0\589E\5931\8D25'');'),
'//     return false;',
'// }'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928123167454858)
,p_event_id=>wwv_flow_imp.id(226927560887454852)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(226928341012454860)
,p_name=>unistr('\4FEE\6539')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(237056638988583804)
,p_condition_element=>'P296_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928449601454861)
,p_event_id=>wwv_flow_imp.id(226928341012454860)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if (utils.checkNull($v(''P296_NAME''))) {',
unistr('    alert("\8BF7\8F93\5165\53D8\66F4\70B9\63CF\8FF0\FF01");'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(237310651640316265)
,p_event_id=>wwv_flow_imp.id(226928341012454860)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\56DE\663EP296_ITEM_ID')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'alert($v(''P296_ITEM_ID''))'
,p_server_condition_type=>'NEVER'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928496347454862)
,p_event_id=>wwv_flow_imp.id(226928341012454860)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_ROW_COUNT NUMBER(10);',
'    V_ERR_MSG   NVARCHAR2(2000);',
unistr('    V_COUNT     NUMBER(10);--\6821\9A8C\662F\5426\6709\91CD\590D\6570\636E'),
'    /**',
'     * CREATE BY: WXX',
'     * CREATE DATE:2024/8/14   19:39',
'     * MODIFY BY:',
'     * MODIFY DATE:',
unistr('     * DESCRIBE:P296 \53D8\66F4\70B9\9879\4FEE\6539'),
'     */',
'BEGIN',
unistr('   --     \6821\9A8C\662F\5426\6709\91CD\590D\6570\636E\FF0C\4E0D\5206\662F\5426\4FDD\5B58\90FD\6821\9A8C'),
'    SELECT COUNT(1)',
'    INTO V_COUNT',
'    FROM CHECK_CHANGE_CONFIG_ITEM',
'    WHERE NAME = :P296_NAME',
'    AND CONFIG_ID = :P296_CONFIG_ID',
'      AND DEL_FLAG = 0',
'      AND TENANT_ID = :USERTENANT',
'      AND BASE_DEPT_ID = :BASE_DEPT_ID',
'      ;',
'',
unistr('    IF V_COUNT > 0 THEN --\6709\91CD\590D\9879'),
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', -2);',
unistr('    ELSE --\65E0\91CD\590D\9879'),
'        UPDATE CHECK_CHANGE_CONFIG_ITEM',
'        SET NAME         = :P296_NAME,',
'            UPDATED_BY   = :USER_ID,',
'            UPDATED_DATE = SYSDATE',
'        WHERE ITEM_ID = :P296_ITEM_ID;',
'',
'        V_ROW_COUNT := SQL%ROWCOUNT;',
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', V_ROW_COUNT);',
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P296_ROW_COUNT'', 0);',
'        V_ERR_MSG := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\53D8\66F4\70B9\9879\5F39\7A97-\4FEE\6539'', ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,'),
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'END',
';'))
,p_attribute_02=>'P296_NAME,P296_ITEM_ID,P296_CONFIG_ID'
,p_attribute_03=>'P296_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928585875454863)
,p_event_id=>wwv_flow_imp.id(226928341012454860)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P296_ROW_COUNT'')>0){',
unistr('    alert(''\4FEE\6539\6210\529F'');'),
'}else if ($v(''P296_ROW_COUNT'')== 0){',
unistr('    alert(''\4FEE\6539\5931\8D25'');'),
'    return false;',
'}else if ($v(''P296_ROW_COUNT'')== -2){',
unistr('    alert(''\5DF2\6709\91CD\590D\53D8\66F4\70B9\63CF\8FF0\FF0C\8BF7\91CD\65B0\8F93\5165\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928702348454864)
,p_event_id=>wwv_flow_imp.id(226928341012454860)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(226928860318454865)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>40
,p_condition_element=>'P296_ITEM_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(226928982179454866)
,p_event_id=>wwv_flow_imp.id(226928860318454865)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P296_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'           NAME',
'FROM CHECK_CHANGE_CONFIG_ITEM',
'WHERE ITEM_ID = :P296_ITEM_ID;'))
,p_attribute_07=>'P296_ITEM_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(237057423204583805)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(237046601722583795)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('\5904\7406\8868\5355 \53D8\66F4\70B9\9879-\7F16\8F91')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75451239958141274
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(237057785506583805)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>unistr('\5173\95ED\5BF9\8BDD\6846')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>75451602260141274
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(237057049616583804)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(237046601722583795)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \53D8\66F4\70B9\9879-\7F16\8F91')
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>75450866370141273
);
wwv_flow_imp.component_end;
end;
/

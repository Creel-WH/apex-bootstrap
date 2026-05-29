prompt --application/pages/page_00143
begin
--   Manifest
--     PAGE: 00143
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>143
,p_name=>unistr('\5F52\6863\8BBE\7F6E')
,p_alias=>unistr('\5F52\6863\8BBE\7F6E1')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\5F52\6863\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3776627017881704312)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3808012122317112772)
,p_plug_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3808012398505112774)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341856620683835108)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3808012398505112774)
,p_button_name=>unistr('\7ACB\5373\5F52\6863')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9793615643291686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7ACB\5373\5F52\6863')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341870951273136837)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3808012398505112774)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3341871357038136838)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3808012398505112774)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9793615506060686552)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341854066017835082)
,p_name=>'P143_TIPS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(3808012122317112772)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'  CASE PLANS_FILE_TYPE',
unistr('    WHEN ''NEVER'' THEN ''\6C38\4E0D\5F52\6863'''),
unistr('    WHEN ''ONE_YEAR_LATER'' THEN ''\4E00\5E74\540E\5F52\6863'''),
unistr('    WHEN ''TWO_YEAR_LATER'' THEN ''\4E24\5E74\540E\5F52\6863'''),
unistr('    WHEN ''THREE_YEAR_LATER'' THEN ''\4E09\5E74\540E\5F52\6863'''),
unistr('    WHEN ''IMMEDIATELY'' THEN ''\7ACB\5373\5F52\6863'''),
unistr('    ELSE PLANS_FILE_TYPE  -- \5982\679C\7C7B\578B\4E0D\5728\4E0A\8FF0\5217\8868\4E2D\FF0C\663E\793A\539F\503C'),
'  END ||',
'  CASE',
'    WHEN PLANS_FILE_DATE IS NOT NULL THEN ''('' || TO_CHAR(PLANS_FILE_DATE, ''YYYY-MM-DD HH24:MI'') || '')''',
'    ELSE ''''',
'  END as FILE_STATUS',
'FROM STS_FILE',
'WHERE DEL_FLAG = 0',
'AND TENANT_ID = :user_tenant',
'AND FILE_ID = :P143_FILE_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_inline_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="file-status-container">',
'  <p class="archived-status" style="color: red;">',
unistr('    \6587\4EF6\8BBE\4E3A\5F52\6863\72B6\6001\540E\FF0C\7528\6237\7AEF\5C06\65E0\6CD5\88AB\641C\7D22\548C\8BBF\95EE'),
'  </p>',
unistr('  <!-- <p class="current-status">  --\6279\91CF\8BBE\7F6E\65E0'),
unistr('    \5F53\524D\6587\4EF6\72B6\6001\FF1A1\5E74\540E\FF082026\5E74-02-22 15:00\FF09\5F52\6863  '),
'  </p>',
'    <p class="current-status">',
unistr('      \5F53\524D\6587\4EF6\72B6\6001\FF1A&P141_PLANS_FILE_TYPE. \540E\FF082026\5E74-02-22 15:00\FF09\5F52\6863'),
'  </p> -->',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'Y',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3341856958812835111)
,p_name=>'P143_MESSAGE'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3808012826069112775)
,p_name=>'P143_PLANS_FILE_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3808012122317112772)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'    COALESCE(',
'        f1.PLANS_FILE_TYPE,',
'        (SELECT f2.PLANS_FILE_TYPE ',
'         FROM STS_FILE f2 ',
'         WHERE f2.FILE_ID = f1.ROOT_FOLDER_ID',
'           AND f2.TENANT_ID = f1.TENANT_ID',
'           AND f2.DEL_FLAG = 0)',
'    ) AS PLANS_FILE_TYPE',
'FROM STS_FILE f1',
'WHERE f1.FILE_ID = :P143_FILE_ID',
'  AND f1.TENANT_ID = :USER_TENANT',
'  AND f1.DEL_FLAG = 0;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>unistr('PLANS_FILE_TYPE\FF08\8BA1\5212\5F52\6863\7C7B\578B\FF09')
,p_lov=>'.'||wwv_flow_imp.id(3341095087358128708)||'.'
,p_field_template=>wwv_flow_imp.id(9793613038300686547)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810364866258027157)
,p_name=>'P143_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3810364942216027158)
,p_name=>'P143_FILE_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341872473334136854)
,p_name=>unistr('\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341871357038136838)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341872972163136855)
,p_event_id=>wwv_flow_imp.id(3341872473334136854)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P143_PLANS_FILE_TYPE''))){',
unistr('    alert(''\8BF7\9009\62E9\9ED8\8BA4\5F52\6863\65F6\95F4\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341873506605136855)
,p_event_id=>wwv_flow_imp.id(3341872473334136854)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\8BA4\4E3A\6587\4EF6\5E93/\6587\4EF6\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
,p_build_option_id=>wwv_flow_imp.id(9793438409306686432)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341874024004136855)
,p_event_id=>wwv_flow_imp.id(3341872473334136854)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_row_count number(10);',
'    v_err_msg   nvarchar2(2000);',
unistr('    v_PLANS_FILE_DATE DATE; --\8BA1\5212\5F52\6863\65F6\95F4'),
unistr('    v_file_status varchar2(255):= ''NORMAL''; --\6587\4EF6\72B6\6001,\9ED8\8BA4\6B63\5E38'),
'    /**',
'     * create by: wxx',
'     * create date:2025/5/20   14:40',
'     * modify by:wxx',
'     * modify date:2025/5/28   16:40',
unistr('     * describe:P141 \9ED8\8BA4\5F52\6863\8BBE\7F6E \6279\91CF\5F52\6863\72B6\6001\7EDF\4E00'),
'     */',
'begin',
unistr('    -- \5224\65AD\5F52\6863\7C7B\578B'),
unistr('    if :P143_PLANS_FILE_TYPE = ''ONE_YEAR_LATER'' then --\4E00\5E74\540E\5F52\6863'),
unistr('        -- \5728\5F53\524D\65F6\95F4\7684\57FA\7840\4E0A\52A0\4E00\5E74'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 12);',
'',
unistr('    elsif :P143_PLANS_FILE_TYPE = ''TWO_YEAR_LATER'' then -- \4E24\5E74\540E\5F52\6863'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 24);',
'',
unistr('    elsif :P143_PLANS_FILE_TYPE = ''THREE_YEAR_LATER'' then -- \4E09\5E74\540E\5F52\6863'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 36);',
'',
unistr('    elsif :P143_PLANS_FILE_TYPE = ''IMMEDIATELY'' then -- \7ACB\5373\5F52\6863'),
'        v_PLANS_FILE_DATE := sysdate;',
unistr('         v_file_status := ''ARCHIVE''; --\7ACB\5373\5F52\6863\540E\72B6\6001\53D8\6210\5DF2\5F52\6863'),
'',
unistr('    else--\6C38\4E0D\5F52\6863'),
unistr('        -- \9ED8\8BA4\60C5\51B5\6216\5176\4ED6\5904\7406'),
'        v_PLANS_FILE_DATE := NULL;',
'    end if;',
'',
'    update STS_FILE',
'    set PLANS_FILE_TYPE = :P143_PLANS_FILE_TYPE,',
'        PLANS_FILE_DATE  = v_PLANS_FILE_DATE,',
'        FILE_STATUS = v_file_status,',
'        UPDATED_BY  = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where FILE_ID = :P143_FILE_ID',
'    and DEL_FLAG = 0',
'    and TENANT_ID= :USER_TENANT;',
'    v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P143_ROW_COUNT'', v_row_count);',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P143_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME || '':'' || :APP_ID);',
'end;'))
,p_attribute_02=>'P143_FILE_ID,P143_PLANS_FILE_TYPE'
,p_attribute_03=>'P143_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341874529279136856)
,p_event_id=>wwv_flow_imp.id(3341872473334136854)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P143_ROW_COUNT'')>0){',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341875004908136856)
,p_event_id=>wwv_flow_imp.id(3341872473334136854)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3341856731757835109)
,p_name=>unistr('\6267\884C\5F52\6863')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3341856620683835108)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3341856855533835110)
,p_event_id=>wwv_flow_imp.id(3341856731757835109)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_row_count NUMBER(10) := 0;',
'    v_err_msg   VARCHAR2(2000);',
'    v_plans_file_date DATE;',
'BEGIN',
unistr('    -- 1. \53C2\6570\6821\9A8C'),
'    IF :P143_FILE_ID IS NULL OR TRIM(:P143_FILE_ID) = '''' THEN',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P143_MESSAGE'', ''\672A\9009\62E9\4EFB\4F55\6587\4EF6'');'),
'        RETURN;',
'    END IF;',
'',
'    v_plans_file_date := TRUNC(SYSDATE, ''MI'');',
'',
unistr('    -- 2. \4F7F\7528\66F4\5B89\5168\7684TABLE\51FD\6570\8BED\6CD5'),
'    UPDATE STS_FILE ',
'    SET PLANS_FILE_TYPE = ''IMMEDIATELY'',',
'        PLANS_FILE_DATE = v_plans_file_date,',
'        ACTUAL_FILE_DATE = v_plans_file_date,',
'        FILE_STATUS = ''ARCHIVE'',',
'        UPDATED_BY = :MPF_USER_ID,',
'        UPDATE_DATE = SYSDATE',
'    WHERE FILE_ID = :P143_FILE_ID',
'    AND DEL_FLAG = 0',
'    AND TENANT_ID = :USER_TENANT;',
'',
'    v_row_count := SQL%ROWCOUNT;',
'    COMMIT;',
'',
unistr('    -- 3. \6DFB\52A0\64CD\4F5C\7ED3\679C\53CD\9988'),
'    APEX_UTIL.SET_SESSION_STATE(''P143_ROW_COUNT'', v_row_count);',
'    IF v_row_count > 0 THEN',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P143_MESSAGE'', ''\6210\529F\5F52\6863\6587\4EF6'');'),
'    ELSE',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P143_MESSAGE'', ''\672A\627E\5230\5339\914D\7684\6587\4EF6\6216\6587\4EF6\4E0D\53EF\5F52\6863'');'),
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P143_ROW_COUNT'', 0);',
unistr('        v_err_msg := ''\6587\4EF6ID: '' || :P143_FILE_ID || '' \9519\8BEF: '' || SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;'),
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\6587\4EF6\7ACB\5373\5F52\6863\8BBE\7F6E'', ''ERROR'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''\5F52\6863\5931\8D25: '' || SUBSTR(SQLERRM, 1, 200));'),
'END;'))
,p_attribute_02=>'P143_FILE_ID'
,p_attribute_03=>'P143_ROW_COUNT,P143_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp.component_end;
end;
/

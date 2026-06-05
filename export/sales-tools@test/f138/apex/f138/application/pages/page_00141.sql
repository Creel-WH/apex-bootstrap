prompt --application/pages/page_00141
begin
--   Manifest
--     PAGE: 00141
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
 p_id=>141
,p_name=>unistr('\6279\91CF\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_alias=>unistr('\6279\91CF\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\6279\91CF\6587\4EF6\5F52\6863\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3697989430613186384)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3728610676037178822)
,p_plug_name=>unistr('\5F52\6863\72B6\6001\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3728610952225178824)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9714917122084168580)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262461320582718662)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(3728610952225178824)
,p_button_name=>unistr('\7ACB\5373\5F52\6863')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(9714978056023168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\7ACB\5373\5F52\6863')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_required_patch=>wwv_flow_imp.id(9714800822038168504)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262469407453202901)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(3728610952225178824)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(3262469821244202903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(3728610952225178824)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9714977918792168624)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262461612373718665)
,p_name=>'P141_MESSAGE'
,p_item_sequence=>150
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262461754126718666)
,p_name=>'P141_FILE_IDS'
,p_item_sequence=>140
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262461869659718667)
,p_name=>'P141_TIPS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(3728610676037178822)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
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
 p_id=>wwv_flow_imp.id(3262461977047718668)
,p_name=>'P141_ACTUAL_FILE_DATE'
,p_item_sequence=>160
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
'    WHEN ACTUAL_FILE_DATE IS NOT NULL THEN ''('' || TO_CHAR(ACTUAL_FILE_DATE, ''YYYY-MM-DD HH24:MI'') || '')''',
'    ELSE ''''',
'  END as FILE_STATUS',
'FROM STS_FILE',
'WHERE DEL_FLAG = 0',
'AND TENANT_ID = :user_tenant',
'AND FILE_ID = :P141_FILE_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3262462021844718669)
,p_name=>'P141_PLANS_FILE_TYPE_CN'
,p_item_sequence=>170
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263220281025317192)
,p_name=>'P141_FILE_TYPE'
,p_item_sequence=>180
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3263220412927317194)
,p_name=>'P141_FILE_TYPES'
,p_item_sequence=>190
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3728611406547178831)
,p_name=>'P141_PLANS_FILE_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(3728610676037178822)
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>unistr('PLANS_FILE_TYPE\FF08\8BA1\5212\5F52\6863\7C7B\578B\FF09')
,p_lov=>'.'||wwv_flow_imp.id(3262457500089610780)||'.'
,p_field_template=>wwv_flow_imp.id(9714975451032168619)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3730963446647093209)
,p_name=>'P141_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3730963522605093210)
,p_name=>'P141_FILE_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262471063868202908)
,p_name=>unistr('\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262469821244202903)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262471506714202909)
,p_event_id=>wwv_flow_imp.id(3262471063868202908)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('// 1. \68C0\67E5\662F\5426\9009\62E9\4E86\6587\4EF6'),
'if (utils.checkNull($v(''P141_FILE_IDS''))) {',
unistr('    alert(''\8BF7\9009\62E9\8981\8BBE\7F6E\5F52\6863\7684\6570\636E'');'),
'    return false;',
'} ',
unistr('// 2. \68C0\67E5\662F\5426\5305\542B\6587\4EF6\5939\FF08FOLDER\FF09'),
'else if ($v(''P141_FILE_TYPES'') && $v(''P141_FILE_TYPES'').split('','').some(type => type.trim() === ''FOLDER'')) {',
unistr('    alert(''\9009\4E2D\7684\5185\5BB9\5305\542B\6587\4EF6\5939\FF0C\4EC5\652F\6301\6587\4EF6\FF08FILE\FF09\5F52\6863\FF01'');'),
'    return false;',
'}',
unistr('// 3. \68C0\67E5\662F\5426\9009\62E9\4E86\5F52\6863\65F6\95F4'),
'else if (utils.checkNull($v(''P141_PLANS_FILE_TYPE''))) {',
unistr('    alert(''\8BF7\9009\62E9\9ED8\8BA4\5F52\6863\65F6\95F4\FF01'');'),
'    return false;',
'}',
unistr('// 4. \6240\6709\68C0\67E5\901A\8FC7'),
'else {',
'    return true;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262472058164202910)
,p_event_id=>wwv_flow_imp.id(3262471063868202908)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\8BA4\4E3A\6587\4EF6\5E93/\6587\4EF6\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
,p_build_option_id=>wwv_flow_imp.id(9714800822038168504)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262472498531202910)
,p_event_id=>wwv_flow_imp.id(3262471063868202908)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    DECLARE',
'    v_row_count number(10);',
'    v_err_msg   varchar2(2000);',
unistr('    v_plans_file_date DATE; --\8BA1\5212\5F52\6863\65F6\95F4'),
unistr('    v_file_status varchar2(255):= ''NORMAL''; --\6587\4EF6\72B6\6001,\9ED8\8BA4\6B63\5E38'),
'    /**',
'     * create by: wxx',
'     * create date:2025/5/20   14:40',
'     * modify by:wxx',
'     * modify date:2025/5/28   16:40',
unistr('     * describe:P141 \9ED8\8BA4\5F52\6863\8BBE\7F6E \6279\91CF\5F52\6863\72B6\6001\7EDF\4E00'),
'     */',
'BEGIN',
unistr('    -- \8C03\8BD5\8F93\51FA\5F52\6863\7C7B\578B'),
unistr('     JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-P141_PLANS_FILE_TYPE:'' || :P141_PLANS_FILE_TYPE, ''info'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'',
unistr('    -- \5224\65AD\5F52\6863\7C7B\578B'),
unistr('    IF :P141_PLANS_FILE_TYPE = ''ONE_YEAR_LATER'' THEN --\4E00\5E74\540E\5F52\6863'),
unistr('        -- \5728\5F53\524D\65F6\95F4\7684\57FA\7840\4E0A\52A0\4E00\5E74'),
'        v_plans_file_date := TRUNC(ADD_MONTHS(SYSDATE, 12), ''MI'');',
unistr('     JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-\4E00\5E74\540E\5F52\6863\65E5\671F:'' || TO_CHAR(v_plans_file_date, ''YYYY-MM-DD HH24:MI:SS''), ''info1'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'',
unistr('    ELSIF :P141_PLANS_FILE_TYPE = ''TWO_YEAR_LATER'' THEN -- \4E24\5E74\540E\5F52\6863'),
'        v_plans_file_date := TRUNC(ADD_MONTHS(SYSDATE, 24), ''MI'');',
unistr('             JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-\4E24\5E74\540E\5F52\6863\65E5\671F:'' || TO_CHAR(v_plans_file_date, ''YYYY-MM-DD HH24:MI:SS''), ''info2'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'',
unistr('    ELSIF :P141_PLANS_FILE_TYPE = ''THREE_YEAR_LATER'' THEN -- \4E09\5E74\540E\5F52\6863'),
'        v_plans_file_date := TRUNC(ADD_MONTHS(SYSDATE, 36), ''MI'');',
unistr('                     JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-\4E09\5E74\540E\5F52\6863\65E5\671F:'' || TO_CHAR(v_plans_file_date, ''YYYY-MM-DD HH24:MI:SS''), ''info3'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'',
unistr('        ELSIF :P141_PLANS_FILE_TYPE = ''IMMEDIATELY'' THEN -- \7ACB\5373\5F52\6863'),
'        v_plans_file_date := sysdate;',
unistr('        v_file_status := ''ARCHIVE''; --\7ACB\5373\5F52\6863\540E\72B6\6001\53D8\6210\5DF2\5F52\6863'),
unistr('                     JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-\7ACB\5373\5F52\6863\65E5\671F:'' || TO_CHAR(v_plans_file_date, ''YYYY-MM-DD HH24:MI:SS''), ''info3'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'',
unistr('    ELSE --\6C38\4E0D\5F52\6863'),
'        v_plans_file_date := NULL;',
unistr('           JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E-\6C38\4E0D\5F52\6863\FF0CPLANS_FILE_DATE\8BBE\4E3ANULL'', ''info4'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'    END IF;',
'',
unistr('    -- \66F4\65B0\6587\4EF6\4FE1\606F'),
'    UPDATE STS_FILE f',
'    SET PLANS_FILE_TYPE = :P141_PLANS_FILE_TYPE,',
'        PLANS_FILE_DATE = v_plans_file_date,',
'        FILE_STATUS = v_file_status,',
'        UPDATED_BY = :MPF_USER_ID,',
'        UPDATE_DATE = SYSDATE',
'    WHERE EXISTS (',
'        SELECT 1',
'        FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P141_FILE_IDS, '','')) t',
'        WHERE t.DATA_VAL = TO_CHAR(f.FILE_ID)',
'    )',
'    AND DEL_FLAG = 0',
'    AND TENANT_ID = :USER_TENANT;',
'',
'    v_row_count := SQL%ROWCOUNT;',
'    COMMIT;',
'    APEX_UTIL.SET_SESSION_STATE(''P141_ROW_COUNT'', v_row_count);',
'',
unistr('    -- \8C03\8BD5\8F93\51FA\66F4\65B0\7ED3\679C'),
unistr('    APEX_DEBUG.INFO(''\6210\529F\66F4\65B0 '' || v_row_count || '' \6761\8BB0\5F55\7684\5F52\6863\8BBE\7F6E'');'),
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P141_ROW_COUNT'', 0);',
'        v_err_msg := SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E'', ''ERROR'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
'END;'))
,p_attribute_02=>'P141_FILE_ID,P141_PLANS_FILE_TYPE,P141_FILE_IDS'
,p_attribute_03=>'P141_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262473033284202910)
,p_event_id=>wwv_flow_imp.id(3262471063868202908)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P141_ROW_COUNT'')>0){',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262473501918202910)
,p_event_id=>wwv_flow_imp.id(3262471063868202908)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3262461455502718663)
,p_name=>unistr('\6267\884C\5F52\6863')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262461320582718662)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3262461522976718664)
,p_event_id=>wwv_flow_imp.id(3262461455502718663)
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
'    IF :P141_FILE_IDS IS NULL OR TRIM(:P141_FILE_IDS) = '''' THEN',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P141_MESSAGE'', ''\672A\9009\62E9\4EFB\4F55\6587\4EF6'');'),
'        RETURN;',
'    END IF;',
'',
'    v_plans_file_date := TRUNC(SYSDATE, ''MI'');',
'',
unistr('    -- 2. \4F7F\7528\66F4\5B89\5168\7684TABLE\51FD\6570\8BED\6CD5'),
'    UPDATE STS_FILE f',
'    SET PLANS_FILE_TYPE = ''IMMEDIATELY'',',
'        PLANS_FILE_DATE = v_plans_file_date,',
'        ACTUAL_FILE_DATE = v_plans_file_date,',
'        FILE_STATUS = ''ARCHIVE'',',
'        UPDATED_BY = :MPF_USER_ID,',
'        UPDATE_DATE = v_plans_file_date',
'    WHERE EXISTS (',
'        SELECT 1 ',
'        FROM TABLE(JA_UTILS_PKG.SPLIT_STR(:P141_FILE_IDS, '','')) t',
unistr('        WHERE t.DATA_VAL = TO_CHAR(f.FILE_ID) -- \786E\4FDD\7C7B\578B\5339\914D'),
'    )',
'    AND DEL_FLAG = 0',
'    AND TENANT_ID = :USER_TENANT;',
'',
'    v_row_count := SQL%ROWCOUNT;',
'    COMMIT;',
'    ',
unistr('    -- 3. \6DFB\52A0\64CD\4F5C\7ED3\679C\53CD\9988'),
'    APEX_UTIL.SET_SESSION_STATE(''P141_ROW_COUNT'', v_row_count);',
'    IF v_row_count > 0 THEN',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P141_MESSAGE'', ''\6210\529F\5F52\6863 '' || v_row_count || '' \4E2A\6587\4EF6'');'),
'    ELSE',
unistr('        APEX_UTIL.SET_SESSION_STATE(''P141_MESSAGE'', ''\672A\627E\5230\5339\914D\7684\6587\4EF6\6216\6587\4EF6\4E0D\53EF\5F52\6863'');'),
'    END IF;',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        ROLLBACK;',
'        APEX_UTIL.SET_SESSION_STATE(''P141_ROW_COUNT'', 0);',
unistr('        v_err_msg := ''\6587\4EF6ID: '' || :P141_FILE_IDS || '' \9519\8BEF: '' || SQLERRM || CHR(13) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;'),
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\591A\6587\4EF6\5F52\6863\8BBE\7F6E'', ''ERROR'', v_err_msg,'),
'                    :MPF_USER_ID, :USER_TENANT, :APP_NAME || '':'' || :APP_ID);',
unistr('        RAISE_APPLICATION_ERROR(-20001, ''\5F52\6863\5931\8D25: '' || SUBSTR(SQLERRM, 1, 200));'),
'END;'))
,p_attribute_02=>'P141_FILE_IDS'
,p_attribute_03=>'P141_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(3263217434407317164)
,p_name=>unistr('\70B9\51FB\53D6\6D88')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(3262469407453202901)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(3263217550536317165)
,p_event_id=>wwv_flow_imp.id(3263217434407317164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp.component_end;
end;
/

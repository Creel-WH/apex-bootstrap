prompt --application/pages/page_00140
begin
--   Manifest
--     PAGE: 00140
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>140
,p_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_alias=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(3241923283210633167)
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2804043742884251071)
,p_plug_name=>unistr('\9ED8\8BA4\5F52\6863\8BBE\7F6E')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2804044019072251073)
,p_plug_name=>unistr('\6309\94AE\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2804044101314251074)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2804044019072251073)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_alignment=>'RIGHT'
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2804044316261251076)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2804044019072251073)
,p_button_name=>unistr('\786E\5B9A')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(9258911771389615407)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\786E\5B9A')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2804043879325251072)
,p_name=>'P140_PLANS_FILE_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2804043742884251071)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select PLANS_FILE_TYPE from STS_FILE',
'where DEL_FLAG = 0',
'and TENANT_ID = :USER_TENANT',
'and FILE_ID = :P140_FILE_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>unistr('PLANS_FILE_TYPE(\8BA1\5212\5F52\6863\7C7B\578B-\65E0\7ACB\5373\5F52\6863)')
,p_lov=>'.'||wwv_flow_imp.id(2807857029596833653)||'.'
,p_field_template=>wwv_flow_imp.id(9258909303629615402)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '1',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2806394300793165436)
,p_name=>'P140_ROW_COUNT'
,p_item_sequence=>120
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2806394376751165437)
,p_name=>'P140_FILE_ID'
,p_item_sequence=>130
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2804044626814251079)
,p_name=>unistr('\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2804044316261251076)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2804044726611251080)
,p_event_id=>wwv_flow_imp.id(2804044626814251079)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P140_PLANS_FILE_TYPE''))){',
unistr('    alert(''\8BF7\9009\62E9\9ED8\8BA4\5F52\6863\65F6\95F4\FF01'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2804044962859251083)
,p_event_id=>wwv_flow_imp.id(2804044626814251079)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('\786E\8BA4\4E3A\6587\4EF6\5E93\8BBE\7F6E\9ED8\8BA4\5F52\6863\65F6\95F4')
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2806394135265165434)
,p_event_id=>wwv_flow_imp.id(2804044626814251079)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_row_count number(10);',
'    v_err_msg   nvarchar2(2000);',
unistr('    v_PLANS_FILE_DATE DATE; --\8BA1\5212\5F52\6863\65F6\95F4'),
'    /**',
'     * create by: wxx',
'     * create date:2025/5/20   14:40',
'     * modify by:',
'     * modify date:',
unistr('     * describe:P140 \9ED8\8BA4\5F52\6863\8BBE\7F6E \6587\4EF6\5E93\65E0\7ACB\5373\5F52\6863\72B6\6001'),
'     */',
'begin',
unistr('    -- \5224\65AD\5F52\6863\7C7B\578B'),
unistr('    if :P140_PLANS_FILE_TYPE = ''ONE_YEAR_LATER'' then --\4E00\5E74\540E\5F52\6863'),
unistr('        -- \5728\5F53\524D\65F6\95F4\7684\57FA\7840\4E0A\52A0\4E00\5E74'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 12);',
'',
unistr('    elsif :P140_PLANS_FILE_TYPE = ''TWO_YEAR_LATER'' then -- \4E24\5E74\540E\5F52\6863'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 24);',
'',
unistr('    elsif :P140_PLANS_FILE_TYPE = ''THREE_YEAR_LATER'' then -- \4E09\5E74\540E\5F52\6863'),
'        v_PLANS_FILE_DATE := ADD_MONTHS(SYSDATE, 36);',
'',
unistr('    else--\6C38\4E0D\5F52\6863'),
unistr('        -- \9ED8\8BA4\60C5\51B5\6216\5176\4ED6\5904\7406'),
'        v_PLANS_FILE_DATE := NULL;',
'    end if;',
'',
'    update STS_FILE',
'    set PLANS_FILE_TYPE = :P140_PLANS_FILE_TYPE,',
'        PLANS_FILE_DATE  = v_PLANS_FILE_DATE,',
'        UPDATED_BY  = :MPF_USER_ID,',
'        UPDATE_DATE = sysdate',
'    where FILE_ID = :P140_FILE_ID',
'    and DEL_FLAG = 0',
'    and TENANT_ID= :USER_TENANT;',
'    v_row_count := SQL%ROWCOUNT;',
'    commit;',
'    apex_util.set_session_state(''P140_ROW_COUNT'', v_row_count);',
'exception',
'    when others then',
'        rollback;',
'        apex_util.set_session_state(''P140_ROW_COUNT'', 0);',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || ''-\9ED8\8BA4\5F52\6863\8BBE\7F6E'', ''ERROR'', V_ERR_MSG, :MPF_USER_ID, :USER_TENANT,'),
'                     :APP_NAME || '':'' || :APP_ID);',
'end;'))
,p_attribute_02=>'P140_FILE_ID,P140_PLANS_FILE_TYPE'
,p_attribute_03=>'P140_ROW_COUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2806394450206165438)
,p_event_id=>wwv_flow_imp.id(2804044626814251079)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if($v(''P140_ROW_COUNT'')>0){',
unistr('    alert(''\8BBE\7F6E\6210\529F'');'),
'    return true;',
'}else{',
unistr('    alert(''\8BBE\7F6E\5931\8D25'');'),
'    return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2806394582084165439)
,p_event_id=>wwv_flow_imp.id(2804044626814251079)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_imp.component_end;
end;
/

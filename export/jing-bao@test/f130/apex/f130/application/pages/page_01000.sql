prompt --application/pages/page_01000
begin
--   Manifest
--     PAGE: 01000
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
 p_id=>1000
,p_name=>unistr('\4E0B\8F7D')
,p_alias=>unistr('\4E0B\8F7D')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\4E0B\8F7D')
,p_reload_on_submit=>'A'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>'#WORKSPACE_FILES#static/js/mkUtils.v1.min.js'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(623620791571572294)
,p_plug_name=>unistr('\4E0B\8F7D\62A5\8868')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2302017113938836190)
,p_plug_display_sequence=>80
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(623622045861572307)
,p_plug_name=>unistr('\4E0B\8F7D')
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_imp.id(2302027572475836194)
,p_plug_display_sequence=>90
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(351464772989529044)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(623622045861572307)
,p_button_name=>unistr('\53D6\6D88')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\53D6\6D88')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(351465120649529044)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(623622045861572307)
,p_button_name=>unistr('\4E0B\8F7D')
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4E0B\8F7D')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(623621323311572286)
,p_name=>'P1000_DEPT_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(623620791571572294)
,p_prompt=>unistr('\90E8\95E8\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select NAME, EXT_ORG_ID',
'from MPF_SHARE_DEPT_V',
'where TENANT_ID = :USERTENANT',
'  and DEL_FLAG = 0',
'and BASE_DEPT_ID = :BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
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
 p_id=>wwv_flow_imp.id(623621704801572289)
,p_name=>'P1000_CREATION_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(623620791571572294)
,p_prompt=>unistr('\70B9\68C0\65E5\671F\FF1A')
,p_placeholder=>unistr('\8BF7\9009\62E9\65E5\671F')
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(623623591690572280)
,p_name=>'P1000_CODE'
,p_item_sequence=>70
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(351466477008529039)
,p_name=>unistr('\53D6\6D88')
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(351464772989529044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(351466978672529037)
,p_event_id=>wwv_flow_imp.id(351466477008529039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(408251940016216646)
,p_name=>unistr('\786E\5B9A')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(351465120649529044)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(408252163879216648)
,p_event_id=>wwv_flow_imp.id(408251940016216646)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(utils.checkNull($v(''P1000_DEPT_ID''))){',
unistr('	alert(''\8BF7\9009\62E9\90E8\95E8'');'),
'	return false;',
'}',
'if(utils.checkNull($v(''P1000_CREATION_DATE''))){',
unistr('	alert(''\8BF7\9009\62E9\70B9\68C0\65E5\671F'');'),
'	return false;',
'}'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(408252069528216647)
,p_event_id=>wwv_flow_imp.id(408251940016216646)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(351466019592529040)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>unistr('\4E0B\8F7D\62A5\8868\6570\636E')
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    L_CONTEXT APEX_EXEC.T_CONTEXT;',
'    L_EXPORT  APEX_DATA_EXPORT.T_EXPORT;',
'	V_SQL    CLOB;',
'	V_TITLE VARCHAR2(1000);',
'BEGIN',
'	IF :P1000_CODE =''PATROL'' then',
unistr('		V_TITLE := ''\8BBE\5907\5DE1\68C0\62A5\8868.XLSX'';'),
unistr('		V_SQL :=''select DEPT_NAME AS "\5E94\70B9\68C0\90E8\95E8",'),
unistr('       USER_NAME  AS "\70B9\68C0\4EBA",'),
unistr('       CHECK_DATES AS "\70B9\68C0\65E5\671F",'),
unistr('       CREATION_DATES AS "\751F\6548\65E5\671F",'),
unistr('       CHECK_EXPIRE_DATES AS "\5931\6548\65E5\671F",'),
unistr('       NAME AS "\8868\5355\540D\79F0",'),
unistr('       CHECK_STATUS AS "\70B9\68C0\72B6\6001",'),
unistr('       RESULT_RESULT AS "\70B9\68C0\7ED3\679C",'),
unistr('       DEVICE_CODE AS "\8BBE\5907\7F16\7801"'),
'from (',
'    SELECT   c.DEPT_NAME,',
'       CASE',
'           WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'           ELSE CHECK_USER_JOB_NUMBER || ''''-'''' || C.CHECK_USER_NAME',
'           END AS USER_NAME,',
'       TO_CHAR(C.CHECK_DATE,''''YYYY-MM-DD HH24:MI:SS'''')  CHECK_DATES,',
'       TO_CHAR(C.CREATION_DATE,''''YYYY-MM-DD HH24:MI:SS'''') CREATION_DATES,',
'	   TO_CHAR(C.CHECK_EXPIRE_DATE,''''YYYY-MM-DD HH24:MI:SS'''') CHECK_EXPIRE_DATES,',
'       f.NAME ,',
unistr('       decode(C.STATUS,''''WAIT'''',decode(:P1000_CODE,''''PATROL'''',''''\672A\70B9\68C0'''',''''\672A\5B8C\6210''''),''''OVERDUE'''',decode(:P1000_CODE,''''PATROL'''',''''\8FC7\671F\672A\70B9\68C0'''',''''\8FC7\671F\672A\5B8C\6210''''),''''COMPLETED'''',decode(:P1000_CODE,''''PATROL'''',''''\5DF2\70B9\68C0'''',''''\5DF2\5B8C\6210'''')) AS CHECK_STATUS,'),
unistr('       decode(C.RESULT,''''ERROR'''',''''\5F02\5E38'''',''''NORMAL'''',''''\6B63\5E38'''',''''STOP'''',''''\505C\673A'''',''''RECHECK_NORMAL'''',''''\590D\68C0\6B63\5E38'''') AS RESULT_RESULT,'),
'       C.DEVICE_CODE',
'FROM CHECK_RECORD C',
' left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'        left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'WHERE C.TENANT_ID = :USERTENANT',
'  AND c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.DEPT_ID in (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P1000_DEPT_ID,'''':''''))',
'  and Y.CODE=:P1000_CODE',
'  AND C.CREATION_DATE <= TO_DATE(:P1000_CREATION_DATE, ''''YYYY-MM-DD'''') +1',
'  AND C.CHECK_EXPIRE_DATE >= TO_DATE(:P1000_CREATION_DATE, ''''YYYY-MM-DD'''')  )'';',
'   ',
'   else',
unistr('   	V_TITLE := ''\8BBE\5907\7EF4\4FDD\62A5\8868.XLSX'';'),
unistr('   V_SQL :=''select DEPT_NAME AS "\5E94\7EF4\4FDD\90E8\95E8",'),
unistr('       USER_NAME  AS "\68C0\67E5\4EBA",'),
unistr('       CHECK_DATES AS "\68C0\67E5\65E5\671F",'),
unistr('       CREATION_DATES AS "\751F\6548\65E5\671F",'),
unistr('       CHECK_EXPIRE_DATES AS "\5931\6548\65E5\671F",'),
unistr('       NAME AS "\8868\5355\540D\79F0",'),
unistr('       CHECK_STATUS AS "\7EF4\4FDD\72B6\6001",'),
unistr('       RESULT_RESULT AS "\7EF4\4FDD\7ED3\679C",'),
unistr('       DEVICE_CODE AS "\8BBE\5907\7F16\7801"'),
'from (',
'    SELECT   c.DEPT_NAME,',
'       CASE',
'           WHEN C.CHECK_USER_NAME IS NULL THEN NULL',
'           ELSE CHECK_USER_JOB_NUMBER || ''''-'''' || C.CHECK_USER_NAME',
'           END AS USER_NAME,',
'       TO_CHAR(C.CHECK_DATE ,''''YYYY-MM-DD HH24:MI:SS'''') CHECK_DATES,',
'       TO_CHAR(C.CREATION_DATE,''''YYYY-MM-DD HH24:MI:SS'''') CREATION_DATES,',
'	   TO_CHAR(C.CHECK_EXPIRE_DATE,''''YYYY-MM-DD HH24:MI:SS'''') CHECK_EXPIRE_DATES,',
'       f.NAME,',
unistr('       decode(C.STATUS,''''WAIT'''',decode(:P1000_CODE,''''PATROL'''',''''\672A\70B9\68C0'''',''''\672A\5B8C\6210''''),''''OVERDUE'''',decode(:P1000_CODE,''''PATROL'''',''''\8FC7\671F\672A\70B9\68C0'''',''''\8FC7\671F\672A\5B8C\6210''''),''''COMPLETED'''',decode(:P1000_CODE,''''PATROL'''',''''\5DF2\70B9\68C0'''',''''\5DF2\5B8C\6210'''')) CHECK_STATUS,'),
unistr('       decode(C.RESULT,''''ERROR'''',''''\5F02\5E38'''',''''NORMAL'''',''''\6B63\5E38'''',''''STOP'''',''''\505C\673A'''',''''RECHECK_NORMAL'''',''''\590D\68C0\6B63\5E38'''') RESULT_RESULT,'),
'       C.DEVICE_CODE',
'FROM CHECK_RECORD C',
' left join CHECK_FORM F on C.FORM_ID= F.FORM_ID',
'        left join CHECK_CLASSIFY Y on F.CLASSIFY_ID=Y.CLASSIFY_ID',
'WHERE C.TENANT_ID = :USERTENANT',
'  and c.BASE_DEPT_ID =:BASE_DEPT_ID',
'  and c.DEPT_ID in (select DATA_VAL from JA_UTILS_PKG.SPLIT_STR(:P1000_DEPT_ID,'''':''''))',
'  and Y.CODE=:P1000_CODE',
'  AND C.CREATION_DATE <= TO_DATE(:P1000_CREATION_DATE, ''''YYYY-MM-DD'''')+1',
'  AND C.CHECK_EXPIRE_DATE >= TO_DATE(:P1000_CREATION_DATE, ''''YYYY-MM-DD'''')  )'';',
'	end if;',
'	',
'    L_CONTEXT := APEX_EXEC.OPEN_QUERY_CONTEXT(',
'            P_LOCATION => APEX_EXEC.C_LOCATION_LOCAL_DB,',
'            P_SQL_QUERY => V_SQL);',
'',
'',
'    L_EXPORT := APEX_DATA_EXPORT.EXPORT(',
'            P_CONTEXT => L_CONTEXT,',
'            P_FORMAT => APEX_DATA_EXPORT.C_FORMAT_XLSX,',
'            P_FILE_NAME => V_TITLE);',
'',
'    APEX_EXEC.CLOSE(L_CONTEXT);',
'    APEX_DATA_EXPORT.DOWNLOAD(P_EXPORT => L_EXPORT);',
'',
'EXCEPTION',
'    WHEN OTHERS THEN',
'        APEX_EXEC.CLOSE(L_CONTEXT);',
'        RAISE;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>43614739392925423
);
wwv_flow_imp.component_end;
end;
/

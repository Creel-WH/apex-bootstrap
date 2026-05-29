prompt --application/shared_components/automations/运营提报推送_月
begin
--   Manifest
--     AUTOMATION: 运营提报推送-月
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_automation(
 p_id=>wwv_flow_imp.id(2162248705893983000)
,p_name=>unistr('\8FD0\8425\63D0\62A5\63A8\9001-\6708')
,p_static_id=>unistr('\8FD0\8425\63D0\62A5\63A8\9001-\6708')
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=MONTHLY;BYMONTHDAY=-1;BYHOUR=21;BYMINUTE=15'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_use_local_sync_table=>false
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(2162248993696983006)
,p_automation_id=>wwv_flow_imp.id(2162248705893983000)
,p_name=>unistr('\65B0\5EFA\64CD\4F5C')
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    APEX_DAILY_REPORT_DATA.REPORT_SEND(''M'',SYSDATE);',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/automations/晶豹频发事件推送_日
begin
--   Manifest
--     AUTOMATION: 晶豹频发事件推送-日
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
 p_id=>wwv_flow_imp.id(2168660470247471734)
,p_name=>unistr('\6676\8C79\9891\53D1\4E8B\4EF6\63A8\9001-\65E5')
,p_static_id=>unistr('\6676\8C79\9891\53D1\4E8B\4EF6\63A8\9001-\65E5')
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=DAILY;INTERVAL=1;BYHOUR=20;BYMINUTE=0'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_use_local_sync_table=>false
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(2168660797850471742)
,p_automation_id=>wwv_flow_imp.id(2168660470247471734)
,p_name=>unistr('\65B0\5EFA\64CD\4F5C')
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    APEX_FREQUENT_ROBOT_SUBSCRIBE_PRO2(''DAY'');',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/

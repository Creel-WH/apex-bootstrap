prompt --application/shared_components/automations/合肥升级提醒_弃用
begin
--   Manifest
--     AUTOMATION: 合肥升级提醒--弃用
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
 p_id=>wwv_flow_imp.id(2160176897234743056)
,p_name=>unistr('\5408\80A5\5347\7EA7\63D0\9192--\5F03\7528')
,p_static_id=>unistr('\5408\80A5\5347\7EA7\63D0\9192')
,p_trigger_type=>'POLLING'
,p_polling_interval=>'FREQ=MINUTELY;INTERVAL=15'
,p_polling_status=>'DISABLED'
,p_result_type=>'ALWAYS'
,p_use_local_sync_table=>false
,p_include_rowid_column=>false
,p_commit_each_row=>false
,p_error_handling_type=>'IGNORE'
);
wwv_flow_imp_shared.create_automation_action(
 p_id=>wwv_flow_imp.id(2160177235451743060)
,p_automation_id=>wwv_flow_imp.id(2160176897234743056)
,p_name=>unistr('\65B0\5EFA\64CD\4F5C')
,p_execution_sequence=>10
,p_action_type=>'NATIVE_PLSQL'
,p_action_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    APEX_PROC_NEW_NOTICE_HF;',
'end;'))
,p_action_clob_language=>'PLSQL'
,p_location=>'LOCAL'
,p_stop_execution_on_error=>true
);
wwv_flow_imp.component_end;
end;
/

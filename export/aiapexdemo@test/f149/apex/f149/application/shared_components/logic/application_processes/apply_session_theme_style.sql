prompt --application/shared_components/logic/application_processes/apply_session_theme_style
begin
--   Manifest
--     APPLICATION PROCESS: Apply Session Theme Style
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(1181971096442245919)
,p_process_sequence=>1
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Apply Session Theme Style'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_theme.set_session_style (',
'    p_id => :P0_THEME_STYLE_ID );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>':request = ''APPLY_THEME_STYLE'' and :P0_THEME_STYLE_ID is not null'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

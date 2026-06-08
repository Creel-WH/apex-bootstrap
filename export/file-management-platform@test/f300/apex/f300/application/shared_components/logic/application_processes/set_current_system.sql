prompt --application/shared_components/logic/application_processes/set_current_system
begin
--   Manifest
--     APPLICATION PROCESS: SET_CURRENT_SYSTEM
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(7927490888081779948)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CURRENT_SYSTEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id number;',
'    v_count     number;',
'begin',
'    v_system_id := to_number(apex_application.g_x01);',
'',
'    select count(*)',
'      into v_count',
'      from sts_system',
'     where system_id = v_system_id',
'       and is_enable = 1',
'       and del_flag = 0;',
'',
'    apex_json.open_object;',
'    if v_count = 1 then',
'        apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'        apex_json.write(''code'', ''200'');',
'        apex_json.write(''system_id'', v_system_id);',
'        apex_json.write(''message'', '''');',
'    else',
'        apex_json.write(''code'', ''404'');',
'        apex_json.write(''message'', ''Sub-platform not found or disabled'');',
'    end if;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''code'', ''500'');',
'        apex_json.write(''message'', ''Sub-platform switch failed'');',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

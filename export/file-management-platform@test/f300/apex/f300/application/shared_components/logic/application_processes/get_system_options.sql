prompt --application/shared_components/logic/application_processes/get_system_options
begin
--   Manifest
--     APPLICATION PROCESS: GET_SYSTEM_OPTIONS
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
 p_id=>wwv_flow_imp.id(7863550972459487473)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SYSTEM_OPTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    apex_json.open_object;',
'    apex_json.write(''currentSystem'', nvl(v(''SYSTEM_ID''), ''1''));',
'    apex_json.open_array(''tenants'');',
'    for r in (',
'        select system_id, system_name',
'          from sts_system',
'         where is_enable = 1',
'           and del_flag = 0',
'         order by system_id',
'    ) loop',
'        apex_json.open_object;',
'        apex_json.write(''id'', r.system_id);',
'        apex_json.write(''name'', r.system_name);',
'        apex_json.close_object;',
'    end loop;',
'    apex_json.close_array;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        apex_json.open_object;',
'        apex_json.write(''currentSystem'', ''1'');',
'        apex_json.open_array(''tenants'');',
'        apex_json.close_array;',
'        apex_json.close_object;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

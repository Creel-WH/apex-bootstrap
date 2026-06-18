prompt --application/shared_components/logic/application_processes/get_system_options
begin
--   Manifest
--     APPLICATION PROCESS: GET_SYSTEM_OPTIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_process(
 p_id=>wwv_flow_imp.id(7892034540846357694)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_SYSTEM_OPTIONS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_current_system varchar2(40) := nullif(v(''SYSTEM_ID''), '''');',
'    v_user_id        number;',
'begin',
'    v_user_id := to_number(nullif(v(''USER_ID''), ''''));',
'',
'    if v_current_system is null and v_user_id is not null then',
'        begin',
'            select to_char(x.system_id)',
'              into v_current_system',
'              from (',
'                    select fu.last_system_id as system_id',
'                      from fmp_user fu',
'                      join fmp_system s',
'                        on s.system_id = fu.last_system_id',
'                       and s.is_enable = 1',
'                       and s.del_flag = 0',
'                     where fu.tenant_id = to_number(v(''USER_TENANT''))',
'                       and fu.user_id = v_user_id',
'                       and nvl(fu.del_flag, 0) = 0',
'                       and fu.last_system_id is not null',
'                     order by fu.update_date desc, fu.user_id desc',
'              ) x',
'             where rownum = 1;',
'        exception',
'            when no_data_found then',
'                null;',
'        end;',
'    end if;',
'',
'    if v_current_system is null then',
'        begin',
'            select to_char(x.system_id)',
'              into v_current_system',
'              from (',
'                    select s.system_id',
'                      from fmp_system s',
'                     where s.is_enable = 1',
'                       and s.del_flag = 0',
'                     order by s.system_id',
'              ) x',
'             where rownum = 1;',
'        exception',
'            when no_data_found then',
'                v_current_system := ''1'';',
'        end;',
'    end if;',
'',
'    apex_util.set_session_state(''SYSTEM_ID'', v_current_system);',
'    apex_json.open_object;',
'    apex_json.write(''currentSystem'', nvl(v_current_system, ''1''));',
'    apex_json.open_array(''tenants'');',
'    for r in (',
'        select system_id, system_name',
'          from fmp_system',
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

prompt --application/shared_components/logic/application_processes/set_current_system
begin
--   Manifest
--     APPLICATION PROCESS: SET_CURRENT_SYSTEM
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
 p_id=>wwv_flow_imp.id(7892034540846357695)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET_CURRENT_SYSTEM'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_system_id number;',
'    v_target_page_id number;',
'    v_count     number;',
'    v_user_id   number;',
'    v_redirect_url varchar2(32767);',
'begin',
'    v_system_id := to_number(apex_application.g_x01);',
'    v_target_page_id := to_number(nvl(nullif(apex_application.g_x02, ''''), ''133''));',
'    v_user_id := to_number(nullif(v(''USER_ID''), ''''));',
'',
'    select count(*)',
'      into v_count',
'      from fmp_system',
'     where system_id = v_system_id',
'       and is_enable = 1',
'       and del_flag = 0;',
'',
'    apex_json.open_object;',
'    if v_count = 1 then',
'        apex_util.set_session_state(''SYSTEM_ID'', v_system_id);',
'        apex_util.clear_page_cache(133);',
'        apex_util.set_session_state(''P133_FILE_ID'', null);',
'        apex_util.set_session_state(''P133_FILE_IDS'', null);',
'        apex_util.set_session_state(''P133_FILE_TYPES'', null);',
'        apex_util.set_session_state(''P133_FILE_TYPE'', null);',
'        apex_util.set_session_state(''P133_PARENT_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_ROOT_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_FILE_LEVEL'', null);',
'        apex_util.set_session_state(''P133_FILE_PATH'', null);',
'        apex_util.set_session_state(''P133_FILE_NAME'', null);',
'        apex_util.set_session_state(''P133_UP_FOLDER_ID'', null);',
'        apex_util.set_session_state(''P133_BREADCRUMB_JSON'', ''[]'');',
'        apex_util.set_session_state(''P133_DISPLAY'', null);',
'',
'        if v_user_id is not null then',
'            update fmp_user',
'               set last_system_id = v_system_id,',
'                   updated_by = v_user_id,',
'                   update_date = sysdate',
'             where tenant_id = to_number(v(''USER_TENANT''))',
'               and user_id = v_user_id',
'               and nvl(del_flag, 0) = 0;',
'        end if;',
'        v_redirect_url := apex_util.prepare_url(',
'            p_url => ''f?p='' || :APP_ID || '':'' || v_target_page_id || '':'' || :APP_SESSION || '':S::RP,'' || v_target_page_id,',
'            p_checksum_type => ''SESSION'',',
'            p_plain_url => false',
'        );',
'        apex_json.write(''code'', ''200'');',
'        apex_json.write(''system_id'', v_system_id);',
'        apex_json.write(''redirect_url'', v_redirect_url);',
'        apex_json.write(''message'', '''');',
'    else',
'        apex_json.write(''code'', ''404'');',
'        apex_json.write(''message'', ''Sub-platform not found or disabled'');',
'    end if;',
'    commit;',
'    apex_json.close_object;',
'exception',
'    when others then',
'        rollback;',
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

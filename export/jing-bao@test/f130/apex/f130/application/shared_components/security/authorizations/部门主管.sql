prompt --application/shared_components/security/authorizations/部门主管
begin
--   Manifest
--     SECURITY SCHEME: 部门主管
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(2198148484739152007)
,p_name=>unistr('\90E8\95E8\4E3B\7BA1')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_AUTH NUMBER(2);',
'BEGIN',
'RETURN :USERAUTH<=3;',
'END;'))
,p_error_message=>unistr('\4E0D\662F\90E8\95E8\4E3B\7BA1')
,p_version_scn=>1
,p_caching=>'BY_USER_BY_SESSION'
);
wwv_flow_imp.component_end;
end;
/

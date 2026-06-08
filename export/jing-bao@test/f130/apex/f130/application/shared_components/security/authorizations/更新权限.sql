prompt --application/shared_components/security/authorizations/更新权限
begin
--   Manifest
--     SECURITY SCHEME: 更新权限
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
 p_id=>wwv_flow_imp.id(2232511595445217774)
,p_name=>unistr('\66F4\65B0\6743\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'L_AUTH NUMBER(2);',
'BEGIN',
' SELECT nvl(max(A.BUPDATE),0) INTO L_AUTH FROM AUTH_ROLE_MENU_ASSO A',
' LEFT JOIN AUTH_MENU B ON A.MENU_ID = B.MENU_ID',
' WHERE A.ROLE_ID= :ROLEID AND B.PAGE_ID = :APP_PAGE_ID ;',
'RETURN L_AUTH=1;',
'END;'))
,p_error_message=>unistr('\60A8\6CA1\6709\66F4\65B0\6743\9650')
,p_version_scn=>1
,p_caching=>'NOCACHE'
);
wwv_flow_imp.component_end;
end;
/

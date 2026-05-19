prompt --application/shared_components/security/authorizations/管理权限
begin
--   Manifest
--     SECURITY SCHEME: 管理权限
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(9793732006322686827)
,p_name=>unistr('\7BA1\7406\6743\9650')
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>unistr('\6743\9650\4E0D\8DB3, \7528\6237\4E0D\662F\7BA1\7406\5458')
,p_version_scn=>1
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
wwv_flow_imp.component_end;
end;
/

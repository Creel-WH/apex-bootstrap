prompt --application/shared_components/security/authentications/sts_login
begin
--   Manifest
--     AUTHENTICATION: STS_LOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(9793750060697069126)
,p_name=>'STS_LOGIN'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'STS_APEX_LOGIN'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'STS_LOGIN_SUCCESS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

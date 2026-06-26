prompt --application/shared_components/security/authentications/sts_login
begin
--   Manifest
--     AUTHENTICATION: STS_LOGIN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(9731810145074776652)
,p_name=>'STS_LOGIN'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'F300_ADMIN_APEX_LOGIN'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'F300_ADMIN_LOGIN_SUCCESS_V2'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

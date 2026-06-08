prompt --application/shared_components/security/authentications/login_auth
begin
--   Manifest
--     AUTHENTICATION: login_auth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(4425140946490627533)
,p_name=>'login_auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'JW_AUTHENTICATION_LOGIN'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'JW_LOGIN_SUCCESS_SAVE_USER'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/security/authentications/login_auth
begin
--   Manifest
--     AUTHENTICATION: login_auth
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(842399942799254462)
,p_name=>'login_auth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'LOGIN_AUTHENTICATION_JINGBAO'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'LOGIN_AUTHENTICATION_SUCCESS'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/security/authentications/apexappauth
begin
--   Manifest
--     AUTHENTICATION: ApexAppAuth
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
 p_id=>wwv_flow_imp.id(2251171035968907813)
,p_name=>'ApexAppAuth'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'apex_app_auth_authentication_3'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_post_auth_process=>'APEX_APP_AUTH_POST_AUTHENTICATION_NOW'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

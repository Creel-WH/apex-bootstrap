prompt --application/shared_components/logic/application_computations/app_code
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_CODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(304368819221979235)
,p_computation_sequence=>10
,p_computation_item=>'APP_CODE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'JINGBAO_ZB'
,p_version_scn=>6676554251613
);
wwv_flow_imp.component_end;
end;
/

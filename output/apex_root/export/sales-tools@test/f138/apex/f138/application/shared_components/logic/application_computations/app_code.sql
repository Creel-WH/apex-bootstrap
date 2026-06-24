prompt --application/shared_components/logic/application_computations/app_code
begin
--   Manifest
--     APPLICATION COMPUTATION: APP_CODE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(8322851664972680979)
,p_computation_sequence=>10
,p_computation_item=>'APP_CODE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'JA_SALES_TOOL_SET'
,p_version_scn=>6719016292815
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/logic/application_computations/bpoint_button_url
begin
--   Manifest
--     APPLICATION COMPUTATION: BPOINT_BUTTON_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3109298024545370122)
,p_computation_sequence=>10
,p_computation_item=>'BPOINT_BUTTON_URL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'http://47.99.194.51/ords/apex/ywja/ja/visited/button/log'
,p_version_scn=>6712132308507
);
wwv_flow_imp.component_end;
end;
/

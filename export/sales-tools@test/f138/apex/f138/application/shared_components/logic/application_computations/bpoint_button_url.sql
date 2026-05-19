prompt --application/shared_components/logic/application_computations/bpoint_button_url
begin
--   Manifest
--     APPLICATION COMPUTATION: BPOINT_BUTTON_URL
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(9793752621693148233)
,p_computation_sequence=>10
,p_computation_item=>'BPOINT_BUTTON_URL'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'https://dapex.jasolar.com:26000/ords/tdd/apex/ywja/ja/visited/button/log'
,p_version_scn=>6777001695797
);
wwv_flow_imp.component_end;
end;
/

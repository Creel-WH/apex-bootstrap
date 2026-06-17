prompt --application/shared_components/logic/application_computations/page
begin
--   Manifest
--     APPLICATION COMPUTATION: PAGE
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_flow_computation(
 p_id=>wwv_flow_imp.id(3311599733580816551)
,p_computation_sequence=>10
,p_computation_item=>'PAGE'
,p_computation_point=>'ON_NEW_INSTANCE'
,p_computation_type=>'STATIC_ASSIGNMENT'
,p_computation_processed=>'REPLACE_EXISTING'
,p_computation=>'1'
,p_version_scn=>6744924323246
);
wwv_flow_imp.component_end;
end;
/

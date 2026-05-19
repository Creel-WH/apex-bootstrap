prompt --application/shared_components/user_interface/lovs/font_animations
begin
--   Manifest
--     FONT_ANIMATIONS
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(1993404565620595834)
,p_lov_name=>'FONT_ANIMATIONS'
,p_lov_query=>'.'||wwv_flow_imp.id(1993404565620595834)||'.'
,p_location=>'STATIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1993405556525595840)
,p_lov_disp_sequence=>10
,p_lov_disp_value=>'Spin'
,p_lov_return_value=>'fa-anim-spin'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1993404832399595837)
,p_lov_disp_sequence=>20
,p_lov_disp_value=>'Spin in Steps'
,p_lov_return_value=>'fa-anim-spin-step'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1993405214058595839)
,p_lov_disp_sequence=>30
,p_lov_disp_value=>'Flash'
,p_lov_return_value=>'fa-anim-flash'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1993418395840668864)
,p_lov_disp_sequence=>40
,p_lov_disp_value=>'Horizontal Shake'
,p_lov_return_value=>'fa-anim-horizontal-shake'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(1993418806433668864)
,p_lov_disp_sequence=>50
,p_lov_disp_value=>'Vertical Shake'
,p_lov_return_value=>'fa-anim-vertical-shake'
);
wwv_flow_imp.component_end;
end;
/

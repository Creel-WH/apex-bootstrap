prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 138
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(9714800822038168504)
,p_build_option_name=>unistr('\5DF2\6CE8\91CA\6389')
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>6712125669322
,p_default_on_export=>'EXCLUDE'
,p_on_upgrade_keep_status=>true
);
wwv_flow_imp.component_end;
end;
/

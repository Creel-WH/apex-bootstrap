prompt --application/shared_components/logic/build_options
begin
--   Manifest
--     BUILD OPTIONS: 130
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(2204005795769225463)
,p_build_option_name=>unistr('\529F\80FD: \914D\7F6E\9009\9879')
,p_build_option_status=>'INCLUDE'
,p_version_scn=>1
,p_on_upgrade_keep_status=>true
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/files/close_png
begin
--   Manifest
--     APP STATIC FILES: 130
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D494844520000001B0000001B0803000000BA0A04670000003C504C5445FFFFFF000000FDFDFD8282828080800000000000000000004B4B4B000000000000AAAAAAAAAAAABABABA4A4A4A484848000000BBBBBBB9B9B9FFFF';
wwv_flow_imp.g_varchar2_table(2) := 'FFF36EC31C0000001374524E53004AFEABAB00164B960C0BBFC0C9959515CAC909868A7C0000007849444154785E7DD2490E80201044511A15519CFBFE7715899BCFA26A05BC90305498BA842E57E8937E59ECB48EECB0B5D1BCC59168432CF387B6B957';
wwv_flow_imp.g_varchar2_table(3) := '24B997BA9272F486248F39B5E18FA0A1CE81242289482292883B88E820200878377B40621F0828CE29EF47124F269F1A4802EA7F177D513D93FD7C01B7200C814897B48A0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(2394176674783734292)
,p_file_name=>'close.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/

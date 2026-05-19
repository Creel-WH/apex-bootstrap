prompt --application/shared_components/pwa/screenshots/screenshot_1_png
begin
--   Manifest
--     PWA SCREENSHOT: Screenshot-1.png
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_pwa_screenshot(
 p_id=>wwv_flow_imp.id(1411292901770173270)
,p_label=>'Screenshot-1.png'
,p_display_sequence=>10
,p_screenshot_url=>'pwa/Screenshot-1.png'
);
wwv_flow_imp.component_end;
end;
/

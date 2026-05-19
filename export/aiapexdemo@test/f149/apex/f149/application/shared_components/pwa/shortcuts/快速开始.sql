prompt --application/shared_components/pwa/shortcuts/快速开始
begin
--   Manifest
--     PWA SHORTCUT: 快速开始
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_pwa_shortcut(
 p_id=>wwv_flow_imp.id(1396292993182438923)
,p_name=>unistr('\5FEB\901F\5F00\59CB')
,p_display_sequence=>10
,p_description=>unistr('\5FEB\901F\5F00\59CB')
,p_target_url=>'f?p=&APP_ID.:500:&SESSION.'
,p_icon_url=>'pwa/shortcut-icon-10.png'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/navigation/breadcrumbs/面包屑
begin
--   Manifest
--     MENU: 面包屑
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>300
,p_default_id_offset=>31969957811146237
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(9731499151603393962)
,p_name=>unistr('\9762\5305\5C51')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12968062084377707529)
,p_short_name=>unistr('\5206\5E73\53F0\7BA1\7406\540E\53F0')
,p_link=>'f?p=&APP_ID.:300:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>300
);
wwv_flow_imp.component_end;
end;
/

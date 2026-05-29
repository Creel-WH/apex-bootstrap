prompt --application/shared_components/navigation/breadcrumbs/面包屑
begin
--   Manifest
--     MENU: 面包屑
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(2156802003035093160)
,p_name=>unistr('\9762\5305\5C51')
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(171780416791835069)
,p_short_name=>unistr(' \70B9\68C0\5BF9\8C61-\7F16\8F91')
,p_link=>'f?p=&APP_ID.:262:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>262
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(221626763706627537)
,p_short_name=>unistr('\53D8\66F4\70B9\914D\7F6E')
,p_link=>'f?p=&APP_ID.:294:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>294
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(221639072709637703)
,p_parent_id=>wwv_flow_imp.id(221626763706627537)
,p_short_name=>unistr('\53D8\66F4\70B9\914D\7F6E-\7F16\8F91')
,p_link=>'f?p=&APP_ID.:295:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>295
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(276041517588937458)
,p_short_name=>unistr('\4E8B\4EF6\62A5\8868(\4E8B\4EF6\7EF4\5EA6)')
,p_link=>'f?p=&APP_ID.:45:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>45
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2156813181393195805)
,p_short_name=>unistr('\7F51\683C\7BA1\7406')
,p_link=>'f?p=&APP_ID.:55:&SESSION.::&DEBUG.:::'
,p_page_id=>55
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2156832423508212355)
,p_short_name=>unistr('\57FA\7840\8BBE\7F6E')
,p_link=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(2161243985436493616)
,p_short_name=>unistr('\5347\7EA7\89C4\5219\914D\7F6E')
,p_link=>'f?p=&APP_ID.:142:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>142
);
wwv_flow_imp.component_end;
end;
/

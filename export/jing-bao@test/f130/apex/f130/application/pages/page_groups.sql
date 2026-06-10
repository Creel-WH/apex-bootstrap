prompt --application/pages/page_groups
begin
--   Manifest
--     PAGE GROUPS: 130
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(2302133956672836270)
,p_group_name=>'Administration'
);
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(237278569520685912)
,p_group_name=>unistr('\53D8\66F4\70B9\7BA1\7406')
);
wwv_flow_imp.component_end;
end;
/

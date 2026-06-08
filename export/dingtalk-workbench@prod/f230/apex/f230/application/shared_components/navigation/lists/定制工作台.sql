prompt --application/shared_components/navigation/lists/定制工作台
begin
--   Manifest
--     LIST: 定制工作台
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(1480560286816460473)
,p_name=>unistr('\5B9A\5236\5DE5\4F5C\53F0')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1480560449901460476)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6A21\677F\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:54:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

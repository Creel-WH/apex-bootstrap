prompt --application/shared_components/navigation/lists/数据分析
begin
--   Manifest
--     LIST: 数据分析
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>449818185134842535
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3347824651600368757)
,p_name=>unistr('\6570\636E\5206\6790')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3347824804806368768)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6570\636E\5BFC\51FA')
,p_list_item_link_target=>'f?p=&APP_ID.:151:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3347825260083368769)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6570\636E\63A8\9001')
,p_list_item_link_target=>'f?p=&APP_ID.:152:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

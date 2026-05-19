prompt --application/shared_components/navigation/lists/向导进度_list
begin
--   Manifest
--     LIST: 向导进度 List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(3716117771435346115)
,p_name=>unistr('\5411\5BFC\8FDB\5EA6 List')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716118840508346119)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6B65\9AA4 1')
,p_list_item_link_target=>'f?p=&APP_ID.:1920:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716123713891346137)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6B65\9AA4 2')
,p_list_item_link_target=>'f?p=&APP_ID.:1921:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3716129197833346142)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\6B65\9AA4 3')
,p_list_item_link_target=>'f?p=&APP_ID.:1922:&SESSION.::&DEBUG.'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

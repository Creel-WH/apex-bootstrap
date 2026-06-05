prompt --application/shared_components/navigation/lists/操作手册与问题反馈
begin
--   Manifest
--     LIST: 操作手册与问题反馈
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(7059043596493924468)
,p_name=>unistr('\64CD\4F5C\624B\518C\4E0E\95EE\9898\53CD\9988')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7059043784550924469)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\7CFB\7EDF\4F7F\7528\8BF4\660E')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7059044131758924470)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\95EE\9898\767B\8BB0')
,p_list_item_link_target=>'f?p=&APP_ID.:902:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(7059044558826924470)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\95EE\9898\53CD\9988\5217\8868')
,p_list_item_link_target=>'f?p=&APP_ID.:901:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

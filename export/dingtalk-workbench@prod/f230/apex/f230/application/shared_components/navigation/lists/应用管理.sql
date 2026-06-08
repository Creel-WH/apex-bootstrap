prompt --application/shared_components/navigation/lists/应用管理
begin
--   Manifest
--     LIST: 应用管理
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
 p_id=>wwv_flow_imp.id(1475655845873604997)
,p_name=>unistr('\5E94\7528\7BA1\7406')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475656082225604997)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\9ED1\540D\5355\5E94\7528\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),41, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/shared_components/navigation/lists/权限管理
begin
--   Manifest
--     LIST: 权限管理
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
 p_id=>wwv_flow_imp.id(1475654438048599169)
,p_name=>unistr('\6743\9650\7BA1\7406')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475654642829599169)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6743\9650\4FE1\606F')
,p_list_item_link_target=>'f?p=&APP_ID.:31:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),31, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475655027685599169)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\89D2\8272\6743\9650\914D\7F6E')
,p_list_item_link_target=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),32, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

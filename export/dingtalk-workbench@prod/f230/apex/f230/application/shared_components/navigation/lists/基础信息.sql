prompt --application/shared_components/navigation/lists/基础信息
begin
--   Manifest
--     LIST: 基础信息
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
 p_id=>wwv_flow_imp.id(1475653037743593301)
,p_name=>unistr('\57FA\7840\4FE1\606F')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475653303275593301)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\89D2\8272\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),21, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475653608145593302)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\90E8\95E8\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),22, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475654034804593302)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\7528\6237\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:23:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),23, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

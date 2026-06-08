prompt --application/shared_components/navigation/lists/主页
begin
--   Manifest
--     LIST: 主页
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
 p_id=>wwv_flow_imp.id(1475648150490933883)
,p_name=>unistr('\4E3B\9875')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475648330481933883)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\57FA\7840\4FE1\606F')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''), 20, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475648708462933883)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('\6743\9650\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),30, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475649195174933884)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>unistr('\5E94\7528\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),40, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475649553835933884)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>unistr('\5B9A\5236\5DE5\4F5C\53F0')
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),50, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475649935707933884)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('\5BA1\8BA1\65E5\5FD7')
,p_list_item_link_target=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),60, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475650495022936758)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>unistr('\901A\77E5\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),70, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(1475650781405939140)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>unistr('\4F7F\7528\62A5\8868')
,p_list_item_link_target=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return is_have_permission(V(''JW_USER_ID''),80, V(''JW_USER_TENANT''),0 );'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

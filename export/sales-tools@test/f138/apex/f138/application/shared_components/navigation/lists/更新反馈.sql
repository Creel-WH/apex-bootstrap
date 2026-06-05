prompt --application/shared_components/navigation/lists/更新反馈
begin
--   Manifest
--     LIST: 更新反馈
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
 p_id=>wwv_flow_imp.id(3698146444511383746)
,p_name=>unistr('\66F4\65B0\53CD\9988')
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(3698146625519383747)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\53CD\9988\7BA1\7406')
,p_list_item_link_target=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.::::'
,p_list_item_disp_cond_type=>'FUNCTION_BODY'
,p_list_item_disp_condition=>'return STS_IS_HAVE_PERMISSION(V(''MPF_USER_ID''), 201,V(''ROLE_ID'') ,V(''USER_TENANT''),0);'
,p_list_item_disp_condition2=>'PLSQL'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

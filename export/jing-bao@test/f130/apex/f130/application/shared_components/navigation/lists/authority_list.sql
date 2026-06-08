prompt --application/shared_components/navigation/lists/authority_list
begin
--   Manifest
--     LIST: Authority List
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2303859812302860221)
,p_name=>'Authority List'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2303862442808860222)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>unistr('\89D2\8272\7B56\7565\5206\914D')
,p_list_item_link_target=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(2359894791041135367)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2303862799562860222)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>unistr('\7528\6237\89D2\8272\5206\914D')
,p_list_item_link_target=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(2359894791041135367)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'16'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2303864086969860223)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>unistr('\7528\6237\7EC4\6743\9650\5206\914D')
,p_list_item_link_target=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(2359894791041135367)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'19'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2303864823261860223)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>unistr('\89D2\8272\83DC\5355\5206\914D')
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(2359894791041135367)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2306348079060133791)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>unistr('\9489\9489\7528\6237\7EC4\5206\914D')
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_security_scheme=>wwv_flow_imp.id(2359894791041135367)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

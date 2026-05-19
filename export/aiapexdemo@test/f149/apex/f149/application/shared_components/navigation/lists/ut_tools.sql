prompt --application/shared_components/navigation/lists/ut_tools
begin
--   Manifest
--     LIST: UT - Tools
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
 p_id=>wwv_flow_imp.id(2144072935739459959)
,p_name=>'UT - Tools'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144073296608459959)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('\6309\94AE\6784\5EFA\5668')
,p_list_item_link_target=>'f?p=&APP_ID.:6100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tools'
,p_list_text_01=>'Get the HTML markup or link attributes you need to add buttons to report columns, static content regions, and more.'
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144073654117459959)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Icon Builder'
,p_list_item_link_target=>'f?p=&APP_ID.:4000:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-tools'
,p_list_text_01=>'Get the HTML markup or icon classes you need to add icons within your UI components.'
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

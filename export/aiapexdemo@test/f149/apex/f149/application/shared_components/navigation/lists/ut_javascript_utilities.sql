prompt --application/shared_components/navigation/lists/ut_javascript_utilities
begin
--   Manifest
--     LIST: UT - JavaScript Utilities
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
 p_id=>wwv_flow_imp.id(2144074362921459960)
,p_name=>'UT - JavaScript Utilities'
,p_list_status=>'PUBLIC'
,p_version_scn=>1
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144127639917974017)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>unistr('JavaScript \4E8B\4EF6')
,p_list_item_link_target=>'f?p=&APP_ID.:6200:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_text_01=>unistr('Listen and respond to these documented events in \901A\7528\4E3B\9898')
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2144074715701459960)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Javascript APIs'
,p_list_item_link_target=>'f?p=&APP_ID.:6201:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-code'
,p_list_text_01=>unistr('Extend \901A\7528\4E3B\9898 with the following widget APIs')
,p_list_text_06=>'u-color-13'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/

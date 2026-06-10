prompt --application/shared_components/logic/application_items/release_text
begin
--   Manifest
--     APPLICATION ITEM: RELEASE_TEXT
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(268788774081765171)
,p_name=>'RELEASE_TEXT'
,p_protection_level=>'I'
,p_item_comment=>unistr('RELEASE_TEXT\FF1A\53D1\5E03\7684\7248\672C\53F7')
,p_version_scn=>6686484020100
);
wwv_flow_imp.component_end;
end;
/

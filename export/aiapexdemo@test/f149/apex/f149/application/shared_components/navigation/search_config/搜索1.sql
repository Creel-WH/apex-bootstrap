prompt --application/shared_components/navigation/search_config/搜索1
begin
--   Manifest
--     SEARCH CONFIG: 搜索1
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_shared.create_search_config(
 p_id=>wwv_flow_imp.id(1436293250821533054)
,p_label=>unistr('\641C\7D221')
,p_static_id=>'search1'
,p_search_type=>'SIMPLE'
,p_location=>'LOCAL'
,p_query_type=>'TABLE'
,p_query_table=>'EBA_UT_DEMO_CARDS'
,p_searchable_columns=>'CATEGORY:TITLE:SUBTITLE:BODY:SECONDARY_BODY:ICON_CLASS:BADGE:IMAGE_URL'
,p_pk_column_name=>'ID'
,p_title_column_name=>'TITLE'
,p_description_column_name=>'BODY'
,p_icon_source_type=>'INITIALS'
,p_icon_class_column_name=>'ICON_CLASS'
,p_version_scn=>1
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00220
begin
--   Manifest
--     PAGE: 00220
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>534703734671071145
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>220
,p_name=>unistr('\7CFB\7EDF\8BBE\7F6E')
,p_alias=>unistr('\7CFB\7EDF\8BBE\7F6E1')
,p_step_title=>unistr('\7CFB\7EDF\8BBE\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(9259054417232213587)
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7231987842213750856)
,p_plug_name=>unistr('\5BFC\822A')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>20
,p_list_id=>wwv_flow_imp.id(6602976606511362090)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(9258899835021615392)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(9712350139303546142)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9258850974681615363)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9258735332554615291)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9258913410254615408)
);
wwv_flow_imp.component_end;
end;
/

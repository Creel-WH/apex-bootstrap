prompt --application/pages/page_00150
begin
--   Manifest
--     PAGE: 00150
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>299
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>150
,p_name=>unistr('\6570\636E\5206\6790')
,p_alias=>unistr('\6570\636E\5206\6790')
,p_step_title=>unistr('\6570\636E\5206\6790')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3313926545951432804)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9759982719990264183)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9760160797690264300)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3313954072653022271)
,p_plug_name=>unistr('\65B0\5EFA')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(9760098362117264255)
,p_plug_display_sequence=>100
,p_list_id=>wwv_flow_imp.id(3314368304364946504)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(9760147222457264284)
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(3313953838291022269)
,p_branch_name=>unistr('\9ED8\8BA4\8DF3\8F6C151')
,p_branch_action=>'f?p=&APP_ID.:151:&SESSION.::&DEBUG.:151::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'BEFORE_HEADER'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_required_patch=>wwv_flow_imp.id(9759982062071264179)
);
wwv_flow_imp.component_end;
end;
/

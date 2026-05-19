prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>1401937903267120
,p_default_application_id=>149
,p_default_id_offset=>59519793195936374
,p_default_owner=>'MPF'
);
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Page Zero'
,p_alias=>'PAGE-ZERO'
,p_step_title=>'Page Zero'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_template_options=>'#DEFAULT#'
,p_nav_list_template_options=>'#DEFAULT#'
,p_page_component_map=>'14'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1164519055143615107)
,p_plug_name=>'Script'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_07'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<script>',
'const toggleRtl = ( ) => {',
'    if ( $(''html'').hasClass(''u-RTL'') ) {',
'        sessionStorage.removeItem(''dir'');',
'        $(''html'').removeClass(''u-RTL'').attr(''dir'', ''ltr'');',
'    } else {',
'        sessionStorage.setItem(''dir'', ''rtl'');',
'        $(''html'').addClass(''u-RTL'').attr(''dir'', ''rtl'');',
'    }',
'};',
'',
'window.addEventListener(''load'', () => {',
'    if ( sessionStorage.getItem(''dir'') ) {',
'        toggleRtl();',
'    }',
'});',
'</script>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1180351334774266486)
,p_plug_name=>'Items'
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_06'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4512878861360454447)
,p_plug_name=>unistr('\54CE\5440\3002')
,p_icon_css_classes=>'fa-emoji-grin-sweat'
,p_region_template_options=>'#DEFAULT#:t-Alert--wizard:t-Alert--customIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>10
,p_plug_source=>unistr('\4F60\8BBF\95EE\4E86\4E00\4E2A\4E0D\5B58\5728\7684\9875\9762\3002')
,p_plug_display_condition_type=>'CURRENT_PAGE_IN_CONDITION'
,p_plug_display_when_condition=>'400,403,404,406,5001,5002,5003,5004,5005,6306,700,701'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1180351374423266487)
,p_name=>'P0_THEME_STYLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1180351334774266486)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp.component_end;
end;
/

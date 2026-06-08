prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>39318793634258964
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>unistr('\4E3B\9875')
,p_alias=>'HOME'
,p_step_title=>unistr('\9500\552E\5DE5\5177\96C6')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(10249825058932854204)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const parentElement = $(''body'')[0];',
'parentElement.addEventListener(''click'', function (event) {',
'    event.stopPropagation();',
'    if (event.target.className === ''ui-widget-overlay ui-front'') {',
'        // apex.navigation.dialog.cancel(false);',
'        $(''.ui-icon-closethick'').click()',
'    }',
'});',
''))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// const elements = $(''.t-BadgeList-item'');',
'',
'// elements.each(function (i, element) {',
'//     element.addEventListener(''click'', function (event, e) {',
unistr('//         console.log(''element\FF1A'', $(element).find(''.t-BadgeList-label'').text());'),
'//         var area = $(element).find(''.t-BadgeList-label'').text();',
unistr('//         if (area == ''\4EFB\52A1\603B\6570'') {'),
'',
unistr('//         } else if (area == ''\5E73\53F0\9879\76EE\6570'') {'),
'',
unistr('//         } else if (area == '' \53C2\4E0E\4EBA\6570'') {'),
'',
'//         }',
'//     });',
'// })',
''))
,p_page_template_options=>'#DEFAULT#'
,p_page_component_map=>'06'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4231861850364983570)
,p_plug_name=>unistr('\9875\5BFC\822A')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--animRaiseCard'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>100
,p_list_id=>wwv_flow_imp.id(4232851509730472702)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(10249669717095239754)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10249806040595240080)
,p_plug_name=>unistr('\9500\552E\5DE5\5177\96C6')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249585185297239714)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(9974474109145686331)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7579179627392448130)
,p_name=>unistr('\66F4\6539\4E3B\5BFC\5355\4F4D')
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT_2'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6882392963864824604)
,p_name=>unistr('\66F4\6539\9879\76EE\7C7B\522B')
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_CATEGORY_ID'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6882393953756824614)
,p_name=>unistr('\66F4\6539\4EA7\4E1A\94FE')
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_PROCESS'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(6882395829787824633)
,p_name=>unistr('\66F4\6539\4E3B\5BFC\5355\4F4D3')
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT_3'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(7008795090429509437)
,p_name=>unistr('\5237\65B0\9879\76EE')
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P1_FIRST_LEAD_UNIT'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_00405
begin
--   Manifest
--     PAGE: 00405
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
 p_id=>405
,p_name=>unistr('\4E3B\9898\6837\5F0F')
,p_alias=>'THEME-STYLES'
,p_step_title=>unistr('\4E3B\9898\6837\5F0F')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'[aria-describedby="TSInstructions"] {',
'    max-width:90%!important;',
'    width: 1400px!important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1182816001408557886)
,p_plug_name=>unistr('Official \4E3B\9898\6837\5F0F')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Here are the official <strong>Theme Styles</strong> for APEX.</p>',
'<p>These <strong>Theme Styles</strong> are part of the official APEX release and are maintained and supported by our team.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1430690312607980350)
,p_plug_name=>unistr('Official \4E3B\9898\6837\5F0F \5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(1182816001408557886)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name,',
'       case ',
'        when :P0_THEME_STYLE_ID is not null and s.theme_style_id = :P0_THEME_STYLE_ID then ''Current'' ',
'        when :P0_THEME_STYLE_ID is null and s.is_current = ''Yes'' then ''Current'' ',
'       end as badge,',
'       s.theme_style_id,',
'       ''#APP_FILES#theme_styles/''||replace(lower(s.name), '' '', ''-'')||''.png'' image,',
'       ''javascript:apex.page.submit( { request: ''''APPLY_THEME_STYLE'''', set: { ''''P0_THEME_STYLE_ID'''': '''''' || s.theme_style_id || '''''' }, showWait: true } );'' javascript',
'  from apex_application_theme_styles s, ',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id',
'   and t.ui_type_name   = ''DESKTOP''',
'   and t.is_current     = ''Yes''',
'   and s.theme_roller_output_file_url like ''%THEME_FILES%'' -- custom theme style',
' order by case when s.name like ''%Redwood%'' then 2 else 1 end, s.name'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1430690757388980343)
,p_region_id=>wwv_flow_imp.id(1430690312607980350)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'BADGE'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1430694672826819781)
,p_card_id=>wwv_flow_imp.id(1430690757388980343)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Live Preview'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&JAVASCRIPT.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1182816232630557888)
,p_plug_name=>unistr('Sample \4E3B\9898\6837\5F0F')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Here are a few of sample <strong>Theme Styles</strong> to showcase what can be done with <strong>Theme Roller</strong></p>',
'<p>These <strong>Theme Styles</strong> are here for demo purposes and are subject to change with new APEX releases.</p>'))
,p_plug_display_condition_type=>'NEVER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1430694976193819784)
,p_plug_name=>unistr('Sample \4E3B\9898\6837\5F0F \5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(1182816232630557888)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select s.name,',
'       case ',
'        when :P0_THEME_STYLE_ID is not null and s.theme_style_id = :P0_THEME_STYLE_ID then ''Current'' ',
'        when :P0_THEME_STYLE_ID is null and s.is_current = ''Yes'' then ''Current'' ',
'       end as badge,',
'       s.theme_style_id,',
'       ''#APP_FILES#theme_styles/''||replace(lower( regexp_replace(decompose( s.name ), unistr(''[\0300-\036F]''), null) ), '' '', ''-'')||''.png'' image,',
'       ''javascript:apex.page.submit( { request: ''''APPLY_THEME_STYLE'''', set: { ''''P0_THEME_STYLE_ID'''': '''''' || s.theme_style_id || '''''' }, showWait: true } );'' javascript',
'  from apex_application_theme_styles s, ',
'       apex_application_themes t',
' where s.application_id = t.application_id',
'   and s.theme_number   = t.theme_number',
'   and s.application_id = :app_id',
'   and t.ui_type_name   = ''DESKTOP''',
'   and t.is_current     = ''Yes''',
'   and s.theme_roller_output_file_url like ''%THEME_DB_FILES%'' -- custom theme style',
' order by s.name'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(1430695174075819786)
,p_region_id=>wwv_flow_imp.id(1430694976193819784)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_badge_column_name=>'BADGE'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'IMAGE'
,p_media_display_position=>'BODY'
,p_media_sizing=>'FIT'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1430695290877819787)
,p_card_id=>wwv_flow_imp.id(1430695174075819786)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Live Preview'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'&JAVASCRIPT.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(1231998563418109588)
,p_card_id=>wwv_flow_imp.id(1430695174075819786)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>unistr('\8BF4\660E')
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'javascript:apex.event.trigger(document, ''openInstructions'', { themeStyleId: ''&THEME_STYLE_ID.'' })'
,p_button_display_type=>'TEXT'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1183435481809844852)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>1
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1231998731846109589)
,p_name=>'Using this theme style'
,p_region_name=>'TSInstructions'
,p_template=>wwv_flow_imp.id(2654312167222878074)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:js-dialog-autoheight:t-DialogRegion--noPadding:js-dialog-size720x480'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlightOff:t-Report--inline:t-Report--hideNoPagination'
,p_display_point=>'REGION_POSITION_04'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''<strong>1.</strong> Log in to your APEX workspace to activate a developer session'' d from dual union all',
'select ''<strong>2.</strong> Run your application on any page'' d from dual union all',
'select ''<strong>3.</strong> Open Theme Roller using the APEX Developer Toolbar'' d from dual union all',
'select ''<strong>4.</strong> Open your browser developer console'' d from dual union all',
'select ''<strong>5.</strong> Run the following code <button type="button" title="Copy Theme Style Code" class="t-Button t-Button--icon t-Button--tiny t-Button--link t-Button--iconLeft" data-clipboard-source="#utrcode"><span aria-hidden="true" class="t'
||'-Icon t-Icon--left fa fa-synonym"></span>Copy</button> <pre style="white-space: normal; font-size: .65rem;"><code id="utrcode" style="white-space: normal; font-size: .65rem;">apex.utr.config(''||(select to_char(theme_roller_config) from apex_applicati'
||'on_theme_styles where theme_style_id = :p405_theme_style_id)||'');</code></pre>'' d from dual union all',
'select ''<strong>6.</strong> The Theme Style will be applied to the current page'' d from dual union all',
'select ''<strong>7.</strong> Use Save As and give a name to this new theme style'' d from dual'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P405_THEME_STYLE_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2520292761174628983)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1231999145024109594)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>10
,p_column_heading=>'D'
,p_disable_sort_column=>'N'
,p_display_as=>'WITHOUT_MODIFICATION'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233452187014545980)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>11
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4742846164225259574)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Using <strong>Theme Roller</strong> you can create <strong>Theme Styles</strong> to customize the UI of your application in more than a few creative ways.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(1231999407896109596)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(1231998731846109589)
,p_button_name=>'CLOSE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\5173\95ED')
,p_button_position=>'CLOSE'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(1231998956642109592)
,p_name=>'P405_THEME_STYLE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(1231998731846109589)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1231998830139109590)
,p_name=>unistr('customEvent open\8BF4\660E')
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'document'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'openInstructions'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1231999074155109593)
,p_event_id=>wwv_flow_imp.id(1231998830139109590)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P405_THEME_STYLE_ID'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'this.data.themeStyleId'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1231999338726109595)
,p_event_id=>wwv_flow_imp.id(1231998830139109590)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1231998731846109589)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1231998909235109591)
,p_event_id=>wwv_flow_imp.id(1231998830139109590)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_OPEN_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1231998731846109589)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(1231999489592109597)
,p_name=>'onClick CLOSE'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(1231999407896109596)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(1231999592216109598)
,p_event_id=>wwv_flow_imp.id(1231999489592109597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLOSE_REGION'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(1231998731846109589)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(944552102671467880)
,p_name=>'afterRefresh Using this theme style'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(1231998731846109589)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterrefresh'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(944552173711467881)
,p_event_id=>wwv_flow_imp.id(944552102671467880)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$( "[data-clipboard-source]", apex.gPageContext$ ).each( function() {',
'    const trigger$ = $( this );',
'    const source = trigger$.attr( "data-clipboard-source" );',
'    apex.clipboard.addElement( $(source)[0], trigger$[0] );',
'} );'))
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_01407
begin
--   Manifest
--     PAGE: 01407
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
 p_id=>1407
,p_name=>unistr('Reports - \5185\5BB9\884C')
,p_alias=>'CONTENT-ROW-REPORT'
,p_step_title=>unistr('\5185\5BB9\884C - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217699128490453906)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197214618651112579)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_source=>'<p><strong>Content Row</strong> is a Classic Report template that is suitable for displaying most types of content. This report features a column for selection such as a checkbox or radio button, an icon, title and description, miscellaneous attribut'
||'es, and actions.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197215083288112580)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197215549929112580)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197231252965112601)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2197256552923122837)
,p_name=>unistr('\6F14\793A')
,p_region_name=>'Demo1'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:t-Report--hideNoPagination'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  null item_classes,',
'  null selection,',
'  case t.status ',
'    when ''Open'' then ''fa fa-lg fa-exclamation-circle-o''',
'    when ''Closed'' then ''fa fa-lg fa-check-circle u-success-text''',
'    when ''On-Hold'' then ''fa fa-lg fa-minus-circle u-danger-text''',
'    when ''Pending'' then ''fa fa-lg fa-exclamation-triangle u-warning-text''',
'  end icon_class,',
'  null icon_html,',
'  t.task_name title,',
'  ''Project: '' || p.project description,',
'  t.status misc,',
'  null actions',
'from',
'  eba_ut_chart_tasks t,',
'  eba_ut_chart_projects p',
'where',
'  t.project = p.id',
'order by p.created'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(1780928678284621463)
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124214304273044)
,p_query_column_id=>1
,p_column_alias=>'ITEM_CLASSES'
,p_column_display_sequence=>1
,p_column_heading=>unistr('Item \7C7B')
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124243997273045)
,p_query_column_id=>2
,p_column_alias=>'SELECTION'
,p_column_display_sequence=>2
,p_column_heading=>'Selection'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124414282273046)
,p_query_column_id=>3
,p_column_alias=>'ICON_CLASS'
,p_column_display_sequence=>3
,p_column_heading=>'Icon Class'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124467935273047)
,p_query_column_id=>4
,p_column_alias=>'ICON_HTML'
,p_column_display_sequence=>4
,p_column_heading=>'Icon Html'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124560428273048)
,p_query_column_id=>5
,p_column_alias=>'TITLE'
,p_column_display_sequence=>5
,p_column_heading=>'Title'
,p_column_link=>'#'
,p_column_linktext=>'#TITLE#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124718281273049)
,p_query_column_id=>6
,p_column_alias=>'DESCRIPTION'
,p_column_display_sequence=>6
,p_column_heading=>'Description'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124765569273050)
,p_query_column_id=>7
,p_column_alias=>'MISC'
,p_column_display_sequence=>7
,p_column_heading=>'Misc'
,p_column_format=>'SINCE'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1761124855183273051)
,p_query_column_id=>8
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>8
,p_column_heading=>unistr('\64CD\4F5C')
,p_column_link=>'#'
,p_column_linktext=>'<span class="t-Icon fa fa-edit" aria-hidden="true"></span>Edit'
,p_column_link_attr=>'class="t-Button t-Button--icon t-Button--iconLeft t-Button--link"'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2197261926298122842)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2197268643922122848)
,p_name=>'Column Names'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned:t-Report--hideNoPagination'
,p_grid_column_span=>8
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''#ITEM_CLASSES#'' d, ''CSS Class-based modifiers for the content row item'' r from dual union all',
'select ''#SELECTION#'' d  , ''Use this to add a checkbox or radio button for selection'' r from dual union all',
'select ''#ICON_CLASS#'' d, ''Icon of the content row. Please prefix with "fa" when using Font APEX.'' r from dual union all',
'select ''#ICON_HTML#'' d, ''Use this to display custom HTML in place of the icon, for example an image tag.'' r from dual union all',
'select ''#TITLE#'' d, ''Title column, typically the link '' r from dual union all',
'select ''#DESCRIPTION#'' d, ''Description or text of the content'' r from dual union all',
'select ''#MISC#'' d, ''This displays adjacent actions column and can be used for showing user information or last updated date.'' r from dual union all',
'select ''#ACTIONS#'' d, ''Use this to display a button or other actions'' r from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153545015023065)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1217699158083453907)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>10
,p_column_heading=>'D'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1217699270625453908)
,p_query_column_id=>2
,p_column_alias=>'R'
,p_column_display_sequence=>20
,p_column_heading=>'R'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_01405
begin
--   Manifest
--     PAGE: 01405
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
 p_id=>1405
,p_name=>unistr('Reports - \5907\6CE8')
,p_alias=>'COMMENTS-REPORT'
,p_step_title=>unistr('\5907\6CE8 Report - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217698702139453902)
,p_plug_name=>unistr('\8BF4\660E')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.TEMPLATE_INSTRUCTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846864146033288690)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This report template is used to display user comments and status updates.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846864676794288691)
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
 p_id=>wwv_flow_imp.id(1846865230643288691)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(1846906480828315611)
,p_name=>unistr('\6F14\793A')
,p_region_name=>'Demo1'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>30
,p_region_sub_css_classes=>'dm-TemplateOption-previewTarget'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h1'
,p_component_template_options=>'#DEFAULT#:t-Comments--chat'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'  p.id,',
'  apex_string.get_initials(p.created_by) user_icon,',
'  p.created comment_date,',
'  lower(p.created_by) user_name,',
'  '' '' comment_text,',
unistr('  ''\5220\9664'' actions,'),
'  '' '' attribute_1,',
'  '' '' attribute_2,',
'  '' '' attribute_3,',
'  '' '' attribute_4,',
'  t.created task_created,',
'  t.created_by task_owner,',
'  t.task_name task_name,',
'  ''u-color-''||ora_hash(p.created_by,45) icon_modifier',
'from',
'  eba_ut_chart_tasks t,',
'  eba_ut_chart_projects p',
'where',
'  t.project = p.id',
'order by t.created'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2594807236067105544)
,p_query_num_rows=>6
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846906887120315611)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>1
,p_column_heading=>'Id'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846907236721315613)
,p_query_column_id=>2
,p_column_alias=>'USER_ICON'
,p_column_display_sequence=>2
,p_column_heading=>'User icon'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846907661465315613)
,p_query_column_id=>3
,p_column_alias=>'COMMENT_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Comment date'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846908129359315613)
,p_query_column_id=>4
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>4
,p_column_heading=>'User name'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846908455328315614)
,p_query_column_id=>5
,p_column_alias=>'COMMENT_TEXT'
,p_column_display_sequence=>5
,p_column_heading=>'Comment text'
,p_column_html_expression=>'#TASK_NAME# - #TASK_OWNER# (#TASK_CREATED#)'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846908843189315614)
,p_query_column_id=>6
,p_column_alias=>'ACTIONS'
,p_column_display_sequence=>6
,p_column_heading=>unistr('\64CD\4F5C')
,p_column_link=>'javascript:alert(''Implement delete for comment ID: '' + #ID#)'
,p_column_linktext=>'#ACTIONS#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846909289290315614)
,p_query_column_id=>7
,p_column_alias=>'ATTRIBUTE_1'
,p_column_display_sequence=>7
,p_column_heading=>'Attribute 1'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846909675708315615)
,p_query_column_id=>8
,p_column_alias=>'ATTRIBUTE_2'
,p_column_display_sequence=>8
,p_column_heading=>'Attribute 2'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846910108602315615)
,p_query_column_id=>9
,p_column_alias=>'ATTRIBUTE_3'
,p_column_display_sequence=>9
,p_column_heading=>'Attribute 3'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846910520770315615)
,p_query_column_id=>10
,p_column_alias=>'ATTRIBUTE_4'
,p_column_display_sequence=>10
,p_column_heading=>'Attribute 4'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846910928154315615)
,p_query_column_id=>11
,p_column_alias=>'TASK_CREATED'
,p_column_display_sequence=>11
,p_column_heading=>'Task created'
,p_column_format=>'SINCE'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846911247611315616)
,p_query_column_id=>12
,p_column_alias=>'TASK_OWNER'
,p_column_display_sequence=>12
,p_column_heading=>'Task owner'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846911685648315616)
,p_query_column_id=>13
,p_column_alias=>unistr('\4EFB\52A1\540D\79F0')
,p_column_display_sequence=>13
,p_column_heading=>unistr('\4EFB\52A1\540D\79F0')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1846912119780315616)
,p_query_column_id=>14
,p_column_alias=>'ICON_MODIFIER'
,p_column_display_sequence=>14
,p_column_heading=>'Icon modifier'
,p_column_html_expression=>'u-color #ICON_MODIFIER#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1846913093190315617)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.PREVIEW_TEMPLATE_OPTIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'REGION',
  'attribute_02', 'Demo1')).to_clob
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2345877830798926628)
,p_name=>'Substution Strings'
,p_template=>wwv_flow_imp.id(2303754088075183486)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_grid_column_span=>8
,p_grid_column_css_classes=>'col-sm-12'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''#COMMENT_MODIFIERS#'' d , ''CSS Class-based modifiers for a comment item'' r from dual union all',
'select ''#ICON_MODIFIER#'' d     , ''CSS Class-based modifiers for comment icon''   r from dual union all',
'select ''#USER_ICON#'' d         , ''CSS Class-based modifiers for user icon''      r from dual union all',
'select ''#USER_NAME#'' d         , ''User name''                                    r from dual union all',
'select ''#COMMENT_DATE#'' d      , ''Date of the comment''                          r from dual union all',
'select ''#ACTIONS#'' d           , ''Actions for the comment''                      r from dual union all',
'select ''#COMMENT_TEXT#'' d      , ''Text of the comment''                          r from dual union all',
'select ''#ATTRIBUTE_1#'' d       , ''Additional attribute 1''                       r from dual union all',
'select ''#ATTRIBUTE_2#'' d       , ''Additional attribute 2''                       r from dual union all',
'select ''#ATTRIBUTE_3#'' d       , ''Additional attribute 3''                       r from dual union all',
'select ''#ATTRIBUTE_4#'' d       , ''Additional attribute 4''                       r from dual'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2082153545015023065)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1217698808981453903)
,p_query_column_id=>1
,p_column_alias=>'D'
,p_column_display_sequence=>10
,p_column_heading=>'D'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(1217698881042453904)
,p_query_column_id=>2
,p_column_alias=>'R'
,p_column_display_sequence=>20
,p_column_heading=>'R'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3133113370527197741)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source_type=>'PLUGIN_COM.ORACLE.APEX.REGION_SOURCE_CODE'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'Demo1')).to_clob
);
wwv_flow_imp.component_end;
end;
/

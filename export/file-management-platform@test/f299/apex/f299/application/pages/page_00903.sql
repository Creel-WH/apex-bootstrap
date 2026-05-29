prompt --application/pages/page_00903
begin
--   Manifest
--     PAGE: 00903
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>2200408020639491
,p_default_application_id=>138
,p_default_id_offset=>33456347235422253
,p_default_owner=>'JASOLAR'
);
wwv_flow_imp_page.create_page(
 p_id=>903
,p_name=>unistr('\95EE\9898\622A\5C4F')
,p_alias=>unistr('\95EE\9898\622A\5C4F')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\95EE\9898\622A\5C4F')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(8030595363029337901)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'830'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8023802242266671491)
,p_plug_name=>unistr('\6587\672C\663E\793A')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793475704436686482)
,p_plug_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8362863984700595575)
,p_plug_name=>unistr('\95EE\9898\622A\5C4F')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793477160221686482)
,p_plug_display_sequence=>20
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'    FB_IMG_ID,',
'    MIME_TYPE,',
'    FB_IMG,',
'    FILE_NAME',
'from JAS_APP_FEEDBACK_IMG',
'where FB_ID =:P903_FB_ID'))
,p_plug_source_type=>'PLUGIN_COM.FOS.IMAGE_SLIDER'
,p_ajax_items_to_submit=>'P903_FB_ID'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'attribute_01', 'blob',
  'attribute_02', 'FB_IMG_ID',
  'attribute_03', 'FB_IMG',
  'attribute_04', 'MIME_TYPE',
  'attribute_05', 'FILE_NAME',
  'attribute_07', 'horizontal',
  'attribute_08', 'cover',
  'attribute_10', 'pagination:navigation:loop:fullscreen-support:navigation-hide-on-click:pagination-hide-on-click',
  'attribute_12', '1',
  'attribute_13', 'slide')).to_clob
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8362864177873595577)
,p_name=>'MIME_TYPE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>20
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8362864400708595579)
,p_name=>'FILE_NAME'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>40
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8362864595584595581)
,p_name=>'FB_IMG_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>50
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(8362864659957595582)
,p_name=>'FB_IMG'
,p_data_type=>'BLOB'
,p_session_state_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_display_sequence=>60
,p_use_as_row_header=>false
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8023801866845671487)
,p_name=>'P903_ENTRY_TEXT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8023802242266671491)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select p.page_name,p.page_id',
'from JAS_APP_FEEDBACK f',
'         left join apex_application_pages p on f.PAGE_ID = p.PAGE_ID',
'where p.application_id = :APP_ID',
'  and f.FB_ID = :P903_FB_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\529F\80FD\9875\9762\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9793612857214686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8023801886455671488)
,p_name=>'P903_DETAIL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(8023802242266671491)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select f.DETAIL from JAS_APP_FEEDBACK f',
'left join apex_application_list_entries e on e.list_entry_id = f.PAGE_ID',
'where f.FB_ID =:P903_FB_ID;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>unistr('\95EE\9898\63CF\8FF0\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_imp.id(9793612857214686547)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8362864499994595580)
,p_name=>'P903_FB_ID'
,p_item_sequence=>30
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp.component_end;
end;
/

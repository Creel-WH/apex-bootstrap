prompt --application/pages/page_00126
begin
--   Manifest
--     PAGE: 00126
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
 p_id=>126
,p_name=>unistr('\6587\4EF6\9884\89C8')
,p_alias=>unistr('\6587\4EF6\9884\89C8')
,p_step_title=>unistr('\6587\4EF6\9884\89C8')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(4232693165284257529)
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('$(''h1[class="t-Breadcrumb-label"]'').text($v(''P126_FOLDER_NAME'')+''(ID\FF1A''+$v(''P126_FOLDER_ID'')+'')'')'),
'',
'const url = ''https://jingobj.jasolar.com:26000/kkPreview?sourceUrl='' + encodeURIComponent($v(''P126_FOLDER_URL''))',
'    $(document).ready(function () {',
'        $(''#left-area'').append($(''#back_btn''))',
'        $(''#right-area'').append($(''#share_btn''))',
unistr('        // \4F7F\7528 .append() \5C06 iframe \6DFB\52A0\5230 id \4E3A "main" \7684\5143\7D20\4E0B'),
'        $(''#main'').append(`<iframe id=''iframe'' width="100%" height="100%" src="${url}"></iframe>`);',
'    });',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.hide_btn  {',
'    display: none;',
'}',
'',
'#fun-area {',
'    padding: 3px 50px;',
'    display: flex;',
'    justify-content: space-between;',
'    align-items: center;',
'}',
'#right-area {',
'    /* padding: 3px 50px; */',
'    display: flex;',
'    justify-content: flex-end;',
'    align-items: center;',
'}',
'',
'.info {',
'    margin-right: 10px;',
'}',
'',
'#request_btn,#read_btn {',
'    display: none;',
'}',
'',
'#share_btn {',
'    margin-left: 10px;',
'}',
'',
'.ui-dialog-titlebar-close {',
'    display: none;',
'}',
'.t-Footer{',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3791750189881031742)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(10249620856755239725)
,p_plug_display_sequence=>110
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(10249505214628239653)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(10249683292328239770)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4689365110787644541)
,p_plug_name=>unistr('\62A5\544A\5185\5BB9')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(10249618299648239724)
,p_plug_display_sequence=>100
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select FOLDER_ID,',
'       FOLDER_NAME,',
'       FOLDER_URL',
'from STS_FOLDER;'))
,p_is_editable=>false
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791749078313031731)
,p_name=>'P126_FOLDER_URL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_item_source_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_source=>'FOLDER_URL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(3791750247473031743)
,p_name=>'P126_FOLDER_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_item_source_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_source=>'FOLDER_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4689699900103088630)
,p_name=>'P126_FOLDER_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_item_source_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_source=>'FOLDER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(4689700483225088636)
,p_name=>'P126_REPORT_CAN_WATCH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(4689365110787644541)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(3792068903835460749)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(4689365110787644541)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('\521D\59CB\5316\8868\5355 \62A5\544A\8BE6\60C5\67E5\770B')
,p_internal_uid=>463397784557561254
);
wwv_flow_imp.component_end;
end;
/

prompt --application/pages/page_01913
begin
--   Manifest
--     PAGE: 01913
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
 p_id=>1913
,p_name=>unistr('Modal Dialog \6F14\793A - Fixed Size')
,p_alias=>'MODAL-DIALOG-DEMO-FIXED-SIZE'
,p_page_mode=>'MODAL'
,p_step_title=>'Fixed Height Modal Dialog'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'400'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5465782794047253797)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-expanded:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>This modal dialog has a fixed height of 400px and will not automatically resize to fit its contents.  This type of dialog is useful for wizards where the navigation buttons should remain in a constant position.</p>',
'<p>To set a height for a modal dialog page, simply set the "Height" property for the page in the Property Editor.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

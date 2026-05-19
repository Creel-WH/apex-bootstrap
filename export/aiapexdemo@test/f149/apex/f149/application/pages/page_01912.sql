prompt --application/pages/page_01912
begin
--   Manifest
--     PAGE: 01912
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
 p_id=>1912
,p_name=>unistr('Modal Dialog \6F14\793A')
,p_alias=>'MODAL-DIALOG-DEMO'
,p_page_mode=>'MODAL'
,p_step_title=>'Auto Sizing Modal Dialog'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3446270088783155324)
,p_plug_name=>unistr('\53EF\6298\53E0\533A\57DF')
,p_region_template_options=>'#DEFAULT#:js-useLocalStorage:is-collapsed:t-Region--scrollBody:margin-top-md'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<ul>',
'  <li>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Veniam dolorum velit eos illum, voluptatem repellat animi dolores! Tempora fugit natus, odio vitae fuga amet commodi, architecto eaque aperiam hic! Illo!</li>',
'  <li>Quidem dolorem totam consectetur, quis esse sequi non in praesentium illum fugit, provident voluptate perspiciatis voluptas a natus magnam sed accusamus omnis? Reiciendis dignissimos doloremque rem blanditiis. Reprehenderit, facere, velit!</li>',
'  <li>Harum, modi eum suscipit numquam, molestiae laudantium. Ratione enim maiores placeat consequatur sed quam repellat, corporis ducimus magnam, aspernatur quas iusto reprehenderit assumenda ut architecto vel nostrum consequuntur velit sit.</li>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3446270819328155331)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>'<p>This dialog will automatically expand to fit its contents.  Try it out by by expanding the region below.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

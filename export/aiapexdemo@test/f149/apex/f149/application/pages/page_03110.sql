prompt --application/pages/page_03110
begin
--   Manifest
--     PAGE: 03110
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
 p_id=>3110
,p_name=>unistr('\5361\7247\533A\57DF')
,p_alias=>'CARD-REGIONS'
,p_step_title=>unistr('\5361\7247\533A\57DF')
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>'.te_padding {padding: 8px 0px 8px 8px;}'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1217698517984453900)
,p_plug_name=>unistr('\6F14\793A')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228120990749524362)
,p_plug_name=>unistr('With \5168\90E8 Attributes, \6309\94AE and Pagination')
,p_parent_plug_id=>wwv_flow_imp.id(1217698517984453900)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5103842520085961207)
,p_plug_name=>unistr('\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(5228120990749524362)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleC'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       category,',
'       title,',
'       subtitle,',
unistr('       substr(body,1,100)||''\2026'' as agenda,'),
'       secondary_body as speakers,',
'       icon_class,',
'       badge,',
'       ''#APP_FILES#'' || image_url as image,',
'       to_char(start_date, ''fmDDfm Month YYYY fmHHfm:MI PM'') || '' - '' || to_char(end_date, ''fmHHfm:MI PM'') as event_date',
'  from eba_ut_demo_cards',
' where category = ''conference''',
'   and id >= 4'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows=>2
,p_plug_query_num_rows_type=>'SET'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2191744821710132904)
,p_region_id=>wwv_flow_imp.id(5103842520085961207)
,p_layout_type=>'GRID'
,p_grid_column_count=>2
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'AGENDA'
,p_second_body_adv_formatting=>false
,p_second_body_column_name=>'EVENT_DATE'
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_CLASS'
,p_icon_css_classes=>'fa'
,p_icon_position=>'START'
,p_badge_column_name=>'BADGE'
,p_badge_label=>'Fee:'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&IMAGE.'
,p_media_display_position=>'BODY'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_media_description=>'&TITLE.'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2191745280632132905)
,p_card_id=>wwv_flow_imp.id(2191744821710132904)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>unistr('\8BE6\60C5')
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2191745858086132907)
,p_card_id=>wwv_flow_imp.id(2191744821710132904)
,p_action_type=>'BUTTON'
,p_position=>'SECONDARY'
,p_display_sequence=>20
,p_label=>'Favorite'
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_button_display_type=>'ICON'
,p_icon_css_classes=>'fa-heart-o'
,p_is_hot=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228122897600524381)
,p_plug_name=>unistr('\914D\7F6E')
,p_parent_plug_id=>wwv_flow_imp.id(5228120990749524362)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Region</h4>',
'<b>Type</b>: Cards<br>',
'<b>Grid Columns</b>: 2<br>',
'<b>Pagination</b>: enabled with 2 entries.<br>',
'<br>',
'<h4>Card Attributes</h4>',
'Top area has an <i>icon class, title, subtitle</i> and <i>badge</i> information.',
'Below the media is a paragraph as the <i>body</i> and a small timestamp as <i>secondary body</i>.<br>',
'<br>',
'<h4>Media</h4>',
'<b>Source</b>: Image URL<br>',
'<b>Position</b>: Body<br>',
'<b>Appearance</b>: Auto<br>',
'<b>Sizing</b>: Cover<br>',
'<br>',
'<h4>Actions</h4>',
'<ol>',
'<li>Button in Primary position that opens a modal page.</li>',
'<li>Button in Secondary position, only icon.</li>',
'</ol>',
'<br>',
'<h4>Live Template Options</h4>',
'<b>Style</b>: C'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228121113077524363)
,p_plug_name=>'With Backgrounds'
,p_parent_plug_id=>wwv_flow_imp.id(1217698517984453900)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5223810622496826558)
,p_plug_name=>unistr('\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(5228121113077524363)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleA'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       category,',
'       title,',
'       subtitle,',
unistr('       substr(body,1,100)||''\2026'' as agenda,'),
'       secondary_body as speakers,',
'       icon_class,',
'       badge,',
'       ''#APP_FILES#'' || image_url as image,',
'       to_char(start_date, ''fmDDfm Month YYYY fmHHfm:MI PM'') || '' - '' || to_char(end_date, ''fmHHfm:MI PM'') as event_date',
'  from eba_ut_demo_cards',
' where category = ''conference''',
'   and id >= 4'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2191747401091132909)
,p_region_id=>wwv_flow_imp.id(5223810622496826558)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITLE'
,p_body_adv_formatting=>false
,p_body_column_name=>'AGENDA'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_CLASS'
,p_icon_css_classes=>'fa'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
,p_media_source_type=>'STATIC_URL'
,p_media_url=>'&IMAGE.'
,p_media_display_position=>'BACKGROUND'
,p_media_sizing=>'COVER'
,p_media_description=>'&TITLE.'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2191747895943132909)
,p_card_id=>wwv_flow_imp.id(2191747401091132909)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>20
,p_label=>unistr('\8BE6\60C5')
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228123007026524382)
,p_plug_name=>unistr('\914D\7F6E')
,p_parent_plug_id=>wwv_flow_imp.id(5228121113077524363)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Region</h4>',
'<b>Type</b>: Cards<br>',
'<b>Grid Columns</b>: 3<br>',
'<b>Pagination</b>: scroll (default)<br>',
'<br>',
'<h4>Card Attributes</h4>',
'Top area has an <i>icon class, title, subtitle</i> and <i>badge</i> information.',
'Media is set as background, on top is a paragraph as the <i>body</i> with no <i>secondary body</i>.<br>',
'<br>',
'<h4>Media</h4>',
'<b>Source</b>: Image URL<br>',
'<b>Position</b>: As Background Image<br>',
'<b>Appearance</b>: Auto<br>',
'<b>Sizing</b>: Cover<br>',
'<br>',
'<h4>Actions</h4>',
'<ol>',
'<li>Button in Primary position that opens a modal page.</li>',
'</ol>',
'<br>',
'<h4>Live Template Options</h4>',
'<b>Style</b>: A'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228121448740524366)
,p_plug_name=>unistr('With \56FE\7247 First')
,p_parent_plug_id=>wwv_flow_imp.id(1217698517984453900)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5223810825112826560)
,p_plug_name=>unistr('\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(5228121448740524366)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       category,',
'       title,',
'       subtitle,',
unistr('       substr(body,1,100)||''\2026'' as agenda,'),
'       secondary_body as speakers,',
'       icon_class,',
'       badge,',
'       ''#APP_FILES#'' || image_url as image,',
'       to_char(start_date, ''fmDDfm Month YYYY fmHHfm:MI PM'') as start_date,',
'       to_char(end_date, ''fmHHfm:MI PM'') as end_date',
'  from eba_ut_demo_cards',
' where category = ''workshop''',
'   and id < 10'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2191749432114132911)
,p_region_id=>wwv_flow_imp.id(5223810825112826560)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'AGENDA'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_CLASS'
,p_icon_css_classes=>'fa'
,p_icon_position=>'START'
,p_badge_column_name=>'BADGE'
,p_badge_label=>'Fee:'
,p_media_adv_formatting=>false
,p_media_source_type=>'DYNAMIC_URL'
,p_media_url_column_name=>'IMAGE'
,p_media_display_position=>'FIRST'
,p_media_appearance=>'WIDESCREEN'
,p_media_sizing=>'COVER'
,p_media_description=>'&TITLE.'
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228123297913524385)
,p_plug_name=>unistr('\914D\7F6E')
,p_parent_plug_id=>wwv_flow_imp.id(5228121448740524366)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Region</h4>',
'<b>Type</b>: Cards<br>',
'<b>Grid Columns</b>: 3<br>',
'<b>Pagination</b>: scroll (default)<br>',
'<br>',
'<h4>Card Attributes</h4>',
'From top to bottom there is an <i>image, icon, title, subtitle, badge</i> and <i>body</i> information.<br>',
'<br>',
'<h4>Media</h4>',
'<b>Source</b>: URL Column<br>',
'<b>Position</b>: First<br>',
'<b>Appearance</b>: Widescreen<br>',
'<b>Sizing</b>: Cover<br>',
'<br>',
'<h4>Actions</h4>',
'<ol>',
'<li>Entire Card as a link.</li>',
'</ol>',
'<br>',
'<h4>Live Template Options</h4>',
'<b>Style</b>: B'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228121643106524368)
,p_plug_name=>unistr('With \7F51\683C\5E03\5C40')
,p_parent_plug_id=>wwv_flow_imp.id(1217698517984453900)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228120781171524360)
,p_plug_name=>unistr('\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(5228121643106524368)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       category,',
'       title,',
'       subtitle,',
unistr('       substr(body,1,100)||''\2026'' as agenda,'),
'       secondary_body as speakers,',
'       icon_class,',
'       badge,',
'       ''#APP_FILES#'' || image_url as image,',
'       to_char(start_date, ''fmDDfm Month YYYY fmHHfm:MI PM'') as start_date,',
'       to_char(end_date, ''fmHHfm:MI PM'') as end_date',
'  from eba_ut_demo_cards',
' where category = ''workshop''',
'   and id >= 9'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2191750744092132912)
,p_region_id=>wwv_flow_imp.id(5228120781171524360)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_sub_title_column_name=>'SUBTITLE'
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'ICON_CLASS'
,p_icon_css_classes=>'fa'
,p_icon_position=>'TOP'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2191751239377132912)
,p_card_id=>wwv_flow_imp.id(2191750744092132912)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228123403741524386)
,p_plug_name=>unistr('\914D\7F6E')
,p_parent_plug_id=>wwv_flow_imp.id(5228121643106524368)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Region</h4>',
'<b>Type</b>: Cards<br>',
'<b>Grid Columns</b>: Auto<br>',
'<b>Pagination</b>: scroll (default)<br>',
'<br>',
'<h4>Card Attributes</h4>',
'From top to bottom there is an <i>icon, title</i> and <i>subtitle</i>. No Media.<br>',
'<br>',
'<h4>Icon</h4>',
'<b>Source</b>: Icon Class Column<br>',
'<b>Position</b>: Top<br>',
'<br>',
'<h4>Actions</h4>',
'<ol>',
'<li>Entire Card as a link.</li>',
'</ol>',
'<br>',
'<h4>Live Template Options</h4>',
'<b>Style</b>: B',
'<b>Label Alignment</b>: Right'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228122201685524374)
,p_plug_name=>'With Badges'
,p_parent_plug_id=>wwv_flow_imp.id(1217698517984453900)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h3:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228122450261524376)
,p_plug_name=>unistr('\5361\7247')
,p_parent_plug_id=>wwv_flow_imp.id(5228122201685524374)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--styleB'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2054362936031481055)
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select id,',
'       category,',
'       title,',
'       subtitle,',
'       body,',
'       secondary_body,',
'       icon_class,',
'       ''badge'' badge,',
'       ''#APP_FILES#'' || image_url as image,',
'       to_char(start_date, ''fmDDfm Month YYYY fmHHfm:MI PM'') as start_date,',
'       to_char(end_date, ''fmHHfm:MI PM'') as end_date',
'  from eba_ut_demo_cards',
' where category = ''badge'';'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(2191752832533132914)
,p_region_id=>wwv_flow_imp.id(5228122450261524376)
,p_layout_type=>'GRID'
,p_grid_column_count=>3
,p_title_adv_formatting=>false
,p_title_column_name=>'TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'URL'
,p_icon_image_url=>'&IMAGE.'
,p_icon_position=>'START'
,p_icon_description=>'&TITLE.'
,p_badge_column_name=>'SUBTITLE'
,p_media_adv_formatting=>false
,p_pk1_column_name=>'ID'
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(2191753333151132914)
,p_card_id=>wwv_flow_imp.id(2191752832533132914)
,p_action_type=>'FULL_CARD'
,p_display_sequence=>10
,p_link_target_type=>'REDIRECT_URL'
,p_link_target=>'#'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5228123091330524383)
,p_plug_name=>unistr('\914D\7F6E')
,p_parent_plug_id=>wwv_flow_imp.id(5228122201685524374)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<h4>Region</h4>',
'<b>Type</b>: Cards<br>',
'<b>Grid Columns</b>: 3<br>',
'<b>Pagination</b>: scroll (default)<br>',
'<br>',
'<h4>Card Attributes</h4>',
'From top to bottom there is an <i>icon with image URL, title, subtitle</i> and <i>body</i> information.',
'Media is not set.<br>',
'<br>',
'<h4>Icon</h4>',
'<b>Source</b>: Image URL<br>',
'<b>Position</b>: Start<br>',
'<br>',
'<h4>Actions</h4>',
'<ol>',
'<li>Entire Card as a link.</li>',
'</ol>',
'<br>',
'<h4>Live Template Options</h4>',
'<b>Style</b>: B'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2191754870249132918)
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
 p_id=>wwv_flow_imp.id(7707781561925427483)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Cards Regions are useful for presenting a variety of information in small blocks and can be heavily customized. They can be displayed in three styles, with icons or initials, images as part of the body or as the background, to enhance each card pr'
||'esentation and you can control the layout.</p>',
'<p>Actions can be added to each card''s image, title, subtitle, as new buttons or even using the entire card to enhance user experience.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7707998957828782299)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8994286031971731665)
,p_plug_name=>unistr('\793A\4F8B SQL \67E5\8BE2')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:t-ContentBlock--lightBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<pre class="dm-Code lang-sql te_padding"><code>select',
'  -- data',
'  card_primary_key,    -- primary key',
'  card_secondary_key,  -- secondary key if needed',
'  card_title,          -- title',
'  card_subtitle,       -- subtitle',
'  card_body,           -- card body text',
'  card_secondary_body, -- card secondary text, positioned near bottom',
'',
'  -- ui and other attributes',
'  card_icon,           -- icon class, e.g. fa-cloud',
'  card_badge,          -- badge, can be a small text',
'  card_image           -- image url, url or blob columns',
'from dual</code></pre>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

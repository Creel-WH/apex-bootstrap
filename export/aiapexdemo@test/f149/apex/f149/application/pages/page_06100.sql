prompt --application/pages/page_06100
begin
--   Manifest
--     PAGE: 06100
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
 p_id=>6100
,p_name=>unistr('\6309\94AE\6784\5EFA\5668')
,p_alias=>'BUTTON-BUILDER'
,p_step_title=>unistr('\6309\94AE\6784\5EFA\5668 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(2144306959769755264)
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APP_FILES#demo/icons#MIN#.js',
'#APP_FILES#demo/iconSearch#MIN#.js',
'#APP_FILES#demo/buttonBuilder#MIN#.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var detached;',
'',
'var returnIcon = function (cl) {',
'    $s(''P6100_ICON_CLASS'', cl);',
'    apex.jQuery(''#icon_picker_dialog'').dialog(''close'');',
'};'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'(function($){',
'   apex.theme42demo.renderButtons();',
'',
'    $(".icon-preview").stickyWidget({toggleWidth: true});',
'',
'    // for icon dialogs',
'    $(''#icons'').on( "dialogclose", function( event, ui ) {',
'        $(''#icons-wrapper'').remove();',
'    });',
'',
'    $("#P6100_SEARCH").on("keyup",function(){',
'        apex.theme42demo.renderIcons({debounce: 250, filterString: this.value});',
'    }); ',
'})(apex.jQuery);'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.event-name { background: rgba(147, 180, 197, 0.25); padding: 6px 8px; border-radius: 3px; text-shadow: 1px 1px #fff; }',
'.event-name:hover { color: #000; background: #eee }',
'.is-hidden { display: none; }',
'.icon-preview { height: 128px; display: flex; align-items: center; justify-content: center; background: #FFF; border-radius: 2px; box-shadow: 0 1px 1px rgba(0, 0, 0, .05), 0 0 0 1px rgba(0, 0, 0, 0.1) inset; }',
'.instructions { font-size: 11px; line-height: 16px; color: #767676; display: block; margin: 0; }',
'.dm-IconDialog-info.row { margin-left: 0; margin-right: 0; }',
'.button-instructions { margin-top: 12px; }',
'.icon-preview button { transition: all .2s ease }',
'body .ui-widget-content a { color: inherit; }',
'.dm-Search-category:first-child { margin-top: 0; }',
'#icon_picker { max-height: 400px; overflow: auto; }',
'#icon_picker .dm-Search-title { font-size: 1.6rem }',
'.highlight { background-color: #ffef9a; padding: 2px 0; box-shadow: 0 0 0 1px rgba(0, 0, 0, 0.05) inset, 0 1px 1px -1px rgba(0, 0, 0, 0.1); border-radius: 2px; transition: .1s ease; }',
'p.instructions { margin-top: 4px; margin-bottom: 16px; }',
'.dm-IconDialog-info code { background: var(--ut-component-badge-background-color); color: var(--ut-component-badge-text-color); display: block; padding: 0.5rem; overflow: hidden; white-space: normal; font-size: .6875rem; }',
'.dm-Search:empty:before { content: ''No Results''; font-size: 14px; text-align: left; padding: 16px 0; opacity: .5; display: block; }',
'.u-RTL .dm-Search:empty:before { text-align: right; }',
'#P4000_SIZE.apex-item-group--rc { margin: 0; }',
'.dm-Search-category { display: block; background: var(--ut-component-background-color); color: var(--ut-component-text-color); box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05); border: 1px solid rgba(0, 0, 0, 0.075); border-radius: 2px; padding: 16px; margi'
||'n-bottom: 16px; }',
'.dm-Search-title { text-transform: capitalize; margin-bottom: 0; padding: 8px; font-weight: var(--a-base-font-weight-semibold, 500); }',
'.dm-Search-list { list-style: none; margin: 0; padding: 0; clear: both; overflow: hidden; }',
'.dm-Search-list li { width: 25%; float: left; }',
'.u-RTL .dm-Search-list li { float: right; }',
'@media (max-width:767px) {',
'  .dm-Search-list li { width: 33.33%; }',
'}',
'@media (max-width:639px) {',
'  .dm-Search-list li { width: 50%; }',
'}',
'.dm-Search-result { display: block; color: var(--ut-component-text-subtitle-color); padding: 4px; cursor: pointer; border-radius: 2px; overflow: hidden; }',
'.dm-Search-result:focus { outline: none; box-shadow: 0 0 0 1px var(--ut-palette-primary, #0572CE) inset; background-color: var(--ut-component-background-color); color: var(--ut-component-text-color); }',
'.dm-Search-result:hover { background-color: var(--ut-component-background-color); color: var(--ut-component-text-color); box-shadow: 0 0 0 1px var(--ut-palette-primary, #0572CE) inset, var(--ut-shadow-sm); }',
'.dm-Search-icon { float: left; padding: 8px 0 8px 8px; }',
'.u-RTL .dm-Search-icon { float: right; padding: 8px 8px 8px 0; }',
'.dm-Search-icon .t-Icon { transform-origin: left; vertical-align: top; line-height: 24px; }',
'.u-RTL .dm-Search-icon .t-Icon { transform-origin: right; }',
'.dm-Search-info { overflow: hidden; padding: 8px; }',
'.dm-Search-class { font-size: 14px; line-height: 24px; display: block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; }'))
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2126866656753406037)
,p_plug_name=>'Preview'
,p_region_css_classes=>'icon-preview'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<button type="button" id="TEXT_ONLY" class="t-Button">My Button</button>',
'',
'<button class="t-Button t-Button--noLabel t-Button--icon" type="button" id="ICON_ONLY" title="Icon Only" aria-label="Icon Only"><span class="t-Icon " aria-hidden="true"></span></button>',
'',
'<button class="t-Button t-Button--icon t-Button--iconLeft" type="button" id="TEXT_W_ICON"><span class="t-Icon t-Icon--left " aria-hidden="true"></span>My Button<span class="t-Icon t-Icon--right " aria-hidden="true"></span></button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2494224133647366088)
,p_plug_name=>unistr('Usage \8BF4\660E')
,p_region_css_classes=>'button-instructions'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>30
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Use this page to build buttons for use in your reports. Simply specify a column as a <strong>Link</strong> and then enter the following properties for Link Text and Link Attributes.</p>',
'<div class="dm-IconDialog-info row">',
'    <span class="dm-IconDialog-infoTitle col col-3">Link Text</span>',
'    <div class="dm-IconDialog-infoBody col col-9">',
'        <code id="button_code_link_text"></code>',
'        <p class="instructions">Enter this in the Link Text property for a Link Column in your report.</p>',
'    </div>',
'</div>',
'<div class="dm-IconDialog-info row">',
'    <span class="dm-IconDialog-infoTitle col col-3">Link Attributes</span>',
'    <div class="dm-IconDialog-infoBody col col-9">',
'        <code id="button_code_link_attr"></code>',
'        <p class="instructions">Enter these attributes in the Link Attributes property for a Link Column in your report.</p>',
'    </div>',
'</div>',
'<div class="dm-IconDialog-info row">',
'    <span class="dm-IconDialog-infoTitle col col-3">Entire Markup</span>',
'    <div class="dm-IconDialog-infoBody col col-9">',
'        <code id="button_code_whole"></code>',
'        <p class="instructions">Full HTML markup.</p>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2840504087769600292)
,p_plug_name=>'Builder'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>40
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2126867473826406045)
,p_plug_name=>'Appearance'
,p_parent_plug_id=>wwv_flow_imp.id(2840504087769600292)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2126867558669406046)
,p_plug_name=>unistr('\6A21\677F\9009\9879')
,p_parent_plug_id=>wwv_flow_imp.id(2840504087769600292)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(4053997356862400624)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2144715502805118535)
,p_plug_name=>'Advanced'
,p_parent_plug_id=>wwv_flow_imp.id(2126867558669406046)
,p_region_template_options=>'#DEFAULT#:is-collapsed:t-Region--noUI:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2645973315964689028)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p class="instructions">Spacing options provide a way to manage whitespace around the buttons. These are especially useful when buttons are placed adjacent to one another, or next to other components.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2857745159263055518)
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
 p_id=>wwv_flow_imp.id(5077118020488656828)
,p_plug_name=>'Icon Picker'
,p_region_name=>'icon_picker_dialog'
,p_region_template_options=>'#DEFAULT#:js-dialog-size720x480'
,p_plug_template=>wwv_flow_imp.id(2654312167222878074)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_04'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2196826484136030621)
,p_plug_name=>unistr('\56FE\6807')
,p_region_name=>'icons'
,p_parent_plug_id=>wwv_flow_imp.id(5077118020488656828)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2546827196663081008)
,p_plug_name=>unistr('\641C\7D22')
,p_parent_plug_id=>wwv_flow_imp.id(5077118020488656828)
,p_region_template_options=>'#DEFAULT#:t-Form--stretchInputs'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126866859322406039)
,p_name=>'P6100_HOT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2126867473826406045)
,p_item_default=>'default'
,p_prompt=>'Hot'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;t-Button--hot,No;default'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126866967868406040)
,p_name=>'P6100_BUTTON_TEMPLATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2126867473826406045)
,p_item_default=>'TEXT_ONLY'
,p_prompt=>unistr('\6309\94AE Template')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Text;TEXT_ONLY,Text with Icon;TEXT_W_ICON,Icon;ICON_ONLY'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '3',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867109451406041)
,p_name=>'P6100_SIZE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2126867558669406046)
,p_item_default=>'default'
,p_prompt=>'Size'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Tiny;t-Button--tiny,Small;t-Button--small,Default;default,Large;t-Button--large'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867224851406042)
,p_name=>'P6100_STYLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2126867558669406046)
,p_item_default=>'default'
,p_prompt=>unistr('\6837\5F0F')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Default;default,Simple;t-Button--simple,Remove UI Decorations;t-Button--noUI,Display as Link;t-Button--link'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '4',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867332988406043)
,p_name=>'P6100_ICON_CLASS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2126867473826406045)
,p_item_default=>'fa-check-circle'
,p_prompt=>'Icon Class'
,p_post_element_text=>'<button id="open_dialog" type="button" class="t-Button t-Button--small t-Button--pillEnd" title="Icon Picker"><span aria-hidden="true" class="t-Icon fa fa-chevron-up"></span></button>'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867406928406044)
,p_name=>'P6100_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2126867558669406046)
,p_item_default=>'default'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Normal;default,Primary;t-Button--primary,Warning;t-Button--warning,Danger;t-Button--danger,Success;t-Button--success'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867692126406047)
,p_name=>'P6100_BUTTON_SET'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>unistr('\6309\94AE Set')
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Default;default,First Button;t-Button--pillStart,Inner Button;t-Button--pill,Last Button;t-Button--pillEnd'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_help_text=>unistr('Use these options if you would like to arrange multiple buttons into a pill or button set. You can then set the first button of the set to "First \6309\94AE" and the last button to "Last \6309\94AE." Any buttons in the middle can be set to "Inner \6309\94AE."')
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867794800406048)
,p_name=>'P6100_WIDTH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>'Width'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Auto - Default;default,Stretch;t-Button--stretch'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867932499406049)
,p_name=>'P6100_SPACING_LEFT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>'Spacing Left'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;t-Button--padleft,Default;default,Large;t-Button--gapLeft'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126867973153406050)
,p_name=>'P6100_SPACING_RIGHT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>'Spacing Right'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;t-Button--padRight,Default;default,Large;t-Button--gapRight'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126868071804406051)
,p_name=>'P6100_SPACING_TOP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>'Spacing Top'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;t-Button--padTop,Default;default,Large;t-Button--gapTop'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126868225396406052)
,p_name=>'P6100_SPACING_BOTTOM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2144715502805118535)
,p_item_default=>'default'
,p_prompt=>'Spacing Bottom'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Small;t-Button--padBottom,Default;default,Large;t-Button--gapBottom'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#::'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '6',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2126869147815406062)
,p_name=>'P6100_ICON_POSITION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2126867558669406046)
,p_item_default=>'t-Button--iconLeft'
,p_prompt=>'Icon Position'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Left;t-Button--iconLeft,Right;t-Button--iconRight'
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_of_columns', '2',
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2187409901340524522)
,p_name=>'P6100_BUTTON_LABEL'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2126867473826406045)
,p_item_default=>'My Button'
,p_prompt=>unistr('\6309\94AE Label')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_grid_label_column_span=>3
,p_field_template=>wwv_flow_imp.id(2300239435409147842)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2196947887574845614)
,p_name=>'P6100_SEARCH'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2546827196663081008)
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\641C\7D22 \56FE\6807')
,p_placeholder=>'Search Font APEX Icons...'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_grid_label_column_span=>0
,p_field_template=>wwv_flow_imp.id(2022424327484700817)
,p_item_icon_css_classes=>'fa-search'
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2126868602306406056)
,p_name=>unistr('Render \6309\94AE')
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6100_BUTTON_TEMPLATE ,P6100_SIZE ,P6100_BUTTON_SET ,P6100_HOT ,P6100_TYPE ,P6100_WIDTH ,P6100_STYLE ,P6100_SPACING_LEFT ,P6100_ICON_CLASS ,P6100_SPACING_RIGHT ,P6100_SPACING_TOP ,P6100_SPACING_BOTTOM,P6100_ICON_POSITION,P6100_BUTTON_LABEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2126868699707406057)
,p_event_id=>wwv_flow_imp.id(2126868602306406056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.theme42demo.renderButtons();'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2187410029774524523)
,p_name=>'Populate Link Text'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P6100_BUTTON_LABEL'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187410054749524524)
,p_event_id=>wwv_flow_imp.id(2187410029774524523)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var $j = apex.jQuery,',
'    v = $j(this.triggeringElement).val();',
'$j(''.icon-preview .t-Button'').first().text(v);',
'$j(''.icon-preview .t-Button'').last().contents().filter(function(){ ',
'  return this.nodeType == 3; ',
'})[0].nodeValue = v',
'$j(''#button_code_link_text'').text(v);',
'apex.theme42demo.renderButtons();'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2196826118459030617)
,p_name=>'Show Icon Dialog'
,p_event_sequence=>30
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'#open_dialog'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2196826372788030620)
,p_event_id=>wwv_flow_imp.id(2196826118459030617)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.jQuery(''#icon_picker_dialog'').dialog(''open'');',
'apex.theme42demo.renderIcons({filterString: $v(''P6100_SEARCH'')});'))
);
wwv_flow_imp.component_end;
end;
/

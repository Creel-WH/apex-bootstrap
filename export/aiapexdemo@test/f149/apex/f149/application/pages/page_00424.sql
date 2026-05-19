prompt --application/pages/page_00424
begin
--   Manifest
--     PAGE: 00424
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
 p_id=>424
,p_name=>unistr('\89E6\6478\624B\52BF')
,p_alias=>'TOUCH-GESTURES'
,p_step_title=>unistr('\89E6\6478\624B\52BF')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1988934022267168693)
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.touch-region {',
'  -webkit-user-select: none;',
'     -moz-user-select: none;',
'      -ms-user-select: none;',
'          user-select: none; }',
'',
'.touch-region .anim-icon {',
'  height: 8rem;',
'  border-radius: var(--ut-comonent-border-radius, 0.125rem);',
'  background-color: rgba(255, 239, 94, 0.25);',
'  box-shadow: 0 0 0 1px var(--ut-comonent-border-color, rgba(0, 0, 0, 0.05)) inset;',
'  width: 100%;',
'  display: flex;',
'  align-items: center;',
'  justify-content: center;',
'  flex-direction: column;',
'  position: relative;',
'  overflow: hidden; }',
'',
'.js-event-icon {',
'  width: 3rem;',
'  height: 3rem;',
'  line-height: 3rem;',
'  text-align: center;',
'  border-radius: 100%;',
'  background-color: var(--ut-palette-primary, #3170C8);',
'  color: var(--ut-palette-primary-contrast, #FFF);',
'  transition: .2s transform ease; }',
'',
'.js-event-text {',
'  font-family: monospace; }',
'',
'.touch-region.is-active .anim-icon .fa {',
'  -webkit-animation: touch-active .5s forwards ease;',
'          animation: touch-active .5s forwards ease; }',
'',
'@-webkit-keyframes touch-active {',
'  0% {',
'    transform: scale(1) rotate(0deg); }',
'  10% {',
'    transform: scale(0.85) rotate(50deg); }',
'  50% {',
'    transform: scale(1.5) rotate(90deg); }',
'  100% {',
'    transform: scale(1) rotate(0deg); } }',
'',
'@keyframes touch-active {',
'  0% {',
'    transform: scale(1) rotate(0deg); }',
'  10% {',
'    transform: scale(0.85) rotate(50deg); }',
'  50% {',
'    transform: scale(1.5) rotate(90deg); }',
'  100% {',
'    transform: scale(1) rotate(0deg); } }'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page dm-Page--center'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220953840414954536)
,p_plug_name=>'Press'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954014020954537)
,p_plug_name=>unistr('\89E6\6478\533A\57DF')
,p_region_name=>'press_region'
,p_parent_plug_id=>wwv_flow_imp.id(2220953840414954536)
,p_region_css_classes=>'touch-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="anim-icon">',
'<span class="fa fa-hand-pointer-o fa-lg js-event-icon" aria-hidden="true"></span> <span class="js-event-text">Press me!</span>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954107461954538)
,p_plug_name=>unistr('\8BE6\60C5')
,p_parent_plug_id=>wwv_flow_imp.id(2220953840414954536)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><b>Notable <code>press</code> event data</b></p>',
'<ul>',
'  <li><code>this.data.pointerType</code> type of pointer (mouse or touch)</li>',
'</ul>',
'<p>Note: <code>press</code> events can also be triggered by clicking and holding</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954220351954539)
,p_plug_name=>'Swipe'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954241245954540)
,p_plug_name=>unistr('\89E6\6478\533A\57DF')
,p_region_name=>'swipe_region'
,p_parent_plug_id=>wwv_flow_imp.id(2220954220351954539)
,p_region_css_classes=>'touch-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="anim-icon">',
'<span class="fa fa-hand-pointer-o fa-lg js-event-icon" aria-hidden="true"></span> <span class="js-event-text">Swipe me!</span>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954358173954541)
,p_plug_name=>unistr('\8BE6\60C5')
,p_parent_plug_id=>wwv_flow_imp.id(2220954220351954539)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><b>Notable <code>swipe</code> event data</b></p>',
'<ul>',
'  <li><code>this.data.offsetDirection</code> swipe direction (2 left, 4 right)</li>',
'  <li><code>this.data.distance</code> distance of the swipe gesture</li>',
'  <li><code>this.data.pointerType</code> type of pointer (mouse or touch)</li>',
'</ul>',
'<p>Note: <code>swipe</code> events can also be triggered by clicking and quickly moving the cursor to the right or left</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954533531954542)
,p_plug_name=>'Pan'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954559106954543)
,p_plug_name=>unistr('\89E6\6478\533A\57DF')
,p_region_name=>'pan_region'
,p_parent_plug_id=>wwv_flow_imp.id(2220954533531954542)
,p_region_css_classes=>'touch-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="anim-icon">',
'<span class="fa fa-hand-pointer-o fa-lg js-event-icon" aria-hidden="true"></span> <span class="js-event-text">Pan me!</span>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2220954664035954544)
,p_plug_name=>unistr('\8BE6\60C5')
,p_parent_plug_id=>wwv_flow_imp.id(2220954533531954542)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><b>Notable <code>pan</code> event data</b></p>',
'<ul>',
'  <li><code>this.data.offsetDirection</code> swipe direction (2 left, 4 right, 8 up, 16 down)</li>',
'  <li><code>this.data.isFinal</code> returns <code>true</code> if it is the last input</li>',
'  <li><code>this.data.pointerType</code> type of pointer (mouse or touch)</li>',
'</ul>',
'<p>Note: <code>pan</code> events can also be triggered by clicking and dragging</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2944192045054144106)
,p_plug_name=>'Tap'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199009497527941937)
,p_plug_name=>unistr('\89E6\6478\533A\57DF')
,p_region_name=>'tap_region'
,p_parent_plug_id=>wwv_flow_imp.id(2944192045054144106)
,p_region_css_classes=>'touch-region'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div class="anim-icon">',
'<span class="fa fa-hand-pointer-o fa-lg js-event-icon" aria-hidden="true"></span> <span class="js-event-text">Tap me!</span>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2199009569713941938)
,p_plug_name=>unistr('\8BE6\60C5')
,p_parent_plug_id=>wwv_flow_imp.id(2944192045054144106)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(3352876222347251435)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p><b>Notable <code>tap</code> event data</b></p>',
'<ul>',
'  <li><code>this.data.tapCount</code> number of times the screen was tapped</li>',
'  <li><code>this.data.pointerType</code> type of pointer (mouse or touch)</li>',
'</ul>',
'<p>Note: <code>tap</code> events can also be triggered by clicking</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(4299025875776938848)
,p_plug_name=>'Available Gestures'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>APEX provides declarative support for the following touch gestures via Dynamic Actions:</p>',
'',
'<ul>',
'  <li>tap and double tap</li>',
'  <li>press</li>',
'  <li>swipe</li>',
'  <li>pan</li>',
'</ul>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(6672816643214834378)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2513101747170473402)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(3156601119967118728)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4054001765906400637)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8092450705989813067)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Adding touch support to your APEX apps help provide an improved and more natural mobile experience. This is especially important if your apps are more likely to be used on touch devices, such as smartphones or tablest. This page walks you through '
||'how you can use declarative touch events, introduced in APEX, to build touch friendly UIs.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2187364958769870160)
,p_name=>'Tap'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2199009497527941937)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apextap'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187365133694870161)
,p_event_id=>wwv_flow_imp.id(2187364958769870160)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var tapCount = this.data.tapCount;',
'var touchRegion$ = $(this.triggeringElement);',
'touchRegion$.find(".js-event-text").text("Tapped " + tapCount + " times!");',
'',
'var animationEvent = ''webkitAnimationEnd oanimationend msAnimationEnd animationend'';',
'touchRegion$.addClass(''is-active'');',
'touchRegion$.one(animationEvent, function(event) {',
'    touchRegion$.removeClass(''is-active'');',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2187365379585870164)
,p_name=>'Press'
,p_event_sequence=>30
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2220954014020954537)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexpress'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2187365496542870165)
,p_event_id=>wwv_flow_imp.id(2187365379585870164)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var touchRegion$ = $(this.triggeringElement);',
'touchRegion$.find(".js-event-text").text("Pressed!");',
'',
'var animationEvent = ''webkitAnimationEnd oanimationend msAnimationEnd animationend'';',
'',
'touchRegion$.addClass(''is-active'');',
'touchRegion$.find(".js-event-icon").removeClass("fa-hand-pointer-o").addClass("fa-hand-grab-o");',
'touchRegion$.one(animationEvent, function(event) {',
'    touchRegion$.removeClass(''is-active'').find(".js-event-icon").addClass("fa-hand-pointer-o").removeClass("fa-hand-grab-o");',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2199008288658941925)
,p_name=>'Swipe'
,p_event_sequence=>40
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2220954241245954540)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexswipe'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2199008358305941926)
,p_event_id=>wwv_flow_imp.id(2199008288658941925)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var touchRegion$ = $(this.triggeringElement);',
'var text$ = touchRegion$.find(".js-event-text");',
'var icon$ = touchRegion$.find(".js-event-icon");',
'var swipeDir = this.data.offsetDirection;',
'',
'var message, icon;',
'',
'if (swipeDir === 2) {',
'    message = ''Swiped Left!''',
'    icon = ''fa-hand-o-left''',
'} else if (swipeDir === 4) {',
'    message = ''Swiped Right!''',
'    icon = ''fa-hand-o-right''',
'}',
'',
'text$.text(message);',
'',
'icon$.removeClass("fa-hand-pointer-o fa-hand-o-right fa-hand-o-left").addClass(icon);',
'var animationEvent = ''webkitAnimationEnd oanimationend msAnimationEnd animationend'';',
'touchRegion$.addClass(''is-active'');',
'touchRegion$.one(animationEvent, function(event) {',
'    touchRegion$.removeClass(''is-active'');',
'});'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2199008460246941927)
,p_name=>'Pan'
,p_event_sequence=>50
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(2220954559106954543)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexpan'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2199008610295941928)
,p_event_id=>wwv_flow_imp.id(2199008460246941927)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var touchRegion$ = $(this.triggeringElement);',
'var text$ = touchRegion$.find(".js-event-text");',
'var icon$ = touchRegion$.find(".js-event-icon");',
'var swipeDir = this.data.offsetDirection;',
'',
'var offsetX = (touchRegion$.outerWidth() / 2) - 24;',
'',
'var message, icon;',
'',
'if (swipeDir === 2) {',
'    message = ''Panning Left!''',
'    icon = ''fa-hand-o-left''',
'} else if (swipeDir === 4) {',
'    message = ''Panning Right!''',
'    icon = ''fa-hand-o-right''',
'}',
'',
'if (this.data.isFinal ) {',
'    icon$.css("position","static");',
'} else {',
'    icon$.css({',
'        position: "absolute",',
'        left: this.data.deltaX + offsetX',
'    })',
'}',
'',
'// reset icon after 1000 ms',
'setTimeout(function(){',
'    icon$.css("position","static");',
'}, 1000);',
'',
'text$.text(message);',
'icon$.removeClass("fa-hand-pointer-o fa-hand-o-right fa-hand-o-left fa-hand-o-up fa-hand-o-down").addClass(icon);'))
);
wwv_flow_imp.component_end;
end;
/

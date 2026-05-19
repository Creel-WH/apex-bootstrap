prompt --application/pages/page_02000
begin
--   Manifest
--     PAGE: 02000
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
 p_id=>2000
,p_name=>unistr('\8FC1\79FB\6307\5357')
,p_alias=>'MIGRATION-GUIDE'
,p_step_title=>unistr('\8FC1\79FB\6307\5357 - &APP_TITLE.')
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1861699254810393298)
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232002108878109623)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'rds_mode', 'JUMP',
  'remember_selection', 'NO')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1232002239340109624)
,p_plug_name=>'Migrating from Other Themes'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This guide will cover the steps involved in migrating to the Universal Theme. It will cover the pros and cons of Universal Theme, and how to go through the Theme Switch wizard. This guide also covers the post-migration phase: the immediate tasks, '
||'some best practices for working with Universal Theme, and a list of common problems and solutions encountered during and after the upgrade.  Please note that this guide assumes you have a working knowledge of APEX fundamentals.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2162356614132401990)
,p_plug_name=>'Bookmarklet'
,p_parent_plug_id=>wwv_flow_imp.id(1232002239340109624)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>There is not always an equivalent template in Universal Theme for all templates from previous themes. For this reason, the APEX Development Team has created a bookmarklet to assist you with mapping your older templates to your newer templates in t'
||'he Verify Compatibility step of the Switch Theme wizard.</p>',
'<p>It supports mappings from the 3 most popular legacy themes, Theme 24, 25, and 26. It also supports any themes that are based off these legacy themes, i.e.: if your theme was based on one of those themes. When utilized then the bookmarklet will do '
||'most of the mappings correctly to produce the best results from the migration.</p>',
'<p class="dm-Hero-steps">Installation: <strong>Drag</strong> the link below into your bookmarks bar:</p>',
'',
'<div class="dm-bookmarklet">',
'<a id="codeOut" href=''javascript:(function(){(function(){if(window.apex.jQuery===undefined){alert("To use this bookmarklet, you need to, first, drag it into your bookmark bars and then click on it on page 386 of the theme switch wizard!");return;}ape'
||'x.jQuery.getScript("#APP_FILES#bookmarklet#MIN#.js").done(function(script,textStatus){console.log(textStatus);}).fail(function(jqxhr,settings,exception){});})();})();''>Universal Theme Migration Helper V1.1</a>',
'<table class="u-Report">',
'    <thead>',
'        <tr>',
'            <th>',
'                Version',
'            </th>',
'            <th>',
'                Date',
'            </th>',
'            <th>',
'                Changes',
'            </th>',
'        </tr>',
'    </thead>',
'    <tbody>',
'        <tr>',
'            <td>',
'                1.1',
'            </td>',
'            <td>',
'                6/19/15',
'            </td>',
'            <td>',
'                Theme 21, 22, 23 support<br>Internet Explorer Support. <br> Auto Updating',
'            </td>',
'        </tr>',
'        <tr>',
'            <td>',
'                1.01',
'            </td>',
'            <td>',
'                5/13/15',
'            </td>',
'            <td>',
'                Firefox Support',
'            </td>',
'        </tr>',
'        <tr>',
'            <td>',
'                1.0',
'            </td>',
'            <td>',
'',
'            </td>',
'            <td>',
'                Initial Release',
'            </td>',
'        </tr>',
'    </tbody>',
'</table>',
'</div>',
'',
'<p class="dm-Hero-steps">Usage: On Switch Theme page, click on the bookmarklet to update the template mappings.</p>',
'',
'<p>If the theme you are migrating from is supported, then it will automatically match the templates of your older theme to the correct templates in Universal Theme, highlighted in green.</p>',
'',
'<p>Once the mapping process has completed, any errors you encounter will be displayed On an error page.<br />',
'  You can try clicking on the <strong>Map to a Different Theme</strong> button, to try re-mapping with an alternate theme available within the book marklet.<br />',
'If the expected mapping can not be found in the select list for that template, then it will be highlighted in orange.</p>',
'',
'<p>Typically receiving any errors either means your custom templates did not strictly match the theme you chose,<br />',
'or that you have not set <strong>Match Template Classes</strong> to "<strong>No</strong>" in the previous step.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166514394358170564)
,p_plug_name=>'Creating the Theme'
,p_parent_plug_id=>wwv_flow_imp.id(1232002239340109624)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To create Universal Theme in your application, go to Shared Components, click on Themes and follow the steps below:</p>',
'<p class="dm-Hero-steps"><strong>Note:</strong> If you have already installed the Universal Theme into your application, proceed to the Second Step: <em>Switch to Universal Theme</em>.</p>',
'<ol>',
'  <li><p>Click <strong>Create Theme</strong></p><p>You need to install the Universal Theme into your application to get started.</p></li>',
'  <li><p>Select <strong>From the Repository.</strong></p></li>',
'  <li><p>Select <strong>Desktop</strong> as the User Interface.</p></li>',
'  <li><p>Choose <strong>Standard Themes</strong> as the Theme Type, and <strong>Universal Theme (Theme 42)</strong> as the Theme. </p></li>',
'  <li><p>Review your changes and click <strong>Create</strong>.</p></li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2166515107504170705)
,p_plug_name=>'Switching the Theme'
,p_parent_plug_id=>wwv_flow_imp.id(1232002239340109624)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p class="dm-Hero-steps"><strong>Note:</strong> Not until you have completed Step 4 below will your application be irreversibly changed. Reverting back to a Tab-based application will be very difficult, which is why it is strongly recommended you hav'
||'e a backup of the application before proceeding further.</p>',
'<ol>',
'  <li><p>Click <strong>Switch Theme</strong></p></li>',
'  <li><p>Select the current desktop theme, and then select <strong>42. Universal Theme</strong>.',
'    <br />Depending on your application, you may choose to set the <strong>Reset Grid</strong> option to either <strong>Reset fixed region positions</strong> or <strong>Reset all region and item grid positions</strong>.',
'    <br />Reset fixed region positions will maintain your current region positions, where possible, during migration. <em>This is the recommended approach</em>.',
'    <br />Reset all region and item grid positions will ensure item and region positioning will be reset and will force regions and items to stack on top of each other.',
'    <br />Make sure that <strong>Map Template Classes</strong> is set to <strong>No</strong>',
'  <br />Press <strong>Next</strong> to continue.</p></li>',
'  <li><p>Verify that<strong> </strong>the mappings for your templates and Universal Theme templates are correct.',
'    <br />Use the <strong>Universal Theme Migration Bookmarklet</strong> to automatically assign the right mapping, or check out the full mapping guide located at the end of this guide.',
'    <br />Most of the inconsistencies will be from new templates that Universal theme provides.',
'  <br />Try to choose the template that best matches your existing template. You may want to browse the components in the Universal Theme Sample Application to get a sense of the new templates and their various configurations. </p></li>',
'  <li><p>Click <strong>Switch Theme</strong>.</p></li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1532643391432754411)
,p_plug_name=>'Post Migration'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>While most migrations will be relatively painless, there is no set path for how dealing with issues arise as a result of this change. Consider the following pointers for how to exhaustively find and resolve such problems in your new Universal Them'
||'e Application.</p>',
'<ol>',
'  <li><p><strong>Visually review the migrated application.</strong><br />',
'    - Run each page of your application, or at least a good cross section of different pages to make sure that there are no obvious display issues.<br />',
'    - If you have installed your original application under a different Application Id, perform side-by-side comparisons on a wide selection of pages, to ensure different page elements, such as buttons, and the overall page layout are not too diverge'
||'nt.</p>',
'  </li>',
'  <li><p><strong>Check non-standard components.</strong><br />',
'    - Be sure to check any pages where you implemented your own JavaScript to ensure the page still operates correctly. Many of the default class names for elements were changed, and some of the inline scripts that you have augmented your pages with '
||'may no longer be needed. <br />',
'    - Review any pages or templates where you have added any CSS libraries. If necessary, reapply the CSS libraries into the migrated application.<br />',
'    - Review all plug-ins used throughout your application to ensure they are still functioning correctly.</p>',
'  </li>',
'  <li><p><strong>Ask your users to test your app.</strong><br />',
'    - After testing the application yourself, the next step is to ask your users to use the new migrated application to ensure they are comfortable with the new user interface, and can readily use the application.<br />',
'    - Determine from your end users if any end user training material or application documentation needs to be revised before releasing the new application into production.</p>',
'  </li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2824945045205811847)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:margin-bottom-lg'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>You can easily update your application to use the latest version of Universal Theme and keep current with the latest features, enhancements and bug fixes.  Simply follow the steps outlined on this page to get your application''s theme refreshed.</p'
||'>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2824945523104811163)
,p_plug_name=>'Backup Reminder'
,p_parent_plug_id=>wwv_flow_imp.id(2824945045205811847)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>10
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'<p>Before you begin, please create a backup of your application.  You can do this by exporting your application, or by creating a copy of it.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2824945941765810341)
,p_plug_name=>unistr('Refresh \901A\7528\4E3B\9898')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1233451874396545977)
,p_plug_name=>unistr('Re-apply your Theme \6837\5F0F')
,p_parent_plug_id=>wwv_flow_imp.id(2824945941765810341)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Once you refresh Universal Theme, the current theme style for your application will be reset to <b>Vita</b>.</p>',
'',
'<p>If your application was using a custom theme style, please follow these steps to set your custom theme style as current:</p>',
'',
'<ol>',
'<li>Run your application</li>',
'<li>Open <b>Theme Roller</b> from the Developer Toolbar</li>',
'<li>Select your custom theme style from the <b>Style</b> select list</li>',
'<li>Click <b>Save</b></li>',
'<li>Click <b>Save</b> again in the Save confirmation dialog, then click <b>OK</b></li>',
'<li>In Theme Roller, click <b>Set as Current</b>, then click <b>OK</b></li>',
'<li>Close Theme Roller</li>',
'</ol>',
'',
'<p><b>NOTE:</b> It is crucial that you re-save your custom theme style. This is necessary because Theme Roller will need to re-compile the css based upon the latest changes to the underlying theme.</p>',
'',
'<p>That''s it. Your custom theme style has been re-applied to your application and set as the current theme style.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(1518330082143165491)
,p_plug_name=>unistr('\5F00\59CBing from \901A\7528\4E3B\9898 21.2')
,p_parent_plug_id=>wwv_flow_imp.id(2824945941765810341)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--warning'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>10
,p_plug_source=>'<p>Your application will need to use Compatibility Mode 21.2 or higher to be eligible for Universal Theme update. To adjust the application compatibility mode, go to <strong>Shared Components</strong> - <strong>Edit Application Definition</strong> an'
||'d change the compatibility mode to <strong>21.2</strong> or higher.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2121733201832157294)
,p_plug_name=>'How to Refresh'
,p_parent_plug_id=>wwv_flow_imp.id(2824945941765810341)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h3:t-ContentBlock--shadowBG:js-headingLevel-3'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>First, you will need to <b>refresh</b> Universal Theme in your application so it is updated to the most current version.</p>',
'<ol>',
'<li>Navigate to <strong>Shared Components</strong> &rarr; <strong>Themes</strong></li>',
'<li>Verify that the <strong>Subscribed From</strong> column for Universal Theme says <strong>Theme Repository</strong></li>',
'<li>Click on <strong>Universal Theme</strong></li>',
'<li>Click <strong>Verify</strong> in the Theme Subscription region header</li>',
'<li>Click <strong>Verify</strong> in the Verify Theme Subscription Dialog</li>',
'<li>Click <strong>Refresh Theme</strong></li>',
'<li>Click <strong>OK</strong></li>',
'</ol>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2121733984082156408)
,p_plug_name=>'Restoring Subscription'
,p_parent_plug_id=>wwv_flow_imp.id(2824945941765810341)
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--padded:t-ContentBlock--h2:t-ContentBlock--shadowBG:js-headingLevel-2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>Follow these steps to restore the Universal Theme subscription and refresh it based on the latest release.</p>',
'<p><b>NOTE:</b> You will lose any changes or customizations made to templates within Universal Theme.</p>',
'',
'<ol>',
'<li>Navigate to <strong>Shared Components</strong> &rarr; <strong>Themes</strong></li>',
'<li>Verify that the <strong>Subscribed From</strong> column for Universal Theme says <strong>Theme Repository</strong></li>',
'<li>Click on <strong>Restore Theme Subscription</strong> from the side bar.</li>',
'<li>Set <b>Theme Source</b> to <b>Oracle Theme</b></li>',
'<li>Set <b>Master Theme</b> to <b>42. Universal Theme</b></li>',
'<li>Set <b>Match Template</b> to <b>By Template Identifier</b></li>',
'<li>Click <strong>Restore Subscription</strong></li>',
'</ol>',
'',
'<p>This process will refresh the Universal Theme in your application based on master copy from the release of APEX.  Your theme style will also be reset to Vita. If you were using a custom theme stle, you can follow the steps outlined above to re-app'
||'ly your custom theme style.</p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2121733673976156843)
,p_plug_name=>'Lost Subscriptions'
,p_parent_plug_id=>wwv_flow_imp.id(2121733984082156408)
,p_region_template_options=>'#DEFAULT#:t-Alert--horizontal:t-Alert--defaultIcons:t-Alert--info'
,p_plug_template=>wwv_flow_imp.id(2022321869436532060)
,p_plug_display_sequence=>70
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>It is recommended that Universal Theme remain subscribed so that you can easily refresh it to receive updates upon new releases of APEX.  If for some reason your application was unsubscribed or unlocked, you can restore the subscription by followi'
||'ng these steps.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3555111771420435197)
,p_plug_name=>unistr('\8FC1\79FB\6307\5357s')
,p_icon_css_classes=>'fa-lg fa-tasks u-color-11'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2655656254774638580)
,p_plug_display_sequence=>40
,p_plug_display_point=>'REGION_POSITION_01'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

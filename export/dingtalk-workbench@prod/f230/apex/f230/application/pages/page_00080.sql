prompt --application/pages/page_00080
begin
--   Manifest
--     PAGE: 00080
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>157415801445592876
,p_default_application_id=>230
,p_default_id_offset=>2464321665650071
,p_default_owner=>'JA_WORKBENCH'
);
wwv_flow_imp_page.create_page(
 p_id=>80
,p_name=>unistr('\4F7F\7528\62A5\8868')
,p_alias=>unistr('\4F7F\7528\62A5\8868')
,p_step_title=>unistr('\4F7F\7528\62A5\8868')
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_imp.id(2788807577253509828)
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('console.log(''\6D4B\8BD5\FF1A''+document.body.clientHeight);'),
'// $s(''P145_HEIGHT'',document.body.clientHeight);',
'var offHeight = document.body.offsetHeight*0.77;',
'var offWidth = ''100%'';',
'var leftmargin =(document.body.offsetWidth -(document.body.offsetWidth *0.77))*0.5',
'',
'var iframe=`',
'   <html lang="en">',
'<head>',
'<meta charset="UTF-8">',
'<meta name="viewport" content="width=device-width, initial-scale=1.0">',
unistr('<title>\7981\7528\5D4C\5165\9875\9762\6EDA\52A8</title>'),
'<style>',
unistr('  /* \6837\5F0F\53EF\4EE5\6839\636E\4F60\7684\9700\6C42\8FDB\884C\4FEE\6539 */'),
'  #embeddedPageContainer {',
unistr('    width:  `+offWidth+`px; /* \8BBE\7F6E\5BB9\5668\7684\5BBD\5EA6 */'),
unistr('    height: `+offHeight+`px; /* \8BBE\7F6E\5BB9\5668\7684\9AD8\5EA6 */'),
unistr('    overflow: hidden; /* \9690\85CF\5BB9\5668\4E2D\7684\6EA2\51FA\5185\5BB9 */'),
unistr('    border: 1px solid #ccc; /* \53EF\9009\FF1A\8BBE\7F6E\8FB9\6846 */'),
'  }',
'  #embeddedPage {',
unistr('    width: 100%; /* \8BA9 iframe \5145\6EE1\5BB9\5668 */'),
unistr('    height: 100%; /* \8BA9 iframe \5145\6EE1\5BB9\5668 */'),
'  }',
'</style>',
'</head>',
'<body>',
'',
'',
unistr('<!-- \4F7F\7528\4E00\4E2A\5BB9\5668\6765\5305\88F9 iframe\FF0C\5E76\901A\8FC7 CSS \63A7\5236\5BB9\5668\7684\5C3A\5BF8\548C\6EDA\52A8 -->'),
'<div id="embeddedPageContainer">',
unistr('  <!-- iframe \6807\7B7E\7528\4E8E\5D4C\5165\9875\9762 -->'),
'  <iframe width="100%" height="100%" frameborder="0" name="Iframe1"',
'         src="https://bi.jasolar.com/webroot/decision/link/zStT">',
unistr('         \60A8\7684\6D4F\89C8\5668\4E0D\652F\6301\5D4C\5165\5F0F\6846\67B6\FF0C\6216\8005\5F53\524D\914D\7F6E\4E3A\4E0D\663E\793A\5D4C\5165\5F0F\6846\67B6\3002'),
'     </iframe>',
'</div>',
'',
'</body>',
'</html>',
'`;',
'',
'',
'$(''#main'').append(iframe)',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3841964171369966143)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4421867146447171885)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(4421751410350171815)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(4421929517555171922)
);
wwv_flow_imp.component_end;
end;
/

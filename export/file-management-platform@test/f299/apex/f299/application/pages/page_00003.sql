prompt --application/pages/page_00003
begin
--   Manifest
--     PAGE: 00003
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
 p_id=>3
,p_name=>unistr('\7CFB\7EDF\4F7F\7528\8BF4\660E')
,p_alias=>unistr('\7CFB\7EDF\4F7F\7528\8BF4\660E')
,p_step_title=>unistr('\7CFB\7EDF\4F7F\7528\8BF4\660E')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(5366208257144607617)
,p_plug_name=>unistr('\9762\5305\5C51')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>100
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(9793439067225686436)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(9793617144925686553)
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(7123114037695894919)
,p_plug_name=>unistr('\4FE1\606F')
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(9793554709352686508)
,p_plug_display_sequence=>90
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('<h1><strong>\901A\7528\9879\76EE\7BA1\7406\5E73\53F0-\64CD\4F5C\624B\518C</strong></h1>'),
unistr('<p><strong>\7248\672C\53F7\FF1A</strong> V1.0.0 <strong>\53D1\5E03\65E5\671F\FF1A</strong> 2024\5E7408\670807\65E5 <strong>\9002\7528\5BF9\8C61\FF1A</strong> \9879\76EE\7ECF\7406\3001\9879\76EE\6210\5458</p>'),
unistr('<h3><strong>1. \7B80\4ECB</strong></h3><h4><strong>1.1 \5E73\53F0\6982\8FF0</strong></h4>'),
unistr('<p>\901A\7528\9879\76EE\7BA1\7406\5E73\53F0\662F\4E00\6B3E\57FA\4E8E\201CAPEX+\6676\9C7C\201D\7684\8F7B\91CF\5316\9879\76EE\7BA1\7406\7CFB\7EDF\FF0C\96C6\9879\76EE\89C4\5212\3001\4EFB\52A1\5206\6D3E\FF0C\6267\884C\76D1\7763\3001\56E2\961F\534F\4F5C\7B49\529F\80FD\7684\9879\76EE\7BA1\7406\8F6F\4EF6\FF0C\65E8\5728\63D0\5347\9879\76EE\6267\884C\6548\7387\FF0C\786E\4FDD\9879\76EE\6309\65F6\3001\6309\8D28\3001\6309\9884\7B97\5B8C\6210\3002</p>'),
unistr('<p>\9879\76EE\4EFB\52A1\4E1A\52A1\903B\8F91\56FE</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610017.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h4><strong>1.2 \76EE\6807\7528\6237</strong></h4>'),
unistr('<p>\672C\624B\518C\9002\7528\4E8E\6240\6709\4F7F\7528\901A\7528\9879\76EE\7BA1\7406\5E73\53F0\7684\7528\6237\FF0C\5305\62EC\4F46\4E0D\9650\4E8E\9879\76EE\7ECF\7406\3001\56E2\961F\6210\5458\3001\7CFB\7EDF\7BA1\7406\5458\7B49\FF0C\65E8\5728\5E2E\52A9\7528\6237\5FEB\901F\719F\6089\5E76\9AD8\6548\5229\7528\5E73\53F0\529F\80FD\3002</p>'),
unistr('<h3><strong>2. \7CFB\7EDF\8BBF\95EE\5165\53E3\FF08\6676\6377\514D\767B\FF09</strong></h3>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610347.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610552.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\63D0\793A\FF1A\53EF\5C06\201C\901A\7528\9879\76EE\7BA1\7406\5E73\53F0\201D\52A0\5165\6676\6377\7684\201C\6211\7684\6536\85CF\201D\65B9\4FBF\4E0B\6B21\8BBF\95EE\3002</p>'),
unistr('<p>\8BF4\660E\FF1A\82E5\51FA\73B0\9489\9489\5DE5\4F5C\53F0\65E0\6676\6377\5E94\7528\6216\6676\5FEB\4E0A\65E0\901A\7528\9879\76EE\7BA1\7406\5E73\53F0\7684\8BBF\95EE\5165\53E3\FF0C\53EF\8054\7EDC\9879\76EE\7ECF\7406@\5F90\6615\8FDB\884C\5F00\901A\3002</p>'),
unistr('<h3><strong>\6211\7684\9879\76EE</strong></h3><h4><strong>3.1\9879\76EE\521B\5EFA</strong></h4>'),
unistr('<p>\70B9\51FB\5DE6\4FA7\201C\6211\7684\9879\76EE\201D\8FDB\5165\FF0C\7136\540E\70B9\51FB\201C\65B0\5EFA\9879\76EE\201D\8FDB\884C\521B\5EFA\3002</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610669.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\8F93\5165\9879\76EE\4FE1\606F\FF0C\5B8C\6210\521B\5EFA\3002</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610801.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\521B\5EFA\540E\7684\9879\76EE\5728\9879\76EE\5217\8868\4E2D\8FDB\884C\67E5\770B</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947610973.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\70B9\51FB\9879\76EE\540D\79F0\FF0C\8FDB\5165\9879\76EE</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611146.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h4><strong>3.2 \9879\76EE\7BA1\7406</strong></h4>'),
unistr('<p>\8FDB\5165\9879\76EE\540E\53EF\901A\8FC7\5DE6\4E0A\89D2\76846\4E2A\9879\76EE\529F\80FD\5BF9\9879\76EE\8FDB\884C\7BA1\7406</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611302.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD1-\9879\76EE\4EFB\52A1</strong></h5>'),
unistr('<p>\5728\201C\9879\76EE\4EFB\52A1\201D\9875\9762\53EF\67E5\770B\672C\9879\76EE\7684\4EFB\52A1\4FE1\606F\FF0C\53EF\521B\5EFA\5E76\5206\6D3E\9879\76EE\4EFB\52A1\3002</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611448.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<ol>',
unistr('    <li><p><strong>\4EFB\52A1\521B\5EFA</strong></p></li>'),
'</ol>',
unistr('<p>\70B9\51FB\53F3\4E0A\89D2\201C\65B0\5EFA\4EFB\52A1\201D</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611599.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\5728\5F39\7A97\9875\9762\4E2D\521B\5EFA\9879\76EE\4EFB\52A1\FF08\64CD\4F5C\548C\6676\9C7C\4E00\81F4\FF09</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611689.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\53EF\901A\8FC7\201C\7236\5B50\4EFB\52A1\201D\7ED3\6784\8FDB\884C\9879\76EE\4EFB\52A1\7684\62C6\5206</p>'),
'<ol>',
unistr('    <li><p>\70B9\51FB\8FDB\5165\201C\7236\4EFB\52A1\201D</p></li>'),
'</ol>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611768.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<ol>',
unistr('    <li><p>\5728\7236\4EFB\52A1\4E0B\521B\5EFA\5B50\4EFB\52A1</p></li>'),
'</ol>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611869.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\5B9E\73B0\4EFB\52A1\62C6\5206</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947611986.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<ol>',
unistr('    <li><p><strong>\4EFB\52A1\7F16\8F91</strong></p></li>'),
'</ol>',
unistr('<p>\70B9\51FB\9879\76EE\6807\9898\FF0C\53EF\7F16\8F91\4EFB\52A1\FF08\9700\81EA\8EAB\662F\4EFB\52A1\521B\5EFA\4EBA\FF09</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612097.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612187.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<ol>',
unistr('    <li><p><strong>\4EFB\52A1\66F4\65B0&amp;\5B8C\6210</strong></p></li>'),
unistr('    <li><p>\53EF\5728\6676\9C7C\7AEF\8FDB\884C\9879\76EE\4EFB\52A1\7684\66F4\65B0\FF08\4EFB\52A1\540D\79F0\524D\6709\201C\9879\76EE\201D\6807\8BC6\FF09</p></li>'),
'</ol>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612292.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>b.\4E5F\53EF\4EE5\9879\76EE\7BA1\7406\5E73\53F0\8FDB\5165\4EFB\52A1\8BE6\60C5\8FDB\884C\4EFB\52A1\66F4\65B0\548C\5B8C\7ED3\3002</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612389.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<ol>',
unistr('    <li><p><strong>\4EFB\52A1\5BA1\6279</strong></p></li>'),
'</ol>',
unistr('<p>a.\9700\8981\5BF9\4EFB\52A1\8FDB\884C\5BA1\6279\65F6\FF0C\53EF\5728\9879\76EE\7BA1\7406\5E73\53F0\8FDB\884C\5BA1\6279</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612498.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612607.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>b.\4E5F\53EF\4EE5\5728\6676\9C7C\7AEF\8FDB\884C\5BA1\6279</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612720.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD2 -\7518\7279\56FE</strong></h5>'),
unistr('<p>\53EF\901A\8FC7\7518\7279\56FE\6A21\5F0F\67E5\770B\4EFB\52A1\4FE1\606F\FF0C\8C03\914D\4EFB\52A1\8BA1\5212</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612851.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD3-\62A5\8868</strong></h5>'),
unistr('<p>\5728\62A5\8868\9875\9762\53EF\67E5\770B\9879\76EE\4EFB\52A1\603B\4F53\63A8\8FDB\60C5\51B5\FF0C\548C\5404\9879\76EE\6210\5458\63A8\8FDB\60C5\51B5</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947612954.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613056.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD4-\9879\76EE\6982\89C8</strong></h5>'),
unistr('<p>\5728\9879\76EE\6982\89C8\9875\9762\53EF\67E5\770B\9879\76EE\57FA\672C\4FE1\606F\FF0C\5E76\4FEE\6539\9879\76EE\548C\8C03\6574\9879\76EE\72B6\6001</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613164.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD5-\9879\76EE\6587\4EF6</strong></h5>'),
unistr('<p>\53EF\67E5\770B\548C\9879\76EE\76F8\5173\7684\6587\4EF6\FF0C\5305\542B\5404\4EFB\52A1\4E0A\4F20\7684\9644\4EF6\548C\9879\76EE\7ECF\7406\4E0A\4F20\7684\9879\76EE\6587\4EF6</p>'),
unistr('<p>\4EFB\52A1\9644\4EF6\FF1A\6765\81EA\6676\9C7C\4EFB\52A1\4E2D\4E0A\4F20\7684\9644\4EF6</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613274.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\8D44\6599\6587\4EF6\FF1A\5728\9879\76EE\7BA1\7406\5E73\53F0\4E0A\4F20\7684\6587\4EF6</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613382.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h5><strong>\529F\80FD6-\9879\76EE\6210\5458</strong></h5>'),
unistr('<p>\7BA1\7406\9879\76EE\6210\5458\4FE1\606F\FF0C\53EF\6DFB\52A0\9879\76EE\7BA1\7406\5458\548C\666E\901A\9879\76EE\6210\5458</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613471.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<h3><strong>\6211\7684\4EFB\52A1</strong></h3>'),
unistr('<p>\5728\6211\7684\4EFB\52A1\9875\9762\FF0C\53EF\4EE5\67E5\770B\6240\6709\9879\76EE\4E2D\548C\81EA\8EAB\76F8\5173\7684\4EFB\52A1\FF0C\65B9\4FBF\9879\76EE\7ECF\7406\5FEB\901F\7BA1\7406\591A\4E2A\9879\76EE\4EFB\52A1</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613569.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<h3><strong>\9879\76EE\914D\7F6E\7BA1\7406\FF08\540E\53F0\529F\80FD\FF09</strong></h3>'),
unistr('<p>\540E\53F0\7BA1\7406\529F\80FD\FF0C\914D\7F6E\9879\76EE\76F8\5173\53C2\6570</p><h4><strong>5.1\9879\76EE\7C7B\522B\5B57\6BB5\914D\7F6E\7BA1\7406</strong></h4>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613665.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h4><strong>5.2\9879\76EE\4EA7\4E1A\94FE\5B57\6BB5\914D\7F6E\7BA1\7406</strong></h4>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613747.png?x-oss-process=image/format,webp"',
unistr('         width="50%" data-comment-ids="" data-display="right"></p><h4><strong>5.3\9879\76EE\5176\4ED6\5B57\6BB5\914D\7F6E\7BA1\7406</strong></h4>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613833.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<h3><strong>\7CFB\7EDF\8BBE\7F6E\FF08\540E\53F0\529F\80FD\FF09</strong></h3><h4><strong>6.1\89D2\8272\7BA1\7406</strong></h4>'),
unistr('<p>\914D\7F6E\9879\76EE\7BA1\7406\5E73\53F0\7CFB\7EDF\89D2\8272\6743\9650</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947613936.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<h3><strong>\95EE\9898\53CD\9988\FF08\540E\53F0\529F\80FD\FF09</strong></h3><h4><strong>7.1\95EE\9898\53CD\9988</strong></h4>'),
unistr('<p>\7528\4E8E\4F7F\7528\7CFB\7EDF\95EE\9898\8FDB\884C\53CD\9988</p>'),
'<p>',
'    <img src="https://jingobj.jasolar.com:26000/ywja-public-bucket//server-platform/3/upload/2024-09-10/1725947614032.png?x-oss-process=image/format,webp"',
'         width="50%" data-comment-ids="" data-display="right"></p>',
unistr('<p>\611F\8C22\67E5\770B\FF0C\82E5\6709\65B0\7684\529F\80FD\9700\6C42\8BF7\8054\7CFB@\675C\78CA\FF08\4EBA\529B\4E0E\534F\8C03\529E\516C\90E8\FF09 \3002</p>')))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp.component_end;
end;
/

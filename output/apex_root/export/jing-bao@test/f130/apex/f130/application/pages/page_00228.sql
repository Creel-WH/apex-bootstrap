prompt --application/pages/page_00228
begin
--   Manifest
--     PAGE: 00228
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.11'
,p_default_workspace_id=>20731578202767968
,p_default_application_id=>130
,p_default_id_offset=>28880731091649549
,p_default_owner=>'JING_BAO'
);
wwv_flow_imp_page.create_page(
 p_id=>228
,p_name=>unistr('\901A\7528\6A21\677F-\4E8B\4EF6\5206\6790\586B\5199')
,p_alias=>unistr('\901A\7528\6A21\677F-\4E8B\4EF6\5206\6790\586B\5199')
,p_step_title=>unistr('\901A\7528\6A21\677F-\4E8B\4EF6\5206\6790\586B\5199')
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_IMAGES#static/js/mkUtils.v1.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/1665297995026.vue.js',
'https://jingobj.jasolar.com:26000/tdd-public/public/1665298000780.element.js',
'#WORKSPACE_FILES#static/js/medash.min.js',
'#WORKSPACE_FILES#static/js/jquery.tagsinput.min.js',
'#WORKSPACE_FILES#static/js/axios.min.js',
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/layui.js',
''))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var v_datas;',
'var vals_map = new Map();',
'var close_img_url = ''https://jingobj.jasolar.com:26000/tdd-public/jingbao/1668516290204_close.png'';',
'// var files = $(''input[type="file"]'')',
'',
'var files = document.getElementById(''files'');',
'',
'',
'// $.each(files, function (i, e) {',
'    files.onchange = async () => {',
'        ',
'        ',
'        // files.onchange = function() {',
'        var arr = new Array();',
'',
unistr('        // \83B7\53D6\5DF2\6709\6587\4EF6\94FE\63A5'),
'        var us = $(files).attr(''url'');',
'        console.log("test1")',
'        if (us) {',
'            arr = us.split('','');',
'        }',
'        console.log(arr);',
'        console.log($(files));',
'        if ((arr.length + files.files.length) > 3) {',
unistr('            alert(''\6587\4EF6\6570\91CF\4E0D\80FD\8D85\8FC7\4E09\4E2A'');'),
'            return false;',
'        }',
'',
'        // console.log($(e));',
'        var imgDom;',
'        for (var k = 0; k < files.files.length; k++) {',
'            var i = 0;',
'',
'            const data = await getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([files.files[k]], []));',
'        //    const data = getOssConfig(''dqYzQau91NA4Ve01LLeO'', ''MgWUHl0bp2VweBWFIYuqJCVedgtevX2X'', () => updateImage([e.files[k]], []));',
'            console.log(''raw'', data)',
'            arr.push(data);',
'            var f_name = get_fileName(data);',
'            $(files).attr(''url'', arr.join('',''));',
'            if (/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(data)) {',
unistr('                imgDom = `<div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${data}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
unistr('            &nbsp;&nbsp;<a onclick="del_file(''${$(files).attr(''id'')}'',''${data}'',this)">\5220\9664</a>'),
'            &nbsp;&nbsp;<img src="${data}" onclick="openImg(''${data}'')" width="150px" alt="">',
'            </div>`;',
'            } else {',
unistr('                imgDom = `<div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${data}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
unistr('            &nbsp;&nbsp;<a onclick="del_file(''${$(files).attr(''id'')}'',''${data}'',this)">\5220\9664</a>'),
'            &nbsp;&nbsp;<span>${f_name}</span>',
'            </div>`;',
'            }',
'',
'',
'            $(files).after(imgDom);',
'        }',
'',
'    }',
'// });',
'',
'',
'function del_file(fid, url, e) {',
'    $(e).parent().remove();',
'    console.log(url);',
'    var arr = $(''#'' + fid).attr(''url'').split('','');',
'    console.log(''old'', arr);',
unistr('    // \5220\9664\672C\6B21\9009\4E2D\7684\6570\636E'),
'    arr = arr.filter(item => item != url)',
'    console.log(''new'', arr);',
'    $(''#'' + fid).attr(''url'', arr.join('',''));',
'',
'}',
'',
'',
'$(function () {',
'',
'    const isMobile = !!(navigator.userAgent.match(/(phone|pad|pod|iPhone|iPod|ios|iPad|Android|Mobile|BlackBerry|IEMobile|MQQBrowser|JUC|Fennec|wOSBrowser|BrowserNG|WebOS|Symbian|Windows Phone)/i));',
'    if (!isMobile) {',
'        console.log(''hide'');',
'        $(''#cancel_jingbao'').hide();',
'    }',
'    $(''#cancel_jingbao'').click(function () {',
unistr('        //\5224\65AD\73AF\5883\FF0C\8FDB\884C\8DF3\8F6C'),
'        window.location.href = ''&JINGBAO_URL.'' + ''/#/questionDetails?eventId='' + $v(''P237_EVENT_ID'');',
'    });',
'',
'})',
'',
unistr('//\901A\7528\7684\65B9\6CD5'),
'function toBigImg() {',
unistr('    $(".opacityBottom").addClass("opacityBottom");//\6DFB\52A0\906E\7F69\5C42'),
'    $(".opacityBottom").show();',
unistr('    $("html,body").addClass("none-scroll");//\4E0B\5C42\4E0D\53EF\6ED1\52A8'),
unistr('    $(".bigImg").addClass("bigImg");//\6DFB\52A0\56FE\7247\6837\5F0F'),
unistr('    $(".opacityBottom").click(function () {//\70B9\51FB\5173\95ED'),
'        $("html,body").removeClass("none-scroll");',
'        $(".opacityBottom").remove();',
'    });',
'}',
unistr('//\5728\7EBF\9884\89C8\56FE\7247'),
'function openImg(fileName) {',
'    var opacityBottom = ''<div class="opacityBottom" style = "display:none"><img width="70%" class="bigImg" src="'' + fileName + ''"></div>'';',
'    $(document.body).append(opacityBottom);',
'    toBigImg();',
'}',
'',
unistr('// \83B7\53D6\6587\4EF6\540D'),
'function get_fileName(file_url) {',
'    var parts = file_url.split("/");',
'    var file = parts[parts.length - 1];',
'    return file.substring(file.indexOf(''_'') + 1);',
'}',
'',
'',
'',
'',
'',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/css/recordComments.css',
'https://unpkg.com/element-ui/lib/theme-chalk/index.css',
'#WORKSPACE_FILES#static/css/index#MIN#.css',
'#WORKSPACE_FILES#static/css/jquery.tagsinput.css',
'#WORKSPACE_FILES#static/layui-v2.6.13/layui/css/layui.css'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('/*\70B9\51FB\4E0A\4F20\7684\6587\4EF6\FF08\56FE\7247\5168\5C4F\653E\5927\FF09start*/'),
'.bigImg {',
'    position: absolute;',
'    top: 50%;',
'    left: 50%;',
unistr('    /*\56FE\7247\5411\5DE6\79FB\52A8\81EA\8EAB\5BBD\5EA6\768450%, \5411\4E0A\79FB\52A8\81EA\8EAB\9AD8\5EA6\768450%\3002*/'),
'    transform: translate(-50%,-50%);',
'}',
unistr('/*\906E\7F69\5C42*/'),
'.opacityBottom {',
'    width: 100%;',
'    height: 100%;',
'    position: fixed;',
'    background: rgba(0,0,0,0.8);',
'    z-index: 1000;',
'    top: 0;',
'    left: 0;',
'}',
'',
'',
'.layui-laydate-content>.layui-laydate-list {',
'    padding-bottom: 0px;',
'    overflow: hidden;',
'}',
'.layui-laydate-content>.layui-laydate-list>li{',
'    width:50%',
'}',
'',
'.merge-box .scrollbox .merge-list {',
'    padding-bottom: 5px;',
'}',
'',
'',
'#user_input_div{',
'    position: inherit;',
'    width: 98%;',
'    left: 1%;',
'}',
'#submit_btn{',
'    margin-top: 11px;',
'}',
'',
'textarea{',
'    border-color: rgb(196, 183, 183) !important;',
'    color: #000000 !important;',
'    opacity: 1 !important;',
'}',
'.t-BreadcrumbRegion {',
'    display: flex;',
'    align-items: flex-end;',
'    padding:8px 0 0;',
'}',
'',
'.t-BreadcrumbRegion-body {',
'    padding-top: 0;',
'    padding-bottom: 0;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2647303654837595192)
,p_plug_name=>unistr('\533A\57DF')
,p_region_template_options=>'#DEFAULT#:t-TabsRegion-mod--simple'
,p_plug_template=>wwv_flow_imp.id(2302052297226836202)
,p_plug_display_sequence=>1
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2659093251658784572)
,p_plug_name=>unistr('\73B0\573A\8DDF\8E2A')
,p_parent_plug_id=>wwv_flow_imp.id(2647303654837595192)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>170
,p_plug_display_point=>'SUB_REGIONS'
,p_location=>null
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id=''messageView''>',
'    <div v-for="value in messageList" :key="value.eventMessageBoardId">',
'        <div v-if="value.type===''COMMENT''" class="comments">',
'            <div class="comment-info">',
'                <img',
'        :class="[''comments-avatar'', leaveAvatar(value.isLeave)]"',
'        :src="userHead(value.avatar,value.name)"',
'      />',
'                <div class="out-avatar">',
'                    <div class="comment-view">',
'                        <p class="comment-author">',
'                            <span>{{ leaveName(value.isLeave, value.name) }}</span>',
'                        </p>',
'                        <span class="comment-time">{{ value.updateDate }}</span>',
'                    </div>',
'                    <span class="comment">{{ value.content }}</span>',
'                    <div v-if="value.imagesUrl&&value.imagesUrl.length" class="img-area">',
'                        <el-image v-for=''image in doImageList(value.imagesUrl)'' :key="image" :src="image"',
'                        style="width: 70px; height: 70px;margin-right: 10px;"',
'                            :preview-src-list="doImageList(value.imagesUrl)" :z-index=''3000''>',
'                        </el-image>',
'                    </div>',
'                </div>',
'            </div>',
'        </div>',
'        <div v-else class="records">',
'            <img',
'      src="https://jingobj.jasolar.com:26000/tdd-public/jingbao/record.png"',
'      class="record-icon"',
'    />',
'            <div class="record-info">',
'                <p>{{ value.content }}</p>',
'                <span>{{ value.updateDate }}</span>',
'            </div>',
'        </div>',
'    </div>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661772551376885078)
,p_plug_name=>unistr('\4E8B\4EF6\5206\6790')
,p_region_name=>'event-analysis'
,p_parent_plug_id=>wwv_flow_imp.id(2647303654837595192)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(866967160342680036)
,p_plug_name=>unistr('\4FEE\6539\590D\76D8')
,p_parent_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>200
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2560967909900333669)
,p_plug_name=>unistr('\586B\5199\5185\5BB9\533A\57DF')
,p_parent_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>20
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2430772410080148487)
,p_plug_name=>unistr('\5206\6790\62A5\544A')
,p_parent_plug_id=>wwv_flow_imp.id(2560967909900333669)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>unistr('<input type="file" id="files" name="files" placeholder="\8BF7\9009\62E9\6587\4EF6" multiple>')
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2560968469285333674)
,p_plug_name=>unistr('\5F02\5E38\95EE\9898\63CF\8FF0')
,p_parent_plug_id=>wwv_flow_imp.id(2560967909900333669)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2560969560870333685)
,p_plug_name=>unistr('\89E3\51B3\63AA\65BD')
,p_parent_plug_id=>wwv_flow_imp.id(2560967909900333669)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>15
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2647304165246595197)
,p_plug_name=>unistr('\5BA1\6838\533A\57DF')
,p_region_name=>'user_input_div'
,p_parent_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_plug_template=>wwv_flow_imp.id(2302054943716836203)
,p_plug_display_sequence=>210
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2789968251995013819)
,p_plug_name=>unistr('\4E8B\4EF6\4FE1\606F')
,p_parent_plug_id=>wwv_flow_imp.id(2647303654837595192)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>90
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2661262546264499723)
,p_plug_name=>unistr('\5BA1\6838\7ED3\679C\63CF\8FF0')
,p_parent_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>150
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span id=''results'' class="comment"></span>',
''))
,p_plug_display_condition_type=>'EXISTS'
,p_plug_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select *',
'from TENANT_EVENT_ANALYZE',
'where EVENT_ID = :P228_EVENT_ID',
'  and EVENT_ANALYZE_ID=:P228_EVENT_ANALYZE_ID',
'  and TENANT_ID = :USERTENANT',
'  AND BASE_DEPT_ID=:BASE_DEPT_ID',
'  and AUDIT_STATE IN (''COMPLETE'', ''REJECT'') and rownum=1;'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2794396449413903935)
,p_plug_name=>unistr('\6545\969C\56FE\7247')
,p_region_name=>'images_content'
,p_parent_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>140
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="eventImgView" class="img-area">',
'    <el-image v-for=''image in doImageList(messageList)'' :key="image" :src="image"',
'        style="width: 70px; height: 70px;margin-right: 10px;" :preview-src-list="doImageList(messageList)"',
'        :z-index=''3000''>',
'    </el-image>',
'</div>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2789980167455019315)
,p_plug_name=>unistr('\57FA\672C\4FE1\606F')
,p_parent_plug_id=>wwv_flow_imp.id(2647303654837595192)
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2302045568724836200)
,p_plug_display_sequence=>160
,p_plug_display_point=>'SUB_REGIONS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(866967302593680037)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(866967160342680036)
,p_button_name=>unistr('\4FEE\6539\590D\76D8')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\4FEE\6539\590D\76D8')
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:278:&SESSION.::&DEBUG.:278:P278_EVENT_ID,P278_EVENT_ANALYZE_ID:&P228_EVENT_ID.,&P228_EVENT_ANALYZE_ID.'
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'Y'
,p_grid_column=>12
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2364728999610502019)
,p_button_sequence=>140
,p_button_plug_id=>wwv_flow_imp.id(2647304165246595197)
,p_button_name=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_static_id=>'submit_btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\63D0\4EA4\5BA1\6838')
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2364729406093502019)
,p_button_sequence=>120
,p_button_plug_id=>wwv_flow_imp.id(2647304165246595197)
,p_button_name=>unistr('\8FD4\56DE\6676\8C79')
,p_button_static_id=>'cancel_jingbao'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2302108034818836228)
,p_button_image_alt=>unistr('\8FD4\56DE\6676\8C79')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
,p_required_patch=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(443495591582757112)
,p_name=>'P228_DESCRIPTION_HIDE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2352231872387676185)
,p_name=>'P228_ANALYSIS_REPORT_IMAGES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2430772410080148487)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364713568570502031)
,p_name=>'P228_FLAG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364713988313502029)
,p_name=>'P228_ANALYZE_TEMPLATE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364714369628502029)
,p_name=>'P228_EVENT_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364714773367502029)
,p_name=>'P228_ANALYSIS_REPORT_IMAGES_HIDE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364717958833502027)
,p_name=>'P228_EVENT_ANALYZE_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364718431928502027)
,p_name=>'P228_IS_SHOW'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364718819387502026)
,p_name=>'P228_USER_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_item_default=>'4'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364719206884502026)
,p_name=>'P228_CODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2661772551376885078)
,p_item_default=>'4'
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364723522840502022)
,p_name=>'P228_ABNORMAL_DESCRIPTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2560968469285333674)
,p_placeholder=>unistr('\5F02\5E38\95EE\9898\63CF\8FF0\FF08\5FC5\586B\FF09')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364727929420502020)
,p_name=>'P228_IMPROVEMENT_MEASURES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2560969560870333685)
,p_placeholder=>unistr('\89E3\51B3\63AA\65BD\FF08\5FC5\586B\FF09')
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>5
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'auto_height', 'N',
  'character_counter', 'N',
  'resizable', 'Y',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364729834410502018)
,p_name=>'P228_NEW'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2647304165246595197)
,p_prompt=>unistr('\5BA1\6838\4EBA')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT U.EXT_ORG_NAME || ''-'' || U.NAME, U.EXT_USER_ID',
'FROM TENANT_AREA_UPGRADE_USERS_V U',
'WHERE U.EXT_USER_ID <> :USER_ID',
'  AND U.EXT_ORG_ID = :USERDEPT',
'  AND U.UPGRADE_LEVEL = 2',
'  AND U.TENANT_ID = :USERTENANT',
'  AND U.BASE_DEPT_ID=:BASE_DEPT_ID',
'UNION',
'SELECT V.EXT_ORG_NAME || ''-'' || V.NAME, V.EXT_USER_ID',
'  FROM BAO_USER_DEPT_EXPAND F',
' INNER JOIN MPF_USER_DEPT_MAIN_ASSO_V V ON F.USER_ID = V.EXT_USER_ID',
' WHERE F.DEPT_ID  = :USERDEPT',
'   AND F.TENANT_ID = :USERTENANT',
'   AND F.JOB_LEVEL_CODE = 30',
'   AND F.BASE_DEPT_ID=:BASE_DEPT_ID'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_colspan=>3
,p_grid_column=>9
,p_field_template=>wwv_flow_imp.id(2302106919299836226)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364730473946502017)
,p_name=>'P228_EVENT_SERIAL_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E8B\4EF6\7F16\53F7\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364730870364502017)
,p_name=>'P228_FIRST_EVENT_CATEGORY_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E8B\4EF6\5927\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364731285548502017)
,p_name=>'P228_SUBMIT_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E0A\62A5\4EBA\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364731656870502017)
,p_name=>'P228_FAB_NAME'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\5382\533A\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364732091713502016)
,p_name=>'P228_SECOND_EVENT_CATEGORY_NAME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364732455990502016)
,p_name=>'P228_MAIN_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E0A\62A5\90E8\95E8\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364732870639502016)
,p_name=>'P228_MAP_AREA_Y_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\7EBF\522B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364733332548502016)
,p_name=>'P228_EVENT_PHENOMENON_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E8B\4EF6\73B0\8C61\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364733698576502016)
,p_name=>'P228_AUDIT_STATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\72B6\6001\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364734113023502015)
,p_name=>'P228_MAP_AREA_X_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\5DE5\6BB5\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364734514883502015)
,p_name=>'P228_DESCRIPTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_prompt=>unistr('\4E8B\4EF6\63CF\8FF0\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364734923304502015)
,p_name=>'P228_IMAGES_URLS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364735332631502015)
,p_name=>'P228_FAB_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364735687596502015)
,p_name=>'P228_TEMP_MAIN_ORG_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364736069723502015)
,p_name=>'P228_TEMP_MAIN_ORG_NAME'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364736526699502014)
,p_name=>'P228_ROW_COUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364736908596502014)
,p_name=>'P228_STATUS'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364737260810502014)
,p_name=>'P228_PAGE_ID'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364737719103502014)
,p_name=>'P228_EVENT_DATAS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364738051708502014)
,p_name=>'P228_DEVICE_NAME'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364738443438502013)
,p_name=>'P228_DEVICE_CODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364738914865502013)
,p_name=>'P228_SUBMIT_EXT_ORG_NAME'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364739287828502013)
,p_name=>'P228_EVENT_MESSAGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364739735695502013)
,p_name=>'P228_ACTIVE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364740091318502013)
,p_name=>'P228_AUDIT_TYPE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364740529908502013)
,p_name=>'P228_CREATED_BY'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364740934160502012)
,p_name=>'P228_AUDIT_TITLE_TMP'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_imp.id(2789968251995013819)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364742195672502010)
,p_name=>'P228_MAIN_RESPONSIBLE_USER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\4E3B\8D1F\8D23\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and EXT_ORG_ID=:P228_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P228_TEMP_MAIN_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364742639033502010)
,p_name=>'P228_SECOND_EVENT_CATEGORY_NAME2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\4E8B\4EF6\5C0F\7C7B\FF1A')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN',
  'send_on_page_submit', 'N',
  'show_line_breaks', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364742994535502010)
,p_name=>'P228_ABNORMAL_ANALYSIS_USER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\5F02\5E38\5206\6790\4EBA\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'') and EXT_ORG_ID=:P228_TEMP_MAIN_ORG_ID;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P228_TEMP_MAIN_ORG_ID'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364743371496502010)
,p_name=>'P228_CREATED_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\4E0A\62A5\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364743795585502010)
,p_name=>'P228_SECONDARY_USER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\534F\52A9\4EBA\5458\FF1A')
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>'select name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'');'
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'case_sensitive', 'N',
  'display_as', 'POPUP',
  'fetch_on_search', 'N',
  'initial_fetch', 'FIRST_ROWSET',
  'manual_entry', 'N',
  'match_type', 'CONTAINS',
  'min_chars', '0')).to_clob
,p_multi_value_type=>'SEPARATED'
,p_multi_value_separator=>','
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364744172449502009)
,p_name=>'P228_FAULT_TIME'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\6545\969C\5F00\59CB\65F6\95F4\FF1A')
,p_format_mask=>'YYYY-MM-DD HH24:MI:SS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364744545118502009)
,p_name=>'P228_END_TIME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\6545\969C\7ED3\675F\65F6\95F4\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364745016775502009)
,p_name=>'P228_AUDIT_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\4E8B\4EF6\540D\79F0\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>4
,p_grid_column=>1
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364745390255502009)
,p_name=>'P228_DEPT_MANAGER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_prompt=>unistr('\90E8\95E8\7ECF\7406\FF1A')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>4
,p_grid_column=>5
,p_grid_label_column_span=>1
,p_field_template=>wwv_flow_imp.id(2302106782163836226)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--large'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364745831103502009)
,p_name=>'P228_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364746196756502008)
,p_name=>'P228_TEMP_MAIN_RESPONSIBLE_USER_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364746596464502008)
,p_name=>'P228_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364747023278502008)
,p_name=>'P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364747411112502008)
,p_name=>'P228_TEMP_P228_SECONDARY_USER_IDS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364747751184502008)
,p_name=>'P228_TEMP_P228_SECONDARY_USER_NAMES'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364748234234502008)
,p_name=>'P228_AUDIT_OPINION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2364748615801502007)
,p_name=>'P228_AUDIT_USER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_imp.id(2789980167455019315)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2364748952769501997)
,p_name=>unistr('\521D\59CB\5316')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364749461155501996)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>1
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#abnormal_description_div_heading'').css({''color'':''red''});'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364750028362501996)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg        nvarchar2(2000);',
'    v_audit_state    nvarchar2(32);',
'    v_submit_user_id nvarchar2(32);',
'    v_ext_user_id    number(20);',
'begin',
'    select AUDIT_STATE, SUBMIT_USER_ID',
'    into v_audit_state,v_submit_user_id',
'    from TENANT_EVENT_ANALYZE',
'    where EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and TENANT_ID = :USERTENANT',
'      and DEL_FLAG = 0',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    select max(u.EXT_USER_ID)',
'    into v_ext_user_id',
'    from TENANT_EVENT e',
'             inner join TENANT_EVENT_FOLLOW_USERS u on e.EVENT_ID = u.EVENT_ID and USER_IDENTITY = ''MAIN''',
'    where e.EVENT_ID = :P228_EVENT_ID',
'      and e.TENANT_ID = :USERTENANT',
'      and u.EXT_ORG_ID = e.MAIN_ORG_ID',
'       AND e.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    if v_submit_user_id = :user_id or v_ext_user_id = :user_id then',
'        apex_util.set_session_state(''P228_IS_SHOW'', 1);',
'    else',
'        apex_util.set_session_state(''P228_IS_SHOW'', 0);',
'    end if;',
'',
'    apex_util.set_session_state(''P228_STATUS'', v_audit_state);',
'',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P228_EVENT_ID,P228_EVENT_ANALYZE_ID,P228_STATUS'
,p_attribute_03=>'P228_IS_SHOW,P228_STATUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364750540001501995)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(2647303654837595192)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866967512047680039)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>45
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(866967160342680036)
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    V_COUNT number(10) := 0;',
'begin',
'    select COUNT(1)',
'    into V_COUNT',
'    from TENANT_EVENT_ANALYZE',
'    where DEL_FLAG = 0',
'      and AUDIT_STATE = ''COMPLETE''',
'      and SUBMIT_USER_ID = :USER_ID',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if V_COUNT > 0  then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866967342282680038)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>46
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(866967160342680036)
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    V_COUNT number(10) := 0;',
'begin',
'    select COUNT(1)',
'    into V_COUNT',
'    from TENANT_EVENT_ANALYZE',
'    where DEL_FLAG = 0',
'      and AUDIT_STATE = ''COMPLETE''',
'      and SUBMIT_USER_ID = :USER_ID',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if V_COUNT = 0  then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364750997383501995)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_NEW'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select AUDIT_USER_ID',
'from TENANT_EVENT_ANALYZE',
'where EVENT_ID = :P228_EVENT_ID',
'  and EVENT_ANALYZE_ID=:P228_EVENT_ANALYZE_ID',
'  and TENANT_ID = :USERTENANT',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID,P228_EVENT_ANALYZE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P228_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364751459825501994)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_device_name nvarchar2(256);',
'    v_device_code nvarchar2(256);',
'    v_row_count   number(10) := 0;',
'begin',
'',
'    select count(DEVICE_CODE)',
'    into v_row_count',
'    from BASIC_DEVICE',
'    where DEVICE_CODE =',
'          (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P228_EVENT_ID and e.TENANT_ID = :USERTENANT)',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    if v_row_count > 0 then',
'        select DEVICE_NAME, DEVICE_CODE',
'        into v_device_name,v_device_code',
'        from BASIC_DEVICE',
'        where DEVICE_CODE =',
'              (select e.DEVICE_CODE from TENANT_EVENT e where e.EVENT_ID = :P228_EVENT_ID and e.TENANT_ID = :USERTENANT)',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    else',
'        ',
'        ',
'        select max(DEVICE_CODE)',
'        into v_device_code',
'        from TENANT_EVENT',
'        where EVENT_ID = :P228_EVENT_ID',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    end if;',
'',
'',
'    apex_util.set_session_state(''P228_DEVICE_CODE'', v_device_code);',
'    apex_util.set_session_state(''P228_DEVICE_NAME'', v_device_name);',
'',
'end;',
''))
,p_attribute_02=>'P228_EVENT_ID'
,p_attribute_03=>'P228_DEVICE_NAME,P228_DEVICE_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364751964578501994)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_data clob;',
'',
'begin',
'    select',
'                   json_arrayagg(',
'                           json_object(',
'                                   key ''eventMessageBoardId'' value EVENT_MESSAGE_BOARD_ID,',
'                                   key ''updateDate'' value UPDATE_DATE,',
'                                   key ''eventId'' value EVENT_ID,',
'                                   key ''extUserId'' value EXT_USER_ID,',
'                                   key ''syncUserId'' value SYNC_USER_ID,',
'                                   key ''extOrgId'' value EXT_ORG_ID,',
'                                   key ''extOrgName'' value ext_org_name,',
'                                   key ''name'' value NAME,',
'                                   key ''jobNumber'' value JOB_NUMBER,',
'                                   key ''avatar'' value AVATAR,',
'                                   key ''mobile'' value MOBILE,',
'                                   key ''isLeave'' value IS_LEAVE,',
'                                   key ''content'' value CONTENT,',
'                                   key ''type'' value TYPE,',
'                                   key ''imagesUrl'' value IMAGES_URL',
'                               ) returning clob',
'                       ) into v_data',
'    from (',
'             select m.EVENT_MESSAGE_BOARD_ID,',
'                    m.CREATED_BY,',
'                   to_char( m.UPDATE_DATE,''YYYY-MM-DD hh24:mi:ss'') as UPDATE_DATE,',
'                    m.EVENT_ID,',
'                    m.TENANT_ID,',
'                    m.EXT_USER_ID,',
'                    f.EXT_ORG_ID,',
'                    SELECT_DEPT_NAME(f.EXT_ORG_ID) ext_org_name,',
'                    u.JOB_NUMBER,',
'                    u.SYNC_USER_ID,',
'                    u.NAME,',
'                    u.AVATAR,',
'                    u.MOBILE,',
'                    u.IS_LEAVE,',
'                    m.CONTENT,',
'                    m.TYPE,',
'                    m.IMAGES_URL',
'             from TENANT_EVENT_MESSAGE_BOARD m',
'                      left join TENANT_EVENT_FOLLOW_USERS f on m.EVENT_ID = f.EVENT_ID and f.EXT_USER_ID=m.EXT_USER_ID',
'                      left join MPF_SHARE_USER_V u on u.EXT_USER_ID = m.EXT_USER_ID',
'             where m.EVENT_ID = :P228_EVENT_ID AND m.BASE_DEPT_ID=:BASE_DEPT_ID',
'             order by m.CREATION_DATE',
'         );',
'',
'    apex_util.set_session_state(''P228_EVENT_MESSAGE'',v_data);',
'end;'))
,p_attribute_02=>'P228_EVENT_ID'
,p_attribute_03=>'P228_EVENT_MESSAGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364752510525501994)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_AUDIT_OPINION'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select max(AUDIT_OPINION)',
'from TENANT_EVENT_ANALYZE',
'where EVENT_ID = :P228_EVENT_ID',
'  and EVENT_ANALYZE_ID=:P228_EVENT_ANALYZE_ID',
'  and TENANT_ID = :USERTENANT',
'  and AUDIT_STATE IN (''COMPLETE'', ''REJECT'')',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ANALYZE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364752967318501993)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_SECONDARY_USER,P228_AUDIT_USER,P228_WHY5_ANALYSIS_CONTENT,P228_PROCESS_ANALYSIS_CONTENT,P228_FUNCTION_NAME_CONTENT,P228_STRUCTURAL_PRINCIPLE_CONTENT,P228_ABNORMAL_PROBLEM_CONTENT,P228_IMPROVE_METHOD_CONTENT,P228_DEVICE_KEY_CONTENT,P228_DAILY_MAI'
||'NTAIN_CONTENT'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364753538333501993)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_IMAGES_URLS'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select IMAGES_URL',
'from TENANT_EVENT where EVENT_ID=:P228_EVENT_ID and TENANT_ID=V(''USERTENANT'')',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364753999584501993)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_P228_SECONDARY_USER_IDS,P228_TEMP_P228_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select listagg(v.EXT_USER_ID, '','') as ids, listagg(v.NAME, '','') as names',
'from TENANT_EVENT_FOLLOW_USERS e',
'         inner join MPF_USER_DEPT_MAIN_ASSO_V v on e.EXT_USER_ID = v.EXT_USER_ID',
'where e.EVENT_ID = :P228_EVENT_ID',
'  and e.USER_IDENTITY = ''MAIN''',
'  and e.TENANT_ID = :USERTENANT',
'  AND e.BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364754526917501993)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_EVENT_SERIAL_NO,P228_FIRST_EVENT_CATEGORY_NAME,P228_SUBMIT_NAME,P228_FAB_NAME,P228_SECOND_EVENT_CATEGORY_NAME,P228_MAP_AREA_Y_NAME,P228_EVENT_PHENOMENON_NAME,P228_MAP_AREA_X_NAME,P228_DESCRIPTION_HIDE,P228_TEMP_MAIN_ORG_ID,P228_END_TIME,P228_FAU'
||'LT_TIME,P228_CREATED_TIME,P228_DEPT_MANAGER,P228_TEMP_MAIN_ORG_NAME,P228_FAB_ID,P228_SECOND_EVENT_CATEGORY_NAME2,P228_AUDIT_NAME,P228_AUDIT_TITLE_TMP'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select EVENT_SERIAL_NO,',
'       FIRST_EVENT_CATEGORY_NAME,',
'       SUBMIT_NAME,',
'       FAB_NAME,',
'       SECOND_EVENT_CATEGORY_NAME,',
'       MAP_AREA_Y_NAME,',
'       EVENT_PHENOMENON_NAME,',
'       MAP_AREA_X_NAME,',
'       DESCRIPTION,',
'       MAIN_ORG_ID,',
'       to_char(END_TIME ,''YYYY-MM-DD HH24:MI:SS'') as END_TIME,',
'       to_char(BEGIN_TIME ,''YYYY-MM-DD HH24:MI:SS'') as BEGIN_TIME,',
'       to_char(BEGIN_TIME ,''YYYY-MM-DD HH24:MI:SS'') as create_time,',
'       select_dept_manager(FAB_ID,MAIN_ORG_ID,:BASE_DEPT_ID),',
'       MAIN_ORG_NAME,',
'       FAB_ID,',
'       SECOND_EVENT_CATEGORY_NAME as SECOND_EVENT_CATEGORY_NAME2,',
'       NVL(AUDIT_NAME,FIRST_EVENT_CATEGORY_NAME||SECOND_EVENT_CATEGORY_NAME||EVENT_PHENOMENON_NAME) AUDIT_NAME,',
'       FIRST_EVENT_CATEGORY_NAME||SECOND_EVENT_CATEGORY_NAME||EVENT_PHENOMENON_NAME AUDIT_TITLE',
'from TENANT_EVENT_ANALYZE_V',
'where TENANT_ID = V(''USERTENANT'')',
'  and EVENT_ID = :P228_EVENT_ID  ',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P228_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364754996060501992)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_MAIN_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  SUBMIT_EXT_ORG_NAME',
'from TENANT_EVENT_V',
'where TENANT_ID = V(''USERTENANT'') ',
'  and EVENT_ID = :P228_EVENT_ID',
'   AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'ITEM_IS_NOT_NULL'
,p_server_condition_expr1=>'P228_EVENT_ID'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364755487666501992)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_MAIN_RESPONSIBLE_USER_NAME,P228_TEMP_MAIN_RESPONSIBLE_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_SHARE_USER_V u on f.EXT_USER_ID = u.EXT_USER_ID',
'where f.EVENT_ID = :P228_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  AND f.BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364756035970501992)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_AUDIT_TITLE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ANALYZE_TITLE',
'      FROM TENANT_EVENT_ANALYZE',
'     WHERE TENANT_ID = V(''USERTENANT'')',
'        and EVENT_ANALYZE_ID=:P228_EVENT_ANALYZE_ID',
'       AND EVENT_ID = :P228_EVENT_ID',
'        AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_EVENT_ID,P228_EVENT_ANALYZE_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364756457048501992)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P228_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select EXT_ORG_NAME  ||''-''|| name ,EXT_USER_ID from MPF_USER_DEPT_MAIN_ASSO_V ',
'where TENANT_ID=V(''USERTENANT'')',
' and EXT_USER_ID =:P228_ABNORMAL_ANALYSIS_USER',
'  AND BASE_DEPT_ID=:BASE_DEPT_ID ;'))
,p_attribute_07=>'P228_ABNORMAL_ANALYSIS_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364757009299501992)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_P228_SECONDARY_USER_IDS,P228_TEMP_P228_SECONDARY_USER_NAMES'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  listagg(EXT_USER_ID,'',''),listagg( name,'','')  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'')',
'and EXT_USER_ID in (select * from table(SPLITSTR(:P228_SECONDARY_USER,'','')))',
' AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_SECONDARY_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364757469773501991)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_AUDIT_USER_ID,P228_TEMP_AUDIT_USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  EXT_USER_ID,EXT_ORG_NAME || ''-'' || name  from MPF_USER_DEPT_MAIN_ASSO_V where TENANT_ID=V(''USERTENANT'')',
'and EXT_USER_ID =:P228_AUDIT_USER ',
' AND BASE_DEPT_ID=:BASE_DEPT_ID;'))
,p_attribute_07=>'P228_AUDIT_USER'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364758023641501991)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>190
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\6E32\67D3\56FE\7247')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#P228_LIVE_PICTURES'').attr(''url'', '''');',
'function create_images(images, static_id) {',
'    if (images) {',
'',
'        var arr_image = images.split('','');',
'        for (var i = 0; i < arr_image.length; i < i++) {',
'',
'            var img = new Image();',
'            img.src = arr_image[i];',
'            img.width = 150;',
'            $(img).css(''padding-left'', ''20px'');',
'            $("#" + static_id).find(''div'').remove();',
'            $("#" + static_id).append(img);',
'        }',
'',
'    }',
'}',
'',
'',
'if ($v(''P228_STATUS'') != ''WAIT'') {',
'    apex.item(''P228_ABNORMAL_ANALYSIS_USER'').setValue($v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'    apex.item(''P228_SECONDARY_USER'').setValue($v(''P228_TEMP_P228_SECONDARY_USER_IDS'').split('',''), $v(''P228_TEMP_P228_SECONDARY_USER_NAMES'').split('',''), true);',
'    ',
'}',
'',
'apex.item(''P228_MAIN_RESPONSIBLE_USER'').setValue($v(''P228_TEMP_MAIN_RESPONSIBLE_USER_ID''), $v(''P228_TEMP_MAIN_RESPONSIBLE_USER_NAME''), true);',
'apex.item(''P228_SECONDARY_USER'').setValue($v(''P228_TEMP_P228_SECONDARY_USER_IDS'').split('',''), $v(''P228_TEMP_P228_SECONDARY_USER_NAMES'').split('',''), true);'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364758446108501991)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>200
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME,P228_TEMP_ABNORMAL_ANALYSIS_USER_ID'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select  u.NAME ,f.EXT_USER_ID',
'from TENANT_EVENT_FOLLOW_USERS f',
'         left join MPF_USER_DEPT_MAIN_ASSO_V u on f.EXT_USER_ID = u.EXT_USER_ID',
'where f.EVENT_ID = :P228_EVENT_ID',
'  and f.IS_FINAL_HANDLER = 1',
'  and f.TENANT_ID = V(''USERTENANT'')',
'  and u.TENANT_ID = V(''USERTENANT'')',
'  and f.BASE_DEPT_ID = V(''BASE_DEPT_ID'');'))
,p_attribute_07=>'P228_EVENT_ID'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364758951624501991)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>210
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v(''P228_STATUS'') == ''WAIT'') {',
'',
'    // apex.item(''P228_ABNORMAL_ANALYSIS_USER'').setValue($v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_ID'').split('',''), $v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME'').split('',''), true);',
'    apex.item(''P228_ABNORMAL_ANALYSIS_USER'').setValue($v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_ID''), $v(''P228_TEMP_ABNORMAL_ANALYSIS_USER_NAME''), true);',
'',
'}'))
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_server_condition_expr1=>'P228_STATUS'
,p_server_condition_expr2=>'WAIT'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364759518255501990)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>220
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6676\8C79\65E5\5FD71')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'new Vue({',
'    el: ''#eventImgView'', ',
'    data: {},',
'    computed: {',
'        messageList() {',
'            console.log($v(''P228_IMAGES_URLS''))',
'            return $v(''P228_IMAGES_URLS'')',
'        }',
'    },',
'    methods: {',
'',
'        doImageList(imagesStr) {',
'            return imagesStr.split('','')',
'        }',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364760030723501990)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>230
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6676\8C79\65E5\5FD72')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'const resultsDom = document.getElementById(''results'')',
'// console.log(resultsDom)',
'// console.log($v(''P228_AUDIT_OPINION''))',
'if (resultsDom) {',
'    resultsDom.innerHTML = $v(''P228_AUDIT_OPINION'')',
'}',
'',
'new Vue({',
unistr('    el: ''#messageView'', //el\7528\4E8E\6307\5B9A\5F53\524DVue\5B9E\4F8B\4E3A\54EA\4E2A\5BB9\5668\670D\52A1\FF0C\503C\901A\5E38\4E3A\9009\62E9\5668\5B57\7B26\4E32\3002'),
unistr('    data: { //data\4E2D\7528\4E8E\5B58\50A8\6570\636E\FF0C\6570\636E\4F9Bel\6240\6307\5B9A\7684\5BB9\5668\53BB\4F7F\7528\3002'),
'        // messageList: JSON.parse($v(''P228_EVENT_MESSAGE''))',
'    },',
'    computed: {',
'        messageList() {',
'            const messageList = JSON.parse($v(''P228_EVENT_MESSAGE''))',
'            for (let i = 0; i < messageList.length - 1; i++) {',
'                for (let j = 0; j < messageList.length - 1 - i; j++) {',
'                    let value = {}',
'                    if (messageList[j].eventMessageBoardId > messageList[j + 1].eventMessageBoardId) {',
'                        value = messageList[j]',
'                        messageList[j] = messageList[j + 1]',
'                        messageList[j + 1] = value',
'                    }',
'                }',
'            }',
'            return messageList',
'        }',
'    },',
'    methods: {',
'        leaveAvatar(isLeave) {',
'            return isLeave ? ''departure'' : ''''',
'        },',
'',
'        leaveName(isLeave, name) {',
unistr('            return isLeave ? `${name}(\5DF2\79BB\804C)` : name'),
'        },',
'',
'',
'        userHead(avatar, name) {',
'            if (avatar !== null) return avatar',
unistr('            const avatarText = name ? name : ''\4F5A\540D'''),
'            const bg = ''RGB(51, 150, 251)''',
'            const w = 96',
'            const h = 96',
'            const can = document.createElement(''canvas'')',
'            can.width = w',
'            can.height = h',
'            const _ctxt = can.getContext(''2d'')',
'            _ctxt.fillStyle = bg',
'            _ctxt.fillRect(0, 0, w, h)',
unistr('            _ctxt.font = ''bold 35px \82F9\65B9'''),
'            _ctxt.fillStyle = ''#FFF''',
'            _ctxt.textAlign = ''center''',
'            _ctxt.textBaseline = ''middle''',
'            _ctxt.fillText(avatarText.slice(-2), w / 2, h / 2)',
'            return can.toDataURL()',
'        },',
'',
'        doImageList(imagesStr) {',
'            return imagesStr.split('','')',
'        }',
'    }',
'})',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364760466559501990)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>240
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P228_ABNORMAL_ANALYSIS_USER'
,p_build_option_id=>-wwv_flow_imp.id(2146244333585926365)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364761010235501990)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>250
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\5224\65AD\662F\5426\7981\7528\586B\5199')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var audit = [''REJECT'', ''WAIT'']',
'if ($v(''P228_IS_SHOW'') == 0 || audit.indexOf($v(''P228_STATUS'')) == -1) {',
unistr('    $(''.apex-item-group--popup-lov'').addClass(''apex_disabled''); // \7981\7528LOV'),
'    $(''#P228_ANALYSIS_REPORT_IMAGES_DROPZONE'').hide();',
'',
unistr('    $(''input[type="file"]'').attr(''disabled'', ''disabled'')//\628A\56FE\7247\4E0A\4F20\7981\7528'),
unistr('    $(''input[type="text"]'').attr(''readonly'', ''true''); // \628A\8F93\5165\6846\7981\7528'),
unistr('    $(''input[type="input"]'').attr(''readonly'', ''true''); // \628A\8F93\5165\6846\7981\7528'),
unistr('    $(''textarea'').prop(''disabled'', ''true''); // \628A\5185\5BB9\6846\7981\7528'),
'    $("a[title=''Removing tag'']").attr(''style'', ''display:none'');',
'',
'    $(''#user_input_div'').hide();',
'',
'}',
'',
'',
'',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364761507483501989)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>260
,p_execute_on_page_init=>'Y'
,p_name=>unistr('\56DE\663E\586B\5199\503C 1')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg              nvarchar2(2000);',
'    v_abnormal_description nvarchar2(2000);',
'    v_analysis_report      nvarchar2(2000);',
'    v_improvement_measures nvarchar2(2000);',
'',
'',
'begin',
'',
'    select max(ITEM_VALUE)',
'    into v_abnormal_description',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and ITEM_NAME = ''ABNORMAL_DESCRIPTION''',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    select max(ITEM_VALUE)',
'    into v_improvement_measures',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and ITEM_NAME = ''IMPROVEMENT_MEASURES''',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    select max(ITEM_VALUE)',
'    into v_analysis_report',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and ITEM_NAME = ''ANALYSIS_REPORT''',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'',
'    apex_util.set_session_state(''P228_ABNORMAL_DESCRIPTION'', v_abnormal_description);',
'    apex_util.set_session_state(''P228_IMPROVEMENT_MEASURES'', v_improvement_measures);',
'    apex_util.set_session_state(''P228_ANALYSIS_REPORT_IMAGES_HIDE'', v_analysis_report);',
'',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P'' || :APP_PAGE_ID || '':'' || :APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,',
'                     :APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P228_EVENT_ANALYZE_ID'
,p_attribute_03=>'P228_ABNORMAL_DESCRIPTION,P228_IMPROVEMENT_MEASURES,P228_ANALYSIS_REPORT_IMAGES_HIDE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364763034134501988)
,p_event_id=>wwv_flow_imp.id(2364748952769501997)
,p_event_result=>'TRUE'
,p_action_sequence=>290
,p_execute_on_page_init=>'Y'
,p_name=>unistr('js\56DE\663E\586B\5199\503C 4')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// $(''#P228_ANALYSIS_REPORT_IMAGES'').attr(''url'', $v(''P228_ANALYSIS_REPORT_IMAGES_HIDE''));',
'$(''#files'').attr(''url'', $v(''P228_ANALYSIS_REPORT_IMAGES_HIDE''));',
'var arr1_imgs = $v(''P228_ANALYSIS_REPORT_IMAGES_HIDE'').split('','');',
'$(''.t-Form-itemWrapper'').attr(''style'', ''display: block !important'');',
'',
'var imgDom;',
'',
'function create_imgs(arr1_img, item) {',
'    for (var i = 0; i < arr1_img.length; i++) {',
'        if (arr1_img[i]) {',
'            var audit = [''REJECT'', ''WAIT'']',
'            if ($v(''P228_IS_SHOW'') == 0 || audit.indexOf($v(''P228_STATUS'')) == -1) {',
'                var f_name = get_fileName(arr1_img[i]);',
'                if (/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(arr1_img[i])) {',
unistr('                    imgDom = `<br><div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${arr1_img[i]}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
'            &nbsp;&nbsp;<img src="${arr1_img[i]}" onclick="openImg(''${arr1_img[i]}'')" width="150px" alt="">',
'            </div>`;',
'                } else {',
'                    // $(''#P228_ANALYSIS_REPORT_IMAGES'').hide();',
'                    $(''#files'').hide();',
unistr('                    imgDom = `<br><div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${arr1_img[i]}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
'            &nbsp;&nbsp;<span>${f_name}</span>',
'            </div>`;',
'                }',
'',
'            } else {',
'                var f_name = get_fileName(arr1_img[i]);',
'                if (/\.(gif|jpg|jpeg|png|GIF|JPG|PNG)$/.test(arr1_img[i])) {',
unistr('                    imgDom = `<br><div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${arr1_img[i]}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
unistr('            &nbsp;&nbsp;<a onclick="del_file(''${$(item).attr(''id'')}'',''${arr1_img[i]}'',this)">\5220\9664</a>'),
'            &nbsp;&nbsp;<img src="${arr1_img[i]}" onclick="openImg(''${arr1_img[i]}'')" width="150px" alt="">',
'            </div>`;',
'                } else {',
'                    // $(''#P228_ANALYSIS_REPORT_IMAGES'').hide();',
'                    // $(''#files'').hide();',
unistr('                    imgDom = `<br><div id="a_file${i}">  <a href="javascript:void(0)"   onclick="fileDownload(''${arr1_img[i]}'',''${f_name}'')">\4E0B\8F7D\6587\4EF6</a>'),
unistr('            &nbsp;&nbsp;<a onclick="del_file(''${$(item).attr(''id'')}'',''${arr1_img[i]}'',this)">\5220\9664</a>'),
'            &nbsp;&nbsp;<span>${f_name}</span>',
'            </div>`;',
'                }',
'',
'            }',
'            $(item).after(imgDom);',
'        }',
'',
'    }',
'}',
'',
'',
'// create_imgs(arr1_imgs, ''#P228_ANALYSIS_REPORT_IMAGES'');',
'create_imgs(arr1_imgs, ''#files'');',
'',
''))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2364763370813501988)
,p_name=>unistr('\63D0\4EA4\9A8C\8BC1')
,p_event_sequence=>30
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2364728999610502019)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364766394799501986)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>unistr('\53C2\6570\6821\9A8C1')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'// var img1 = $(''#P228_ANALYSIS_REPORT_IMAGES'').attr(''url'');',
'var img1 = $(''#files'').attr(''url'');',
'console.log("image:"+img1)',
'// $s(''P228_ANALYSIS_REPORT_IMAGES'',img1)',
'',
'$s(''P228_ANALYSIS_REPORT_IMAGES_HIDE'', img1);',
'',
'if (utils.checkNull($v(''P228_ABNORMAL_DESCRIPTION''))) {',
unistr('    alert(''\5F02\5E38\95EE\9898\63CF\8FF0\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'',
'if (utils.checkNull($v(''P228_IMPROVEMENT_MEASURES''))) {',
unistr('    alert(''\89E3\51B3\63AA\65BD\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P228_ANALYSIS_REPORT_IMAGES_HIDE''))) {',
unistr('    alert(''\5206\6790\62A5\544A\9644\4EF6\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
'if (utils.checkNull($v(''P228_NEW''))) {',
unistr('    alert(''\5BA1\6838\4EBA\4E0D\80FD\4E3A\7A7A'');'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364767384492501985)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_name=>unistr('\4FEE\6539\72B6\6001')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg             nvarchar2(2000);',
'    v_analyze_template_id number(10);',
'    ',
'begin',
'',
'',
'    update TENANT_EVENT_ANALYZE',
'    set AUDIT_STATE=''AUDIT'',',
'        ANALYZE_TITLE=:P228_AUDIT_NAME,',
'        MAIN_RESPONSIBLE_USER_ID=:P228_MAIN_RESPONSIBLE_USER,',
'        ABNORMAL_ANALYSIS_USER_ID=:P228_ABNORMAL_ANALYSIS_USER,',
'        SECONDARY_USER_ID=:P228_SECONDARY_USER,',
'        AUDIT_USER_ID=:P228_NEW,',
'        SUBMIT_USER_ID=:USER_ID,',
'        CREATED_BY=:USER_ID,',
'        UPDATED_BY=:USER_ID,',
'        UPDATE_DATE=sysdate',
'    where EVENT_ID = :P228_EVENT_ID',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and TENANT_ID = :USERTENANT',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
unistr('     -- \67E5\8BE2\6A21\677F'),
'    select org.ANALYZE_TEMPLATE_ID into v_analyze_template_id',
'    from TENANT_EVENT_ANALYZE a',
'             left join TENANT_ANALYZE_TEMPLATE_ORG org',
'                       on a.ANALYZE_TEMPLATE_ORG_ID = org.ANALYZE_TEMPLATE_ORG_ID and org.TENANT_ID = :USERTENANT',
'    where a.EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'      and a.TENANT_ID = :USERTENANT',
'      and a.DEL_FLAG = 0',
'       AND a.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'    apex_util.set_session_state(''P228_FLAG'', ''success'');',
'    apex_util.set_session_state(''P228_ANALYZE_TEMPLATE_ID'', v_analyze_template_id);',
'    commit;',
'',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P228_FLAG'', ''error'');',
'        rollback;',
'end;'))
,p_attribute_02=>'P228_MAIN_RESPONSIBLE_USER,P228_ABNORMAL_ANALYSIS_USER,P228_SECONDARY_USER,P228_NEW,P228_EVENT_ID,P228_EVENT_ANALYZE_ID,P228_AUDIT_NAME'
,p_attribute_03=>'P228_FLAG,P228_ANALYZE_TEMPLATE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364767906895501985)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5199\5165 P238_ABNORMAL_DESCRIPTION')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg             nvarchar2(2000);',
'    v_item_value_id       nvarchar2(20);',
'    v_item_id             number(20);',
'    v_item_name           nvarchar2(128);',
'begin',
'',
unistr('    -- \6839\636E\9879\540D\79F0\67E5\8BE2 item ID'),
'',
'    select ITEM_ID, ITEM_NAME',
'    into v_item_id,v_item_name',
'    from TENANT_ANALYZE_TEMPLATE_ITEM',
'    where ANALYZE_TEMPLATE_ID = :P228_ANALYZE_TEMPLATE_ID',
'      and ITEM_NAME = ''ABNORMAL_DESCRIPTION''',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
unistr('    -- \5224\65AD\6570\636E\662F\5426\5B58\5728'),
'    select max(ITEM_VALUE_ID)',
'    into v_item_value_id',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where ITEM_ID = v_item_id',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_item_value_id is null then',
'        insert into TENANT_TEMPLATE_ITEM_VALUE(item_id, item_name, event_analyze_id, item_value, last_modify_user_id,',
'                                               created_by, updated_by, updated_date, tenant_id, BASE_DEPT_ID)',
'        values (v_item_id, v_item_name, :P228_EVENT_ANALYZE_ID, :P228_ABNORMAL_DESCRIPTION, :USER_ID, :USER_ID, null, null, :USERTENANT, :BASE_DEPT_ID);',
'    else',
'        update TENANT_TEMPLATE_ITEM_VALUE',
'        set ITEM_NAME=v_item_name,',
'            ITEM_VALUE=:P228_ABNORMAL_DESCRIPTION,',
'            LAST_MODIFY_USER_ID=:USER_ID,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where ITEM_VALUE_ID = v_item_value_id',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    end if;',
'    apex_util.set_session_state(''P228_FLAG'', ''success'');',
'    commit;',
'exception',
'    when others then',
'        apex_error.add_error (',
unistr('                p_message          => ''\7CFB\7EDF\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458!'','),
'                p_ignore_ora_error=> true,',
'                p_display_location => apex_error.c_on_error_page );',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P228_FLAG'', ''error'');',
'        rollback;',
'end;'))
,p_attribute_02=>'P228_EVENT_ANALYZE_ID,P228_FLAG,P228_ANALYZE_TEMPLATE_ID,P228_ABNORMAL_DESCRIPTION'
,p_attribute_03=>'P228_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364770909385501983)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5199\5165 P238_IMPROVEMENT_MEASURES')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg             nvarchar2(2000);',
'    v_item_value_id       nvarchar2(20);',
'    v_item_id             number(20);',
'    v_item_name           nvarchar2(128);',
'begin',
'',
unistr('    -- \6839\636E\9879\540D\79F0\67E5\8BE2 item ID'),
'',
'    select ITEM_ID, ITEM_NAME',
'    into v_item_id,v_item_name',
'    from TENANT_ANALYZE_TEMPLATE_ITEM',
'    where ANALYZE_TEMPLATE_ID = :P228_ANALYZE_TEMPLATE_ID',
'      and ITEM_NAME = ''IMPROVEMENT_MEASURES''',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
unistr('    -- \5224\65AD\6570\636E\662F\5426\5B58\5728'),
'    select max(ITEM_VALUE_ID)',
'    into v_item_value_id',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where ITEM_ID = v_item_id',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_item_value_id is null then',
'        insert into TENANT_TEMPLATE_ITEM_VALUE(item_id, item_name, event_analyze_id, item_value, last_modify_user_id,',
'                                               created_by, updated_by, updated_date, tenant_id, BASE_DEPT_ID)',
'        values (v_item_id, v_item_name, :P228_EVENT_ANALYZE_ID, :P228_IMPROVEMENT_MEASURES, :USER_ID, :USER_ID, null, null, :USERTENANT, :BASE_DEPT_ID);',
'    else',
'        update TENANT_TEMPLATE_ITEM_VALUE',
'        set ITEM_NAME=v_item_name,',
'            ITEM_VALUE=:P228_IMPROVEMENT_MEASURES,',
'            LAST_MODIFY_USER_ID=:USER_ID,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where ITEM_VALUE_ID = v_item_value_id',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    end if;',
'    apex_util.set_session_state(''P228_FLAG'', ''success'');',
'    commit;',
'exception',
'    when others then',
'        apex_error.add_error (',
unistr('                p_message          => ''\7CFB\7EDF\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458!'','),
'                p_ignore_ora_error=> true,',
'                p_display_location => apex_error.c_on_error_page );',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P228_FLAG'', ''error'');',
'        rollback;',
'end;'))
,p_attribute_02=>'P228_EVENT_ANALYZE_ID,P228_FLAG,P228_ANALYZE_TEMPLATE_ID,P228_IMPROVEMENT_MEASURES'
,p_attribute_03=>'P228_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364771380838501983)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_name=>unistr('\5199\5165 P228_ANALYSIS_REPORT_IMAGES_HIDE')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg             nvarchar2(2000);',
'    v_item_value_id       nvarchar2(20);',
'    v_item_id             number(20);',
'    v_item_name           nvarchar2(128);',
'begin',
'',
unistr('    -- \6839\636E\9879\540D\79F0\67E5\8BE2 item ID'),
'',
'    select ITEM_ID, ITEM_NAME',
'    into v_item_id,v_item_name',
'    from TENANT_ANALYZE_TEMPLATE_ITEM',
'    where ANALYZE_TEMPLATE_ID = :P228_ANALYZE_TEMPLATE_ID',
'      and ITEM_NAME = ''ANALYSIS_REPORT''',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
unistr('    -- \5224\65AD\6570\636E\662F\5426\5B58\5728'),
'    select max(ITEM_VALUE_ID)',
'    into v_item_value_id',
'    from TENANT_TEMPLATE_ITEM_VALUE',
'    where ITEM_ID = v_item_id',
'      and EVENT_ANALYZE_ID = :P228_EVENT_ANALYZE_ID',
'       AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    if v_item_value_id is null then',
'        insert into TENANT_TEMPLATE_ITEM_VALUE(item_id, item_name, event_analyze_id, item_value, last_modify_user_id,',
'                                               created_by, updated_by, updated_date, tenant_id, BASE_DEPT_ID)',
'        values (v_item_id, v_item_name, :P228_EVENT_ANALYZE_ID, :P228_ANALYSIS_REPORT_IMAGES_HIDE, :USER_ID, :USER_ID, null, null, :USERTENANT, :BASE_DEPT_ID);',
'    else',
'        update TENANT_TEMPLATE_ITEM_VALUE',
'        set ITEM_NAME=v_item_name,',
'            ITEM_VALUE=:P228_ANALYSIS_REPORT_IMAGES_HIDE,',
'            LAST_MODIFY_USER_ID=:USER_ID,',
'            UPDATED_BY=:USER_ID,',
'            UPDATED_DATE=sysdate',
'        where ITEM_VALUE_ID = v_item_value_id',
'          and TENANT_ID = :USERTENANT',
'           AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    end if;',
'    apex_util.set_session_state(''P228_FLAG'', ''success'');',
'    commit;',
'exception',
'    when others then',
'        apex_error.add_error (',
unistr('                p_message          => ''\7CFB\7EDF\5F02\5E38\FF0C\8BF7\8054\7CFB\7BA1\7406\5458!'','),
'                p_ignore_ora_error=> true,',
'                p_display_location => apex_error.c_on_error_page );',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'        apex_util.set_session_state(''P228_FLAG'', ''error'');',
'        rollback;',
'end;'))
,p_attribute_02=>'P228_EVENT_ANALYZE_ID,P228_FLAG,P228_ANALYZE_TEMPLATE_ID,P228_ANALYSIS_REPORT_IMAGES_HIDE'
,p_attribute_03=>'P228_FLAG'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364775872900501980)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_name=>unistr('\67E5\8BE2\901A\77E5\4EBA')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_user_id nvarchar2(64);',
'',
'begin',
unistr('	-- \67E5\8BE2\51FA\901A\77E5\7684\5BA1\6838\4EBA \5DE5\53F7'),
'  select JOB_NUMBER into v_user_id from MPF_SHARE_USER_V where EXT_USER_ID=:P228_NEW ;',
'  apex_util.set_session_state(''P228_USER_ID'', v_user_id);',
'end;'))
,p_attribute_02=>'P228_NEW'
,p_attribute_03=>'P228_USER_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364763895935501987)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_name=>unistr('\9489\9489\901A\77E5\5BA1\6838')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_err_msg         nvarchar2(2000);',
'    v_text            nvarchar2(2000);',
'    v_date            nvarchar2(256) := to_char(sysdate, ''yyyy-mm-dd hh24:mi:ss'');',
'    v_submit_is_leave nvarchar2(256);',
'    v_event_serial_no nvarchar2(256);',
'    v_is_stop_line    nvarchar2(256);',
'    v_is_key_process  nvarchar2(256);',
'    v_code            nvarchar2(256);',
'    v_description     nvarchar2(512);',
'    v_position        nvarchar2(256);',
'    v_phenomenon      nvarchar2(256);',
'	V_LEVEL           nvarchar2(256);',
'	v_templateCode    nvarchar2(256);',
'	V_JINGBAO_URL     nvarchar2(256) := :JINGBAO_URL || ''#/questionDetails?eventId='' || :P228_EVENT_ID;',
'    v_url             nvarchar2(256) ;',
'    v_param           clob;',
'    v_clob            clob;',
'    v_count           number(10)     := 0;',
'	V_NAME            nvarchar2(256);',
'	V_JOB_NUMBER      nvarchar2(256);',
'begin',
'',
'    select e.SUBMIT_IS_LEAVE,',
'           e.EVENT_SERIAL_NO,',
'           e.IS_STOP_LINE,',
'           e.IS_KEY_PROCESS,',
unistr('           translate(nvl(e.DESCRIPTION, ''\65E0'') , chr(13) || chr(10) ||chr(9), '','')                                        as DESCRIPTION,'),
'           (FAB_NAME || ''-'' || MAP_AREA_Y_NAME || ''-'' || MAP_AREA_X_NAME) AS POSITION,',
'           (lib.FIRST_EVENT_CATEGORY_NAME || ''/'' || lib.SECOND_EVENT_CATEGORY_NAME || ''/'' ||',
'            lib.EVENT_PHENOMENON_NAME)                                    as PHENOMENON',
'    into v_submit_is_leave,v_event_serial_no,v_is_stop_line,v_is_key_process,v_description,v_position,v_phenomenon',
'    from TENANT_EVENT_V e',
'             left join TENANT_EVENT_LIBRARY_V lib',
'                       on e.FIRST_EVENT_CODE = lib.FIRST_EVENT_CATEGORY_CODE  and e.SECOND_EVENT_CODE = lib.SECOND_EVENT_CATEGORY_CODE   and e.PHENOMENON_CODE = lib.EVENT_PHENOMENON_CODE',
'             left join TENANT_EVENT_FOLLOW_USERS f',
'                       on f.EVENT_ID = e.EVENT_ID   and f.EXT_ORG_ID = e.MAIN_ORG_ID  and f.USER_IDENTITY = ''MAIN''',
'             left join MPF_USER_DEPT_MAIN_ASSO_V fu',
'                       on f.EXT_USER_ID = fu.EXT_USER_ID',
'             left join BASIC_DEVICE d',
'                       on e.DEVICE_CODE = d.DEVICE_CODE',
'    where e.EVENT_ID = :P228_EVENT_ID and e.TENANT_ID = :USERTENANT AND e.BASE_DEPT_ID=:BASE_DEPT_ID;',
'',
'	V_LEVEL := get_event_level(v_is_stop_line,v_is_key_process);',
unistr('    select decode(V_LEVEL,''1\7EA7'',''\91CD\5927'',''2\7EA7'',''\4E25\91CD'',''3\7EA7'',''\4E00\822C'',''4\7EA7'',''\8F7B\5FAE'') into v_text from dual;'),
unistr('    select decode(V_LEVEL,''1\7EA7'',''EVENT_BASIC_GREAT'',''2\7EA7'',''EVENT_BASIC_SEVERITY'',''3\7EA7'',''EVENT_BASIC_GENERAL'',''4\7EA7'',''EVENT_BASIC_SLIGHT'') into v_code from dual;'),
unistr('	select decode(V_LEVEL,''1\7EA7'',''JB-OPERATE-ONE'',''2\7EA7'',''JB-OPERATE-TWO'',''3\7EA7'',''JB-OPERATE-THREE'',''4\7EA7'',''JB-OPERATE-FOUR'') into v_templateCode from dual;'),
'	v_url :=:MPF_API_URL||''xin/apis/template/''||v_templateCode||''/send-ding-notify'';',
'',
'v_param := ''{',
'"isDesignateGroup": "FALSE",',
'"isDesignateUser": "TRUE",',
'"receiverGroupKeys": [],',
'"receiverUserKeys": ["'' || :P228_USER_ID || ''"],',
'"templateParams": {',
unistr('"title":"\2705\4E8B\4EF6\5BA1\6838\FF08#'' || v_event_serial_no || ''\FF09",'),
'"date":"'' || v_date || ''",',
'"phenomenon":"'' || v_phenomenon || ''",',
'"position":"'' || v_position ||  ''",',
'"describe":"'' || v_description || ''",',
unistr('"content":"\3010'' || :USERNAME || ''\3011\63D0\4EA4\4E86\4E8B\4EF6\590D\76D8\5BA1\6838\FF0C\8BF7\5C3D\5FEB\5B8C\6210\5BA1\6838",'),
'"url":"''||V_JINGBAO_URL||''"',
'}',
'}'';',
'',
'    ',
'    v_clob := JA_HTTP_REQUEST( v_url,''POST'', v_param);',
'    apex_util.set_session_state(''P228_CODE'', v_clob);',
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P228_EVENT_ID,P228_NEW,P228_USER_ID'
,p_attribute_03=>'P228_CODE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364764876528501987)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_name=>unistr('\64CD\4F5C\63D0\793A')
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'console.log(''data:'' + $v(''P228_CODE''));',
unistr('var msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'if ($v(''P228_CODE'')) {',
'    var datas = JSON.parse($v(''P228_CODE''));',
'    if (datas.code == 200) {',
unistr('        msg = '',\53D1\9001\901A\77E5\6210\529F'';'),
'    } else {',
unistr('        msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'    }',
'} else {',
unistr('    msg = '',\53D1\9001\901A\77E5\5931\8D25'';'),
'}',
'',
'if ($v(''P228_FLAG'') == ''success'') {',
unistr('    alert(''\63D0\4EA4\6210\529F'' + msg);'),
unistr('    // window.location.href = "f?p=&APP_ID.:205:&APP_SESSION.:::::";// \5206\6790'),
'    return true;',
'} else {',
unistr('    alert(''\63D0\4EA4\5931\8D25'' + msg);'),
'    return false;',
'}',
''))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364765412976501987)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_name=>unistr('\6676\8C79\65E5\5FD7')
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    v_name    nvarchar2(32);',
'    v_err_msg nvarchar2(2000);',
'begin',
'',
'    select NAME into v_name from MPF_USER_DEPT_MAIN_ASSO_V where EXT_USER_ID = :P228_NEW AND BASE_DEPT_ID=:BASE_DEPT_ID;',
'    insert into TENANT_EVENT_MESSAGE_BOARD(created_by, creation_date, updated_by, update_date, event_id, tenant_id,',
'                                           ext_user_id, content, type, images_url, BASE_DEPT_ID)',
'    values (null, sysdate, null, sysdate, :P228_EVENT_ID, :USERTENANT, 0,',
unistr('            ''\3010'' || :USERNAME || ''\3011\63D0\4EA4\4E8B\4EF6\590D\76D8\5BA1\6838\FF0C\5BA1\6838\4EBA\4E3A\3010'' || v_name || ''\3011'', ''SYSTEM_NOTIFY'', null, :BASE_DEPT_ID);'),
'exception',
'    when others then',
'        v_err_msg := sqlerrm || chr(13) || dbms_utility.format_error_backtrace;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', v_err_msg, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'end;'))
,p_attribute_02=>'P228_NEW'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2364765868340501986)
,p_event_id=>wwv_flow_imp.id(2364763370813501988)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'window.location.href=`f?p=&APP_ID.:235:&APP_SESSION.:::::`;'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(866969148296680056)
,p_name=>unistr('\5237\65B0')
,p_event_sequence=>40
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866969336978680058)
,p_event_id=>wwv_flow_imp.id(866969148296680056)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(866967160342680036)
,p_attribute_01=>'N'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(866969246016680057)
,p_event_id=>wwv_flow_imp.id(866969148296680056)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'JAVASCRIPT_EXPRESSION'
,p_affected_elements=>'location.reload()'
,p_attribute_01=>'N'
);
wwv_flow_imp.component_end;
end;
/

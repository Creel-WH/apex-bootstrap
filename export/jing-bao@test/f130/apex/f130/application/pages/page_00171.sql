prompt --application/pages/page_00171
begin
--   Manifest
--     PAGE: 00171
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
 p_id=>171
,p_name=>unistr('\4E0A\5C97\6253\5361\5730\56FE\914D\7F6E')
,p_alias=>unistr('\4E0A\5C97\6253\5361\5730\56FE\914D\7F6E')
,p_step_title=>unistr('\4E0A\5C97\6253\5361\5730\56FE\914D\7F6E')
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/js/sideBar.js',
'#WORKSPACE_FILES#static/js/scroll.js',
'#WORKSPACE_FILES#static/js/map.js',
'#WORKSPACE_FILES#static/js/edit#MIN#.js'))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#WORKSPACE_FILES#static/css/var.css',
'#WORKSPACE_FILES#static/css/sideBar.css',
'#WORKSPACE_FILES#static/css/map.css',
'#WORKSPACE_FILES#static/css/edit.css',
'#WORKSPACE_FILES#static/css/dialogCheck.css',
'#WORKSPACE_FILES#static/css/dialog.css'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2156311853562063009)
,p_plug_name=>unistr('\4E0A\5C97\6253\5361\5730\56FE\914D\7F6E')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2286684482431554755)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<header class="header">',
'        <div class="header-name">',
unistr('            <label class="header-label">\5382\533A\540D\79F0:</label>'),
'            <span class="header-value">&P171_FAB_NAME.</span>',
'        </div>',
'        <div class="header-name">',
unistr('            <label class="header-label">\5382\533A\80CC\666F\56FE:</label>'),
'            <img class="back-image edit-image" id="img_url"',
'                src="&P171_URL."',
'                alt="">',
'        </div>',
unistr('        <!-- <button class="edit-btn" type="button">\7F16\8F91</button>'),
'',
'        <div class="dialog">',
'            <div class="dialog-context">',
'                <div class="dialog-context--title">',
unistr('                    <span>\7F16\8F91\5382\533A\5C97\4F4D</span>'),
'                    <svg t="1641273667294" class="icon-delete" viewBox="0 0 1024 1024" version="1.1"',
'                        xmlns="http://www.w3.org/2000/svg" p-id="1446" width="14" height="14">',
'                        <path',
'                            d="M563.950933 546.065067l237.841067-237.568a36.590933 36.590933 0 1 0-51.882667-51.882667L512 493.9776l-237.909333-237.568a36.590933 36.590933 0 1 0-51.882667 51.882667l237.7728 237.568-237.7728 237.7728a36.590933 36.5909'
||'33 0 1 0 51.882667 51.882666L512 598.016l237.909333 237.636267a36.4544 36.4544 0 0 0 25.941334 10.786133 36.590933 36.590933 0 0 0 25.941333-62.600533L563.882667 545.9968z"',
'                            fill="#000000" fill-opacity=".25" p-id="1447"></path>',
'                    </svg>',
'                </div>',
'',
'                <div class="dialog-context--select">',
'                    <div class="select-lists">',
unistr('                        <label class="select-lists--label">\9009\62E9\5382\533A:</label>'),
'                        <select name="fabId" class="select-lists--value select-options">',
unistr('                            <option value="1">\7EC4\4EF6\4E00\5382</option>'),
unistr('                            <option value="2">\7EC4\4EF6\4E8C\5382</option>'),
'                        </select>',
'                        <div class="icon-div">',
'                            <svg t="1641432406143" class="icon" viewBox="0 0 1024 1024" version="1.1"',
'                                xmlns="http://www.w3.org/2000/svg" p-id="2847" width="14" height="14">',
'                                <path',
'                                    d="M870.126933 320.580267a41.233067 41.233067 0 0 1-9.0112 25.6l-318.122666 395.537066a40.823467 40.823467 0 0 1-63.556267 0l-316.552533-393.898666a40.7552 40.7552 0 0 1 63.556266-50.9952l284.808534 354.304 286.310'
||'4-356.078934a40.7552 40.7552 0 0 1 72.567466 25.531734z"',
'                                    fill="#000000" fill-opacity=".25" p-id="2848"></path>',
'                            </svg>',
'                        </div>',
'                    </div>',
'                    <div class="select-lists">',
unistr('                        <label class="select-lists--label">\5382\533A\80CC\666F\56FE\FF1A</label>'),
'                        <span class="select-lists--value cur-image">',
'                            <div class="overly">',
'                                <svg t="1641276656788" class="icon-look--image" viewBox="0 0 1260 1024" version="1.1"',
'                                    xmlns="http://www.w3.org/2000/svg" p-id="4814" width="16" height="16">',
'                                    <path',
'                                        d="M1235.259077 483.170462C1101.981538 202.279385 900.332308 60.967385 630.153846 60.967385 359.817846 60.888615 158.326154 202.200615 25.048615 483.249231a84.834462 84.834462 0 0 0 0 72.467692c133.356308 280.8'
||'91077 334.926769 422.203077 605.105231 422.203077 270.336 0 471.827692-141.312 605.105231-422.360615 10.870154-22.843077 10.870154-49.230769 0-72.467693zM630.153846 876.780308c-226.855385 0-393.058462-115.081846-510.188308-357.297231C237.174154 277.2'
||'67692 403.298462 162.185846 630.153846 162.185846c226.855385 0 393.058462 115.003077 510.188308 357.297231C1023.212308 761.698462 857.166769 876.701538 630.153846 876.701538zM624.64 271.911385a247.571692 247.571692 0 1 0 0 495.143384 247.571692 247.5'
||'71692 0 0 0 0-495.143384z m0 405.110153a157.459692 157.459692 0 1 1 0-315.076923 157.459692 157.459692 0 1 1 0 315.076923z"',
'                                        fill="#FFFFFF" p-id="4815"></path>',
'                                </svg>',
'                                <svg t="1641276799891" class="icon-delete--image" viewBox="0 0 1024 1024" version="1.1"',
'                                    xmlns="http://www.w3.org/2000/svg" p-id="5707" width="16" height="16">',
'                                    <path',
'                                        d="M768 384c-19.2 0-32 12.8-32 32l0 377.6c0 25.6-19.2 38.4-38.4 38.4L326.4 832c-25.6 0-38.4-19.2-38.4-38.4L288 416C288 396.8 275.2 384 256 384S224 396.8 224 416l0 377.6c0 57.6 44.8 102.4 102.4 102.4l364.8 0c57.'
||'6 0 102.4-44.8 102.4-102.4L793.6 416C800 396.8 787.2 384 768 384z"',
'                                        p-id="5708" fill="#e6e6e6"></path>',
'                                    <path',
'                                        d="M460.8 736l0-320C460.8 396.8 448 384 435.2 384S396.8 396.8 396.8 416l0 320c0 19.2 12.8 32 32 32S460.8 755.2 460.8 736z"',
'                                        p-id="5709" fill="#e6e6e6"></path>',
'                                    <path',
'                                        d="M627.2 736l0-320C627.2 396.8 608 384 588.8 384S563.2 396.8 563.2 416l0 320C563.2 755.2 576 768 588.8 768S627.2 755.2 627.2 736z"',
'                                        p-id="5710" fill="#e6e6e6"></path>',
'                                    <path',
'                                        d="M832 256l-160 0L672 211.2C672 166.4 633.6 128 588.8 128L435.2 128C390.4 128 352 166.4 352 211.2L352 256 192 256C172.8 256 160 268.8 160 288S172.8 320 192 320l640 0c19.2 0 32-12.8 32-32S851.2 256 832 256zM416'
||' 211.2C416 198.4 422.4 192 435.2 192l153.6 0c12.8 0 19.2 6.4 19.2 19.2L608 256l-192 0L416 211.2z"',
'                                        p-id="5711" fill="#e6e6e6"></path>',
'                                </svg>',
'                            </div>',
'                            <img class="back-image" alt="">',
'                        </span>',
'',
'                        <span class="updata">',
'                            <span class="file-context">',
'                                <input type="file" class="file">',
'                                <span class="icon-text">',
'                                    <svg t="1641456683325" class="icon" viewBox="0 0 1024 1024" version="1.1"',
'                                        xmlns="http://www.w3.org/2000/svg" p-id="4147" width="14" height="14">',
'                                        <path',
'                                            d="M543.9488 134.485333h-63.965867c-5.666133 0-8.533333 2.798933-8.533333 8.533334V477.866667H153.6c-5.666133 0-8.533333 2.8672-8.533333 8.533333v63.965867c0 5.7344 2.8672 8.533333 8.533333 8.533333h317.849'
||'6v334.984533c0 5.666133 2.8672 8.533333 8.533333 8.533334h63.965867c5.7344 0 8.533333-2.8672 8.533333-8.533334V558.967467h317.917867c5.666133 0 8.533333-2.798933 8.533333-8.533334v-63.965866c0-5.666133-2.8672-8.533333-8.533333-8.533334H552.482133V143'
||'.018667c0-5.7344-2.798933-8.533333-8.533333-8.533334z"',
'                                            fill="#000000" fill-opacity=".85" p-id="4148"></path>',
'                                    </svg>',
unistr('                                    \4E0A\4F20'),
'                                </span>',
'                            </span>',
unistr('                            <span class="msg">\56FE\7247\5C3A\5BF8\8981\6C42\FF1A1560*877PX</span>'),
'                        </span>',
'                    </div>',
'                </div>',
'',
'                <div class="dialog-context--btn">',
unistr('                    <button class="dialog-context--cancal btn">\53D6\6D88</button>'),
'                    <button class="dialog-context--sure btn">',
unistr('                        \786E\5B9A'),
'                    </button>',
'                </div>',
'            </div>',
'        </div>',
'    </header> -->',
'',
'    <main class="main">',
'        <div class="map no-dialog">',
'            <div class="full-screen"><svg t="1641278067353" class="icon-zoom" viewBox="0 0 1024 1024" version="1.1"',
'                    xmlns="http://www.w3.org/2000/svg" p-id="3980" width="24" height="24">',
'                    <path',
'                        d="M623.4112 624.39424a30.72 30.72 0 0 1 43.4176 0L819.2 776.68352v-89.62048l0.28672-4.17792a30.72 30.72 0 0 1 61.15328 4.17792v174.08l-0.32768 3.6864a20.48 20.48 0 0 1-20.15232 16.7936h-174.08l-4.17792-0.28672a30.72 30.72 0 0'
||' 1-26.54208-30.43328l0.28672-4.17792a30.72 30.72 0 0 1 30.43328-26.54208h89.7024l-152.3712-152.3712-2.99008-3.44064a30.72 30.72 0 0 1 2.99008-39.97696z m-222.8224 0a30.72 30.72 0 0 1 2.99008 39.97696l-2.99008 3.44064-152.3712 152.3712h89.7024a30.72 3'
||'0.72 0 0 1 30.43328 26.54208l0.28672 4.17792a30.72 30.72 0 0 1-26.54208 30.43328l-4.17792 0.28672H163.84a20.48 20.48 0 0 1-20.15232-16.7936l-0.32768-3.6864v-174.08a30.72 30.72 0 0 1 61.15328-4.17792l0.28672 4.17792v89.62048l152.3712-152.28928a30.72 3'
||'0.72 0 0 1 43.4176 0zM860.16 144.34304a20.48 20.48 0 0 1 20.15232 16.7936l0.32768 3.6864v174.08a30.72 30.72 0 0 1-61.15328 4.17792L819.2 338.90304V249.28256l-152.3712 152.28928a30.72 30.72 0 0 1-46.40768-39.97696l2.99008-3.44064 152.3712-152.3712h-89'
||'.7024a30.72 30.72 0 0 1-30.43328-26.54208L655.36 175.06304a30.72 30.72 0 0 1 26.54208-30.43328l4.17792-0.28672H860.16z m-522.24 0l4.17792 0.28672A30.72 30.72 0 0 1 368.64 175.06304l-0.28672 4.17792a30.72 30.72 0 0 1-30.43328 26.54208H248.2176l152.371'
||'2 152.3712 2.99008 3.44064a30.72 30.72 0 0 1-46.40768 39.97696L204.8 249.28256v89.62048l-0.28672 4.17792A30.72 30.72 0 0 1 143.36 338.90304v-174.08l0.32768-3.6864A20.48 20.48 0 0 1 163.84 144.34304h174.08z"',
'                        fill="#FFFFFF" p-id="3981"></path>',
'                </svg>',
'                <svg t="1641278427273" class="icon-shrink" viewBox="0 0 1024 1024" version="1.1"',
'                    xmlns="http://www.w3.org/2000/svg" p-id="5267" width="24" height="24">',
'                    <path',
'                        d="M137.386667 137.386667a32 32 0 0 1 45.226666 0L341.333333 295.936V202.666667l0.298667-4.352A32 32 0 0 1 405.333333 202.666667V384l-0.341333 3.84A21.333333 21.333333 0 0 1 384 405.333333H202.666667l-4.352-0.298666A32 32 0 0 '
||'1 170.666667 373.333333l0.298666-4.352A32 32 0 0 1 202.666667 341.333333h93.44L137.386667 182.613333l-3.114667-3.584a32 32 0 0 1 3.114667-41.642666zM137.386667 886.613333a32 32 0 0 0 45.226666 0L341.333333 727.978667v93.354666l0.298667 4.352A32 32 0 '
||'0 0 405.333333 821.333333V640l-0.341333-3.84A21.333333 21.333333 0 0 0 384 618.666667H202.666667l-4.352 0.298666A32 32 0 0 0 170.666667 650.666667l0.298666 4.352A32 32 0 0 0 202.666667 682.666667h93.44l-158.72 158.72-3.114667 3.584a32 32 0 0 0 3.1146'
||'67 41.642666zM886.613333 137.386667a32 32 0 0 0-45.226666 0L682.666667 295.936V202.666667l-0.298667-4.352a32 32 0 0 0-63.701333 4.352V384l0.341333 3.84A21.333333 21.333333 0 0 0 640 405.333333h181.333333l4.352-0.298666A32 32 0 0 0 853.333333 373.3333'
||'33l-0.298666-4.352A32 32 0 0 0 821.333333 341.333333h-93.44l158.72-158.72 3.114667-3.584a32 32 0 0 0-3.114667-41.642666zM886.613333 886.613333a32 32 0 0 1-45.226666 0L682.666667 728.064v93.354667l-0.298667 4.352a32 32 0 0 1-63.701333-4.352V640l0.3413'
||'33-3.84A21.333333 21.333333 0 0 1 640 618.666667h181.333333l4.352 0.298666a32 32 0 0 1 27.648 31.701334l-0.298666 4.352a32 32 0 0 1-31.701334 27.648h-93.44l158.72 158.72 3.114667 3.584a32 32 0 0 1-3.114667 41.642666z"',
'                        fill="#FFFFFF" p-id="5268"></path>',
'                </svg>',
unistr('                <span class="full-screen--text">\5C55\5F00\5168\5C4F</span>'),
'            </div>',
'            <div class="map-content">',
'',
'            </div>',
'            <dl class="side-bar">',
'                <dt class="side-bar--title">',
unistr('                    <span>\5C97\4F4D\4FE1\606F</span>'),
'                    <svg t="1641273667294" class="icon-side-bar--delete" viewBox="0 0 1024 1024" version="1.1"',
'                        xmlns="http://www.w3.org/2000/svg" p-id="1446" width="14" height="14">',
'                        <path',
'                            d="M563.950933 546.065067l237.841067-237.568a36.590933 36.590933 0 1 0-51.882667-51.882667L512 493.9776l-237.909333-237.568a36.590933 36.590933 0 1 0-51.882667 51.882667l237.7728 237.568-237.7728 237.7728a36.590933 36.5909'
||'33 0 1 0 51.882667 51.882666L512 598.016l237.909333 237.636267a36.4544 36.4544 0 0 0 25.941334 10.786133 36.590933 36.590933 0 0 0 25.941333-62.600533L563.882667 545.9968z"',
'                            fill="#000000" fill-opacity=".25" p-id="1447"></path>',
'                    </svg>',
'                </dt>',
'                <dd class="side-bar--context">',
'                    <div class="side-bar--items">',
'                    </div>',
'                </dd>',
'                <dd class="side-bar--button">',
'                    <button onclick="void(0)" class="add-work" type="button" disabled>',
unistr('                        \65B0 \589E'),
'                    </button>',
'                </dd>',
'            </dl>',
'        </div>',
'    </main>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2156312231404063012)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_button_name=>unistr('\4FDD\5B58')
,p_button_static_id=>'P171_INSERT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(2286746948525554783)
,p_button_image_alt=>unistr('\4FDD\5B58')
,p_button_position=>'BOTTOM'
,p_button_alignment=>'RIGHT'
,p_warn_on_unsaved_changes=>null
,p_button_css_classes=>'ja-bpoint-btn '
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2156312102725063011)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_button_name=>unistr('\8FD4\56DE')
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2286747086875554783)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('\8FD4\56DE')
,p_button_position=>'TOP'
,p_button_alignment=>'LEFT'
,p_button_redirect_url=>'f?p=&APP_ID.:169:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'ja-bpoint-btn '
,p_icon_css_classes=>'fa-circle-arrow-in-west'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156312613912063016)
,p_name=>'P171_FAB'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156504377200814267)
,p_name=>'P171_DATA'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156504529807814268)
,p_name=>'P171_URL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2156504551436814269)
,p_name=>'P171_FAB_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(2156311853562063009)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2156504675553814270)
,p_name=>unistr('\521D\59CB\5316\6570\636E')
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156504773784814271)
,p_event_id=>wwv_flow_imp.id(2156504675553814270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_imp.id(2156312231404063012)
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156504926723814272)
,p_event_id=>wwv_flow_imp.id(2156504675553814270)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    url varchar2(128);',
'begin',
'    select WORK_STATION_IMAGE_URL into url from fnd_fab where fab_id = :P171_FAB;',
'    apex_util.set_session_state(''P171_URL'',url);',
'end;'))
,p_attribute_02=>'P171_FAB'
,p_attribute_03=>'P171_URL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156504969745814273)
,p_event_id=>wwv_flow_imp.id(2156504675553814270)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#img_url'').attr(''src'',$v(''P171_URL''));',
'$(''.map'').css({"background-image" : ''url(''+$v(''P171_URL'')+'')''})',
'',
'apex.server.process(''getPoints'', {',
'    pageItems: ''#P171_FAB''',
'}, {',
'    dataType: ''json'',',
'    success: function (datas) {',
'        console.log(datas);',
'        window.renderItem(datas);',
'    },',
'    error: function (e) {',
'        alert(e);',
'',
'    }',
'',
'});'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156505134120814274)
,p_event_id=>wwv_flow_imp.id(2156504675553814270)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''getData2'', {',
'    pageItems: ''#P171_FAB''',
'}, {',
'    dataType: ''json'',',
'    success: function (datas) {',
'        // console.log(datas);',
'        // console.log(datas.line);',
'        // console.log(datas.opt);',
'        window.setLines(datas.line);',
'        window.setAreas(datas.opt);',
'        window.setWorks(datas.work);',
'    },',
'    error: function (e) {',
'        alert(e);',
'',
'    }',
'',
'});',
'',
'',
'// console.log($v(''P171_URL''));'))
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2156505219867814275)
,p_name=>unistr('\4FDD\5B58')
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2156312231404063012)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156505254958814276)
,p_event_id=>wwv_flow_imp.id(2156505219867814275)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.server.process(''insertData'',{',
'    x01:$(''#p171_span_data'').text()',
'},{',
'    dataType:''text'',',
'    success:function(data){',
'        if (data > 0) {',
unistr('            alert(''\64CD\4F5C\6210\529F'');'),
'            return true;',
'        } else {',
unistr('            alert(''\64CD\4F5C\5931\8D25'');'),
'            return false;',
'        }',
'        // alert(''DATAS'');',
'        // alert(data);',
'        ',
'        ',
'    },',
'    error:function(e){',
'        alert(e);',
'        return false;',
'    }',
'})'))
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2156505400136814277)
,p_event_id=>wwv_flow_imp.id(2156505219867814275)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156312330580063013)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getData2'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'  c1 sys_refcursor;',
'  c2 sys_refcursor;',
'  c3 sys_refcursor;',
'BEGIN',
'  open c1 for SELECT NAME AS "key",AREA_ID AS "value"',
'                             FROM FND_AREAS WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND TYPE = 2 AND FAB_ID = :P171_FAB;',
'  open c2 for SELECT NAME AS "key",AREA_ID AS "value"',
'                             FROM FND_AREAS WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND TYPE = 1 AND FAB_ID = :P171_FAB;',
'  open c3 for SELECT NAME AS "key",WORK_STATION_ID AS "value"',
'                             FROM FND_WORK_STATION WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT;',
'  apex_json.open_object;',
'  apex_json. write(''line'', c1);',
'  apex_json. write(''opt'', c2);',
'  apex_json. write(''work'', c3);',
'  apex_json.close_object;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46110276302559602
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156312354421063014)
,p_process_sequence=>20
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'getPoints'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    c sys_refcursor;',
'BEGIN',
'    open c for SELECT A.MAPS_WORK_STATION_ID AS "uniqueClassName",A.MAP_X_PIXEL AS "x",A.MAP_Y_PIXEL AS "y",MAP_AREA_Y_ID AS "lindId",MAP_AREA_X_ID AS "areaId",A.WORK_STATION_ID AS "workId",',
'                      A.IS_HIDE AS "isHide",A.IS_ENABLE AS "isDapHide",A.DAY_MAX_USERS_COUNT AS "dayMaxNum",A.NIGHT_MAX_USERS_COUNT AS "nightMaxNum"',
'                FROM FND_MAPS_WORK_STATION A',
'                LEFT JOIN FND_MAPS B',
'                ON A.MAP_ID = B.MAP_ID',
'                WHERE A.TENANT_ID = :USERTENANT',
'                AND A.IS_HIDE = 0',
'                AND A.IS_ENABLE = 1',
'                AND A.MAP_Y_PIXEL > 0',
'                AND B.FAB_ID = :P171_FAB;',
'    apex_json.write(c);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>46110300143559603
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2156312519803063015)
,p_process_sequence=>30
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insertData'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    V_DATA CLOB;',
'    V_FLAG NUMBER;',
'    V_MAP NUMBER;',
'    V_COUNT NUMBER;',
unistr('    V_ERR_MSG   NVARCHAR2(2000); -- \5F02\5E38\8FD4\56DE\503C'),
'BEGIN',
'    V_DATA := apex_application.g_x01;',
'    FOR ITEMS IN ( SELECT NAME_ID,WORKID,AREAID,LINEID,X,Y,DAYMAXNUM,NIGHTMAXNUM,ISHIDE,ISDAPHIDE',
'                     FROM JSON_TABLE(V_DATA, ''$[*]''',
'                  COLUMNS (X NUMBER PATH ''$.x'',',
'                           Y NUMBER PATH ''$.y'', ',
'                           LINEID NUMBER PATH ''$.lineId'',',
'                           AREAID NUMBER PATH ''$.areaId'',',
'                           WORKID NUMBER PATH ''$.workId'',',
'                           NAME_ID NUMBER PATH ''$.name'',',
'                           DAYMAXNUM NUMBER PATH ''$.dayMaxNum'',',
'                           NIGHTMAXNUM NUMBER PATH ''$.nightMaxNum'',',
'                           ISHIDE NUMBER PATH ''$.isHide'',',
'                           ISDAPHIDE NUMBER PATH ''$.isDapHide''',
'                           ))) LOOP',
'        ',
'        SELECT MAP_ID INTO V_MAP FROM FND_MAPS WHERE DEL_FLAG = 0 AND TENANT_ID = :USERTENANT AND MAP_AREA_X_ID = ITEMS.AREAID AND MAP_AREA_Y_ID = ITEMS.LINEID;',
'        SELECT COUNT(1) INTO V_FLAG FROM FND_MAPS_WORK_STATION WHERE TENANT_ID = :USERTENANT AND MAP_ID = V_MAP AND WORK_STATION_ID = ITEMS.WORKID;',
'        IF V_FLAG > 0 THEN',
'            UPDATE FND_MAPS_WORK_STATION ',
'               SET MAP_X_PIXEL = ITEMS.X,',
'                   MAP_Y_PIXEL = ITEMS.Y,',
'                   UPDATED_BY = :APP_USER,',
'                   UPDATE_DATE = SYSDATE,',
'                   DAY_MAX_USERS_COUNT = ITEMS.DAYMAXNUM,',
'                   NIGHT_MAX_USERS_COUNT = ITEMS.NIGHTMAXNUM,',
'                   IS_HIDE = ITEMS.ISHIDE,',
'                   IS_ENABLE = ITEMS.ISDAPHIDE',
'             WHERE TENANT_ID = :USERTENANT AND MAP_ID = V_MAP AND WORK_STATION_ID = ITEMS.WORKID;',
'       ELSE',
'           INSERT INTO FND_MAPS_WORK_STATION (CREATED_BY,UPDATED_BY,TENANT_ID,MAP_ID,WORK_STATION_ID,MAP_X_PIXEL,MAP_Y_PIXEL,DAY_MAX_USERS_COUNT,NIGHT_MAX_USERS_COUNT,IS_HIDE,IS_ENABLE) ',
'           VALUES (:APP_USER,:APP_USER,:USERTENANT,V_MAP,ITEMS.WORKID,ITEMS.X,ITEMS.Y,ITEMS.DAYMAXNUM,ITEMS.NIGHTMAXNUM,ITEMS.ISHIDE,ITEMS.ISDAPHIDE);',
'       END IF;',
'   END LOOP;  ',
'   V_COUNT := SQL%ROWCOUNT;',
'   htp.prn(V_COUNT);        ',
'',
'EXCEPTION',
'    WHEN',
'        OTHERS THEN',
'        ROLLBACK;',
'        V_ERR_MSG := SQLERRM || CHR( 13 ) || DBMS_UTILITY.FORMAT_ERROR_BACKTRACE;',
unistr('        --\5199\5165\5F02\5E38\65E5\5FD7'),
'        JA_WRITE_LOG(''P''||:APP_PAGE_ID||'':''||:APP_PAGE_ALIAS, ''ERROR'', V_ERR_MSG, :USER_ID, :USERTENANT,:APP_NAME ,:APP_ID ,:APP_CODE);',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>46110465525559604
);
wwv_flow_imp.component_end;
end;
/

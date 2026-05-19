prompt --application/pages/page_01100
begin
--   Manifest
--     PAGE: 01100
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
 p_id=>1100
,p_name=>'Pages'
,p_alias=>'PAGES'
,p_step_title=>'Pages - &APP_TITLE.'
,p_reload_on_submit=>'A'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'ON'
,p_group_id=>wwv_flow_imp.id(1835731517269568443)
,p_javascript_code_onload=>'apex.theme42demo.jump(''&REQUEST.'');'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.dm-Icon {',
'  display: inline-block; }',
'',
'.dm-Icon--page {',
'  width: 16rem;',
'  height: 10.25rem;',
'  display: block;',
'  margin: 1.5rem auto; }',
'  .dm-Icon--page + .t-Button {',
'    display: block;',
'    margin: 0 auto; }',
'  .apex-theme-vita-dark .dm-Icon--page {',
'    filter: invert(0.75); }',
'  .u-RTL .dm-Icon--page {',
'    transform: scaleX(-1); }',
'',
'.login-page {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M254%20164H2c-1.105%200-2-.895-2-2V2C0%20.895.895%20'
||'0%202%200h252c1.105%200%202%20.895%202%202v160c0%201.105-.895%202-2%202z%22%2F%3E%3Cpath%20fill%3D%22%23F5F5F5%22%20d%3D%22M254%20163H2c-.552%200-1-.448-1-1V2c0-.552.448-1%201-1h252c.552%200%201%20.448%201%201v160c0%20.552-.448%201-1%201z%22%2F%3E%3C'
||'path%20opacity%3D%22.04%22%20d%3D%22M186%20141c0%201.1-.9%202-2%202H72c-1.1%200-2-.9-2-2V25c0-1.1.9-2%202-2h112c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M186%20140c0%201.1-.9%202-2%202H72c-1.1%200-2-.9-2-2V24c0-1.1'
||'.9-2%202-2h112c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M185%20140c0%20.55-.45%201-1%201H72c-.55%200-1-.45-1-1V24c0-.55.45-1%201-1h112c.55%200%201%20.45%201%201v116z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%'
||'22M140%2057.143c0%20.47-.386.857-.857.857h-22.286c-.47%200-.857-.386-.857-.857V34.857c0-.47.386-.857.857-.857h22.286c.47%200%20.857.386.857.857v22.286z%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M175%2093c0%20.55-.45%201-1%201H81c-.55%200-1-.4'
||'5-1-1V83c0-.55.45-1%201-1h93c.55%200%201%20.45%201%201v10z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M174%2083v10H81V83h93%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M175%20112c0%20.55-.45%201-1%201H81c-.55%200-1-.45-1-1v-10c0-.55.45-1%20'
||'1-1h93c.55%200%201%20.45%201%201v10z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M174%20102v10H81v-10h93%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M176%20130c0%20.55-.45%201-1%201H81c-.55%200-1-.45-1-1v-9c0-.55.45-1%201-1h94c.55%200%201%20.45'
||'%201%201v9z%22%2F%3E%3Cg%20fill%3D%22%23CCC%22%3E%3Cpath%20d%3D%22M104.59%2065.975h1.33l2.75%207.14h-1.34l-.67-1.89h-2.85l-.67%201.89h-1.29l2.74-7.14zm-.44%204.3h2.18l-1.07-3.07h-.03l-1.08%203.07zM109.22%2067.945h1.08v.7h.02c.16-.3.383-.515.67-.645.2'
||'87-.13.597-.195.93-.195.406%200%20.762.072%201.065.215.303.144.555.34.755.59.2.25.35.542.45.875s.15.69.15%201.07c0%20.347-.045.684-.135%201.01-.09.327-.227.615-.41.865-.184.25-.415.45-.695.6-.28.15-.61.225-.99.225-.167%200-.333-.015-.5-.045-.167-.03-'
||'.327-.08-.48-.145-.153-.067-.295-.152-.425-.255-.13-.103-.24-.225-.325-.365h-.02v2.58h-1.14v-7.08zm3.98%202.59c0-.233-.03-.46-.09-.68-.06-.22-.15-.415-.27-.585-.12-.17-.27-.306-.45-.41-.18-.104-.387-.155-.62-.155-.48%200-.842.167-1.085.5-.244.333-.36'
||'5.777-.365%201.33%200%20.26.032.502.095.725.063.224.158.415.285.575.126.16.278.287.455.38s.382.14.615.14c.26%200%20.48-.054.66-.16.18-.106.33-.245.445-.415.116-.17.2-.363.25-.58.05-.216.075-.438.075-.665zM115.33%2067.945h1.08v.7h.02c.16-.3.383-.515.6'
||'7-.645.287-.13.597-.195.93-.195.406%200%20.762.072%201.065.215.303.144.555.34.755.59.2.25.35.542.45.875s.15.69.15%201.07c0%20.347-.045.684-.135%201.01-.09.327-.227.615-.41.865-.184.25-.415.45-.695.6-.28.15-.61.225-.99.225-.167%200-.333-.015-.5-.045-.'
||'167-.03-.327-.08-.48-.145-.153-.067-.295-.152-.425-.255-.13-.103-.24-.225-.325-.365h-.02v2.58h-1.14v-7.08zm3.98%202.59c0-.233-.03-.46-.09-.68-.06-.22-.15-.415-.27-.585-.12-.17-.27-.306-.45-.41-.18-.104-.387-.155-.62-.155-.48%200-.842.167-1.085.5-.244'
||'.333-.365.777-.365%201.33%200%20.26.032.502.095.725.063.224.158.415.285.575.126.16.278.287.455.38s.382.14.615.14c.26%200%20.48-.054.66-.16.18-.106.33-.245.445-.415.116-.17.2-.363.25-.58.05-.216.075-.438.075-.665zM121.44%2065.975h1.14v7.14h-1.14v-7.14'
||'zM123.85%2065.975h1.14v1.08h-1.14v-1.08zm0%201.97h1.14v5.17h-1.14v-5.17zM129.72%2069.675c-.046-.32-.175-.562-.385-.725-.21-.163-.475-.245-.795-.245-.147%200-.304.025-.47.075s-.32.144-.46.28c-.14.137-.257.327-.35.57-.093.243-.14.562-.14.955%200%20.213'
||'.025.426.075.64.05.213.13.404.24.57.11.167.25.302.425.405.173.104.383.155.63.155.333%200%20.608-.104.825-.31.216-.207.352-.497.405-.87h1.14c-.107.673-.362%201.188-.765%201.545s-.938.535-1.605.535c-.407%200-.765-.068-1.075-.205s-.572-.323-.785-.56c-.2'
||'13-.236-.375-.518-.485-.845-.11-.326-.165-.68-.165-1.06%200-.387.053-.75.16-1.09.107-.34.267-.635.48-.885.213-.25.478-.447.795-.59.316-.143.688-.215%201.115-.215.3%200%20.585.04.855.115s.51.19.72.345.38.347.515.58c.133.233.213.51.24.83h-1.14zM136.12%'
||'2071.965c0%20.14.018.24.055.3s.108.09.215.09h.12c.047%200%20.1-.007.16-.02v.79c-.04.014-.092.028-.155.045-.063.017-.128.03-.195.045-.066.013-.133.023-.2.03-.067.007-.124.01-.17.01-.233%200-.426-.047-.58-.14-.154-.093-.253-.256-.3-.49-.227.22-.505.38-'
||'.835.48-.33.1-.648.15-.955.15-.233%200-.457-.032-.67-.095-.213-.063-.402-.156-.565-.28-.164-.124-.293-.28-.39-.47s-.145-.412-.145-.665c0-.32.06-.58.175-.78.116-.2.27-.356.46-.47.19-.113.403-.195.64-.245.236-.05.475-.088.715-.115.207-.04.403-.068.59-.'
||'085s.352-.045.495-.085c.143-.04.256-.102.34-.185s.125-.208.125-.375c0-.146-.035-.267-.105-.36-.07-.093-.157-.165-.26-.215-.104-.05-.22-.083-.345-.1s-.247-.025-.36-.025c-.32%200-.583.067-.79.2s-.323.34-.35.62h-1.14c.02-.333.1-.61.24-.83.14-.22.318-.39'
||'6.535-.53.216-.133.46-.227.735-.28s.553-.08.84-.08c.253%200%20.503.027.75.08s.468.14.665.26.355.275.475.465.18.42.18.695v2.66zm-1.14-1.44c-.173.113-.387.182-.64.205s-.507.058-.76.105c-.12.02-.237.048-.35.085s-.213.086-.3.15c-.087.063-.155.146-.205.25'
||'-.05.104-.075.23-.075.375%200%20.126.037.233.11.32.073.087.162.155.265.205s.217.085.34.105c.124.02.235.03.335.03.127%200%20.264-.017.41-.05.146-.033.285-.09.415-.17s.238-.182.325-.305c.086-.123.13-.275.13-.455v-.85zM136.83%2067.945h.86v-1.55h1.14v1.5'
||'5h1.03v.85h-1.03v2.76c0%20.12.005.224.015.31.01.087.033.16.07.22.037.06.09.105.165.135.073.03.173.045.3.045.08%200%20.16%200%20.24-.005s.16-.015.24-.035v.88c-.126.013-.25.026-.37.04-.12.014-.244.02-.37.02-.3%200-.542-.028-.725-.085-.184-.057-.327-.14'
||'-.43-.25-.104-.11-.173-.248-.21-.415-.037-.167-.058-.356-.065-.57v-3.05h-.86v-.85zM140.71%2065.975h1.14v1.08h-1.14v-1.08zm0%201.97h1.14v5.17h-1.14v-5.17zM145.46%2073.255c-.414%200-.782-.068-1.105-.205-.324-.137-.597-.325-.82-.565-.223-.24-.394-.527-.'
||'51-.86-.117-.333-.175-.7-.175-1.1%200-.394.06-.757.175-1.09.116-.333.287-.62.51-.86.223-.24.497-.428.82-.565.323-.137.69-.205%201.105-.205.413%200%20.78.068%201.105.205.323.137.596.325.82.565.223.24.393.527.51.86.117.333.175.697.175%201.09%200%20.4-.'
||'06.767-.175%201.1-.117.333-.287.62-.51.86-.224.24-.497.428-.82.565-.323.137-.69.205-1.105.205zm0-.9c.253%200%20.473-.054.66-.16s.34-.247.46-.42.208-.37.265-.585c.057-.217.085-.438.085-.665%200-.22-.028-.44-.085-.66s-.145-.415-.265-.585c-.12-.17-.273-'
||'.308-.46-.415-.187-.106-.407-.16-.66-.16-.253%200-.474.054-.66.16-.187.107-.34.245-.46.415s-.208.365-.265.585-.085.44-.085.66c0%20.227.028.448.085.665.057.216.145.412.265.585s.273.313.46.42c.187.107.407.16.66.16zM149.02%2067.945h1.08v.76l.02.02c.173-'
||'.287.4-.51.68-.675.28-.164.59-.245.93-.245.566%200%201.013.147%201.34.44.327.293.49.733.49%201.32v3.55h-1.14v-3.25c-.014-.407-.1-.702-.26-.885-.16-.184-.41-.275-.75-.275-.194%200-.367.035-.52.105-.154.07-.284.167-.39.29-.107.124-.19.27-.25.435-.06.16'
||'7-.09.344-.09.53v3.05h-1.14v-5.17z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M134%2040h-12c-.55%200-1%20.45-1%201v10c0%20.55.45%201%201%201h12c.55%200%201-.45%201-1V41c0-.55-.45-1-1-1zm-12%2011v-7h3v7h-3zm12%200h-8v-3h8v3zm0-4h-8v-3h8v'
||'3zm-8-4h-4v-2h12v2h-8z%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%2287%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%2293%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%2299%22%20c'
||'y%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22105%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22111%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22117%2'
||'2%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22123%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22129%22%20cy%3D%22107%22%20r%3D%222%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.minimal-page {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M254%201H2c-.552%200-1%20.448-1%201v11h254V2c0-.552-.448-1-1-1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M1%2041v121c0%20.552.448%2'
||'01%201%201h252c.552%200%201-.448%201-1V41H1z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M1%2014h254v26H1z%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M248%2079c0%20.55-.45%201-1%201H9c-.55%200-1-.45-1-1V48c0-.55.45-1%201-1h238c.55%200%201%2'
||'0.45%201%201v31z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M247%2048v31H9V48h238%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M248%20118c0%20.55-.45%201-1%201H9c-.55%200-1-.45-1-1V87c0-.55.45-1%201-1h238c.55%200%201%20.45%201%201v31z%22%'
||'2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M247%2087v31H9V87h238%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M248%20156c0%20.55-.45%201-1%201H9c-.55%200-1-.45-1-1v-30c0-.55.45-1%201-1h238c.55%200%201%20.45%201%201v30z%22%2F%3E%3Cpath%20fill'
||'%3D%22%23F8F8F8%22%20d%3D%22M247%20126v30H9v-30h238%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.side-nav-left-column {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cg%20fill%3D%22%23EBEBEB%22%3E%3Cpath%20d%3D%22M13%201H2c-.552%200-1%20.448-1%201v11h12V1zM254%201H14v12h241V2c0-.552-.448-1-1-1z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23EBEBEB%22'
||'%20d%3D%22M1%2074h38v89H2c-.552%200-1-.448-1-1V74z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M40%2014h215v26H40z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M5%205h4v1H5zM5%208h4v1H5z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M1%20'
||'14h38v11H1zM1%2026h38v11H1zM1%2038h38v11H1zM1%2050h38v11H1zM1%2062h38v11H1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M88%2041h167v121c0%20.552-.448%201-1%201H88V41zM40%2041h47v122H40z%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.side-nav-master-detail-page {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cg%20fill%3D%22%23EBEBEB%22%3E%3Cpath%20d%3D%22M13%201H2c-.552%200-1%20.448-1%201v11h12V1zM254%201H14v12h241V2c0-.552-.448-1-1-1z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23EBEBEB%22'
||'%20d%3D%22M1%2074h38v89H2c-.552%200-1-.448-1-1V74z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M5%205h4v1H5zM5%208h4v1H5z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M1%2014h38v11H1zM1%2026h38v11H1zM1%2038h38v11H1zM1%2050h38v11H1zM1%2062h'
||'38v11H1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M40%20113h175v50H40z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M40%2041h175v71H40zM40%2014h164v11h11v15H40%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M205%2014h10v10h-10zM216%2014'
||'v149h38c.552%200%201-.448%201-1V14h-39z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M208%2017h4v1h-4zM208%2020h4v1h-4z%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M46%20119h163v38H46z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M47%201'
||'20h161v36H47z%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.side-nav-one-column {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cg%20fill%3D%22%23EBEBEB%22%3E%3Cpath%20d%3D%22M13%201H2c-.552%200-1%20.448-1%201v11h12V1zM254%201H14v12h241V2c0-.552-.448-1-1-1z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23EBEBEB%22'
||'%20d%3D%22M1%2074h38v89H2c-.552%200-1-.448-1-1V74z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M40%2014h215v26H40z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M5%205h4v1H5zM5%208h4v1H5z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M1%20'
||'14h38v11H1zM1%2026h38v11H1zM1%2038h38v11H1zM1%2050h38v11H1zM1%2062h38v11H1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M40%2041h215v121c0%20.552-.448%201-1%201H40V41z%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.side-nav-right-column {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cg%20fill%3D%22%23EBEBEB%22%3E%3Cpath%20d%3D%22M13%201H2c-.552%200-1%20.448-1%201v11h12V1zM254%201H14v12h241V2c0-.552-.448-1-1-1z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23EBEBEB%22'
||'%20d%3D%22M1%2074h38v89H2c-.552%200-1-.448-1-1V74z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M5%205h4v1H5zM5%208h4v1H5z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M1%2014h38v11H1zM1%2026h38v11H1zM1%2038h38v11H1zM1%2050h38v11H1zM1%2062h'
||'38v11H1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M40%2041h175v122H40z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M40%2014h164v11h11v15H40%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M205%2014h10v10h-10zM216%2014v149h38c.552%200%20'
||'1-.448%201-1V14h-39z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M208%2017h4v1h-4zM208%2020h4v1h-4z%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.side-nav-side-columns {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M0%202C0%20.9.9%200%202%200h252c1.1%200%202%20.9%'
||'202%202v160c0%201.105-.895%202-2%202H2c-1.1%200-2-.9-2-2V2z%22%2F%3E%3Cg%20fill%3D%22%23EBEBEB%22%3E%3Cpath%20d%3D%22M13%201H2c-.552%200-1%20.448-1%201v11h12V1zM254%201H14v12h241V2c0-.552-.448-1-1-1z%22%2F%3E%3C%2Fg%3E%3Cpath%20fill%3D%22%23EBEBEB%22'
||'%20d%3D%22M1%2074h38v89H2c-.552%200-1-.448-1-1V74z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M5%205h4v1H5zM5%208h4v1H5z%22%2F%3E%3Cpath%20fill%3D%22%23EBEBEB%22%20d%3D%22M1%2014h38v11H1zM1%2026h38v11H1zM1%2038h38v11H1zM1%2050h38v11H1zM1%2062h'
||'38v11H1z%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M88%2041h127v122H88zM40%2041h47v122H40z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M40%2014h164v11h11v15H40%22%2F%3E%3Cpath%20fill%3D%22%23FAFAFA%22%20d%3D%22M205%2014h10v10h-10zM216%2014'
||'v149h38c.552%200%201-.448%201-1V14h-39z%22%2F%3E%3Cpath%20fill%3D%22%23C2C2C2%22%20d%3D%22M208%2017h4v1h-4zM208%2020h4v1h-4z%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.standard-dialog {',
'  background-image: url("data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M254%20164H2c-1.105%200-2-.895-2-2V2C0%20.895.895%20'
||'0%202%200h252c1.105%200%202%20.895%202%202v160c0%201.105-.895%202-2%202z%22%2F%3E%3Cpath%20fill%3D%22%23F5F5F5%22%20d%3D%22M254%20163H2c-.552%200-1-.448-1-1V2c0-.552.448-1%201-1h252c.552%200%201%20.448%201%201v160c0%20.552-.448%201-1%201z%22%2F%3E%3C'
||'path%20opacity%3D%22.04%22%20d%3D%22M196%20141c0%201.1-.9%202-2%202H62c-1.1%200-2-.9-2-2V25c0-1.1.9-2%202-2h132c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M196%20140c0%201.1-.9%202-2%202H62c-1.1%200-2-.9-2-2V24c0-1.1'
||'.9-2%202-2h132c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M195%2036v104c0%20.55-.45%201-1%201H62c-.55%200-1-.45-1-1V36h134z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M61%2035V24c0-.55.45-1%201-1h132c.55%200%2'
||'01%20.45%201%201v11H61z%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M186%2068c0%20.55-.45%201-1%201H71c-.55%200-1-.45-1-1V43c0-.55.45-1%201-1h114c.55%200%201%20.45%201%201v25z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M185%2043v25H71V43'
||'h114%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M186%20101c0%20.55-.45%201-1%201H71c-.55%200-1-.45-1-1V76c0-.55.45-1%201-1h114c.55%200%201%20.45%201%201v25z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M185%2076v25H71V76h114%22%2F%3E%3Cpa'
||'th%20fill%3D%22%23C8CACC%22%20d%3D%22M186%20134c0%20.55-.45%201-1%201H71c-.55%200-1-.45-1-1v-25c0-.55.45-1%201-1h114c.55%200%201%20.45%201%201v25z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M185%20109v25H71v-25h114%22%2F%3E%3Ccircle%20fill%3D%'
||'22%23CCC%22%20cx%3D%22189%22%20cy%3D%2229%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23FFF%22%20cx%3D%22189%22%20cy%3D%2229%22%20r%3D%223%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M190.854%2027.854l-.708-.708L189%2028.293l-1.146-1.147-.708.708'
||'L188.293%2029l-1.147%201.146.708.708L189%2029.707l1.146%201.147.708-.708L189.707%2029%22%2F%3E%3C%2Fsvg%3E");',
'  background-repeat: no-repeat; }',
'',
'.wizard-dialog {',
'  background-image: url(''data:image/svg+xml;charset=US-ASCII,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%20256%20164%22%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M254%20164H2c-1.105%200-2-.895-2-2V2C0%20.895.895%20'
||'0%202%200h252c1.105%200%202%20.895%202%202v160c0%201.105-.895%202-2%202z%22%2F%3E%3Cpath%20fill%3D%22%23F5F5F5%22%20d%3D%22M254%20163H2c-.552%200-1-.448-1-1V2c0-.552.448-1%201-1h252c.552%200%201%20.448%201%201v160c0%20.552-.448%201-1%201z%22%2F%3E%3C'
||'path%20opacity%3D%22.04%22%20d%3D%22M196%20141c0%201.1-.9%202-2%202H62c-1.1%200-2-.9-2-2V25c0-1.1.9-2%202-2h132c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M196%20140c0%201.1-.9%202-2%202H62c-1.1%200-2-.9-2-2V24c0-1.1'
||'.9-2%202-2h132c1.1%200%202%20.9%202%202v116z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M61%20119V24c0-.55.45-1%201-1h132c.55%200%201%20.45%201%201v95H61z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M195%20120v20c0%20.55-.45%201-1%201H62c-.'
||'55%200-1-.45-1-1v-20h134z%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M186%20112c0%20.55-.45%201-1%201H71c-.55%200-1-.45-1-1V78c0-.55.45-1%201-1h114c.55%200%201%20.45%201%201v34z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M185%2078v34H71'
||'V78h114%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22189%22%20cy%3D%2229%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23FFF%22%20cx%3D%22189%22%20cy%3D%2229%22%20r%3D%223%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M190.854%2027.854l-.708-.70'
||'8L189%2028.293l-1.146-1.147-.708.708L188.293%2029l-1.147%201.146.708.708L189%2029.707l1.146%201.147.708-.708L189.707%2029%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%2275%22%20cy%3D%2246%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%'
||'3D%22101%22%20cy%3D%2246%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22127%22%20cy%3D%2246%22%20r%3D%226%22%2F%3E%3Cpath%20fill%3D%22%23C8CACC%22%20d%3D%22M74.916%2068.5v-6.096h-2.208v-.816c.288%200%20.568-.022.84-.066s.518-.126.738'
||'-.246c.22-.12.406-.284.558-.492.152-.208.256-.472.312-.792h.78V68.5h-1.02zM98.324%2061.804c.11-.368.285-.686.52-.954s.53-.478.883-.63c.353-.152.752-.228%201.2-.228.368%200%20.714.054%201.038.162.324.108.606.264.846.468.24.204.432.458.57.762.14.304.21'
||'.656.21%201.056%200%20.376-.057.708-.173.996s-.27.546-.462.774c-.192.228-.412.434-.66.618s-.504.36-.77.528c-.263.16-.526.318-.79.474-.265.156-.507.322-.727.498s-.408.366-.563.57c-.156.204-.26.438-.307.702h4.368v.9H97.95c.04-.504.13-.934.27-1.29s.318-'
||'.666.534-.93c.216-.264.46-.496.732-.696.27-.2.556-.388.852-.564.36-.224.676-.43.948-.618.27-.188.498-.378.678-.57s.316-.4.408-.624.138-.484.138-.78c0-.232-.044-.442-.132-.63-.088-.188-.206-.35-.354-.486-.147-.136-.32-.24-.52-.312s-.413-.108-.637-.108'
||'c-.297%200-.55.062-.763.186s-.386.286-.52.486c-.138.2-.235.426-.295.678-.062.252-.087.506-.08.762h-1.02c-.022-.432.022-.832.134-1.2zM126.388%2063.652H126.724c.216%200%20.422-.03.618-.09s.368-.148.516-.264c.148-.116.267-.262.354-.438.088-.176.132-.376'
||'.132-.6%200-.456-.144-.798-.432-1.026s-.648-.342-1.08-.342c-.272%200-.51.05-.714.15s-.372.234-.504.402c-.133.168-.23.364-.295.588-.064.224-.097.46-.097.708h-1.02c.016-.408.082-.78.197-1.116.116-.336.282-.624.498-.864.217-.24.486-.428.81-.564.325-.136'
||'.698-.204%201.123-.204.368%200%20.71.046%201.026.138.316.092.59.23.822.414s.414.42.546.708.198.628.198%201.02c0%20.384-.112.724-.336%201.02-.225.296-.504.52-.84.672v.024c.52.112.906.356%201.158.732s.378.82.378%201.332c0%20.424-.078.798-.234%201.122-.'
||'156.324-.366.594-.63.81-.264.216-.574.378-.93.486-.356.108-.734.162-1.135.162-.432%200-.823-.06-1.176-.18-.352-.12-.652-.298-.9-.534-.247-.236-.437-.526-.57-.87-.13-.344-.193-.736-.186-1.176h1.022c.016.552.176%201.002.48%201.35.304.348.747.522%201.33'
||'.522.25%200%20.485-.038.71-.114.224-.076.42-.184.587-.324s.302-.312.4-.516.15-.434.15-.69c0-.264-.047-.498-.144-.702-.096-.204-.224-.376-.384-.516s-.35-.244-.57-.312c-.22-.068-.458-.102-.714-.102-.216%200-.42.012-.61.036v-.864c.04.008.077.012.11.012z'
||'%22%2F%3E%3Cpath%20fill%3D%22%23CACACA%22%20d%3D%22M156.844%2065.608v.9h-1.152V68.5h-.96v-1.992H151v-.984l3.876-5.532h.815v5.616h1.154zm-2.113-4.164h-.022l-2.832%204.164h2.855v-4.164zM178.872%2061.036l-.456%202.448.024.024c.184-.208.422-.362.714-.462'
||'.292-.1.582-.15.87-.15.376%200%20.732.06%201.068.18.336.12.628.302.876.546.248.244.444.548.588.912.144.364.216.79.216%201.278%200%20.36-.062.71-.186%201.05-.124.34-.31.642-.558.906s-.558.474-.93.63c-.372.156-.806.234-1.302.234-.368%200-.714-.054-1.03'
||'8-.162-.324-.108-.61-.264-.858-.468s-.444-.458-.588-.762c-.144-.304-.22-.648-.228-1.032h1.02c.016.216.07.418.162.606s.216.352.372.492.34.248.552.324c.212.076.446.114.702.114.24%200%20.47-.042.69-.126.22-.084.412-.21.576-.378.164-.168.294-.378.39-.63.'
||'096-.252.144-.546.144-.882%200-.28-.046-.538-.138-.774-.092-.236-.222-.44-.39-.612s-.37-.306-.606-.402c-.236-.096-.498-.144-.786-.144-.336%200-.634.074-.894.222s-.49.342-.69.582l-.876-.048.792-4.416h4.2v.9h-3.432z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%2'
||'2%20stroke%3D%22%23CCC%22%20stroke-miterlimit%3D%2210%22%20d%3D%22M75%2046.5h105%22%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22154%22%20cy%3D%2246%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23FFF%22%20cx%3D%22154%22%20cy%3D%2246%22%20r%3D%223%2'
||'2%2F%3E%3Ccircle%20fill%3D%22%23CCC%22%20cx%3D%22180%22%20cy%3D%2246%22%20r%3D%224%22%2F%3E%3Ccircle%20fill%3D%22%23FFF%22%20cx%3D%22180%22%20cy%3D%2246%22%20r%3D%223%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M83%20125c0-.552-.448-1-1-1H71c-.552'
||'%200-1%20.448-1%201v11c0%20.552.448%201%201%201h11c.552%200%201-.448%201-1v-11z%22%2F%3E%3Cpath%20fill%3D%22%23F8F8F8%22%20d%3D%22M71%20125h11v11H71z%22%2F%3E%3Cpath%20fill%3D%22%23CCC%22%20d%3D%22M78%20134.1c-.153%200-.307-.06-.424-.176l-3.424-3.424'
||'%203.424-3.424c.234-.234.614-.234.85%200s.233.614%200%20.85l-2.577%202.575%202.575%202.577c.234.234.234.614%200%20.85-.118.115-.272.173-.425.173zM186%20135.818c0%20.653-.53%201.182-1.182%201.182h-10.636c-.653%200-1.182-.53-1.182-1.182v-10.636c0-.653.'
||'53-1.182%201.182-1.182h10.636c.653%200%201.182.53%201.182%201.182v10.636z%22%2F%3E%3Cpath%20fill%3D%22%23FFF%22%20d%3D%22M178%20134.1c-.153%200-.307-.06-.424-.176-.234-.234-.234-.614%200-.85l2.576-2.575-2.576-2.577c-.234-.234-.234-.614%200-.85s.614-.'
||'233.85%200l3.423%203.425-3.425%203.424c-.118.12-.272.178-.425.178z%22%2F%3E%3C%2Fsvg%3E'');',
'  background-repeat: no-repeat; }'))
,p_step_template=>wwv_flow_imp.id(4053994380817400616)
,p_page_css_classes=>'dm-Page'
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_help_text=>unistr('\6B64\9875\9762\6682\65E0\5E2E\52A9\4FE1\606F\3002')
,p_page_comment=>'apex.theme42demo.noNavigate();'
,p_page_component_map=>'11'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(944554447966467904)
,p_plug_name=>unistr('\533A\57DF\663E\793A\9009\62E9\5668')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_region_icons', 'N',
  'include_show_all', 'Y',
  'rds_mode', 'STANDARD',
  'remember_selection', 'SESSION')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2310392086752317717)
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
 p_id=>wwv_flow_imp.id(2638844460060527417)
,p_plug_name=>unistr('\6807\51C6')
,p_region_name=>'standard'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>The default page template. Ideal for home pages, dashboards, large reports, and other layouts where maximum screen real-estate is desired.<p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2638844990507527429)
,p_plug_name=>unistr('\6807\51C6 Page with Side \5BFC\822A')
,p_parent_plug_id=>wwv_flow_imp.id(2638844460060527417)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page side-nav-one-column"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1101:&APP_SESSION.'',''Standard with Side Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639177634395940228)
,p_plug_name=>unistr('\5DE6\4FA7\680F')
,p_region_name=>'left_side'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Features a left-side display position for search filters, charts, and other interactive widgets.<p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639183456583994368)
,p_plug_name=>unistr('\5DE6\4FA7\680F with Side \5BFC\822A')
,p_parent_plug_id=>wwv_flow_imp.id(2639177634395940228)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>60
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page side-nav-left-column"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1103:&APP_SESSION.'',''Left Side Column Page with Side Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639249790323399350)
,p_plug_name=>unistr('\53F3\4FA7\680F')
,p_region_name=>'right_side'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This page template features a collapsible right-side display position and is especially useful for displaying action-oriented controls such as buttons or lists.<p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639255434279409681)
,p_plug_name=>unistr('\53F3\4FA7\680F with Side \5BFC\822A')
,p_parent_plug_id=>wwv_flow_imp.id(2639249790323399350)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>90
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page side-nav-right-column"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1105:&APP_SESSION.'',''Right Side Column Page with Side Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639259815545426295)
,p_plug_name=>'Both Side Column'
,p_region_name=>'both_sides'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This page template features both the left side column and the collapsible right-side column and is well suited for very complex pages.<p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639265135715439466)
,p_plug_name=>unistr('Side Columns Page with Side \5BFC\822A')
,p_parent_plug_id=>wwv_flow_imp.id(2639259815545426295)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>120
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page side-nav-side-columns"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1109:&APP_SESSION.'',''Left and Right Side Columns Page with Side Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639271573192459635)
,p_plug_name=>'Marquee Detail'
,p_region_name=>'master_detail'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>This page template features a collapsible right side column and a title-bar area which contains primary information. This page template is well suited for displaying information about a master record with detailed reports or charts in the body.<p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639285674620478850)
,p_plug_name=>unistr('Master Detail Page with Side \5BFC\822A')
,p_parent_plug_id=>wwv_flow_imp.id(2639271573192459635)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page side-nav-master-detail-page"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1107:&APP_SESSION.'',''Master Detail Page with Side Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639303346901495111)
,p_plug_name=>'Dialog'
,p_region_name=>'dialog'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>These page templates can be loaded as either modal or non-modal (pop-up) dialogs and are very useful for displaying commonly used forms, reports, and other components.</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639307511897501239)
,p_plug_name=>unistr('\6807\51C6 Dialog Page')
,p_parent_plug_id=>wwv_flow_imp.id(2639303346901495111)
,p_region_css_classes=>'dm-Hero-screenshot'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<span class="dm-Icon dm-Icon--page standard-dialog"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639308316237501241)
,p_plug_name=>unistr('\5411\5BFC Dialog Page')
,p_parent_plug_id=>wwv_flow_imp.id(2639303346901495111)
,p_region_css_classes=>'dm-Hero-screenshot'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>'<span class="dm-Icon dm-Icon--page wizard-dialog"></span>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639326075239538138)
,p_plug_name=>'Other'
,p_region_name=>'other'
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>The <strong>Login</strong> page template provides an elegant user interface for your app''s log in page.<p>',
'<p>The <strong>Minimal Page</strong> page template is useful for single page applications or pages where navigation is not necessary.<p>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639330592716542825)
,p_plug_name=>unistr('\7B80\6D01\9875\9762\6A21\677F')
,p_parent_plug_id=>wwv_flow_imp.id(2639326075239538138)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>150
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page minimal-page"></span>',
'<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1113:&APP_SESSION.'',''Minimal Page without Navigation'')" type="button">View Sample</span>',
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2639331102742542825)
,p_plug_name=>unistr('\767B\5F55\9875\6A21\677F')
,p_parent_plug_id=>wwv_flow_imp.id(2639326075239538138)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(4483079085784721863)
,p_plug_display_sequence=>160
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_item_display_point=>'BELOW'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span class="dm-Icon dm-Icon--page login-page"></span>',
unistr('<button class="t-Button t-Button--icon t-Button--iconRight" onclick="apex.theme42demo.openSamplePage(''f?p=&APP_ID.:1114:&APP_SESSION.'',''\767B\5F55\9875'')" type="button">View Sample</span>'),
'</button>'))
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(3315766516695599118)
,p_plug_name=>unistr('\6982\89C8')
,p_region_template_options=>'#DEFAULT#:t-ContentBlock--h2'
,p_plug_template=>wwv_flow_imp.id(2303754088075183486)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>8
,p_plug_grid_column_css_classes=>'col-sm-12'
,p_plug_source=>'<p>Page Templates define the layout and purpose of your pages. This page shows samples of all the available page templates. Universal Theme supports two types of Navigation Menus: tree-based navigation on the side, and tab-like navigation on the top.'
||'</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2222196880194417949)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2639307511897501239)
,p_button_name=>'STD_DIALOG_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\67E5\770B Sample')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1111:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2222197574981417950)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2639308316237501241)
,p_button_name=>'WIZ_DIALOG_VIEW'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_imp.id(4054001381371400634)
,p_button_image_alt=>unistr('\67E5\770B Sample')
,p_button_position=>'NEXT'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:1112:&SESSION.::&DEBUG.:RP::'
);
wwv_flow_imp.component_end;
end;
/

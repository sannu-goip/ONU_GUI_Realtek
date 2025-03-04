<% SendWebHeadStr();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>

<HEAD>
<title><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK 
href="/web/JS/stylemain.css" type=text/css rel=stylesheet>
<SCRIPT language=javascript src="/web/Dashboard/JS/menu.js"></SCRIPT>
<SCRIPT language=javascript src="/Dashboard/JS/jquery.js"></SCRIPT>
<SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
<link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" rel="stylesheet">

<style>

.white_box {
    background: #fff;
    border-radius: 4px;
    box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
    padding: 15px;
    margin-bottom: 20px;
    
.scoop-inner-content {
    padding: 20px;
}
.img_sub {
    vertical-align: sub;
}
.heading_grey {
    font-weight: 300;
    color: #f58220;
    font-size: 30px;
    padding: 0px 12px;
    margin: 0px;
}
.grey_btn {
    background: #a4a6a9;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #a4a6a9;
}
.form-footer button {
    min-width: 100px;
}
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
.form-footer {
    text-align: right;
    padding: 0px 0px 2px 0px;
}
.margin_adjs {
    margin-right: -30px;
    margin-left: -30px;
}
hr {
    border-top: 1px solid #ced4da;
}
hr {
    margin-top: 1rem;
    margin-bottom: 1rem;
    border: 0;
    border-top: 1px solid rgba(0, 0, 0, .1);
}
hr {
    box-sizing: content-box;
    height: 0;
    overflow: visible;
}
.data_common_notitle {
    border-top: 1px solid #D3D3D3;
    margin-top: 10px;
}
.data_common {
    padding: 1px;
    background: #fff;
    border: 1px solid #D3D3D3;
    border-top: 0;
}
.data_common table {
    border-collapse: separate;
    width: 100%;
    border-spacing: 2px;
    background: #fff;
}
.data_common table th {
    font-weight: bold;
}
.data_common table td, .data_common table th {
    background: #F5F5F5;
    padding: 5px 6px;
}

caption, th {
    text-align: left;
}
address, caption, cite, code, dfn, strong, th, var {
    font-style: normal;
    font-weight: normal;
}
.inner_btn {
    padding: 1px 5px;
}
input, select, textarea {
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -ms-box-sizing: border-box;
    box-sizing: border-box;
    margin: 0 3px;
}
.data_common_notitle {
    border-top: 1px solid #D3D3D3;
    margin-top: 10px;
}
.btn-orang {
    background-color: #f58220;
    color: white;
}
.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.scoop-trigger.active > a {
    background: #f3f3f3;
    color: #f68220;
}

.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.scoop-trigger > a {
    background: #f3f3f3;
    border-bottom-color: #eeeeee;
    color: #f68220;
}

.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li:hover > a:before {
    border-left-color: #f68220;
}

#overflow-amit{
height:400px;
  overscroll-behavior-y: contain;
 
}

.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.active > a {
    background: rgba(243,243,243,1.00);
    color: #0c0c0c;
    font-weight: 500;
}
.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li > a {
color: #0c0c0c;
    font-weight: 500;

}

.scoop-logo {
    padding: 6px;
    border-bottom: solid 1px #eeeeee;
    text-align: center;
}


.input-group-text {
    display: -ms-flexbox;
    display: flex;
    -ms-flex-align: center;
    align-items: center;
    padding: 0.375rem 0.75rem;
    margin-bottom: 0;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    text-align: center;
    white-space: nowrap;
    background-color: #f58220;
    border: 1px solid #f58220;
    border-radius: 0.25rem;
} 
.breadcrum_box {
    padding: 8px 12px;
    background: #fdfdfd;
    box-shadow: 0px 0px 6px rgba(0,0,0,0.1);
    position: relative;
}

.breadcrum_box ul li {
    display: inline-block;
     padding: 0px 15px;
    color: #a4a6a9; 
    font-size: 13px; 
}  

.help_icon {
    position: absolute;
    right: 14px;
    top: 7px;
}
.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.scoop-trigger.active > a {
    background: #f3f3f3;
    color: #f68220;
}

.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.scoop-trigger > a {
    background: #f3f3f3;
    border-bottom-color: #eeeeee;
    color: #f68220;
}

.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li:hover > a:before {
    border-left-color: #f68220;
}


.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li.active > a {
    background: rgba(243,243,243,1.00);
    color: #0c0c0c;
    font-weight: 500;
}
.scoop .scoop-navbar[navbar-theme="theme4"] .scoop-item > li > a {
color: #0c0c0c;
    font-weight: 500;

}
.lighter_grey_bg {
    background: #eeeeee;
    padding: 20px 30px;
    margin-right: -30px;
    margin-left: -30px;
    margin-bottom: 20px;
}
.heading_grey {
    font-weight: 300;
    color: #fd7e14;
    font-size: 30px;
    padding: 0px 12px;
    margin: 0px;
}
   
    .heading_margin {
    margin-bottom: 15px;
}
tbody{
font-size:13px;
}
</style>

<script>
var need_upgrade_pwd = <% checkWrite("need_upgrade_pwd") %>
function sendClicked()
{
 if(need_upgrade_pwd )
 {
  if (document.authcheck.upgradepass.value == "" || document.authcheck.upgradepass.value != "3hwdm@Netmax") {
   alert("Error: wrong password!");
   document.authcheck.upgradepass.focus();
   return false;
  }
 }
 if (document.password.binary.value=="") {
  alert("<% multilang("2262" "LANG_SELECTED_FILE_CANNOT_BE_EMPTY"); %>");
  document.password.binary.focus();
  return false;
 }
 if (!confirm('<% multilang("565" "LANG_PAGE_DESC_UPGRADE_CONFIRM")%>'))
  return false;
 else{
  setload();
  return true;
 }
}
</script>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()" marginwidth="0" marginheight="0" themebg-pattern="pattern6" style="-webkit-text-stroke: 0.05px; -webkit-font-smoothing: antialiased;">
     <input id="Selected_Menu" type="hidden" value="->" name="Sta_Dev"> 
		<div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left" vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact" vertical-effect="shrink" vnavigation-view="view1">	
			<div class="scoop-overlay-box"></div>
			<div class="scoop-container">  				
				<div class="scoop-main-container" style="min-height: 117px; margin-top: 0px;">
					<div class="scoop-wrapper">
						<nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0" sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle">
                                <a href="#"><i class="icon-close icons"></i></a>
                            </div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""></span></a>
							</div> 
							    <div id="LeftMenu"><ul class="scoop-item scoop-left-item left_nav" item-border="true" item-border-style="solid" subitem-border="true"> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('0')"><svg xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 -84 512 512" width="512pt"><path d="m467 194.945312h-35v-165c0-8.285156-6.714844-15-15-15s-15 6.714844-15 15v165h-292v-165c0-8.285156-6.714844-15-15-15s-15 6.714844-15 15v165h-35c-24.8125 0-45 20.183594-45 45v90c0 8.28125 6.714844 15 15 15h482c8.285156 0 15-6.71875 15-15v-90c0-24.816406-20.1875-45-45-45zm15 120h-452v-75c0-8.273437 6.730469-15 15-15h422c8.269531 0 15 6.726563 15 15zm0 0"></path><path d="m192.359375 56.304688c35.09375-35.089844 92.1875-35.089844 127.28125 0 2.925781 2.929687 6.765625 4.394531 10.605469 4.394531 3.835937 0 7.675781-1.464844 10.605468-4.394531 5.859376-5.855469 5.859376-15.355469 0-21.214844-46.789062-46.785156-122.917968-46.785156-169.707031 0-5.855469 5.859375-5.855469 15.355468 0 21.214844 5.859375 5.855468 15.359375 5.855468 21.214844 0zm0 0"></path><path d="m287.820312 103.125c3.835938 0 7.675782-1.464844 10.605469-4.394531 5.855469-5.855469 5.855469-15.355469 0-21.210938-11.332031-11.335937-26.398437-17.574219-42.425781-17.574219s-31.09375 6.238282-42.425781 17.574219c-5.859375 5.855469-5.859375 15.351563 0 21.210938 5.855469 5.859375 15.355469 5.855469 21.210937 0 5.667969-5.667969 13.199219-8.785157 21.214844-8.785157 8.011719 0 15.546875 3.117188 21.210938 8.785157 2.929687 2.929687 6.769531 4.394531 10.609374 4.394531zm0 0"></path><path d="m211 269.945312c0 8.28125-6.714844 15-15 15s-15-6.71875-15-15c0-8.285156 6.714844-15 15-15s15 6.714844 15 15zm0 0"></path><path d="m271 269.945312c0 8.28125-6.714844 15-15 15s-15-6.71875-15-15c0-8.285156 6.714844-15 15-15s15 6.714844 15 15zm0 0"></path><path d="m331 269.945312c0 8.28125-6.714844 15-15 15s-15-6.71875-15-15c0-8.285156 6.714844-15 15-15s15 6.714844 15 15zm0 0"></path><path d="m271 134.945312c0 8.28125-6.714844 15-15 15s-15-6.71875-15-15c0-8.285156 6.714844-15 15-15s15 6.714844 15 15zm0 0"></path></svg><span class="scoop-mtext">Status</span></a><ul class="scoop-submenu" id="StatusMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('1')"><svg xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 0 512 512" width="512pt"><path d="m140.328125 61.792969c34.820313-20.863281 74.308594-31.792969 115.671875-31.792969 124.617188 0 226 101.382812 226 226 0 41.039062-10.765625 80.253906-31.328125 114.890625 9.449219 4.070313 17.644531 10.5 23.855469 18.542969 24.585937-40.042969 37.472656-85.648438 37.472656-133.433594 0-68.378906-26.628906-132.667969-74.980469-181.019531-48.351562-48.351563-112.640625-74.980469-181.019531-74.980469-48.027344 0-93.828125 13.007812-134 37.820312 7.976562 6.269532 14.339844 14.496094 18.328125 23.972657zm0 0"></path><path d="m372.035156 449.992188c-34.90625 21.007812-74.515625 32.007812-116.035156 32.007812-124.617188 0-226-101.382812-226-226 0-41.363281 10.929688-80.847656 31.792969-115.671875-9.472657-3.988281-17.703125-10.351563-23.972657-18.328125-24.8125 40.171875-37.820312 85.972656-37.820312 134 0 68.378906 26.628906 132.667969 74.980469 181.019531 48.351562 48.351563 112.640625 74.980469 181.019531 74.980469 48.328125 0 94.375-13.15625 134.710938-38.253906-8.082032-6.167969-14.550782-14.332032-18.675782-23.753906zm0 0"></path><path d="m115 85c0 16.570312-13.429688 30-30 30s-30-13.429688-30-30 13.429688-30 30-30 30 13.429688 30 30zm0 0"></path><path d="m457.027344 426.027344c0 16.566406-13.433594 30-30 30-16.570313 0-30-13.433594-30-30 0-16.570313 13.429687-30 30-30 16.566406 0 30 13.429687 30 30zm0 0"></path><path d="m439.0625 271h-68.179688c-1.964843 54.363281-14.28125 108.109375-43.679687 154.300781 61.628906-26.015625 106.207031-84.742187 111.859375-154.300781zm0 0"></path><path d="m271 241h69.863281c-1.742187-45.066406-11.332031-86.773438-27.4375-118.726562-12.097656-23.996094-27.011719-40.253907-42.425781-46.757813zm0 0"></path><path d="m312.855469 390.847656c.191406-.371094.378906-.746094.570312-1.121094 16.105469-31.949218 25.695313-73.65625 27.4375-118.726562h-69.863281v165.484375c15.171875-6.402344 29.863281-22.257813 41.855469-45.636719zm0 0"></path><path d="m327.203125 86.699219c4.605469 6.65625 8.957031 14.023437 13.011719 22.070312 18.140625 35.984375 28.871094 82.472657 30.667968 132.230469h68.175782c-5.648438-69.558594-50.226563-128.285156-111.855469-154.300781zm0 0"></path><path d="m140.328125 61.792969c34.820313-20.863281 74.308594-31.792969 115.671875-31.792969 124.617188 0 226 101.382812 226 226 0 41.039062-10.765625 80.253906-31.328125 114.890625 9.449219 4.070313 17.644531 10.5 23.855469 18.542969 24.585937-40.042969 37.472656-85.648438 37.472656-133.433594 0-68.378906-26.628906-132.667969-74.980469-181.019531-48.351562-48.351563-112.640625-74.980469-181.019531-74.980469-48.027344 0-93.828125 13.007812-134 37.820312 7.976562 6.269532 14.339844 14.496094 18.328125 23.972657zm0 0"></path><path d="m372.035156 449.992188c-34.90625 21.007812-74.515625 32.007812-116.035156 32.007812-124.617188 0-226-101.382812-226-226 0-41.363281 10.929688-80.847656 31.792969-115.671875-9.472657-3.988281-17.703125-10.351563-23.972657-18.328125-24.8125 40.171875-37.820312 85.972656-37.820312 134 0 68.378906 26.628906 132.667969 74.980469 181.019531 48.351562 48.351563 112.640625 74.980469 181.019531 74.980469 48.328125 0 94.375-13.15625 134.710938-38.253906-8.082032-6.167969-14.550782-14.332032-18.675782-23.753906zm0 0"></path><path d="m115 85c0 16.570312-13.429688 30-30 30s-30-13.429688-30-30 13.429688-30 30-30 30 13.429688 30 30zm0 0"></path><path d="m457.027344 426.027344c0 16.566406-13.433594 30-30 30-16.570313 0-30-13.433594-30-30 0-16.570313 13.429687-30 30-30 16.566406 0 30 13.429687 30 30zm0 0"></path><path d="m439.0625 271h-68.179688c-1.964843 54.363281-14.28125 108.109375-43.679687 154.300781 61.628906-26.015625 106.207031-84.742187 111.859375-154.300781zm0 0"></path><path d="m271 241h69.863281c-1.742187-45.066406-11.332031-86.773438-27.4375-118.726562-12.097656-23.996094-27.011719-40.253907-42.425781-46.757813zm0 0"></path><path d="m312.855469 390.847656c.191406-.371094.378906-.746094.570312-1.121094 16.105469-31.949218 25.695313-73.65625 27.4375-118.726562h-69.863281v165.484375c15.171875-6.402344 29.863281-22.257813 41.855469-45.636719zm0 0"></path><path d="m327.203125 86.699219c4.605469 6.65625 8.957031 14.023437 13.011719 22.070312 18.140625 35.984375 28.871094 82.472657 30.667968 132.230469h68.175782c-5.648438-69.558594-50.226563-128.285156-111.855469-154.300781zm0 0"></path><path d="m184.796875 425.300781c-4.605469-6.65625-8.957031-14.023437-13.011719-22.070312-18.140625-35.984375-28.871094-82.472657-30.667968-132.230469h-68.179688c5.652344 69.558594 50.230469 128.285156 111.859375 154.300781zm0 0"></path><path d="m241 436.484375v-165.484375h-69.863281c1.742187 45.066406 11.332031 86.773438 27.4375 118.726562 12.097656 23.996094 27.011719 40.253907 42.425781 46.757813zm0 0"></path><path d="m198.574219 122.273438c-16.105469 31.953124-25.695313 73.660156-27.4375 118.726562h69.863281v-165.484375c-15.414062 6.503906-30.328125 22.761719-42.425781 46.757813zm0 0"></path><path d="m171.785156 108.769531c4.058594-8.046875 8.40625-15.414062 13.011719-22.070312-61.628906 26.015625-106.207031 84.742187-111.859375 154.300781h68.179688c1.796874-49.757812 12.527343-96.246094 30.667968-132.230469zm0 0"></path></svg><span class="scoop-mtext">Net</span></a><ul class="scoop-submenu" id="NetMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('8')"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 0 512 512"><path class="cls-1" d="M250.96,0c69.85-.03,147.4,22.82,205.2,62.02,10.44,7.08,42.8,31,46.07,41.81,4.86,16.1-10.1,33.3-27.23,30.12-10.74-1.99-49.2-35.1-64.11-43.62-101.24-57.83-224.12-56.4-324.24,2.83-13.82,8.17-52.31,41.48-62.79,41.48-19.11,0-29.33-21.3-20.85-37.43,3.31-6.31,28.14-24.3,35.51-29.53C99.06,24.73,176.39.03,250.96,0Z"></path><path class="cls-1" d="M231.22,130.22c47.18-3.89,99.06,7.18,140.05,30.83,18.9,10.9,47.74,26.59,36.6,52.49-13.05,30.34-45.99-2.6-61.03-11.09-65.27-36.88-133.89-32.71-197.96,3.87-15.74,8.99-39.58,36.88-55.07,5.84-10.08-20.21,9.51-32.83,23.91-42.65,31.74-21.64,75.29-36.14,113.48-39.29h0Z"></path><path class="cls-1" d="M231.1,260.25c23.73-3.23,75.16-.29,86.27,25.48,4.45,10.33-2.57,28.11-13.5,30.3-19.99,4-34.49-11.3-53.71-11.22-21.4.1-42.86,26.55-60.87,4.27-22.5-27.82,18.91-45.72,41.81-48.84h0Z"></path></svg><span class="scoop-mtext">Wi-Fi</span></a><ul class="scoop-submenu" id="Wi-FiMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('13')"><svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="Rectangle_4_copy_3" data-name="Rectangle 4 copy 3" class="cls-1" d="M36,38H2a2,2,0,0,1-2-2V2A2,2,0,0,1,2,0H36a2,2,0,0,1,2,2V36A2,2,0,0,1,36,38ZM16,3H5A2,2,0,0,0,3,5V33a2,2,0,0,0,2,2H16V3ZM35,5a2,2,0,0,0-2-2H18V18H28.586L24,13.414,25.414,12l6,6H32v0.586l0.457,0.457L32,19.5V20H31.5l-0.457.457L31,20.414l-6.043,6.043-1.414-1.414L28.586,20H18V35H33a2,2,0,0,0,2-2V5ZM12,8H6V6h6V8Zm0,6H6V12h6v2Zm0,6H6V18h6v2Zm0,6H6V24h6v2Z"></path></svg><span class="scoop-mtext">APP</span></a><ul class="scoop-submenu" id="APPMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('23')"><svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 519 524.75"><path class="cls-2" d="M459.53,154.14c-1.44-2.46-2.91-4.89-4.44-7.29-40.81.2-82.43-1.5-123.34-1.53-3.57,0-6.52,1.45-10.61,1.31-34.88-1.12-55.21-43.49-33.56-71.35,11.14-14.33,24.5-18.09,42.27-17.64.77-3.81,1.33-7.35,2-10.72-2.26-.84-4.53-1.64-6.82-2.41-24.66-8.28-51.07-12.77-78.53-12.77C110.36,31.75,0,142.1,0,278.25s110.36,246.5,246.5,246.5c50.82,0,98.05-15.38,137.28-41.73-19.36-5.97-38.06-16.39-54.81-30.72-5.32,5.44-10.65,10.88-15.97,16.32-3.73,3.81-9.28,5.18-14.35,3.55-34.35-11.04-90.36-34.43-143.65-84.42-64.07-60.1-91.27-127.75-102.64-164.14-1.5-4.82-.3-10.07,3.14-13.76l8.17-8.76,39.34-43.51c3.76-4.16,10.18-4.48,14.34-.72l52.09,47.1c4.15,3.77,4.48,10.18.72,14.34l-41.78,46.2c-1.81,2.01-4.26,3.12-6.76,3.31,10.52,20.51,24.58,42.08,43.38,62.94,32.16,35.66,68.26,58.23,100.55,72.55l-.89-.89c-3.96-3.96-3.96-10.39,0-14.35l44.05-44.05c3.96-3.96,10.39-3.96,14.35,0l49.66,49.66c3.97,3.97,3.97,10.39,0,14.36l-19.72,19.72c-4.27,4.37-8.55,8.73-12.82,13.1,18.35,15.48,39.13,25.75,60.3,29.9,42.86-34.32,74-82.66,86.48-138.06.87-3.85,1.65-7.73,2.33-11.64h0c.62-3.51,1.16-7.03,1.62-10.58,1.38-10.54,2.09-21.3,2.09-32.22,0-45.25-12.19-87.65-33.47-124.1Z"></path><path class="cls-2" d="M500.39,452.57c-16.11,21.36-41.38,34.16-71.16,36.04-2.5.16-5.02.24-7.53.24-12.69,0-25.44-1.99-37.92-5.83,2.87-1.93,5.7-3.92,8.48-5.96,2.79-2.05,5.53-4.15,8.22-6.31,9.24,1.82,18.54,2.47,27.75,1.89,25.04-1.58,46.13-12.13,59.38-29.71,21.18-28.08,20.4-72.5-.65-110.24-2.52-4.53-5.33-8.96-8.44-13.25l6.48-4.69,5.91-4.28.57-.41c33,45.65,36.75,105.58,8.91,142.51Z"></path><path class="cls-1" d="M470.2,70.32c-4.92-22.24-26.79-36.72-49.18-31.14-15.35-51.93-87.25-44.59-95.99,5.34-.39,2.2-.65,4.48-.78,6.84-68.93-.27-69.98,97.78-1.97,102.32,44.35-6.17,92.73,2.46,137.25.47,3.29-.14,6.55-.34,9.79-.61,55.86-4.68,55-80.15.88-83.22ZM466.61,146.75c-3.83.06-7.67.09-11.52.11-40.81.2-82.43-1.5-123.34-1.53-3.57,0-6.52,1.45-10.61,1.31-34.88-1.12-55.21-43.49-33.56-71.35,11.14-14.33,24.5-18.09,42.27-17.64.77-3.81,1.33-7.35,2-10.72,1.37-6.97,3.19-13.25,8.24-19.89,23.11-30.41,69.37-17.17,76.35,19.09,3.56-.38,5.81-.8,8.56-1.38,2.28-.48,4.55-.18,7.37.01,15.78,1.02,30.85,14.73,31.06,30.95,15.62,2.05,29.04,4.27,36.8,19.73,12.86,25.62-6.54,50.91-33.62,51.31Z"></path></svg><span class="scoop-mtext">Voice</span></a><ul class="scoop-submenu" id="VoiceMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('27')"><svg xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 0 512 512"><path d="M319.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM377.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM377.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM319.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM454.78,273H131.66c-17.64,0-31.94,14.3-31.94,31.94v28.12c0,17.64,14.3,31.94,31.94,31.94h323.12c17.64,0,31.94-14.3,31.94-31.94v-28.12c0-17.64-14.3-31.94-31.94-31.94ZM148.22,331c-5.8,0-10.5-4.7-10.5-10.5s4.7-10.5,10.5-10.5,10.5,4.7,10.5,10.5-4.7,10.5-10.5,10.5ZM178.22,324c-3.04,0-5.5-2.46-5.5-5.5s2.46-5.5,5.5-5.5,5.5,2.46,5.5,5.5-2.46,5.5-5.5,5.5ZM198.22,331c-5.8,0-10.5-4.7-10.5-10.5s4.7-10.5,10.5-10.5,10.5,4.7,10.5,10.5-4.7,10.5-10.5,10.5ZM230.22,331c-5.8,0-10.5-4.7-10.5-10.5s4.7-10.5,10.5-10.5,10.5,4.7,10.5,10.5-4.7,10.5-10.5,10.5ZM265.22,331c-5.8,0-10.5-4.7-10.5-10.5s4.7-10.5,10.5-10.5,10.5,4.7,10.5,10.5-4.7,10.5-10.5,10.5ZM319.13,340.47c-11.59,0-21-9.41-21-21s9.41-21,21-21,21,9.4,21,21-9.4,21-21,21ZM377.13,340.47c-11.59,0-21-9.41-21-21s9.41-21,21-21,21,9.4,21,21-9.4,21-21,21ZM437.66,341.47c-11.59,0-21-9.41-21-21s9.41-21,21-21,21,9.4,21,21-9.4,21-21,21ZM437.66,308.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM377.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM319.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM319.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06ZM319.13,307.41c-6.66,0-12.06,5.4-12.06,12.06s5.4,12.06,12.06,12.06,12.06-5.4,12.06-12.06-5.4-12.06-12.06-12.06Z"></path><circle cx="319.13" cy="319.47" r="12.06"></circle><circle cx="319.13" cy="319.47" r="12.06"></circle><circle cx="377.13" cy="319.47" r="12.06"></circle><circle cx="377.13" cy="319.47" r="12.06"></circle><circle cx="437.66" cy="320.47" r="12.06"></circle><circle cx="437.66" cy="320.47" r="12.06"></circle><path d="M210.72,376h11s0,45,0,45c0,0,0,7-8,9h-13l-7-10h17v-44Z"></path><path d="M236.72,376h10v58l-10,16c-.26,0-3.97.04-6-3-1.45-2.16-1.1-4.47-1-5,2.33-3.67,4.67-7.33,7-11v-55Z"></path><path d="M375.72,376h-11s0,45,0,45c0,0,0,7,8,9h13s7-10,7-10h-17v-44Z"></path><path d="M349.72,375h-10s0,58,0,58l10,16c.26,0,3.97.04,6-3,1.45-2.16,1.1-4.47,1-5-2.33-3.67-4.67-7.33-7-11,0-18.33,0-36.67,0-55Z"></path><rect x="262.72" y="376" width="10" height="145"></rect><rect x="288.72" y="375" width="10" height="145"></rect><rect x="313.72" y="375" width="10" height="145"></rect><path d="M134.72,374h56v7.32c0,3.14-2.55,5.68-5.68,5.68h-44.63c-3.14,0-5.68-2.55-5.68-5.68v-7.32h0Z"></path><path d="M394.72,374h56v7.32c0,3.14-2.55,5.68-5.68,5.68h-44.63c-3.14,0-5.68-2.55-5.68-5.68v-7.32h0Z"></path><polygon points="212.72 260 186.72 260 193.69 175.66 193.69 175.6 196.72 139 203.72 139 212.72 260"></polygon><path d="M202.72,260h-16l6.97-84.34c0,20.71.7,82.67,9.03,84.34Z"></path><circle cx="199.72" cy="129" r="7"></circle><polygon points="394.72 260 368.72 260 375.69 175.66 375.69 175.6 378.72 139 385.72 139 394.72 260"></polygon><path d="M384.72,260h-16l6.97-84.34c0,20.71.7,82.67,9.03,84.34Z"></path><circle cx="381.72" cy="129" r="7"></circle><circle cx="291.52" cy="164" r="13"></circle><polygon points="302.72 260 280.72 260 282.35 222.04 283.72 190 299.72 190 302.72 260"></polygon><path d="M295.72,260h-15l1.63-37.96c.9,19.03,13.37,37.96,13.37,37.96Z"></path><path d="M291.26,34.79c29.21-.01,61.63,9.54,85.8,25.93,4.37,2.96,17.9,12.96,19.26,17.48,2.03,6.73-4.22,13.92-11.39,12.59-4.49-.83-20.57-14.68-26.81-18.24-42.33-24.18-93.71-23.59-135.58,1.18-5.78,3.42-21.87,17.34-26.26,17.34-7.99,0-12.26-8.91-8.72-15.65,1.39-2.64,11.77-10.16,14.85-12.35,25.31-17.95,57.65-28.28,88.83-28.29Z"></path><path d="M284.37,73.24c19.73-1.63,41.42,3,58.56,12.89,7.9,4.56,19.96,11.12,15.3,21.95-5.46,12.69-19.23-1.09-25.52-4.64-27.29-15.42-55.98-13.68-82.77,1.62-6.58,3.76-16.55,15.42-23.03,2.44-4.22-8.45,3.98-13.73,10-17.83,13.27-9.05,31.48-15.11,47.45-16.43Z"></path><path d="M283.3,110.61c9.92-1.35,31.43-.12,36.07,10.65,1.86,4.32-1.08,11.75-5.64,12.67-8.36,1.67-14.42-4.73-22.46-4.69-8.95.04-17.92,11.1-25.45,1.79-9.41-11.63,7.91-19.12,17.48-20.42Z"></path><circle cx="125.35" cy="225.72" r="8.28"></circle><circle cx="293.72" cy="540.46" r="10.46"></circle><path d="M125.22,162c14.61,0,30.83,4.77,42.93,12.97,2.18,1.48,8.95,6.49,9.64,8.75,1.02,3.37-2.11,6.97-5.7,6.3-2.25-.42-10.29-7.34-13.41-9.13-21.18-12.1-46.88-11.8-67.83.59-2.89,1.71-10.94,8.68-13.14,8.68-4,0-6.14-4.46-4.36-7.83.69-1.32,5.89-5.08,7.43-6.18,12.66-8.98,28.84-14.15,44.44-14.15Z"></path><path d="M121.77,181.24c9.87-.81,20.72,1.5,29.3,6.45,3.95,2.28,9.99,5.56,7.66,10.98-2.73,6.35-9.62-.54-12.77-2.32-13.65-7.72-28.01-6.84-41.41.81-3.29,1.88-8.28,7.72-11.52,1.22-2.11-4.23,1.99-6.87,5-8.92,6.64-4.53,15.75-7.56,23.74-8.22Z"></path><path d="M121.23,199.93c4.96-.68,15.72-.06,18.05,5.33.93,2.16-.54,5.88-2.82,6.34-4.18.84-7.22-2.36-11.24-2.35-4.48.02-8.97,5.55-12.73.89-4.71-5.82,3.96-9.56,8.75-10.22Z"></path><circle cx="456.72" cy="225.72" r="8.28"></circle><path d="M456.59,162c14.61,0,30.83,4.77,42.93,12.97,2.18,1.48,8.95,6.49,9.64,8.75,1.02,3.37-2.11,6.97-5.7,6.3-2.25-.42-10.29-7.34-13.41-9.13-21.18-12.1-46.88-11.8-67.83.59-2.89,1.71-10.94,8.68-13.14,8.68-4,0-6.14-4.46-4.36-7.83.69-1.32,5.89-5.08,7.43-6.18,12.66-8.98,28.84-14.15,44.44-14.15Z"></path><path d="M452.65,181.24c9.87-.81,20.72,1.5,29.3,6.45,3.95,2.28,9.99,5.56,7.66,10.98-2.73,6.35-9.62-.54-12.77-2.32-13.65-7.72-28.01-6.84-41.41.81-3.29,1.88-8.28,7.72-11.52,1.22-2.11-4.23,1.99-6.87,5-8.92,6.64-4.53,15.75-7.56,23.74-8.22Z"></path><path d="M452.61,199.93c4.96-.68,15.72-.06,18.05,5.33.93,2.16-.54,5.88-2.82,6.34-4.18.84-7.22-2.36-11.24-2.35-4.48.02-8.97,5.55-12.73.89-4.71-5.82,3.96-9.56,8.75-10.22Z"></path><path d="M85.15,453.03s-29.25-2.07-29.02,25.34c."></path></svg><span class="scoop-mtext">TR069</span></a><ul class="scoop-submenu" id="TR069Menu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('28')"><svg xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 -21 512 512" width="512pt"><path d="m372 301.058594v6.238281c0 23.03125 8.988281 44.324219 25 59.960937 16.011719-15.636718 25-36.929687 25-59.960937v-6.238281c-8.585938-2.855469-16.941406-6.371094-25-10.515625-8.058594 4.144531-16.414062 7.660156-25 10.515625zm0 0"></path><path d="m497 220h-20c-26.613281 0-52.03125-12.710938-68-34-2.832031-3.777344-7.277344-6-12-6s-9.167969 2.222656-12 6c-15.96875 21.289062-41.386719 34-68 34h-20c-8.285156 0-15 6.714844-15 15v72.296875c0 34.925781 10.351562 68.675781 29.929688 97.59375 19.582031 28.921875 47.070312 51.066406 79.5 64.039063 1.789062.714843 3.679687 1.070312 5.570312 1.070312s3.78125-.355469 5.570312-1.070312c32.429688-12.972657 59.917969-35.117188 79.5-64.039063 19.578126-28.917969 29.929688-62.667969 29.929688-97.59375v-72.296875c0-8.285156-6.714844-15-15-15zm-45 87.296875c0 36.09375-17.230469 70.363281-46.089844 91.667969-2.648437 1.957031-5.777344 2.933594-8.910156 2.933594s-6.261719-.980469-8.910156-2.933594c-28.859375-21.304688-46.089844-55.574219-46.089844-91.667969v-17.433594c0-6.828125 4.613281-12.796875 11.222656-14.515625 12.6875-3.304687 24.894532-8.308594 36.28125-14.875 4.640625-2.679687 10.355469-2.679687 14.992188 0 11.386718 6.566406 23.59375 11.570313 36.28125 14.875 6.609375 1.71875 11.222656 7.6875 11.222656 14.515625zm0 0"></path><path d="m397 130h-397v195c0 24.8125 20.1875 45 45 45h216.839844c-6.492188-20.109375-9.839844-41.214844-9.839844-62.703125v-72.296875c0-24.8125 20.1875-45 45-45h20c17.21875 0 33.667969-8.226562 44-22 8.453125-11.269531 21.910156-18 36-18 5.15625 0 10.226562.910156 15 2.605469v-22.605469zm-192 180h-160c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15h160c8.285156 0 15 6.714844 15 15s-6.714844 15-15 15zm0-60h-160c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15h160c8.285156 0 15 6.714844 15 15s-6.714844 15-15 15zm0-60h-160c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15h160c8.285156 0 15 6.714844 15 15s-6.714844 15-15 15zm0 0"></path><path d="m367 0h-322c-24.8125 0-45 20.1875-45 45v55h412v-55c0-24.8125-20.1875-45-45-45zm-150 65c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15 15 6.714844 15 15-6.714844 15-15 15zm60 0c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15 15 6.714844 15 15-6.714844 15-15 15zm60 0c-8.285156 0-15-6.714844-15-15s6.714844-15 15-15 15 6.714844 15 15-6.714844 15-15 15zm0 0"></path></svg><span class="scoop-mtext">Security</span></a><ul class="scoop-submenu" id="SecurityMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('36')"><svg xmlns="http://www.w3.org/2000/svg" height="512pt" viewBox="0 0 512 512" width="512pt"><path d="m256 271c-41.355469 0-75 33.644531-75 75s33.644531 75 75 75 75-33.644531 75-75-33.644531-75-75-75zm0 120c-24.8125 0-45-20.1875-45-45s20.1875-45 45-45 45 20.1875 45 45-20.1875 45-45 45zm0 0"></path><path d="m202.285156 0h-202.285156v451h127.652344l43.496094 43.492188 26.675781-26.679688c4.292969 2.058594 8.691406 3.886719 13.175781 5.476562v38.710938h90v-38.710938c4.484375-1.589843 8.878906-3.417968 13.175781-5.476562l26.675781 26.679688 43.492188-43.492188h127.65625v-390h-249.714844zm138.566406 452.066406-21.546874-21.550781c-6.679688 3.5625-17.804688 12.191406-37.058594 17.164063l-11.246094 2.90625v31.414062h-30v-31.414062l-11.246094-2.90625c-19.238281-4.96875-30.152344-13.480469-37.058594-17.164063l-21.546874 21.550781-21.214844-21.214844 21.550781-21.546874c-3.683594-6.902344-12.191406-17.808594-17.164063-37.058594l-2.90625-11.246094h-30.414062v-30h30.414062l2.90625-11.246094c4.96875-19.238281 13.480469-30.152344 17.164063-37.058594l-21.550781-21.546874 21.214844-21.214844 21.546874 21.550781c6.679688-3.5625 17.804688-12.191406 37.058594-17.164063l11.246094-2.90625v-30.414062h30v30.414062l11.246094 2.90625c19.238281 4.96875 30.191406 13.5 37.058594 17.164063l21.546874-21.550781 21.214844 21.214844-21.550781 21.550781c3.695313 6.921875 12.195313 17.804687 17.164063 37.054687l2.90625 11.246094h30.414062v30h-30.414062l-2.90625 11.25c-4.964844 19.234375-13.476563 30.148438-17.164063 37.054688l21.550781 21.550781zm53.789063-31.066406-16.828125-16.824219c2.058594-4.296875 3.886719-8.691406 5.472656-13.175781h37.714844v-90h-37.714844c-1.585937-4.480469-3.414062-8.878906-5.472656-13.175781l26.679688-26.675781-63.640626-63.640626-26.679687 26.679688c-4.292969-2.058594-8.6875-3.886719-13.171875-5.476562v-37.710938h-90v37.710938c-4.484375 1.589843-8.882812 3.417968-13.175781 5.476562l-26.679688-26.679688-63.636719 63.640626 26.675782 26.675781c-2.054688 4.292969-3.882813 8.691406-5.472656 13.175781h-37.710938v90h37.710938c1.589843 4.480469 3.417968 8.878906 5.476562 13.175781l-16.828125 16.824219h-87.359375v-270h452v270zm87.359375-300h-452v-91h159.714844l60 61h232.285156zm0 0"></path></svg><span class="scoop-mtext">Manage</span></a><ul class="scoop-submenu" id="ManageMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="javascript:LoadPage('41')"><svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="Forma_1" data-name="Forma 1" class="cls-1" d="M8.609,18.488A11.056,11.056,0,0,1,11.653,10.8a1.6,1.6,0,0,0,0-2.2,1.438,1.438,0,0,0-2.1,0,14.436,14.436,0,0,0,0,19.765,1.439,1.439,0,0,0,2.1,0,1.6,1.6,0,0,0,0-2.2A11.056,11.056,0,0,1,8.609,18.488Zm-5.641,0a17.059,17.059,0,0,1,4.7-11.859,1.6,1.6,0,0,0,0-2.2,1.439,1.439,0,0,0-2.1,0A20.219,20.219,0,0,0,0,18.488,20.218,20.218,0,0,0,5.565,32.544a1.439,1.439,0,0,0,2.1,0,1.6,1.6,0,0,0,0-2.2A17.059,17.059,0,0,1,2.969,18.488ZM19,10.413a7.912,7.912,0,0,0-7.719,8.075A7.912,7.912,0,0,0,19,26.563a7.912,7.912,0,0,0,7.719-8.075A7.912,7.912,0,0,0,19,10.413Zm0,13.044a4.869,4.869,0,0,1-4.75-4.969A4.869,4.869,0,0,1,19,13.519a4.869,4.869,0,0,1,4.75,4.969A4.869,4.869,0,0,1,19,23.458ZM32.435,4.433a1.438,1.438,0,0,0-2.1,0,1.6,1.6,0,0,0,0,2.2,17.059,17.059,0,0,1,4.7,11.859,17.06,17.06,0,0,1-4.7,11.859,1.6,1.6,0,0,0,0,2.2,1.438,1.438,0,0,0,2.1,0A20.218,20.218,0,0,0,38,18.488,20.218,20.218,0,0,0,32.435,4.433ZM28.446,8.606a1.438,1.438,0,0,0-2.1,0,1.6,1.6,0,0,0,0,2.2,11.228,11.228,0,0,1,0,15.373,1.6,1.6,0,0,0,0,2.2,1.438,1.438,0,0,0,2.1,0A14.436,14.436,0,0,0,28.446,8.606Z"></path></svg><span class="scoop-mtext">Diagnose</span></a><ul class="scoop-submenu" id="DiagnoseMenu"></ul></li> <li class="scoop-hasmenu" dropdown-icon="style1" subitem-icon="style6"><a href="/cgi-bin/help.asp"><svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="Forma_1_copy" data-name="Forma 1 copy" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path></svg><span class="scoop-mtext">Help</span></a><ul class="scoop-submenu" id="HelpMenu"></ul></li> </ul>
							    </div>
							</div> 
						</nav> 
                        
                            <div class="scoop-content">
                                <div id="Header"><header class="header_box scoop-header iscollapsed" header-theme="theme2" scoop-header-position="relative"> <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="icon-menu"></i></a></div><span class="gateway_box">Gateway Name:Home Gateway</span><span class="model_box">Gateway Type:NP1257G</span><a onclick="DoLogout()" href="/cgi-bin/login.asp" id="logOut" name="logOut" target="_top" class="Power_btn"><svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" viewBox="0 0 22 25"> <path id="power_icon" data-name="power_icon" class="cls-1" d="M15.405,3.524s-1.324-.6-1.324.8A3.166,3.166,0,0,0,15.41,6.65,8.495,8.495,0,0,1,11,22.253,8.495,8.495,0,0,1,6.59,6.65,3.167,3.167,0,0,0,7.919,4.322c0-1.4-1.324-.8-1.324-0.8A11.242,11.242,0,0,0,11,25,11.242,11.242,0,0,0,15.405,3.524ZM11.077,0A1.47,1.47,0,0,0,9.46,1.258V12.325a1.47,1.47,0,0,0,1.618,1.258,1.3,1.3,0,0,0,1.463-1.258V1.258A1.3,1.3,0,0,0,11.077,0Z"></path> </svg></a> </header><div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>Upgrade</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"><a href="N/A" target="_blank"> <img width="28" height="16" border="0" align="center" src="/img/logo.jpg" style="vertical-align:middle;margin:0px 3px"></a></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
             </div>
                 
                 
           <div class="">
                                    
        
                                    <div class="scoop-inner-content">
                                              <div class="white_box">
                                            <h1 class="heading_grey"><img style="vertical-align:middle; "src="/Dashboard/images/upgrade.png" width="50" height="50" class="img_sub" alt="/" ><span style="vertical-align:middle;">Upgrade</span></h1>
                                            <div class="container-fluid">
                                                <hr class="margin_adjs" />
<div class="intro_main ">

 <b style="font-size: 18px "class="intro_title"><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></b>
 <br>
<br>
 <p class="intro_content"> <% multilang("560" "LANG_PAGE_DESC_UPGRADE_FIRMWARE"); %></p>
</div>
<form method=POST name="authcheck">
<div class="data_common data_common_notitle" <% checkWrite("upgrade_pwd") %>>
 <table border="0" cellspacing="4" width="500">
  <tr>
      <td width="20%"><font size=2><b><% multilang("67" "LANG_PASSWORD"); %>:</b></td>
      <td width="50%"><font size=2><input type="password" name="upgradepass" size="20" maxlength="30"></td>
  </tr>
 </table>
</div>
</form>
<form action=/boaform/admin/formUpload method=POST enctype="multipart/form-data" name="password">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><input class="inner_btn" type="file" value="<% multilang("546" "LANG_CHOOSE_FILE"); %>" name="binary" size=20></th>
  </tr>
 </table>
</div>
<hr class="margin_adjs">
<div class="adsl clearfix form-footer">
    <input class=" btn orange_btn" " type="submit" value="<% multilang("561" "LANG_UPGRADE"); %>" name="send" onclick="return sendClicked()">&nbsp;&nbsp;
 <input class="btn grey_btn" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
 <input type="hidden" value="/admin/upgrade.asp" name="submit-url">
</div>
 </form>
   </div>
            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <div class="text-center p-3"  style="background-color: rgb(235 234 234 / 20%);">
                        &COPY; 2023 Copyright :
                        <a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
                      </div>
                    </div>
                </div>  
      
       <script type="text/javascript" src="/web/JS/jquery.min.js"></script>
<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
<script type="text/javascript"  src="/web/JS/popper.min.js"></script>
<script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.js"></script>
<script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
<script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mCustomScrollbar_concat.js"></script>
<script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mousewheel.js"></script>   
                    </body>

</HTML>
</body>
</html>

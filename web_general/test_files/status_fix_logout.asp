<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
 <link rel="stylesheet" type="text/css" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title> Status</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
 <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
 <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
 <link href="/Dashboard/css/custom.css" rel="stylesheet">
 <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
 <script language=javascript src="/Dashboard/JS/jquery.js"></SCRIPT>
 <SCRIPT type="text/javascript" src="/Dashboard/JS/menu.js"></SCRIPT>
 <SCRIPT type="text/javascript" src="/Dashboard/JS/util.js"></SCRIPT>
    <SCRIPT language=JavaScript src="/Dashboard/JS/printtable.js"></SCRIPT>
    <script>
var getObj = null;
function modifyClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'Status_Modify', settings );
}
function disButton(id)
{
 getObj = document.getElementById(id);
 window.setTimeout("getObj.disabled=true", 100);
 return false;
}
function on_init()
{
 if (!<% checkWrite("IPv6Show"); %>) {
  if (document.getElementById)
  {
   document.getElementById('ipv6DefaultGW').style.display = 'none';
  }
  else {
   if (document.layers == false)
   {
    document.all.ipv6DefaultGW.style.display = 'none';
   }
  }
 }
 return true;
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.status.postSecurityFlag, document.status);
 return true;
}
function LogOut(obj)
{
 submit();
 return true;
}
</script>
 </head>
 <body onLoad="on_init();">
    <input id="Selected_Menu" type=hidden
            value="Status->DeviceInfo" name="Sta_ACS"/>
  <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left" vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact" vertical-effect="shrink" vnavigation-view="view1">
   <div class="scoop-overlay-box"></div>
   <div class="scoop-container">
    <div class="scoop-main-container">
     <div class="scoop-wrapper">
      <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0" sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">
       <div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
       <div class="scoop-inner-navbar">
        <div class="scoop-logo">
        <a href="#"><span class="logo-text"><img src="/img/logo.jpg" class="img-fluid" alt=""/></span></a>
       </div>
           <div id="LeftMenu">
               <SCRIPT language=javascript>
               MakeLeftMenu('Status','DeviceInfo')
               </SCRIPT>
           </div>
       </div>
      </nav>
      <div class="scoop-content">
       <div id="Header">
                                <header class="header_box scoop-header iscollapsed" header-theme="theme2" scoop-header-position="relative">
                                    <div class="sidebar_toggle">
                                        <a href="javascript:void(0)">
                                            <i class="icon-menu"></i>
                                        </a>
                                    </div>
                                    <span class="gateway_box">Gateway Name:Home Gateway</span>
                                    <span class="model_box">Gateway Type:<% getInfo("name"); %></span>
          <a onclick="document.getElementById('cmlogout').submit();" id="logOut" name="logOut" target="_top" class="Power_btn">
          <svg xmlns=<% checkWrite("http_header") %>"www.w3.org/2000/svg" width="22" height="25" viewBox="0 0 22 25">
          <path id="power_icon" data-name="power_icon" class="cls-1" d="M15.405,3.524s-1.324-.6-1.324.8A3.166,3.166,0,0,0,15.41,6.65,8.495,8.495,0,0,1,11,22.253,8.495,8.495,0,0,1,6.59,6.65,3.167,3.167,0,0,0,7.919,4.322c0-1.4-1.324-.8-1.324-0.8A11.242,11.242,0,0,0,11,25,11.242,11.242,0,0,0,15.405,3.524ZM11.077,0A1.47,1.47,0,0,0,9.46,1.258V12.325a1.47,1.47,0,0,0,1.618,1.258,1.3,1.3,0,0,0,1.463-1.258V1.258A1.3,1.3,0,0,0,11.077,0Z">
          </path>
         </svg>
          </a>
          <form action=/boaform/admin/formLogout method=POST name="cmlogout" id="cmlogout">
           <input type="hidden" value="/admin/login.asp" name="submit-url">
           <input type="hidden" value="Logout" name="save">
          </form>
                                </header>
                                <div class="breadcrum_box">
                                    <ul style="display: flex; align-items: center;">
                                        <li><a href="#">Status</a></li>
                                        <div>
                                        <a href=<% checkWrite("https_header") %>"www.facebook.com/SyrotechNetworks" target="_blank">
                                            <image src="/img/facebook.png" style="width:30px">
                                        </a>
                                        <a href=<% checkWrite("https_header") %>"www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2F13408012%2Fadmin%2F"
                                            target="_blank">
                                            <image src="/img/linkedin.png" style="width:30px">
                                        </a>
                                        <a href=<% checkWrite("https_header") %>"twitter.com/Syrotech" target="_blank">
                                            <image src="/img/twitter.png" style="width:30px">
                                        </a>
                                        <a href=<% checkWrite("https_header") %>"www.youtube.com/channel/UCxKPAshBZ3BjsKoryZqd1jg?reload=9"
                                            target="_blank">
                                            <image src="/img/youtube.png" style="width:30px">
                                        </a> <a href=<% checkWrite("https_header") %>"www.instagram.com/syrotechnetworks/" target="_blank">
                                            <image src="/img/insta.png" style="width:30px">
                                        </a>
                                    </div>
                                    </ul>
                                    <div class="help_icon">
                                        <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank">
                                            <svg xmlns=<% checkWrite("https_header") %>"www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38">
                                                <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path>
                                            </svg>
                                        </a>
                                    </div>
                                </div>
                            </div>
       <div class="">
       <div class="scoop-inner-content">
        <h1 class="heading_big bei">Status</h1>
        <div class="col-sm-6 white_box">
        <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/interaction.png" width="45" height="40" class="img_sub" alt=""/>This page show the basic info of the ONU</h1>
        <div class="container-fluid border_box">
        <form action=/boaform/admin/formStatus method=POST name="status2">
         <div class="row">
         <div class="table-responsive" id="deviceInfo_content" >
         <table id="Status_info" name="Status_info" class="table table-bordered table_text_center">
         <tr>
          <th width=40%><% multilang("99" "LANG_DEVICE_NAME"); %></th>
          <td width=60%><% getInfo("name"); %></td>
         </tr>
         <tr>
          <th width=40%><% multilang("2929" "LANG_PON_MODE"); %></th>
          <td width=60%><% getInfo("ponmode"); %></td>
         </tr>
          <tr>
          <th width=40%><% multilang("542" "LANG_SERIAL_NUMBER"); %></th>
          <td width=60%><% fmgpon_checkWrite("fmgpon_sn"); %></td>
         </tr>
         <tr>
          <th width=40%><% multilang("2956" "LANG_PON_MAC"); %></th>
          <td width=60%><% getInfo("elan-Mac"); %></td>
         </tr>
         <tr>
          <th width=40%><% multilang("76" "LANG_UPTIME"); %></th>
          <td width=60%><% getInfo("uptime"); %></td>
         </tr>
         <!--
         <tr bgcolor="#EEEEEE">
         <td width=40%><font size=2><b><% multilang("77" "LANG_DATE"); %>/<% multilang("78" "LANG_TIME"); %></b></td>
         <td width=60%><font size=2><% getInfo("date"); %></td>
         </tr>
         -->
         <% HwVer(); %>
         <tr>
          <th width=40%><% multilang("79" "LANG_FIRMWARE_VERSION"); %></th>
          <td width=60%><% getInfo("fwVersion"); %></td>
         </tr>
         <% DSLVer(); %>
         <% cpuUtility(); %>
         <% memUtility(); %>
         <tr>
          <th width=40%><% multilang("2930" "LANG_BUILD_INFO"); %></th>
          <td width=60%><% getInfo("compiletime"); %></td>
         </tr>
         <tr <% checkWrite("bridge-only"); %>>
          <th width=40%><% multilang("84" "LANG_NAME_SERVERS"); %></th>
          <td width=60%><% getNameServer(); %></td>
         </tr>
         <tr <% checkWrite("bridge-only"); %>>
          <th width=40%>IPv4 <% multilang("85" "LANG_DEFAULT_GATEWAY"); %></th>
          <td width=60%><% getDefaultGW(); %></td>
         </tr>
         <tr id='ipv6DefaultGW' <% checkWrite("bridge-only"); %>>
          <th width=40%>IPv6 <% multilang("85" "LANG_DEFAULT_GATEWAY"); %></th>
          <td width=60%><% getDefaultGW_ipv6(); %></td>
         </tr>
         </table>
         </div>
         </div>
         <div class="row">
         <div class="table-responsive" id="deviceInfo_content" >
         <table id="Status_info" name="Status_info" class="table table-bordered table_text_center">
          <tr>
           <th width=40%><% multilang("89" "LANG_IP_ADDRESS"); %></th>
           <td width=60%><% getInfo("lan-ip"); %></td>
          </tr>
          <tr>
           <th width=40%><% multilang("90" "LANG_SUBNET_MASK"); %></th>
           <td width=60%><% getInfo("lan-subnet"); %></td>
          </tr>
          <% DHCPSrvStatus(); %>
          <tr>
           <th width=40%><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
           <td width="60%" style="text-transform: uppercase"><% getInfo("elan-Mac"); %></td>
          </tr>
         </table>
         </div>
         </div>
         </form>
         <form action=/boaform/admin/formStatus method=POST name="status">
          <div class="row">
           <div class="table-responsive" id="deviceInfo_content" >
           <table id="Status_info" name="Status_info" class="table table-bordered table_text_center">
             <% wanConfList(); %>
           </table>
           </div>
          </div>
          <% wan3GTable(); %>
          <% wanPPTPTable(); %>
          <% wanL2TPTable(); %>
          <% wanIPIPTable(); %>
          <div class="btn_ctl">
           <input type="hidden" value="/admin/status.asp" name="submit-url">
           <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">&nbsp;&nbsp;
           <!--
           <input type="button" value="Modify" name="modify" onClick="modifyClick('/admin/date.asp')">
           -->
           <input type="hidden" name="postSecurityFlag" value="">
          </div>
         </form>
        </div>
       </div>
      </div>
                    </div>
     </div>
    </div>
   </div>
  </div>
   </div>
  <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  © 2022-2025 Copyright :
  <a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
  </div>
  <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
 <script type="text/javascript" src="/JS/jquery.min.js"></script>
 <script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!-- <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script> -->
    <script type="text/javascript" src="/JS/popper.min.js"></script>
 <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.js"></script>
 <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
 <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mCustomScrollbar_concat.js"></script>
 <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mousewheel.js"></script>
</body>
</html>

<% SendWebHeadStr();%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>

<HEAD>
<title><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

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
  <INPUT id="Selected_Menu" type="hidden" 
            value="Manage->Upgrade" name="Manage->Upgrade"/> 
    <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left"
        vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact"
        vertical-effect="shrink" vnavigation-view="view1">
        <div class="scoop-overlay-box">
        </div>
        <div class="scoop-container">
            <div class="scoop-main-container">
                <div class="scoop-wrapper">
                    <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0"
                        sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('Manage','Upgrade')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                          
                           
                    
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Manage','Upgrade','Welcome!','#');
                            </SCRIPT>
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

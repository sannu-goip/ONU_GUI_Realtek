<%SendWebHeadStr(); %>
<META HTTP-EQUIV=Refresh CONTENT="60; URL=ddns.asp">

<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>


<script language="javascript" src=voip_script.js></script>
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
<title><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
selected=0;
function deSelected()
{
}
function btnClick()
{
 if (document.ddns.hostname.value=="") {
  alert('<% multilang("2106" "LANG_PLEASE_ENTER_HOSTNAME_FOR_THIS_ACCOUNT"); %>');
  document.ddns.hostname.focus();
  deSelected();
  return false;
 }
 if (includeSpace(document.ddns.hostname.value)) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.ddns.hostname.focus();
  return false;
 }
 if (checkString(document.ddns.hostname.value) == 0) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.ddns.hostname.focus();
  return false;
 }
 if (document.ddns.ddnsProv.value=="0") {
  if (document.ddns.username.value=="") {
   alert('<% multilang("2108" "LANG_PLEASE_ENTER_USERNAME_FOR_THIS_ACCOUNT"); %>');
   document.ddns.username.focus();
   deSelected();
   return false;
  }
  if (includeSpace(document.ddns.username.value)) {
   alert('<% multilang("2085" "LANG_INVALID_USER_NAME"); %>');
   document.ddns.username.focus();
   return false;
  }
  if (checkString(document.ddns.username.value) == 0) {
   alert('<% multilang("2085" "LANG_INVALID_USER_NAME"); %>');
   document.ddns.username.focus();
   return false;
  }
  if (document.ddns.password.value=="") {
   alert('<% multilang("2109" "LANG_PLEASE_ENTER_PASSWORD_FOR_THIS_ACCOUNT"); %>');
   document.ddns.password.focus();
   deSelected();
   return false;
  }
    if ( includeSpace(document.ddns.password.value)) {
   alert('<% multilang("2087" "LANG_INVALID_PASSWORD"); %>');
   document.ddns.password.focus();
   return false;
   }
  if (checkString(document.ddns.password.value) == 0) {
   alert('<% multilang("2087" "LANG_INVALID_PASSWORD"); %>');
   document.ddns.password.focus();
   return false;
  }
 }
 if (document.ddns.ddnsProv.value=="1") {
  if (document.ddns.email.value=="") {
   alert('<% multilang("2110" "LANG_PLEASE_ENTER_EMAIL_FOR_THIS_ACCOUNT"); %>');
   document.ddns.email.focus();
   deSelected();
   return false;
  }
  if (includeSpace(document.ddns.email.value)) {
   alert('<% multilang("2111" "LANG_INVALID_EMAIL"); %>');
   document.ddns.email.focus();
   return false;
  }
  if (checkString(document.ddns.email.value) == 0) {
   alert('<% multilang("2111" "LANG_INVALID_EMAIL"); %>');
   document.ddns.email.focus();
   return false;
  }
  if (document.ddns.key.value=="") {
   alert('<% multilang("2112" "LANG_PLEASE_ENTER_KEY_FOR_THIS_ACCOUNT"); %>');
   document.ddns.key.focus();
   deSelected();
          return false;
         }
  if (includeSpace(document.ddns.key.value)) {
   alert('<% multilang("2113" "LANG_INVALID_KEY"); %>');
   document.ddns.key.focus();
   return false;
  }
  if (checkString(document.ddns.key.value) == 0) {
   alert('<% multilang("2113" "LANG_INVALID_KEY"); %>');
   document.ddns.key.focus();
   return false;
  }
 }
 return true;
}
function applyClick()
{
 if(checkDigit(document.forms[0].interval.value))
 {
  document.forms[0].apply.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function addClick()
{
 if(btnClick())
 {
  document.forms[0].addacc.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function modifyClick()
{
 if (!selected) {
  alert('<% multilang("2114" "LANG_PLEASE_SELECT_AN_ENTRY_TO_MODIFY"); %>');
  return false;
 }
 if(btnClick())
 {
  document.forms[0].modify.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function removeClick()
{
 if (!selected) {
  alert('<% multilang("2115" "LANG_PLEASE_SELECT_AN_ENTRY_TO_DELETE"); %>');
  return false;
 }
 document.forms[0].delacc.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function updateState()
{
  if (document.ddns.ddnsProv.value=="0" || document.ddns.ddnsProv.value=="2") {
  enableTextField(document.ddns.username);
  enableTextField(document.ddns.password);
  disableTextField(document.ddns.email)
  disableTextField(document.ddns.key)
  }
  else {
   enableTextField(document.ddns.email);
   enableTextField(document.ddns.key);
  disableTextField(document.ddns.username);
  disableTextField(document.ddns.password);
  }
}
function postEntry(enabled, pvd, host, user, passwd, intf)
{
 if (enabled)
  document.ddns.enable.checked = true;
 else
  document.ddns.enable.checked = false;
 document.ddns.hostname.value = host;
 if (pvd == 'dyndns') {
  document.ddns.ddnsProv.value = 0;
  document.ddns.username.value = user;
  document.ddns.password.value = passwd;
  document.ddns.email.value = '';
  document.ddns.key.value = '';
  document.ddns.interface.value = intf;
 }
 else {
  document.ddns.ddnsProv.value = 1;
  document.ddns.username.value = '';
  document.ddns.password.value = '';
  document.ddns.email.value = user;
  document.ddns.key.value = passwd;
  document.ddns.interface.value = intf;
 }
 updateState();
 selected = 1;
}
</SCRIPT>
<style> TABLE {width:375} 

.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
.left-field{
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left: -11px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
    padding:2px;
    width:200px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-22px;
    width:102.5%
}
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
.custom-control-input:checked~.custom-control-label::before {
    color: #fff;
    border-color: #f58220;
    background-color: #f58220;
}
input[type="checkbox"]:checked {
    accent-color: #fd5814;
}
</style>
</head>
<body>
<INPUT id=Selected_Menu type=hidden value="APP->DDNS" name="Selected_Menu"> 
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
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/parental.png" class="img-fluid" alt=""/></span></a>
							</div>
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('APP','DDNS')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','APP','DDNS','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/wlan.png" width="45" height="40" class="img_sub" alt=""/><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("372" "LANG_PAGE_DESC_CONFIGURE_DYNAMIC_DNS_ADDRESS"); %></p>
 </div>
 </div>

<form action=/boaform/formDDNS method=POST name="ddns">
<div class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("772" "LANG_TIME_INTERVAL"); %>:</label>
 <input class= "right-field custom-select" type="text" name="interval" size="35" maxlength="10" value=<% getInfo("ddns_interval"); %>>&nbsp; min
  </div>
  </div>
</div>
<hr class="margin_adjs" />
<div class="btn_ctl form-footer">
 <input type="submit" value=<% multilang("150" "LANG_APPLY_CHANGES"); %> name="apply" onClick="return applyClick()" class="link_bg btn orange_btn">
</div>
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control custom-checkbox custom-control-inline">
            <label class="left-field"><% multilang("248" "LANG_ENABLE"); %>:</label>
  <input class= "right-field-checkbox" type="checkbox" name="enable" value="1" checked>
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field">DDNS <% multilang("373" "LANG_PROVIDER"); %>:</label>
    <select class="right-field custom-select"  size="1" name="ddnsProv" onChange='updateState()'>
     <option selected value="0">DynDNS.org</option>
     <option value="1">TZO</option>
     <option value="2">No-IP</option>
    </select>
  </div>
  </div>
<div class="col-md-12 form-group">
        <div class="custom-control">

<label class="left-field"> <% multilang("374" "LANG_HOSTNAME"); %>:</label>
   <input class="right-field custom-select" type="text" name="hostname" size="35" maxlength="35">
  </div>
  </div>

<div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("70" "LANG_INTERFACE"); %></label>
   
    <select class="right-field custom-select"  name="interface" >
      <% if_wan_list("rt");%>
    <!--<option value=100>LAN/br0</option>-->
    </select>
    </div>
    </div>

  
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">DynDns <% multilang("375" "LANG_SETTINGS"); %></h2>
  </div>
 </div>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
 <div class="col-md-12 form-group">
        <div class="custom-control">

    <label class="left-field"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</label>
   <input class="right-field custom-select" type="text" name="username" size="35" maxlength="35">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
  <label class="left-field"> <% multilang("67" "LANG_PASSWORD"); %>:</label>
   <input class="right-field custom-select" type="password" name="password" size="35" maxlength="35">
  </div>
  </div>
   
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">TZO <% multilang("375" "LANG_SETTINGS"); %></h2>
  </div>
 </div>
  
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
<div class="col-md-12 form-group">
        <div class="custom-control">
  <label class="left-field"><% multilang("376" "LANG_EMAIL"); %>:</label>
    <input class="right-field custom-select" type="text" name="email" size="35" maxlength="35">
   
  </div>
  </div>
   <div class="col-md-12 form-group">
        <div class="custom-control">
    <label class="left-field"><% multilang("243" "LANG_KEY"); %>:</label>
   <input class="right-field custom-select" type="password" name="key" size="35" maxlength="35">
 </div>
 </div>
 </div>
</div>
<hr class="margin_adjs" />
<div class="btn_ctl form-footer">
 <!--<input type="hidden" name="interface" value="all">-->
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addacc" onClick="return addClick()" class="link_bg btn orange_btn">
 <input type="submit" value="<% multilang("331" "LANG_MODIFY"); %>" name="modify" onClick="return modifyClick()" class="link_bg btn orange_btn">
 <input type="submit" value="<% multilang("377" "LANG_REMOVE"); %>" name="delacc" onClick="return removeClick()" class="link_bg btn orange_btn">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px"><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("414" "LANG__TABLE"); %></h2>
  </div>
 </div>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
   <% showDNSTable(); %>
  </table>
  <input type="hidden" value="/ddns.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
   </div>
</div>
<script>
 updateState();
 deSelected();
</script>
</form>
<br><br>
</div>
</div>
</div>
</div>
</div>


<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

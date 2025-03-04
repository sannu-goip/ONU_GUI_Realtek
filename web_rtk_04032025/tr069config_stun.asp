
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
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
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
  

<title>TR-069 Configuration</title>
<style>
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
    width:142px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:3px
}
.right-field{
    margin-left:178px;
    padding:3px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
</style>
<SCRIPT>
var isPRACTVersion = "0"
function resetClick()
{
   document.tr069.reset;
}
function periodicSel() {
 if(isPRACTVersion == "1")
  return false;
 if ( document.tr069.enable[0].checked ) {
  disableTextField(document.tr069.interval);
 } else {
  enableTextField(document.tr069.interval);
 }
}
function StunSel() {
 if ( document.tr069.stun_enable[0].checked ) {
  disableTextField(document.tr069.stunsvraddr);
  disableTextField(document.tr069.stunsvrport);
  disableTextField(document.tr069.stunsvruname);
  disableTextField(document.tr069.stunsvrupasswd);
 } else {
  enableTextField(document.tr069.stunsvraddr);
  enableTextField(document.tr069.stunsvrport);
  enableTextField(document.tr069.stunsvruname);
  enableTextField(document.tr069.stunsvrupasswd);
 }
}

function saveChanges(obj)
{
  if (document.tr069.url.value=="") {
 alert("ACS URL cannot be empty!");
 document.tr069.url.value = document.tr069.url.defaultValue;
 document.tr069.url.focus();
 return false;
  }
 if (checkString(document.tr069.username.value) == 0) {
  alert("Invalid user name !");
  document.tr069.username.focus();
  return false;
 }
 if (checkString(document.tr069.password.value) == 0) {
  alert("Invalid password !");
  document.tr069.password.focus();
  return false;
 }
  if (document.tr069.enable[1].checked) {
 if ( document.tr069.interval.value=="") {
  alert("Please input periodic interval time.");
  document.tr069.interval.focus();
  return false;
 }
 if ( validateKey( document.tr069.interval.value ) == 0 ) {
  alert("Interval should be the decimal number (0-9).");
  document.tr069.interval.focus();
  return false;
 }
  }
 if (checkString(document.tr069.conreqname.value) == 0) {
  alert("Invalid user name !");
  document.tr069.conreqname.focus();
  return false;
 }
 if (checkString(document.tr069.conreqpw.value) == 0) {
  alert("Invalid password !");
  document.tr069.conreqpw.focus();
  return false;
 }
 if (checkString(document.tr069.conreqpath.value) == 0) {
  alert("Invalid Path !");
  document.tr069.conreqpath.focus();
  return false;
 }
  if (document.tr069.conreqport.value=="") {
 alert("Please input the port number for connection request.");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  if ( validateKey( document.tr069.conreqport.value ) == 0 ) {
 alert("Invalid port number of connection request. It should be 1-65535.");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  if ( !checkDigitRange(document.tr069.conreqport.value,1,1,65535) ) {
       alert("Invalid port number of connection request. It should be 1-65535.");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  if (document.tr069.stun_enable[1].checked) {
 if ( document.tr069.stunsvraddr.value=="") {
  alert("Please input stun server address.");
  document.tr069.stunsvraddr.focus();
  return false;
 }
 if ( document.tr069.stunsvrport.value=="") {
  alert("Please input stun server port.");
  document.tr069.stunsvrport.focus();
  return false;
 }
 if ( document.tr069.stunsvruname.value=="") {
  alert("Please input stun server user name.");
  document.tr069.stunsvruname.focus();
  return false;
 }
 if ( document.tr069.stunsvrupasswd.value=="") {
  alert("Please input stun server user password.");
  document.tr069.stunsvrupasswd.focus();
  return false;
 }
  }
  if (checkString(document.tr069.stunsvraddr.value) == 0) {
 alert('Invalid STUN Server address.');
 document.tr069.stunsvraddr.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvrport.value) == 0) {
 alert('Invalid STUN Server port.');
 document.tr069.stunsvrport.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvruname.value) == 0) {
 alert('Invalid STUN Server user name.');
 document.tr069.stunsvruname.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvrupasswd.value) == 0) {
 alert('Invalid STUN Server user password.');
 document.tr069.stunsvrupasswd.focus();
 return false;
  }
  obj.isclick = 1;
  postTableEncrypt(document.tr069.postSecurityFlag, document.tr069);
  return true;
}
function addClick(obj)
{
 if (!checkNetIP(document.tr069_acl.aclIP, 1))
  return false;
 if (!checkNetmask(document.tr069_acl.aclMask, 1))
  return false;
 obj.isclick = 1;
 postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('Do you really want to delete the selected entry?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
  return true;
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
 return true;
}
function LockAllElement(enable){
 if( isPRACTVersion == "1")
 {
  var idx = 0;
  var frm = document.tr069;
  if ( enable )
  {
   for ( idx = 0; idx < frm.elements.length; idx ++ )
   {
    if ( 'hidden' == frm.elements[idx].type
     || 'enable_acl' == frm.elements[idx].name
     || 'aclIP' == frm.elements[idx].name
     || 'aclMask' == frm.elements[idx].name
     )
      continue;
    frm.elements[idx].disabled = true;
   }
  }
  else
  {
   if(enable == false){
    for ( idx = 0; idx < frm.elements.length; idx ++ )
    {
     if ( 'hidden' == frm.elements[idx].type )
      continue;
     frm.elements[idx].disabled = false;
    }
   }
  }
 }
}
</SCRIPT>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->CWMP" name=Net_TR069>
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
							        MakeLeftMenu("TR069", "TR069");
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"TR069","TR069",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            
                             
                                <div class="scoop-inner-content">
																		 
								
								<div class="white_box" name="CwmpConfig">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/TR069.png" width="45" height="40" class="img_sub" alt=""/> TR-069 Configuration</h1>
									<div class="container-fluid">
                                    <hr class="margin_adjs" />
									
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p > This page is used to configure the TR-069 CPE. Here you may change the setting for the ACS's parameters.</p>
</div>
</div>
<form action=/boaform/formTR069Config method=POST name="tr069">
<div class="data_common data_common_notitle" >
 <table>
  <tr>
   <th width="30%" style="font-weight: bold; font-size: 14">TR069 Daemon:</th>
   <td width="70%"><font size=2>
   <input type="radio" name=autoexec value=1 checked >Enabled&nbsp;&nbsp;
   <input type="radio" name=autoexec value=0  >Disabled</font>
   </td>
  </tr>
  <tr>
   <th width="30%" style="font-weight: bold; font-size: 14">EnableCWMPParameter:</th>
   <td width="70%"><font size=2>
   <input type="radio" name=enable_cwmp value=1 checked >Enabled&nbsp;&nbsp;
   <input type="radio" name=enable_cwmp value=0  >Disabled</font>
   </td>
  </tr>
  
 </table>
</div>
<div ID=WANshow class="data_common data_common_notitle" style="display:none">
 <table border=0 width="500" cellspacing=4 cellpadding=0>
 <tr>
  <th width="30%">WAN Interface:</th>
  <td width="70%">
   <select name="tr069_itf">
    <option value=65535>&nbsp;</option>
    <option value=130816>nas0_0</option>

   </select>
  </td>
 </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>ACS</p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
 <tr>
  <th width="30%">URL:</th>
  <td width="70%"><input type="text" name="url" size="32" maxlength="256" value=http://  ></td>
 </tr>
 <tr>
  <th width="30%">UserName:</th>
  <td width="70%"><input type="text" name="username" size="32" maxlength="256" value=username ></td>
 </tr>
 <tr>
  <th width="30%">Password:</th>
  <td width="70%"><input type="text" name="password" size="32" maxlength="256" value=password ></td>
 </tr>
 <tr >
  <th width="30%">Periodic Inform:</th>
  <td width="70%">
  <input type="radio" name=enable value=0  onClick="return periodicSel()">Disabled&nbsp;&nbsp;
  <input type="radio" name=enable value=1 checked onClick="return periodicSel()">Enabled
  </td>
 </tr>
 <tr>
  <th width="30%">Periodic Inform Interval:</th>
  <td width="70%"><input type="text" name="interval" size="32" maxlength="10"  value=300  ></td>
 </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>Connection Request</p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
 
  <tr>
      <th width="30%">UserName:</th>
      <td width="70%"><input type="text" name="conreqname" size="32" maxlength="256" value=  ></td>
  </tr>
  <tr>
      <th width="30%">Password:</th>
      <td width="70%"><input type="text" name="conreqpw" size="32" maxlength="256" value=  ></td>
  </tr>
  <tr>
      <th width="30%">Path:</th>
      <td width="70%"><input type="text" name="conreqpath" size="32" maxlength="31" value=/tr069></td>
  </tr>
  <tr>
      <th width="30%">Port:</th>
      <td width="70%"><input type="text" name="conreqport" size="32" maxlength="5" value=7547></td>
  </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>STUN Setting</p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
  <tr >
 <td width="30%"><font size=2><b>STUN:</b></td>
 <td width="70%"><font size=2>
 <input type="radio" name=stun_enable value=0 checked onClick="return StunSel()">Disabled&nbsp;&nbsp;
 <input type="radio" name=stun_enable value=1  onClick="return StunSel()">Enabled</font></td>
  </tr>
  <tr>
 <td width="30%"><font size=2><b>STUN Server Address:</b></td>
 <td width="70%"><input type="text" name="stunsvraddr" size="32" maxlength="256" disabled="disabled" value=10.10.10.10  ></td>
  </tr>
  <tr>
        <td width="30%"><font size=2><b>STUN Server Port:</b></td>
        <td width="70%"><input type="text" name="stunsvrport" size="32" maxlength="5" disabled="disabled" value=3478 ></td>
  </tr>
  <tr>
 <td width="30%"><font size=2><b>STUN Server User:</b></td>
 <td width="70%"><input type="text" name="stunsvruname" size="32" maxlength="256" disabled="disabled" value=acs></td>
  </tr>
  <tr>
        <td width="30%"><font size=2><b>STUN Server Password:</b></td>
        <td width="70%"><input type="text" name="stunsvrupasswd" size="32" maxlength="256" disabled="disabled" value=acs></td>
  </tr>
  </tr>
</table>
</div>
<!--
<table>
  <tr><hr size=1 noshade align=top></tr>
  <tr>
      <td class="table_title">Debug:</td>
  </tr>
  
  <tr>
      <td class="table_item">Show Message:</td>
      <td>
      <input type="radio" name=dbgmsg value=0 checked >Disabled&nbsp;&nbsp;
      <input type="radio" name=dbgmsg value=1  >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">CPE Sends GetRPC:</td>
      <td>
      <input type="radio" name=sendgetrpc value=0 checked >Disabled&nbsp;&nbsp;
      <input type="radio" name=sendgetrpc value=1  >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">Skip MReboot:</td>
      <td>
      <input type="radio" name=skipmreboot value=0 checked >Disabled&nbsp;&nbsp;
      <input type="radio" name=skipmreboot value=1  >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item>"Delay:</td>
      <td>
      <input type="radio" name=delay value=0  >Disabled&nbsp;&nbsp;
      <input type="radio" name=delay value=1 checked >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">Auto-Execution:</td>
      <td>
      <input type="radio" name=autoexec value=0  >Disabled&nbsp;&nbsp;
      <input type="radio" name=autoexec value=1 checked >Enabled
      </td>
  </tr>
  
</table>
-->
<div class="btn_ctl">
 <input class="link_bg" type="submit" value=Apply Changes name="save" onClick="return saveChanges(this)" >&nbsp;&nbsp;
 <input class="link_bg" type="reset" value=Undo name="reset" onClick="resetClick()">
 <input type="hidden" value="/tr069config_stun.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>

<form action=/boaform/formTR069Config method=POST name="tr069_acl">
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th width="30%">Enable CWMP WAN ACL:</th>
  <td width="70%">
  <input type="radio" name=enable_acl value=1  >Enabled&nbsp;&nbsp;
  <input type="radio" name=enable_acl value=0 checked >Disabled&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="inner_btn" type="submit" value="Apply Changes" name="applyACL" onClick="return on_submit(this)">&nbsp;&nbsp; </td>
 </tr>
 <tr>
  <th width="30%">IP Address:</th>
  <td width="70%"><input type="text" name="aclIP" size="15" maxlength="15"></td>
 </tr>
 <tr>
  <th width="30%">Subnet Mask:</th>
  <td width="70%"><input type="text" name="aclMask" size="15" maxlength="15"></td>
 </tr>
</table>
</div>
<div class="btn_ctl">
 <td><input class="link_bg" type="submit" value="Add" name="addIP" onClick="return addClick(this)">&nbsp;&nbsp;</td>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>CWMP WAN ACL Table</p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common data_vertical">
<table>
  <tr><th align=center width="5%">Select</th>
<th align=center width="20%">IP Address</th></tr>

</table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="Delete Selected" name="delIP" onClick="return deleteClick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/tr069config_stun.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</div>
</div>
</div>
</div>



<script>
 ifIdx = 65535;
 document.tr069.tr069_itf.selectedIndex = -1;
 for( i = 0; i < document.tr069.tr069_itf.options.length; i++ )
 {
  if( ifIdx == document.tr069.tr069_itf.options[i].value )
   document.tr069.tr069_itf.selectedIndex = i;
 }
 
 LockAllElement(true);
</script>
<br><br>
</body>
</html>

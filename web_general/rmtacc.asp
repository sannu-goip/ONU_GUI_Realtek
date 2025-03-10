
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
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<title>Remote AccessConfiguration</title>
<script>
function addClick(obj)
{
 dTelnet = getDigit(document.acc.w_telnet_port.value, 1);
 dWeb = getDigit(document.acc.w_web_port.value, 1);
 if ( dTelnet == dWeb) {
  alert("Duplicated port number!");
  document.acc.w_telnet_port.focus();
  return false;
 }
 if (document.acc.w_telnet.checked) {
  if (document.acc.w_telnet_port.value=="") {
   alert("Port range cannot be empty! You should set a value between 1-65535.");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_telnet_port.value ) == 0 ) {
   alert("Invalid port number! It should be the decimal number (0-9).");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if (dTelnet > 65535 || dTelnet < 1) {
   alert("Invalid port number! You should set a value between 1-65535.");
   document.acc.w_telnet_port.focus();
   return false;
  }
  }
 if (document.acc.w_web.checked) {
  if (document.acc.w_web_port.value=="") {
   alert("Port range cannot be empty! You should set a value between 1-65535.");
   document.acc.w_web_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_web_port.value ) == 0 ) {
   alert("Invalid port number! It should be the decimal number (0-9).");
   document.acc.w_web_port.focus();
   return false;
  }
  if (dWeb > 65535 || dWeb < 1) {
   alert("Invalid port number! You should set a value between 1-65535.");
   document.acc.w_web_port.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
<style>
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
    margin-left:-27px;
    width:365px;
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>
<INPUT id=Selected_Menu type=hidden value="Security->ACL Filter" name="Selected_Menu"> 
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
							        MakeLeftMenu('Security','ACL Filter')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Security','MAC Filter','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/>Remote Access Configuration</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"> This page is used to enable/disable management services for the LAN and WAN.</p>
</div>
</div>
<form action=/boaform/formSAC method=POST name=acc>
	<div class="col-md-12 form-group">
											<div class="custom-control">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-29px; width:102%">
  <tr>
   <th align=left>ServiceName</th>
   <th align=center>LAN</th>
   <th align=center>WAN</th>
   <th align=center>WAN Port</th>
   <th align=center>Remote IP</th>
  </tr>
  <tr>
<td align=left class=tdkind>TELNET</td>
<td align=center><input type=checkbox name=l_telnet value=1></td>
<td align=center><input type=checkbox name=w_telnet value=1></td>
<td align=center><input type=text size=5 name=w_telnet_port></td>
<td align=center><input type=text size=18 name=w_telnet_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>FTP</td>
<td align=center><input type=checkbox name=l_ftp value=1></td>
<td align=center><input type=checkbox name=w_ftp value=1></td>
<td align=center><input type=text size=5 name=w_ftp_port></td>
<td align=center><input type=text size=18 name=w_ftp_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>HTTP</td>
<td align=center><input type=checkbox name=l_web value=1></td>
<td align=center><input type=checkbox name=w_web value=1></td>
<td align=center><input type=text size=5 name=w_web_port></td>
<td align=center><input type=text size=18 name=w_web_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>HTTPS</td>
<td align=center><input type=checkbox name=l_https value=1></td>
<td align=center><input type=checkbox name=w_https value=1></td>
<td align=center><input type=text size=5 name=w_https_port></td>
<td align=center><input type=text size=18 name=w_https_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>SSH</td>
<td align=center><input type=checkbox name=l_ssh value=1></td>
<td align=center><input type=checkbox name=w_ssh value=1></td>
<td align=center><input type=text size=5 name=w_ssh_port></td>
<td align=center><input type=text size=18 name=w_ssh_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>TFTP</td>
<td align=center><input type=checkbox name=l_tftp value=1></td>
<td align=center><input type=checkbox name=w_tftp value=1></td>
<td align=center></td>
<td align=center><input type=text size=18 name=w_tftp_special_ip></td>
</tr>
<tr>
<td align=left class=tdkind>Ping</td>
<td align=center><input type=checkbox name=l_icmp checked disabled></td>
<td align=center><input type=checkbox name=w_icmp value=1></td>
<td align=center></td>
<td align=center><input type=text size=18 name=w_icmp_special_ip></td>
</tr>

  </table>
 </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
 <input class="link_bg" type="submit" value="Apply Changes" name="set" onClick="return addClick(this)">
 <input type="hidden" value="/rmtacc.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 document.acc.l_telnet.checked=true;
document.acc.w_telnet.checked=true;
document.acc.l_ftp.checked=true;
document.acc.w_ftp.checked=true;
document.acc.l_web.checked=true;
document.acc.w_web.checked=true;
document.acc.l_https.checked=true;
document.acc.w_https.checked=true;
document.acc.l_ssh.checked=true;
document.acc.w_ssh.checked=true;
document.acc.w_telnet_port.value=23;
document.acc.w_ftp_port.value=21;
document.acc.w_web_port.value=80;
document.acc.w_https_port.value=443;
document.acc.w_ssh_port.value=22;
document.acc.w_telnet_special_ip.value="";
document.acc.w_tftp_special_ip.value="";
document.acc.w_ftp_special_ip.value="";
document.acc.w_web_special_ip.value="";
document.acc.w_https_special_ip.value="";
document.acc.w_ssh_special_ip.value="";
document.acc.w_icmp_special_ip.value="";

</script>
</form>
</blockquote>
</body>
</html>

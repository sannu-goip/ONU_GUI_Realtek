
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

<title>Loop Detection</title>
<SCRIPT>
var lbd_enable=1;
var lbd_exist_period=5;
var lbd_cancel_period=300;
var lbd_ether_type = 0xFFFA;
var lbd_vlans = "0";
var lbd_port_status = [0,0];

function on_init()
{
 if(lbd_enable)
  document.lbd.enable.checked = true;
 document.lbd.exist_period.value = lbd_exist_period;
 document.lbd.cancel_period.value = lbd_cancel_period;
 document.lbd.ether_type.value = lbd_ether_type.toString(16).toUpperCase();
 document.lbd.vlans.value = lbd_vlans;
 var table = document.getElementById("port_status");
 for(var i = 0 ; i < lbd_port_status.length ; i++)
 {
  var cell;
  var row = table.insertRow(-1);
  cell = row.insertCell(0);
  cell.innerHTML = "LAN" + (i+1);
  cell = row.insertCell(1);
  switch(lbd_port_status[i])
  {
  case 0:
   cell.innerHTML = "No Loop";
   break;
  case 1:
   cell.innerHTML = "Loop, and disable port";
   break;
  case 2:
   cell.innerHTML = "Loop, but port is not disabled";
   break;
  }
 }
 update_gui();
}
function disable_by_class(str_class, disable)
{
 var elements = document.getElementsByClassName(str_class);
 for (var i = 0 ; i < elements.length ; i++)
  elements[i].disabled = disable;
}
function update_gui()
{
 with(document.lbd)
 {
  if(enable.checked == true)
   disable_by_class("lbd", false);
  else
   disable_by_class("lbd", true);
 }
}
function on_submit()
{
 with(document.lbd)
 {
  if(enable.checked == false)
  {
   document.forms[0].save.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
  if(!sji_checkdigitrange(exist_period.value, 1, 60))
  {
   alert("Loop detection interval time should be 1-60 seconds!");
   exist_period.focus();
   return false;
  }
  if(!sji_checkdigitrange(cancel_period.value, 10, 1800))
  {
   alert("Loop detection recovery interval time should be 10-1800 seconds!");
   cancel_period.focus();
   return false;
  }
  if(!sji_checkhex(ether_type.value, 1, 4))
  {
   alert("EtherType should be in hex number!");
   ether_type.focus();
   return false;
  }
  if(vlans.value.length <= 0)
  {
   alert("Must assign vlan number!");
   vlans.focus();
   return false;
  }
 }
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_refresh(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
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
    width:406px;
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
    margin-left:30px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body onLoad="on_init();">
<INPUT id=Selected_Menu type=hidden value="Security->MAC Filter" name="Selected_Menu"> 
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
							        MakeLeftMenu('Security','MAC Filter')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Security','Loop Detect','welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/>Loop Detection</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para">This page is used to configure loop detection parameters. Here you can change the settings or view loop detection status.</p>
</div>
</div>
<form action=/boaform/formLBD method=POST name="lbd">
		<div class="col-md-12 form-group left-field">
											<div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14">Loop Detection Configuration</h2>

 </div>
</div>
	
 <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Loop Detection Enable:</label>
            <input type="checkbox" name="enable" value="1" onClick="update_gui();" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Detection Interval:</label>
            <input type="text" class="lbd right-field" name="exist_period" size="15" maxlength="5"> (1~60)seconds
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Recovery Interval:</label>
            <input type="text" class="lbd right-field" name="cancel_period" size="15" maxlength="15"> (10 ~ 1800)seconds
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">EtherType:</label>
              0x<input type="text" class="lbd right-field" name="ether_type" size="13" maxlength="4" style="margin-left: 16px;">
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">VLAN ID:</label>
            <input type="text" class="lbd right-field" name="vlans" size="30" maxlength="300"

            <div class="right-field">&nbsp;&nbsp;(separate by ",", 0 represents untagged, ex. 0,45,46)</div>
              </div>
    </div>
      
</div>


<hr class="margin_adjs">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14">Loop DetectionStatus</h2>
 
 </div>
</div>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table id="port_status" class="table table-bordered table-striped" style="background-color: #f8f9fa; width:302%">
  <tr>
   <th>Lan Port</th>
   <th>Status</th>
  </tr>
 </table>
</div>
</div>
<hr class="margin_adjs">

<div class="col-md-12 form-group form-footer text-right">
        <div class="custom-control">
      <input class="link_bg" type="submit" value="Apply Changes" name="save" onClick="return on_submit()">&nbsp;&nbsp;
      <input class="link_bg" type="submit" value="Refresh" name="refresh" onClick="return on_refresh(this)">&nbsp;&nbsp;
      <input type="hidden" value="/lbd.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>

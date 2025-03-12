
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

<title>RIP Configuration</title>
<SCRIPT>
var ifnum;
function selected()
{
 document.rip.ripDel.disabled = false;
}
function resetClicked()
{
 document.rip.ripDel.disabled = true;
}
function disableDelButton()
{
 if (verifyBrowser() != "ns") {
  disableButton(document.rip.ripDel);
  disableButton(document.rip.ripDelAll);
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('Do you really want to delete the selected entry?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
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
<INPUT id=Selected_Menu type=hidden value="Security->Port Filter" name="Selected_Menu"> 
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
							        MakeLeftMenu('Security','Port Filter')
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
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>RIP Configuration</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">


 <p class="left-field-para">Enable the RIP if you are using this device as a RIP-enabled Device to communicate with others using the Routing Information Protocol. This page is used to select the interfaces on your device is that use RIP, and the version of the protocol used.</p>
</div>
</div>
<form action=/boaform/formRip method=POST name="rip">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">RIP:</label>
            <input type="radio" value="0" name="rip_on" checked class="right-field-radio"> Disable
            <input type="radio" value="1" name="rip_on" class="right-field-radio"> Enable
            <input type="submit" value="Apply Changes" name="ripSet" class="inner_btn right-field" onClick="return on_submit(this)">
        </div>
    </div>
</div>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Interface:</label>
            <select name="rip_if" class="right-field">
                <option value="65535">br0</option>
                <option value="130816">nas0_0</option>
                <option value="65537">ppp0</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Receive Mode:</label>
            <select size="1" name="receive_mode" class="right-field">
                <option value="0">NONE</option>
                <option value="1">RIP1</option>
                <option value="2">RIP2</option>
                <option value="3">Both</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Send Mode:</label>
            <select size="1" name="send_mode" class="right-field">
                <option value="0">NONE</option>
                <option value="1">RIP1</option>
                <option value="2">RIP2</option>
                <option value="4">RIP1COMPAT</option>
            </select>
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl">
 <input type="submit" value="Add" name="ripAdd" class="link_bg" onClick="return on_submit(this)"></td>
</div>
<br>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14">RIP Config Table</h2>
  </div>
 </div>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <table class="table tab15-bordered table-striped" style="background-color: #f8f9fa; width:346%">
   <tr><th>Select</th>
<th>Interface</th><th >Receive Mode</th><th>Send Mode</th></tr>

  </table>
 </div>
</div> 
<hr class="margin_adjs">
<div class="btn_ctl  form-footer text-right">
 <input type="submit" value="Delete Selected" name="ripDel" onClick="return deleteClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="submit" value="Delete All" name="ripDelAll" onClick="return deleteAllClick(this)" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/rip.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
 <script>
  disableDelButton();
 </script>
</form>
<br><br>
</body>
</html>

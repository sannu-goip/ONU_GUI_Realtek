
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

<title>System Log</title>
<script language="javascript">
var addr = '';
var port = '';
function getLogPort() {
 var portNum = parseInt(port);
 if (isNaN(portNum) || portNum == 0)
  portNum = 514;
 return portNum;
}
function hideInfo(hide) {
 var status = 'visible';
 if (hide == 1) {
  status = 'hidden';
  document.forms[0].logAddr.value = '';
  document.forms[0].logPort.value = '';
  changeBlockState('srvInfo', true);
 } else {
  changeBlockState('srvInfo', false);
  document.forms[0].logAddr.value = addr;
  document.forms[0].logPort.value = getLogPort();
 }
}
function hidesysInfo(hide) {
 var status = false;
 if (hide == 1) {
  status = true;
 }
 changeBlockState('sysgroup', status);
}
function changelogstatus() {
 with (document.forms[0]) {
  if (logcap[1].checked) {
   hidesysInfo(0);
   if (logMode.selectedIndex == 0) {
    hideInfo(1);
   } else {
    hideInfo(0);
   }
  } else {
   hidesysInfo(1);
   hideInfo(1);
  }
 }
}
function cbClick(obj) {
 var idx = obj.selectedIndex;
 var val = obj.options[idx].value;
 if (val == 1)
  hideInfo(1);
 else
  hideInfo(0);
}
function check_enable()
{
 if (document.formSysLog.logcap[0].checked) {
  disableButton(document.formSysLog.refresh);
 }
 else {
  enableButton(document.formSysLog.refresh);
 }
}
function saveClick(obj)
{
 
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_submit(obj)
{
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
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/>System Log</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								

<form action=/boaform/formSysLog method=POST name=formSysLog>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">System Log:</label>
          
                <input type="radio" value="0" name="logcap" onClick="changelogstatus()" checked class="right-field-radio"> Disable
                <input type="radio" value="1" name="logcap" onClick="changelogstatus()" class="right-field-radio"> Enable
            </div>
        </div>
 
    <div id="sysgroup">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Log Level:</label>
                <select name="levelLog" size="1" class="right-field">
                    <option value="0">Emergency</option>
                    <option value="1">Alert</option>
                    <option value="2">Critical</option>
                    <option value="3">Error</option>
                    <option value="4">Warning</option>
                    <option selected value="5">Notice</option>
                    <option value="6">Informational</option>
                    <option value="7">Debugging</option>
                </select>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Display Level:</label>
                <select name="levelDisplay" size="1" class="right-field">
                    <option value="0">Emergency</option>
                    <option value="1">Alert</option>
                    <option value="2">Critical</option>
                    <option value="3">Error</option>
                    <option value="4">Warning</option>
                    <option selected value="5">Notice</option>
                    <option value="6">Informational</option>
                    <option value="7">Debugging</option>
                </select>
            </div>
        </div>
        <div id="srvInfo"></div>
    </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
 <input class="link_bg" type="submit" value="Apply Changes" name="apply" onClick="return saveClick(this)">
</div>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Save Log to File:</label>
            <input class="inner_btn right-field" type="submit" value="Save..." name="save_log" onClick="return on_submit(this)">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Clear Log:</label>
            <input class="inner_btn right-field" type="submit" value="Reset" name="clear_log" onClick="return on_submit(this)">
        </div>
    </div>
</div>
<div class="column">
    <div class="column_title">
        <div class="column_title_left"></div>
        <p>System Log</p>
        <div class="column_title_right"></div>
    </div>
    <div class="data_common">
        <!-- Add content here if needed -->
    </div>
</div>
<hr class="margin_adjs">

<div class="btn_ctl form-footer text-right">
 <input class="link_bg" type="button" value="Refresh" name="refresh" onClick="javascript: window.location.reload()">
 <input type="hidden" value="/syslog.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 check_enable();
</script>
</form>
<script>
 changelogstatus();
 
</script>
</blockquote>
</div>
   </div>
   </div>
   </div>
   </div>

</body>
</html>

<%SendWebHeadStr(); %>
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">

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

<title><% multilang("65" "LANG_SYSTEM_LOG"); %></title>
<script language="javascript">
var addr = '<% getInfo("syslog-server-ip"); %>';
var port = '<% getInfo("syslog-server-port"); %>';
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
 <% RemoteSyslog("check-ip"); %>
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
    padding:2px;
        accent-color: #fd5814; 

}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
        accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/><% multilang("65" "LANG_SYSTEM_LOG"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								

<form action=/boaform/formSysLog method=POST name=formSysLog>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("65" "LANG_SYSTEM_LOG"); %>:</label>
          
                <input type="radio" value="0" name="logcap" onClick="changelogstatus()" checked class="right-field-radio" <% checkWrite("log-cap0"); %>> <% multilang("247" "LANG_DISABLE"); %>
                <input type="radio" value="1" name="logcap" onClick="changelogstatus()" class="right-field-radio"  <% checkWrite("log-cap1"); %>> <% multilang("248" "LANG_ENABLE"); %>
            </div>
        </div>
 <% ShowPPPSyslog("syslogppp"); %>
    <div id="sysgroup">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field"><% multilang("857" "LANG_LOG_LEVEL"); %>:</label>
                <select name="levelLog" size="1" class="right-field">
                    <% checkWrite("syslog-log"); %>
                </select>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field"><% multilang("858" "LANG_DISPLAY_LEVEL"); %>:</label>
                <select name="levelDisplay" size="1" class="right-field">
                     <% checkWrite("syslog-display"); %>
                     </select>
            </div>
        </div>
          <% RemoteSyslog("syslog-mode"); %>
        <div id="srvInfo">
       
        

<hr class="margin_adjs">
<div class="form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return saveClick(this)">
</div>
   </div>
    </div>
</div>
<br>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("862" "LANG_SAVE_LOG_TO_FILE"); %>:</label>
            <input class="inner_btn right-field" type="submit" value="<% multilang("863" "LANG_SAVE"); %>..." name="save_log" onClick="return on_submit(this)">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("864" "LANG_CLEAR_LOG"); %>:</label>
            <input class="inner_btn right-field" type="submit" value="<% multilang("222" "LANG_RESET"); %>" name="clear_log" onClick="return on_submit(this)">
        </div>
    </div>
</div>
   <!--
<div class="column">
    <div class="column_title">
        <div class="column_title_left"></div>
        <p><% multilang("65" "LANG_SYSTEM_LOG"); %></p>
        <div class="column_title_right"></div>
    </div>
     -->
    <div class="data_common">
        <!-- Add content here if needed -->
        <table>
   <% sysLogList(); %>
  </table>
    </div>
</div>
<hr class="margin_adjs">

<div class="form-footer text-right">
 <input class="btn orange_btn" type="button" value="Refresh" name="refresh" onClick="javascript: window.location.reload()">
 <input type="hidden" value="/syslog.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 check_enable();
</script>
</form>
<script>
 <% initPage("syslog"); %>
 <% initPage("pppSyslog"); %>

</script>
</blockquote>
</div>
   </div>
   </div>
  
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

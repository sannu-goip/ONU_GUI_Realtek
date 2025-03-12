
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
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

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
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">System Log</p>
</div>
<form action=/boaform/formSysLog method=POST name=formSysLog>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%>System Log:&nbsp;</th>
   <td>
    <input type="radio" value="0" name="logcap" onClick='changelogstatus()' checked>Disable&nbsp;&nbsp;
    <input type="radio" value="1" name="logcap" onClick='changelogstatus()' >Enable
   </td>
  </tr>
  
  <TBODY id='sysgroup'>
   <tr>
    <th>Log Level:&nbsp;</th>
    <td><select name='levelLog' size="1">
     <option value="0">Emergency</option><option value="1">Alert</option><option value="2">Critical</option><option value="3">Error</option><option value="4">Warning</option><option selected value="5">Notice</option><option value="6">Infomational</option><option value="7">Debugging</option>
    </select></td>
   </tr>
   <tr>
    <th>Display Level:&nbsp;</th>
    <td ><select name='levelDisplay' size="1">
     <option value="0">Emergency</option><option value="1">Alert</option><option value="2">Critical</option><option value="3">Error</option><option value="4">Warning</option><option selected value="5">Notice</option><option value="6">Infomational</option><option value="7">Debugging</option>
    </select></td>
   </tr>
   
   <tbody id='srvInfo'>
    
   </tbody>
  </TBODY>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="Apply Changes" name="apply" onClick="return saveClick(this)">
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%>Save Log to File:</th>
   <td><input class="inner_btn" type="submit" value="Save..." name="save_log" onClick="return on_submit(this)"></td>
  </tr>
  <tr>
   <th>Clear Log:</th>
   <td><input class="inner_btn" type="submit" value="Reset" name="clear_log" onClick="return on_submit(this)"></td>
  </tr>
 </table>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>System Log</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   
  </table>
 </div>
</div>
<div class="btn_ctl">
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
</body>
</html>

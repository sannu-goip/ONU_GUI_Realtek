<% SendWebHeadStr();%>
<title><% multilang("65" "LANG_SYSTEM_LOG"); %></title>
<style>
  /* General body styling */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  /* Intro section styling */

  p {
    padding: 0px 15px; /* Compact padding */
      background-color: #fff;
      font-size: 24px; /* Slightly smaller font size */
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      font-size: 12px; /* Smaller font size */
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
    margin: 0px 11px 10px 10px;
    padding: 1px 10px 10px 10px; /* Compact padding */
      background-color: #fff;
    
  }
  
  .data_common_notitle {
      padding: 10px; /* Compact padding */
      background-color: #fff;
  }
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 13px; /* Smaller font size */
      color: #333;
      padding: 6px; /* Compact padding */
      width: 40%;
      font-weight: 300;;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
  }
  
  .data_common input[type="password"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #ccc;
      border-radius: 2px; /* Slightly smaller border radius */
      font-size: 12px; /* Smaller font size */
      box-sizing: border-box;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin-right: 30px;
      
  }
  
  .link_bg {
    height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #f58220;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  .btn_2{
    margin-right: 39px;
  }
  .link_bg:hover {
      background-color: #eee;
      color: #f58220;
  }
  .data_common_notitle{
    border-bottom: 1px solid #e2dcdc;
  }
  
  /* Responsive adjustments */
  @media (max-width: 768px) {
      .data_common th, .data_common td {
          display: block;
          width: 100%;
      }
  
      .data_common th {
          margin-top: 5px; /* Compact margin */
      }
  
      .btn_ctl {
          text-align: center;
      }
  }
  </style>
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
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>Log Management</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/log.png" style="width:50px;"></div>
<div style="margin-left:-19px;padding-top:7px;"> <p class="intro_title"><% multilang("65" "LANG_SYSTEM_LOG"); %></p></div></div>

</div>
<form action=/boaform/formSysLog method=POST name=formSysLog>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%><% multilang("65" "LANG_SYSTEM_LOG"); %>:&nbsp;</th>
   <td style="font-size: 13px;">
    <input type="radio" value="0" name="logcap" onClick='changelogstatus()' <% checkWrite("log-cap0"); %>><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="logcap" onClick='changelogstatus()' <% checkWrite("log-cap1"); %>><% multilang("248" "LANG_ENABLE"); %>
   </td>
  </tr>
  <% ShowPPPSyslog("syslogppp"); %>
  <TBODY id='sysgroup'>
   <tr>
    <th><% multilang("857" "LANG_LOG_LEVEL"); %>:&nbsp;</th>
    <td><select name='levelLog' size="1">
     <% checkWrite("syslog-log"); %>
    </select></td>
   </tr>
   <tr>
    <th><% multilang("858" "LANG_DISPLAY_LEVEL"); %>:&nbsp;</th>
    <td ><select name='levelDisplay' size="1">
     <% checkWrite("syslog-display"); %>
    </select></td>
   </tr>
   <% RemoteSyslog("syslog-mode"); %>
   <tbody id='srvInfo'>
    <% RemoteSyslog("server-info"); %>
   </tbody>
  </TBODY>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return saveClick(this)">
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%><% multilang("862" "LANG_SAVE_LOG_TO_FILE"); %>:</th>
   <td><input class="inner_btn" type="submit" value="<% multilang("863" "LANG_SAVE"); %>..." name="save_log" onClick="return on_submit(this)"></td>
  </tr>
  <tr>
   <th><% multilang("864" "LANG_CLEAR_LOG"); %>:</th>
   <td><input class="inner_btn" type="submit" value="<% multilang("222" "LANG_RESET"); %>" name="clear_log" onClick="return on_submit(this)"></td>
  </tr>
 </table>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("65" "LANG_SYSTEM_LOG"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <% sysLogList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg btn_2" type="button" value="Refresh" name="refresh" onClick="javascript: window.location.reload()">
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
</body>
</html>

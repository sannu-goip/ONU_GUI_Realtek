<%SendWebHeadStr(); %>
<title><% multilang("44" "LANG_REMOTE_ACCESS"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
  .data_common table{
    width: 100%;
    border-collapse: collapse;
    table-layout: fixed;
    margin-top: 15px;
  }
  .data_common table th, .data_common table td{
    text-align: center;
  }
  .data_common table th{
    border: 0.1px solid #ccc;
    background-color: #ede9e9;
    font-weight: bold
  }
  table{
    border-collapse: collapse;
    border: 1px solid #ccc;
  }
  table th, table td{
    border: 1px solid #ccc;
  }
</style>
<script>
function addClick(obj)
{
 dTelnet = getDigit(document.acc.w_telnet_port.value, 1);
 dWeb = getDigit(document.acc.w_web_port.value, 1);
 if ( dTelnet == dWeb) {
  alert("<% multilang("2407" "LANG_DUPLICATED_PORT_NUMBER"); %>");
  document.acc.w_telnet_port.focus();
  return false;
 }
 if (document.acc.w_telnet.checked) {
  if (document.acc.w_telnet_port.value=="") {
   alert("<% multilang("2408" "LANG_PORT_RANGE_CANNOT_BE_EMPTY_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_telnet_port.value ) == 0 ) {
   alert("<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if (dTelnet > 65535 || dTelnet < 1) {
   alert("<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  }
 if (document.acc.w_web.checked) {
  if (document.acc.w_web_port.value=="") {
   alert("<% multilang("2408" "LANG_PORT_RANGE_CANNOT_BE_EMPTY_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_web_port.value ) == 0 ) {
   alert("<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
  if (dWeb > 65535 || dWeb < 1) {
   alert("<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Acl Filter</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 


 <div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/acl.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title"><% multilang("44" "LANG_REMOTE_ACCESS"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>
 
 <p class="intro_content"> <% multilang("457" "LANG_THIS_PAGE_IS_USED_TO_ENABLE_DISABLE_MANAGEMENT_SERVICES_FOR_THE_LAN_AND_WAN"); %></p>
</div>
<form action=/boaform/formSAC method=POST name=acc>
<div class="data_vertical data_common_notitle">
  <div class="data_common ">
  <table>
  <tr>
   <th align=left><% multilang("378" "LANG_SERVICE"); %><% multilang("701" "LANG_NAME"); %></th>
   <th align=center><% multilang("6" "LANG_LAN"); %></th>
   <th align=center><% multilang("11" "LANG_WAN"); %></th>
   <th align=center><% multilang("458" "LANG_WAN_PORT"); %></th>
   <th align=center><% multilang("408" "LANG_REMOTE_IP"); %></th>
  </tr>
  <% rmtaccItem(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="set" onClick="return addClick(this)">
 <input type="hidden" value="/rmtacc.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% accPost(); %>
</script>
</form>
</blockquote>
</body>
</html>

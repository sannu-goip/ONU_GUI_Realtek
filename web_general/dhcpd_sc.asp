<%SendWebHeadStr(); %>
<title>DHCP <% multilang("375" "LANG_SETTINGS"); %></title>
<SCRIPT>
var pool_ipprefix;
var initialDhcp;
function skip () { this.blur(); }
function openWindow(url, windowName) {
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, windowName, settings );
}
function showdns()
{
 if (document.dhcpd.dhcpdns[0].checked == true) {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'none';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'none';
  }
 } else {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'block';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'block';
  }
 }
}
function showDhcpSvr(ip)
{
 var html;
 if (document.dhcpd.dhcpdenable[0].checked == true)
  document.getElementById('displayDhcpSvr').innerHTML=
   '<div class="btn_ctl">'+
   '<input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return on_submit(this)">&nbsp;&nbsp;'+
   '</div>';
 else if (document.dhcpd.dhcpdenable[1].checked == true)
  document.getElementById('displayDhcpSvr').innerHTML=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td colspan=2>'+
   '<% multilang("352" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_IP_ADDRESS"); %>'+
   '</td></tr>'+
   '<tr>'+
   '<th width="40%">DHCP <% multilang("91" "LANG_SERVER"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>'+
   '<td width="60%"><input type="text" name="dhcps" size="18" maxlength="15" value=<% getInfo("wan-dhcps"); %>></td>'+
   '</tr>'+
   '</table></div>'+
   '<div class="btn_ctl">'+
   '<input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveClick(this)">&nbsp;&nbsp;'+
   '</div>';
 else if (document.dhcpd.dhcpdenable[2].checked == true) {
  html=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td colspan=2>'+
   '<% multilang("353" "LANG_PAGE_DESC_ENABLE_DHCP_SERVER"); %>'+
   '</td></tr>'+
   '<tr><td colspan=2><% multilang("6" "LANG_LAN"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: </b><% getInfo("dhcplan-ip"); %>&nbsp;&nbsp;&nbsp;'+
   '<b><% multilang("90" "LANG_SUBNET_MASK"); %>: </b><% getInfo("dhcplan-subnet"); %>'+
   '</td></tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("354" "LANG_IP_POOL_RANGE"); %>:</th>';
  if (pool_ipprefix)
   html+=
    '<td width="70%">'+pool_ipprefix+'<input type="text" name="dhcpRangeStart" size=3 maxlength=3 value="<% getInfo("lan-dhcpRangeStart"); %>">'+
    '<font face="Arial" size="5">- </font>'+pool_ipprefix+'<input type="text" name="dhcpRangeEnd" size=3 maxlength=3 value="<% getInfo("lan-dhcpRangeEnd"); %>">&nbsp;';
  else
   html+=
    '<td width="70%"><input type="text" name="dhcpRangeStart" size=15 maxlength=15 value="<% getInfo("lan-dhcpRangeStart"); %>">'+
    '<font face="Arial" size="5">- </font><input type="text" name="dhcpRangeEnd" size=15 maxlength=15 value="<% getInfo("lan-dhcpRangeEnd"); %>">&nbsp;';
   html+=
    '<input class="inner_btn" type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTbl" onClick="dhcpTblClick(\'/dhcptbl.asp\')" class="inner_btn">'+
    '</td>'+
    '</tr>';
  if (!pool_ipprefix)
  {
   html +='<tr>'+
    '<th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>:</th>'+
    '<td width="70%">'+
    '<input type="text" name="dhcpSubnetMask" size=15 maxlength=15 value="<% getInfo("lan-dhcpSubnetMask"); %>">&nbsp;'+
    '</td>'+
    '</tr>';
  }
  html += '<tr>'+
   '<th width="30%"><% multilang("356" "LANG_MAX_LEASE_TIME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="ltime" size=10 maxlength=9 value="<% getInfo("lan-dhcpLTime"); %>"> <% multilang("357" "LANG_SECONDS"); %> (<% multilang("358" "LANG_MINUS_1_INDICATES_AN_INFINITE_LEASE"); %>)'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("419" "LANG_DOMAIN"); %><% multilang("701" "LANG_NAME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="dname" size=32 maxlength=29 value="<% getInfo("lan-dhcpDName"); %>">'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("359" "LANG_GATEWAY_ADDRESS"); %>:</th>'+
   '<td width="70%"><input type="text" name="ip" size="15" maxlength="15" value=<% getInfo("lan-dhcp-gateway"); %>></td>'+
   '</tr>'+
   '</table>';
  if (en_dnsopt == 0)
   html += '<div ID=optID style="display:none">';
  else
   html += '<div ID=optID style="display:block">';
  html +=
    '<table><tr>'+
   '<th width="30%">DNS option:</th>'+
   '<td width=70%><input type=radio name=dhcpdns value=0 onClick=showdns()>Use DNS Relay&nbsp;&nbsp;'+
   '<input type=radio name=dhcpdns value=1 onClick=showdns()>Set Manually&nbsp;&nbsp;</td>'+
   '</tr></table></div>'+
   '<div ID=dnsset style="display:none">'+
    '<table>'+
    '<tr><th width=30%>DNS1:</th><td width=70%><input type=text name=dns1 value=<% getInfo("dhcps-dns1"); %>></td></tr>'+
    '<tr><th width=30%>DNS2:</th><td width=70%><input type=text name=dns2 value=<% getInfo("dhcps-dns2"); %>></td></tr>'+
    '<tr><th width=30%>DNS3:</th><td width=70%><input type=text name=dns3 value=<% getInfo("dhcps-dns3"); %>></td></tr>'+
    '</table></div>'+
    '</div>'+
    '<div class="btn_ctl">'+
   '<input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)">&nbsp;&nbsp;'+
   '<input class="link_bg" type="button" value="<% multilang("360" "LANG_MAC_BASED_ASSIGNMENT"); %>" name="macIpTbl" onClick="macIpClick(\'/macIptbl.asp\')">'+
   '<input class="link_bg" type="button" value="<% multilang("4" "LANG_DEVICE"); %><% multilang("753" "LANG_IP_RANGE"); %>" name="clientIpTbl" onClick="clientIpClick(\'/devicetbl.asp\')">'+
    '</div>';
  document.getElementById('displayDhcpSvr').innerHTML=html;
  if (en_dnsopt) {
   document.dhcpd.dhcpdns[dnsopt].checked = true;
   showdns();
  }
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function checkInputIP(ip)
{
 var i, ip_d;
 for (i=1; i<5; i++) {
  ip_d = getDigit(ip, i);
 }
 if ((ip_d >= parseInt(document.dhcpd.dhcpRangeStart.value, 10)) && (ip_d <= parseInt(document.dhcpd.dhcpRangeEnd.value, 10))) {
  return false;
 }
 return true;
}
function saveClick(obj)
{
 if (!checkHostIP(document.dhcpd.dhcps, 1)) {
    return false;
   }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function checkSubnet(ip, mask, client)
{
  ip_d = getDigit(ip, 4);
  mask_d = getDigit(mask, 4);
  if ( (ip_d & mask_d) != (client & mask_d ) )
 return false;
  return true;
}
function checkDigitRange_leaseTime(str, min)
{
  d = parseInt(str, 10);
  if ( d < min || d == 0)
       return false;
  return true;
}
function validateKey_leasetime(str)
{
   for (var i=0; i<str.length; i++) {
    if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
      (str.charAt(i) == '-' ) )
   continue;
 return 0;
  }
  return 1;
}
function saveChanges(obj)
{
   if ( includeSpace(document.dhcpd.dname.value)) {
  alert('<% multilang("2128" "LANG_INVALID_DOMAIN_NAME"); %>');
  document.dhcpd.dname.focus();
  return false;
  }
 if (checkString(document.dhcpd.dname.value) == 0) {
  alert('<% multilang("2128" "LANG_INVALID_DOMAIN_NAME"); %>');
  document.dhcpd.dname.focus();
  return false;
 }
 if (pool_ipprefix) {
 if (document.dhcpd.dhcpRangeStart.value=="") {
  alert('<% multilang("2129" "LANG_PLEASE_INPUT_DHCP_IP_POOL_RANGE_"); %>');
  document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 if ( validateKey( document.dhcpd.dhcpRangeStart.value ) == 0 ) {
  alert('<% multilang("2130" "LANG_INVALID_DHCP_CLIENT_START_RANGE_IT_SHOULD_BE_1_254"); %>');
  document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 if ( !checkDigitRange(document.dhcpd.dhcpRangeStart.value,1,1,254) ) {
  alert('<% multilang("2130" "LANG_INVALID_DHCP_CLIENT_START_RANGE_IT_SHOULD_BE_1_254"); %>');
  document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 if ( !checkSubnet(document.dhcpd.lan_ip.value,document.dhcpd.lan_mask.value,document.dhcpd.dhcpRangeStart.value)) {
  alert('<% multilang("2131" "LANG_INVALID_DHCP_CLIENT_START_ADDRESSIT_SHOULD_BE_LOCATED_IN_THE_SAME_SUBNET_OF_CURRENT_IP_ADDRESS"); %>');
  document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 if (document.dhcpd.dhcpRangeEnd.value=="") {
  alert('<% multilang("2132" "LANG_PLEASE_INPUT_DHCP_IP_POOL_RANGE"); %>');
  document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
  document.dhcpd.dhcpRangeEnd.focus();
  return false;
 }
 if ( validateKey( document.dhcpd.dhcpRangeEnd.value ) == 0 ) {
  alert('<% multilang("2133" "LANG_INVALID_DHCP_CLIENT_END_ADDRESS_RANGE_IT_SHOULD_BE_1_254"); %>');
  document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
  document.dhcpd.dhcpRangeEnd.focus();
  return false;
 }
 if ( !checkDigitRange(document.dhcpd.dhcpRangeEnd.value,1,1,254) ) {
  alert('<% multilang("2134" "LANG_INVALID_DHCP_CLIENT_END_RANGE_IT_SHOULD_BE_1_254"); %>');
  document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
  document.dhcpd.dhcpRangeEnd.focus();
  return false;
 }
 if ( !checkSubnet(document.dhcpd.lan_ip.value,document.dhcpd.lan_mask.value,document.dhcpd.dhcpRangeEnd.value)) {
  alert('<% multilang("2135" "LANG_INVALID_DHCP_CLIENT_END_ADDRESSIT_SHOULD_BE_LOCATED_IN_THE_SAME_SUBNET_OF_CURRENT_IP_ADDRESS"); %>');
  document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
  document.dhcpd.dhcpRangeEnd.focus();
  return false;
 }
 if ( parseInt(document.dhcpd.dhcpRangeStart.value, 10) >= parseInt(document.dhcpd.dhcpRangeEnd.value, 10) ) {
  alert('<% multilang("2136" "LANG_INVALID_DHCP_CLIENT_ADDRESS_RANGEENDING_ADDRESS_SHOULD_BE_GREATER_THAN_STARTING_ADDRESS"); %>');
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 }
 else {
  if (!checkHostIP(document.dhcpd.dhcpRangeStart, 1)) {
   document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
   document.dhcpd.dhcpRangeStart.focus();
   return false;
  }
  if (!checkHostIP(document.dhcpd.dhcpRangeEnd, 1)) {
   document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
   document.dhcpd.dhcpRangeEnd.focus();
   return false;
  }
 }
 if (!checkInputIP(document.dhcpd.lan_ip.value)) {
  alert('<% multilang("2137" "LANG_INVALID_IP_POOL_RANGE_LAN_IP_MUST_BE_EXCLUDED_FROM_DHCP_IP_POOL"); %>');
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 }
 if ( document.dhcpd.ltime.value=="") {
  alert('<% multilang("2138" "LANG_PLEASE_INPUT_DHCP_LEASE_TIME"); %>');
  document.dhcpd.ltime.focus();
  return false;
 }
 if ( validateKey_leasetime( document.dhcpd.ltime.value ) == 0 ) {
  alert('<% multilang("2139" "LANG_INVALID_DHCP_SERVER_LEASE_TIME_NUMBER"); %>');
  document.dhcpd.ltime.value = document.dhcpd.ltime.defaultValue;
  document.dhcpd.ltime.focus();
  return false;
 }
 if ( !checkDigitRange_leaseTime(document.dhcpd.ltime.value, -1) ) {
  alert('<% multilang("2140" "LANG_INVALID_DHCP_SERVER_LEASE_TIME"); %>');
  document.dhcpd.ltime.value = document.dhcpd.ltime.defaultValue;
  document.dhcpd.ltime.focus();
  return false;
 }
 if (!checkHostIP(document.dhcpd.ip, 1))
  return false;
   if (en_dnsopt && document.dhcpd.dhcpdns[1].checked) {
  if (document.dhcpd.dns1.value=="") {
   alert('<% multilang("2148" "LANG_ENTER_DNS_VALUE"); %>');
   document.dhcpd.dhcpdns.value = document.dhcpd.dhcpdns.defaultValue;
   document.dhcpd.dns1.value = document.dhcpd.dns1.defaultValue;
   document.dhcpd.dns1.focus();
   return false;
  }
  if (!checkHostIP(document.dhcpd.dns1, 1)) {
   document.dhcpd.dns1.value = document.dhcpd.dns1.defaultValue;
   document.dhcpd.dns1.focus();
   return false;
  }
  if (document.dhcpd.dns2.value!="") {
   if (!checkHostIP(document.dhcpd.dns2, 0)) {
    document.dhcpd.dns2.value = document.dhcpd.dns2.defaultValue;
    document.dhcpd.dns2.focus();
    return false;
   }
   if (document.dhcpd.dns3.value!="") {
    if (!checkHostIP(document.dhcpd.dns3, 0)) {
     document.dhcpd.dns3.value = document.dhcpd.dns3.defaultValue;
     document.dhcpd.dns3.focus();
     return false;
    }
   }
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function dhcpTblClick(url) {
 openWindow(url, 'DHCPTbl' );
}
function ShowIP2(ipVal) {
 document.write(getDigit(ipVal,1));
 document.write('.');
 document.write(getDigit(ipVal,2));
 document.write('.');
 document.write(getDigit(ipVal,3));
 document.write('.');
}
function ShowIP(ipVal) {
 var str;
 str = getDigit(ipVal, 1) + '.';
 str += getDigit(ipVal, 2) + '.';
 str += getDigit(ipVal, 3) + '.';
 return str;
}
function macIpClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'MACIPTbl', settings );
}
function clientIpClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'DEVICETbl', settings );
}
function enabledhcpd()
{
 document.dhcpd.dhcpdenable[2].checked = true;
 showDhcpSvr(pool_ipprefix);
}
function disabledhcpd()
{
 document.dhcpd.dhcpdenable[0].checked = true;
 showDhcpSvr();
}
function enabledhcprelay()
{
 document.dhcpd.dhcpdenable[1].checked = true;
 showDhcpSvr();
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">DHCP <% multilang("375" "LANG_SETTINGS"); %></p>
 <p class="intro_content"><% multilang("350" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_RELAY"); %></p>
</div>
<form action=/boaform/formDhcpServer method=POST name="dhcpd">
 <input type="hidden" name="lan_ip" value=<% getInfo("dhcplan-ip"); %>>
 <input type="hidden" name="lan_mask" value=<% getInfo("dhcplan-subnet"); %>>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th>DHCP <% multilang("134" "LANG_MODE"); %>:</th>
   <td>
   <% checkWrite("dhcpMode"); %>
   </td>
  </tr>
 </table>
</div>
<div ID="displayDhcpSvr"></div>
<input type="hidden" value="/dhcpd_sc.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
<script>
 <% initPage("dhcp-mode"); %>
 showDhcpSvr(pool_ipprefix);
</script>
</form>
<br><br>
</body>
</html>

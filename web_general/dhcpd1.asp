<% SendWebHeadStr();%>

<title><% multilang("116" "LANG_LAN_INTERFACE_SETTINGS"); %></title>
<SCRIPT>
function resetClick()
{
 document.tcpip.reset;
}
function saveChanges()
{
 var lpm1 = 0;
 var lpm2 = 0;
 if (!checkHostIP(document.tcpip.ip, 1))
  return false;
 if (!checkNetmask(document.tcpip.mask, 1))
  return false;
 with (document.forms[0])
 {
  if(typeof chk_port_mask1 != 'undefined' && chk_port_mask1 != null){
   for (var i = 0; i < chk_port_mask1.length; i++) {
    if (chk_port_mask1[i].checked == true)
     lpm1 |= (0x1 << i);
   }
   lan_port_mask1.value = lpm1;
  }
  if(typeof chk_port_mask2 != 'undefined' && chk_port_mask2 != null){
   for (var i = 0; i < chk_port_mask2.length; i++) {
    if (chk_port_mask2[i].checked == true)
     lpm2 |= (0x1 << i);
   }
   lan_port_mask2.value = lpm2;
  }
  if((ip_version1.selectedIndex != 0) && (ipv6_mode1[1].checked)){
   if (ipv6_addr1.value =="" || ipv6_addr1.value =="::") {
    alert("<% multilang("2447" "LANG_LAN_IPV6_ADDRESS_CANNOT_BE_EMPTY_FORMAT_IS_IPV6_ADDRESS_FOR_EXAMPLE_3FFE_501_FFFF_100_1"); %>");
    ipv6_addr1.focus();
    return false;
   } else {
    if ( validateKeyV6IP(ipv6_addr1.value) == 0) {
     alert("<% multilang("2448" "LANG_INVALID_LAN_IPV6_IP"); %>");
     ipv6_addr1.focus();
     return false;
    }
   }
   if (ipv6_prefix1.value =="") {
    alert("<% multilang("2449" "LANG_LAN_IPV6_ADDRESS_IPV6_PREFIX1_CANNOT_BE_EMPTY_VALID_NUMBER_IS_0_127"); %>");
    ipv6_prefix1.focus();
    return false;
   } else {
    var prefixInt = parseInt(ipv6_prefix1.value);
    if ( prefixInt>127 ||prefixInt<0) {
     alert("<% multilang("2450" "LANG_INVALID_LAN_IPV6_PREVIX"); %>");
     ipv6_prefix1.focus();
     return false;
    }
   }
  }
  save.isclick = 1;
 }
 <% checkIP2(); %>
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableRadioGroup (radioArrOrButton)
{
  if (radioArrOrButton.type && radioArrOrButton.type == "radio") {
  var radioButton = radioArrOrButton;
  var radioArray = radioButton.form[radioButton.name];
  }
  else
  var radioArray = radioArrOrButton;
  radioArray.disabled = true;
  for (var b = 0; b < radioArray.length; b++) {
  if (radioArray[b].checked) {
   radioArray.checkedElement = radioArray[b];
   break;
 }
  }
  for (var b = 0; b < radioArray.length; b++) {
  radioArray[b].disabled = true;
  radioArray[b].checkedElement = radioArray.checkedElement;
  }
}
function updateState()
{
  if (document.tcpip.wlanDisabled.value == "ON") {
    disableRadioGroup(document.tcpip.BlockEth2Wir);
  }
}
function ipv6_mode1_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode1[0].checked)
  {
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
  }
  else
  {
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   if(ipv6_addr1.value =="::")
    ipv6_addr1.value ="";
  }
 }
}
function ipv6_mode2_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode2[0].checked)
  {
   ipv6_addr2.disabled = true;
   ipv6_prefix2.disabled = true;
  }
  else
  {
   ipv6_addr2.disabled = false;
   ipv6_prefix2.disabled = false;
  }
 }
}
function ipv6_version1_change()
{
 with (document.forms[0])
 {
  if(ip_version1.selectedIndex == 0)
  {
   ipv6_mode1[0].disabled = true;
   ipv6_mode1[1].disabled = true;
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
   ip.disabled = false;
   mask.disabled = false;
  }
  else
  {
   ipv6_mode1[0].disabled = false;
   ipv6_mode1[1].disabled = false;
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   ip.disabled = false;
   mask.disabled = false;
   ipv6_mode1_change();
  }
 }
}
<% DHCPClientScript(); %>
function on_init()
{
 ipv6_version1_change();
 updateDHCPClient();
}
<% lanScript(); %>
</SCRIPT>
<SCRIPT>
// DHCP 
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
 if ((document.dhcpd.dhcpdns[0].checked == true) || (document.dhcpd.dhcpdns[2].checked == true)) {
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
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return saveClick(0)">&nbsp;&nbsp;'+
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
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveClick(1)" class="link_bg">&nbsp;&nbsp;'+
   '</div>';
 else if (document.dhcpd.dhcpdenable[2].checked == true) {
  html=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td colspan=2>'+
   '<% multilang("353" "LANG_PAGE_DESC_ENABLE_DHCP_SERVER"); %>'+
   '</td></tr>'+
   '<tr><td colspan=2><b><% multilang("6" "LANG_LAN"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: </b><% getInfo("dhcplan-ip"); %>&nbsp;&nbsp;&nbsp;'+
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
    '<th width="30%"><% multilang("364" "LANG_DNS_OPTION"); %>:</th>'+
    '<td width=70%><input type=radio name=dhcpdns value=0 onClick=showdns()><% multilang("365" "LANG_USE_DNS_RELAY"); %>&nbsp;&nbsp;'+
    '<input type=radio name=dhcpdns value=1 onClick=showdns()><% multilang("366" "LANG_SET_MANUALLY"); %>&nbsp;&nbsp;'+
    '<input type=radio name=dhcpdns value=2 onClick=showdns()><% multilang("2981" "LANG_DNS_FROM_WANISP"); %>&nbsp;&nbsp;</td>'+
    '</tr></table></div>'+
    '<div ID=dnsset style="display:none">'+
    '<table>'+
    '<tr><th width=30%>DNS1:</th><td width=70%><input type=text name=dns1 value="<% getInfo("dhcps-dns1"); %>" <% checkWrite("dns-readonly"); %>></td></tr>'+
    '<tr><th width=30%>DNS2:</th><td width=70%><input type=text name=dns2 value="<% getInfo("dhcps-dns2"); %>" <% checkWrite("dns-readonly"); %>></td></tr>'+
    '<tr><th width=30%>DNS3:</th><td width=70%><input type=text name=dns3 value="<% getInfo("dhcps-dns3"); %>" <% checkWrite("dns-readonly"); %>></td></tr>'+
    '</table></div>'+
    '</div>'+
    '<div class="btn_ctl">'+
    '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()" class="link_bg">&nbsp;&nbsp;'+
    '<input type="button" value="<% multilang("361" "LANG_PORT_BASED_FILTER"); %>" name="macIpTbl" onClick="macIpClick(\'/portBaseFilterDhcp.asp\')" class="link_bg">'+
    '<input type="button" value="<% multilang("360" "LANG_MAC_BASED_ASSIGNMENT"); %>" name="macIpTbl" onClick="macIpClick(\'/macIptbl.asp\')" class="link_bg">'+
    '</div>';
  document.getElementById('displayDhcpSvr').innerHTML=html;
  if (en_dnsopt) {
   document.dhcpd.dhcpdns[dnsopt].checked = true;
   showdns();
  }
 }
 <% DHCPClientClickSetup(); %>
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
function saveClick(type)
{
 if(type)
  if (!checkHostIP(document.dhcpd.dhcps, 1)) {
     return false;
    }
 document.forms[0].save.isclick = 1;
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
function saveChanges()
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
 document.forms[0].save.isclick = 1;
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
function enabledhcpc()
{
 document.dhcpd.dhcpdenable[3].checked = true;
 showDhcpSvr();
}
</SCRIPT>
</head>
<BODY onLoad="on_init();">
 <div class="intro_main ">
  <p class="intro_title"><% multilang("116" "LANG_LAN_INTERFACE_SETTINGS"); %></p>
  <p class="intro_content"><% multilang("117" "LANG_PAGE_DESC_CONFIG_DEVICE_LAN_INTERFACE"); %></p>
 </div>
 <form action=/boaform/formDhcpServer method=POST name="dhcpd">
  <div class="data_common data_common_notitle">
   <table>
    <input type=hidden name="wlanDisabled" value=<% wlanStatus(); %>>
    <tr>
      <th width="30%"><% multilang("70" "LANG_INTERFACE"); %><% multilang("701" "LANG_NAME"); %>:</th>
      <td width="70%">br0</td>
    </tr>
    <tr>
      <th width="30%"><% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
      <td width="70%"><input type="text" name="ip" id="ip" size="15" maxlength="15" value=<% getInfo("lan-ip"); %>></td>
    </tr>
    <tr>
      <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>:</th>
      <td width="70%"><input type="text" name="mask" id="mask" size="15" maxlength="15" value="<% getInfo("lan-subnet"); %>"></td>
    </tr>
    <tr id=tr_ipv6_mode1 <% checkWrite("rg_only_function"); %>>
     <th width="30%"><% multilang("122" "LANG_IPV6_ADDRESS_MODE"); %>:</th>
     <td width="70%">
      <input type="radio" name="ipv6_mode1" value=0 OnChange="ipv6_mode1_change()" <% checkWrite("lan_ipv6_mode_auto"); %> ><% multilang("169" "LANG_AUTO"); %>
      <input type="radio" name="ipv6_mode1" value=1 OnChange="ipv6_mode1_change()" <% checkWrite("lan_ipv6_mode_manual"); %>><% multilang("473" "LANG_MANUAL"); %>
     </td>
    </tr>
    <tr id=tr_ipv6_addr1 <% checkWrite("rg_only_function"); %>>
      <th width="30%"><% multilang("103" "LANG_IPV6_ADDRESS"); %>:</th>
      <td width="70%"><input type="text" name="ipv6_addr1" size="30" maxlength="60" value=0></td>
    </tr>
    <tr id=tr_ipv6_prefix1 <% checkWrite("rg_only_function"); %>>
      <th width="30%"><% multilang("123" "LANG_IPV6_PREFIX_LENGTH"); %>:</th>
      <td width="70%"><input type="text" name="ipv6_prefix1" size="5" maxlength="5" value=0></td>
    </tr>
     <!-- Hide VID setting temporarily -->
    <tr style="display:none">
     <th width="30%"><% multilang("124" "LANG_VLAN_ID"); %>:</th>
     <td width="70%"><input type="text" name="lan_vlan_id1" size="15" maxlength="15" value="<% getInfo("lan_vlan_id1"); %>"></td>
    </tr>
    <tr <% checkWrite("rg_only_function"); %>>
     <th width="30%"><% multilang("128" "LANG_IP_VERSION"); %>:</th>
     <td width="70%">
      <select size="1" name="ip_version1" OnChange="ipv6_version1_change()">
       <option  <% checkWrite("lan_ipverion_v4only"); %> value="0">IPv4</option>
       <option  <% checkWrite("lan_ipverion_v4v6"); %> value="2">IPv4/IPv6</option>
      </select>
     </td>
    </tr>
    <tr <% checkWrite("rg_only_function"); %>>
      <% lan_port_mask(); %>
    </tr>
   </table>
  </div>
  
<% lan_setting(); %>
  <div class="btn_ctl">
   <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()" class="link_bg">&nbsp;&nbsp;
   <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
   <input type="hidden" value="/tcpiplan.asp" name="submit-url">
   <input type="hidden" name="lan_port_mask1" value=0>
   <input type="hidden" name="lan_port_mask2" value=0>
   <input type="hidden" name="postSecurityFlag" value="">
  </div>
  <script>
 <% initPage("lan"); %>
 updateState();
  </script>
 
<br>

<div class="intro_main ">
    <p class="intro_title">DHCP <% multilang("375" "LANG_SETTINGS"); %></p>
    <p class="intro_content"><% multilang("350" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_RELAY"); %></p>
   </div>
   
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
   <input type="hidden" value="/dhcpd.asp" name="submit-url">
   <input type="hidden" name="postSecurityFlag" value="">
   <script>
    <% initPage("dhcp-mode"); %>
    showDhcpSvr(pool_ipprefix);
   </script>
   </form>
   <br>
</body>
</html>
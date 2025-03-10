<% SendWebHeadStr();%>
<title>DHCP <% multilang("375" "LANG_SETTINGS"); %></title>
<SCRIPT>
var lanIntfArray = <% lanIntfConfigList(); %>;
var dhcpServerPoolArray = <% dhcpServerPoolList(); %>;
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
 if(document.dhcpd.dhcpdenable == 1)
 {
  if (!checkHostIP(document.dhcpd.dhcps, 1)) {
   return false;
  }
 }
 else if(document.dhcpd.dhcpdenable == 2)
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
  if (document.dhcpd.dhcpdns.value == 1)
  {
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
 }
 document.forms[0].save.value = "<% multilang("150" "LANG_APPLY_CHANGES"); %>";
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 document.forms[0].submit();
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
function hideAndDisableInput(e)
{
 var els = e.getElementsByTagName ( 'input' );
 for ( var i = 0; i < els.length ; i ++ ) {
  els[i].setAttribute('disabled', 'true');
 }
 var els = e.getElementsByTagName ( 'select' );
 for ( var i = 0; i < els.length ; i ++ ) {
  els[i].setAttribute('disabled', 'true');
 }
 e.style.display = "none";
}
function showAndEnableInput(e)
{
 var els = e.getElementsByTagName ( 'input' );
 for ( var i = 0; i < els.length ; i ++ ) {
  els[i].removeAttribute('disabled');
 }
 var els = e.getElementsByTagName ( 'select' );
 for ( var i = 0; i < els.length ; i ++ ) {
  els[i].removeAttribute('disabled');
 }
 e.style.display = "";
}
function showdns()
{
 var mode = document.forms[0].dhcpdenable.value;
 if(mode == 2)
 {
  if(document.dhcpd.dhcpdns.value == 1)
  {
   showAndEnableInput(document.getElementById('dnsset'));
   return;
  }
 }
 hideAndDisableInput(document.getElementById('dnsset'));
}
function dhcpModeChange()
{
 var mode = document.forms[0].dhcpdenable.value;
 if(mode == 2)
 {
  showAndEnableInput(document.getElementById("dhcp_serevr_block"));
  hideAndDisableInput(document.getElementById("dhcp_relay_block"));
  hideAndDisableInput(document.getElementById("dhcp_none_block"));
  showdns();
 }
 else if(mode == 1){
  hideAndDisableInput(document.getElementById("dhcp_serevr_block"));
  showAndEnableInput(document.getElementById("dhcp_relay_block"));
  hideAndDisableInput(document.getElementById("dhcp_none_block"));
 }
 else {
  hideAndDisableInput(document.getElementById("dhcp_serevr_block"));
  hideAndDisableInput(document.getElementById("dhcp_relay_block"));
  showAndEnableInput(document.getElementById("dhcp_none_block"));
 }
}
function showDHCPServerConfig(lan)
{
 var found = 0;
 dhcpServerPoolArray.forEach(function(e, i)
 {
  if(e.name == lan.name && e.intf == lan.intf)
  {
   document.forms[0].dhcpdenable.value = e.mode;
   document.forms[0].dhcpRangeStart.value = e.start;
   document.forms[0].dhcpRangeEnd.value = e.end;
   document.forms[0].dhcpSubnetMask.value = e.mask;
   document.forms[0].ltime.value = e.lease;
   document.forms[0].dname.value = e.domain;
   document.forms[0].ip.value = e.gw;
   document.forms[0].dhcpdns.value = e.dhsopt;
   document.forms[0].dns1.value = e.dns1;
   document.forms[0].dns2.value = e.dns2;
   document.forms[0].dns3.value = e.dns3;
   document.forms[0].dhcps.value = e.relay;
   found = 1;
   return;
  }
 });
 if(!found)
 {
  document.forms[0].dhcpdenable.value = 0;
  document.forms[0].dhcpRangeStart.value = "";
  document.forms[0].dhcpRangeEnd.value = "";
  document.forms[0].dhcpSubnetMask.value = "";
  document.forms[0].ip.value = "";
  document.forms[0].dhcpdns.value = 0;
  document.forms[0].ltime.value = 86400;
  document.forms[0].dns1.value = "";
  document.forms[0].dns2.value = "";
  document.forms[0].dns3.value = "";
  document.forms[0].dhcps.value = "";
  if(lan.proto == 1 || lan.proto == 3)
  {
   document.forms[0].dhcpSubnetMask.value = lan.ipmask;
   document.forms[0].dname.value = "bbrouter";
   document.forms[0].ip.value = lan.ip;
  }
 }
 dhcpModeChange();
}
function lanIntfChange()
{
 var sel = document.forms[0].bridgeName;
 var o = sel.options[sel.selectedIndex];
 var lan = lanIntfArray[parseInt(o.value)];
 if(typeof lan == "object")
 {
  document.forms[0].intfName.value = lan.intf;
  document.forms[0].poolName.value = lan.name;
  document.getElementById("intf").innerText = lan.intf;
  document.getElementById("intf_addr").innerText = lan.ip;
  document.getElementById("intf_mask").innerText = lan.ipmask;
  showDHCPServerConfig(lan);
  return true;
 }
 return false;
}
function on_init()
{
 var sel = document.forms[0].bridgeName
 lanIntfArray.forEach(function(e, i) {
  sel.options[sel.options.length] = new Option(e.name, i);
 });
 sel.addEventListener("change", lanIntfChange, false);
 lanIntfChange();
}
</SCRIPT>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title">DHCP <% multilang("375" "LANG_SETTINGS"); %></p>
 <p class="intro_content"><% multilang("350" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_RELAY"); %></p>
</div>
<form action=/boaform/formMultiDhcpServer method=POST name="dhcpd">
<input type="hidden" name="intfName" id="intfName" size="15" maxlength="15" value="" />
<input type="hidden" name="poolName" id="poolName" size="15" maxlength="60" value="" />
<input type="hidden" name="save" value="" />
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("1290" "LANG_INTERFACE_GROUPING"); %>:</th>
   <td>
       <select name="bridgeName" id="bridgeName"></select>
   </td>
  </tr>
  <tr>
   <th>DHCP <% multilang("134" "LANG_MODE"); %>:</th>
   <td>
       <input type="radio" name="dhcpdenable" value="0" onclick="dhcpModeChange()">NONE&nbsp;&nbsp;
    <input type="radio" name="dhcpdenable" value="1" onclick="dhcpModeChange()">DHCP Relay&nbsp;&nbsp;
    <input type="radio" name="dhcpdenable" value="2" onclick="dhcpModeChange()">DHCP Server&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div ID="displayDhcpSvr">
 <div class="data_common data_common_notitle" id="dhcp_serevr_block" style="display:none">
  <table>
   <tr>
    <td colspan=2>
     <% multilang("353" "LANG_PAGE_DESC_ENABLE_DHCP_SERVER"); %>
    </td>
   </tr>
   <tr>
    <td colspan=2>
     <b><% multilang("6" "LANG_LAN"); %>(&nbsp;<span id="intf" style="color:blue"></span>&nbsp;) <% multilang("89" "LANG_IP_ADDRESS"); %>: </b><span id="intf_addr"></span> &nbsp;&nbsp;&nbsp;<b><% multilang("90" "LANG_SUBNET_MASK"); %>: </b><span id="intf_mask"></span>
    </td>
   </tr>
   <tr>
    <th width="30%"><% multilang("354" "LANG_IP_POOL_RANGE"); %>:</th>
    <td width="70%">
     <input type="text" name="dhcpRangeStart" size=15 maxlength=15 value="">
     <font face="Arial" size="5">- </font><input type="text" name="dhcpRangeEnd" size=15 maxlength=15 value="">&nbsp;
     <input class="inner_btn" type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTbl" onClick="dhcpTblClick(\'/dhcptbl.asp\')" class="inner_btn">
    </td>
   </tr>
   <tr>
    <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>:</th>
    <td width="70%">
     <input type="text" name="dhcpSubnetMask" size=15 maxlength=15 value="">&nbsp;
    </td>
   </tr>
   <tr>
    <th width="30%"><% multilang("356" "LANG_MAX_LEASE_TIME"); %>:</th>
    <td width="70%">
     <input type="text" name="ltime" size=10 maxlength=9 value=""> <% multilang("357" "LANG_SECONDS"); %> (<% multilang("358" "LANG_MINUS_1_INDICATES_AN_INFINITE_LEASE"); %>)
    </td>
   </tr>
   <tr>
    <th width="30%"><% multilang("419" "LANG_DOMAIN"); %><% multilang("701" "LANG_NAME"); %>:</th>
    <td width="70%">
     <input type="text" name="dname" size=32 maxlength=29 value="">
    </td>
   </tr>
   <tr>
    <th width="30%"><% multilang("359" "LANG_GATEWAY_ADDRESS"); %>:</th>
    <td width="70%"><input type="text" name="ip" size="15" maxlength="15" value=""></td>
   </tr>
  </table>
  <div ID="optID">
   <table>
    <tr>
     <th width="30%"><% multilang("364" "LANG_DNS_OPTION"); %>:</th>
     <td width=70%><input type=radio name=dhcpdns value=0 onClick=showdns()><% multilang("365" "LANG_USE_DNS_RELAY"); %>&nbsp;&nbsp;
      <input type=radio name=dhcpdns value=1 onClick=showdns()><% multilang("366" "LANG_SET_MANUALLY"); %>&nbsp;&nbsp;
     </td>
    </tr>
   </table>
  </div>
  <div ID="dnsset" style="display:none">
   <table>
    <tr><th width=30%>DNS1:</th><td width=70%><input type=text name=dns1 value=""></td></tr>
    <tr><th width=30%>DNS2:</th><td width=70%><input type=text name=dns2 value=""></td></tr>
    <tr><th width=30%>DNS3:</th><td width=70%><input type=text name=dns3 value=""></td></tr>
   </table>
  </div>
  <div class="btn_ctl">
   <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="saveChanges()" class="link_bg">&nbsp;&nbsp;
   <input type="button" value="<% multilang("361" "LANG_PORT_BASED_FILTER"); %>" name="macIpTbl" onClick="macIpClick('/portBaseFilterDhcp.asp')" class="link_bg">
   <input type="button" value="<% multilang("360" "LANG_MAC_BASED_ASSIGNMENT"); %>" name="macIpTbl" onClick="macIpClick('/macIptbl.asp')" class="link_bg">
  </div>
 </div>
 <div class="data_common data_common_notitle" id="dhcp_relay_block" style="display:none">
  <table>
   <tr>
    <td colspan=2>
     <% multilang("352" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_IP_ADDRESS"); %>
    </td>
   </tr>
   <tr>
    <th width="40%">DHCP <% multilang("91" "LANG_SERVER"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
    <td width="60%"><input type="text" name="dhcps" size="18" maxlength="15" value=""></td>
   </tr>
  </table>
  <div class="btn_ctl">
   <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg" onClick="saveChanges()">&nbsp;&nbsp;
  </div>
 </div>
 <div class="data_common data_common_notitle" id="dhcp_none_block">
  <div class="btn_ctl">
   <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg" onClick="saveChanges()">&nbsp;&nbsp;
  </div>
 </div>
</div>
<input type="hidden" value="/multi_dhcpd.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</form>
<br><br>
</body>
</html>

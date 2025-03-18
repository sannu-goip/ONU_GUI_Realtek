<% SendWebHeadStr();%>
<title><% multilang("116" "LANG_LAN_INTERFACE_SETTINGS"); %></title>
<SCRIPT><!-- lan -->
function resetClick()
{
 document.tcpip.reset;
}
function saveChanges()
{
 var lpm1 = 0;
 var lpm2 = 0;
 with (document.forms[0])
 {
  if((ip_version1.value == 2 || ip_version1.value == 3) && (ipv6_mode1[1].checked)){
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
  if(ip_version1.value == 1 || ip_version1.value == 3)
  {
   if (!checkHostIP(ip, 1))
    return false;
   if (!checkNetmask(mask, 1))
    return false;
  }
  save.isclick = 1;
 }
 return true;
}
function do_saveChanges()
{
 saveChanges();
 if(!saveChanges_dhcpd()){
  alert("dhcp form error!")
  return false;
 }
 if(!saveClick()){
  alert("group form error!")
  return false;
 }
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
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
function ip_version1_change()
{
 with (document.forms[0])
 {
  if(ip_version1.value == 0)
  {
   ipv6_mode1[0].disabled = true;
   ipv6_mode1[1].disabled = true;
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
   ip.disabled = true;
   mask.disabled = true;
  }
  else if(ip_version1.value == 1)
  {
   ipv6_mode1[0].disabled = true;
   ipv6_mode1[1].disabled = true;
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
   ip.disabled = false;
   mask.disabled = false;
  }
  else if(ip_version1.value == 2)
  {
   ipv6_mode1[0].disabled = false;
   ipv6_mode1[1].disabled = false;
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   ip.disabled = true;
   mask.disabled = true;
   ipv6_mode1_change();
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
var lanIntfArray = <% lanIntfConfigList(); %>;
function newIntCreate()
{
 group_new = "1"
 group_new_c = "2"
 for(i = 1 ; i < InterfaceGroupingKey.length+1; i++)
 {
  found = 0;
  for(j = 0; j < InterfaceGroupingKey.length; j++) {
   if(i == InterfaceGroupingKey[j]){
    found = 1;
    break;
   }
  }
  if(found) {
   continue;
  }
  group_new = i
  group_new_c = i+1
  break;
 }
 document.forms[0].intfName.value = "br"+group_new;
 document.getElementById("intfName_txt").innerText = "br"+group_new;
 document.forms[0].ip.value = "192.168."+group_new_c+".1";
 document.forms[0].mask.value = "255.255.255.0";
 document.forms[0].ip_version1.value = "1";
 ip_version1_change();
 document.forms[0].dhcpdenable.value = 2;
 document.forms[0].dhcpRangeStart.value = "192.168."+group_new_c+".35";
 document.forms[0].dhcpRangeEnd.value = "192.168."+group_new_c+".35";
 document.forms[0].dhcpSubnetMask.value = document.forms[0].mask.value;
 document.forms[0].gw_ip.value = document.forms[0].ip.value;
 document.getElementById("intf").innerText = document.forms[0].intfName.value;
 document.getElementById("intf_addr").innerText = document.forms[0].ip.value;
 document.getElementById("intf_mask").innerText = document.forms[0].mask.value;
 dhcpModeChange();
}
function lanIntfChange()
{
 var sel = document.forms[0].bridgeName;
 var o = sel.options[sel.selectedIndex];
 var lan = lanIntfArray[sel.selectedIndex];
 if(typeof lan == "object")
 {
  document.forms[0].intfName.value = lan.intf;
  document.getElementById("intfName_txt").innerText = lan.intf;
  document.forms[0].ip.value = lan.ip;
  document.forms[0].mask.value = lan.ipmask;
  document.forms[0].ipv6_addr1.value = lan.ip6;
  document.forms[0].ipv6_prefix1.value = lan.ip6len;
  document.forms[0].ip_version1.value = lan.proto;
  document.forms[0].ipv6_mode1.value = (lan.ip6mode) ? 1 : 0;
  ipv6_mode1_change();
  lanIntfChange_dhcp();
  viewGroup();
  return true;
 }
 if(o.value == "-1") {
  document.forms[0].intfName.value = "";
  document.getElementById("intfName_txt").innerText = "";
  document.forms[0].ip.value = "";
  document.forms[0].mask.value = "";
  document.forms[0].ipv6_addr1.value = "::";
  document.forms[0].ipv6_prefix1.value = "0";
  document.forms[0].ip_version1.value = "";
  document.forms[0].ipv6_mode1.value = 0;
  ipv6_mode1_change();
  document.forms[0].mac_based_tag_decision = 1;
  document.forms[0].dhcpdenable = 2;
  lanIntfChange_dhcp();
  viewGroup();
  newIntCreate();
  return true;
 }
 return false;
}
function on_init()
{
 var sel = document.forms[0].bridgeName
 lanIntfArray.forEach(function(e, i) {
  sel.options[sel.options.length] = new Option(e.name, InterfaceGroupingKey[i]);
 });
 sel.options[sel.options.length] = new Option("New Group", "-1");
 sel.addEventListener("change", lanIntfChange, false);
 hideAndDisableInput(document.getElementById('new_group_ifterface_name'));
 lanIntfChange();
 formLoad()
}
<% lanScript(); %>
</SCRIPT>
<SCRIPT> <!-- dhcp -->
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
 if ((ip_d >= parseInt(document.forms[0].dhcpRangeStart.value, 10)) && (ip_d <= parseInt(document.forms[0].dhcpRangeEnd.value, 10))) {
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
function saveChanges_dhcpd()
{
 if(document.forms[0].dhcpdenable == 1)
 {
  if (!checkHostIP(document.forms[0].dhcps, 1)) {
   return false;
  }
 }
 else if(document.forms[0].dhcpdenable == 2)
 {
  if ( includeSpace(document.forms[0].dname.value)) {
   alert('<% multilang("2128" "LANG_INVALID_DOMAIN_NAME"); %>');
   document.forms[0].dname.focus();
   return false;
  }
  if (checkString(document.forms[0].dname.value) == 0) {
   alert('<% multilang("2128" "LANG_INVALID_DOMAIN_NAME"); %>');
   document.forms[0].dname.focus();
   return false;
  }
  if (document.forms[0].dhcpRangeStart.value=="") {
   alert('<% multilang("2129" "LANG_PLEASE_INPUT_DHCP_IP_POOL_RANGE_"); %>');
   document.forms[0].dhcpRangeStart.value = document.forms[0].dhcpRangeStart.defaultValue;
   document.forms[0].dhcpRangeStart.focus();
   return false;
  }
  if ( validateKey( document.forms[0].dhcpRangeStart.value ) == 0 ) {
   alert('<% multilang("2130" "LANG_INVALID_DHCP_CLIENT_START_RANGE_IT_SHOULD_BE_1_254"); %>');
   document.forms[0].dhcpRangeStart.value = document.forms[0].dhcpRangeStart.defaultValue;
   document.forms[0].dhcpRangeStart.focus();
   return false;
  }
  if ( !checkDigitRange(document.forms[0].dhcpRangeStart.value,1,1,254) ) {
   alert('<% multilang("2130" "LANG_INVALID_DHCP_CLIENT_START_RANGE_IT_SHOULD_BE_1_254"); %>');
   document.forms[0].dhcpRangeStart.value = document.forms[0].dhcpRangeStart.defaultValue;
   document.forms[0].dhcpRangeStart.focus();
   return false;
  }
  if ( !checkSubnet(document.forms[0].lan_ip.value,document.forms[0].lan_mask.value,document.forms[0].dhcpRangeStart.value)) {
   alert('<% multilang("2131" "LANG_INVALID_DHCP_CLIENT_START_ADDRESSIT_SHOULD_BE_LOCATED_IN_THE_SAME_SUBNET_OF_CURRENT_IP_ADDRESS"); %>');
   document.forms[0].dhcpRangeStart.value = document.forms[0].dhcpRangeStart.defaultValue;
   document.forms[0].dhcpRangeStart.focus();
   return false;
  }
  if (document.forms[0].dhcpRangeEnd.value=="") {
   alert('<% multilang("2132" "LANG_PLEASE_INPUT_DHCP_IP_POOL_RANGE"); %>');
   document.forms[0].dhcpRangeEnd.value = document.forms[0].dhcpRangeEnd.defaultValue;
   document.forms[0].dhcpRangeEnd.focus();
   return false;
  }
  if ( validateKey( document.forms[0].dhcpRangeEnd.value ) == 0 ) {
   alert('<% multilang("2133" "LANG_INVALID_DHCP_CLIENT_END_ADDRESS_RANGE_IT_SHOULD_BE_1_254"); %>');
   document.forms[0].dhcpRangeEnd.value = document.forms[0].dhcpRangeEnd.defaultValue;
   document.forms[0].dhcpRangeEnd.focus();
   return false;
  }
  if ( !checkDigitRange(document.forms[0].dhcpRangeEnd.value,1,1,254) ) {
   alert('<% multilang("2134" "LANG_INVALID_DHCP_CLIENT_END_RANGE_IT_SHOULD_BE_1_254"); %>');
   document.forms[0].dhcpRangeEnd.value = document.forms[0].dhcpRangeEnd.defaultValue;
   document.forms[0].dhcpRangeEnd.focus();
   return false;
  }
  if ( !checkSubnet(document.forms[0].lan_ip.value,document.forms[0].lan_mask.value,document.forms[0].dhcpRangeEnd.value)) {
   alert('<% multilang("2135" "LANG_INVALID_DHCP_CLIENT_END_ADDRESSIT_SHOULD_BE_LOCATED_IN_THE_SAME_SUBNET_OF_CURRENT_IP_ADDRESS"); %>');
   document.forms[0].dhcpRangeEnd.value = document.forms[0].dhcpRangeEnd.defaultValue;
   document.forms[0].dhcpRangeEnd.focus();
   return false;
  }
  if ( parseInt(document.forms[0].dhcpRangeStart.value, 10) >= parseInt(document.forms[0].dhcpRangeEnd.value, 10) ) {
   alert('<% multilang("2136" "LANG_INVALID_DHCP_CLIENT_ADDRESS_RANGEENDING_ADDRESS_SHOULD_BE_GREATER_THAN_STARTING_ADDRESS"); %>');
   document.forms[0].dhcpRangeStart.focus();
   return false;
  }
  else {
   if (!checkHostIP(document.forms[0].dhcpRangeStart, 1)) {
    document.forms[0].dhcpRangeStart.value = document.forms[0].dhcpRangeStart.defaultValue;
    document.forms[0].dhcpRangeStart.focus();
    return false;
   }
   if (!checkHostIP(document.forms[0].dhcpRangeEnd, 1)) {
    document.forms[0].dhcpRangeEnd.value = document.forms[0].dhcpRangeEnd.defaultValue;
    document.forms[0].dhcpRangeEnd.focus();
    return false;
   }
  }
  if ( document.forms[0].ltime.value=="") {
   alert('<% multilang("2138" "LANG_PLEASE_INPUT_DHCP_LEASE_TIME"); %>');
   document.forms[0].ltime.focus();
   return false;
  }
  if ( validateKey_leasetime( document.forms[0].ltime.value ) == 0 ) {
   alert('<% multilang("2139" "LANG_INVALID_DHCP_SERVER_LEASE_TIME_NUMBER"); %>');
   document.forms[0].ltime.value = document.forms[0].ltime.defaultValue;
   document.forms[0].ltime.focus();
   return false;
  }
  if ( !checkDigitRange_leaseTime(document.forms[0].ltime.value, -1) ) {
   alert('<% multilang("2140" "LANG_INVALID_DHCP_SERVER_LEASE_TIME"); %>');
   document.forms[0].ltime.value = document.forms[0].ltime.defaultValue;
   document.forms[0].ltime.focus();
   return false;
  }
  if (!checkHostIP(document.forms[0].ip, 1))
   return false;
  if (document.forms[0].dhcpdns.value == 1)
  {
   if (document.forms[0].dns1.value=="") {
    alert('<% multilang("2148" "LANG_ENTER_DNS_VALUE"); %>');
    document.forms[0].dhcpdns.value = document.forms[0].dhcpdns.defaultValue;
    document.forms[0].dns1.value = document.forms[0].dns1.defaultValue;
    document.forms[0].dns1.focus();
    return false;
   }
   if (!checkHostIP(document.forms[0].dns1, 1)) {
    document.forms[0].dns1.value = document.forms[0].dns1.defaultValue;
    document.forms[0].dns1.focus();
    return false;
   }
   if (document.forms[0].dns2.value!="") {
    if (!checkHostIP(document.forms[0].dns2, 0)) {
     document.forms[0].dns2.value = document.forms[0].dns2.defaultValue;
     document.forms[0].dns2.focus();
     return false;
    }
    if (document.forms[0].dns3.value!="") {
     if (!checkHostIP(document.forms[0].dns3, 0)) {
      document.forms[0].dns3.value = document.forms[0].dns3.defaultValue;
      document.forms[0].dns3.focus();
      return false;
     }
    }
   }
  }
 }
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
  if(document.forms[0].dhcpdns.value == 1)
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
 (!(lan === undefined)) && dhcpServerPoolArray.forEach(function(e, i)
 {
  if(e.name == lan.name && e.intf == lan.intf)
  {
   document.forms[0].dhcpdenable.value = e.mode;
   document.forms[0].dhcpRangeStart.value = e.start;
   document.forms[0].dhcpRangeEnd.value = e.end;
   document.forms[0].dhcpSubnetMask.value = e.mask;
   document.forms[0].ltime.value = e.lease;
   document.forms[0].dname.value = e.domain;
   document.forms[0].gw_ip.value = e.gw;
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
  document.forms[0].gw_ip.value = "";
  document.forms[0].dhcpdns.value = 0;
  document.forms[0].ltime.value = 86400;
  document.forms[0].dns1.value = "";
  document.forms[0].dns2.value = "";
  document.forms[0].dns3.value = "";
  document.forms[0].dhcps.value = "";
  if((!(lan === undefined)) && (lan.proto == 1 || lan.proto == 3))
  {
   document.forms[0].dhcpSubnetMask.value = lan.ipmask;
   document.forms[0].dname.value = "bbrouter";
   document.forms[0].gw_ip.value = lan.ip;
  }
 }
 dhcpModeChange();
}
function lanIntfChange_dhcp()
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
 if (o.value == "-1") {
  showDHCPServerConfig(lan);
  return true;
 }
 return false;
}
</SCRIPT>
<script> <!-- interface group -->
<% checkWrite("interface_grouping_tabel"); %>
function viewGroup(_group_key)
{
 with (document.forms[0])
 {
  var i = 0, j = 0, find = 0;
  var group_key = bridgeName.value;
  if(_group_key === undefined) {
   group_select.value = bridgeName.value;
  } else {
   group_key = _group_key
   group_select.value = _group_key;
  }
  if (0 == group_key) {
   hideAndDisableInput(document.getElementById("interface_group_mapping"));
   group_name.disabled = true;
  } else {
   showAndEnableInput(document.getElementById("interface_group_mapping"));
   group_name.disabled = false;
  }
  group_select.disabled = true;
  for (i = (group_member.options.length - 1); i >= 0; i--)
  {
   group_member.options.remove(i);
  }
  for (i = (group_available.options.length - 1); i >= 0; i--)
  {
   group_available.options.remove(i);
  }
  for (i = 0; i < InterfaceGroupingKey.length; i++)
  {
   if (InterfaceGroupingKey[i] == group_key)
   {
    group_enable.checked = (InterfaceGroupingEnable[i] == "1") ? true:false;
    group_name.value = InterfaceGroupingName[i];
    if (i == 0)
    {
     apply_div.style.display = "none";
    }
    else
    {
     apply_div.style.display = "";
    }
    for (j = 0; j < InterfaceList_Domain.length; j++)
    {
     if (InterfaceGroupingKey[i] == InterfaceList_Group[j])
     {
      group_member.options.add(new Option(InterfaceList_Name[j], InterfaceList_Name[j]));
     }
    }
    find = 1;
    break;
   }
  }
  if (find == 0)
  {
   group_enable.checked = true;
   group_name.value = "";
   apply_div.style.display = "";
  }
  for (j = 0; j < InterfaceList_Domain.length; j++)
  {
   if (InterfaceList_Group[j] == 0)
   {
    group_available.options.add(new Option(InterfaceList_Name[j], InterfaceList_Name[j]));
   }
  }
 }
 return true;
}
function btnRemove()
{
 with (document.forms[0])
 {
  var i = 0;
  for (i = 0; i < group_member.options.length; i++)
  {
   if (group_member.options[i].selected == true)
   {
    group_available.options.add(new Option(group_member.options[i].text, group_member.options[i].value));
   }
  }
  for (i = (group_member.options.length - 1); i >= 0; i--)
  {
   if (group_member.options[i].selected == true)
   {
    group_member.options.remove(i);
   }
  }
 }
 return true;
}
function btnAdd()
{
 with (document.forms[0])
 {
  var i = 0;
  for (i = 0; i < group_available.options.length; i++)
  {
   if (group_available.options[i].selected == true)
   {
    group_member.options.add(new Option(group_available.options[i].text, group_available.options[i].value));
   }
  }
  for (i = (group_available.options.length - 1); i >= 0; i--)
  {
   if (group_available.options[i].selected == true)
   {
    group_available.options.remove(i);
   }
  }
 }
 return true;
}
function build_group_list()
{
 with (document.forms[0])
 {
  var i = 0, j = 0, member_info = "";
  group_member_list.value = "";
  for (i = 0; i < group_member.options.length; i++)
  {
   for (j = 0; j < InterfaceList_Domain.length; j++)
   {
    if (group_member.options[i].value == InterfaceList_Name[j])
    {
     member_info = InterfaceList_Domain[j] + "|" + InterfaceList_ID[j] + "|" + InterfaceList_Name[j] + "|" + InterfaceList_Group[j];
     break;
    }
   }
   if (group_member_list.value != "") group_member_list.value += ",";
   group_member_list.value += member_info;
  }
  group_available_list.value = "";
  for (i = 0; i < group_available.options.length; i++)
  {
   for (j = 0; j < InterfaceList_Domain.length; j++)
   {
    if (group_available.options[i].value == InterfaceList_Name[j])
    {
     member_info = InterfaceList_Domain[j] + "|" + InterfaceList_ID[j] + "|" + InterfaceList_Name[j] + "|" + InterfaceList_Group[j];
     break;
    }
   }
   if (group_available_list.value != "") group_available_list.value += ",";
   group_available_list.value += member_info;
  }
 }
 return true;
}
function delClick(group_key)
{
 with (document.forms[0])
 {
  var i = 0;
  if (!confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>'))
  {
   return false;
  }
  else
  {
   group_action.value = "0";
   group_number.value = group_key;
   group_select.value = group_key;
   viewGroup(group_key);
   for (i = 0; i < group_member.options.length; i++)
   {
    group_available.options.add(new Option(group_member.options[i].text, group_member.options[i].value));
   }
   for (i = (group_member.options.length - 1); i >= 0; i--)
   {
    group_member.options.remove(i);
   }
   build_group_list();
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   submit();
   return true;
  }
 }
 return true;
}
function saveClick()
{
 with (document.forms[0])
 {
  group_action.value = "1";
  group_number.value = group_select.value;
  if (group_enable.checked)
  {
   group_enable.disabled = true;
   group_enable_value.value = "1";
  }
  else
  {
   group_enable.disabled = true;
   group_enable_value.value = "0";
  }
  build_group_list();
 }
 return true;
}
function formLoad()
{
 viewGroup();
 return true;
}
</script>
</head>
<BODY onLoad="on_init();">
 <div class="intro_main">
  <p class="intro_title"><% multilang("116" "LANG_LAN_INTERFACE_SETTINGS"); %></p>
  <p class="intro_content"><% multilang("117" "LANG_PAGE_DESC_CONFIG_DEVICE_LAN_INTERFACE"); %></p>
 </div>
 <form action=/boaform/formMultiTcpipLanDhcpGroupSetup method=POST name="tcpip">
  <div class="data_common data_common_notitle">
   <table>
    <input type=hidden name="wlanDisabled" value=<% wlanStatus(); %>>
    <tr id="intfGrpSel">
      <th width="30%"><% multilang("1290" "LANG_INTERFACE_GROUPING"); %>:</th>
      <td width="70%"><select name="bridgeName" id="bridgeName"></select></td>
    </tr>
    <div class="data_common data_common_notitle" id="new_group_ifterface_name" style="display:none">
    <tr>
     <th width="30%"><% multilang("701" "LANG_NAME"); %>:</th>
     <td width="70%"><input type="text" name="group_name" id="group_name" size="35" maxlength="64"></td>
    </tr>
    </div>
    <tr>
      <th width="30%"><% multilang("70" "LANG_INTERFACE"); %><% multilang("701" "LANG_NAME"); %>:</th>
      <td width="70%"><input type="hidden" name="intfName" id="intfName" size="15" maxlength="15" value="" /><label id="intfName_txt"></label></td>
    </tr>
    <tr>
      <th width="30%"><% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
      <td width="70%"><input type="text" name="ip" id="ip" size="15" maxlength="15" value=""></td>
    </tr>
    <tr>
      <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>:</th>
      <td width="70%"><input type="text" name="mask" id="mask" size="15" maxlength="15" value=""></td>
    </tr>
    <tr id=tr_ipv6_mode1>
     <th width="30%"><% multilang("122" "LANG_IPV6_ADDRESS_MODE"); %>:</th>
     <td width="70%">
      <input type="radio" name="ipv6_mode1" value=0 OnChange="ipv6_mode1_change()"><% multilang("169" "LANG_AUTO"); %>
      <input type="radio" name="ipv6_mode1" value=1 OnChange="ipv6_mode1_change()"><% multilang("473" "LANG_MANUAL"); %>
     </td>
    </tr>
    <tr id=tr_ipv6_addr1>
      <th width="30%"><% multilang("103" "LANG_IPV6_ADDRESS"); %>:</th>
      <td width="70%"><input type="text" name="ipv6_addr1" size="30" maxlength="60" value=0></td>
    </tr>
    <tr id=tr_ipv6_prefix1>
      <th width="30%"><% multilang("123" "LANG_IPV6_PREFIX_LENGTH"); %>:</th>
      <td width="70%"><input type="text" name="ipv6_prefix1" size="5" maxlength="5" value=0></td>
    </tr>
    <tr>
     <th width="30%"><% multilang("128" "LANG_IP_VERSION"); %>:</th>
     <td width="70%">
      <select size="1" name="ip_version1" OnChange="ip_version1_change()">
       <option value="0">None</option>
       <option value="1">IPv4</option>
       <option value="2">IPv6</option>
       <option value="3">IPv4/IPv6</option>
      </select>
     </td>
    </tr>
   </table>
  </div>
  <% lan_setting(); %>
  <!-- <div class="btn_ctl"> -->
  <!-- <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return do_saveChanges()" class="link_bg">&nbsp;&nbsp; -->
   <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
  <!-- <input type="hidden" value="/multi_tcpiplan.asp" name="submit-url"> -->
  <!-- <input type="hidden" name="postSecurityFlag" value=""> -->
  <!-- </div> -->
  <script>
  <% initPage("lan"); %>
  updateState();
  </script>
 <!--</form>-->
 <!-- dhcp_start -->
<div class="intro_main_dhcp">
 <p class="intro_title">DHCP <% multilang("375" "LANG_SETTINGS"); %></p>
 <p class="intro_content"><% multilang("350" "LANG_PAGE_DESC_CONFIGURE_DHCP_SERVER_RELAY"); %></p>
</div>
<!--<form action=/boaform/formMultiDhcpServer method=POST name="dhcpd"> -->
<!-- <input type="hidden" name="intfName" id="intfName" size="15" maxlength="15" value="" /> -->
<input type="hidden" name="poolName" id="poolName" size="15" maxlength="60" value="" />
<!-- <input type="hidden" name="save" value="" /> -->
<div class="data_common data_common_notitle">
 <table>
 <!--
  <tr>
   <th><% multilang("1290" "LANG_INTERFACE_GROUPING"); %>:</th>
   <td>
       <select name="bridgeName" id="bridgeName"></select>
   </td>
  </tr>
 -->
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
    <td width="70%"><input type="text" name="gw_ip" size="15" maxlength="15" value=""></td>
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
   <!-- <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveChanges()" class="link_bg">&nbsp;&nbsp; -->
   <!-- <input type="button" value="<% multilang("361" "LANG_PORT_BASED_FILTER"); %>" name="macIpTbl" onClick="macIpClick('/portBaseFilterDhcp.asp')" class="link_bg"> -->
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
  <!-- <div class="btn_ctl"> -->
  <!-- <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg" onClick="saveChanges()">&nbsp;&nbsp; -->
  <!-- </div> -->
 </div>
 <div class="data_common data_common_notitle" id="dhcp_none_block">
  <!-- <div class="btn_ctl"> -->
  <!-- <input type="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg" onClick="saveChanges()">&nbsp;&nbsp; -->
  <!-- </div> -->
 </div>
</div>
<!-- <input type="hidden" value="/multi_dhcpd.asp" name="submit-url"> -->
<!-- <input type="hidden" name="postSecurityFlag" value=""> -->
<!-- </form> -->
 <!-- dchp_end -->
 <!-- if_group_start -->
 <div class="intro_main">
  <p class="intro_title">Interface Grouping <% multilang("238" "LANG_CONFIGURATION"); %></p>
 </div>
 <!--<form action="/boaform/formInterfaceGrouping" method="POST" name="InterfaceGroupingform">-->
  <div class="data_common data_common_notitle" id="interface_group_mapping">
   <table>
    <tr>
     <th width="30%"><% multilang("226" "LANG_SELECT"); %>:</th>
     <td width="70%">
      <select name="group_select" id="group_select" onChange="viewGroup();">
       <script language="javascript">
       var i = 0;
       document.write("<option value=\"0\">"+lanIntfArray[0].name+"</option>");
       for (i = 1; i < InterfaceGroupingKey.length; i++)
       {
        document.write("<option value=\"" + InterfaceGroupingKey[i] + "\">" + InterfaceGroupingName[i] + "</option>");
       }
       document.write("<option value=\"-1\">New Group</option>");
       </script>
      </select>
     </td>
    </tr>
    <tr>
     <th width="30%"><% multilang("248" "LANG_ENABLE"); %>:</th>
     <td width="70%"><input type="checkbox" name="group_enable" id="group_enable" value="1"></td>
    </tr>
    <!-- <tr> -->
    <!-- <th width="30%"><% multilang("701" "LANG_NAME"); %>:</th> -->
    <!-- <td width="70%"><input type="text" name="group_name" id="group_name" size="35" maxlength="64"></td> -->
    <!-- </tr> -->
   </table>
   <table>
    <tr align="center">
     <td><b><% multilang("789" "LANG_GROUPED_INTERFACES"); %></b></td>
     <td></td>
     <td><b><% multilang("790" "LANG_AVAILABLE_INTERFACES"); %></b></td>
    </tr>
    <tr align="center">
     <td>
      <select multiple name="group_member" id="group_member" size="8" style="width: 120px; height: 150px"></select>
     </td>
     <td>
      <input type="button" name="rmbtn" value="->" onClick="btnRemove();" style="width: 30px; height: 30px">
      <br><br>
      <input type="button" name="adbtn" value="<-" onClick="btnAdd();" style="width: 30px; height: 30px">
     </td>
     <td>
      <select multiple name="group_available" id="group_available" size="8" style="width: 120px; height: 150px"></select>
     </td>
    </tr>
   </table>
  </div>
  <div id="apply_div" class="btn_ctl">
   <!-- <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveClick()"> -->
   <input type="hidden" name="group_action" value="1">
   <input type="hidden" name="group_number" value="0">
   <input type="hidden" name="group_enable_value" value="0">
   <input type="hidden" name="group_member_list" value="">
   <input type="hidden" name="group_available_list" value="">
   <!-- <input type="hidden" value="/interface_grouping.asp" name="submit-url"> -->
   <!-- <input type="hidden" name="postSecurityFlag" value=""> -->
  </div>
  <div class="btn_ctl">
   <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return do_saveChanges()" class="link_bg">&nbsp;&nbsp;
   <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
   <input type="hidden" value="/multi_subnet4.asp" name="submit-url">
   <input type="hidden" name="postSecurityFlag" value="">
  </div>
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>Interface Grouping Table</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common data_vertical">
    <table>
    <tr>
     <th align=center width="25%"><% multilang("701" "LANG_NAME"); %></th>
     <th align=center width="15%"><% multilang("3" "LANG_STATUS"); %></th>
     <th align=center width="50%"><% multilang("2908" "LANG_INTERFACES"); %></th>
     <th align=center width="10%"><% multilang("711" "LANG_ACTION"); %></th>
    </tr>
    <script language="javascript">
    var i = 0, j = 0, member_list = "";
    for (i = 0; i < InterfaceGroupingKey.length; i++)
    {
     document.write("<tr>");
     document.write("<td>" + InterfaceGroupingName[i] + "</td>");
     document.write("<td>" + ((InterfaceGroupingEnable[i] == "0") ? "<% multilang("247" "LANG_DISABLE"); %>":"<% multilang("248" "LANG_ENABLE"); %>") + "</td>");
     member_list = "";
     for (j = 0; j < InterfaceList_Domain.length; j++)
     {
      if (InterfaceGroupingKey[i] == InterfaceList_Group[j])
      {
       if (member_list != "") member_list += ",";
       member_list += InterfaceList_Name[j];
      }
     }
     document.write("<td>" + member_list + "</td>");
     if (i > 0)
      document.write("<td><image onClick=\"delClick(" + InterfaceGroupingKey[i] + ")\" title=\"Delete\" src=\"graphics/del.gif\"></td>");
     else
      document.write("<td></td>");
     document.write("</tr>");
    }
    </script>
    </table>
   </div>
  </div>
 </form>
 <!-- if_group_end -->
<br><br>
</body>
</html>

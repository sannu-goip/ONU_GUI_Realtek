<%SendWebHeadStr(); %>
<title><% multilang("4" "LANG_DEVICE"); %> <% multilang("753" "LANG_IP_RANGE"); %><% multilang("1154" "LANG_TABLE_2"); %></title>
<SCRIPT>
var pool_ipprefix;
<% initPage("dhcp-iprange"); %>
function postsetting(devname,devicetype, startip, endip, gwip,option,optCode,optStr)
{
 document.ipRange.name.value = devname;
 document.ipRange.sIp.value = startip;
 document.ipRange.dIp.value = endip;
 document.ipRange.gwIp.value = gwip;
 document.ipRange.Opt60.value = option;
 document.ipRange.dhcpDeviceType.value = devicetype;
 deviceTypeSelect();
 if(document.ipRange.dhcpDeviceType.selectedIndex==3)
 {
  document.ipRange.OptStr240.value = optStr;
 }
 else if(document.ipRange.dhcpDeviceType.selectedIndex!=5)
 {
  document.ipRange.reservedOption.value = optCode;
  document.ipRange.OptStr.value = optStr;
 }
}
function checkInputIP(client)
{
 var pool_ip, mask;
 var i, mask_d, ip_d, pool_d;
 var pool_ip_d, client_d;
 if (pool_ipprefix) {
  pool_ip = document.ipRange.lan_ip.value;
  mask = document.ipRange.lan_mask.value;
 }
 else {
  pool_ip = document.ipRange.lan_dhcpRangeStart.value;
  mask = document.ipRange.lan_dhcpSubnetMask.value;
 }
 for( i=1;i<5;i++ ) {
  mask_d = getDigit(mask, i);
  pool_ip_d = getDigit(pool_ip, i);
  client_d = getDigit(client, i);
  if( (pool_ip_d & mask_d) != (client_d & mask_d ) ) {
   return false;
  }
 }
 if (pool_ipprefix) {
  if( (parseInt(document.ipRange.lan_dhcpRangeStart.value, 10) > client_d) ||
   (parseInt(document.ipRange.lan_dhcpRangeEnd.value, 10) < client_d) ) {
   return false;
  }
 }
 return true;
}
function deviceTypeSelect()
{
 if(document.ipRange.dhcpDeviceType.selectedIndex==3)
 {
  if (document.getElementById)
  {
   document.getElementById('option240').style.display = '';
   document.getElementById('option241').style.display = 'none';
  }
  else {
   if (document.layers == false)
   {
    document.all.option240.style.display = '';
    document.all.option241.style.display = 'none';
   }
  }
 }
 else if(document.ipRange.dhcpDeviceType.selectedIndex==5)
 {
  if (document.getElementById)
  {
   document.getElementById('option240').style.display = 'none';
   document.getElementById('option241').style.display = 'none';
  }
  else {
   if (document.layers == false)
   {
    document.all.option240.style.display = 'none';
    document.all.option241.style.display = 'none';
   }
  }
 }
 else
 {
  if (document.getElementById)
  {
   document.getElementById('option240').style.display = 'none';
   document.getElementById('option241').style.display = '';
  }
  else {
   if (document.layers == false)
   {
    document.all.option240.style.display = 'none';
    document.all.option241.style.display = '';
   }
  }
 }
}
function addClick(obj)
{
 if (document.ipRange.name.value=="") {
  alert('<% multilang("2116" "LANG_DEVICE_NAME_CANNOT_BE_NULL"); %>');
  document.ipRange.name.focus();
  return false;
 }
 if (checkString(document.ipRange.name.value) == 0) {
  alert('<% multilang("2117" "LANG_INVALID_DEVICE_NAME"); %>');
  document.ipRange.name.focus();
  return false;
 }
 if (checkPrintableString(document.ipRange.Opt60.value) == 0) {
  alert('<% multilang("2118" "LANG_INVALID_OPTION60_STRING"); %>');
  document.ipRange.Opt60.focus();
  return false;
 }
 if (checkPrintableString(document.ipRange.OptStr.value) == 0) {
  alert('<% multilang("2119" "LANG_INVALID_OPTION_STRING"); %>');
  document.ipRange.OptStr.focus();
  return false;
 }
 if (!checkHostIP(document.ipRange.sIp, 1)) {
  document.ipRange.sIp.focus();
  return false;
 }
 if (!checkHostIP(document.ipRange.dIp, 1)) {
  document.ipRange.dIp.focus();
  return false;
 }
 if (document.ipRange.Opt60.value=="") {
  alert('<% multilang("2120" "LANG_OPTION60_CANNOT_BE_NULL"); %>');
  document.ipRange.Opt60.focus();
  return false;
 }
 if ( !checkInputIP(document.ipRange.sIp.value ) ) {
  alert('<% multilang("2121" "LANG_INVALID_SOURCE_RANGE_OF_IP_ADDRESS_IT_SHOULD_BE_IN_IP_POOL_RANGE"); %>');
  document.ipRange.sIp.focus();
  return false;
 }
 if ( !checkInputIP(document.ipRange.dIp.value ) ) {
  alert('<% multilang("2122" "LANG_INVALID_DESTINATION_RANGE_OF_IP_ADDRESS_IT_SHOULD_BE_IN_IP_POOL_RANGE"); %>');
  document.ipRange.dIp.focus();
  return false;
 }
 if(document.ipRange.dhcpDeviceType.selectedIndex==3) {
  if (document.ipRange.stbdns1.value == "") {
   alert('<% multilang("2123" "LANG_ENTER_STBS_DNS_VALUE"); %>');
   document.ipRange.stbdns1.focus();
   return false;
  }
  if (!checkIP(document.ipRange.stbdns1)) {
   document.ipRange.stbdns1.focus();
   return false;
  }
  if (document.ipRange.stbdns2.value != "") {
   if (!checkIP(document.ipRange.stbdns2)) {
    document.ipRange.stbdns2.focus();
    return false;
   }
  }
  if (document.ipRange.opchaddr.value == "") {
   alert('<% multilang("2124" "LANG_ENTER_STBS_OPCH_ADDRESS_VALUE"); %>');
   document.ipRange.opchaddr.focus();
   return false;
  }
  if (!checkIP(document.ipRange.opchaddr)) {
   document.ipRange.opchaddr.focus();
   return false;
  }
  if (document.ipRange.opchport.value == "") {
   alert('<% multilang("2125" "LANG_ENTER_STBS_OPCH_PORT_VALUE"); %>');
   document.ipRange.opchport.focus();
   return false;
  }
  if ( !checkDigitRange(document.ipRange.opchport.value,1,1,65535) ) {
   alert('<% multilang("2126" "LANG_INVALID_OPCH_PORT_IT_SHOULD_BE_1_65535"); %>');
   document.ipRange.opchport.focus();
   return false;
  }
 }
 else if(document.ipRange.dhcpDeviceType.selectedIndex!=5)
 {
  if(document.ipRange.OptStr.value == "") {
   alert('<% multilang("2127" "LANG_ENTER_OPTION_STRING_VALUE"); %>');
   document.ipRange.OptStr.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function delClick()
{
 document.forms[0].del.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("4" "LANG_DEVICE"); %> <% multilang("753" "LANG_IP_RANGE"); %><% multilang("1154" "LANG_TABLE_2"); %></p>
 <p class="intro_content"> <% multilang("842" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_IP_ADDRESS_RANGE_BASED_ON_DEVICE_TYPE"); %></p>
</div>
<form action=/boaform/formIpRange method=POST name="ipRange">
 <input type="hidden" name="lan_ip" value=<% getInfo("dhcplan-ip"); %>>
 <input type="hidden" name="lan_mask" value=<% getInfo("dhcplan-subnet"); %>>
 <input type="hidden" name="lan_dhcpRangeStart" value=<% getInfo("lan-dhcpRangeStart"); %>>
 <input type="hidden" name="lan_dhcpRangeEnd" value=<% getInfo("lan-dhcpRangeEnd"); %>>
 <input type="hidden" name="lan_dhcpSubnetMask" value=<% getInfo("lan-dhcpSubnetMask"); %>>
 <div class="data_common data_common_notitle">
  <table>
   <tr>
    <th width=30%><% multilang("4" "LANG_DEVICE"); %><% multilang("701" "LANG_NAME"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="name" size="20" maxlength="20"></td>
   </tr>
   <tr>
    <th><% multilang("843" "LANG_START_ADDRESS"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="sIp" size="20" maxlength="15"></td>
   </tr>
   <tr>
    <th><% multilang("844" "LANG_END_ADDRESS"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="dIp" size="20" maxlength="15"></td>
   </tr>
   <tr>
    <th><% multilang("359" "LANG_GATEWAY_ADDRESS"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="gwIp" size="20" maxlength="15"></td>
   </tr>
   <tr>
    <th><% multilang("845" "LANG_OPTION60"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="Opt60" size="20" maxlength="100"></td>
   </tr>
   <!--<tr>
   <td>STB:&nbsp;&nbsp;</td>
   <td><input type="checkbox" name="isSTB" value="ON"></td>
   </tr> -->
   <tr>
    <th width=30%><% multilang("846" "LANG_DEVICE_TYPE"); %>:&nbsp;&nbsp;</th>
    <td><select size="1" name="dhcpDeviceType" onChange="deviceTypeSelect()">
     <option selected value=0><% multilang("847" "LANG_PC"); %></option>
     <option value=1><% multilang("848" "LANG_CAMERA"); %></option>
     <option value=2><% multilang("849" "LANG_HGW"); %></option>
     <option value=3><% multilang("850" "LANG_STB"); %></option>
     <option value=4><% multilang("851" "LANG_PHONE"); %></option>
     <option value=100><% multilang("852" "LANG_UNKNOWN"); %></option></select>
    </td>
   </tr>
  </table>
  <table id="option241" style="display:">
   <tr>
    <th width=30%><% multilang("853" "LANG_RESERVED_OPTION"); %>:&nbsp;&nbsp;</th>
    <td><select size="1" name="reservedOption">
     <option selected value=241>Option 241</option>
     <option value=242>Option 242</option>
     <option value=243>Option 243</option>
     <option value=244>Option 244</option>
     <option value=245>Option 245</option></select>
    </td>
   </tr>
   <tr>
    <th><% multilang("854" "LANG_OPTION_STRING"); %></th>
    <td><input type="text" name="OptStr" size="20" maxlength="100"></td>
   </tr>
  </table>
  <table id="option240" style="display:none">
   <tr>
    <th width=30%><% multilang("853" "LANG_RESERVED_OPTION"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="reservedOption240" size="20" maxlength="20" value="Option 240" readonly></td>
   </tr>
   <tr>
    <th><% multilang("854" "LANG_OPTION_STRING"); %>:&nbsp;&nbsp;</th>
    <td><input type="text" name="OptStr240" size="20" maxlength="100"></td>
   </tr>
   <tr>
    <th><% multilang("855" "LANG_DNS1"); %>:</th>
    <td><input type="text" name="stbdns1" value=<% getInfo("stb-dns1"); %>></td>
   </tr>
   <tr>
    <th><% multilang("856" "LANG_DNS2"); %>:</th>
    <td><input type="text" name="stbdns2" value=<% getInfo("stb-dns2"); %>></td>
   </tr>
  </table>
 </div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="add" onClick="return addClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("308" "LANG_DELETE"); %>" name="del" onClick="return delClick()">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("331" "LANG_MODIFY"); %>" name="mod" onClick="return addClick(this)">&nbsp;&nbsp
 <input type="hidden" value="/devicetbl.asp" name="submit-url">
 <input class="link_bg" type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("4" "LANG_DEVICE"); %> <% multilang("753" "LANG_IP_RANGE"); %><% multilang("1154" "LANG_TABLE_2"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <% showDeviceIpTable(); %>
  </table>
 </div>
</div>
<input type="hidden" name="postSecurityFlag" value="">
<script>
</script>
</form>
<br><br>
</body>
</html>

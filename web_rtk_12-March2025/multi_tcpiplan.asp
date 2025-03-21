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
function lanIntfChange()
{
 var sel = document.forms[0].bridgeName;
 var o = sel.options[sel.selectedIndex];
 var lan = lanIntfArray[parseInt(o.value)];
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
<% lanScript(); %>
</SCRIPT>
</head>
<BODY onLoad="on_init();">
 <div class="intro_main ">
  <p class="intro_title"><% multilang("116" "LANG_LAN_INTERFACE_SETTINGS"); %></p>
  <p class="intro_content"><% multilang("117" "LANG_PAGE_DESC_CONFIG_DEVICE_LAN_INTERFACE"); %></p>
 </div>
 <form action=/boaform/formMultiTcpipLanSetup method=POST name="tcpip">
  <div class="data_common data_common_notitle">
   <table>
    <input type=hidden name="wlanDisabled" value=<% wlanStatus(); %>>
    <tr id="intfGrpSel">
      <th width="30%"><% multilang("1290" "LANG_INTERFACE_GROUPING"); %>:</th>
      <td width="70%"><select name="bridgeName" id="bridgeName"></select></td>
    </tr>
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
  <div class="btn_ctl">
   <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()" class="link_bg">&nbsp;&nbsp;
   <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
   <input type="hidden" value="/multi_tcpiplan.asp" name="submit-url">
   <input type="hidden" name="postSecurityFlag" value="">
  </div>
  <script>
  <% initPage("lan"); %>
  updateState();
  </script>
 </form>
<br><br>
</body>
</html>

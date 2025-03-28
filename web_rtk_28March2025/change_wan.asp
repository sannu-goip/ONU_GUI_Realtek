<%SendWebHeadStr(); %>
<title><% getWanIfDisplay(); %> <% multilang("11" "LANG_WAN"); %></title>
<SCRIPT>
  function saveChanges()
  {
   document.forms[0].save.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
  </SCRIPT>
<script type="text/javascript" src="base64_code.js"></script>

<script language="javascript">
var initConnectMode;
var pppConnectStatus=0;
var dgwstatus;
var gtwy;
var interfaceInfo = '';
var gtwyIfc ='';
var gwInterface=0;
var ipver=1;
var curlink = null;
var ctype = 4;
var cgi = new Object();
var links = new Array();
var adminAccount="<% checkWrite("isNormalUser"); %>";
var fixdns="<% checkWrite("fixdns"); %>";
var isAHMNormalUser = "<% checkWrite("isAHMNormalUser"); %>"
var isSPVersion = "<% checkWrite("isSPVersion"); %>"
var isAHMVersion = "<% checkWrite("isAHMVersion"); %>"
var isJDMVersion = "<% checkWrite("isJDMVersion"); %>"
var isTriPlayVersion = "<% checkWrite("isTriPlayVersion"); %>"
var isRedinetVersion = "<% checkWrite("isRedinetVersion"); %>"
var isAirLinkVersion = "<% checkWrite("isAirLinkVersion"); %>"
var isDigiWayVersion = "<% checkWrite("isDigiWayVersion"); %>"
var isGenevaVersion = "<% checkWrite("isGenevaVersion"); %>"
var isHBSVersion = "<% checkWrite("isHBSVersion"); %>"
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
with(links){<% initPageWaneth(); %>}
function show_password()
{
 var x= document.ethwan.pppPassword;
 if (x.type == "password") {
  x.type = "text";
 } else {
  x.type = "password";
 }
}
function disableForm()
{
 if(isSPVersion != "1" )
  disableTextField(document.ethwan.mtu);
 if(isSPVersion != "1" )
  disableTextField(document.ethwan.IpProtocolType);
 if( isDigiWayVersion != "1")
  disableTextField(document.ethwan.ctype);
 if(isAirLinkVersion == "1" )
  disableTextField(document.ethwan.adslConnectionMode);
}
function enableForm()
{
 enableTextField(document.ethwan.mtu);
 enableTextField(document.ethwan.IpProtocolType);
 enableTextField(document.ethwan.ctype);
 enableTextField(document.ethwan.adslConnectionMode);
}
function pppTypeSelection()
{
 if ( document.ethwan.pppConnectType.selectedIndex == 2) {
  document.ethwan.pppIdleTime.value = "";
  disableTextField(document.ethwan.pppIdleTime);
 }
 else {
  if (document.ethwan.pppConnectType.selectedIndex == 1) {
   enableTextField(document.ethwan.pppIdleTime);
  }
  else {
   document.ethwan.pppIdleTime.value = "";
   disableTextField(document.ethwan.pppIdleTime);
  }
 }
}
function checkDefaultGW() {
 with (document.forms[1]) {
  if (droute[0].checked == false && droute[1].checked == false && gwStr[0].checked == false && gwStr[1].checked == false) {
   alert('<% multilang("2015" "LANG_A_DEFAULT_GATEWAY_HAS_TO_BE_SELECTED"); %>');
   return false;
  }
  if (droute[1].checked == true) {
   if (gwStr[0].checked == true) {
    if (isValidIpAddress(dstGtwy.value, "Default Gateway IP Address") == false)
     return false;
   }
  }
 }
 return true;
}
function check_dhcp_opts()
{
 with (document.forms[1])
 {
  if(typeof enable_opt_60 !== 'undefined' &&enable_opt_60.checked)
  {
   if (opt60_val.value=="") {
    alert('<% multilang("2016" "LANG_VENDOR_ID_CANNOT_BE_EMPTY"); %>');
    opt60_val.focus();
    return false;
   }
   if (checkString(opt60_val.value) == 0) {
    alert('<% multilang("2017" "LANG_INVALID_VENDOR_ID"); %>');
    opt60_val.focus();
    return false;
   }
  }
  if(typeof enable_opt_61 !== 'undefined'&&enable_opt_61.checked)
  {
   if (iaid.value=="") {
    alert('<% multilang("2018" "LANG_IAID_CANNOT_BE_EMPTY"); %>');
    iaid.focus();
    return false;
   }
   if (checkDigit(iaid.value) == 0) {
    alert('<% multilang("2019" "LANG_IAID_SHOULD_BE_A_NUMBER"); %>');
    iaid.focus();
    return false;
   }
   if(duid_type[1].checked)
   {
    if (duid_ent_num.value=="") {
     alert('<% multilang("2020" "LANG_ENTERPRISE_NUMBER_CANNOT_BE_EMPTY"); %>');
     duid_ent_num.focus();
     return false;
    }
    if (checkDigit(duid_ent_num.value) == 0) {
     alert('<% multilang("2021" "LANG_ENTERPRISE_NUMBER_SHOULD_BE_A_NUMBER"); %>');
     duid_ent_num.focus();
     return false;
    }
    if (duid_id.value=="") {
     alert('<% multilang("2022" "LANG_DUID_IDENTIFIER_CANNOT_BE_EMPTY"); %>');
     duid_id.focus();
     return false;
    }
    if (checkString(duid_id.value) == 0) {
     alert('<% multilang("2023" "LANG_INVALID_DUID_IDENTIFIER"); %>');
     duid_id.focus();
     return false;
    }
   }
  }
  if(typeof enable_opt_125 !== 'undefined' &&enable_opt_125.checked)
  {
   if (manufacturer.value=="") {
    alert('<% multilang("2024" "LANG_MANUFACTURER_OUI_CANNOT_BE_EMPTY"); %>');
    manufacturer.focus();
    return false;
   }
   if (checkString(manufacturer.value) == 0) {
    alert('<% multilang("2025" "LANG_INVALID_MANUFACTURER_OUI"); %>');
    manufacturer.focus();
    return false;
   }
   if (product_class.value=="") {
    alert('<% multilang("2026" "LANG_PRODUCT_CLASS_CANNOT_BE_EMPTY"); %>');
    product_class.focus();
    return false;
   }
   if (checkString(product_class.value) == 0) {
    alert('<% multilang("2027" "LANG_INVALID_PRODUCT_CLASS"); %>');
    product_class.focus();
    return false;
   }
   if (model_name.value=="") {
    alert('<% multilang("2028" "LANG_MODEL_NAME_CANNOT_BE_EMPTY"); %>');
    model_name.focus();
    return false;
   }
   if (checkString(model_name.value) == 0) {
    alert('<% multilang("2029" "LANG_INVALID_MODEL_NAME"); %>');
    model_name.focus();
    return false;
   }
   if (serial_num.value=="") {
    alert('<% multilang("2030" "LANG_SERIAL_NUMBER_CANNOT_BE_EMPTY"); %>');
    serial_num.focus();
    return false;
   }
   if (checkString(serial_num.value) == 0) {
    alert('<% multilang("2030" "LANG_SERIAL_NUMBER_CANNOT_BE_EMPTY"); %>');
    serial_num.focus();
    return false;
   }
  }
 }
}
function isAllStar(str)
{
  for (var i=0; i<str.length; i++) {
   if ( str.charAt(i) != '*' ) {
   return false;
 }
  }
  return true;
}
function disableUsernamePassword()
{
 disableTextField(document.ethwan.pppUserName);
 if(!isAllStar(document.ethwan.pppPassword.value))
  disableTextField(document.ethwan.pppPassword);
}
function applyCheck(obj)
{
 var tmplst = "";
 var ptmap = 0;
 var pmchkpt = document.getElementById("tbl_pmap");
 if (pmchkpt) {
  with (document.forms[1]) {
   for (var i = 0; i < 14; i++) {
    if (!chkpt[i])
     break;
    if (chkpt[i].checked == true)
     ptmap |= (0x1 << i);
   }
   itfGroup.value = ptmap;
  }
 }
 if (checkDefaultGW()==false)
  return false;
 if (document.ethwan.vlan.checked == true) {
  if (document.ethwan.vid.value == "") {
   alert('<% multilang("2032" "LANG_VID_SHOULD_NOT_BE_EMPTY"); %>');
   document.ethwan.vid.focus();
   return false;
  }
  else if(document.ethwan.vid.value<0 ||document.ethwan.vid.value>4095) {
    alert("<% multilang("2316" "LANG_INCORRECT_VLAN_ID_SHOULE_BE_1_4095"); %>");
    return false;
  }
 }
 if ( document.ethwan.adslConnectionMode.value == 2 ) {
  if (document.ethwan.pppUserName.value=="") {
   alert('<% multilang("2033" "LANG_PPP_USER_NAME_CANNOT_BE_EMPTY"); %>');
   document.ethwan.pppUserName.focus();
   return false;
  }
  if (includeSpace(document.ethwan.pppUserName.value)) {
   alert('<% multilang("2034" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PPP_USER_NAME"); %>');
   document.ethwan.pppUserName.focus();
   return false;
  }
  document.ethwan.encodePppUserName.value=encode64(document.ethwan.pppUserName.value);
  if (document.ethwan.pppPassword.value=="") {
   alert('<% multilang("2036" "LANG_PPP_PASSWORD_CANNOT_BE_EMPTY"); %>');
   document.ethwan.pppPassword.focus();
   return false;
  }
  if(!isAllStar(document.ethwan.pppPassword.value)){
   if (includeSpace(document.ethwan.pppPassword.value)) {
    alert('<% multilang("2037" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PPP_PASSWORD"); %>');
    document.ethwan.pppPassword.focus();
    return false;
   }
   document.ethwan.encodePppPassword.value=encode64(document.ethwan.pppPassword.value);
  }
  if (document.ethwan.pppConnectType.selectedIndex == 1) {
   if (document.ethwan.pppIdleTime.value <= 0) {
    alert('<% multilang("2039" "LANG_INVALID_PPP_IDLE_TIME"); %>');
    document.ethwan.pppIdleTime.focus();
    return false;
   }
  }
 }
 if (document.ethwan.dns1.value !="")
 {
  if (!checkHostIP(document.ethwan.dns1, 1))
  {
   document.ethwan.dns1.focus();
   return false;
  }
 }
 if (document.ethwan.dns2.value !="")
 {
  if (!checkHostIP(document.ethwan.dns2, 1))
  {
   document.ethwan.dns2.focus();
   return false;
  }
 }
 if (<% checkWrite("IPv6Show"); %>) {
  if(document.ethwan.IpProtocolType.value & 1){
   if ( document.ethwan.adslConnectionMode.value == 1 ) {
    if (document.ethwan.ipMode[0].checked)
    {
     if ( document.ethwan.ipUnnum.disabled || ( !document.ethwan.ipUnnum.disabled && !document.ethwan.ipUnnum.checked )) {
      if (!checkHostIP(document.ethwan.ip, 1))
       return false;
      if (document.ethwan.remoteIp.visiblity == "hidden") {
       if (!checkHostIP(document.ethwan.remoteIp, 1))
       return false;
      }
      if (document.ethwan.adslConnectionMode.value == 1 && !checkNetmask(document.ethwan.netmask, 1))
       return false;
     }
    }
    else
    {
     if(check_dhcp_opts() == false)
      return false;
    }
   }
  }
 }
 if (<% checkWrite("IPv6Show"); %>) {
  if (document.ethwan.adslConnectionMode.value != 0
   && (document.ethwan.IpProtocolType.value & 2)) {
   if (document.ethwan.adslConnectionMode.value != 0 && document.ethwan.adslConnectionMode.value != 8) {
    if(document.ethwan.slacc.checked == false && document.ethwan.itfenable.checked == false && document.ethwan.staticIpv6.checked == false){
     alert('<% multilang("2040" "LANG_PLEASE_INPUT_IPV6_ADDRESS_OR_SELECT_DHCPV6_CLIENT_OR_CLICK_SLAAC"); %>');
     document.ethwan.slacc.focus();
     return false;
    }
   }
   if(document.ethwan.itfenable.checked) {
    if(document.ethwan.iana.checked == false && document.ethwan.iapd.checked == false ) {
     alert('<% multilang("2041" "LANG_PLEASE_SELECT_IANA_OR_IAPD"); %>');
     document.ethwan.iana.focus();
     return false;
    }
   }
   if(document.ethwan.staticIpv6.checked) {
    if(document.ethwan.Ipv6Addr.value == "" || document.ethwan.Ipv6PrefixLen.value == "") {
     alert('<% multilang("2042" "LANG_PLEASE_INPUT_IPV6_ADDRESS_AND_PREFIX_LENGTH"); %>');
     document.ethwan.Ipv6Addr.focus();
     return false;
    }
    if(document.ethwan.Ipv6Addr.value != ""){
     if (! isGlobalIpv6Address( document.ethwan.Ipv6Addr.value) ){
      alert('<% multilang("2043" "LANG_INVALID_IPV6_ADDRESS"); %>');
      document.ethwan.Ipv6Addr.focus();
      return false;
     }
     var prefixlen= getDigit(document.ethwan.Ipv6PrefixLen.value, 1);
     if (prefixlen > 128 || prefixlen <= 0) {
      alert('<% multilang("2044" "LANG_INVALID_IPV6_PREFIX_LENGTH"); %>');
      document.ethwan.Ipv6PrefixLen.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Gateway.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Gateway.value) ){
      alert('<% multilang("2045" "LANG_INVALID_IPV6_GATEWAY_ADDRESS"); %>');
      document.ethwan.Ipv6Gateway.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('<% multilang("2046" "LANG_INVALID_PRIMARY_IPV6_DNS_ADDRESS"); %>');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('<% multilang("2047" "LANG_INVALID_SECONDARY_IPV6_DNS_ADDRESS"); %>');
      document.ethwan.Ipv6Dns2.focus();
      return false;
     }
    }
   }
   else if ( document.ethwan.dnsV6Mode[1].checked ) {
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('<% multilang("2046" "LANG_INVALID_PRIMARY_IPV6_DNS_ADDRESS"); %>');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('<% multilang("2047" "LANG_INVALID_SECONDARY_IPV6_DNS_ADDRESS"); %>');
      document.ethwan.Ipv6Dns2.focus();
      return false;
     }
    }
   }
   else{
    document.ethwan.Ipv6Addr.value = "";
    document.ethwan.Ipv6PrefixLen.value = "";
    document.ethwan.Ipv6Gateway.value = "";
    document.ethwan.Ipv6Dns1.value = "";
    document.ethwan.Ipv6Dns2.value = "";
   }
   if (<% checkWrite("6rdShow"); %>) {
    if (document.ethwan.adslConnectionMode.value == 8)
    {
     if(document.ethwan.SixrdBRv4IP.value == ""){
      alert('<% multilang("2048" "LANG_INVALID_6RD_BOARD_ROUTER_V4IP_ADDRESS"); %>');
      document.ethwan.SixrdBRv4IP.focus();
      return false;
     }
     if(document.ethwan.SixrdIPv4MaskLen.value == ""){
      alert('<% multilang("2049" "LANG_INVALID_6RD_IPV4_MASK_LENGTH"); %>');
      document.ethwan.SixrdIPv4MaskLen.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefix.value == ""){
      alert('<% multilang("2050" "LANG_INVALID_6RD_PREFIX_ADDRESS"); %>');
      document.ethwan.SixrdPrefix.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefixLen.value == ""){
      alert('<% multilang("2051" "LANG_INVALID_6RD_PREFIX_LENGTH"); %>');
      document.ethwan.SixrdPrefixLen.focus();
      return false;
     }
    }
    else{
     document.ethwan.SixrdBRv4IP.value = "";
     document.ethwan.SixrdIPv4MaskLen.value = "";
     document.ethwan.SixrdPrefix.value = "";
     document.ethwan.SixrdPrefixLen.value = "";
    }
   }
  }
 }
 if(document.ethwan.lkname.value != "new") tmplst = curlink.name;
 document.ethwan.lst.value = tmplst;
 disableUsernamePassword();
 enableForm();
 obj.isclick = 1;
 postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
 setload();
 return true;
}
function deleteCheck(obj)
{
 var tmplst = "";
 if ( document.ethwan.lkname.value == "new" )
 {
  alert('<% multilang("2055" "LANG_NO_LINK_SELECTED"); %>');
  return false;
 }
 tmplst = curlink.name;
 document.ethwan.lst.value = tmplst;
 disableUsernamePassword();
 obj.isclick = 1;
 postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
 setload();
 return true;
}
function setPPPConnected()
{
 pppConnectStatus = 1;
}
function dnsModeClicked()
{
 if ( document.ethwan.dnsMode[0].checked )
 {
  disableTextField(document.ethwan.dns1);
  disableTextField(document.ethwan.dns2);
 }
 if ( document.ethwan.dnsMode[1].checked )
 {
  if(fixdns == '1')
  {
   document.ethwan.dns1.value = "139.5.198.254";
   document.ethwan.dns2.value = "139.5.199.54";
   disableTextField(document.ethwan.dns1);
   disableTextField(document.ethwan.dns2);
  }else{
   enableTextField(document.ethwan.dns1);
   enableTextField(document.ethwan.dns2);
  }
 }
}
function dnsModeV6Clicked()
{
 if ( document.ethwan.dnsV6Mode[0].checked )
 {
  disableTextField(document.ethwan.Ipv6Dns1);
  disableTextField(document.ethwan.Ipv6Dns2);
 }
 if ( document.ethwan.dnsV6Mode[1].checked )
 {
  enableTextField(document.ethwan.Ipv6Dns1);
  enableTextField(document.ethwan.Ipv6Dns2);
 }
}
function disableFixedIpInput()
{
 disableTextField(document.ethwan.ip);
 disableTextField(document.ethwan.remoteIp);
 disableTextField(document.ethwan.netmask);
 document.ethwan.dnsMode[0].disabled = false;
 document.ethwan.dnsMode[1].disabled = false;
 dnsModeClicked();
}
function enableFixedIpInput()
{
 enableTextField(document.ethwan.ip);
 enableTextField(document.ethwan.remoteIp);
 if (document.ethwan.adslConnectionMode.value == 4)
  disableTextField(document.ethwan.netmask);
 else
  enableTextField(document.ethwan.netmask);
 document.ethwan.dnsMode[0].disabled = true;
 document.ethwan.dnsMode[1].disabled = true;
 dnsModeClicked();
}
function disableDNSv6Input()
{
 document.ethwan.dnsV6Mode[0].disabled = false;
 document.ethwan.dnsV6Mode[1].disabled = false;
 dnsModeV6Clicked();
}
function enableDNSv6Input()
{
 document.ethwan.dnsV6Mode[0].disabled = true;
 document.ethwan.dnsV6Mode[1].disabled = true;
 dnsModeV6Clicked();
}
function ipTypeSelection(init)
{
 if ( document.ethwan.ipMode[0].checked ) {
  enableFixedIpInput();
  showDhcpOptSettings(0);
 } else {
  disableFixedIpInput();
  showDhcpOptSettings(1);
 }
 if (init == 0)
 {
  if ( document.ethwan.ipMode[0].checked )
   document.ethwan.dnsMode[1].checked = true;
  else
   document.ethwan.dnsMode[0].checked = true;
  dnsModeClicked();
 }
}
function enable_pppObj()
{
 enableTextField(document.ethwan.pppUserName);
 enableTextField(document.ethwan.pppPassword);
 enableTextField(document.ethwan.pppConnectType);
 document.ethwan.gwStr[0].disabled = false;
 document.ethwan.gwStr[1].disabled = false;
 enableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = false;
 pppTypeSelection();
 autoDGWclicked();
}
function pppSettingsEnable()
{
 document.getElementById('tbl_ppp').style.display='block';
 enable_pppObj();
}
function disable_pppObj()
{
 disableTextField(document.ethwan.pppUserName);
 disableTextField(document.ethwan.pppPassword);
 disableTextField(document.ethwan.pppIdleTime);
 disableTextField(document.ethwan.pppConnectType);
 document.ethwan.gwStr[0].disabled = true;
 document.ethwan.gwStr[1].disabled = true;
 disableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = true;
}
function pppSettingsDisable()
{
 document.getElementById('tbl_ppp').style.display='none';
 disable_pppObj();
}
function enable_ipObj()
{
 document.ethwan.ipMode[0].disabled = false;
 document.ethwan.ipMode[1].disabled = false;
 document.ethwan.gwStr[0].disabled = false;
 document.ethwan.gwStr[1].disabled = false;
 enableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = false;
 ipTypeSelection(1);
 autoDGWclicked();
}
function ipSettingsEnable()
{
 document.getElementById('tbl_ip').style.display='block';
 enable_ipObj();
}
function disable_ipObj()
{
 document.ethwan.ipMode[0].disabled = true;
 document.ethwan.ipMode[1].disabled = true;
 document.ethwan.gwStr[0].disabled = true;
 document.ethwan.gwStr[1].disabled = true;
 disableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = true;
 disableFixedIpInput();
}
function ipSettingsDisable()
{
 document.getElementById('tbl_ip').style.display='none';
 showDhcpOptSettings(0);
 disable_ipObj();
}
function showDuidType2(show)
{
 if(show == 1)
 {
  document.getElementById('duid_t2_ent').style.display = '';
  document.getElementById('duid_t2_id').style.display = '';
 }
 else
 {
  document.getElementById('duid_t2_ent').style.display = 'none';
  document.getElementById('duid_t2_id').style.display = 'none';
 }
}
function showDhcpOptSettings(show)
{
 var dhcp_opt = document.getElementById('tbl_dhcp_opt');
 if(dhcp_opt == null)
  return ;
 if(show == 1)
 {
  document.getElementById('tbl_dhcp_opt').style.display='block';
  if(document.ethwan.duid_type[1].checked == true)
   showDuidType2(1);
  else
   showDuidType2(0);
 }
 else
  document.getElementById('tbl_dhcp_opt').style.display='none';
}
function onSelectSvrList()
{
 var ctype_value = document.getElementById('ctype').value;
 if(ctype_value == '1' || ctype_value == '8' || ctype_value == '9')
  document.getElementById("div_pmap").style.display = "none";
 else
  document.getElementById("div_pmap").style.display = "";
}
function ipModeSelection()
{
 if (document.ethwan.ipUnnum.checked) {
  disable_pppObj();
  disable_ipObj();
  document.ethwan.gwStr[0].disabled = false;
  document.ethwan.gwStr[1].disabled = false;
  enableTextField(document.ethwan.dstGtwy);
  document.ethwan.wanIf.disabled = false;
 }
 else
  enable_ipObj();
}
function updateBrMode(isLinkChanged)
{
 var brmode_ops = document.getElementById('brmode');
 if(!brmode_ops)
  return ;
 if(!isLinkChanged)
 {
  document.ethwan.br.checked = false;
  brmode_ops.value = 0;
  brmode_ops.disabled = true;
 }
 if(document.ethwan.adslConnectionMode.value == 0)
 {
  document.getElementById('br_row').style.display = "none";
  brmode_ops.disabled = false;
 }
 else
 {
  document.getElementById('br_row').style.display = "";
 }
}
function brClicked()
{
 var brmode_ops = document.getElementById('brmode');
 if(!brmode_ops)
  return ;
 if(document.ethwan.br.checked)
  brmode_ops.disabled = false;
 else
  brmode_ops.disabled = true;
}
function updateCtypeAHM(isBridge)
{
 var ctype_select = document.getElementById('ctype');
 ctype_select.options.length=0;
 if(isAHMNormalUser == "1")
 {
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isBridge)
 {
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("INTERNET", "2");
  ctype_select.add(opt);
 }else{
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("TR069", "1");
  ctype_select.add(opt);
  opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  opt = new Option("VOICE_TR069", "9");
  ctype_select.add(opt);
 }
}
function updateCtype(isBridge)
{
 var ctype_select = document.getElementById('ctype');
 ctype_select.options.length=0;
 if(isTriPlayVersion == "1")
 {
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isRedinetVersion == "1")
 {
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
  return;
 }
 if(isHBSVersion == "1")
 {
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
  return;
 }
 if(isAHMNormalUser == "1")
 {
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isBridge)
 {
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("INTERNET", "2");
  ctype_select.add(opt);
 }else{
  if(isJDMVersion !="1")
  {
   var opt = new Option("OTHER", "4");
   ctype_select.add(opt);
   opt = new Option("TR069", "1");
   ctype_select.add(opt);
   opt = new Option("INTERNET", "2");
   ctype_select.add(opt);
  }
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  if(isJDMVersion !="1")
  {
   opt = new Option("VOICE", "8");
   ctype_select.add(opt);
   opt = new Option("VOICE_TR069", "9");
   ctype_select.add(opt);
   opt = new Option("VOICE_INTERNET", "10");
   ctype_select.add(opt);
  }
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
 }
}
function adslConnectionModeSelection(isLinkChanged)
{
 document.ethwan.naptEnabled.disabled = false;
 document.ethwan.igmpEnabled.disabled = false;
 document.ethwan.mldEnabled.disabled = false;
 document.ethwan.ipUnnum.disabled = true;
 document.ethwan.droute[0].disabled = false;
 document.ethwan.droute[1].disabled = false;
 if(!isLinkChanged)
  document.ethwan.mtu.value = 1500;
 if(!isLinkChanged){
  var mode = document.ethwan.adslConnectionMode.value;
  if(mode == '0')
   updateCtype(true);
  else
   updateCtype(false);
  if(isAHMVersion == "1" && isAHMNormalUser != "1")
  {
   if(mode == '0')
    updateCtypeAHM(true);
   else
    updateCtypeAHM(false);
  }
 }
 document.getElementById('tbl_ppp').style.display='none';
 document.getElementById('tbl_ip').style.display='none';
 if(document.getElementById('tbl_dhcp_opt') != null)
  document.getElementById('tbl_dhcp_opt').style.display='none';
 document.getElementById('6rdDiv').style.display='none';
 if (<% checkWrite("IPv6Show"); %>) {
  ipv6SettingsEnable();
  document.getElementById('tbprotocol').style.display="";
  document.ethwan.IpProtocolType.disabled = false;
 }else
  document.getElementById('tbprotocol').style.display="none";
 switch(document.ethwan.adslConnectionMode.value){
  case '0':
   document.getElementById('tbprotocol').style.display="none";
   document.getElementById('tbmtu').style.display='none';
   document.ethwan.naptEnabled.disabled = true;
   document.ethwan.igmpEnabled.disabled = true;
   document.ethwan.mldEnabled.disabled = true;
   document.ethwan.droute[0].disabled = true;
   document.ethwan.droute[1].disabled = true;
   pppSettingsDisable();
   ipSettingsDisable();
   if (<% checkWrite("IPv6Show"); %>) {
    ipv6SettingsDisable();
    document.getElementById('tbprotocol').style.display="none";
   }
   break;
  case '8':
   if (<% checkWrite("IPv6Show"); %> && <% checkWrite("6rdShow"); %>)
   {
    document.getElementById('tbmtu').style.display='';
    document.getElementById('6rdDiv').style.display='block';
    document.ethwan.droute[0].checked = false;
    document.ethwan.droute[1].checked = true;
    document.ethwan.IpProtocolType.value = 3;
    document.ethwan.slacc.checked = false;
    document.ethwan.staticIpv6.checked = false;
    document.ethwan.itfenable.checked = false;
    ipSettingsEnable();
    enableFixedIpInput();
    ipv6SettingsDisable();
    document.getElementById('tbprotocol').style.display="none";
   }
   break;
  case '1':
   document.getElementById('tbmtu').style.display='';
   pppSettingsDisable();
   if(!isLinkChanged)
   {
    document.ethwan.naptEnabled.checked = true;
    document.ethwan.ipMode[1].checked = true;
    document.ethwan.dnsMode[0].checked = true;
   }
   if (<% checkWrite("IPv6Show"); %>) {
    if(document.ethwan.IpProtocolType.value != 2)
     ipSettingsEnable();
   }
   else
    ipSettingsEnable();
   break;
  case '2':
   if(!isLinkChanged)
    document.ethwan.mtu.value = 1492;
   if (<% checkWrite("fix_servicename"); %>)
   {
    document.ethwan.serviceName.value = <% checkWrite("servicename"); %>;
    document.ethwan.acName.value = <% checkWrite("acName"); %>;
   }
   document.getElementById('tbmtu').style.display='';
   document.getElementById('tbl_ppp').style.display='block';
   ipSettingsDisable();
   pppSettingsEnable();
   if(!isLinkChanged)
    document.ethwan.naptEnabled.checked = true;
   break;
  default:
   pppSettingsDisable();
   ipSettingsEnable();
 }
 updateBrMode(isLinkChanged);
}
function naptClicked()
{
 if (document.ethwan.adslConnectionMode.value == 3) {
  if (document.ethwan.naptEnabled.checked == true) {
   document.ethwan.ipUnnum.checked = false;
   document.ethwan.ipUnnum.disabled = true;
  }
  else
   document.ethwan.ipUnnum.disabled = false;
  ipModeSelection();
 }
}
function vlanClicked()
{
 if (document.ethwan.vlan.checked)
 {
  document.getElementById('vid_tr').style.display = "";
  document.getElementById('cos_tr').style.display = "";
 }
 else {
  document.getElementById('vid_tr').style.display = "none";
  document.getElementById('cos_tr').style.display = "none";
 }
 if(isPRACTVersion == "1")
 {
  document.getElementById('vid_tr').style.display = "none";
  document.getElementById('cos_tr').style.display = "none";
 }
}
function hideGWInfo(hide) {
 var status = false;
 if (hide == 1)
  status = true;
 changeBlockState('gwInfo', status);
 if (hide == 0) {
  with (document.forms[1]) {
   if (dgwstatus == 255) {
    if (isValidIpAddress(gtwy) == true) {
     gwStr[0].checked = true;
     gwStr[1].checked = false;
     dstGtwy.value=gtwy;
     wanIf.disabled=true
    } else {
     gwStr[0].checked = false;
     gwStr[1].checked = true;
     dstGtwy.value = '';
    }
   }
   else if (dgwstatus != 239) {
     gwStr[1].checked = true;
     gwStr[0].checked = false;
     wanIf.disabled=false;
     wanIf.value=dgwstatus;
     dstGtwy.disabled=true;
   } else {
     gwStr[1].checked = false;
     gwStr[0].checked = true;
     wanIf.disabled=true;
     dstGtwy.disabled=false;
   }
  }
 }
}
function autoDGWclicked() {
 if (document.ethwan.droute[0].checked == true) {
  hideGWInfo(1);
 } else {
  hideGWInfo(0);
 }
}
function gwStrClick() {
 with (document.forms[1]) {
  if (gwStr[1].checked == true) {
   dstGtwy.disabled = true;
   wanIf.disabled = false;
  }
  else {
   dstGtwy.disabled = false;
   wanIf.disabled = true;
  }
       }
}
function dhcp6cEnable()
{
 if(document.ethwan.itfenable.checked)
  document.getElementById('dhcp6c_block').style.display="";
 else
  document.getElementById('dhcp6c_block').style.display="none";
}
function ipv6StaticUpdate()
{
 if(document.ethwan.staticIpv6.checked) {
  document.getElementById('secIPv6Div').style.display="";
  document.ethwan.dnsV6Mode[1].checked = true;
  enableDNSv6Input();
 } else {
  document.getElementById('secIPv6Div').style.display="none";
  document.ethwan.dnsV6Mode[0].checked = true;
  disableDNSv6Input();
 }
}
function ipv6StaticUpdateRefresh()
{
 if(document.ethwan.staticIpv6.checked) {
  document.getElementById('secIPv6Div').style.display="";
  enableDNSv6Input();
 } else {
  document.getElementById('secIPv6Div').style.display="none";
 }
}
function ipv6WanUpdate()
{
 ipv6StaticUpdateRefresh();
 dhcp6cEnable();
}
function ipv6SettingsDisable()
{
 document.getElementById('tbipv6wan').style.display="none";
 document.getElementById('secIPv6Div').style.display="none";
 document.getElementById('dhcp6c_ctrlblock').style.display="none";
 document.getElementById('IPv6DnsDiv').style.display="none";
 document.getElementById('DSLiteDiv').style.display="none";
}
function ipv6SettingsEnable()
{
 if(document.ethwan.IpProtocolType.value != 1){
  document.getElementById('tbipv6wan').style.display="";
  document.getElementById('dhcp6c_ctrlblock').style.display="block";
  document.getElementById('IPv6DnsDiv').style.display="";
  if (document.ethwan.IpProtocolType.value == 2) {
   document.getElementById('DSLiteDiv').style.display="";
   dsliteSettingChange();
  }
  else
   document.getElementById('DSLiteDiv').style.display="none";
  ipv6WanUpdate();
   }
}
function dsliteSettingChange()
{
 with ( document.forms[1] )
 {
  if(dslite_enable.checked == true){
   if (adslConnectionMode.value == 2) {
    if(mtu.value > 1452)
     mtu.value = 1452;
   }
   else {
    if(mtu.value > 1460)
     mtu.value = 1460;
   }
   dslite_mode_div.style.display = '';
   dsliteAftrModeChange();
  }
  else{
   dslite_mode_div.style.display = 'none';
   dslite_aftr_hostname_div.style.display = 'none';
  }
 }
}
function dsliteAftrModeChange()
{
 with ( document.forms[1] )
 {
  var dslitemode =dslite_aftr_mode.value;
  dslite_aftr_hostname_div.style.display = 'none';
  switch(dslitemode){
   case '0':
     break;
   case '1':
     dslite_aftr_hostname_div.style.display = '';
     if(dslite_aftr_hostname.value == "::")
      dslite_aftr_hostname.value ="";
     break;
  }
 }
}
function protocolChange()
{
 ipver = document.ethwan.IpProtocolType.value;
 if(document.ethwan.IpProtocolType.value == 1){
  if( document.ethwan.adslConnectionMode.value ==1 ||
   document.ethwan.adslConnectionMode.value ==4 ||
   document.ethwan.adslConnectionMode.value ==5)
   ipSettingsEnable();
   ipv6SettingsDisable();
 }else{
  if(document.ethwan.IpProtocolType.value == 2){
   ipSettingsDisable();
  }else{
   if( document.ethwan.adslConnectionMode.value ==1 ||
    document.ethwan.adslConnectionMode.value ==4 ||
    document.ethwan.adslConnectionMode.value ==5)
    ipSettingsEnable();
  }
  ipv6SettingsEnable();
 }
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
}
function on_linkchange(itlk)
{
 var pmchkpt = document.getElementById("tbl_pmap");
 with ( document.forms[1] )
 {
  if(itlk == null)
  {
   adslConnectionMode.value = pppConnectType.value = 0;
   if(isSPVersion == "1" || isJDMVersion == "1" || isTriPlayVersion == "1" || isAirLinkVersion == "1")
    adslConnectionMode.value = 1;
   if(isAHMNormalUser == "1" || isSPVersion == "1" || isJDMVersion == "1" || isAirLinkVersion == "1")
    updateCtype(false);
   else
    updateCtype(true);
   if(typeof brmode != "undefined")
    brmode.value = 0;
   mtu.value = 1500;
   IpProtocolType.value = 1;
   if(isAHMNormalUser == "1" || isSPVersion == "1" || isTriPlayVersion == "1")
    ctype.value = 8;
   else if (isJDMVersion == "1" || isRedinetVersion == "1")
    ctype.value = 3;
   else
    ctype.value = 4;
   ipMode[0].checked = droute[0].checked = dnsMode[1].checked = dnsV6Mode[1].checked =true;
   chEnable[0].checked = true;
   if(typeof duid_type !== 'undefined')
    duid_type[1].checked = true;
   naptEnabled.checked = vlan.checked = qosEnabled.checked = igmpEnabled.checked = mldEnabled.checked = false;
   if(typeof enable_opt_60 !== 'undefined')
    enable_opt_60.checked = enable_opt_61.checked = enable_opt_125.checked = false;
   vprio.value = vid.value = "0";
   vid.value = "";
   ip.value = remoteIp.value = "0.0.0.0";
   netmask.value = "255.255.255.0";
   pppUserName.value = pppPassword.value = acName.value = serviceName.value = dns1.value = dns2.value = "";
   auth.value = 0;
   slacc.checked = true;
   staticIpv6.checked = false;
   Ipv6Addr.value = "";
   Ipv6PrefixLen.value = "";
   Ipv6Gateway.value = "";
   dnsV6Mode[0].checked = true;
   disableDNSv6Input();
   itfenable.checked = true;
   iana.checked = true;
   iapd.checked = false;
   document.getElementById('tbipv6wan').style.display="none";
   if(typeof document.ethwan.br != "undefined")
    document.ethwan.br.checked = false;
   if (pmchkpt)
    for (var i = 0; i < 14; i++) {
     if (!chkpt[i])
      break;
     chkpt[i].checked = false;
    }
  }
  else
  {
   mtu.value=itlk.mtu;
   adslConnectionMode.value = itlk.cmode;
   if(isAHMVersion == "1" || isSPVersion == "1" || isJDMVersion == "1" || isTriPlayVersion == "1" || isAirLinkVersion == "1" || isRedinetVersion == "1")
   {
    if(itlk.cmode == 2)
     document.getElementById("delete").style.display="none";
    else
     document.getElementById("delete").style.display="";
   }
   if(adslConnectionMode.value == '0')
    updateCtype(true);
   else
    updateCtype(false);
   ctype.value = itlk.applicationtype;
   if(document.ethwan.br)
   {
    document.ethwan.br.checked = false;
    if(itlk.brmode == 2)
    {
     brmode.value = 0;
     brmode.disabled = true;
    }
    else
    {
     if(itlk.cmode != 0)
      document.ethwan.br.checked = true;
     brmode.value = itlk.brmode;
     brmode.disabled = false;
    }
   }
   if (itlk.napt == 1)
    naptEnabled.checked = true;
   else
    naptEnabled.checked = false;
   if (itlk.enableIGMP == 1)
    igmpEnabled.checked = true;
   else
    igmpEnabled.checked = false;
   if (itlk.enableMLD == 1)
    mldEnabled.checked = true;
   else
    mldEnabled.checked = false;
   if (itlk.enableIpQos == 1)
    qosEnabled.checked = true;
   else
    qosEnabled.checked = false;
   mtu.value = itlk.mtu;
   if (itlk.vlan == 1)
   {
    vid_tr.style.display = "";
    cos_tr.style.display = "";
    vlan.checked = true;
    vid.value = itlk.vid;
    vprio.value = itlk.vprio;
   }
   else
   {
    vlan.checked = false;
    vid_tr.style.display = "none";
    cos_tr.style.display = "none";
   }
   if (itlk.dgw == 1)
    droute[1].checked = true;
   else
    droute[0].checked = true;
   if (itlk.enable == 1)
    chEnable[0].checked = true;
   else
    chEnable[1].checked = true;
   if(itlk.cmode != 0)
   {
    IpProtocolType.value = itlk.IpProtocol;
    if (IpProtocolType.value != 1)
    {
     if (itlk.AddrMode & 1)
      slacc.checked = true;
     else
      slacc.checked = false;
     if (itlk.AddrMode & 2)
     {
      staticIpv6.checked = true;
      Ipv6Addr.value = itlk.Ipv6Addr;
      Ipv6PrefixLen.value = itlk.Ipv6AddrPrefixLen;
      Ipv6Gateway.value = itlk.RemoteIpv6Addr;
     }
     else
     {
      staticIpv6.checked = false;
      Ipv6Addr.value = "";
      Ipv6PrefixLen.value = "";
      Ipv6Gateway.value = "";
     }
     if (itlk.dnsv6Mode == 1)
     {
      dnsV6Mode[0].checked = true;
      disableDNSv6Input();
     }
     else
     {
      dnsV6Mode[1].checked = true;
      dnsModeV6Clicked();
     }
     Ipv6Dns1.value = itlk.Ipv6Dns1;
     Ipv6Dns2.value = itlk.Ipv6Dns2;
     if (itlk.Ipv6Dhcp)
     {
      itfenable.checked = true;
      if (itlk.Ipv6DhcpRequest & 1)
       iana.checked = true;
      else
       iana.checked = false;
      if (itlk.Ipv6DhcpRequest & 2)
       iapd.checked = true;
      else
       iapd.checked = false;
     }
     else
      itfenable.checked = false;
     if (IpProtocolType.value == 2) {
      dslite_enable.checked = itlk.dslite_enable;
      dslite_aftr_mode.value = itlk.dslite_aftr_mode;
      dslite_aftr_hostname.value = itlk.dslite_aftr_hostname;
     }
     if (itlk.AddrMode & 8)
     {
      adslConnectionMode.value = 8;
      SixrdBRv4IP.value = itlk.SixrdBRv4IP;
      SixrdIPv4MaskLen.value = itlk.SixrdIPv4MaskLen;
      SixrdPrefix.value = itlk.SixrdPrefix;
      SixrdPrefixLen.value = itlk.SixrdPrefixLen;
      ip.value = itlk.ipAddr;
      remoteIp.value = itlk.remoteIpAddr;
      netmask.value = itlk.netMask;
     }
    }else{
     slacc.checked = true;
     staticIpv6.checked = false;
     Ipv6Addr.value = "";
     Ipv6PrefixLen.value = "";
     Ipv6Gateway.value = "";
     dnsV6Mode[0].checked = true;
     disableDNSv6Input();
     itfenable.checked = true;
     iana.checked = true;
     iapd.checked = false;
    }
    if (itlk.cmode == 1)
    {
     if (itlk.ipDhcp == 1)
     {
      ipMode[1].checked = true;
      ip.value = "";
      remoteIp.value = "";
      netmask.value = "";
     }
     else
     {
      ipMode[0].checked = true;
      ip.value = itlk.ipAddr;
      remoteIp.value = itlk.remoteIpAddr;
      netmask.value = itlk.netMask;
     }
     if (itlk.dnsMode == 1)
       dnsMode[0].checked = true;
      else
       dnsMode[1].checked = true;
     dns1.value = itlk.v4dns1;
     dns2.value = itlk.v4dns2;
    }
    else if (itlk.cmode == 2)
    {
     pppUserName.value = decode64(itlk.pppUsername);
     pppPassword.value = decode64(itlk.pppPassword);
     pppConnectType.value = itlk.pppCtype;
     pppIdleTime.value = itlk.pppIdleTime;
     auth.value = itlk.pppAuth;
     acName.value = itlk.pppACName;
     serviceName.value = itlk.pppServiceName;
    }
    protocolChange();
   }
   if(typeof enable_opt_60 !== 'undefined')
   {
    if(itlk.enable_opt_60)
     enable_opt_60.checked = true;
    opt60_val.value = itlk.opt60_val;
    if(itlk.enable_opt_61)
     enable_opt_61.checked = true;
    iaid.value = itlk.iaid;
    if(itlk.duid_type == 0)
     duid_type[0].checked = true;
    else
     duid_type[itlk.duid_type - 1].checked = true;
    duid_ent_num.value = itlk.duid_ent_num;
    duid_id.value = itlk.duid_id;
    if(itlk.enable_opt_125)
     enable_opt_125.checked = true;
    manufacturer.value = itlk.manufacturer;
    product_class.value = itlk.product_class;
    model_name.value = itlk.model_name;
    serial_num.value = itlk.serial_num;
   }
   if (pmchkpt)
    for (var i = 0; i < 14; i++) {
     if (!chkpt[i])
      break;
     chkpt[i].checked = (itlk.itfGroup & (0x1 << i));
    }
  }
 }
 ipver = document.ethwan.IpProtocolType.value;
 onSelectSvrList();
 vlanClicked();
 autoDGWclicked();
 adslConnectionModeSelection(true);
}
function on_ctrlupdate()
{
 with ( document.forms[1] )
 {
  if(lkname.value == "new")
  {
   curlink = null;
   on_linkchange(curlink);
  }
  else
  {
   curlink = links[lkname.value];
   on_linkchange(curlink);
  }
 }
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
}
function on_init()
{
 sji_docinit(document, cgi);
 with ( document.forms[1] )
 {
  for(var k in links)
  {
   var lk = links[k];
   lkname.options.add(new Option(lk.name, k));
  }
  if ((<% checkWrite("isNormalUser"); %> == 0 || isAHMNormalUser == "1") && isPRACTVersion != "1")
   lkname.options.add(new Option("new link", "new"));
  if(links.length > 0) lkname.selectedIndex = 0;
  on_ctrlupdate();
 }
 on_init_fwnat();
}

</script>
<script language="javascript">
  var nattype=<% checkWrite("nattype"); %>
  function on_init_fwnat()
  {
   if(nattype==0)
   {
    document.forms[2].nattype[2].checked = true;
   }
   else if(nattype==1)
   {
    document.forms[2].nattype[0].checked = true;
   }
   else
   {
    document.forms[2].nattype[1].checked = true;
   }

  }
  function on_submit()
  {
   postTableEncrypt(document.forms[2].postSecurityFlag, document.forms[2]);
   return true;
  }
  </script>
</head>
<BODY onLoad="on_init();">

  <div class="intro_main ">
    <p class="intro_title"><% multilang("11" "LANG_WAN"); %> <% multilang("134" "LANG_MODE"); %></p>
    <p class="intro_content"><% multilang("1156" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_WHICH_WAN_TO_USE_OF_YOUR_ROUTER"); %></p>
   </div>
   <form action="/boaform/admin/formWanPortChange" method="post" name="wanMode">
   <div class="data_common data_common_notitle">
    <table>
     <tr>
      <th width="25%"><% multilang("281" "LANG_WAN_MODE"); %>:</th>
      <td>
       <input type="radio" name=wanmode value=0><% multilang("1283" "LANG_GPON_WAN"); %>&nbsp;&nbsp
       <input type="radio" name=wanmode value=1><% multilang("1284" "LANG_EPON_WAN"); %>&nbsp;&nbsp
       <input type="radio" name=wanmode value=2><% multilang("12" "LANG_ETHERNET_WAN"); %>
      </td>
     </tr>
    </table>
   </div>
   <div class="btn_ctl">
    <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()">
    <input type="hidden" value="/change_wan.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <script>
    <% showWanPortInfo() %>
   </script>
   </form>

<div class="intro_main ">
 <p class="intro_title"><% getWanIfDisplay(); %> <% multilang("11" "LANG_WAN"); %></p>
 <p class="intro_content"> <% multilang("280" "LANG_PAGE_DESC_CONFIGURE_PARAMETERS"); %><% getWanIfDisplay(); %><% multilang("11" "LANG_WAN"); %></p>
</div>

<form action=/boaform/admin/formWanEth method=POST name="ethwan">
<!--<table border="0" cellspacing="4" width="800" <% WANConditions(); %>>
 <tr>
  <td>
   <b><% multilang("281" "LANG_WAN_MODE"); %>:</b>
   <span <% checkWrite("wan_mode_atm"); %>><input type="checkbox" value=1 name="wmchkbox">ATM</span>
   <span <% checkWrite("wan_mode_ethernet"); %>><input type="checkbox" value=2 name="wmchkbox">Ethernet</span>
   <span <% checkWrite("wan_mode_ptm"); %>><input type="checkbox" value=4 name="wmchkbox">PTM</span>
   <span <% checkWrite("wan_mode_bonding"); %>><input type="checkbox" value=8 name="wmchkbox">Bonding</span>&nbsp;&nbsp;&nbsp;&nbsp;
   <input type="hidden" name="wan_mode" value=0>
   <input type="submit" value="Submit" name="submitwan" onClick="return SubmitWANMode()">
  </td>
 </tr>
 <tr><td><hr size=1 noshade align=top></td></tr>
</table>-->
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th colspan=2><select name="lkname" onChange="on_ctrlupdate()" size="1"></th>
 </tr>
 <tr>
  <th><% multilang("291" "LANG_ADMIN_STATUS"); %>:</th>
  <td><input type=radio value=1 name="chEnable"><% multilang("248" "LANG_ENABLE"); %>
   <input type=radio value=0 name="chEnable" checked><% multilang("247" "LANG_DISABLE"); %>
  </td>
 </tr>
 <tr id="vlan_tr">
  <th width=30%><% multilang("283" "LANG_ENABLE_VLAN"); %>: </th>
  <td width=70%><input type="checkbox" name="vlan" size="2" maxlength="2" value="ON" onClick=vlanClicked()></td>
 </tr>
 <tr id="vid_tr">
  <th><% multilang("286" "LANG_VLAN"); %> ID:</th>
  <td><input type="text" name="vid" size="10" maxlength="15"></td>
 </tr>
 <tr id="cos_tr">
  <th><% multilang("312" "LANG_802_1P_MARK"); %> </th>
  <td><select style="WIDTH: 60px" name="vprio">
   <option value="0" > </option>
   <option value="1" > 0 </option>
   <option value="2" > 1 </option>
   <option value="3" > 2 </option>
   <option value="4" > 3 </option>
   <option value="5" > 4 </option>
   <option value="6" > 5 </option>
   <option value="7" > 6 </option>
   <option value="8" > 7 </option>
   </select>
  </td>
 </tr>
 <tr>
  <% ShowChannelMode("ethcmode"); %>
 </tr>
 <% ShowBridgeMode(); %>
 <tr>
  <% ShowNAPTSetting(); %>
 </tr>
 <tr>
  <th <% checkWrite("IPQoS"); %>>
  <% multilang("326" "LANG_ENABLE_QOS"); %>: </th>
  <td><input type="checkbox" name="qosEnabled" size="2" maxlength="2" value="ON" >
  </th>
 </tr>
 <% ShowConnectionType() %>
 <tr id=tbmtu>
  <th>MTU: </th>
  <td>
  <input type="text" name="mtu" size="10" maxlength="15">
  </td>
 </tr>
 <tr ID=dgwshow style="display:none">
  <th><% multilang("290" "LANG_DEFAULT_ROUTE"); %>:</th>
  <td>
   <input type=radio value=0 name="droute"><% multilang("247" "LANG_DISABLE"); %>
   <input type=radio value=1 name="droute" checked><% multilang("248" "LANG_ENABLE"); %>
  </td>
 </tr>
 <tr ID=IGMPProxy_show style="display:none">
  <% ShowIGMPSetting(); %>
 </tr>
 <tr>
  <% ShowMLDSetting(); %>
 </tr>
 <% ShowIpProtocolType(); %>
</table>
</div>
<% ShowPPPIPSettings(); %>
<% ShowDefaultGateway("p2p"); %>
<% Show6rdSetting(); %>
<% ShowIPV6Settings(); %>
<% ShowPortMapping(); %>
<div class="btn_ctl">
<input type="hidden" value="/change_wan.asp" name="submit-url">
<input type="hidden" id="lst" name="lst" value="">
<input type="hidden" name="encodePppUserName" value="">
<input type="hidden" name="encodePppPassword" value="">
<input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyCheck(this)" <% checkWrite("show_button"); %>>&nbsp; &nbsp; &nbsp; &nbsp;
<input class="link_bg" type="submit" value="<% multilang("308" "LANG_DELETE"); %>" name="delete" id="delete" onClick="return deleteCheck(this)" <% checkWrite("show_button"); %>>
<input type="hidden" name="itfGroup" value=0>
<input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 if (isAHMVersion == "0" && <% checkWrite("isNormalUser"); %> == 1)
  document.getElementById("delete").style.display="none";
 <% DisplayDGW(); %>
 var isConfigRTKRG = <% checkWrite("config_rtk_rg"); %>;
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
 if(isPRACTVersion == "1")
 {
  document.getElementById("vlan_tr").style.display = "none";
  document.getElementById("vid_tr").style.display = "none";
  document.getElementById("cos_tr").style.display = "none";
 }
</script>
</form>
</blockquote>
<div class="intro_main ">
  <p class="intro_title"><% multilang("2953" "LANG_NAT_TYPE"); %></p>
  <p class="intro_content"><% multilang("2954" "LANG_THIS_PAGE_IS_USED_TO_SET_NAT_TYPE"); %></p>
 </div>
<form action=/boaform/admin/formNatType method=post name="formNatType">
  <div class="data_common data_common_notitle">
   <table>
    <tr>
     <th width="40%">NAT Type:</th>
     <td width="60%">
      <input name="nattype" type=radio value="NAT1">NAT1&nbsp;&nbsp
      <input name="nattype" type=radio value="NAT2">NAT2&nbsp;&nbsp
      <input name="nattype" type=radio value="NAT4">NAT4 (default)
     </td>
    </tr>
   </table>
  </div>
  <div class="btn_ctl">
   <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit()">&nbsp;&nbsp;
   <input type="hidden" value="/change_wan.asp" name="submit-url">
   <input type="hidden" name="postSecurityFlag" value="">
  </div>
  </form>
</body>
</html>

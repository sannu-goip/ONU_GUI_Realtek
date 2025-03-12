<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<TITLE>WAN Mode</TITLE>
<script type="text/javascript" src="base64_code.js"></script>
<SCRIPT>
function saveChanges()
{
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
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
var adminAccount="0";
var fixdns="0";
var isAHMNormalUser = "0"
var isSPVersion = "0"
var isAHMVersion = "0"
var isJDMVersion = "0"
var isTriPlayVersion = "0"
var isRedinetVersion = "0"
var isAirLinkVersion = "0"
var isDigiWayVersion = "0"
var isGenevaVersion = "0"
var isHBSVersion = "0"
var isPRACTVersion = "0"
with(links){push(new it_nr("nas0_0" , new it("applicationtype", 2), new it("cmode", 1), new it("brmode", 2), new it("napt", 1), new it("enableIGMP", 0), new it("enableIpQos", 0), new it("dgw", 1), new it("vlan", 0), new it("vid", 0), new it("vprio", 0), new it("enable", 1), new it("mtu", 1500), new it("IpProtocol", 1), new it("ipDhcp", 0), new it("ipAddr", "10.215.1.58"), new it("remoteIpAddr", "10.215.1.1"), new it("netMask", "255.255.255.0"), new it("dnsMode", 0), new it("v4dns1", "8.8.8.8"), new it("v4dns2", "8.8.4.4"), new it("pppUsername", ""), new it("pppPassword", ""), new it("pppCtype", 0), new it("pppIdleTime", 0), new it("pppAuth", 0), new it("pppACName", ""), new it("pppServiceName", ""), new it("AddrMode", 0), new it("Ipv6Addr", ""), new it("RemoteIpv6Addr", ""), new it("RemoteIpv6EndPointAddr", ""), new it("Ipv6Dns1", ""), new it("Ipv6Dns2", ""), new it("Ipv6AddrPrefixLen", 0), new it("Ipv6Dhcp", 0), new it("Ipv6DhcpRequest", 0), new it("dnsv6Mode", 0), new it("dslite_enable", 0), new it("dslite_aftr_mode", 0), new it("dslite_aftr_hostname", ""), new it("itfGroup", 1), new it("SixrdIPv4MaskLen", 0), new it("SixrdPrefixLen", 0), new it("SixrdPrefix", ""), new it("SixrdBRv4IP", ""), new it("enableMLD", 0)));
push(new it_nr("ppp0_nas0_1" , new it("applicationtype", 2), new it("cmode", 2), new it("brmode", 2), new it("napt", 1), new it("enableIGMP", 0), new it("enableIpQos", 0), new it("dgw", 0), new it("vlan", 0), new it("vid", 0), new it("vprio", 0), new it("enable", 1), new it("mtu", 1492), new it("IpProtocol", 3), new it("ipDhcp", 0), new it("ipAddr", "0.0.0.0"), new it("remoteIpAddr", "0.0.0.0"), new it("netMask", "0.0.0.0"), new it("dnsMode", 0), new it("v4dns1", ""), new it("v4dns2", ""), new it("pppUsername", "c3lybzQ="), new it("pppPassword", "MTIzNDU2"), new it("pppCtype", 0), new it("pppIdleTime", 0), new it("pppAuth", 0), new it("pppACName", ""), new it("pppServiceName", ""), new it("AddrMode", 1), new it("Ipv6Addr", ""), new it("RemoteIpv6Addr", ""), new it("RemoteIpv6EndPointAddr", ""), new it("Ipv6Dns1", ""), new it("Ipv6Dns2", ""), new it("Ipv6AddrPrefixLen", 0), new it("Ipv6Dhcp", 1), new it("Ipv6DhcpRequest", 1), new it("dnsv6Mode", 1), new it("dslite_enable", 0), new it("dslite_aftr_mode", 0), new it("dslite_aftr_hostname", ""), new it("itfGroup", 0), new it("SixrdIPv4MaskLen", 0), new it("SixrdPrefixLen", 0), new it("SixrdPrefix", ""), new it("SixrdBRv4IP", ""), new it("enableMLD", 0)));
}
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
 with (document.forms[0]) {
  if (droute[0].checked == false && droute[1].checked == false && gwStr[0].checked == false && gwStr[1].checked == false) {
   alert('A default gateway has to be selected.');
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
 with (document.forms[0])
 {
  if(typeof enable_opt_60 !== 'undefined' &&enable_opt_60.checked)
  {
   if (opt60_val.value=="") {
    alert('Vendor ID cannot be empty!');
    opt60_val.focus();
    return false;
   }
   if (checkString(opt60_val.value) == 0) {
    alert('Invalid Vendor ID.');
    opt60_val.focus();
    return false;
   }
  }
  if(typeof enable_opt_61 !== 'undefined'&&enable_opt_61.checked)
  {
   if (iaid.value=="") {
    alert('IAID cannot be empty!');
    iaid.focus();
    return false;
   }
   if (checkDigit(iaid.value) == 0) {
    alert('IAID should be a number.');
    iaid.focus();
    return false;
   }
   if(duid_type[1].checked)
   {
    if (duid_ent_num.value=="") {
     alert('Enterprise number cannot be empty!');
     duid_ent_num.focus();
     return false;
    }
    if (checkDigit(duid_ent_num.value) == 0) {
     alert('Enterprise number should be a number.');
     duid_ent_num.focus();
     return false;
    }
    if (duid_id.value=="") {
     alert('DUID Identifier cannot be empty!');
     duid_id.focus();
     return false;
    }
    if (checkString(duid_id.value) == 0) {
     alert('Invalid DUID Identifier.');
     duid_id.focus();
     return false;
    }
   }
  }
  if(typeof enable_opt_125 !== 'undefined' &&enable_opt_125.checked)
  {
   if (manufacturer.value=="") {
    alert('Manufacturer OUI cannot be empty!');
    manufacturer.focus();
    return false;
   }
   if (checkString(manufacturer.value) == 0) {
    alert('Invalid Manufacturer OUI.');
    manufacturer.focus();
    return false;
   }
   if (product_class.value=="") {
    alert('Product Class cannot be empty!');
    product_class.focus();
    return false;
   }
   if (checkString(product_class.value) == 0) {
    alert('Invalid Product Class.');
    product_class.focus();
    return false;
   }
   if (model_name.value=="") {
    alert('Model Name cannot be empty!');
    model_name.focus();
    return false;
   }
   if (checkString(model_name.value) == 0) {
    alert('Invalid Model Name.');
    model_name.focus();
    return false;
   }
   if (serial_num.value=="") {
    alert('Serial Number cannot be empty!');
    serial_num.focus();
    return false;
   }
   if (checkString(serial_num.value) == 0) {
    alert('Serial Number cannot be empty!');
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
  with (document.forms[0]) {
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
   alert('VID should not be empty!');
   document.ethwan.vid.focus();
   return false;
  }
  else if(document.ethwan.vid.value<0 ||document.ethwan.vid.value>4095) {
    alert("Incorrect vlan id, shoule be 1~4095");
    return false;
  }
 }
 if ( document.ethwan.adslConnectionMode.value == 2 ) {
  if (document.ethwan.pppUserName.value=="") {
   alert('PPP user name cannot be empty!');
   document.ethwan.pppUserName.focus();
   return false;
  }
  if (includeSpace(document.ethwan.pppUserName.value)) {
   alert('Cannot accept space character in PPP user name.');
   document.ethwan.pppUserName.focus();
   return false;
  }
  document.ethwan.encodePppUserName.value=encode64(document.ethwan.pppUserName.value);
  if (document.ethwan.pppPassword.value=="") {
   alert('PPP password cannot be empty!');
   document.ethwan.pppPassword.focus();
   return false;
  }
  if(!isAllStar(document.ethwan.pppPassword.value)){
   if (includeSpace(document.ethwan.pppPassword.value)) {
    alert('Cannot accept space character in PPP password.');
    document.ethwan.pppPassword.focus();
    return false;
   }
   document.ethwan.encodePppPassword.value=encode64(document.ethwan.pppPassword.value);
  }
  if (document.ethwan.pppConnectType.selectedIndex == 1) {
   if (document.ethwan.pppIdleTime.value <= 0) {
    alert('Invalid PPP idle time.');
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
 if (1) {
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
 if (1) {
  if (document.ethwan.adslConnectionMode.value != 0
   && (document.ethwan.IpProtocolType.value & 2)) {
   if (document.ethwan.adslConnectionMode.value != 0 && document.ethwan.adslConnectionMode.value != 8) {
    if(document.ethwan.slacc.checked == false && document.ethwan.itfenable.checked == false && document.ethwan.staticIpv6.checked == false){
     alert('Please input ipv6 address or select DHCPv6 client or click SLAAC!');
     document.ethwan.slacc.focus();
     return false;
    }
   }
   if(document.ethwan.itfenable.checked) {
    if(document.ethwan.iana.checked == false && document.ethwan.iapd.checked == false ) {
     alert('Please select iana or iapd!');
     document.ethwan.iana.focus();
     return false;
    }
   }
   if(document.ethwan.staticIpv6.checked) {
    if(document.ethwan.Ipv6Addr.value == "" || document.ethwan.Ipv6PrefixLen.value == "") {
     alert('Please input ipv6 address and Prefix Length!');
     document.ethwan.Ipv6Addr.focus();
     return false;
    }
    if(document.ethwan.Ipv6Addr.value != ""){
     if (! isGlobalIpv6Address( document.ethwan.Ipv6Addr.value) ){
      alert('Invalid ipv6 address!');
      document.ethwan.Ipv6Addr.focus();
      return false;
     }
     var prefixlen= getDigit(document.ethwan.Ipv6PrefixLen.value, 1);
     if (prefixlen > 128 || prefixlen <= 0) {
      alert('Invalid ipv6 prefix length!');
      document.ethwan.Ipv6PrefixLen.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Gateway.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Gateway.value) ){
      alert('Invalid ipv6 gateway address!');
      document.ethwan.Ipv6Gateway.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('Invalid primary IPv6 DNS address!');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('Invalid secondary IPv6 DNS address!');
      document.ethwan.Ipv6Dns2.focus();
      return false;
     }
    }
   }
   else if ( document.ethwan.dnsV6Mode[1].checked ) {
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('Invalid primary IPv6 DNS address!');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('Invalid secondary IPv6 DNS address!');
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
   if (1) {
    if (document.ethwan.adslConnectionMode.value == 8)
    {
     if(document.ethwan.SixrdBRv4IP.value == ""){
      alert('Invalid 6rd Board Router v4IP address!');
      document.ethwan.SixrdBRv4IP.focus();
      return false;
     }
     if(document.ethwan.SixrdIPv4MaskLen.value == ""){
      alert('Invalid 6rd IPv4 Mask length address!');
      document.ethwan.SixrdIPv4MaskLen.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefix.value == ""){
      alert('Invalid 6rd Prefix address!');
      document.ethwan.SixrdPrefix.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefixLen.value == ""){
      alert('Invalid 6rd Prefix length address!');
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
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
 return true;
}
function deleteCheck(obj)
{
 var tmplst = "";
 if ( document.ethwan.lkname.value == "new" )
 {
  alert('no link selected!');
  return false;
 }
 tmplst = curlink.name;
 document.ethwan.lst.value = tmplst;
 disableUsernamePassword();
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
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
 if (1) {
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
   if (1) {
    ipv6SettingsDisable();
    document.getElementById('tbprotocol').style.display="none";
   }
   break;
  case '8':
   if (1 && 1)
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
   if (1) {
    if(document.ethwan.IpProtocolType.value != 2)
     ipSettingsEnable();
   }
   else
    ipSettingsEnable();
   break;
  case '2':
   if(!isLinkChanged)
    document.ethwan.mtu.value = 1492;
   if (0)
   {
    document.ethwan.serviceName.value = "";
    document.ethwan.acName.value = "";
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
  with (document.forms[0]) {
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
 with (document.forms[0]) {
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
 with ( document.forms[0] )
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
 with ( document.forms[0] )
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
 with ( document.forms[0] )
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
 with ( document.forms[0] )
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
 with ( document.forms[0] )
 {
  for(var k in links)
  {
   var lk = links[k];
   lkname.options.add(new Option(lk.name, k));
  }
  if ((0 == 0 || isAHMNormalUser == "1") && isPRACTVersion != "1")
   lkname.options.add(new Option("new link", "new"));
  if(links.length > 0) lkname.selectedIndex = 0;
  on_ctrlupdate();
 }
}
</script>
<script>
var nattype=0
function on_init()
{
 if(nattype==0)
 {
  document.forms[0].nattype[2].checked = true;
 }
 else if(nattype==1)
 {
  document.forms[0].nattype[0].checked = true;
 }
 else
 {
  document.forms[0].nattype[1].checked = true;
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
<style>
.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
.left-field{
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:-1px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:17px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:17px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<!-------------------------------------------------------------------------------------->
<body>
<INPUT id="Selected_Menu" type="hidden" 
            value="Net->WAN" name="Selected_Menu">
    <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left"
        vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact"
        vertical-effect="shrink" vnavigation-view="view1">
        <div class="scoop-overlay-box">
        </div>
        <div class="scoop-container">
            <div class="scoop-main-container">
                <div class="scoop-wrapper">
                    <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0"
                        sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('Net','WAN')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','WAN','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             <div class="scoop-inner-content">
								
							 						 
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> Internet Connection</h1>
									<div class="container-fluid">
										<hr class="margin_adjs">
										
                                       
																				<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">WAN Mode</h2>
         </div>
         </div>
         																<div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
 <p>This page is used to configure which WAN to use of your Router.When change the uplink mode , ONU will reboot.</p>
</div>
</div>
<br>
<form action="/boaform/admin/formWanPortChange" method="post" name="wanMode">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">WAN Mode:</label>
           
                <input type="radio" name="wanmode" value="0" class="right-field-radio"> GPON WAN
                <input type="radio" name="wanmode" value="1" class="right-field-radio"> EPON WAN
                <input type="radio" name="wanmode" value="2" class="right-field-radio"> Ethernet WAN
            </div>
        </div>
    </div>

										<hr class="margin_adjs">
  
<div class="btn_ctl">
    <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <input class="link_bg" type="submit" value="Apply Changes" name="save" onClick="return saveChanges()">
 <input type="hidden" value="/change_wan.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>
</div>
										<hr class="margin_adjs">


<script>
 document.wanMode.wanmode[2].checked = true;

</script>
</form>
												<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">PON WAN</h2>
         </div>
         </div>
		<div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
    <p> This page is used to configure the parameters for PON WAN</p>
   </div>
   </div>

   <form action=/boaform/admin/formWanEth method=POST name="ethwan">
   <!--<table border="0" cellspacing="4" width="800" style="display:none">
    <tr>
     <td>
      <b>WAN Mode:</b>
      <span style="display: none"><input type="checkbox" value=1 name="wmchkbox">ATM</span>
      <span ><input type="checkbox" value=2 name="wmchkbox">Ethernet</span>
      <span style="display: none"><input type="checkbox" value=4 name="wmchkbox">PTM</span>
      <span style="display: none"><input type="checkbox" value=8 name="wmchkbox">Bonding</span>&nbsp;&nbsp;&nbsp;&nbsp;
      <input type="hidden" name="wan_mode" value=0>
      <input type="submit" value="Submit" name="submitwan" onClick="return SubmitWANMode()">
     </td>
    </tr>
    <tr><td><hr size=1 noshade align=top></td></tr>
   </table>-->
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
  <select name="lkname" onChange="on_ctrlupdate()" size="1">
  </select>
   </div>
   </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Admin Status:</label>
            
                <input class="right-field-radio" type="radio" value="1" name="chEnable"> Enable
                <input class="right-field-radio" type="radio" value="0" name="chEnable" checked> Disable
            </div>
        </div>
   
    <div class="col-md-12 form-group" id="vlan_tr">
        <div class="custom-control">
            <label class="left-field">Enable VLAN:</label>
            <input type="checkbox" name="vlan" size="2" maxlength="2" value="ON" onClick="vlanClicked()" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group" id="vid_tr">
        <div class="custom-control">
            <label class="left-field">VLAN ID:</label>
            <input type="text" name="vid" size="10" maxlength="15" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group" id="cos_tr">
        <div class="custom-control">
            <label class="left-field">802.1p_Mark:</label>
            <select name="vprio" class="right-field">
                <option value="0"> </option>
                <option value="1"> 0 </option>
                <option value="2"> 1 </option>
                <option value="3"> 2 </option>
                <option value="4"> 3 </option>
                <option value="5"> 4 </option>
                <option value="6"> 5 </option>
                <option value="7"> 6 </option>
                <option value="8"> 7 </option>
            </select>
        </div>
    </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Channel Mode:</label>
            <select size="1" name="adslConnectionMode" onChange="adslConnectionModeSelection(false)" class="right-field">
                <option selected value="0">Bridged</option>
                <option value="1">IPoE</option>
                <option value="2">PPPoE</option>
                <option value="8">6rd</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable NAPT:</label>
            <input type="checkbox" name="naptEnabled" maxlength="2" value="ON" onClick="naptClicked()" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable QoS:</label>
            <input type="checkbox" name="qosEnabled" size="2" maxlength="2" value="ON" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Connection Type:</label>
            <select size="1" id="ctype" name="ctype" onchange="onSelectSvrList()" class="right-field">
                <option value="4">Other</option>
                <option value="1">TR069</option>
                <option value="2">INTERNET</option>
                <option value="3">INTERNET_TR069</option>
                <option value="8">VOICE</option>
                <option value="9">VOICE_TR069</option>
                <option value="10">VOICE_INTERNET</option>
                <option value="11">VOICE_INTERNET_TR069</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group" id="tbmtu">
        <div class="custom-control">
            <label class="left-field">MTU:</label>
            <input type="text" name="mtu" size="10" maxlength="15" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group" id="dgwshow" style="display:none">
        <div class="custom-control">
            <label class="left-field">Default Route:</label>
           
                <input type="radio" value="0" name="droute" class="right-field-radio"> Disable
                <input type="radio" value="1" name="droute" checked class="right-field-radio"> Enable
            </div>
        </div>
    
    <div class="col-md-12 form-group" id="IGMPProxy_show" style="display:none">
        <div class="custom-control">
            <label class="left-field">Enable IGMP-Proxy:</label>
            <input type="checkbox" name="igmpEnabled" size="2" maxlength="2" value="ON" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable MLD-Proxy:</label>
            <input type="checkbox" name="mldEnabled" size="2" maxlength="2" value="ON" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group" id="tbprotocol">
        <div class="custom-control">
            <label class="left-field">IP Protocol:</label>
            <select id="IpProtocolType" style="width: 130px" onChange="protocolChange()" name="IpProtocolType" class="right-field">
                <option value="1">IPv4</option>
                <option value="2">IPv6</option>
                <option value="3">IPv4/IPv6</option>
            </select>
        </div>
    </div>
</div>

 
   <div id=tbl_ppp class="column">
    
      <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">PPP Settings:</h2>
     </div>
    </div>
   <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">UserName:</label>
            <input type="text" name="pppUserName" size="16" maxlength="63" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Password:</label>
            <input type="password" name="pppPassword" size="10" maxlength="29" class="right-field">
            <input type="checkbox" onClick="show_password()" class="right-field-checkbox"> Show Password
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Type:</label>
            <select size="1" name="pppConnectType" onChange="pppTypeSelection()" class="right-field">
                <option selected value="0">Continuous</option>
                <option value="1">Connect on Demand</option>
                <option value="2">Manual</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Idle Time (sec):</label>
            <input type="text" name="pppIdleTime" size="10" maxlength="10" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Authentication Method:</label>
            <select size="1" name="auth" class="right-field">
                <option selected value="0">AUTO</option>
                <option value="1">PAP</option>
                <option value="2">CHAP</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">AC-Name:</label>
            <input type="text" name="acName" size="16" maxlength="30" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Service-Name:</label>
            <input type="text" name="serviceName" size="10" maxlength="30" class="right-field">
        </div>
    </div>
</div>
</div>

<div id="tbl_ip" class="column">
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">WAN IP Settings:</h2>
      </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Type:</label>
                <div class="right-field">
                    <input type="radio" value="0" name="ipMode" checked onClick="ipTypeSelection(0)" class="right-field-radio"> Fixed IP
                    <input type="radio" value="1" name="ipMode" onClick="ipTypeSelection(0)" class="right-field-radio"> DHCP
                </div>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Local IP Address:</label>
                <input type="text" name="ip" size="10" maxlength="15" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Remote IP Address:</label>
                <input type="text" name="remoteIp" size="10" maxlength="15" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Subnet Mask:</label>
                <input type="text" name="netmask" size="10" maxlength="15" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">IP Unnumbered:</label>
                <input type="checkbox" name="ipUnnum" size="2" maxlength="2" value="ON" onClick="ipModeSelection()" class="right-field-checkbox">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Request DNS:</label>
                <div class="right-field">
                    <input type="radio" value="1" name="dnsMode" onClick="dnsModeClicked()" class="right-field-radio"> Enable
                    <input type="radio" value="0" name="dnsMode" checked onClick="dnsModeClicked()" class="right-field-radio"> Disable
                </div>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Primary DNS Server:</label>
                <input type="text" name="dns1" size="18" maxlength="15" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Secondary DNS Server:</label>
                <input type="text" name="dns2" size="18" maxlength="15" class="right-field">
            </div>
        </div>
    </div>
</div>

<div id="gwInfo">
    <input type="hidden" name="gwStr">
    <div id="id_dfltgwy">
        <input type="hidden" name="dstGtwy">
    </div>
    <input type="hidden" name="gwStr">
    <div id="id_wanIf">
        <input type="hidden" name="wanIf">
    </div>
</div>

<div id="6rdDiv" style="display:none" class="column">
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">6rd Config:</h2>
        </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Board Router v4 Address:</label>
                <input id="SixrdBRv4IP" maxLength="39" size="36" name="SixrdBRv4IP" style="width:150px" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">6rd IPv4 Mask Len:</label>
                <input id="SixrdIPv4MaskLen" maxLength="39" size="36" name="SixrdIPv4MaskLen" style="width:150px" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">6rd Prefix (EX:"2001:db8::"):</label>
                <input id="SixrdPrefix" maxLength="39" size="36" name="SixrdPrefix" style="width:150px" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">6rd Prefix length:</label>
                <input id="SixrdPrefixLen" maxLength="39" size="36" name="SixrdPrefixLen" style="width:150px" class="right-field">
            </div>
        </div>
    </div>
</div>
   <div id=IPV6_wan_setting style="display:block" class="column">
   <div id="tbipv6wan">
   <div class="column_title">
     <div class="column_title_left"></div>
      <p>IPv6 WAN Setting:</p>
     <div class="column_title_right"></div>
    </div>
   <div class="data_common">
   <table>
       <tr id=TrIpv6AddrType>
           <th width=30%>Address Mode:</th>
           <td width=70%>
               <input type="checkbox" value="ON" name="slacc" id="send3">Slaac</b>
               <input type="checkbox" value="ON" name="staticIpv6" id="send4" onclick="ipv6StaticUpdate()">Static</b>
           </td>
       </tr>
   </table>
   <table id=secIPv6Div style="display:none">
       <tr id=TrIpv6Addr>
           <th width=30%>IPv6 Address:</th>
           <td width=70%><input  id=Ipv6Addr maxLength=39 size=36 name=Ipv6Addr>
           /
           <input id=Ipv6PrefixLen maxLength=3 size=3 name=Ipv6PrefixLen>
           </td>
       </tr>
       <tr id=TrIpv6Gateway>
           <th>IPv6 Gateway:</th>
           <td><input  id=Ipv6Gateway  maxLength=39 size=36 name=Ipv6Gateway></td>
       </tr>
   </table>
   <div  id="dhcp6c_ctrlblock"  style="display:block">
   <table id="tbdhcpv6">
       <tr width=30%><th>Enable DHCPv6 Client:</th>
       <td width=70%><input type="checkbox" value="ON" name="itfenable" id="itfenable" onclick="dhcp6cEnable()" ></td>
       </tr>
   <tr id="dhcp6c_block"  style="display:none">
   <th>Request Options:</th>
   <td>
   <input type="checkbox" value="ON" name="iana" id="send1">Request Address
   <input type="checkbox" value="ON" name="iapd" id="send2">Request Prefix
   </td>
   </tr>
   </table>
   <table id=IPv6DnsDiv style="display:none">
       <tr>
           <th width=30%>Request DNS:</th>
           <td width=70%>
               <input type="radio" value="1" name="dnsV6Mode" onClick='dnsModeV6Clicked()'>Enable
               <input type="radio" value="0" name="dnsV6Mode" checked onClick='dnsModeV6Clicked()'>Disable
           </td>
       </tr>
       <tr>
           <th>Primary IPv6 DNS:</th>
           <td><input  maxLength=39 size=36 name=Ipv6Dns1></td>
       </tr>
       <tr>
           <th>Secondary IPv6 DNS:</th>
           <td><input  maxLength=39 size=36 name=Ipv6Dns2></td>
       </tr>
   </table>
   <table id=DSLiteDiv style="display:none">
       <tr><th width=30%>DS-Lite:</th>
           <td width=70%> <input type=checkbox value=ON name=dslite_enable id=dslite_enable onClick=dsliteSettingChange()></td>
       </tr>
       <tr id="dslite_mode_div" style="display:none">
           <th>AFTR address mode</th>
           <td><select name="dslite_aftr_mode"  onChange=dsliteAftrModeChange()>
               <option value=0>DHCPv6</option>
               <option value=1>static</option>
               </select></td> 
       </tr>
       <tr id="dslite_aftr_hostname_div" style="display:none">
           <th>AFTR address:</th>
           <td><input type=text name="dslite_aftr_hostname" size=64 maxlength=64></td>
       </tr>
   </table>
   </div>
   </div>
   </div>
   </div>
   
   <div id=div_pmap class="column">
    <div class="column_title">
     <div class="column_title_left"></div>
      <p>Port Mapping:</p>
     <div class="column_title_right"></div>
    </div>
   <div  class="data_common">
   <table id="tbl_pmap">
   <tr nowrap><tr nowrap><td style="display:none"><input type=checkbox name=chkpt>LAN_1</td><td><input type=checkbox name=chkpt>LAN_2</td>
   </tr>
   <input type=hidden name=chkpt>
   <input type=hidden name=chkpt>
   <tr><td><input type=checkbox name=chkpt>SSID1(5G)</td>
   <td><input type=checkbox name=chkpt>SSID2</td>
   </tr>
   <tr><td><input type=checkbox name=chkpt>SSID3</td>
   <td><input type=checkbox name=chkpt>SSID4</td>
   </tr>
   <input type=hidden name=chkpt>
   <tr><td><input type=checkbox name=chkpt>SSID5(2.4G)</td>
   <td><input type=checkbox name=chkpt>SSID6</td>
   </tr>
   <tr><td><input type=checkbox name=chkpt>SSID7</td>
   <td><input type=checkbox name=chkpt>SSID8</td>
   </tr>
   <input type=hidden name=chkpt>
   </table>
   </div>
   </div>
   
   <div class="btn_ctl">
   <input type="hidden" value="/admin/multi_wan_generic.asp" name="submit-url">
   <input type="hidden" id="lst" name="lst" value="">
   <input type="hidden" name="encodePppUserName" value="">
   <input type="hidden" name="encodePppPassword" value="">
   <input class="link_bg" type="submit" value="Apply Changes" name="apply" onClick="return applyCheck(this)" >&nbsp; &nbsp; &nbsp; &nbsp;
   <input class="link_bg" type="submit" value="Delete" name="delete" id="delete" onClick="return deleteCheck(this)" >
   <input type="hidden" name="itfGroup" value=0>
   <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <script>
    if (isAHMVersion == "0" && 0 == 1)
     document.getElementById("delete").style.display="none";
                document.getElementById('IGMPProxy_show').style.display = '';
   
    var isConfigRTKRG = "yes";
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
    <p class="intro_title">NAT Type</p>
    <p class="intro_content">This page is used to set nat type.NAT1 is FullCone , NAT2 is RestrictedCone and  NAT4 is Symmetric.</p>
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
    <input class="link_bg" type="submit" value="Apply Changes" onClick="return on_submit()">&nbsp;&nbsp;
    <input type="hidden" value="/admin/fw_nat.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   </form>
   </div>
   </div>
   </div>
   </div>
   </div>

</body>
</html>
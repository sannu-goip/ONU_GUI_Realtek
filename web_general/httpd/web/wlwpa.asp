
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css" type="text/css">
<link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
<link href="/css/custom-nav.css" type="text/css" rel="stylesheet">

<!-- JavaScript Files -->
<script src="/Dashboard/JS/jquery.js"></script>
<script src="/Dashboard/JS/menu.js"></script>
<script src="/Dashboard/JS/util.js"></script>
<script src="/Dashboard/JS/printtable.js"></script>

<title>WLAN Security Settings</title>
<style>
.on {display:on}
.off {display:none}
</style>
<script type="text/javascript" src="base64_code.js"></script>
<script>
var defPskLen, defPskFormat;
var wps20, ssid_num;
var wps20_use_version=1;
var oldMethod;
var wlanMode;
var _wlan_mode=new Array();
var _encrypt=new Array();
var _enable1X=new Array();
var _wpaAuth=new Array();
var _wpaPSKFormat=new Array();
var _wpaPSK=new Array();
var _wpaGroupRekeyTime=new Array();
var _rsPort=new Array();
var _rsIpAddr=new Array();
var _rsPassword=new Array();
var _rs2Port=new Array();
var _rs2IpAddr=new Array();
var _rs2Password=new Array();
var _uCipher=new Array();
var _wpa2uCipher=new Array();
var _wepAuth=new Array();
var _wepLen=new Array();
var _wepKeyFormat=new Array();
var _wlan_isNmode=new Array();
var new_wifi_sec=0;
var support_11w=1;
var _dotIEEE80211W=new Array();
var _sha256=new Array();
var is_wlan_qtn = 0;
var wepkeyform;
var is_radius_2set = 1;
function show_8021x_settings()
{
 var security = get_by_id("security_method");
 var enable_1x = get_by_id("use1x");
 var form1 = document.formEncrypt ;
 var dF=document.forms[0];
 if (enable_1x.checked) {
  if (security.value == 1)
   get_by_id("show_1x_wep").style.display = "";
  else
   get_by_id("show_1x_wep").style.display = "none";
  get_by_id("setting_wep").style.display = "none";
  get_by_id("show_8021x_eap").style.display = "";
  if(is_radius_2set == 1)
   get_by_id("show2_8021x_eap").style.display = "";
  dF.auth_type[2].checked = true;
  dF.auth_type[0].disabled = true;
  dF.auth_type[1].disabled = true;
  dF.auth_type[2].disabled = true;
 }
 else {
  if (security.value == 1)
   get_by_id("setting_wep").style.display = "";
  else
   get_by_id("setting_wep").style.display = "none";
  get_by_id("show_1x_wep").style.display = "none";
  get_by_id("show_8021x_eap").style.display = "none";
  if(is_radius_2set == 1)
   get_by_id("show2_8021x_eap").style.display = "none";
  if (security.value == 2 || security.value == 4 || security.value == 6){
   if(dF.wpaAuth[1].checked==true)
    get_by_id("show_8021x_eap").style.display = "none";
   else
    get_by_id("show_8021x_eap").style.display = "";
   if(is_radius_2set == 1){
    if(dF.wpaAuth[1].checked==true)
     get_by_id("show2_8021x_eap").style.display = "none";
    else
     get_by_id("show2_8021x_eap").style.display = "";
   }
  }
  dF.auth_type[0].disabled = false;
  dF.auth_type[1].disabled = false;
  dF.auth_type[2].disabled = false;
 }
}
function show_wpa_settings()
{
 var dF=document.forms[0];
 var allow_tkip=0;
 get_by_id("show_wpa_gk_rekey").style.display = "";
 get_by_id("show_wpa_psk1").style.display = "none";
 get_by_id("show_wpa_psk2").style.display = "none";
 get_by_id("show_8021x_eap").style.display = "none";
 if(is_radius_2set == 1)
  get_by_id("show2_8021x_eap").style.display = "none";
 if (dF.wpaAuth[1].checked)
 {
  get_by_id("show_wpa_psk1").style.display = "";
  get_by_id("show_wpa_psk2").style.display = "";
 }
 else{
  if (wlanMode != 1)
  get_by_id("show_8021x_eap").style.display = "";
  if(is_radius_2set == 1){
   if (wlanMode != 1)
    get_by_id("show2_8021x_eap").style.display = "";
  }
 }
}
function show_wapi_settings()
{
        var dF=document.forms[0];
        get_by_id("show_wapi_psk1").style.display = "none";
        get_by_id("show_wapi_psk2").style.display = "none";
        get_by_id("show_8021x_wapi").style.display = "none";
        if (dF.wapiAuth[1].checked){
                get_by_id("show_wapi_psk1").style.display = "";
                get_by_id("show_wapi_psk2").style.display = "";
        }
        else{
                if (wlanMode != 1)
                {
                 get_by_id("show_8021x_wapi").style.display = "";
   if(''=='true')
   {
    get_by_id("show_8021x_wapi_local_as").style.display = "";
   }
   else
   {
    get_by_id("show_8021x_wapi_local_as").style.display = "none";
    dF.uselocalAS.checked=false;
   }
                }
  if (dF.wapiASIP.value == "192.168.1.1")
  {
   dF.uselocalAS.checked=true;
  }
        }
}
function show_wapi_ASip()
{
 var dF=document.forms[0];
 if (dF.uselocalAS.checked)
 {
  dF.wapiASIP.value = "192.168.1.1";
        }
 else
 {
  dF.wapiASIP.value = "";
 }
}
function show_sha256_settings()
{
 if(document.formEncrypt.dotIEEE80211W[1].checked == true)
  get_by_id("show_sha256").style.display = "";
 else
  get_by_id("show_sha256").style.display = "none";
}
function show_authentication()
{
 var security = get_by_id("security_method");
 var enable_1x = get_by_id("use1x");
 var form1 = document.formEncrypt ;
 if (wlanMode==1 && security.value == 6) {
  alert("Not allowed for the Client mode.");
  security.value = oldMethod;
  return false;
 }
 oldMethod = security.value;
 get_by_id("show_wep_auth").style.display = "none";
 get_by_id("setting_wep").style.display = "none";
 get_by_id("setting_wpa").style.display = "none";
 get_by_id("setting_wapi").style.display = "none";
 get_by_id("show_wpa_cipher").style.display = "none";
 get_by_id("show_wpa2_cipher").style.display = "none";
 get_by_id("show_wpa3_cipher").style.display = "none";
 get_by_id("show_wpa_gk_rekey").style.display = "none";
 get_by_id("enable_8021x").style.display = "none";
 get_by_id("show_8021x_eap").style.display = "none";
 if(is_radius_2set == 1)
  get_by_id("show2_8021x_eap").style.display = "none";
 get_by_id("show_8021x_wapi").style.display = "none";
 get_by_id("show_1x_wep").style.display = "none";
        get_by_id("show_wapi_psk1").style.display = "none";
        get_by_id("show_wapi_psk2").style.display = "none";
        get_by_id("show_8021x_wapi").style.display = "none";
 if(support_11w){
  get_by_id("show_dotIEEE80211W").style.display = "none";
  get_by_id("show_sha256").style.display = "none";
  enableRadioGroup(form1.dotIEEE80211W);
  enableRadioGroup(form1.sha256);
 }
 get_by_id("show_wpaAuth").style.display = "";
 if (security.value == 1){
  get_by_id("show_wep_auth").style.display = "";
  if (wlanMode == 1)
   get_by_id("setting_wep").style.display = "";
  else {
   get_by_id("enable_8021x").style.display = "";
   if(enable_1x.checked){
    get_by_id("show_8021x_eap").style.display = "";
    if(is_radius_2set == 1)
     get_by_id("show2_8021x_eap").style.display = "";
    get_by_id("show_1x_wep").style.display = "";
    get_by_id("setting_wep").style.display = "none";
    form1.auth_type[2].checked = true;
    form1.auth_type[0].disabled = true;
    form1.auth_type[1].disabled = true;
    form1.auth_type[2].disabled = true;
   }else{
    get_by_id("setting_wep").style.display = "";
   }
  }
 }else if (security.value == 2 || security.value == 4 || security.value == 6){
  form1.ciphersuite_t.disabled = false;
  form1.ciphersuite_a.disabled = false;
  form1.wpa2ciphersuite_t.disabled = false;
  form1.wpa2ciphersuite_a.disabled = false;
  get_by_id("setting_wpa").style.display = "";
  if (security.value == 2) {
   get_by_id("show_wpa_cipher").style.display = "";
   form1.wpa2ciphersuite_t.disabled = true;
   form1.wpa2ciphersuite_a.disabled = true;
   if ( form1.isNmode.value == 1 ) {
    form1.ciphersuite_t.disabled = true;
    form1.ciphersuite_t.checked = false;
    form1.wpa2ciphersuite_t.disabled = true;
    form1.wpa2ciphersuite_t.checked = false;
   }
  }
  if(security.value == 4) {
   get_by_id("show_wpa2_cipher").style.display = "";
   form1.ciphersuite_t.disabled = true;
   form1.ciphersuite_a.disabled = true;
   if(support_11w){
    get_by_id("show_dotIEEE80211W").style.display = "";
    if(form1.dotIEEE80211W[1].checked == true)
     get_by_id("show_sha256").style.display = "";
   }
   if(new_wifi_sec){
     form1.wpa2ciphersuite_t.disabled = true;
     form1.wpa2ciphersuite_t.checked = false;
     form1.wpa2ciphersuite_a.disabled = true;
     form1.wpa2ciphersuite_a.checked = true;
   }
   else{
    if ( form1.isNmode.value == 1 ) {
     form1.ciphersuite_t.disabled = true;
     form1.ciphersuite_t.checked = false;
     form1.wpa2ciphersuite_t.disabled = true;
     form1.wpa2ciphersuite_t.checked = false;
    }
   }
  }
  if(security.value == 6){
   get_by_id("show_wpa_cipher").style.display = "";
   get_by_id("show_wpa2_cipher").style.display = "";
   if(new_wifi_sec){
    form1.ciphersuite_t.disabled = true;
    form1.ciphersuite_t.checked = true;
    form1.ciphersuite_a.disabled = true;
    form1.ciphersuite_a.checked = true;
    form1.wpa2ciphersuite_t.disabled = true;
    form1.wpa2ciphersuite_t.checked = true;
    form1.wpa2ciphersuite_a.disabled = true;
    form1.wpa2ciphersuite_a.checked = true;
   }
   else{
    form1.ciphersuite_t.disabled = false;
    form1.ciphersuite_a.disabled = false;
    form1.wpa2ciphersuite_t.disabled = false;
    form1.wpa2ciphersuite_a.disabled = false;
   }
  }
  show_wpa_settings();
 }else if(security.value == 8 )
 {
  get_by_id("setting_wapi").style.display = "";
  show_wapi_settings();
 }else if (security.value == 16 || security.value == 20 ){
  get_by_id("setting_wpa").style.display = "";
  get_by_id("show_wpa3_cipher").style.display = "";
  if(support_11w){
   get_by_id("show_dotIEEE80211W").style.display = "";
   if(form1.dotIEEE80211W[1].checked == true)
    get_by_id("show_sha256").style.display = "";
  }
  form1.wpa3ciphersuite_a.disabled = true;
  form1.wpa3ciphersuite_a.checked = true;
  if(security.value == 16){
   form1.dotIEEE80211W[2].checked = true;
   disableRadioGroup(form1.dotIEEE80211W);
   get_by_id("show_sha256").style.display = "none";
   form1.sha256[1].checked = true;
   disableRadioGroup(form1.sha256);
  }
  if(security.value == 20){
   form1.dotIEEE80211W[1].checked = true;
   disableRadioGroup(form1.dotIEEE80211W);
   if(form1.dotIEEE80211W[1].checked == true)
    get_by_id("show_sha256").style.display = "";
   form1.sha256[1].checked = true;
   disableRadioGroup(form1.sha256);
  }
  get_by_id("show_wpaAuth").style.display = "none";
  form1.wpaAuth[1].checked = true;
  show_wpa_settings();
 }
 if (security.value == 0) {
  if (wlanMode != 1 && !is_wlan_qtn) {
   get_by_id("enable_8021x").style.display = "";
   if(enable_1x.checked){
    get_by_id("show_8021x_eap").style.display = "";
   }
   else {
    get_by_id("show_8021x_eap").style.display = "none";
   }
   if(is_radius_2set == 1){
    if(enable_1x.checked){
     get_by_id("show2_8021x_eap").style.display = "";
    }
    else {
     get_by_id("show2_8021x_eap").style.display = "none";
    }
   }
  }
 }
}
function setDefaultKeyValue(form, wlan_id)
{
  if (form.elements["length"+wlan_id].selectedIndex == 0) {
 if ( form.elements["format"+wlan_id].selectedIndex == 0) {
  form.elements["key"+wlan_id].maxLength = 5;
  form.elements["key"+wlan_id].value = "*****";
 }
 else {
  form.elements["key"+wlan_id].maxLength = 10;
  form.elements["key"+wlan_id].value = "**********";
 }
  }
  else {
   if ( form.elements["format"+wlan_id].selectedIndex == 0) {
  form.elements["key"+wlan_id].maxLength = 13;
  form.elements["key"+wlan_id].value = "*************";
 }
 else {
  form.elements["key"+wlan_id].maxLength = 26;
  form.elements["key"+wlan_id].value ="**************************";
 }
  }
}
function updateWepFormat(form, wlan_id)
{
 if (form.elements["length" + wlan_id].selectedIndex == 0) {
  form.elements["format" + wlan_id].options[0].text = 'ASCII (5 characters)';
  form.elements["format" + wlan_id].options[1].text = 'Hex (10 characters)';
  form.wepKeyLen[0].checked = true;
 }
 else {
  form.elements["format" + wlan_id].options[0].text = 'ASCII (13 characters)';
  form.elements["format" + wlan_id].options[1].text = 'Hex (26 characters)';
  form.wepKeyLen[1].checked = true;
 }
 setDefaultKeyValue(form, wlan_id);
}
function check_wepkey()
{
 form = document.formEncrypt;
 var keyLen;
 if (form.length0.selectedIndex == 0) {
    if ( form.format0.selectedIndex == 0)
   keyLen = 5;
  else
   keyLen = 10;
 }
 else {
   if ( form.format0.selectedIndex == 0)
  keyLen = 13;
 else
  keyLen = 26;
 }
 if (form.key0.value.length != keyLen) {
  alert('Invalid length of Key value.');
  form.key0.focus();
  return 0;
 }
 if ( form.key0.value == "*****" ||
  form.key0.value == "**********" ||
  form.key0.value == "*************" ||
  form.key0.value == "**************************" ){
  if(wepkeyform==form.format0.value)
   return 1;
  else{
   alert("Invalid Key Value. ");
   form.key0.focus();
   return 0;
  }
 }
 if (form.format0.selectedIndex==0)
  return 1;
 for (var i=0; i<form.key0.value.length; i++) {
  if ( (form.key0.value.charAt(i) >= '0' && form.key0.value.charAt(i) <= '9') ||
   (form.key0.value.charAt(i) >= 'a' && form.key0.value.charAt(i) <= 'f') ||
   (form.key0.value.charAt(i) >= 'A' && form.key0.value.charAt(i) <= 'F') )
   continue;
  alert("Invalid key value. It should be in hex number (0-9 or a-f).");
  form.key0.focus();
  return 0;
 }
 return 1;
}
function check_rs()
{
 form = document.formEncrypt;
 if (checkHostIP(form.radiusIP, 1) == false) {
  return false;
 }
 if (form.radiusPort.value=="") {
  alert("RADIUS Server port number cannot be empty! It should be a decimal number between 1-65535.");
  form.radiusPort.focus();
  return false;
   }
 if (validateKey(form.radiusPort.value)==0) {
  alert("RADIUS Server port number cannot be empty! It should be a decimal number between 1-65535.");
  form.radiusPort.focus();
  return false;
 }
        port = parseInt(form.radiusPort.value, 10);
  if (port > 65535 || port < 1) {
  alert("Invalid port number of RADIUS Server! It should be a decimal number between 1-65535.");
  form.radiusPort.focus();
  return false;
   }
 if(is_radius_2set == 1){
  if(form.radius2IP.value != "" && form.radius2IP.value != "0.0.0.0"){
   if (checkHostIP(form.radius2IP, 1) == false) {
    return false;
   }
   if (form.radius2Port.value=="") {
    alert("RADIUS Server port number cannot be empty! It should be a decimal number between 1-65535.");
    form.radius2Port.focus();
    return false;
     }
   if (validateKey(form.radius2Port.value)==0) {
    alert("RADIUS Server port number cannot be empty! It should be a decimal number between 1-65535.");
    form.radiusPort.focus();
    return false;
   }
          port = parseInt(form.radius2Port.value, 10);
    if (port > 65535 || port < 1) {
    alert("Invalid port number of RADIUS Server! It should be a decimal number between 1-65535.");
    form.radius2Port.focus();
    return false;
     }
  }
  if(form.radius2IP.value == "")
   form.radius2IP.value = "0.0.0.0";
 }
 return true;
}
function saveChanges(obj)
{
  form = document.formEncrypt;
  wpaAuth = form.wpaAuth;
  if (form.security_method.value == 0) {
   if(form.use1x.checked == true){
  if (check_rs() == false)
     return false;
   }
   alert("Warning : security is not set!this may be dangerous!");
  }
  else if (form.security_method.value == 1) {
   if (form.use1x.checked == false) {
    if (check_wepkey() == false)
     return false;
   }
   else {
    if (check_rs() == false)
     return false;
   }
 if (wps20 && wps20_use_version!=0 && form.wpaSSID.value==0)
  alert("Info : WPS will be disabled when using WEP!");
  }
  else if (form.security_method.value == 2 || form.security_method.value == 4 || form.security_method.value == 6) {
    if (form.security_method.value == 2) {
     if(form.ciphersuite_t.checked == false && form.ciphersuite_a.checked == false )
  {
   alert("WPA Cipher Suite can not be empty.");
   return false;
  }
  if (form.isNmode.value == 1 && form.ciphersuite_t.checked == true && form.ciphersuite_a.checked == true)
  {
   alert("Can not select TKIP and AES in the same time.");
   return false;
  }
  if (wps20 && wps20_use_version!=0 && form.wpaSSID.value==0)
   alert("Info : WPS will be disabled when using WPA only!");
    }
    if (form.security_method.value == 4) {
     if(form.wpa2ciphersuite_t.checked == false && form.wpa2ciphersuite_a.checked == false )
  {
   alert("WPA2 Cipher Suite can not be empty.");
   return false;
  }
  if (form.isNmode.value == 1 && form.wpa2ciphersuite_t.checked == true && form.wpa2ciphersuite_a.checked == true)
  {
   alert("Can not select TKIP and AES in the same time.");
   return false;
  }
  if (form.wpa2ciphersuite_t.checked == true) {
   if (wps20 && wps20_use_version!=0 && form.wpaSSID.value==0 && form.wpa2ciphersuite_a.checked == false)
    alert("Info : WPS will be disabled when using TKIP only!");
  }
    }
 if (form.security_method.value == 6) {
  if(wlanMode == 1 && ((form.ciphersuite_t.checked == true && form.ciphersuite_a.checked == true)
   || (form.wpa2ciphersuite_t.checked == true && form.wpa2ciphersuite_a.checked == true)))
  {
   alert("In the Client mode, you can not select TKIP and AES in the same time.");
   return false;
  }
     if(form.ciphersuite_t.checked == false && form.ciphersuite_a.checked == false )
  {
   alert("WPA Cipher Suite can not be empty.");
   return false;
  }
  if(form.wpa2ciphersuite_t.checked == false && form.wpa2ciphersuite_a.checked == false )
  {
   alert("WPA2 Cipher Suite can not be empty.");
   return false;
  }
  if (wps20 && wps20_use_version!=0 && form.wpaSSID.value==0 && form.ciphersuite_t.checked == true && form.wpa2ciphersuite_t.checked == true
   && form.ciphersuite_a.checked == false && form.wpa2ciphersuite_a.checked == false)
   alert("Info : WPS will be disabled when using TKIP only!");
    }
 if(wpaAuth[0].checked){
  if(check_rs()==false)
   return false;
 }
 var str = form.pskValue.value;
 if (form.pskFormat.selectedIndex==1) {
  if (str.length != 64) {
   alert('Pre-Shared Key value should be 64 characters.');
   form.pskValue.focus();
   return false;
  }
  takedef = 0;
  if (defPskFormat == 1 && defPskLen == 64) {
   for (var i=0; i<64; i++) {
        if ( str.charAt(i) != '*')
     break;
   }
   if (i == 64 )
    takedef = 1;
    }
  if (takedef == 0) {
   for (var i=0; i<str.length; i++) {
        if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
     (str.charAt(i) >= 'a' && str.charAt(i) <= 'f') ||
     (str.charAt(i) >= 'A' && str.charAt(i) <= 'F') )
     continue;
    alert("Invalid Pre-Shared Key value. It should be in hex number (0-9 or a-f).");
    form.pskValue.focus();
    return false;
     }
  }
 }
 else {
  if ( (form.security_method.value > 1) && wpaAuth[1].checked ) {
   if (str.length < 8) {
    alert('Pre-Shared Key value should be set at least 8 characters.');
    form.pskValue.focus();
    return false;
   }
   if (str.length > 63) {
    alert('Pre-Shared Key value should be less than 64 characters.');
    form.pskValue.focus();
    return false;
   }
   if (checkString(form.pskValue.value) == 0) {
    alert('Invalid Pre-Shared Key!');
    form.pskValue.focus();
    return false;
   }
  }
 }
  }
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   setload();
   return true;
}
function postSecurity(encrypt, enable1X, wpaAuth, wpaPSKFormat, wpaPSK, wpaGroupRekeyTime, rsPort, rsIpAddr, rsPassword, rs2Port, rs2IpAddr, rs2Password, uCipher, wpa2uCipher, wepAuth, wepLen, wepKeyFormat, dotIeee80211w, sh256)
{
 document.formEncrypt.security_method.value = encrypt;
 document.formEncrypt.pskFormat.value = wpaPSKFormat;
 document.formEncrypt.pskValue.value = wpaPSK;
 document.formEncrypt.gk_rekey.value = wpaGroupRekeyTime;
 document.formEncrypt.radiusIP.value = rsIpAddr;
 document.formEncrypt.radiusPort.value = rsPort;
 document.formEncrypt.radiusPass.value = rsPassword;
 if(is_radius_2set == 1)
 {
  document.formEncrypt.radius2IP.value = rs2IpAddr;
  document.formEncrypt.radius2Port.value = rs2Port;
  document.formEncrypt.radius2Pass.value = rs2Password;
 }
 if (document.formEncrypt.wepKeyLen && wepLen > 0)
  document.formEncrypt.wepKeyLen[wepLen-1].checked = true;
 if (enable1X==1)
  document.formEncrypt.use1x.checked = true;
 else
  document.formEncrypt.use1x.checked = false;
 document.formEncrypt.wpaAuth[wpaAuth-1].checked = true;
 document.formEncrypt.ciphersuite_t.checked = false;
 document.formEncrypt.ciphersuite_a.checked = false;
 if ( uCipher == 1 )
  document.formEncrypt.ciphersuite_t.checked = true;
 if ( uCipher == 2 )
  document.formEncrypt.ciphersuite_a.checked = true;
 if ( uCipher == 3 ) {
  document.formEncrypt.ciphersuite_t.checked = true;
  document.formEncrypt.ciphersuite_a.checked = true;
 }
 document.formEncrypt.wpa2ciphersuite_t.checked = false;
 document.formEncrypt.wpa2ciphersuite_a.checked = false;
 if ( wpa2uCipher == 1 )
  document.formEncrypt.wpa2ciphersuite_t.checked = true;
 if ( wpa2uCipher == 2 )
  document.formEncrypt.wpa2ciphersuite_a.checked = true;
 if ( wpa2uCipher == 3 ) {
  document.formEncrypt.wpa2ciphersuite_t.checked = true;
  document.formEncrypt.wpa2ciphersuite_a.checked = true;
 }
 document.formEncrypt.auth_type[wepAuth].checked = true;
 if ( wepLen == 0 )
  document.formEncrypt.length0.value = 1;
 else
  document.formEncrypt.length0.value = wepLen;
 document.formEncrypt.format0.value = wepKeyFormat+1;
 wepkeyform = wepKeyFormat+1;
 if(support_11w){
  document.formEncrypt.dotIEEE80211W[dotIeee80211w].checked = true;
  document.formEncrypt.sha256[sh256].checked = true;
 }
 show_authentication();
        defPskLen = document.formEncrypt.pskValue.value.length;
 defPskFormat = document.formEncrypt.pskFormat.selectedIndex;
 updateWepFormat(document.formEncrypt, 0);
}
function SSIDSelected(index)
{
 if (document.formEncrypt.wlanDisabled.value == "ON") {
  disableTextField(document.formEncrypt.wpaSSID);
  disableTextField(document.formEncrypt.security_method);
  disableCheckBox(document.formEncrypt.use1x);
  disableRadioGroup(document.formEncrypt.auth_type);
  disableTextField(document.formEncrypt.length0);
  disableTextField(document.formEncrypt.format0);
  disableTextField(document.formEncrypt.key0);
  disableRadioGroup(document.formEncrypt.wpaAuth);
  disableRadioGroup(document.formEncrypt.dotIEEE80211W);
  disableRadioGroup(document.formEncrypt.sha256);
  disableCheckBox(document.formEncrypt.ciphersuite_t);
  disableCheckBox(document.formEncrypt.ciphersuite_a);
  disableCheckBox(document.formEncrypt.wpa2ciphersuite_t);
  disableCheckBox(document.formEncrypt.wpa2ciphersuite_a);
  disableTextField(document.formEncrypt.pskFormat);
  disableTextField(document.formEncrypt.pskValue);
  disableRadioGroup(document.formEncrypt.wapiAuth);
  disableTextField(document.formEncrypt.wapiPskFormat);
  disableTextField(document.formEncrypt.wapiPskValue);
  disableRadioGroup(document.formEncrypt.wepKeyLen);
  disableTextField(document.formEncrypt.radiusIP);
  disableTextField(document.formEncrypt.radiusPort);
  disableTextField(document.formEncrypt.radiusPass);
  {
   disableTextField(document.formEncrypt.radius2IP);
   disableTextField(document.formEncrypt.radius2Port);
   disableTextField(document.formEncrypt.radius2Pass);
  }
  disableCheckBox(document.formEncrypt.uselocalAS);
  disableTextField(document.formEncrypt.wapiASIP);
  disableTextField(document.formEncrypt.save);
 }
 if (ssid_num == 0)
  return;
 wlanMode = _wlan_mode[index];
 document.formEncrypt.isNmode.value = _wlan_isNmode[index];
 postSecurity(_encrypt[index], _enable1X[index],
  _wpaAuth[index], _wpaPSKFormat[index], _wpaPSK[index],
  _wpaGroupRekeyTime[index],
  _rsPort[index], _rsIpAddr[index], _rsPassword[index],
  _rs2Port[index], _rs2IpAddr[index], _rs2Password[index],
  _uCipher[index], _wpa2uCipher[index], _wepAuth[index],
  _wepLen[index], _wepKeyFormat[index], _dotIEEE80211W[index], _sha256[index]);
}
function showkey0Clicked()
{
 var keyImg = document.getElementById("showkey_0");
 var keyInput = document.getElementById("key");
 if (keyInput.type == "password") {
  keyInput.type = "text";
  keyImg.src = "graphics/invisible.png";
 }else {
  keyInput.type = "password";
  keyImg.src = "graphics/visible.png";
 }
}
function showkey1Clicked()
{
 var keyImg = document.getElementById("showwpapsk");
 var keyInput = document.getElementById("wpapsk");
 if (keyInput.type == "password") {
  keyInput.type = "text";
  keyImg.src = "graphics/invisible.png";
 }else {
  keyInput.type = "password";
  keyImg.src = "graphics/visible.png";
 }
}
function showkey2Clicked()
{
 var keyImg = document.getElementById("showwapipsk");
 var keyInput = document.getElementById("wapipsk");
 if (keyInput.type == "password") {
  keyInput.type = "text";
  keyImg.src = "graphics/invisible.png";
 }else {
  keyInput.type = "password";
  keyImg.src = "graphics/visible.png";
 }
}
</script>
<style>
.form-group {
    margin-bottom: 1rem;
}
.custom-control {
    position: relative;
    display: block;
    min-height: 1.5rem;
    padding-left: 1.5rem;
}
.form-group label {
    color: #584848;
    font-size: 13px;
    line-height: 22px;
}
.left-field {
    margin-left: -10px;
    width: 143px;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
}
.right-field {
    margin-left: 178px;
    padding: 2px;
    width: 248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.margin_adjs {
    margin-right: -29px;
    margin-left: -29px;
}

</style>
</head>
<body onload="SSIDSelected(0);">
<INPUT id="Selected_Menu" type="hidden" 
            value="Wireless->WiFi" name="Net_Wlan">
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
							        MakeLeftMenu("Wireless","WiFi");
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Wi-Fi',"Wi-Fi 2.4G",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">								 
				
                	<div class="white_box" name="CwmpConfig">
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/> WLAN Security Settings</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p>This page allows you setup the WLAN security. Turn on WEP or WPA by using Encryption Keys could prevent any unauthorized access to your wireless network</p>
 </div>
</div>
</div>

<form action=/boaform/admin/formWlEncrypt method=POST name="formEncrypt">
 <div class="data_common data_common_notitle">
<div id="wlan_security_table" style="display:none" class="data_common data_common_notitle">
  <input type=hidden name="wlanDisabled" value="OFF">
  <input type=hidden name="isNmode" value=0 >
  <div class="data_common">
       <div class="col-md-12 form-group">
       <div class="custom-control">
        <label class="left-field">SSID:</label/>
    <select name=wpaSSID   class="right-field custom-select" onChange="SSIDSelected( this.selectedIndex )">
    <option value=0>Root AP - FTTH-84E8</option>
		<option value=1>AP1 - EasyMeshBH-MquxcLHpr

    </select>
    </div>
    </div>
    
 <table>
   <label class="left-field">Encryption:&nbsp;</label>
   
    <select size="1" class="right-field custom-select"id="security_method" name="security_method" onChange="show_authentication()">
     <option value=0>NONE</option>
<option value=1>WEP</option>
<option value=2>WPA</option>
<option value=4>WPA2</option>
<option value=6>WPA2 Mixed</option>

    </select>

  </tr>
  <div id="enable_8021x"   class="col-md-12 form-group">
  <div class="col-md-12 form-group">
   <div class="custom-control">
   <label class="left-field">802.1x Authentication:</label>
   <input class="right-field custom-select" type="checkbox" id="use1x" name="use1x" value="ON" onClick="show_8021x_settings()">
    </div>
    </div>
  </div>

   
  <tr id="show_wep_auth" style="display:none">
   <th width="30%">Authentication:</th>
   <td width="70%">
    <input name="auth_type" type=radio value="open">Open System
    <input name="auth_type" type=radio value="shared">Shared Key
    <input name="auth_type" type=radio value="both">Auto
   </td>
  </tr>
 </table>
    <table id="setting_wep" style="display:none">
     <input type="hidden" name="wepEnabled" value="ON" checked>
  <tr>
   <th width="30%">Key Length:</th>
   <td width="70%">
    <select size="1" name="length0" id="key_length" onChange="updateWepFormat(document.formEncrypt, 0)">
     <option value=1> 64-bit</option>
     <option value=2>128-bit</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%">Key Format:</th>
   <td width="70%">
    <select id="key_format" name="format0" onChange="setDefaultKeyValue(document.formEncrypt, 0)">
     <option value="1">ASCII</option>
     <option value="2">Hex</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%">Encryption Key:</th>
   <td width="70%" id="pwd0">
    <input type="password" id="key" name="key0" maxlength="26" size="26" value="">
    <img id="showkey_0" onclick="showkey0Clicked()" src="graphics/visible.png" style="width:15px; height:12px">
   </td>
  </tr>
 </table>
 <table id="setting_wpa" style="display:none">
  <tr id="show_wpaAuth">
   <th width="30%">Authentication Mode:</th>
   <td width="70%">
    <input name="wpaAuth" type="radio" value="eap" onClick="show_wpa_settings()">Enterprise (RADIUS)
    <input name="wpaAuth" type="radio" value="psk" onClick="show_wpa_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_dotIEEE80211W" style="display:none">
   <th width="30%">IEEE 802.11w:</th>
   <td width="70%">
    <input name="dotIEEE80211W" type="radio" value="0" onClick="show_sha256_settings()">None
    <input name="dotIEEE80211W" type="radio" value="1" onClick="show_sha256_settings()">Capable
    <input name="dotIEEE80211W" type="radio" value="2" onClick="show_sha256_settings()">Required
   </td>
  </tr>
  <tr id="show_sha256" style="display:none">
   <th width="30%">SHA256:</th>
   <td width="70%">
    <input name="sha256" type="radio" value="0">Disable
    <input name="sha256" type="radio" value="1">Enable
   </td>
  </tr>
  <tr id="show_wpa_cipher" style="display:none">
   <th width="30%">WPA Cipher Suite:</th>
   <td width="70%">
    <input type="checkbox" name="ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa2_cipher" style="display:none">
   <th width="30%">WPA2 Cipher Suite:</th>
   <td width="70%">
    <input type="checkbox" name="wpa2ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="wpa2ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa3_cipher" style="display:none">
   <th width="30%">Cipher Suite:</th>
   <td width="70%">
    <!--<input type="checkbox" name="wpa3ciphersuite_t" value=1>TKIP&nbsp;-->
    <input type="checkbox" name="wpa3ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa_gk_rekey" style="display:none">
   <th width="30%">Group Key Update Timer:</th>
   <td width="70%"><input type="text" name="gk_rekey" size="32" maxlength="10" value="">
   </td>
  </tr>
  <tr id="show_wpa_psk1" style="display:none">
   <th width="30%">Pre-Shared Key Format:</th>
   <td width="70%">
    <select id="psk_fmt" name="pskFormat" onChange="">
     <option value="0">Passphrase</option>
     <option value="1">HEX (64 characters)</option>
    </select>
   </td>
  </tr>
  <tr id="show_wpa_psk2" style="display:none">
   <th width="30%">Pre-Shared Key:</th>
   <td width="70%" id="pwd1">
    <input type="password" name="pskValue" id="wpapsk" size="32" maxlength="64" value="">
    <img id="showwpapsk" onclick="showkey1Clicked()" src="graphics/visible.png" style="width:15px; height:12px">
   </td>
  </tr>
  </table>
 <table id="setting_wapi" style="display:none">
  <tr>
   <th width="30%">Authentication Mode:</th>
   <td width="70%">
           <input name="wapiAuth" type="radio" value="eap" onClick="show_wapi_settings()">Enterprise (AS Server)
           <input name="wapiAuth" type="radio" value="psk" onClick="show_wapi_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_wapi_psk1" style="display:none">
   <th width="30%">Pre-Shared Key Format:</th>
   <td width="70%">
   <select id="wapi_psk_fmt" name="wapiPskFormat" onChange="">
           <option value="0">Passphrase</option>
           <option value="1">HEX (64 characters)</option>
           </select>
   </td>
  </tr>
  <tr id="show_wapi_psk2" style="display:none">
   <th width="30%">Pre-Shared Key:</th>
   <td width="70%" id="pwd2">
    <input type="password" name="wapiPskValue" id="wapipsk" size="32" maxlength="64" value="">
     <img id="showwapipsk" onclick="showkey2Clicked()" src="graphics/visible.png" style="width:15px; height:12px">
   </td>
  </tr>
 </table>
 <table id="show_1x_wep" style="display:none">
  <tr>
   <th width="30%">Key Length:</th>
   <td width="70%">
    <input name="wepKeyLen" type="radio" value="wep64">64 Bits
    <input name="wepKeyLen" type="radio" value="wep128">128 Bits
   </td>
  </tr>
 </table>
 <table id="show_8021x_eap" style="display:none">
  <tr>
   <th width="30%">RADIUS Server:</th>
   <td width="70%">
   IP Address:<input id="radius_ip" name="radiusIP" size="16" maxlength="15" value="0.0.0.0">
   Port:<input type="text" id="radius_port" name="radiusPort" size="4" maxlength="5" value="1812">
   Password:<input type="password" id="radius_pass" name="radiusPass" size="20" maxlength="64" value="12345">
   </td>
  </tr>
 </table>
 <table id="show2_8021x_eap" style="display:none">
  <tr>
   <th width="30%">Backup RADIUS Server:</th>
   <td width="70%">
   IP Address:<input id="radius2_ip" name="radius2IP" size="16" maxlength="15" value="0.0.0.0">
   Port:<input type="text" id="radius2_port" name="radius2Port" size="4" maxlength="5" value="1812">
   Password:<input type="password" id="radius2_pass" name="radius2Pass" size="20" maxlength="64" value="12345">
   </td>
  </tr>
 </table>
 <table id="show_8021x_wapi" style="display:none">
  <tr id="show_8021x_wapi_local_as" style="">
   <th width="30%">Use Local AS Server:</th>
   <td width="70%">
   <input type="checkbox" id="uselocalAS" name="uselocalAS" value="ON" onClick="show_wapi_ASip()">
   </td>
  </tr>
  <tr>
   <th width="30%">AS Server IP Address:</th>
   <td width="70%"><input id="wapiAS_ip" name="wapiASIP" size="16" maxlength="15" value="0.0.0.0"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="hidden" name="wlan_idx" value=1>
 <input type=hidden value="/admin/wlwpa.asp" name="submit-url">
 <input type=submit name="save" value="Apply Changes" onClick="return saveChanges(this)" class="link_bg">&nbsp;
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 _wlan_mode[0]=0;
	_encrypt[0]=6;
	_enable1X[0]=0;
	_wpaAuth[0]=2;
	_wpaPSKFormat[0]=0;
	_wpaPSK[0]='12345678';
	_wpaGroupRekeyTime[0]='86400';
	_rsPort[0]=1812;
	_rsIpAddr[0]='0.0.0.0';
	_rsPassword[0]='';
	_rs2Port[0]=1812;
	_rs2IpAddr[0]='0.0.0.0';
	_rs2Password[0]='';
	_uCipher[0]=3;
	_wpa2uCipher[0]=3;
	_wepAuth[0]=2;
	_wepLen[0]=0;
	_wepKeyFormat[0]=0;
	_wlan_isNmode[0]=1;
	_dotIEEE80211W[0]=0;
	_sha256[0]=0;
	_wlan_mode[1]=0;
	_encrypt[1]=4;
	_enable1X[1]=0;
	_wpaAuth[1]=2;
	_wpaPSKFormat[1]=0;
	_wpaPSK[1]='qoUb6J_)3?2!RSDzH(iRZZW[onpi0I';
	_wpaGroupRekeyTime[1]='86400';
	_rsPort[1]=1812;
	_rsIpAddr[1]='0.0.0.0';
	_rsPassword[1]='';
	_rs2Port[1]=1812;
	_rs2IpAddr[1]='0.0.0.0';
	_rs2Password[1]='';
	_uCipher[1]=1;
	_wpa2uCipher[1]=2;
	_wepAuth[1]=2;
	_wepLen[1]=0;
	_wepKeyFormat[1]=0;
	_wlan_isNmode[1]=1;
	_dotIEEE80211W[1]=0;
	_sha256[1]=0;
		ssid_num=2;
	document.getElementById("wlan_security_table").style.display = "";

 wps20 = 1;

 show_authentication();
 defPskLen = document.formEncrypt.pskValue.value.length;
 defPskFormat = document.formEncrypt.pskFormat.selectedIndex;
 updateWepFormat(document.formEncrypt, 0);
</script>
</form>
<br><br>
</body>
</html>

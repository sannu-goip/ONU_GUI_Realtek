
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css" type="text/css">
<link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
<link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script src="/Dashboard/JS/jquery.js"></script>
<script src="/Dashboard/JS/menu.js"></script>
<script src="/Dashboard/JS/util.js"></script>
<script src="/Dashboard/JS/printtable.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>WLAN Site Survey</title>
<script type="text/javascript" src="base64_code.js"></script>
<script>
var connectEnabled=0, autoconf=0;
function show_wpa_settings()
{
 var dF=document.forms[0];
 var allow_tkip=0;
 get_by_id("show_wpa_psk1").style.display = "none";
 get_by_id("show_wpa_psk2").style.display = "none";
 get_by_id("show_8021x_eap").style.display = "none";
 if (dF.wpaAuth[1].checked)
 {
  get_by_id("show_wpa_psk1").style.display = "";
  get_by_id("show_wpa_psk2").style.display = "";
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
  if (dF.wapiASIP.value == "192.168.1.1")
  {
   dF.uselocalAS.checked=true;
  }
        }
}
function show_authentication()
{
 var security = get_by_id("security_method");
 var enable_1x = get_by_id("use1x");
 var form1 = document.forms[0] ;
 get_by_id("show_wep_auth").style.display = "none";
 get_by_id("setting_wep").style.display = "none";
 get_by_id("setting_wpa").style.display = "none";
 get_by_id("setting_wapi").style.display = "none";
 get_by_id("show_wpa_cipher").style.display = "none";
 get_by_id("show_wpa2_cipher").style.display = "none";
 get_by_id("enable_8021x").style.display = "none";
 get_by_id("show_8021x_eap").style.display = "none";
 get_by_id("show_8021x_wapi").style.display = "none";
 get_by_id("show_1x_wep").style.display = "none";
        get_by_id("show_wapi_psk1").style.display = "none";
        get_by_id("show_wapi_psk2").style.display = "none";
        get_by_id("show_8021x_wapi").style.display = "none";
 disableTextField(form1.security_method);
 if (security.value == 1){
  get_by_id("show_wep_auth").style.display = "";
  get_by_id("setting_wep").style.display = "";
 }else if (security.value == 2 || security.value == 4 || security.value == 6){
  get_by_id("setting_wpa").style.display = "";
  disableRadioGroup(form1.wpaAuth);
  if (security.value == 2) {
   get_by_id("show_wpa_cipher").style.display = "";
   disableCheckBox(form1.ciphersuite_t);
   disableCheckBox(form1.ciphersuite_a);
  }
  if(security.value == 4) {
   get_by_id("show_wpa2_cipher").style.display = "";
   disableCheckBox(form1.wpa2ciphersuite_t);
   disableCheckBox(form1.wpa2ciphersuite_a);
  }
  if(security.value == 6){
   get_by_id("show_wpa_cipher").style.display = "";
   get_by_id("show_wpa2_cipher").style.display = "";
   disableCheckBox(form1.ciphersuite_t);
   disableCheckBox(form1.ciphersuite_a);
   disableCheckBox(form1.wpa2ciphersuite_t);
   disableCheckBox(form1.wpa2ciphersuite_a);
  }
  show_wpa_settings();
 }else if(security.value == 8 )
 {
  get_by_id("setting_wapi").style.display = "";
  show_wapi_settings();
 }
}
function saveClickSSID()
{
 var dF=document.forms[0];
 get_by_id("wlan_security_div").style.display="";
 get_by_id("top_div").style.display="none";
 if(document.getElementById("pocket_encrypt").value == "no"){
  get_by_id("security_method").value = 0;
  dF.wlan_encrypt.value = 0;
 }
 else if(document.getElementById("pocket_encrypt").value == "WEP"){
  get_by_id("security_method").value = 1;
  dF.wlan_encrypt.value = 1;
 }
 else if(document.getElementById("pocket_encrypt").value.indexOf("WPA2") != -1){
  get_by_id("security_method").value = 4;
  dF.wlan_encrypt.value = 4;
  {
   dF.wpaAuth[0].checked=false;
   dF.wpaAuth[1].checked=true;
  }
  if(document.getElementById("pocket_wpa2_tkip_aes").value.indexOf("aes")!=-1){
   dF.wpa2ciphersuite_t.checked=false;
   dF.wpa2ciphersuite_a.checked=true;
   dF.wpa2_tkip_aes.value = 2;
  }
  else if(document.getElementById("pocket_wpa2_tkip_aes").value.indexOf("tkip")!=-1){
   dF.wpa2ciphersuite_t.checked=true;
   dF.wpa2ciphersuite_a.checked=false;
   dF.wpa2_tkip_aes.value = 1;
  }
  else{
   alert("Error: not supported wpa2 cipher suite. ");
  }
 }
 else if(document.getElementById("pocket_encrypt").value.indexOf("WPA") != -1){
  get_by_id("security_method").value = 2;
  dF.wlan_encrypt.value = 2;
  {
   dF.wpaAuth[0].checked=false;
   dF.wpaAuth[1].checked=true;
  }
  if(document.getElementById("pocket_wpa_tkip_aes").value.indexOf("aes")!=-1){
   dF.ciphersuite_t.checked=false;
   dF.ciphersuite_a.checked=true;
   dF.wpa_tkip_aes.value = 2;
  }
  else if(document.getElementById("pocket_wpa_tkip_aes").value.indexOf("tkip")!=-1){
   dF.ciphersuite_t.checked=true;
   dF.ciphersuite_a.checked=false;
   dF.wpa_tkip_aes.value = 1;
  }
  else{
   alert("Error: not supported wpa cipher suite.");
  }
 }
 else{
  alert("Error: not supported encrypt.");
 }
 show_authentication();
 enableButton(dF.connect);
}
function enableConnect(selId)
{
 if(document.getElementById("select"))
  document.getElementById("select").value = "sel"+selId;
 if(document.getElementById("pocket_ssid"))
  document.getElementById("pocket_ssid").value = document.getElementById("selSSID_"+selId).value;
 if(document.getElementById("pocketAP_ssid"))
  document.getElementById("pocketAP_ssid").value = document.getElementById("selSSID_"+selId).value;
  document.getElementById("pocket_encrypt").value = document.getElementById("selEncrypt_"+selId).value;
  if(document.getElementById("pocket_wpa_tkip_aes"))
  document.getElementById("pocket_wpa_tkip_aes").value = document.getElementById("wpa_tkip_aes_"+selId).value;
  if(document.getElementById("pocket_wpa2_tkip_aes"))
  document.getElementById("pocket_wpa2_tkip_aes").value = document.getElementById("wpa2_tkip_aes_"+selId).value;
  if(document.wizardPocketGW)
  {
   if(document.getElementById("wpa_tkip_aes_"+selId).value == "aes/tkip")
    document.wizardPocketGW.elements["ciphersuite0"].value = "aes";
   else if(document.getElementById("wpa_tkip_aes_"+selId).value == "tkip")
    document.wizardPocketGW.elements["ciphersuite0"].value = "tkip";
   else if(document.getElementById("wpa_tkip_aes_"+selId).value == "aes")
    document.wizardPocketGW.elements["ciphersuite0"].value = "aes";
   if(document.getElementById("wpa2_tkip_aes_"+selId).value == "aes/tkip")
    document.wizardPocketGW.elements["wpa2ciphersuite0"].value = "aes";
   else if(document.getElementById("wpa2_tkip_aes_"+selId).value == "tkip")
    document.wizardPocketGW.elements["wpa2ciphersuite0"].value = "tkip";
   else if(document.getElementById("wpa2_tkip_aes_"+selId).value == "aes")
    document.wizardPocketGW.elements["wpa2ciphersuite0"].value = "aes";
  }
  connectEnabled=1;
  enableButton(document.forms[0].next);
}
function connectClick(obj)
{
  if (connectEnabled==1){
   obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
  }
  else
   return false;
}
function updateState()
{
  if (document.formWlSiteSurvey.wlanDisabled.value == 1) {
 disableButton(document.formWlSiteSurvey.refresh);
 disableButton(document.formWlSiteSurvey.next);
 disableButton(document.formWlSiteSurvey.connect);
  }
}
function backClick()
{
 var dF=document.forms[0];
 get_by_id("wlan_security_div").style.display="none";
 get_by_id("top_div").style.display="";
 dF.ciphersuite_t.checked=false;
 dF.ciphersuite_a.checked=false;
 dF.wpa2ciphersuite_t.checked=false;
 dF.wpa2ciphersuite_a.checked=false;
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
 return true;
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
</script>
</head>
<body>
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
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/> WLAN Site Survey</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 This page provides tool to scan the wireless network. If any Access Point or IBSS is found, you could choose to connect it manually when client mode is enabled
 </div>
</div>
<form action=/boaform/admin/formWlSiteSurvey method=POST name="formWlSiteSurvey">
<input type=hidden name="wlanDisabled" value=0>
<input type=hidden id="pocket_encrypt" name="pocket_encrypt" value="">
<input type=hidden id="pocket_wpa_tkip_aes" name="pocket_wpa_tkip_aes" value="">
<input type=hidden id="pocket_wpa2_tkip_aes" name="pocket_wpa2_tkip_aes" value="">
<input type=hidden id="wlan_encrypt" name="wlan_encrypt" value="">
<input type=hidden id="wpa_tkip_aes" name="wpa_tkip_aes" value="">
<input type=hidden id="wpa2_tkip_aes" name="wpa2_tkip_aes" value="">
<input type=hidden id="select" name="select" value="">
<span id = "top_div">
<div class="data_vertical data_common_notitle">
  <div class="data_common ">
  <table>
   <tr><th width="30%">SSID</th>
<th width="20%">BSSID</th>
<th width="10%">Channel</th>
<th width="10%">Type</th>
<th width="10%">Encryption</th>
<th width="10%">Signal(%)</th>
</tr>

  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="submit" value="Refresh" name="refresh" onClick="return on_submit(this)" class="link_bg">&nbsp;&nbsp;
 <!--input type="button" value="Next Step" name="next" onClick="saveClickSSID()" class="link_bg"-->
</div>
</span>
<span id = "wlan_security_div" style="display:none">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th>Encryption:&nbsp;
    <select size="1" id="security_method" name="security_method" onChange="show_authentication()">
     <option value=0>NONE</option>
<option value=1>WEP</option>
<option value=2>WPA</option>
<option value=4>WPA2</option>
<option value=6>WPA2 Mixed</option>

    </select>
   </th>
  </tr>
  <tr id="enable_8021x" style="display:none">
   <th>802.1x Authentication:</th>
   <td>
    <input type="checkbox" id="use1x" name="use1x" value="ON" onClick="show_8021x_settings()">
   </td>
  </tr>
  <tr id="show_wep_auth" style="display:none">
   <th>Authentication:</th>
   <td>
    <input name="auth_type" type=radio value="open" checked>Open System
    <input name="auth_type" type=radio value="shared">Shared Key
    <input name="auth_type" type=radio value="both">Auto
   </td>
  </tr>
  </table>
  <table id="setting_wep" style="display:none">
   <input type="hidden" name="wepEnabled" value="ON" checked>
   <tr>
    <th>Key Length:</th>
    <td>
     <select size="1" name="length0" id="key_length" onChange="updateWepFormat(document.formWlSiteSurvey, 0)">
      <option value=1> 64-bit</option>
      <option value=2>128-bit</option>
     </select>
    </td>
   </tr>
   <tr>
    <th>Key Format:</th>
    <td>
     <select id="key_format" name="format0" onChange="setDefaultKeyValue(document.formWlSiteSurvey, 0)">
     <option value="1">ASCII</option>
     <option value="2">Hex</option>
     </select>
    </td>
   </tr>
   <tr>
    <th>Encryption Key:</th>
    <td>
     <input type="text" id="key" name="key0" maxlength="26" size="26" value="">
    </td>
   </tr>
 </table>
 <table>
  <tr id="setting_wpa" style="display:none">
   <th>Authentication Mode:</th>
   <td>
    <input name="wpaAuth" type="radio" value="eap" onClick="show_wpa_settings()">Enterprise (RADIUS)
    <input name="wpaAuth" type="radio" value="psk" onClick="show_wpa_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_wpa_cipher" style="display:none">
   <th>WPA Cipher Suite:</th>
   <td>
    <input type="checkbox" name="ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa2_cipher" style="display:none">
   <th>WPA2 Cipher Suite:</th>
   <td>
    <input type="checkbox" name="wpa2ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="wpa2ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa_psk1" style="display:none">
   <th>Pre-Shared Key Format:</th>
   <td>
    <select id="psk_fmt" name="pskFormat" onChange="">
     <option value="0">Passphrase</option>
     <option value="1">HEX (64 characters)</option>
    </select>
   </td>
  </tr>
  <tr id="show_wpa_psk2" style="display:none">
   <th>Pre-Shared Key:</th>
   <td><input type="password" name="pskValue" id="wpapsk" size="32" maxlength="64" value="">
   </td>
  </tr>
  <tr id="setting_wapi" style="display:none">
   <th >Authentication Mode:</th>
   <td>
    <input name="wapiAuth" type="radio" value="eap" onClick="show_wapi_settings()">Enterprise (AS Server)
    <input name="wapiAuth" type="radio" value="psk" onClick="show_wapi_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_wapi_psk1" style="display:none">
   <th>Pre-Shared Key Format:</th>
   <td>
    <select id="wapi_psk_fmt" name="wapiPskFormat" onChange="">
     <option value="0">Passphrase</option>
     <option value="1">HEX (64 characters)</option>
    </select>
   </td>
  </tr>
  <tr id="show_wapi_psk2" style="display:none">
   <th>Pre-Shared Key:</th>
   <td><input type="password" name="wapiPskValue" id="wapipsk" size="32" maxlength="64" value="">
   </td>
  </tr>
  <tr id="show_1x_wep" style="display:none">
   <th>Key Length:</th>
   <td>
    <input name="wepKeyLen" type="radio" value="wep64">64 Bits
    <input name="wepKeyLen" type="radio" value="wep128">128 Bits
   </td>
  </tr>
 </table>
 <table id="show_8021x_eap" style="display:none">
   <tr>
    <th>RADIUS Server IP Address:</th>
    <td><input id="radius_ip" name="radiusIP" size="16" maxlength="15" value="0.0.0.0"></td>
   </tr>
   <tr>
    <th>RADIUS Server Port:</th>
    <td><input type="text" id="radius_port" name="radiusPort" size="5" maxlength="5" value="1812"></td>
   </tr>
   <tr>
    <th>RADIUS Server Password:</th>
    <td><input type="password" id="radius_pass" name="radiusPass" size="32" maxlength="64" value="12345"></td>
   </tr>
 </table>
 <table id="show_8021x_wapi" style="display:none">
   <tr id="show_8021x_wapi_local_as" style="">
    <th>Use Local AS Server:</th>
    <td>
     <input type="checkbox" id="uselocalAS" name="uselocalAS" value="ON" onClick="show_wapi_ASip()">
    </td>
   </tr>
   <tr>
    <th>AS Server IP Address:</th>
    <td><input id="wapiAS_ip" name="wapiASIP" size="16" maxlength="15" value="0.0.0.0"></td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="button" value="Back" name="back" onClick="return backClick()">
 <input class="link_bg" type="submit" value="Connect" name="connect" onClick="return connectClick(this)">
 <input type="hidden" value="/admin/wlsurvey.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=1>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</span>
<script>
 document.formWlSiteSurvey.refresh.disabled = false;

 updateState();
</script>
</form>
</body>
</html>

<% SendWebHeadStr();%>
<title><% multilang("726" "LANG_WLAN_SITE_SURVEY"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<style>
  /* General body styling */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  /* Intro section styling */
  .intro_main {
      padding: 15px;
      background-color: #fff;
      border-bottom: 1px solid #ddd;
  }
  
  .intro_title {
      font-size: 24px;
     
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      font-size: 12px;
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
      margin: 15px;
      padding: 15px;
      background-color: #fff;
  }
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: center;
      font-size: 12px;
      color: #333;
      padding: 10px;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 10px;
      font-size: 12px;
      color: #333;
      
  }
  
  .data_common input[type="text"],
  .data_common select {
      width: 200px;
      
      height: 28px;
      font-size: 12px;
      box-sizing: border-box;
  }
  
  /* Checkbox styling */
  .data_common input[type="checkbox"] {
      transform: scale(1.2);
      margin-right: 10px;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin-top: 15px;
  }
  
  .link_bg {
      height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #f58220;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .link_bg:hover {
      background-color: #eee;
      color: #f58220;
  }
  
  table {
    width: 100%;
    border-collapse: collapse;
    border: 0.5px solid #ccc; /* Very thin border for the table */
    table-layout: fixed;
}

th, td {
    border: 0.5px solid #ccc; /* Very thin border for table cells */
    padding: 10px;
    text-align: left;
}
th {
    background-color: #f2f2f2; /* Light grey background for table headers */
    font-weight: bold;
    font-size: 14px;
    color: #333;
    text-align: center;
}
.list_header ul{
    display: flex;
    gap: 110px;
    list-style: none;
    margin-top: 1px;
    margin-left: -22px;
    font-size: 15px;
  }
  .list_header ul a{
    text-decoration: none;
    color: #f58220;
    border-bottom: 2px solid transparent;
    transition: color 0.3s, border-bottom 0.3s;
  }
  .list_header ul a:hover, .list_header ul a.active{
    color: #f58220;
    border-bottom: 2px solid #f58220;
  }
  </style>
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
   alert("<% multilang("2519" "LANG_ERROR_NOT_SUPPORTED_WPA2_CIPHER_SUITE"); %>");
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
   alert("<% multilang("2520" "LANG_ERROR_NOT_SUPPORTED_WPA_CIPHER_SUITE"); %>");
  }
 }
 else{
  alert("<% multilang("2521" "LANG_ERROR_NOT_SUPPORTED_ENCRYPT"); %>");
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
<div class="breadcrum_box"> <ul><li><a href="#">Wi-Fi</a></li><li>Wlan Site Survey</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

  <div class="list_header"> 
    <ul>
      <li><a href="wlbasic.asp">WlBaisic</a></li>
      <li><a href="wladvanced.asp"><% multilang("9", "LANG_ADVANCED_SETTINGS") %></a></li>
      <li><a href="wlwpa.asp" ><% multilang("1259", "LANG_SECURITY") %></a></li>
      <li><a href="wlactrl.asp"><% multilang("1261", "LANG_ACCESS_CONTROL") %></a></li>
      <li><a href="wlsurvey.asp" class="active"><% multilang("1266", "LANG_SITE_SURVEY") %></a></li>
      <li><a href="wlwps.asp"><% multilang("1267", "LANG_WPS") %></a></li>
    </ul>
  </div>
<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><img src="/img/wi-fi.png" style="width:38px;"> <p class="intro_title"><% multilang("726" "LANG_WLAN_SITE_SURVEY"); %></p></div>

 <p class="intro_content"><% multilang("727" "LANG_THIS_PAGE_PROVIDES_TOOL_TO_SCAN_THE_WIRELESS_NETWORK_IF_ANY_ACCESS_POINT_OR_IBSS_IS_FOUND_YOU_COULD_CHOOSE_TO_CONNECT_IT_MANUALLY_WHEN_CLIENT_MODE_IS_ENABLED"); %></p>
</div>
<form action=/boaform/admin/formWlSiteSurvey method=POST name="formWlSiteSurvey">
<input type=hidden name="wlanDisabled" value=<% getInfo("wlanDisabled"); %>>
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
   <% wlSiteSurveyTbl(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)" class="link_bg">&nbsp;&nbsp;
 <!--input type="button" value="<% multilang("1232" "LANG_NEXT_STEP"); %>" name="next" onClick="saveClickSSID()" class="link_bg"-->
</div>
</span>
<span id = "wlan_security_div" style="display:none">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("201" "LANG_ENCRYPTION"); %>:&nbsp;
    <select size="1" id="security_method" name="security_method" onChange="show_authentication()">
     <% checkWrite("wifiClientSecurity"); %>
    </select>
   </th>
  </tr>
  <tr id="enable_8021x" style="display:none">
   <th>802.1x <% multilang("202" "LANG_AUTHENTICATION"); %>:</th>
   <td>
    <input type="checkbox" id="use1x" name="use1x" value="ON" onClick="show_8021x_settings()">
   </td>
  </tr>
  <tr id="show_wep_auth" style="display:none">
   <th><% multilang("202" "LANG_AUTHENTICATION"); %>:</th>
   <td>
    <input name="auth_type" type=radio value="open" checked><% multilang("203" "LANG_OPEN_SYSTEM"); %>
    <input name="auth_type" type=radio value="shared"><% multilang("204" "LANG_SHARED_KEY"); %>
    <input name="auth_type" type=radio value="both"><% multilang("169" "LANG_AUTO"); %>
   </td>
  </tr>
  </table>
  <table id="setting_wep" style="display:none">
   <input type="hidden" name="wepEnabled" value="ON" checked>
   <tr>
    <th><% multilang("205" "LANG_KEY_LENGTH"); %>:</th>
    <td>
     <select size="1" name="length0" id="key_length" onChange="updateWepFormat(document.formWlSiteSurvey, 0)">
      <option value=1> 64-bit</option>
      <option value=2>128-bit</option>
     </select>
    </td>
   </tr>
   <tr>
    <th><% multilang("206" "LANG_KEY_FORMAT"); %>:</th>
    <td>
     <select id="key_format" name="format0" onChange="setDefaultKeyValue(document.formWlSiteSurvey, 0)">
     <option value="1">ASCII</option>
     <option value="2">Hex</option>
     </select>
    </td>
   </tr>
   <tr>
    <th><% multilang("207" "LANG_ENCRYPTION_KEY"); %>:</th>
    <td>
     <input type="text" id="key" name="key0" maxlength="26" size="26" value="">
    </td>
   </tr>
 </table>
 <table>
  <tr id="setting_wpa" style="display:none">
   <th><% multilang("208" "LANG_AUTHENTICATION_MODE"); %>:</th>
   <td>
    <input name="wpaAuth" type="radio" value="eap" onClick="show_wpa_settings()">Enterprise (RADIUS)
    <input name="wpaAuth" type="radio" value="psk" onClick="show_wpa_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_wpa_cipher" style="display:none">
   <th>WPA <% multilang("209" "LANG_CIPHER_SUITE"); %>:</th>
   <td>
    <input type="checkbox" name="ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa2_cipher" style="display:none">
   <th>WPA2 <% multilang("209" "LANG_CIPHER_SUITE"); %>:</th>
   <td>
    <input type="checkbox" name="wpa2ciphersuite_t" value=1>TKIP&nbsp;
    <input type="checkbox" name="wpa2ciphersuite_a" value=1>AES
   </td>
  </tr>
  <tr id="show_wpa_psk1" style="display:none">
   <th><% multilang("211" "LANG_PRE_SHARED_KEY_FORMAT"); %>:</th>
   <td>
    <select id="psk_fmt" name="pskFormat" onChange="">
     <option value="0">Passphrase</option>
     <option value="1">HEX (64 characters)</option>
    </select>
   </td>
  </tr>
  <tr id="show_wpa_psk2" style="display:none">
   <th><% multilang("212" "LANG_PRE_SHARED_KEY"); %>:</th>
   <td><input type="password" name="pskValue" id="wpapsk" size="32" maxlength="64" value="">
   </td>
  </tr>
  <tr id="setting_wapi" style="display:none">
   <th ><% multilang("208" "LANG_AUTHENTICATION_MODE"); %>:</th>
   <td>
    <input name="wapiAuth" type="radio" value="eap" onClick="show_wapi_settings()">Enterprise (AS Server)
    <input name="wapiAuth" type="radio" value="psk" onClick="show_wapi_settings()">Personal (Pre-Shared Key)
   </td>
  </tr>
  <tr id="show_wapi_psk1" style="display:none">
   <th><% multilang("211" "LANG_PRE_SHARED_KEY_FORMAT"); %>:</th>
   <td>
    <select id="wapi_psk_fmt" name="wapiPskFormat" onChange="">
     <option value="0">Passphrase</option>
     <option value="1">HEX (64 characters)</option>
    </select>
   </td>
  </tr>
  <tr id="show_wapi_psk2" style="display:none">
   <th><% multilang("212" "LANG_PRE_SHARED_KEY"); %>:</th>
   <td><input type="password" name="wapiPskValue" id="wapipsk" size="32" maxlength="64" value="">
   </td>
  </tr>
  <tr id="show_1x_wep" style="display:none">
   <th><% multilang("205" "LANG_KEY_LENGTH"); %>:</th>
   <td>
    <input name="wepKeyLen" type="radio" value="wep64">64 Bits
    <input name="wepKeyLen" type="radio" value="wep128">128 Bits
   </td>
  </tr>
 </table>
 <table id="show_8021x_eap" style="display:none">
   <tr>
    <th>RADIUS <% multilang("91" "LANG_SERVER"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
    <td><input id="radius_ip" name="radiusIP" size="16" maxlength="15" value="0.0.0.0"></td>
   </tr>
   <tr>
    <th>RADIUS <% multilang("91" "LANG_SERVER"); %> <% multilang("213" "LANG_PORT"); %>:</th>
    <td><input type="text" id="radius_port" name="radiusPort" size="5" maxlength="5" value="1812"></td>
   </tr>
   <tr>
    <th>RADIUS <% multilang("91" "LANG_SERVER"); %> <% multilang("67" "LANG_PASSWORD"); %>:</th>
    <td><input type="password" id="radius_pass" name="radiusPass" size="32" maxlength="64" value="12345"></td>
   </tr>
 </table>
 <table id="show_8021x_wapi" style="display:none">
   <tr id="show_8021x_wapi_local_as" style="">
    <th><% multilang("214" "LANG_USE_LOCAL_AS_SERVER"); %>:</th>
    <td>
     <input type="checkbox" id="uselocalAS" name="uselocalAS" value="ON" onClick="show_wapi_ASip()">
    </td>
   </tr>
   <tr>
    <th>AS <% multilang("91" "LANG_SERVER"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
    <td><input id="wapiAS_ip" name="wapiASIP" size="16" maxlength="15" value="0.0.0.0"></td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="button" value="<% multilang("1233" "LANG_BACK"); %>" name="back" onClick="return backClick()">
 <input class="link_bg" type="submit" value="<% multilang("98" "LANG_CONNECT"); %>" name="connect" onClick="return connectClick(this)">
 <input type="hidden" value="/wlsurvey.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=<% checkWrite("wlan_idx"); %>>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</span>
<script>
 <% initPage("wlsurvey"); %>
 updateState();
</script>
</form>
</body>
</html>

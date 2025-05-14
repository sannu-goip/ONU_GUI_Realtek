<% SendWebHeadStr();%>
<title><% multilang("227" "LANG_WI_FI_PROTECTED_SETUP"); %></title>
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
      padding: 2px 15px;
      background-color: #fff;
  }
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 12px;
      color: #333;
      padding: 9px;
      font-weight: 300;
  }
  
  .data_common td {
      
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
  .inner_btn {
      text-align: right;
      margin-top: 15px;
  }
  
  .inner_btn {
      height: 25px;
      background-color: #f58220;
      color: white;
      border: 1px solid #eee;
      border-radius: 3px;
     /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .inner_btn:hover {
    border: 1px solid #f58220;
      background-color: #eee;
      color: #f58220;
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
<style>
.on {display:on}
.off {display:none}
</style>
<script>
var wps20;
var wps_version_configurable;
var isClient;
var isConfig;
var hidden_ssid=<% getInfo("hidden_ssid"); %>;
var wpa_cipher=<% getInfo("wpa_cipher"); %>;
var wpa2_cipher=<% getInfo("wpa2_cipher"); %>;
var encrypt=<% getInfo("encrypt"); %>;
var enable1x=<% getInfo("enable1X"); %>;
var wpa_auth=<% getInfo("wpaAuth"); %>;
var mode=<% getInfo("wlanMode"); %>;
var is_adhoc=<% getInfo("networkType"); %>;
var autolockdown_stat=<% getInfo("lockdown_stat"); %>;
var wpsUseVersion=<% getInfo("wpsUseVersion"); %>;
var wpa3_disable_wps;
var warn_msg1='WPS was disabled automatically because wireless mode setting could not be supported. ' +
    'You need go to Wireless/Basic page to modify settings to enable WPS.';
var warn_msg2='WPS was disabled automatically because Radius Authentication could not be supported. ' +
    'You need go to Wireless/Security page to modify settings to enable WPS.';
var warn_msg3="PIN number was generated. You have to click \'Apply Changes\' button to make change effectively.";
var warn_msg4='WPS was disabled automatically because broadcast SSID is disabled. ' +
    'You need go to Wireless/Advanced Settings page to modify settings to enable WPS.';
var warn_msg5='WPS was disabled automatically because Encryption type could not be WEP. ' +
    'You need go to Wireless/Security page to modify settings to enable WPS.';
var warn_msg6='WPS was disabled automatically because WPA only or TKIP only is not supported. ' +
    'You need go to Wireless/Security page to modify settings to enable WPS.';
var warn_msg7='WPS was disabled automatically because WPA3 only is not supported. ' +
    'You need go to Wireless/Security page to modify settings to enable WPS.';
var disable_all=0;
function noenter(e)
{
 if (window.event)
  return !(e.keyCode == 13);
 else if (e.which)
  return !(e.which == 13);
}
function triggerPBCClicked(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
}
function unlockdownClicked(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function triggerPINClicked(obj)
{
 if(saveChangesWPS(document.formWsc))
 {
  document.formWsc.save.isclick = 0;
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function compute_pin_checksum(val)
{
 var accum = 0;
 var code = parseInt(val)*10;
 accum += 3 * (parseInt(code / 10000000) % 10);
 accum += 1 * (parseInt(code / 1000000) % 10);
 accum += 3 * (parseInt(code / 100000) % 10);
 accum += 1 * (parseInt(code / 10000) % 10);
 accum += 3 * (parseInt(code / 1000) % 10);
 accum += 1 * (parseInt(code / 100) % 10);
 accum += 3 * (parseInt(code / 10) % 10);
 accum += 1 * (parseInt(code / 1) % 10);
 var digit = (parseInt(accum) % 10);
 return ((10 - digit) % 10);
}
function genPinClicked()
{
 var num_str="1";
 var rand_no;
 var num;
 while (num_str.length != 7) {
  rand_no = Math.random()*1000000000;
  num = parseInt(rand_no, 10);
  num = num%10000000;
  num_str = num.toString();
 }
 num = num*10 + compute_pin_checksum(num);
 num = parseInt(num, 10);
 document.formWsc.elements["localPin"].value = num;
 alert(warn_msg3);
}
function validate_pin_code(code)
{
 var accum=0;
 accum += 3 * (parseInt(code / 10000000) % 10);
 accum += 1 * (parseInt(code / 1000000) % 10);
 accum += 3 * (parseInt(code / 100000) % 10);
 accum += 1 * (parseInt(code / 10000) % 10);
 accum += 3 * (parseInt(code / 1000) % 10);
 accum += 1 * (parseInt(code / 100) % 10);
 accum += 3 * (parseInt(code / 10) % 10);
 accum += 1 * (parseInt(code / 1) % 10);
 return (0 == (accum % 10));
}
function check_pin_code(str)
{
 var i;
 var code_len;
 code_len = str.length;
 if (code_len != 8 && code_len != 4)
  return 1;
 for (i=0; i<code_len; i++) {
  if ((str.charAt(i) < '0') || (str.charAt(i) > '9'))
   return 2;
 }
 if (code_len == 8) {
  var code = parseInt(str, 10);
  if (!validate_pin_code(code))
   return 3;
  else
   return 0;
 }
 else
  return 0;
}
function setPinClicked(form)
{
 var ret;
 var str = form.elements["peerPin"].value;
 form.elements["peerPin"].value = str.replace(/[(\s)-]/g, "");
 ret = check_pin_code(form.elements["peerPin"].value);
 if (ret == 1) {
  alert('<% multilang("2551" "LANG_INVALID_ENROLLEE_PIN_LENGTH_THE_DEVICE_PIN_IS_USUALLY_FOUR_OR_EIGHT_DIGITS_LONG"); %>');
  form.peerPin.focus();
  return false;
 }
 else if (ret == 2) {
  alert('<% multilang("2552" "LANG_INVALID_ENROLLEE_PIN_ENROLLEE_PIN_MUST_BE_NUMERIC_DIGITS"); %>');
  form.peerPin.focus();
  return false;
 }
 else if (ret == 3) {
  if ( !confirm('<% multilang("2578" "LANG_CHECKSUM_FAILED_USE_PIN_ANYWAY"); %>') ) {
   form.peerPin.focus();
   return false;
    }
 }
 form.setPIN.isclick = 1;
 postTableEncrypt(form.postSecurityFlag, form);
 return true;
}
function checkWPSstate(form)
{
 if (autolockdown_stat && !form.elements["disableWPS"].checked) {
  enableButton(form.elements["unlockautolockdown"]);
 }else{
  disableButton(form.elements["unlockautolockdown"]);
 }
 if (disable_all || form.elements["wlanDisabled"].value == "ON") {
  disableCheckBox(form.elements["disableWPS"]);
  disableButton(form.elements["save"]);
  disableButton(form.elements["reset"]);
 }
 if (disable_all || form.elements["disableWPS"].checked || form.elements["wlanDisabled"].value == "ON") {
   disableTextField(form.elements["localPin"]);
   disableTextField(form.elements["peerPin"]);
   disableButton(form.elements["setPIN"]);
  disableButton(form.elements["triggerPIN"]);
  disableButton(form.elements["triggerPBC"]);
  disableButton(form.elements["genPIN"]);
   }
 else {
  enableTextField(form.elements["localPin"]);
  enableTextField(form.elements["peerPin"]);
   enableButton(form.elements["setPIN"]);
  enableButton(form.elements["genPIN"]);
  enableButton(form.elements["triggerPIN"]);
  enableButton(form.elements["triggerPBC"]);
 }
 disableRadioGroup(form.elements["config"]);
 return true;
}
function saveChangesWPS(form)
{
 var wps_enc_status;
 var str = form.elements["localPin"].value;
 form.elements["localPin"].value = str.replace(/[(\s)-]/g, "");
 ret = check_pin_code(form.elements["localPin"].value);
 if (ret == 1) {
  alert('<% multilang("2553" "LANG_INVALID_PIN_LENGTH_THE_DEVICE_PIN_IS_USUALLY_FOUR_OR_EIGHT_DIGITS_LONG"); %>');
  form.localPin.focus();
  return false;
 }
 else if (ret == 2) {
  alert('<% multilang("2554" "LANG_INVALID_PIN_THE_DEVICE_PIN_MUST_BE_NUMERIC_DIGITS"); %>');
  form.localPin.focus();
  return false;
 }
 else if (ret == 3) {
  alert('<% multilang("2555" "LANG_INVALID_PIN_CHECKSUM_ERRO"); %>');
  form.localPin.focus();
  return false;
 }
 if (wps20 && wpsUseVersion != 0)
 {
     wps_enc_status = check_wps_enc(encrypt, enable1x, wpa_auth, hidden_ssid, wpa_cipher, wpa2_cipher, wps20, wpa3_disable_wps);
 }
 else
 {
  wps_enc_status = check_wps_enc(encrypt, enable1x, wpa_auth, hidden_ssid, wpa_cipher, wpa2_cipher, wpsUseVersion, wpa3_disable_wps);
 }
 if (wps_enc_status) {
  alert('<% multilang("2556" "LANG_WPS2_0_DOES_NOT_SUPPORT_THIS_ENCRYPTION_MODE"); %>');
  return false;
 }
 form.save.isclick = 1;
 postTableEncrypt(form.postSecurityFlag, form);
 setload();
    return true;
}
function updatewpsUseVersionIndex()
{
 wpsUseVersion=document.formWsc.wpsUseVersion.selectedIndex;
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Wi-Fi</a></li><li>WPS</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

  <div class="list_header"> 
    <ul>
      <li><a href="wlbasic.asp">WlBaisic</a></li>
      <li><a href="wladvanced.asp"><% multilang("9", "LANG_ADVANCED_SETTINGS") %></a></li>
      <li><a href="wlwpa.asp" ><% multilang("1259", "LANG_SECURITY") %></a></li>
      <li><a href="wlactrl.asp"><% multilang("1261", "LANG_ACCESS_CONTROL") %></a></li>
      <li><a href="wlsurvey.asp"><% multilang("1266", "LANG_SITE_SURVEY") %></a></li>
      <li><a href="wlwps.asp" class="active"><% multilang("1267", "LANG_WPS") %></a></li>
    </ul>
  </div>
<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><img src="/img/wi-fi.png" style="width:38px;"> <p class="intro_title"><% multilang("227" "LANG_WI_FI_PROTECTED_SETUP"); %></div>
 
 <p class="intro_content"><% multilang("228" "LANG_PAGE_DESC_WPS_SETTING"); %></p>
</div>
<form action=/boaform/formWsc method=POST name="formWsc">
<div class="data_common data_common_notitle">
 <table>
  <input type=hidden name="wlanDisabled" value=<% wlanStatus(); %>>
  <script>
   <% checkWrite("wlanMode"); %>
   <% checkWrite("wpsVer"); %>
   <% checkWrite("wpsVerConfig"); %>
   <% checkWrite("wpa3_disable_wps"); %>
   if (mode == 0 || mode == 3)
   {
    if (wps20)
    {
     disable_all = check_wps_enc(encrypt, enable1x, wpa_auth, hidden_ssid, wpa_cipher, wpa2_cipher, wpsUseVersion, wpa3_disable_wps);
    }
    else
    {
     disable_all = check_wps_enc(encrypt, enable1x, wpa_auth, hidden_ssid, wpa_cipher, wpa2_cipher, wps20, wpa3_disable_wps);
    }
   } else {
    disable_all = check_wps_wlanmode(mode, is_adhoc);
   }
  </script>
  <tr>
   <th width="100%" colspan=3>
    <input type="checkbox" name="disableWPS" value="ON" <% checkWrite("wscDisable"); %> ONCLICK="checkWPSstate(document.formWsc)">&nbsp;&nbsp;<% multilang("229" "LANG_DISABLE_WPS"); %>
   </th>
  </tr>
  <script>
   if (isClient) {
    document.write("</table>\n");
    document.write("<span id = \"hide_div\" class = \"off\">\n");
    document.write("<table border=\"0\" width=500>\n");
   }
  </script>
  <tr>
   <th width="40%">WPS <% multilang("3" "LANG_STATUS"); %>:</th>
   <td width="60%">
    <input type="radio" name="config" value="on" <% checkWrite("wscConfig-1"); %>><% multilang("230" "LANG_CONFIGURED"); %>&nbsp;&nbsp;
    <input type="radio" name="config" value="off" <% checkWrite("wscConfig-0"); %>><% multilang("231" "LANG_UNCONFIGURED"); %>
   </td>
  </tr>
  <script>
   if (isClient) {
    document.write("</table>\n");
    document.write("</span>\n");
    document.write("<table border=\"0\" width=500>\n");
   }
  </script>
  <script>
   if (wps20 && wps_version_configurable)
    document.write("<tr>");
   else
    document.write("<tr style=\"display: none;\">");
  </script>
   <th width="40%">WPS <% multilang("704" "LANG_VERSION"); %>:</th>
   <td width="60%">
    <select size="1" name="wpsUseVersion" onChange="updatewpsUseVersionIndex()"><% checkWrite("wpsUseVersion"); %></select>
    <SCRIPT>document.formWsc.wpsUseVersion.selectedIndex = wpsUseVersion;</SCRIPT>
   </td>
  </tr>
 <!-- for brute force attack unlock -->
  <tr <% checkWrite("wlan_qtn_hidden_function"); %>>
   <th width="40%"><% multilang("232" "LANG_AUTO_LOCK_DOWN_STATE"); %>:</th>
   <td width="60%">
   <script>
    if (autolockdown_stat) {
     document.write("<% multilang("233" "LANG_LOCKED"); %>");
    }else{
     document.write("<% multilang("234" "LANG_UNLOCKED"); %>");
    }
   </script>
   &nbsp;&nbsp;
     <input type="submit" value="<% multilang("235" "LANG_UNLOCK"); %>" name="unlockautolockdown" onClick="return unlockdownClicked(this)" class="inner_btn">
   </td>
  </tr>
  <tr>
   <th width="40%"><% multilang("236" "LANG_SELF_PIN_NUMBER"); %>:</th>
   <td width="60%"><input type="text" name="localPin" size="12" maxlength="10" onkeypress="return noenter(event)" value=<% getInfo("wscLoocalPin"); %>>
    &nbsp;&nbsp;<input type="button" value="<% multilang("237" "LANG_REGENERATE_PIN"); %>" name="genPIN" onClick="return genPinClicked()" class="inner_btn">
   </td>
  </tr>
  <script>
    if (!isClient) {
   document.write("</table>\n");
   document.write("<span id = \"hide_div\" class = \"off\">\n");
   document.write("<table>\n");
    }
  </script>
  <tr>
   <th width="40%">PIN <% multilang("238" "LANG_CONFIGURATION"); %>:</th>
   <td width="60%">
    <input type="submit" value="<% multilang("239" "LANG_START_PIN"); %>" name="triggerPIN" onClick="return triggerPINClicked(this)" class="inner_btn">
   </td>
  </tr>
  <script>
    if (!isClient) {
   document.write("</table>\n");
   document.write("</span>\n");
   document.write("<table border=\"0\" width=500>\n");
    }
  </script>
  <tr>
   <th width="40%"><% multilang("240" "LANG_PUSH_BUTTON"); %> <% multilang("238" "LANG_CONFIGURATION"); %>:</th>
   <td width="60%">
    <input type="submit" value="<% multilang("241" "LANG_START_PBC"); %>" name="triggerPBC" onClick="return triggerPBCClicked(this)" class="inner_btn">
   </td>
  </tr>
  <input type="hidden" value="/wlwps.asp" name="submit-url">
  <tr>
   <td width="100%" colspan="2" style="text-align: right;">
    <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChangesWPS(document.formWsc)" class="inner_btn">&nbsp;&nbsp;
    <input type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset" class="inner_btn">
   </td>
  </tr>
  <script>
   if (disable_all) {
     document.write("<tr><td colspan=\"2\" height=\"55\"><font size=2><em>");
    if (disable_all == 1)
     document.write(warn_msg1);
    else if(disable_all == 2)
     document.write(warn_msg2);
    else if(disable_all == 4)
     document.write(warn_msg4);
    else if(disable_all == 5)
     document.write(warn_msg5);
    else if(disable_all == 6)
     document.write(warn_msg6);
    else if(disable_all == 7)
     document.write(warn_msg7);
    document.write("</td></tr>");
   }
  </script>
 </table>
</div>
<script>
    <% checkWrite("wscConfig-A"); %>
 if (isClient || !isConfig)
  document.write("<span id = \"hide_div\" class = \"off\">\n");
</script>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <div class="intro_main" style="margin-top: -20px;"><p class="intro_title"><% multilang("242" "LANG_CURRENT_KEY_INFO"); %></p></div>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table id="design_table" style=" width: 100%; border-collapse: collapse; border: 0.5px solid #ccc;">
   <tr>
    <th width="30%" style="border: 0.5px solid #ccc; padding: 10px; text-align: left; background-color: #f2f2f2; font-weight: bold; font-size: 14px; color: #333;"><% multilang("202" "LANG_AUTHENTICATION"); %></th>
    <th width="20%" style="border: 0.5px solid #ccc; padding: 10px; text-align: left; background-color: #f2f2f2; font-weight: bold; font-size: 14px; color: #333;"><% multilang("201" "LANG_ENCRYPTION"); %></th>
    <th colspan=2 style="border: 0.5px solid #ccc; padding: 10px; text-align: left; background-color: #f2f2f2; font-weight: bold; font-size: 14px; color: #333;"><% multilang("243" "LANG_KEY"); %></th>
   </tr>
   <tr>
    <td width="30%" style="border: 0.5px solid #ccc; padding: 10px; text-align: left;">
     <% checkWrite("wps_auth"); %>
    </td>
    <td width="20%" style="border: 0.5px solid #ccc; padding: 10px; text-align: left;">
     <% checkWrite("wps_enc"); %>
    </td>
    <td width="30%" style="border: 0.5px solid #ccc; padding: 10px; text-align: left;">
     <% getInfo("wps_key"); %>
    </td>
   </tr>
  </table>
 </div>
</div>
<script>
  if (isClient || !isConfig) {
 document.write("</span>\n");
  }
  if (isClient)
 document.write("<span id = \"hide_div\" class = \"off\">\n");
</script>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="40%"><% multilang("244" "LANG_CLIENT_PIN_NUMBER"); %>:</th>
   <td width="60%"><input type="text" name="peerPin" size="12" maxlength="10" onkeypress="return noenter(event)" value="">&nbsp;&nbsp;
    <input type="submit" value="<% multilang("239" "LANG_START_PIN"); %>" name="setPIN" onClick="return setPinClicked(document.formWsc)" class="inner_btn">
    <input type="hidden" name="wlan_idx" value=<% checkWrite("wlan_idx"); %>>
    <input type="hidden" name="postSecurityFlag" value="">
   </td>
  </tr>
 </table>
</div>
<script>
 if (isClient)
  document.write("</span>\n");
 checkWPSstate(document.formWsc);
</script>
</form>
<br><br>
</body>
</html>

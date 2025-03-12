
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
<!-- JavaScript Files -->
<script src="/Dashboard/JS/jquery.js"></script>
<script src="/Dashboard/JS/menu.js"></script>
<script src="/Dashboard/JS/util.js"></script>
<script src="/Dashboard/JS/printtable.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>Wi-Fi Protected Setup</title>
<script type="text/javascript" src="base64_code.js"></script>
<style>
.on {display:on}
.off {display:none}
</style>
<script>
var wps20;
var wps_version_configurable;
var isClient;
var isConfig;
var hidden_ssid=0;
var wpa_cipher=3;
var wpa2_cipher=3;
var encrypt=6;
var enable1x=0;
var wpa_auth=2;
var mode=0;
var is_adhoc=0;
var autolockdown_stat=0;
var wpsUseVersion=1;
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
  alert('Invalid Enrollee PIN length! The device PIN is usually four or eight digits long.');
  form.peerPin.focus();
  return false;
 }
 else if (ret == 2) {
  alert('Invalid Enrollee PIN! Enrollee PIN must be numeric digits.');
  form.peerPin.focus();
  return false;
 }
 else if (ret == 3) {
  if ( !confirm('Checksum failed! Use PIN anyway?') ) {
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
  alert('Invalid PIN length! The device PIN is usually four or eight digits long.');
  form.localPin.focus();
  return false;
 }
 else if (ret == 2) {
  alert('Invalid PIN! The device PIN must be numeric digits.');
  form.localPin.focus();
  return false;
 }
 else if (ret == 3) {
  alert('Invalid PIN! Checksum error.');
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
  alert('WPS2.0 does not support this encryption mode');
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
    margin-right: -899px;
    margin-left: -15px;
}
.custom-checkbox {
    appearance: none;
    width: 20px;
    height: 20px;
    border: 2px solid #ccc;
    border-radius: 3px;
    position: relative;
    cursor: pointer;
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}

</style>
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
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/> Wi-Fi Protected Setup</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" style="margin-left:-31px; margin-right:-29px"/>
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p>This page allows you to change the setting for WPS (Wi-Fi Protected Setup). Using this feature could let your WLAN client automically syncronize its setting and connect to the Access Point in a minute without any hassle</p>
 </div>
</div>
<form action=/boaform/formWsc method=POST name="formWsc">
<div class="data_common data_common_notitle">
 <table>
  <input type=hidden name="wlanDisabled" value="OFF">
  <script>
   isClient=0;
   wps20 = 1;

   wps_version_configurable = 0;

   wpa3_disable_wps = 0;

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
   <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Disable WPS</label>
                 <input type="checkbox" class="right-field-checkbox" name="disableWPS" value="ON" checked ONCLICK="checkWPSstate(document.formWsc)">
                
            </div>
        </div>
 
  <script>
   if (isClient) {
    document.write("</table>\n");
    document.write("<span id = \"hide_div\" class = \"off\">\n");
    document.write("<table border=\"0\" width=500>\n");
   }
  </script>
            <div class="col-md-12 form-group">
        <div class="custom-control custom-radio">
    <label class="left-field">WPS Status:</label>
   
    <input class="right-field-radio" type="radio" name="config" value="on" checked>Configured&nbsp;&nbsp;
    <input  class="right-field-radio" type="radio" name="config" value="off" >UnConfigured
    </div>
    </div>
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
   <th width="40%">WPS Version:</th>
   <td width="60%">
    <select size="1" name="wpsUseVersion" onChange="updatewpsUseVersionIndex()"><option value=0>V1</option>
<option value=1>V2</option>
</select>
    <SCRIPT>document.formWsc.wpsUseVersion.selectedIndex = wpsUseVersion;</SCRIPT>
   </td>
  </tr>
 <!-- for brute force attack unlock -->
  <div class="col-md-12 form-group">
        <div class="custom-control">
    <label class="left-field">Auto-lock-down state:</label>
   <input type="text" class="right-field" name="localPin" size="12" maxlength="10" onkeypress="return noenter(event)" value=12345670>
   <script>
    if (autolockdown_stat) {
     document.write("Locked");
    }else{
     document.write("Unlocked");
    }
   </script>

   &nbsp;&nbsp;
     <input type="submit" value="Unlock" name="unlockautolockdown" onClick="return unlockdownClicked(this)" class="inner_btn">
   </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field">Self-PIN Number:</label>
   <input type="text" class="right-field" name="localPin" size="12" maxlength="10" onkeypress="return noenter(event)" value=12345670>
    &nbsp;&nbsp;<input type="button" value="Regenerate PIN" name="genPIN" onClick="return genPinClicked()" class="btn orange_border_btn">
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
   <th width="40%">PIN Configuration:</th>
   <td width="60%">
    <input type="submit" value="Start PIN" name="triggerPIN" onClick="return triggerPINClicked(this)" class="inner_btn">
   </td>
  </tr>
  <script>
    if (!isClient) {
   document.write("</table>\n");
   document.write("</span>\n");
   document.write("<table border=\"0\" width=500>\n");
    }
  </script>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label style="width:324px;" class="left-field">Push Button Configuration:</label>

    <input type="submit" value="Start PBC" name="triggerPBC" onClick="return triggerPBCClicked(this)" class="right -field btn orange_border_btn">
      </div>
      </div>
  <input type="hidden" value="/wlwps.asp" name="submit-url">
  <hr class="margin_adjs">
  <div class="form-footer" style="margin-right:-115%">
    <input type="submit" value="Apply Changes" name="save" onClick="return saveChangesWPS(document.formWsc)" class="inner_btn btn orange_btn">&nbsp;&nbsp;
    <input type="reset" value="Reset" name="reset" class="inner_btn btn orange_btn">
    </div>
  
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
    isConfig=1;
 if (isClient || !isConfig)
  document.write("<span id = \"hide_div\" class = \"off\">\n");
</script>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">Current Key Info</h2>
 </div>
</div>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:1500%;text-align:center">
   <tr>
    <th>Authentication</th>
    <th>Encryption</th>
    <th>Key</th>
   </tr>
   <tr>
    <td>
     WPA2-Mixed PSK
    </td>
    <td>
     TKIP+AES
    </td>
    <td>
     12345678
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
<hr class="margin_adjs">
<div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field">Client PIN Number:</label>
  <input class="right-field" type="text" name="peerPin" size="12" maxlength="10" onkeypress="return noenter(event)" value="">&nbsp;&nbsp;
    <input type="submit" value="Start PIN" name="setPIN" onClick="return setPinClicked(document.formWsc)" class="right -field btn orange_border_btn">
    <input type="hidden" name="wlan_idx" value=1>
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
</div>
<div>
</div>
</div>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
<br><br>
</body>
</html>

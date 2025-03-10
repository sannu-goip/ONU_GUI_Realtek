
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

<!-- JavaScript Files -->
<script src="/Dashboard/JS/jquery.js"></script>
<script src="/Dashboard/JS/menu.js"></script>
<script src="/Dashboard/JS/util.js"></script>
<script src="/Dashboard/JS/printtable.js"></script>
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>WLAN Advanced Settings</title>
<script type="text/javascript" src="base64_code.js"></script>
<SCRIPT>
var rootBand=75;
var is_wlan_qtn = 0;
function validateNum(str)
{
  for (var i=0; i<str.length; i++) {
    if ( !(str.charAt(i) >='0' && str.charAt(i) <= '9')) {
  alert("Invalid value. It should be in decimal number (0-9).");
  return false;
   }
  }
  return true;
}
function saveChanges(obj)
{
  if ( validateNum(document.advanceSetup.fragThreshold.value) == 0 ) {
   document.advanceSetup.fragThreshold.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.fragThreshold.value);
  if (document.advanceSetup.fragThreshold.value == "" || num < 256 || num > 2346) {
   alert("Invalid value of Fragment Threshold. Input value should be between 256-2346 in decimal.");
   document.advanceSetup.fragThreshold.focus();
 return false;
  }
  if ( validateNum(document.advanceSetup.rtsThreshold.value) == 0 ) {
   document.advanceSetup.rtsThreshold.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.rtsThreshold.value);
  if (document.advanceSetup.rtsThreshold.value=="" || num > 2347) {
   alert("Invalid value of RTS Threshold. Input value should be between 0-2347 in decimal.");
   document.advanceSetup.rtsThreshold.focus();
 return false;
  }
  if ( validateNum(document.advanceSetup.beaconInterval.value) == 0 ) {
   document.advanceSetup.beaconInterval.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.beaconInterval.value);
  if (document.advanceSetup.beaconInterval.value=="" || num < 20 || num > 1024) {
   alert("Invalid value of Beacon Interval. Input value should be between 20-1024 in decimal.");
   document.advanceSetup.beaconInterval.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.dtimPeriod.value);
  if (document.advanceSetup.dtimPeriod.value=="" || num < 1 || num > 255) {
 alert("Invalid value of DTIM Period. Input value should be between 1-255 in decimal.");
   document.advanceSetup.dtimPeriod.focus();
 return false;
  }
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  setload();
  return true;
}
function wlDot11kChange()
{
 if(document.advanceSetup.elements.namedItem("dot11vEnabled")!= null){
  with (document.advanceSetup) {
   dot11v.style.display = dot11kEnabled[0].checked? "" : "none";
  }
 }
}
function wltxbfChange()
{
 if(document.advanceSetup.elements.namedItem("txbf")!= null){
  with (document.advanceSetup) {
   txbf_mu_div.style.display = txbf[0].checked? "" : "none";
  }
 }
}
function wlRoamingChange()
{
       if(document.advanceSetup.elements.namedItem("SR_AutoConfig_enable")!= null){
               with (document.advanceSetup) {
                       SR_AutoConfig.style.display = smart_roaming_enable[0].checked? "" : "none";
               }
       }
}
function stactrlPreBandChange()
{
 if(document.advanceSetup.elements.namedItem("stactrl_prefer_band")!= null){
  with (document.advanceSetup) {
   stactrl_prefer_band.disabled = sta_control[0].checked? false:true;
   RssiThLow.disabled = sta_control[0].checked? false:true;
   RssiThHigh.disabled = sta_control[0].checked? false:true;
  }
 }
}
function updateState()
{
  if (document.advanceSetup.wlanDisabled.value == "ON") {
    disableTextField(document.advanceSetup.fragThreshold);
    disableTextField(document.advanceSetup.rtsThreshold);
    disableTextField(document.advanceSetup.beaconInterval);
    disableTextField(document.advanceSetup.txRate);
    disableRadioGroup(document.advanceSetup.preamble);
    disableRadioGroup(document.advanceSetup.hiddenSSID);
    disableRadioGroup(document.advanceSetup.block);
    disableRadioGroup(document.advanceSetup.protection);
    disableRadioGroup(document.advanceSetup.aggregation);
    disableRadioGroup(document.advanceSetup.shortGI0);
    if(document.advanceSetup.elements.namedItem("smart_roaming_enable")!= null)
        disableRadioGroup(document.advanceSetup.smart_roaming_enable);
    if(document.advanceSetup.elements.namedItem("txbf")!= null)
  disableRadioGroup(document.advanceSetup.txbf);
    if(document.advanceSetup.elements.namedItem("txbf_mu")!= null)
  disableRadioGroup(document.advanceSetup.txbf_mu);
    if(document.advanceSetup.elements.namedItem("mc2u_disable")!= null)
  disableRadioGroup(document.advanceSetup.mc2u_disable);
 if(document.advanceSetup.elements.namedItem("dot11r_enable")!= null)
  disableRadioGroup(document.advanceSetup.dot11r_enable);
    disableRadioGroup(document.advanceSetup.WmmEnabled);
 if(document.advanceSetup.elements.namedItem("dot11kEnabled")!= null)
  disableRadioGroup(document.advanceSetup.dot11kEnabled);
 if(document.advanceSetup.elements.namedItem("dot11vEnabled")!= null)
  disableRadioGroup(document.advanceSetup.dot11vEnabled);
    disableButton(document.advanceSetup.save);
  }
  else if (document.advanceSetup.WmmEnabled) {
   if (rootBand == 7 || rootBand == 9 || rootBand == 10 || rootBand == 11 || rootBand == 63 || rootBand == 71 || rootBand == 75) {
  document.advanceSetup.WmmEnabled[0].checked = true;
      disableRadioGroup(document.advanceSetup.WmmEnabled);
   }
  }
}
</SCRIPT>
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
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/> WLAN Advanced Settings</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p>These settings are only for more technically advanced users who have a sufficient knowledge about WLAN. These settings should not be changed unless you know what effect the changes will have on your Access Point.</p>
 </div>
</div>
<form action=/boaform/admin/formAdvanceSetup method=POST name="advanceSetup">
 <div class="data_common data_common_notitle">
 <table>
  <input type=hidden name="wlanDisabled" value="OFF">
      <div class="data_common">
       <div class="col-md-12 form-group">
       <div class="custom-control">
       <label class="left-field">Fragment Threshold:</label>
       <input type="text" name="fragThreshold" size="10" maxlength="4" value="2346" class="right-field custom-select" >(256-2346)
       
       </div>
       </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">RTS Threshold:</label>
            <input type="text" class="right-field custom-select"  name="rtsThreshold" size="10" maxlength="4" value=2347>(0-2347)
        </div>
    </div>
    <div class="col-md-12 form-group">
    <div class="custom-control">
        <label class="left-field">Beacon Interval:</label>
       <input type="text"  class="right-field custom-select" name="beaconInterval" size="10" maxlength="4" value=100> (20-1024 ms)</input>
   </div>
   </div>
     <div class="col-md-12 form-group">
       <div class="custom-control">
       <label class="left-field">DTIM Period:</label>
       <input type="text" class="right-field custom-select"  name="dtimPeriod" size="10" maxlength="4" value=1> (1-255)</input>
       </div>
       </div>
      <div class="col-md-12 form-group">
       <div class="custom-control">
       <label class="left-field">Data Rate:</label>
       <select  class="right-field custom-select" size="1" name="txRate">
    <SCRIPT>
     band=76
txrate=1
auto=1
chanwid=2
rf_num=2

     if(!is_wlan_qtn){
      rate_mask = [31,1,1,1,1,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16,16,16,16,16,16,16,16];
      rate_name =["Auto","1M","2M","5.5M","11M","6M","9M","12M","18M","24M","36M","48M","54M", "MCS0", "MCS1",
       "MCS2", "MCS3", "MCS4", "MCS5", "MCS6", "MCS7", "MCS8", "MCS9", "MCS10", "MCS11", "MCS12", "MCS13", "MCS14", "MCS15",
       "MCS16", "MCS17", "MCS18", "MCS19", "MCS20", "MCS21", "MCS22", "MCS23"];
      vht_rate_name=["NSS1-MCS0","NSS1-MCS1","NSS1-MCS2","NSS1-MCS3","NSS1-MCS4",
       "NSS1-MCS5","NSS1-MCS6","NSS1-MCS7","NSS1-MCS8","NSS1-MCS9",
       "NSS2-MCS0","NSS2-MCS1","NSS2-MCS2","NSS2-MCS3","NSS2-MCS4",
       "NSS2-MCS5","NSS2-MCS6","NSS2-MCS7","NSS2-MCS8","NSS2-MCS9",
       "NSS3-MCS0","NSS3-MCS1","NSS3-MCS2","NSS3-MCS3","NSS3-MCS4",
       "NSS3-MCS5","NSS3-MCS6","NSS3-MCS7","NSS3-MCS8","NSS3-MCS9"];
      mask=0;
      if (auto)
       txrate=0;
      if (band & 1)
       mask |= 1;
      if ((band&2) || (band&4))
       mask |= 2;
      if (band & 8) {
       if (rf_num == 3)
        mask |= 28;
       else if (rf_num == 2)
        mask |= 12;
       else
        mask |= 4;
      }
      if(band & 64){
       mask |= 16;
      }
      defidx=0;
      for (idx=0, i=0; i<rate_name.length; i++) {
       if (rate_mask[i] & mask) {
        if (i == 0)
         rate = 0;
        else
         rate = (1 << (i-1));
        if (txrate == rate)
         defidx = idx;
        else if (i>=29 && (txrate == ((1<<28)+(i-29))))
         defidx = idx;
        document.write('<option value="' + i + '">' + rate_name[i] + '\n');
        idx++;
       }
      }
      if(band & 64){
       vht_num = rf_num*10-1;
       for (i=0; i<=vht_num; i++) {
         rate = (((1 << 31)>>>0) + i);
         if (txrate == rate)
          defidx = idx;
         if(chanwid!=0 || (i!=9 && i!=19 && i!=29))
         {
          document.write('<option value="' + (i+37) + '">' + vht_rate_name[i] + '\n');
          idx++;
         }
       }
      }
      document.advanceSetup.txRate.selectedIndex=defidx;
     }
     else{
      idx=0, i=0;
      document.write('<option value="' + (i) + '">' +'Auto'+ '\n');
      idx++;
      defidx=0;
      if ((band & 8) || (band&4)) {
       for (i=1; i<78; i++) {
        if(i!=32){
         if ((txrate+1) == i && !auto)
          defidx = idx;
         document.write('<option value="' + (i) + '">MCS' +(i-1)+ '\n');
         idx++;
        }
       }
      }
      if(band & 64){
       for(j=1;j<5;j++){
        for(i=(j*100); i<(j*100+10);i++){
          if (txrate == i && !auto)
           defidx = idx;
          document.write('<option value="' + (i) + '">NSS'+j+'-MCS' +(i-j*100)+ '\n');
          idx++;
        }
       }
      }
      document.advanceSetup.txRate.selectedIndex=defidx;
     }
    </SCRIPT>
   </select>
      </div>
      </div>
   <!-- for WiFi test, start --
     <tr>
       <td width="30%"><font size=2><b>Tx Operation Rate:</b></td>
       <td width="70%"><font size=2>
         <input type="checkbox" name="operRate1M" value="1M">1M&nbsp;&nbsp;&nbsp;
         <input type="checkbox" name="operRate2M" value="2M">2M&nbsp;&nbsp;
  <input type="checkbox" name="operRate5M" value="5M">5.5M&nbsp;&nbsp;
         <input type="checkbox" name="operRate11M" value="11M">11M&nbsp;&nbsp;
  <input type="checkbox" name="operRate6M" value="6M">6M&nbsp;&nbsp;
         <input type="checkbox" name="operRate9M" value="9M">9M&nbsp;&nbsp;
        <br>
         <input type="checkbox" name="operRate12M" value="12M">12M&nbsp;&nbsp;
         <input type="checkbox" name="operRate18M" value="18M">18M&nbsp;&nbsp;
  <input type="checkbox" name="operRate24M" value="24M">24M&nbsp;&nbsp;
         <input type="checkbox" name="operRate36M" value="36M">36M&nbsp;&nbsp;
  <input type="checkbox" name="operRate48M" value="48M">28M&nbsp;&nbsp;
         <input type="checkbox" name="operRate54M" value="54M">54M&nbsp;&nbsp;
        </td>
     </tr>
     <tr>
       <td width="30%"><font size=2><b>Tx Basic Rate:</b></td>
       <td width="70%"><font size=2>
         <input type="checkbox" name="basicRate1M" value="1M">1M&nbsp;&nbsp;&nbsp;
         <input type="checkbox" name="basicRate2M" value="2M">2M&nbsp;&nbsp;
  <input type="checkbox" name="basicRate5M" value="5M">5.5M&nbsp;&nbsp;
         <input type="checkbox" name="basicRate11M" value="11M">11M&nbsp;&nbsp;
        <input type="checkbox" name="basicRate6M" value="6M">6M&nbsp;&nbsp;
         <input type="checkbox" name="basicRate9M" value="9M">9M&nbsp;&nbsp;
        <br>
         <input type="checkbox" name="basicRate12M" value="12M">12M&nbsp;&nbsp;
         <input type="checkbox" name="basicRate18M" value="18M">18M&nbsp;&nbsp;
   <input type="checkbox" name="basicRate24M" value="24M">24M&nbsp;&nbsp;
          <input type="checkbox" name="basicRate36M" value="36M">36M&nbsp;&nbsp;
   <input type="checkbox" name="basicRate48M" value="48M">28M&nbsp;&nbsp;
          <input type="checkbox" name="basicRate54M" value="54M">54M&nbsp;&nbsp;
         </td>
      </tr>
      <tr>
        <td width="30%"><font size=2><b>DTIM Period:</b></td>
        <td width="70%"><font size=2><input type="text" name="dtimPeriod" size="5" maxlength="3" value=1>(1-255)</td>
      </tr>
  -- for WiFi test, end -->
     <div class="col-md-12 form-group">
        <div class="custom-control">
  
        <label class="left-field">Preamble Type:</label>

<input class="right-field-radio" type="radio" value="long" name="preamble">Long Preamble
<input class="right-field-radio" style="margin-left:125px;" type="radio" name="preamble" value="short">Short Preamble
</div>
</div>
<div class="col-md-12 form-group">
        <div class="custom-control">
  <label class="left-field">Broadcast SSID:</label>
<input class="right-field-radio" type="radio" name="hiddenSSID" value="no">Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="hiddenSSID" value="yes" onClick="alert('If you disable this, WPS will be disabled!')">Disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
   <label class="left-field">Relay Blocking:</label>
<input class="right-field-radio" type="radio" name=block value=1>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name=block value=0>disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">Protection:</label>
<input class="right-field-radio" type="radio" name="protection" value="yes">Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="protection" value="no">disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">Aggregation:</label>
<input class="right-field-radio" type="radio" name="aggregation" value="enable">Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="aggregation" value="disable">Disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label  class="left-field">Short GI:</label>
<input class="right-field-radio" type="radio" name="shortGI0" value="on">Enabled&nbsp;&nbsp;
<input  class="right-field-radio"  type="radio" name="shortGI0" value="off">disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field" id="txbf_div">TX beamforming:</label>
<input class="right-field-radio" type="radio" name="txbf" value=1 onClick='wltxbfChange()'>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="txbf" value=0 onClick='wltxbfChange()'>Disabled
</div>
</div>

<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field" id="txbf_mu_div">MU MIMO: </label>
<input class="right-field-radio" type="radio" name="txbf_mu" value=1>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="txbf_mu" value=0>disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">Multicast to Unicast:</label>
<input class="right-field-radio" type="radio" name="mc2u_disable" value=0>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="mc2u_disable" value=1>Disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">Band Steering:</label>
<input class="right-field-radio" type="radio" name="sta_control" value=1 onChange='stactrlPreBandChange()'>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name="sta_control" value=0 onChange='stactrlPreBandChange()'>Disabled
<select class="right-field custom-select" size="1" name="stactrl_prefer_band">
<option value="0">Prefer 5GHz</option>
<option value="1">Prefer 2.4GHz</option>
</select>   
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control" id="sta_high">
<label class="left-field">Band Steering RSSI Threshold(5G):</label>
<input class="right-field-radio" type="text" name="RssiThHigh" size="10" maxlength="4">-(0-100) dBm
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control" id="sta_low">
<label class="left-field">Band Steering RSSI Threshold(2.4G):</label>
<input class="right-field-radio" type="text" name="RssiThLow" size="10" maxlength="4">-(0-100) dBm
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">WMM Support:</label>
<input class="right-field-radio" type="radio" name=WmmEnabled value=1>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name=WmmEnabled value=0>Disabled
</div>
</div>
<div class="col-md-12 form-group">
<div class="custom-control">
<label class="left-field">802.11k Support:</label>
<input class="right-field-radio" type="radio" name=dot11kEnabled value=1 onClick='wlDot11kChange()'>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name=dot11kEnabled value=0 onClick='wlDot11kChange()'>Disabled
</div>
</div>
<div class="col-md-12 form-group" id="dot11v"  style="display:none">
<div class="custom-control">
<label class="left-field">802.11v Support:</label>
<input class="right-field-radio" type="radio" name=dot11vEnabled value=1>Enabled&nbsp;&nbsp;
<input class="right-field-radio" type="radio" name=dot11vEnabled value=0>Disabled
</div>
</div>
</table>
  <hr class="margin_adjs" style="margin-left: -16px;width: 160%;">
  </div>
  <div class="btn_ctl form-footer">
   <input type="submit" value="Apply Changes" name="save" onClick="return saveChanges(this)" class="link_bg btn orange_btn" style="margin-right:-478px;">&nbsp;&nbsp;
   <input type="hidden" value="/admin/wladvanced.asp" name="submit-url">
   <input type="hidden" value=0 name="wlan_idx">
   <input type="hidden" name="postSecurityFlag" value="">
   <script>
    document.advanceSetup.preamble[0].checked = true;
document.advanceSetup.hiddenSSID[0].checked = true;
document.advanceSetup.block[1].checked = true;
document.advanceSetup.protection[1].checked = true;
document.advanceSetup.aggregation[0].checked = true;
document.advanceSetup.shortGI0[0].checked = true;
document.advanceSetup.txbf[0].checked = true;
document.advanceSetup.txbf_mu[1].checked = true;
document.advanceSetup.mc2u_disable[0].checked = true;
document.advanceSetup.WmmEnabled[0].checked = true;
document.advanceSetup.dot11kEnabled[0].checked = true;
document.advanceSetup.dot11vEnabled[0].checked = true;
document.advanceSetup.sta_control[1].checked = true;
document.advanceSetup.stactrl_prefer_band.selectedIndex = 0;
document.advanceSetup.RssiThHigh.value = -50;
document.advanceSetup.RssiThLow.value = -65;
document.advanceSetup.sta_control[0].disabled = true;
document.advanceSetup.sta_control[1].disabled = true;
document.advanceSetup.stactrl_prefer_band.disabled = true;
document.advanceSetup.RssiThHigh.disabled = true;
document.advanceSetup.RssiThLow.disabled = true;

    updateState();
    wltxbfChange();
    wlDot11kChange();
    wlRoamingChange();
   </script>
  </div>
 </form>
 </div>
 </div>
 </div>
 </div>
 <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
&copy; 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
<br><br>
</body>
</html>

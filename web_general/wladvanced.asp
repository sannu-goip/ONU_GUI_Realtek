<% SendWebHeadStr();%>
<title><% multilang("163" "LANG_WLAN_ADVANCED_SETTINGS"); %></title>
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
      text-align: left;
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
<SCRIPT>
var rootBand=<% checkWrite("band"); %>;
var is_wlan_qtn = <% checkWrite("is_wlan_qtn"); %>;
function validateNum(str)
{
  for (var i=0; i<str.length; i++) {
    if ( !(str.charAt(i) >='0' && str.charAt(i) <= '9')) {
  alert("<% multilang("2501" "LANG_INVALID_VALUE_IT_SHOULD_BE_IN_DECIMAL_NUMBER_0_9"); %>");
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
   alert("<% multilang("2502" "LANG_INVALID_VALUE_OF_FRAGMENT_THRESHOLD_INPUT_VALUE_SHOULD_BE_BETWEEN_256_2346_IN_DECIMAL"); %>");
   document.advanceSetup.fragThreshold.focus();
 return false;
  }
  if ( validateNum(document.advanceSetup.rtsThreshold.value) == 0 ) {
   document.advanceSetup.rtsThreshold.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.rtsThreshold.value);
  if (document.advanceSetup.rtsThreshold.value=="" || num > 2347) {
   alert("<% multilang("2503" "LANG_INVALID_VALUE_OF_RTS_THRESHOLD_INPUT_VALUE_SHOULD_BE_BETWEEN_0_2347_IN_DECIMAL"); %>");
   document.advanceSetup.rtsThreshold.focus();
 return false;
  }
  if ( validateNum(document.advanceSetup.beaconInterval.value) == 0 ) {
   document.advanceSetup.beaconInterval.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.beaconInterval.value);
  if (document.advanceSetup.beaconInterval.value=="" || num < 20 || num > 1024) {
   alert("<% multilang("2504" "LANG_INVALID_VALUE_OF_BEACON_INTERVAL_INPUT_VALUE_SHOULD_BE_BETWEEN_20_1024_IN_DECIMAL"); %>");
   document.advanceSetup.beaconInterval.focus();
 return false;
  }
  num = parseInt(document.advanceSetup.dtimPeriod.value);
  if (document.advanceSetup.dtimPeriod.value=="" || num < 1 || num > 255) {
 alert("<% multilang("2505" "LANG_INVALID_VALUE_OF_DTIM_PRERIOD_INPUT_VALUE_SHOULD_BE_BETWEEN_1_255_IN_DECIMAL"); %>");
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

<body>
<div class="breadcrum_box"> <ul><li><a href="#">Wi-Fi</a></li><li>Wlan Advanced</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

  <div class="list_header"> 
    <ul>
      <li><a href="wlbasic.asp">WlBaisic</a></li>
      <li><a href="wladvanced.asp" class="active"><% multilang("9", "LANG_ADVANCED_SETTINGS") %></a></li>
      <li><a href="wlwpa.asp" ><% multilang("1259", "LANG_SECURITY") %></a></li>
      <li><a href="wlactrl.asp"><% multilang("1261", "LANG_ACCESS_CONTROL") %></a></li>
      <li><a href="wlsurvey.asp"><% multilang("1266", "LANG_SITE_SURVEY") %></a></li>
      <li><a href="wlwps.asp"><% multilang("1267", "LANG_WPS") %></a></li>
    </ul>
  </div>

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><img src="/img/wi-fi.png" style="width:38px;"><p class="intro_title"><% multilang("163" "LANG_WLAN_ADVANCED_SETTINGS"); %></p></div>

 <p class="intro_content"><% multilang("164" "LANG_PAGE_DESC_WLAN_ADVANCE_SETTING"); %></p>
</div>
<form action=/boaform/admin/formAdvanceSetup method=POST name="advanceSetup">
 <div class="data_common data_common_notitle">
 <table>
  <input type=hidden name="wlanDisabled" value=<% wlanStatus(); %>>
     <tr <% checkWrite("wlan_qtn_hidden_function"); %>>
       <th width="30%"><% multilang("165" "LANG_FRAGMENT_THRESHOLD"); %>:</th>
       <td width="70%"><input type="text" name="fragThreshold" size="10" maxlength="4" value=<% getInfo("fragThreshold"); %>>(256-2346)</td>
     </tr>
     <tr>
       <th width="30%"><% multilang("166" "LANG_RTS_THRESHOLD"); %>:</th>
       <td width="70%"><input type="text" name="rtsThreshold" size="10" maxlength="4" value=<% getInfo("rtsThreshold"); %>>(0-2347)</td>
     </tr>
     <tr>
       <th width="30%"><% multilang("167" "LANG_BEACON_INTERVAL"); %>:</th>
       <td width="70%"><input type="text" name="beaconInterval" size="10" maxlength="4" value=<% getInfo("beaconInterval"); %>> (20-1024 <% multilang("978" "LANG_MS"); %>)</td>
     </tr>
     <tr>
       <th width="30%"><% multilang("172" "LANG_DTIM_PERIOD"); %>:</th>
       <td width="70%"><input type="text" name="dtimPeriod" size="10" maxlength="4" value=<% getInfo("dtimPeriod"); %>> (1-255)</td>
     </tr>
     <tr>
       <th width="30%"><% multilang("168" "LANG_DATA_RATE"); %>:</th>
       <td width="70%"><select size="1" name="txRate">
    <SCRIPT>
     <% checkWrite("wl_txRate"); %>
     if(!is_wlan_qtn){
      rate_mask = [31,1,1,1,1,2,2,2,2,2,2,2,2,4,4,4,4,4,4,4,4,8,8,8,8,8,8,8,8,16,16,16,16,16,16,16,16];
      rate_name =["<% multilang("169" "LANG_AUTO"); %>","1M","2M","5.5M","11M","6M","9M","12M","18M","24M","36M","48M","54M", "MCS0", "MCS1",
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
      document.write('<option value="' + (i) + '">' +'<% multilang("169" "LANG_AUTO"); %>'+ '\n');
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
      </td>
    </tr>
   <!-- for WiFi test, start --
     <tr>
       <td width="30%"><font size=2><b><% multilang("170" "LANG_TX_OPERATION_RATE"); %>:</b></td>
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
       <td width="30%"><font size=2><b><% multilang("171" "LANG_TX_BASIC_RATE"); %>:</b></td>
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
        <td width="30%"><font size=2><b><% multilang("172" "LANG_DTIM_PERIOD"); %>:</b></td>
        <td width="70%"><font size=2><input type="text" name="dtimPeriod" size="5" maxlength="3" value=<% getInfo("dtimPeriod"); %>>(1-255)</td>
      </tr>
  -- for WiFi test, end -->
       <% write_wladvanced(); %>
    <% ShowWmm(); %>
    <% ShowDot11k_v(); %>
    <% extra_wladvanced(); %>
   </table>
  </div>
  <div class="btn_ctl">
   <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)" class="link_bg">&nbsp;&nbsp;
   <input type="hidden" value="/wladvanced.asp" name="submit-url">
   <input type="hidden" value=<% checkWrite("wlan_idx"); %> name="wlan_idx">
   <input type="hidden" name="postSecurityFlag" value="">
   <script>
    <% initPage("wladv"); %>
    updateState();
    wltxbfChange();
    wlDot11kChange();
    wlRoamingChange();
   </script>
  </div>
 </form>
<br><br>
</body>
</html>

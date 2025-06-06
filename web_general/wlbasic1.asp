<% SendWebHeadStr();%>
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


<title>WLAN Basic Settings</title>
<script type="text/javascript" src="base64_code.js"></script>
<style>
.on {display:on}
.off {display:none}

</style>

<SCRIPT>
var regDomain, regDomain_qtn, defaultChan, lastBand=0, lastMode=0;
var is_regdomain_demo=1;
var WiFiTest=0;
var wlan_idx= 1;
var ssid_2g="FTTH-84E8";
var ssid_5g="FTTH-84E8-5G";
var defaultBand=10;
var dfs_enable=1;
var wlan_support_8812e=1;
var wlan_support_11ncoexist=1;
var is_wlan_qtn = 0;
var ch_list_20 = 0;
var ch_list_40 = 0;
var ch_list_80 = 0;
var ch_list_none = "1,2,3,4,5,6,7,8,9,10,11,12,13,36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,149,153,157,161,165";
var channel_list_5g_dfs =[[],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,136,140,149,153,157,161,165],
       [36,40,44,48,52,56,60,64,149,153,157,161],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140],
       [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140],
       [34,38,42,46],
       [36,40,44,48],
       [36,40,44,48,52,56,60,64],
       [56,60,64,100,104,108,112,116,136,140,149,153,157,161,165],
       [36,40,44,48,52,56,60,64,132,136,140,149,153,157,161,165],
       [36,40,44,48,52,56,60,64,149,153,157,161,165],
             [36,40,44,48,52,56,60,64,100,104,108,112,116,136,140,149,153,157,161,165],
             [36,40,44,48,52,56,60,64,100,104,108,112,116,136,140,149,153,157,161,165],
             [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140,144,149,153,157,161,165,169,173,177]
       ];
var channel_list_5g =[[],
       [36,40,44,48,149,153,157,161,165],
       [36,40,44,48,149,153,157,161],
       [36,40,44,48],
       [36,40,44,48],
       [36,40,44,48],
       [36,40,44,48],
       [36,40,44,48],
       [34,38,42,46],
       [36,40,44,48],
       [36,40,44,48],
       [56,60,64,149,153,157,161,165],
       [36,40,44,48,149,153,157,161,165],
       [36,40,44,48,149,153,157,161,165],
             [36,40,44,48,149,153,157,161,165],
             [36,40,44,48,149,153,157,161,165],
             [36,40,44,48,52,56,60,64,100,104,108,112,116,120,124,128,132,136,140,144,149,153,157,161,165,169,173,177]
       ];
function skip () { this.blur(); }
function openWindow(url, windowName) {
 var wide=620;
 var high=420;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=500;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, windowName, settings );
}
function showMacClick(url)
{
 if (document.wlanSetup.wlanDisabled.value != "ON")
  openWindow(url, 'showWirelessClient' );
}
function saveChanges(obj)
{
 var idx_value= document.wlanSetup.band.selectedIndex;
 var selectText=document.wlanSetup.band.options[idx_value].text.substr(0,1);
 if (document.wlanSetup.ssid.value=="") {
  alert("SSID cannot be empty!");
  document.wlanSetup.ssid.value = document.wlanSetup.ssid.defaultValue;
  document.wlanSetup.ssid.focus();
  return false;
 }
 if(byteLength(document.wlanSetup.ssid.value)>32){
  alert("The length of SSID should be a maximum of 32 octets(bytes).");
  document.wlanSetup.ssid.focus();
  return false;
 }
 if(selectText == '2')
  document.wlanSetup.Band2G5GSupport.value = 1;
 else
  document.wlanSetup.Band2G5GSupport.value = 2;
 if (document.wlanSetup.wlanDisabled.value != "ON") {
  band = parseInt(document.wlanSetup.band.value, 10) + 1;
  basicRate=0;
  operRate=0;
  if (band & 1) {
   basicRate|=0xf;
   operRate|=0xf;
  }
  if ( (band & 2) || (band & 4) ) {
   operRate|=0xff0;
   if (!(band & 1)) {
    if (WiFiTest)
     basicRate=0x15f;
    else
     basicRate=0x1f0;
   }
  }
  if (band & 8) {
   if (!(band & 3))
    operRate|=0xfff;
   if (band & 1)
    basicRate=0xf;
   else if (band & 2)
    basicRate=0x1f0;
   else
    basicRate=0xf;
  }
  operRate|=basicRate;
  document.wlanSetup.basicrates.value = basicRate;
  document.wlanSetup.operrates.value = operRate;
 }
 if(document.wlanSetup.wl_limitstanum.value == 1){
  if(!isNumber(document.wlanSetup.wl_stanum.value)){
   alert("Invalid Limit Associated Client Number!");
   document.wlanSetup.wl_stanum.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
 return true;
}
function disableWLAN()
{
 disableTextField(document.wlanSetup.band);
 disableTextField(document.wlanSetup.mode);
 disableTextField(document.wlanSetup.ssid);
 disableTextField(document.wlanSetup.chanwid);
 disableTextField(document.wlanSetup.ctlband);
 disableTextField(document.wlanSetup.chan);
 disableTextField(document.wlanSetup.txpower);
 disableTextField(document.wlanSetup.regdomain_demo);
 disableButton(document.wlanSetup.showMac);
 disableButton(document.wlanSetup.multipleAP);
}
function enableWLAN()
{
 enableTextField(document.wlanSetup.band);
 enableTextField(document.wlanSetup.mode);
 enableTextField(document.wlanSetup.ssid);
 enableTextField(document.wlanSetup.chanwid);
 enableTextField(document.wlanSetup.ctlband);
 enableTextField(document.wlanSetup.chan);
 enableTextField(document.wlanSetup.txpower);
 enableTextField(document.wlanSetup.regdomain_demo);
 enableButton(document.wlanSetup.showMac);
 enableButton(document.wlanSetup.multipleAP);
 enableButton(document.wlanSetup.save);
 updateMode();
}
function updateChan_channebound()
{
 var idx_value= document.wlanSetup.band.selectedIndex;
 var band_value= document.wlanSetup.band.options[idx_value].value;
 var bound = document.wlanSetup.chanwid.selectedIndex;
 var adjust_chan;
 if(band_value == 3 || band_value == 11 || band_value == 63 || band_value == 71 || band_value ==75){
  currentBand = 2;
 }
 else if(band_value == 7)
 {
  if(document.wlanSetup.Band2G5GSupport.value == 1)
   currentBand = 1;
  else
   currentBand = 2;
  if(document.wlanSetup.wlanBand2G5GSelect.value == 3)
  {
   if(idx_value != 1)
    currentBand =1;
   else
    currentBand =2;
  }
 }
 else {
  currentBand = 1;
 }
 if(band_value == 9 || band_value == 10 || band_value == 7 || band_value == 11){
  if(bound == 0)
   adjust_chan = 0;
  if(bound == 1)
   adjust_chan = 1;
 }
 else
  adjust_chan = 0;
   if (currentBand == 1)
  showChannel2G(adjust_chan, band_value);
 else if (currentBand == 2) {
  showChannel5G(0, adjust_chan);
 }
   if(lastMode == 0)
    lastMode = band_value;
   if(band_value == 9 || band_value == 10 || band_value == 7){
    if(document.wlanSetup.chan.selectedIndex ==0){
     disableTextField(document.wlanSetup.ctlband);
  }
 }
}
function updateBand_selectedIndex(band)
{
 var band_idx = 0;
 while(band_idx < document.wlanSetup.band.length) {
  if(document.wlanSetup.band.options[band_idx].value == band) {
   if(band == 7) {
    var selectText=document.wlanSetup.band.options[band_idx].text.substr(0,1);
    if( document.wlanSetup.Band2G5GSupport &&
     ((document.wlanSetup.Band2G5GSupport.value == 2 && selectText == '5')
     || (document.wlanSetup.Band2G5GSupport.value == 1 && selectText == '2')) ) {
     document.wlanSetup.band.selectedIndex = band_idx;
     break;
    }
   }
   else {
    document.wlanSetup.band.selectedIndex = band_idx;
    break;
   }
  }
  band_idx++;
 }
}
function showMultipleAP(form, url)
{
 var mode_idx = form.mode.selectedIndex;
 var mode_value = form.mode.options[mode_idx].value;
 if (!form.wlanDisabled.checked
  && (mode_value==0 || mode_value==3 || mode_value==4 || mode_value==6))
  document.location.href = url;
}
function updateIputState()
{
 var band_value = document.wlanSetup.band.value;
 if(document.wlanSetup.wlanDisabled.checked == true) {
  document.wlanSetup.wlanDisabled.value="ON";
  disableWLAN();
 }
 else {
  document.wlanSetup.wlanDisabled.value="OFF";
  enableWLAN();
 }
 if(defaultChan == 0)
  disableTextField(document.wlanSetup.ctlband);
 if(band_value < 7) {
  if(document.getElementById)
   document.getElementById('optionfor11n').style.display = 'none';
  else if(document.layers == false)
   document.all.optionfor11n.style.display = 'none';
 }
 else {
  if(document.getElementById)
   document.getElementById('optionfor11n').style.display = 'block';
  else if(document.layers == false)
   document.all.optionfor11n.style.display = 'block';
 }
 updateBand_selectedIndex(band_value);
 updateChan_channebound();
}
function updateMode()
{
 var mode_selected=0;
 var Type_selected=0;
   mode_selected=document.wlanSetup.mode.value;
   var chan_number_idx=document.wlanSetup.chan.selectedIndex;
 var chan_number= document.wlanSetup.chan.options[chan_number_idx].value;
   if(mode_selected ==1){
  if(Type_selected == 0){
   disableTextField(document.wlanSetup.ctlband);
   disableTextField(document.wlanSetup.chanwid);
   disableTextField(document.wlanSetup.chan);
  }else{
   enableTextField(document.wlanSetup.chanwid);
   enableTextField(document.wlanSetup.chan);
   index_channelbound=document.wlanSetup.chanwid.selectedIndex;
   if(index_channelbound ==0)
    disableTextField(document.wlanSetup.ctlband);
   else{
    if(chan_number != 0)
     enableTextField(document.wlanSetup.ctlband);
    else
     disableTextField(document.wlanSetup.ctlband);
   }
  }
 }else{
  enableTextField(document.wlanSetup.chanwid);
  enableTextField(document.wlanSetup.chan);
  index_channelbound=document.wlanSetup.chanwid.selectedIndex;
  if(index_channelbound ==0)
   disableTextField(document.wlanSetup.ctlband);
  else{
   if(chan_number != 0)
    enableTextField(document.wlanSetup.ctlband);
    else
    disableTextField(document.wlanSetup.ctlband);
  }
 }
 updateRepeaterState(document.wlanSetup);
}
function showChannel5G(startChanIdx, bound_40)
{
 var sideBand_idex = document.wlanSetup.ctlband.selectedIndex;
 var sideBand = document.wlanSetup.ctlband.options[sideBand_idex].value;
 var defChanId, RFType=10;
 document.wlanSetup.chan.length = 0;
 if (startChanIdx == 0)
  defChanIdx = 0;
 else
  defChanIdx = 1;
 if (startChanIdx == 0) {
  if (dfs_enable == 1)
   document.wlanSetup.chan.options[0] = new Option("Auto(DFS)", 0, false, false);
  else
   document.wlanSetup.chan.options[0] = new Option("Auto", 0, false, false);
  if (0 == defaultChan) {
   document.wlanSetup.chan.selectedIndex = 0;
   defChanIdx = 0;
  }
  startChanIdx ++;
 }
 idx = startChanIdx;
 if(wlan_support_8812e ==1)
 {
  var bound = document.wlanSetup.chanwid.selectedIndex;
  var channel_list;
  var chan, chan_pair, i, ii, iii, iiii, found;
  if(regDomain==8)
  {
   channel_list = channel_list_5g_dfs[regDomain];
   if(bound <= 2){
    for(i=0; i<channel_list.length; i++){
     chan = channel_list[i];
     document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
     if (chan == defaultChan) {
      document.wlanSetup.chan.selectedIndex = idx;
      defChanIdx = idx;
     }
     idx++;
    }
   }
  }
  else{
   channel_list = channel_list_5g_dfs[regDomain];
   for (i=0; i<channel_list.length; i++) {
     chan = channel_list[i];
     if(regDomain != 16 && regDomain != 11)
      if((dfs_enable == 0) && (chan >= 52) && (chan <= 144))
       continue;
                 if(regDomain == 11)
                  if((dfs_enable == 0) && (chan >= 100) && (chan <= 140))
                      continue;
     if(regDomain != 16){
      if(bound==1){
       for(ii=0; ii<channel_list_5g_dfs[16].length; ii++){
        if(chan == channel_list_5g_dfs[16][ii])
         break;
       }
       if(ii%2==0)
        chan_pair = channel_list_5g_dfs[16][ii+1];
       else
        chan_pair = channel_list_5g_dfs[16][ii-1];
       found = 0;
       for(ii=0; ii<channel_list.length; ii++){
        if(chan_pair == channel_list[ii]){
         found = 1;
         break;
        }
       }
       if(found == 0)
        chan=0;
      }
      else if(bound==2){
       for(ii=0; ii<channel_list_5g_dfs[16].length; ii++){
        if(chan == channel_list_5g_dfs[16][ii])
         break;
       }
       for(iii=(ii-(ii%4)); iii<((ii-(ii%4)+3)) ; iii++)
       {
        found = 0;
        chan_pair = channel_list_5g_dfs[16][iii];
        for(iiii=0; iiii<channel_list.length; iiii++){
         if(chan_pair == channel_list[iiii]){
          found = 1;
          break;
         }
        }
        if(found==0){
         chan=0;
         break;
        }
       }
      }
     }
     if(chan!=0){
      document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
      if (chan == defaultChan) {
       document.wlanSetup.chan.selectedIndex = idx;
       defChanIdx = idx;
      }
      idx++;
     }
   }
  }
 }
 else if(is_wlan_qtn){
  var ch_list;
  var bound;
  var i, chan;
  if(regDomain_qtn == 0)
   ch_list = ch_list_none.split(",");
  else{
   bound = document.wlanSetup.chanwid.selectedIndex;
   if(bound==0)
    ch_list = ch_list_20.split(",");
   else if(bound==1)
    ch_list = ch_list_40.split(",");
   else if(bound==2)
    ch_list = ch_list_80.split(",");
  }
  for(i=0;i<ch_list.length;i++){
   chan = parseInt(ch_list[i]);
   if(chan>=36 && chan <=165){
    document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
    if (chan == defaultChan) {
      document.wlanSetup.chan.selectedIndex = idx;
      defChanIdx = idx;
    }
    idx++;
   }
  }
 }
 else
 if (regDomain == 1
  || regDomain == 2
  || regDomain == 3
  || regDomain == 4
  || regDomain == 5
  || regDomain == 6
  || regDomain == 7
  || regDomain == 9
  || regDomain == 10
  || regDomain == 12
  || regDomain == 13
  || regDomain == 14
  || regDomain == 15
 )
 {
  var bound = document.wlanSetup.chanwid.selectedIndex;
  var inc_scale;
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 36;
   chan_end = 48;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 40;
    chan_end = 48;
   }
   else
   {
    chan_str = 36;
    chan_end = 44;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
  if (regDomain == 1
    || regDomain == 2
    || regDomain == 12
    || regDomain == 13
    || regDomain == 14
    || regDomain == 15
   )
   {
    if (bound == 0) {
    inc_scale = 4;
    chan_str = 149;
    if(regDomain == 2)
     chan_end = 161;
    else
     chan_end = 165;
   } else {
    inc_scale = 8;
    if (sideBand == 0)
    {
     chan_str = 153;
     chan_end = 161;
    }
    else
    {
     chan_str = 149;
     chan_end = 157;
    }
   }
   for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
    document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
    if (chan == defaultChan) {
     document.wlanSetup.chan.selectedIndex = idx;
     defChanIdx = idx;
    }
   }
   }
 }
 else if (regDomain == 8)
 {
  var bound = document.wlanSetup.chanwid.selectedIndex;
  var inc_scale;
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 34;
   chan_end = 46;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 38;
    chan_end = 46;
   }
   else
   {
    chan_str = 34;
    chan_end = 42;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
 }
 else if (regDomain == 11)
 {
  var bound = document.wlanSetup.chanwid.selectedIndex;
  var inc_scale;
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 56;
   chan_end = 64;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 60;
    chan_end = 64;
   }
   else
   {
    chan_str = 56;
    chan_end = 64;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 149;
   chan_end = 165;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 153;
    chan_end = 161;
   }
   else
   {
    chan_str = 149;
    chan_end = 157;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
 }
 else if (regDomain == 16)
 {
  var bound = document.wlanSetup.chanwid.selectedIndex;
  var inc_scale;
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 36;
   if(!dfs_enable)
    chan_end = 64;
   else
    chan_end = 48;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 40;
    if(!dfs_enable)
     chan_end = 64;
    else
     chan_end = 48;
   }
   else
   {
    chan_str = 36;
    if(!dfs_enable)
     chan_end = 60;
    else
     chan_end = 44;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
  if(!dfs_enable){
   if (bound == 0)
   {
    inc_scale = 4;
    chan_str = 100;
    chan_end = 144;
   }
   else
   {
    inc_scale = 8;
    if (sideBand == 0)
    {
     chan_str = 104;
     chan_end = 144;
    }
    else
    {
     chan_str = 100;
     chan_end = 140;
    }
   }
   for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
    document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
    if (chan == defaultChan) {
     document.wlanSetup.chan.selectedIndex = idx;
     defChanIdx = idx;
    }
   }
  }
  if (bound == 0)
  {
   inc_scale = 4;
   chan_str = 149;
   chan_end = 177;
  }
  else
  {
   inc_scale = 8;
   if (sideBand == 0)
   {
    chan_str = 153;
    chan_end = 177;
   }
   else
   {
    chan_str = 149;
    chan_end = 173;
   }
  }
  for (chan = chan_str; chan <= chan_end; idx ++, chan += inc_scale) {
   document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
   if (chan == defaultChan) {
    document.wlanSetup.chan.selectedIndex = idx;
    defChanIdx = idx;
   }
  }
 }
 document.wlanSetup.chan.length = idx;
 if (defChanIdx==0)
  document.wlanSetup.chan.selectedIndex = 0;
}
function showChannel2G(bound_40, band)
{
 start = 0;
 end = 0;
 if (regDomain==1 || regDomain==2) {
  start = 1;
  end = 11;
 }
 else if (regDomain==3) {
  start = 1;
  end = 13;
 }
 else if (regDomain==4) {
  start = 1;
  end = 13;
 }
 else if (regDomain==5) {
  start = 10;
  end = 13;
 }
 else if (regDomain==6) {
  start = 1;
  end = 14;
 }
 else if (regDomain==7) {
  start = 3;
  end = 13;
 }
 else if (regDomain==8 || regDomain==9 || regDomain==10) {
  start = 1;
  end = 14;
 }
 else if (regDomain==11) {
  start = 1;
  end = 11;
 }
 else if (regDomain==12) {
  start = 1;
  end = 13;
 }
 else if (regDomain==13) {
  start = 1;
  end = 13;
 }
 else if (regDomain==14) {
  start = 1;
  end = 14;
 }
 else if (regDomain==15) {
  start = 1;
  end = 13;
 }
 else if (regDomain==16) {
  start = 1;
  end = 14;
 }
 else {
  start = 1;
  end = 11;
 }
 if(band == 9 || band == 10 || band == 7){
  if(bound_40 ==1){
   var sideBand_idex = document.wlanSetup.ctlband.selectedIndex;
   var sideBand = document.wlanSetup.ctlband.options[sideBand_idex].value;
   if(regDomain==5){
    if(sideBand ==0){
     start = 13;
     end = 13;
    }else{
     start = 10;
     end = 10;
    }
   }else{
    if(sideBand ==0){
     start = start+4;
     if(end==14)
      end = 13;
    }else{
     if(end==14)
      end = 13;
     end = end-4;
    }
   }
  }
 }
 document.wlanSetup.chan.length=0;
 idx=0;
 document.wlanSetup.chan.options[idx] = new Option("Auto", 0, false, false);
 if (0 == wlan_channel) {
  document.wlanSetup.chan.selectedIndex = 0;
 }
 idx++;
 for (chan=start; chan<=end; chan++, idx++) {
  document.wlanSetup.chan.options[idx] = new Option(chan, chan, false, false);
  if (chan == wlan_channel)
   document.wlanSetup.chan.selectedIndex = idx;
 }
 document.wlanSetup.chan.length = idx;
 wlan_channel = document.wlanSetup.chan.options[document.wlanSetup.chan.selectedIndex].value;
}
function updateChan()
{
 var idx_value= document.wlanSetup.band.selectedIndex;
 var band_value= document.wlanSetup.band.options[idx_value].value;
 showcontrolsideband_updated(band_value, idx_value);
 showchannelbound_updated(band_value);
    if(band_value ==3 || band_value ==11 || (band_value == 7 && document.wlanSetup.Band2G5GSupport.value == 2) || band_value == 63 || band_value == 71 || band_value == 75 ){
  currentBand = 2;
 }
 else {
  currentBand = 1;
 }
 if(band_value==9 || band_value==10 || band_value==7 || band_value ==11){
  updateChan_channebound();
 }
 else {
    if (currentBand == 2)
   showChannel5G(0, 0);
    else
   showChannel2G(0, band_value);
 }
 updateChan_selectedIndex();
 if(band_value < 7){
  if (document.getElementById)
   document.getElementById('optionfor11n').style.display = 'none';
  else if(document.layers == false)
  document.all.optionfor11n.style.display = 'none';
 }
 else{
  if (document.getElementById)
   document.getElementById('optionfor11n').style.display = 'block';
  else if(document.layers == false)
   document.all.optionfor11n.style.display = 'block';
 }
}
function updateChan1()
{
 var chan_number_idx=document.wlanSetup.chan.selectedIndex;
 var chan_number= document.wlanSetup.chan.options[chan_number_idx].value;
 var idx_value= document.wlanSetup.band.selectedIndex;
 var band_value= document.wlanSetup.band.options[idx_value].value;
 if (document.wlanSetup.chanwid.selectedIndex == 0 || document.wlanSetup.chanwid.selectedIndex == 2
  || (wlan_support_8812e==1 && (band_value==11 || band_value==63 || band_value==71 || band_value==75 || (band_value==7 && idx_value==1))))
  disableCheckBox(document.wlanSetup.elements.ctlband);
 else
  enableCheckBox(document.wlanSetup.elements.ctlband);
 updateChan_channebound();
 if (chan_number_idx==0 && chan_number==0)
  disableCheckBox(document.wlanSetup.elements.ctlband);
}
function updateChan_selectedIndex()
{
 var chan_number_idx=document.wlanSetup.chan.selectedIndex;
 var chan_number= document.wlanSetup.chan.options[chan_number_idx].value;
 wlan_channel = chan_number;
 if(chan_number == 0)
  disableTextField(document.wlanSetup.ctlband);
 else{
  if(document.wlanSetup.chanwid.selectedIndex == "0")
    disableTextField(document.wlanSetup.ctlband);
  else if(document.wlanSetup.chanwid.selectedIndex == "2")
    disableTextField(document.wlanSetup.ctlband);
   else
   enableTextField(document.wlanSetup.ctlband);
 }
 if((wlan_support_8812e==1) && (chan_number > 14))
  disableTextField(document.wlanSetup.ctlband);
}
function updateState(form)
{
       updateIputState();
       updateRepeaterState(form);
}
function updateRepeaterState(form)
{
       if(!form.wlanDisabled.checked &&
        (form.mode.value!=1)
        ){
               enableCheckBox(form.repeaterEnabled);
       }
       else {
               disableCheckBox(form.repeaterEnabled);
       }
}
function Set_SSIDbyBand(form)
{
 var index=form.band.selectedIndex;
 var selectText=form.band.options[index].text.substr(0,1);
 if(selectText == '5')
  form.ssid.value = ssid_5g;
 else if(selectText == '2')
  form.ssid.value = ssid_2g;
}
function showcontrolsideband_updated(band, index)
{
 var idx=0;
 var i;
   var controlsideband_idx = document.wlanSetup.ctlband.selectedIndex;
 var controlsideband_str = document.wlanSetup.ctlband.options[controlsideband_idx].value;
   if(wlan_support_8812e ==1 && ((band==7 && index==1) || band ==11 || band == 63 || band == 71 || band ==75))
 {
  document.wlanSetup.ctlband.options[idx++] = new Option("Auto", "0", false, false);
  document.wlanSetup.ctlband.options[idx++] = new Option("Auto", "1", false, false);
   }
   else
 {
  document.wlanSetup.ctlband.options[idx++] = new Option("Upper", "0", false, false);
  document.wlanSetup.ctlband.options[idx++] = new Option("Lower", "1", false, false);
   }
   document.wlanSetup.ctlband.length = idx;
 for (i=0; i<idx; i++) {
  if(controlsideband_str == document.wlanSetup.ctlband.options[i].value)
   document.wlanSetup.ctlband.selectedIndex = i;
 }
}
function showchannelbound_updated(band)
{
 var idx=0;
 var i;
 var channelbound_idx = document.wlanSetup.chanwid.selectedIndex;
 var channelbound_str = document.wlanSetup.chanwid.options[channelbound_idx].value;
 document.wlanSetup.chanwid.options[idx++] = new Option("20MHz", "0", false, false);
 document.wlanSetup.chanwid.options[idx++] = new Option("40MHz", "1", false, false);
 if(band == 63 || band == 71 || band == 75)
  document.wlanSetup.chanwid.options[idx++] = new Option("80MHz", "2", false, false);
 if(wlan_support_11ncoexist){
  var bandidx = document.wlanSetup.band.selectedIndex;
  var selectText=document.wlanSetup.band.options[bandidx].text.substr(0,1);
  if(selectText == '2')
   document.wlanSetup.chanwid.options[idx++] = new Option("20/40MHz", "3", false, false);
 }
  document.wlanSetup.chanwid.length = idx;
 for (i=0; i<idx; i++) {
  if(channelbound_str == document.wlanSetup.chanwid.options[i].value)
   document.wlanSetup.chanwid.selectedIndex = i;
 }
}
function updateWlstanum()
{
 if(document.wlanSetup.wl_limitstanum.value == 1)
  document.wlanSetup.wl_stanum.disabled = false;
 else
  document.wlanSetup.wl_stanum.disabled = true;
}
</SCRIPT>
<style>
   table {
        width: 100%;
        border-collapse: collapse;
    }

    th {
        width: 30%; /* Adjust as needed for equal width */
        text-align: left;
        padding: 8px;
    }

    td {
        width: 70%; /* Ensures equal width for right-side fields */
        padding: 8px;
    }

    .flex-container {
        display: flex;
        align-items: center;
        gap: 10px;
    }
    .height-select-inputs{
      height: 30px;
    }
    select, input {
        width: 100%; /* Ensures input and select fields take full width */
        max-width: 250px; /* Adjust as per requirement */
    }

    .inner_btn {
        white-space: nowrap; /* Prevents button from resizing weirdly */
    }
th, td {
    padding: 15px 0; /* Adds vertical spacing */
}
.white_box {
    background: #fff;
    border-radius: 4px;
    box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
    padding: 15px;
    margin-bottom: 20px;
}
.container-fluid {
    width: 100%;
    padding-right: 85px;
    padding-left: 15px;
    margin-right: auto;
    margin-left: 55px;
}

hr {
    border-top: 1px solid #ced4da;
}
input[type="checkbox"]:checked {
    background-color: orange;
    border-color: orange;
}
.heading_grey {
    font-weight: 300;
    color: #f58220;
    font-size: 30px;
    padding: 0px 12px;
    margin: 0px;
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

.custom-checkbox:checked {
    background-color: orange;
    border-color: orange;
}

.custom-checkbox:checked::after {
    content: '';
    position: absolute;
    top: 2px;
    left: 6px;
    width: 6px;
    height: 12px;
    border: solid white;
    border-width: 0 2px 2px 0;
    transform: rotate(45deg);
}
.orange_border_btn {
    background: #fff;
    color: #f58220;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
.w-400 {
    width: 320px;
}
.margin_adjs {
    margin-right: -30px;
    margin-left: -85px;
}
</style>
</head>
<body>
  <INPUT id="Selected_Menu" type="hidden" 
            value="Wireless->WiFi" name="Net_DHCP"/> 
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
							        MakeLeftMenu('Wireless','WiFi')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                          
                           
                    
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Wireless','WiFi','Welcome!','#');
                            </SCRIPT>
                        </div>
                        
                            

                        <div class="">
                            

                             
                               <div class="scoop-inner-content">								 
								<div class="white_box">
<div class="intro_main ">
 <p class="intro_title heading_grey" style="margin-left:42px;">
 <img src="/Dashboard/images/wi-fi.png" width="45" height="35" class="img_sub" alt="">
 WLAN Basic Settings</p>
 <p class="intro_content" style="margin-left:57px;">This page is used to configure the parameters for WLAN clients which may connect to your Access Point. Here you may change wireless encryption settings as well as wireless network parameters.</p>
</div>
<form action=/boaform/formWlanSetup method=POST name="wlanSetup">
<div class="container-fluid">

									<hr class="margin_adjs">
<div class="data_common data_common_notitle">
 <table>

  <tr>
    <th colspan="2">
     <div class="flex-container" style="gap:385px;">
       <span style="font-weight:lighter;">Disable WLAN Interface</span>
       <input class="custom-checkbox" type="checkbox" name="wlanDisabled" value="OFF" ONCLICK="updateState(document.wlanSetup)">
     </div>
    </th>
   </tr>
  
  
  <tr>
   <th class="width" style="font-weight:lighter">Band:</th>
   <td ><select class="height-select-inputs custom-select w-400" size=1 name=band onChange="updateChan(); Set_SSIDbyBand(document.wlanSetup);">
    <option value=0>2.4 GHz (B)</option>
<option value=1>2.4 GHz (G)</option>
<option value=2>2.4 GHz (B+G)</option>
<option value=7>2.4 GHz (N)</option>
<option value=9>2.4 GHz (G+N)</option>
<option value=10>2.4 GHz (B+G+N)</option>

    </select>
    <SCRIPT>updateBand_selectedIndex(defaultBand);</SCRIPT>
   </td>
  </tr>

  <tr>
   <th class="width"  style="font-weight:lighter">Mode:</th>
   <td><select class="height-select-inputs custom-select w-400" size="1" name="mode" onChange="updateMode()">
    <option selected value="0">AP</option>

    </select>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input style="width:100px" class="btn orange_border_btn" type="button" value="Multiple AP" name="multipleAP" onClick="showMultipleAP(document.wlanSetup, '/admin/wlmultipleap.asp')" class="inner_btn height-select-inputs">
   </td>
  </tr>
  <tr>
   <th  style="font-weight:lighter" width="26%">SSID:</th>
   <td width="74%"><input class="height-select-inputs custom-select w-400" type=text name=ssid size="25" maxlength="32" value="FTTH-84E8">
   </td>
  </tr>
 </table>
 <div id="optionfor11n" style="display:none">
  <table>
   <tr>
    <th  style="font-weight:lighter" class="width">Channel Width:</th>
    <td><select class="height-select-inputs custom-select w-400" size="1" name="chanwid" onChange="updateChan1()">
         <option value="0">20MHZ</option>
<option value="1">40MHZ</option>
<option value="3">20/40MHZ</option>

      </select>
    </td>
   </tr>
   <tr  >
    <th  style="font-weight:lighter" width="26%">Control Sideband:</th>
    <td width="74%"><select class="height-select-inputs custom-select w-400" size="1" name="ctlband" onChange="updateChan_channebound()">
            <option value="0">Upper</option>
<option value="1">Lower</option>

      </select>
    </td>
   </tr>
  </table>
 </div>
 <table>
  <tr>
   <th width="26%"  style="font-weight:lighter">Channel Number:</th>
   <td width="74%"><select class="height-select-inputs custom-select w-400" size="1" name="chan" onChange="updateChan_selectedIndex()"> </select></td>
   <SCRIPT>
    regDomain=1
defaultChan=0

    wlan_channel = defaultChan;
    updateChan();
   </SCRIPT>
  </tr>
  <tr >
   <th width="26%"  style="font-weight:lighter">Radio Power (%):</th>
   <td width="74%"><select class="height-select-inputs custom-select w-400" size="1" name="txpower">
    <option value="0">100%</option>
<option value="1">70%</option>
<option value="2">50%</option>
<option value="3">35%</option>
<option value="4">15%</option>

    </select>
   </td>
  </tr>
  
  <tr id="wl_limit_stanum" style="display:none">
   <th width="26%"  style="font-weight:lighter">Limit Associated Client Number:</th>
   <td>
    <select name=wl_limitstanum onChange="updateWlstanum()">
     <option value="0">Disabled</option>
     <option value="1">Enabled</option>
    </select>
    <input size="3" maxlength="2" name="wl_stanum">
   </td>
  </tr>
  <tr>
   <th width="26%" style="font-weight:lighter">Associated Clients:</th>
   <td width="74%"><input class="height-select-inputs btn orange_border_btn" type="button"
   value="Show Active WLAN Clients" name="showMac"
   onClick="showMacClick('/boaform/admin/formWirelessTbl?submit-url=/admin/wlstatbl.asp&wlan_idx=1')" class="inner_btn">
   </td>
  </tr>
  <tr id="repeater_check" style="display:none">
    <th colspan=2>
     <div  style="gap:106px;" class="flex-container">
       <span  style="font-weight:lighter">Enable Universal Repeater Mode (Acting as AP and client simultaneously)</span>
       <input class="custom-checkbox"  type="checkbox" name="repeaterEnabled" value="ON" ONCLICK="updateRepeaterState(document.wlanSetup)">
     </div>
    </th>
 </tr>
   <!--<tr id="repeater_SSID" style="display:none">
       <td  style="font-weight:lighter" width="100%" colspan=2><font size=2><b>SSID of Extended Interface:&nbsp;&nbsp;
       <input type="text" name="repeaterSSID" size="33" maxlength="32" value="">
       </td>
   </tr>-->
  <tr id="wifi_regdomain_demo" style="display:none">
   <th  style="font-weight:lighter" width="26%">Regdomain:</th>
   <td width="74%"><select class="height-select-inputs custom-select w-400" size="1" name="regdomain_demo">
    <option value="1">FCC(1)</option>
<option value="2">IC(2)</option>
<option value="3">ETSI(3)</option>
<option value="4">SPAIN(4)</option>
<option value="5">FRANCE(5)</option>
<option value="6">MKK(6)</option>
<option value="7">ISREAL(7)</option>
<option value="8">MKK1(8)</option>
<option value="9">MKK2(9)</option>
<option value="10">MKK3(10)</option>
<option value="11">NCC(11)</option>
<option value="12">RUSSIAN(12)</option>
<option value="13">CN(13)</option>
<option value="14">GLOBAL(14)</option>
<option value="15">WORLD-WIDE(15)</option>

    </select>
   </td>
  </tr>
 </table>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer">
 <input type="hidden" value="/admin/wlbasic.asp" name="submit-url">
 <input style="width:122px;"type="submit" value="Apply Changes"
  onClick="return saveChanges(this)" class="link_bg btn orange_btn" name="save">
 <input type="hidden" name="basicrates" value=0>
 <input type="hidden" name="operrates" value=0>
 <input type="hidden" name="wlan_idx" value=1>
 <input type="hidden" name="Band2G5GSupport" value=1>
 <input type="hidden" name="wlanBand2G5GSelect" value=0>
 <input type="hidden" name="dfs_enable" value=1>
 <input type="hidden" name="postSecurityFlag" value="">
 <script>
  document.getElementById("repeater_check").style.display = "";
document.wlanSetup.band.value = 10;
document.wlanSetup.chanwid.value = 1;
document.wlanSetup.ctlband.value = 0;
document.wlanSetup.txpower.selectedIndex = 0;
document.getElementById("wifi_regdomain_demo").style.display = "";
document.wlanSetup.regdomain_demo.selectedIndex = 0;

  updateState(document.wlanSetup);
 </script>
 </div>
</div>
</form>
</div>
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
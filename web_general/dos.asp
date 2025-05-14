<%SendWebHeadStr(); %>
<title>DoS<% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
    table th{
        display: flex;
    }
    table th div{
        width: 200px;
    }

</style>

<script>
var dosEnabled=0 ;
var rg_config=<% checkWrite("config_rtk_rg"); %>;
function setDosEnabled() {
}
function dosEnabledClick(){
 if(document.DosCfg.dosEnabled.checked){
  enableTextField(document.DosCfg.sysfloodSYN);
  enableTextField(document.DosCfg.sysfloodFIN);
  enableTextField(document.DosCfg.sysfloodUDP);
  enableTextField(document.DosCfg.sysfloodICMP);
  enableTextField(document.DosCfg.sysfloodSYNcount);
  enableTextField(document.DosCfg.sysfloodFINcount);
  enableTextField(document.DosCfg.sysfloodUDPcount);
  enableTextField(document.DosCfg.sysfloodICMPcount);
  enableTextField(document.DosCfg.ipfloodSYN);
  enableTextField(document.DosCfg.ipfloodFIN);
  enableTextField(document.DosCfg.ipfloodUDP);
  enableTextField(document.DosCfg.ipfloodICMP);
  enableTextField(document.DosCfg.ipfloodSYNcount);
  enableTextField(document.DosCfg.ipfloodFINcount);
  enableTextField(document.DosCfg.ipfloodUDPcount);
  enableTextField(document.DosCfg.ipfloodICMPcount);
  enableTextField(document.DosCfg.TCPUDPPortScan);
  enableTextField(document.DosCfg.portscanSensi);
  enableTextField(document.DosCfg.ICMPSmurfEnabled);
  enableTextField(document.DosCfg.IPLandEnabled);
  enableTextField(document.DosCfg.IPSpoofEnabled);
  enableTextField(document.DosCfg.IPTearDropEnabled);
  enableTextField(document.DosCfg.PingOfDeathEnabled);
  enableTextField(document.DosCfg.TCPScanEnabled);
  enableTextField(document.DosCfg.TCPSynWithDataEnabled);
  enableTextField(document.DosCfg.UDPBombEnabled);
  enableTextField(document.DosCfg.UDPEchoChargenEnabled);
  enableTextField(document.DosCfg.sourceIPblock);
  enableTextField(document.DosCfg.IPblockTime);
 }
 else{
  document.DosCfg.sysfloodSYN.checked=0;
  document.DosCfg.sysfloodFIN.checked=0;
  document.DosCfg.sysfloodUDP.checked=0;
  document.DosCfg.sysfloodICMP.checked=0;
  document.DosCfg.ipfloodSYN.checked=0;
  document.DosCfg.ipfloodFIN.checked=0;
  document.DosCfg.ipfloodUDP.checked=0;
  document.DosCfg.ipfloodICMP.checked=0;
  document.DosCfg.TCPUDPPortScan.checked=0;
  document.DosCfg.ICMPSmurfEnabled.checked=0;
  document.DosCfg.IPLandEnabled.checked=0;
  document.DosCfg.IPSpoofEnabled.checked=0;
  document.DosCfg.IPTearDropEnabled.checked=0;
  document.DosCfg.PingOfDeathEnabled.checked=0;
  document.DosCfg.TCPScanEnabled.checked=0;
  document.DosCfg.TCPSynWithDataEnabled.checked=0;
  document.DosCfg.UDPBombEnabled.checked=0;
  document.DosCfg.UDPEchoChargenEnabled.checked=0;
  document.DosCfg.sourceIPblock.checked=0;
  disableTextField(document.DosCfg.sysfloodSYN);
  disableTextField(document.DosCfg.sysfloodFIN);
  disableTextField(document.DosCfg.sysfloodUDP);
  disableTextField(document.DosCfg.sysfloodICMP);
  disableTextField(document.DosCfg.sysfloodSYNcount);
  disableTextField(document.DosCfg.sysfloodFINcount);
  disableTextField(document.DosCfg.sysfloodUDPcount);
  disableTextField(document.DosCfg.sysfloodICMPcount);
  disableTextField(document.DosCfg.ipfloodSYN);
  disableTextField(document.DosCfg.ipfloodFIN);
  disableTextField(document.DosCfg.ipfloodUDP);
  disableTextField(document.DosCfg.ipfloodICMP);
  disableTextField(document.DosCfg.ipfloodSYNcount);
  disableTextField(document.DosCfg.ipfloodFINcount);
  disableTextField(document.DosCfg.ipfloodUDPcount);
  disableTextField(document.DosCfg.ipfloodICMPcount);
  disableTextField(document.DosCfg.TCPUDPPortScan);
  disableTextField(document.DosCfg.portscanSensi);
  disableTextField(document.DosCfg.ICMPSmurfEnabled);
  disableTextField(document.DosCfg.IPLandEnabled);
  disableTextField(document.DosCfg.IPSpoofEnabled);
  disableTextField(document.DosCfg.IPTearDropEnabled);
  disableTextField(document.DosCfg.PingOfDeathEnabled);
  disableTextField(document.DosCfg.TCPScanEnabled);
  disableTextField(document.DosCfg.TCPSynWithDataEnabled);
  disableTextField(document.DosCfg.UDPBombEnabled);
  disableTextField(document.DosCfg.UDPEchoChargenEnabled);
  disableTextField(document.DosCfg.sourceIPblock);
  disableTextField(document.DosCfg.IPblockTime);
 }
}
function SelectAll(){
 if(document.DosCfg.dosEnabled.checked){
  document.DosCfg.sysfloodSYN.checked=1;
  document.DosCfg.sysfloodFIN.checked=1;
  document.DosCfg.sysfloodUDP.checked=1;
  document.DosCfg.sysfloodICMP.checked=1;
  document.DosCfg.ipfloodSYN.checked=1;
  document.DosCfg.ipfloodFIN.checked=1;
  document.DosCfg.ipfloodUDP.checked=1;
  document.DosCfg.ipfloodICMP.checked=1;
  document.DosCfg.TCPUDPPortScan.checked=1;
  document.DosCfg.ICMPSmurfEnabled.checked=1;
  document.DosCfg.IPLandEnabled.checked=1;
  document.DosCfg.IPSpoofEnabled.checked=1;
  document.DosCfg.IPTearDropEnabled.checked=1;
  document.DosCfg.PingOfDeathEnabled.checked=1;
  document.DosCfg.TCPScanEnabled.checked=1;
  document.DosCfg.TCPSynWithDataEnabled.checked=1;
  document.DosCfg.UDPBombEnabled.checked=1;
  document.DosCfg.UDPEchoChargenEnabled.checked=1;
 }
}
function ClearAll(){
 if(document.DosCfg.dosEnabled.checked){
  document.DosCfg.sysfloodSYN.checked=0;
  document.DosCfg.sysfloodFIN.checked=0;
  document.DosCfg.sysfloodUDP.checked=0;
  document.DosCfg.sysfloodICMP.checked=0;
  document.DosCfg.ipfloodSYN.checked=0;
  document.DosCfg.ipfloodFIN.checked=0;
  document.DosCfg.ipfloodUDP.checked=0;
  document.DosCfg.ipfloodICMP.checked=0;
  document.DosCfg.TCPUDPPortScan.checked=0;
  document.DosCfg.ICMPSmurfEnabled.checked=0;
  document.DosCfg.IPLandEnabled.checked=0;
  document.DosCfg.IPSpoofEnabled.checked=0;
  document.DosCfg.IPTearDropEnabled.checked=0;
  document.DosCfg.PingOfDeathEnabled.checked=0;
  document.DosCfg.TCPScanEnabled.checked=0;
  document.DosCfg.TCPSynWithDataEnabled.checked=0;
  document.DosCfg.UDPBombEnabled.checked=0;
  document.DosCfg.UDPEchoChargenEnabled.checked=0;
 }
}
function saveChanges(){
 if(rg_config=="yes"){
  if(document.DosCfg.sysfloodSYN.checked){
   if(document.DosCfg.sysfloodSYNcount.value < 5){
    alert('<% multilang("2192" "LANG_MUST_LARGER_THAN_5_PACKETS_SECOND"); %>');
    return false;
   }
  }
  if(document.DosCfg.sysfloodFIN.checked){
   if(document.DosCfg.sysfloodFINcount.value < 5){
    alert('<% multilang("2192" "LANG_MUST_LARGER_THAN_5_PACKETS_SECOND"); %>');
    return false;
   }
  }
  if(document.DosCfg.sysfloodICMP.checked){
   if(document.DosCfg.sysfloodICMPcount.value < 5){
    alert('<% multilang("2192" "LANG_MUST_LARGER_THAN_5_PACKETS_SECOND"); %>');
    return false;
   }
  }
 }
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Dos</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div >
  <img src="/img/parental.png" style="width:50px;">
 
</div>
<div style="margin-left:-5px;padding-top:11px;"><p class="intro_title">DoS <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>

 <p class="intro_content"> <% multilang("875" "LANG_DOS_DENIAL_OF_SERVICE_ATTACK_WHICH_IS_LAUNCHED_BY_HACKER_AIMS_TO_PREVENT_LEGAL_USER_FROM_TAKING_NORMAL_SERVICES_IN_THIS_PAGE_YOU_CAN_CONFIGURE_TO_PREVENT_SOME_KINDS_OF_DOS_ATTACK"); %></p>
 <checkWrite("ModifyTip");>
</div>
<form action=/boaform/admin/formDosCfg method=POST name="DosCfg">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">
    <div><% multilang("876" "LANG_ENABLE_DOS_BLOCK"); %></div><input type="checkbox" name="dosEnabled" value="ON" onclick="dosEnabledClick()"> 
   </th>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="50%"><div>Whole System Flood: SYN </div><input type="checkbox" name="sysfloodSYN" value="ON" > </th>
   <td width="50%"><input type="text" name="sysfloodSYNcount" size="6" maxlength="4" value=<% getInfo("syssynFlood"); %> > packets/second </td>
  </tr>
  <tr>
   <th><div>Whole System Flood: FIN</div> <input type="checkbox" name="sysfloodFIN" value="ON" >  </th>
   <td><input type="text" name="sysfloodFINcount" size="6" maxlength="4" value=<% getInfo("sysfinFlood"); %> > </td>
  </tr>
  <tr>
   <th><div>Whole System Flood: UDP </div><input type="checkbox" name="sysfloodUDP" value="ON" >  </th>
   <td><input type="text" name="sysfloodUDPcount" size="6" maxlength="4" value=<% getInfo("sysudpFlood"); %> > packets/second</td>
  <tr>
   <th><div>Whole System Flood: ICMP </div><input type="checkbox" name="sysfloodICMP" value="ON" >  </th>
   <td><input type="text" name="sysfloodICMPcount" size="6" maxlength="4" value=<% getInfo("sysicmpFlood"); %> > packets/second<br></td>
  </tr>
  <tr>
   <th><div>Per-Source IP Flood: SYN</div><input type="checkbox" name="ipfloodSYN" value="ON" >  </th>
   <td><input type="text" name="ipfloodSYNcount" size="6" maxlength="4" value=<% getInfo("pipsynFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><div>Per-Source IP Flood: FIN </div><input type="checkbox" name="ipfloodFIN" value="ON" >  </th>
   <td><input type="text" name="ipfloodFINcount" size="6" maxlength="4" value=<% getInfo("pipfinFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><div>Per-Source IP Flood: UDP </div><input type="checkbox" name="ipfloodUDP" value="ON" >  </th>
   <td><input type="text" name="ipfloodUDPcount" size="6" maxlength="4" value=<% getInfo("pipudpFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><div>Per-Source IP Flood: ICMP </div><input type="checkbox" name="ipfloodICMP" value="ON" > </th>
   <td><input type="text" name="ipfloodICMPcount" size="6" maxlength="4" value=<% getInfo("pipicmpFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><div>TCP/UDP PortScan </div><input type="checkbox" name="TCPUDPPortScan" value="ON" > </th>
   <td>
    <select name="portscanSensi">
    <option value=0 > Low </option>
    <option value=1 > High </option>
    </select>
    Sensitivity
   </td>
  </tr>
  <tr>
   <th colspan="2"><div>ICMP Smurf</div><input type="checkbox" name="ICMPSmurfEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>IP Land</div> <input type="checkbox" name="IPLandEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>IP Spoof </div><input type="checkbox" name="IPSpoofEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>IP TearDrop</div> <input type="checkbox" name="IPTearDropEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>PingOfDeath</div> <input type="checkbox" name="PingOfDeathEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>TCP Scan </div><input type="checkbox" name="TCPScanEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>TCP SynWithData</div><input type="checkbox" name="TCPSynWithDataEnabled" value="ON" >  </th>
  </tr>
  <tr>
   <th colspan="2"><div>UDP Bomb</div> <input type="checkbox" name="UDPBombEnabled" value="ON" > </th>
  </tr>
  <tr>
   <th colspan="2"><div>UDP EchoChargen</div> <input type="checkbox" name="UDPEchoChargenEnabled" value="ON" > </th>
  </tr>
 </table>
</div>
<div class="btn_ctl clearfix">
    <input class="link_bg" type="button" value="<% multilang("877" "LANG_SELECT_ALL"); %>" name="selectAll" onClick="SelectAll()">&nbsp;&nbsp;
    <input class="link_bg" type="button" value="<% multilang("878" "LANG_CLEAR"); %>" name="clearAll" onClick="ClearAll()">&nbsp;&nbsp;
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="50%"><div><% multilang("879" "LANG_ENABLE_SOURCE_IP_BLOCKING"); %> </div><input type="checkbox" name="sourceIPblock" value="ON" >  </th>
   <td width="50%"><input type="text" name="IPblockTime" size="4" maxlength="3" value=<% getInfo("blockTime"); %> > <% multilang("880" "LANG_BLOCK_INTERVAL"); %> (<% multilang("357" "LANG_SECONDS"); %>)</td>
  </tr>
 </table>
</div>
<div class="btn_ctl clearfix">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveChanges()">&nbsp;&nbsp;
 <input type="hidden" value="/dos.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% initPage("dos"); %>
</script>
<script>
 dosEnabledClick();
</script>
</form>
</table>
<br><br>
</body>
</html>

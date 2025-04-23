
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">

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

  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<title>DoS<% multilang("238" "LANG_CONFIGURATION"); %></title>
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
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px;
    accent-color: #fd5814;
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
        accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>

                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>DoS <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"><% multilang("875" "LANG_DOS_DENIAL_OF_SERVICE_ATTACK_WHICH_IS_LAUNCHED_BY_HACKER_AIMS_TO_PREVENT_LEGAL_USER_FROM_TAKING_NORMAL_SERVICES_IN_THIS_PAGE_YOU_CAN_CONFIGURE_TO_PREVENT_SOME_KINDS_OF_DOS_ATTACK"); %></p>
 <checkWrite("ModifyTip");>
</div>
</div>

<form action=/boaform/admin/formDosCfg method=POST name="DosCfg">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">
   <input type="checkbox" name="dosEnabled" value="ON" onclick="dosEnabledClick()"> <% multilang("876" "LANG_ENABLE_DOS_BLOCK"); %>
   </th>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:100%">
  <tr>
   <th width="50%"><input type="checkbox" name="sysfloodSYN" value="ON" > Whole System Flood: SYN </th>
   <td width="50%"><input type="text" name="sysfloodSYNcount" size="6" maxlength="4" value=<% getInfo("syssynFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="sysfloodFIN" value="ON" > Whole System Flood: FIN </th>
   <td><input type="text" name="sysfloodFINcount" size="6" maxlength="4" value=<% getInfo("sysfinFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="sysfloodUDP" value="ON" > Whole System Flood: UDP </th>
   <td><input type="text" name="sysfloodUDPcount" size="6" maxlength="4" value=<% getInfo("sysudpFlood"); %> > packets/second</td>
  <tr>
   <th><input type="checkbox" name="sysfloodICMP" value="ON" > Whole System Flood: ICMP </th>
   <td><input type="text" name="sysfloodICMPcount" size="6" maxlength="4" value=<% getInfo("sysicmpFlood"); %> > packets/second<br></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodSYN" value="ON" > Per-Source IP Flood: SYN </th>
   <td><input type="text" name="ipfloodSYNcount" size="6" maxlength="4" value=<% getInfo("pipsynFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodFIN" value="ON" > Per-Source IP Flood: FIN </th>
   <td><input type="text" name="ipfloodFINcount" size="6" maxlength="4" value=<% getInfo("pipfinFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodUDP" value="ON" > Per-Source IP Flood: UDP </th>
   <td><input type="text" name="ipfloodUDPcount" size="6" maxlength="4" value=<% getInfo("pipudpFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodICMP" value="ON" > Per-Source IP Flood: ICMP </th>
   <td><input type="text" name="ipfloodICMPcount" size="6" maxlength="4" value=<% getInfo("pipicmpFlood"); %> > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="TCPUDPPortScan" value="ON" > TCP/UDP PortScan </th>
   <td>
    <select name="portscanSensi">
    <option value=0 > Low </option>
    <option value=1 > High </option>
    </select>
    Sensitivity
   </td>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="ICMPSmurfEnabled" value="ON" > ICMP Smurf </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="IPLandEnabled" value="ON" > IP Land </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="IPSpoofEnabled" value="ON" > IP Spoof </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="IPTearDropEnabled" value="ON" > IP TearDrop </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="PingOfDeathEnabled" value="ON" > PingOfDeath </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="TCPScanEnabled" value="ON" > TCP Scan </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="TCPSynWithDataEnabled" value="ON" > TCP SynWithData </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="UDPBombEnabled" value="ON" > UDP Bomb </th>
  </tr>
  <tr>
   <th colspan="2"><input type="checkbox" name="UDPEchoChargenEnabled" value="ON" > UDP EchoChargen </th>
  </tr>
 </table>
</div>
<hr class="margin_adjs">
<div class="form-footer text-right clearfix ">
    <input class="btn orange_btn" type="button" value="<% multilang("877" "LANG_SELECT_ALL"); %>" name="selectAll" onClick="SelectAll()">&nbsp;&nbsp;
    <input class="btn grey_btn" type="button" value="<% multilang("878" "LANG_CLEAR"); %>" name="clearAll" onClick="ClearAll()">&nbsp;&nbsp;
</div>
<hr class="margin_adjs">

<div class="data_common data_common_notitle">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:100%">
  <tr>
   <th width="50%"><input type="checkbox" name="sourceIPblock" value="ON" > <% multilang("879" "LANG_ENABLE_SOURCE_IP_BLOCKING"); %> </th>
   <td width="50%"><input type="text" name="IPblockTime" size="4" maxlength="3" value=<% getInfo("blockTime"); %> > <% multilang("880" "LANG_BLOCK_INTERVAL"); %> (<% multilang("357" "LANG_SECONDS"); %>)</td>
  </tr>
 </table>
</div>
<div class="form-footer text-right clearfix">
 <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveChanges()">&nbsp;&nbsp;
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
</div>
</div>
</div>


<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

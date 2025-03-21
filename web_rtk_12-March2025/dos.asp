
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

<title>DoSConfiguration</title>
<script>
var dosEnabled=0 ;
var rg_config="yes";
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
    alert('must larger than 5 packets/second !');
    return false;
   }
  }
  if(document.DosCfg.sysfloodFIN.checked){
   if(document.DosCfg.sysfloodFINcount.value < 5){
    alert('must larger than 5 packets/second !');
    return false;
   }
  }
  if(document.DosCfg.sysfloodICMP.checked){
   if(document.DosCfg.sysfloodICMPcount.value < 5){
    alert('must larger than 5 packets/second !');
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
    padding:2px
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>
<INPUT id=Selected_Menu type=hidden value="Security->Parental" name="Selected_Menu"> 
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
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/parental.png" class="img-fluid" alt=""/></span></a>
							</div>
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('Security','Parental')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Security','Parental Control','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>DoS Configuration</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="intro_content"> DoS (Denial-of-Service) attack which is launched by hacker aims to prevent legal user from taking normal services. In this page you can configure to prevent some kinds of DOS attack.</p>
 <checkWrite("ModifyTip");>
</div>
</div>

<form action=/boaform/admin/formDosCfg method=POST name="DosCfg">
<div class="col-md-12 form-group">
				<div class="custom-control">
 <table>
  <tr>
   <th>
    <input type="checkbox" name="dosEnabled" value="ON" onclick="dosEnabledClick()"> Enable DoS Block
   </th>
  </tr>
 </table>
</div>
</div>
  <div class="col-md-12 form-group">
				<div class="custom-control">
 <table  class="table table-bordered table-striped" style="background-color: #f8f9fa; width:98%">
  <tr>
   <th><input type="checkbox" name="sysfloodSYN" value="ON" > Whole System Flood: SYN </th>
   <td><input type="text" name="sysfloodSYNcount" size="6" maxlength="4" value=100 > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="sysfloodFIN" value="ON" > Whole System Flood: FIN </th>
   <td><input type="text" name="sysfloodFINcount" size="6" maxlength="4" value=100 > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="sysfloodUDP" value="ON" > Whole System Flood: UDP </th>
   <td><input type="text" name="sysfloodUDPcount" size="6" maxlength="4" value=100 > packets/second</td>
  <tr>
   <th><input type="checkbox" name="sysfloodICMP" value="ON" > Whole System Flood: ICMP </th>
   <td><input type="text" name="sysfloodICMPcount" size="6" maxlength="4" value=100 > packets/second<br></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodSYN" value="ON" > Per-Source IP Flood: SYN </th>
   <td><input type="text" name="ipfloodSYNcount" size="6" maxlength="4" value=100 > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodFIN" value="ON" > Per-Source IP Flood: FIN </th>
   <td><input type="text" name="ipfloodFINcount" size="6" maxlength="4" value=100 > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodUDP" value="ON" > Per-Source IP Flood: UDP </th>
   <td><input type="text" name="ipfloodUDPcount" size="6" maxlength="4" value=100 > packets/second</td>
  </tr>
  <tr>
   <th><input type="checkbox" name="ipfloodICMP" value="ON" > Per-Source IP Flood: ICMP </th>
   <td><input type="text" name="ipfloodICMPcount" size="6" maxlength="4" value=100 > packets/second</td>
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
   <th><input type="checkbox" name="ICMPSmurfEnabled" value="ON" > ICMP Smurf </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="IPLandEnabled" value="ON" > IP Land </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="IPSpoofEnabled" value="ON" > IP Spoof </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="IPTearDropEnabled" value="ON" > IP TearDrop </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="PingOfDeathEnabled" value="ON" > PingOfDeath </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="TCPScanEnabled" value="ON" > TCP Scan </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="TCPSynWithDataEnabled" value="ON" > TCP SynWithData </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="UDPBombEnabled" value="ON" > UDP Bomb </th>
   <td></td>
  </tr>
  <tr>
   <th><input type="checkbox" name="UDPEchoChargenEnabled" value="ON" > UDP EchoChargen </th>
   <td></td>
  </tr>
 </table>
</div>
</div>
<hr class="margin_adjs">
  <div class="col-md-12 form-group">
				<div class="custom-control">
    <input class="link_bg" type="button" value="Select All" name="selectAll" onClick="SelectAll()">
    <input class="link_bg" type="button" value="Clear" name="clearAll" onClick="ClearAll()">
</div>
</div>
  <div class="col-md-12 form-group">
				<div class="custom-control">
 <table  class="table table-bordered table-striped" style="background-color: #f8f9fa; width:98%">
  <tr>
   <th width="50%"><input type="checkbox" name="sourceIPblock" value="ON" > Enable Source IP Blocking </th>
   <td width="50%"><input type="text" name="IPblockTime" size="4" maxlength="3" value=300 > Block Interval (seconds)</td>
  </tr>
 </table>
</div>
</div>
<hr class="margin_adjs">

 <div class="col-md-12 form-group form-footer text-right">
				<div class="custom-control">
 <input class="link_bg" type="submit" value="Apply Changes" onClick="return saveChanges()">
 <input type="hidden" value="/dos.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>
<script>
 
</script>
<script>
 dosEnabledClick();
</script>
</form>
</table>
<br><br>
</body>
</html>

d

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="N/A" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>LAN</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">

    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
       <script language="javascript" src="/Dashboard/JS/menu.js"></script>
        
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
     <SCRIPT language=JavaScript src="/Dashboard/JS/printtable.js"></SCRIPT>
       <SCRIPT language=JavaScript type=text/javascript>
       <SCRIPT>
var pool_ipprefix;
var initialDhcp;
function skip () { this.blur(); }
function openWindow(url, windowName) {
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, windowName, settings );
}
function showdns()
{
 if ((document.dhcpd.dhcpdns[0].checked == true) || (document.dhcpd.dhcpdns[2].checked == true)) {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'none';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'none';
  }
 } else {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'block';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'block';
  }
 }
}
function showdns()
{
 if ((document.dhcpd.dhcpdns[0].checked == true) || (document.dhcpd.dhcpdns[2].checked == true)) {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'none';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'none';
  }
 } else {
  if (document.getElementById)
   document.getElementById('dnsset').style.display = 'block';
  else {
   if (document.layers == false)
    document.all.dnsset.style.display = 'block';
  }
 }
}
function checkInputIP(ip)
{
 var i, ip_d;
 for (i=1; i<5; i++) {
  ip_d = getDigit(ip, i);
 }
 if ((ip_d >= parseInt(document.dhcpd.dhcpRangeStart.value, 10)) && (ip_d <= parseInt(document.dhcpd.dhcpRangeEnd.value, 10))) {
  return false;
 }
 return true;
}
function saveClick(type)
{
 if(type)
  if (!checkHostIP(document.dhcpd.dhcps, 1)) {
     return false;
    }
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function checkSubnet(ip, mask, client)
{
  ip_d = getDigit(ip, 4);
  mask_d = getDigit(mask, 4);
  if ( (ip_d & mask_d) != (client & mask_d ) )
 return false;
  return true;
}
function checkDigitRange_leaseTime(str, min)
{
  d = parseInt(str, 10);
  if ( d < min || d == 0)
       return false;
  return true;
}
function validateKey_leasetime(str)
{
   for (var i=0; i<str.length; i++) {
    if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
      (str.charAt(i) == '-' ) )
   continue;
 return 0;
  }
  return 1;
}
function resetClick()
{
 document.tcpip.reset;
}
function saveChanges()
{
 var lpm1 = 0;
 var lpm2 = 0;
 if (!checkHostIP(document.tcpip.ip, 1))
  return false;
 if (!checkNetmask(document.tcpip.mask, 1))
  return false;
 with (document.forms[0])
 {
  if(typeof chk_port_mask1 != 'undefined' && chk_port_mask1 != null){
   for (var i = 0; i < chk_port_mask1.length; i++) {
    if (chk_port_mask1[i].checked == true)
     lpm1 |= (0x1 << i);
   }
   lan_port_mask1.value = lpm1;
  }
  if(typeof chk_port_mask2 != 'undefined' && chk_port_mask2 != null){
   for (var i = 0; i < chk_port_mask2.length; i++) {
    if (chk_port_mask2[i].checked == true)
     lpm2 |= (0x1 << i);
   }
   lan_port_mask2.value = lpm2;
  }
  if((ip_version1.selectedIndex != 0) && (ipv6_mode1[1].checked)){
   if (ipv6_addr1.value =="" || ipv6_addr1.value =="::") {
    alert("LAN IPv6 address cannot be empty! Format is IPV6 address. For example: 3ffe:501:ffff:100::1");
    ipv6_addr1.focus();
    return false;
   } else {
    if ( validateKeyV6IP(ipv6_addr1.value) == 0) {
     alert("Invalid LAN IPv6 IP!");
     ipv6_addr1.focus();
     return false;
    }
   }
   if (ipv6_prefix1.value =="") {
    alert("LAN IPv6 address ipv6_prefix1 cannot be empty! valid number is 0~127");
    ipv6_prefix1.focus();
    return false;
   } else {
    var prefixInt = parseInt(ipv6_prefix1.value);
    if ( prefixInt>127 ||prefixInt<0) {
     alert("Invalid LAN IPv6 Previx!");
     ipv6_prefix1.focus();
     return false;
    }
   }
  }
  save.isclick = 1;
 }
 
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}

function dhcpTblClick(url) {
 openWindow(url, 'DHCPTbl' );
}
function ShowIP2(ipVal) {
 document.write(getDigit(ipVal,1));
 document.write('.');
 document.write(getDigit(ipVal,2));
 document.write('.');
 document.write(getDigit(ipVal,3));
 document.write('.');
}
function ShowIP(ipVal) {
 var str;
 str = getDigit(ipVal, 1) + '.';
 str += getDigit(ipVal, 2) + '.';
 str += getDigit(ipVal, 3) + '.';
 return str;
}
function macIpClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'MACIPTbl', settings );
}
function ipv6_mode1_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode1[0].checked)
  {
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
  }
  else
  {
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   if(ipv6_addr1.value =="::")
    ipv6_addr1.value ="";
  }
 }
}
function ipv6_mode2_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode2[0].checked)
  {
   ipv6_addr2.disabled = true;
   ipv6_prefix2.disabled = true;
  }
  else
  {
   ipv6_addr2.disabled = false;
   ipv6_prefix2.disabled = false;
  }
 }
}
function ipv6_version1_change()
{
 with (document.forms[0])
 {
  if(ip_version1.selectedIndex == 0)
  {
   ipv6_mode1[0].disabled = true;
   ipv6_mode1[1].disabled = true;
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
   ip.disabled = false;
   mask.disabled = false;
  }
  else
  {
   ipv6_mode1[0].disabled = false;
   ipv6_mode1[1].disabled = false;
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   ip.disabled = false;
   mask.disabled = false;
   ipv6_mode1_change();
  }
 }
}

function on_init()
{
 ipv6_version1_change();
 updateDHCPClient();
}
function enabledhcpd()
{
 document.dhcpd.dhcpdenable[2].checked = true;
 showDhcpSvr(pool_ipprefix);
}
function disabledhcpd()
{
 document.dhcpd.dhcpdenable[0].checked = true;
 showDhcpSvr();
}
function enabledhcprelay()
{
 document.dhcpd.dhcpdenable[1].checked = true;
 showDhcpSvr();
}
function enabledhcpc()
{
 document.dhcpd.dhcpdenable[3].checked = true;
 showDhcpSvr();
}
</SCRIPT>
<style>
   .label {
            font-weight: bold;
            margin-right: 8px;
        }

        .input-box {
            width: 120px;
            height: 24px;
            padding: 2px 5px;
            border: 1px solid #999;
            text-align: center;
        }

        .separator {
            margin: 0 6px;
            font-weight: bold;
        }

        .button {
            height: 28px;
            padding: 2px 8px;
            border: 1px solid #666;
            background: #e0e0e0;
            cursor: pointer;
        }

        .button:hover {
            background: #d0d0d0;
        }
        .form-control{
            width:65%;
        }
        .left-field {
    margin-left: -15px;
    width: 195px;
}
.right-field {
    margin-left: 4px;
}
        </style>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame();lan_dns_server(1)">
<INPUT id="Selected_Menu" type="hidden" 
            value="Net->LAN" name="Net_DHCP"/> 
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
							        MakeLeftMenu('Net','LAN')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                          
                           
                    
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','QoS','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                              <div class="scoop-inner-content">
									  
								
							  
							  <div class="white_box">
								<form id='ConfigForm' name="ConfigForm" action="/cgi-bin/net-dhcp.asp" method="post">

									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/ip_icon.png" width="45" height="40" class="img_sub" alt=""/> IPv4 Configuration</h1>
									<div class="container-fluid">
                                     <input type="hidden" name="portDHCPRelayFlag" id="portDHCPRelayFlag" value="N/A">
                      <input type="hidden" name="portLan1" id="portLan1" value="N/A">
                      <input type="hidden" name="portLan2" id="portLan2"value="N/A">
                      <input type="hidden" name="portLan3" id="portLan3" value="N/A">
                      <input type="hidden" name="portLan4" id="portLan4" value="N/A">
                      <input type="hidden" name="portSSID1" id="portSSID1" value="N/A">
                      <input type="hidden" name="portSSID2" id="portSSID2" value="N/A">
                      <input type="hidden" name="portSSID3" id="portSSID3" value="N/A">
                      <input type="hidden" name="portSSID4" id="portSSID4" value="N/A">
                      <input type="hidden" name="DeviceDHCPRelayFlag" id="DeviceDHCPRelayFlag" value="N/A">
                      <input type="hidden" name="IPV4_Flag" id="IPV4_Flag" value="0">
                      <input type="hidden" name="Change_Flag" id="Change_Flag" value="0">
                      <input type="hidden" name="LANChange" id="LANChange" value="0">
                      <input type="hidden" name="EthendIPcount" id="EthendIPcount" value="100">
                      <input type="hidden" name="DeviceendIPcount" id="DeviceendIPcount" value="80"> 
                      <script language="JavaScript" type="text/JavaScript">
                          function dhcpSecPortRelay() {
                              with (document.forms['ConfigForm']) {
                                  if (getCheckVal('enablePortRelay') == 1) {
                                      setDisplay('portrelayInfo', 0);
                                      document.ConfigForm.portDHCPRelayFlag.value = "No";
                                  }
                                  else {
                                      setDisplay('portrelayInfo', 0);
                                      document.ConfigForm.portDHCPRelayFlag.value = "No";
                                  }
                              }
                          }
                          function checkportcheckboxstate() {
                              var vForm = document.ConfigForm;

                              if (vForm.PortRelay_lan1.checked)
                                  vForm.portLan1.value = "Yes";
                              else vForm.portLan1.value = "No";
                              if (vForm.PortRelay_lan2.checked)
                                  vForm.portLan2.value = "Yes";
                              else vForm.portLan2.value = "No";
                              if (vForm.PortRelay_lan3.checked)
                                  vForm.portLan3.value = "Yes";
                              else vForm.portLan3.value = "No";
                              if (vForm.PortRelay_lan4.checked)
                                  vForm.portLan4.value = "Yes";
                              else vForm.portLan4.value = "No";
                              if (vForm.PortRelay_ssid1.checked)
                                  vForm.portSSID1.value = "Yes";
                              else vForm.portSSID1.value = "No";
                              if (vForm.PortRelay_ssid2.checked)
                                  vForm.portSSID2.value = "Yes";
                              else vForm.portSSID2.value = "No";
                              if (vForm.PortRelay_ssid3.checked)
                                  vForm.portSSID3.value = "Yes";
                              else vForm.portSSID3.value = "No";
                              if (vForm.PortRelay_ssid4.checked)
                                  vForm.portSSID4.value = "Yes";
                              else vForm.portSSID4.value = "No";
                          }
                          function GetEndSubStartCount(EndIp, StartIp) {
                              var vret;
                              addrEnd = EndIp.split('.');
                              addrStart = StartIp.split('.');
                              E = parseInt(addrEnd[3]) + 1;
                              S = parseInt(addrStart[3]);
                              vret = E - S;
                              return vret;

                          }
			function lan_dns_check()
			{
				var landns_val = getRadioVal("dns_config");
				var config_status = "Disable";
				document.getElementById("PRIDNS").value = document.getElementById("primarydnsserver").value;
				document.getElementById("SECDNS").value = document.getElementById("secondarydnsserver").value;
				document.getElementById("config_dns").value = landns_val;

				if (config_status.localeCompare(landns_val)) {
					// document.getElementById("primarydnsserver").disabled = true
					// document.getElementById("secondarydnsserver").disabled = true
					if (document.getElementById('PRIDNS').value.length){
						if (isValidIpAddress(document.getElementById('PRIDNS').value) == false) {
							alert('Address is invalid!');
							return false;
						}
						}else {
							alert("atleast primary dns server IPv4 address is mandatory.");
							return false;
						}
						if(document.getElementById('SECDNS').value.length)
							if(isValidIpAddress(document.getElementById('SECDNS').value) == false){
							alert('Address is invalid!');
							return false;
						}
				} else {
					// document.getElementById("primarydnsserver").disabled = false
					// document.getElementById("secondarydnsserver").disabled = false
					if (document.getElementById('PRIDNS').value.length)
						if (isValidIpAddress(document.getElementById('PRIDNS').value) == false) {
							alert('Address is invalid!');
							return false;
						}
						if(document.getElementById('SECDNS').value.length)
							if(isValidIpAddress(document.getElementById('SECDNS').value) == false){
							alert('Address is invalid!');
							return false;
						}
				}
				return true;
			}
			
			function lan_dns_server(rcv_param)
            {
                var pdnsval = document.getElementById("primarydnsserver");
                var sdnsval = document.getElementById("secondarydnsserver");
                var dnsStatus = document.getElementById("dns_config");

                if (rcv_param ==1) {
                    if ("Enable" ==getRadioVal("dns_config")) {
                            pdnsval.disabled = false;
                            sdnsval.disabled = false;
                        } else {
                            pdnsval.disabled = true;
                            sdnsval.disabled = true;
                        }
                } else {
                    pdnsval.disabled = true;
                            sdnsval.disabled = true;
                }


            }
                          function btnSaveIPv4() {
						  
				                if (false == lan_dns_check())
									return false;
                                if (CheckForm(1) == false)
									return false;		
                                var vForm = document.ConfigForm;
								var radiomode=getRadioVal('dhcpSrvType');
								if(radiomode=="2")
								{
									if ( 0 == $('#dhcpRelayServerIP').val().length )
									{
										alert('Remote IP cannot be null');
										return false;
									}
									if(isValidIpAddress($('#dhcpRelayServerIP').val()) == false)
									{
										alert('Remote IP is invalid');
										return false;	
									}
									
								}
                                if(vForm.Change_Flag.value == "1")
                                {
                                    vForm.Change_Flag.value = "0";
                                    vForm.EthendIPcount.value = GetEndSubStartCount(vForm.dhcpEthEnd.value, vForm.dhcpEthStart.value);
                                    vForm.DeviceendIPcount.value = GetEndSubStartCount(vForm.dhcpEthEndFrag.value, vForm.dhcpEthStartFrag.value);

                                    checkportcheckboxstate();

                                    vForm.IPV4_Flag.value = "1";
                                    if (true == setEBooValueCookie(vForm))
                                        vForm.submit();
                                    if(vForm.LANChange.value == "1")
                                        top.location.href = 'http://' + ethIpAddress.value;
                                }
                          }
                          function devicedhcpRelay() {
							  document.getElementById('portrelayInfo').style.display = 'block'
                              var vForm = document.ConfigForm;
                              if (vForm.enableRelay.checked)
                                  vForm.DeviceDHCPRelayFlag.value = "Yes";
                              else vForm.DeviceDHCPRelayFlag.value = "No";
                          }

                          function initLeaseTimeTable() {
                              var leaseTime = '86400';
                              var optname = new Array('1hour', '6hour', '1day', '2day', '1week');
                              var optvalue = new Array('3600', '21600', '86400', '172800', '604800');
                              var cusname = leaseTime + 'seconds';
                              var hascusopt = true;
                              var isSel = 0;

                              with (getElById('dhcpLeasedTimeFrag')) {
                                  for (i = 0; i < optname.length; i++) {
                                      var opt = new Option(optname[i], optvalue[i]);
                                      if (leaseTime == optvalue[i]) {
                                          opt.selected = true
                                          isSel = i;
                                          hascusopt = false;
                                      }
                                      options.add(opt);
                                      options[isSel].setAttribute('selected', 'true');
                                  }


                                  if (hascusopt && isInteger(leaseTime) && '0' != leaseTime) {
                                      var optcus = new Option(cusname, leaseTime);
                                      optcus.selected = true
                                      options.add(optcus);
                                      isSel = i;
                                      options[isSel].setAttribute('selected', 'true');
                                  }
                              }
                          }
					  </script>

                                    
                                    <div class="lighter_grey_bg">
										<h2 class="sub_heading">LAN Interface Setting</h2>
											This page is used to configure the LAN interface of your Device. Here you may change the setting for IP addresses, subnet mask, etc..
										</div>
  
										
									<div class="row">
										<div class="col-md-4 form-group">
											<label>InterfaceName:</label>
                                            <input type="text" class="form-control" maxlength="15" 
                      name="ethIpAddress" id="ethIpAddress" value="br0"/>
										</div>
										<div class="col-md-4 form-group">
											<label>IP Address:</label>
                                            <input type="text" name="ip" id="ip" size="15" maxlength="15" class="form-control" maxlength="15" 
                         value="192.168.2.1">
										</div>
										</div>
                                        <div class="row">
										<div class="col-md-4 form-group">
											<label>Subnet Mask:</label>
                                            <input type="text"  name="mask" id="mask"class="form-control" maxlength="15" onchange="setDhcpAddresses(this.value)" 
                      name="ethIpAddress" id="ethIpAddress" value="255.255.255.0"/>
										</div>
										<div class="col-md-4 form-group" style="padding:18px">
											<label  style="margin-left:1px" class ="left-field">IPv6 Address Mode:</label>
                        <input class ="right-field" type="radio" name="ipv6_mode1" value="0" onchange="ipv6_mode1_change()" checked="" disabled="" style="margin-left:-37px;">Auto
                        
                        <input class ="right-field" type="radio" name="ipv6_mode1" value="1" onchange="ipv6_mode1_change()" disabled="" style="margin-left:37px;">Manual
										</div>
										</div>
                                        <div class="row">
										<div class="col-md-4 form-group" id="tr_ipv6_addr1">
											<label>IPv6 Address:</label>
                                            <input type="text" name="ipv6_addr1" class="form-control" size="30" maxlength="60" value=0
                      size="5" maxlength="5"  >
										</div>
										<div  id="tr_ipv6_prefix1"  class="col-md-4 form-group">
											<label>IPv6 Prefix Length:</label>
                                            <input type="text"  name="ipv6_prefix1" size="5" maxlength="5" value=0  class="form-control">
                         
										</div>
										</div>
										<div class="row">
										<div class="col-md-4 form-group">
											<label>IP Version</label>
                       <select size="1"class="form-control"  name="ip_version1" OnChange="ipv6_version1_change()">
       <option  value="0">IPv4</option>
       <option  value="2">IPv4/IPv6</option>
      </select>
										</div>
                                        </div>
                                        <div class="row">
										<div class="col-md-4 form-group" style="display: flex; align-items: center;">
											<label  class ="left-field" style="margin:10px;">IGMP Snooping: </label>
                                          <div class="custom-radio custom-control-inline" style="display: flex; gap: 10px;">
                                            <input  class="right-field" type="radio" name="snoop" value="0" />
                                           Disabled
                                            </div>
                                            
												<div class="custom-control custom-radio custom-control-inline">
												 <input class="right-field" type="radio" name="snoop" value="1"/>
                                               Enabled
												</div>
										
										</div>
                                        </div>
                                        <div class="row">
										<div class="col-md-4 form-group" style="display: flex; align-items: center;">
											<label   class ="left-field" style="margin:10px;">Ethernet to Wireless Blocking: </label>
                                          <div  class="custom-radio custom-control-inline" style="display: flex; gap: 10px;">
                                            <input class="right-field" type="radio" name="BlockEth2Wir" value="0" />
                                           Disabled&nbsp;&nbsp;
                                            </div>
                                            
												<div class="custom-control custom-radio custom-control-inline">
												 <input  class="right-field" type="radio" name="BlockEth2Wir" value="1"/>
                                           Enabled 
												</div>
										
										</div>
                                        </div>
                                        <div class="row">
										<div class="col-md-4 form-group" style="display: flex; align-items: center;">
											<label  class ="left-field" style="margin:10px;">Mac Based Tag Decision: </label>
                                          <div class="custom-radio custom-control-inline" style="display: flex; gap: 10px;">
                                            <input class="right-field" type="radio" name="snoop" value="0" />
                                           Disabled
                                            </div>
                                            
												<div class="custom-control custom-radio custom-control-inline">
												 <input  class="right-field" type="radio" name="snoop" value="1"/>
                                               Enabled
												</div>
										
										</div>
                                        </div>

                                
                            
                                    <div class="col-md-12">
										<hr class="margin_adjs" />
										<div class="form-footer">
                                       <button class="btn orange_btn" onclick="return saveChanges()" type="button" id="saveIPv4" name="save" value="Apply Changes">Apply Changes</button>
										</div>
                                             </div>

							      </div>
							      <hr class="margin_adjs" />
							      </div>

								 </form>
                                  
                                
								<div class="white_box">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/ip_icon.png" width="45" height="40" class="img_sub" alt=""/> DHCP Settings</h1>
                                   
                                  
									<div class="container-fluid">
										<div class="lighter_grey_bg">										
											<p>This page is used to configure DHCP Server and DHCP Relay. </p>
										</div>
									<div >
                                    <div class="col-md-12 form-group" style="display: flex; align-items: center;margin-left:-27px;">
                                    <label  style="margin:10px;"> DHCP Mode:</label>
											<div class=" custom-radio custom-control-inline" style="display: flex; gap: 10px;">
                                            <input  id="dhcpSrvType" type="radio"  name="dhcpdenable" value="0" onclick="disabledhcpd()"/>
                                            NONE
                                            
                                            
												</div>
												<div class="custom-control custom-radio custom-control-inline">
                        
												 <input name="dhcpdenable" value="1" onclick="enabledhcprelay()"id="dhcpSrvType"   type="radio" checked/>
                                                 DHCP Relay
												</div>
											<div class="custom-control custom-radio custom-control-inline">
												 
                                                  <input  name="dhcpdenable" value="2" onclick="enabledhcpd()" id="dhcpSrvType"  type="radio"  /> DHCP Server
												</div>
										</div>
<p>Enable the DHCP Server if you are using this device as a DHCP server. This page lists the IP address pools available to hosts on your LAN. The device distributes numbers in the pool to hosts on your network as they request Internet access.</p>
<div class="row">
										<div class="col-md-4 form-group">
											<label>LAN IP Address:</label>
                                            <input type="text" class="form-control" maxlength="15" 
                      name="ethIpAddress" id="ethIpAddress" value="192.168.2.1"/>
										</div>
										<div class="col-md-4 form-group">
											<label>Subnet Mask: </label>
                                            <input type="text" name="ip" id="ip" size="15" maxlength="15" class="form-control" maxlength="15" 
                         value="255.255.255.0">
										</div>
										</div>
                                        <div class="row">
										<div class="col-md-4 form-group">
											<label>IP Pool Range:</label>
                                        
                                            
                    <div style="display:flex;">
                    
                    <div>
                    <input  type="text" class="form-control" "name="dhcpRangeStart" size="15" maxlength="15" value="192.168.2.2" style="margin-left: 4px;Width:134px"></div> 
                    <div><font face="Arial"class="separator" size="5">- </font></div><div><input   class="form-control" type="text" name="dhcpRangeEnd" style="margin-left: 4px;width:134px;" size="15" maxlength="15" value="192.168.2.254"></div>&nbsp;<div><input class="btn orange_btn" type="button" class="button" value="Show Client" name="dhcpClientTbl" onclick="dhcpTblClick('/dhcptbl.asp')"></td></div>

										</div>
                                        </div>
										<div class="col-md-4 form-group">
											<label>Subnet Mask:</label>
                                            <input type="text" class="form-control" maxlength="15" 
                      name="ethIpAddress" id="ethIpAddress" value="255.255.255.0"/>
										</div>
										</div>
                                        <div class="row">

										<div class="col-md-4 form-group">
											<label>Max Lease Time:</label>
                                            <input type="text" name="ip" id="ip" size="15" maxlength="15" class="form-control" maxlength="5" 
                         value="86400"> seconds (-1 indicates an infinite lease)
										</div>
                                        <div class="col-md-4 form-group">
											<label>DomainName:</label>
                                            <input type="text" class="form-control" maxlength="15" 
                      name="dname" id="ethIpAddress" value="bbrouter"/>
										</div>
										</div>
                                        <div class="row">

                                        
										<div class="col-md-4 form-group">
											<label>Gateway Address:</label>
                                            <input type="text" name="ip" id="ip" size="15" maxlength="15" class="form-control" maxlength="5" 
                         value="192.168.2.1">
										</div>

                                        <div id="optID" style="display:block">
    <div class="form-group">
        <label class="left-field" width="30%" style="margin-left:17px" >DNS option:</label>
        <div width="70%">
            <input class="right-field" style="margin-left:18px" type="radio" name="dhcpdns" value="0" onclick="showdns()">Use DNS Relay&nbsp;&nbsp;
            <input  class="right-field" type="radio" name="dhcpdns" value="1" onclick="showdns()">Set Manually&nbsp;&nbsp;
            <input  class="right-field" type="radio" name="dhcpdns" value="2" onclick="showdns()">DNS From ISP&nbsp;&nbsp;
        </div>
    </div>
</div>
</div>
  <div class="row">
<div class="col-md-4 form-group">
<div id="dnsset" style="display: block;">
    <div class="form-group">
        <label width="30%">DNS1:</label>
        <div width="70%">
            <input  class="form-control" type="text" name="dns1" value="0.0.0.0">
        </div>
    </div>
    </div>
    </div>
    <div class=" col-md-4 form-group">
        <label width="30%">DNS2:</label>
        <div width="70%">
            <input class="form-control" type="text" name="dns2" value="0.0.0.0">
        </div>
    </div>
    </div>
  <div class="row">
<div class="col-md-4 form-group">
   <label width="30%">DNS3:</label>
        <div width="70%">
            <input  class="form-control" type="text" name="dns3" value="0.0.0.0">
        </div>
    </div>
</div>
										</div>
                                        
										</div>
                                          <div class="col-md-12">
										<hr class="margin_adjs">
										<div class="form-footer">
                                          <input class="btn orange_btn" onclick="return saveChanges()" type="submit" name="save" value="Apply Changes"></input>
                                            <input class="btn orange_btn" onclick="macIpClick('/portBaseFilterDhcp.asp')" type="button"  name="macIpTbl" value="Port-Based Filter"></input>
                                              <input class="btn orange_btn" onclick="macIpClick('/macIptbl.asp')" type="button" name="save" value="MAC-Based Assignment"></input>
										</div>
                                             </div>
										</div>
										</div>
										</div>
                          
                       
                        </div>
                    </div>
                </div>
            </div>
        </div>
           <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
    </div>
    <!--//set display none-->
    
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!--    <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mCustomScrollbar.concat.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mousewheel.min.js"></script>

   
</body>
</html>

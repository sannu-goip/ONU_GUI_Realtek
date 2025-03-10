


<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Static Route</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">

       <script language="javascript" src="/Dashboard/JS/menu.js"></script>
<script language="javascript" src="/Dashboard/JS/jquery.js"></script>
<script language="javascript" src="/Dashboard/JS/util.js"></script>
<script language="JavaScript" type="text/JavaScript">

</script>
</head>
<body onLoad="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()"
onunload="DoUnload()">
<input name="Selected_Menu" type="hidden" id="Selected_Menu" value="Net->Route">
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
							        MakeLeftMenu('Net','Route')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','Route','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               		<div class="scoop-inner-content">
									  
								
							 								 
								
								<div class="white_box">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/ip_icon.png" width="45" height="40" class="img_sub" alt=""/> Static Route</h1>
                                    <script language="JavaScript" type="text/javascript">

	var nEntryNum = 3;
	// num 0
	var vArrayStr = "1_INTERNET_R_VID_,3_VOICE_R_VID_,4_INTERNET_R_VID_,";
	var vEntryName = vArrayStr.split(',');
	// num 1
	vArrayStr = "nas0_0,nas0_1,ppp2,";
	var vEntryValue = vArrayStr.split(',');
	// num 2~5
	
	// num 6
	vArrayStr = "IPv4,IPv4,IPv4,";
	var Wan_IPVERSION = vArrayStr.split(',');
	
	vEntryName = SortUtil.UpdateWanIFName( vEntryName, nEntryNum );
	vEntryValue = SortUtil.SortMyArray( vEntryValue );
	Wan_IPVERSION = SortUtil.SortMyArray( Wan_IPVERSION );
	
var host = [["InternetGatewayDevice.LANDevice.1.LANHostConfigManagement.IPInterface.1","192.168.1.1","255.255.255.0"],null];
var IpAddress = host[0][1];
var SubnetMask = host[0][2];
function stWan(domain,wanName,CntType)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
}
function stDsl(domain,LinkType)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.LinkType = LinkType;
}
var WanPPP = new Array(new stWan("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35","IP_Routed"),null);
var WanIP = new Array(null);
var CntPvc = new Array(new stDsl("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANDSLLinkConfig","EoA"),null);
if (WanPPP.length > 1)
AssociateParam('WanPPP','CntPvc','LinkType');
if (WanIP.length > 1)
AssociateParam('WanIP','CntPvc','LinkType');
var Wan = new Array();
for (i = 0; i < WanIP.length-1; i++)
{
	Wan[i] = WanIP[i];
}
for (j = 0; j < WanPPP.length-1; i++,j++)
{
	Wan[i] =  WanPPP[j];
}

var routecount = 16;
function stStaticRoute(domain,DestIPAddress)
{
	this.domain = domain;
	this.DestIPAddress = DestIPAddress;
}
function getStaticRouteInfo()
{
	var	nCurTemp = 0;
	var	vDestIPAddress = new Array(routecount);
	var	vcurLinks = new Array(routecount);
	
	vDestIPAddress[0] = "N/A";
	vDestIPAddress[1] = "N/A";
	vDestIPAddress[2] = "N/A";
	vDestIPAddress[3] = "N/A";
	vDestIPAddress[4] = "N/A";
	vDestIPAddress[5] = "N/A";
	vDestIPAddress[6] = "N/A";
	vDestIPAddress[7] = "N/A";
	vDestIPAddress[8] = "N/A";
	vDestIPAddress[9] = "N/A";
	vDestIPAddress[10] = "N/A";
	vDestIPAddress[11] = "N/A";
	vDestIPAddress[12] = "N/A";
	vDestIPAddress[13] = "N/A";
	vDestIPAddress[14] = "N/A";
	vDestIPAddress[15] = "N/A";
	
	for(var i=0; i<routecount; i++)
	{
		if(vDestIPAddress[i] != "N/A")
			vcurLinks[nCurTemp++] = new stStaticRoute(i, vDestIPAddress[i]);
	}
	var	vObjRet = new Array(nCurTemp+1);
	for(var m=0; m<nCurTemp; m++)
	{
		vObjRet[m] = vcurLinks[m];
	}
	vObjRet[nCurTemp] = null;
	return vObjRet;
}
var StaticRouteInfo = getStaticRouteInfo();

/*function WriteOption()
{
for (i = 0; i < Wan.length; i++)
{
if (Wan[i].CntType == 'IP_Routed' && (Wan[i].wanName.indexOf("TR069") == -1))
{
document.write('<option value="' + Wan[i].domain + '"' + ' id="routewan_' + i + '">'
+ Wan[i].wanName + '</option>');
}
}
}*/
function btnClear()
{
with ( document.forms[0] )
{
DestIPAddress.value = '';
DestSubnetMask.value = '';
GatewayIPAddress.value = '';
}
}
function LoadFrame()
{
	document.ConfigForm.SaveFlag.value = "0";
}
function getMostRightPosOf1(str)
{
for (i = str.length - 1; i >= 0; i--)
{
if (str.charAt(i) == '1')
{
break;
}
}
return i;
}
function getBinaryString(str)
{
var numArr = [128, 64, 32, 16, 8, 4, 2, 1];
var addrParts = str.split('.');
if (addrParts.length < 3)
{
return "00000000000000000000000000000000";
}
var binstr = '';
for (i = 0; i < 4; i++)
{
var num = parseInt(addrParts[i])
for ( j = 0; j < numArr.length; j++ )
{
if ( (num & numArr[j]) != 0 )
{
binstr += '1';
}
else
{
binstr += '0';
}
}
}
return binstr;
}
function isMatchedIpAndMask(ip, mask)
{
var locIp = getBinaryString(ip);
var locMask = getBinaryString(mask);
if (locIp.length != locMask.length)
{
return false;
}
var most_right_pos_1 = getMostRightPosOf1(locMask);
if (most_right_pos_1 == -1)
{
if (loaIp == '00000000000000000000000000000000')
{
return true;
}
else
{
return false;
}
}
for (i = most_right_pos_1 + 1; i < locIp.length; i++)
{
if (locIp.charAt(i) != '0')
{
return false;
}
}
return true;
}
function CheckForm(Form)
{
	for (i = 0; i < StaticRouteInfo.length - 1; i++)
	{
		if (StaticRouteInfo[i].DestIPAddress == getValue('DestIPAddress'))
		{
			alert('The destination IP address has been used by other static route!');
			return false;
		}
	}
	with ( document.forms[0] )
{
	var DestIp = DestIPAddress.value;
	var index1 = IpAddress.lastIndexOf('.');
	var index2 = DestIp.lastIndexOf('.');
	if ( isValidIpAddress(DestIp) == false
	|| isDeIpAddress(DestIp) == true
	|| isBroadcastIpAddress(DestIp) == true
	|| isLoopIpAddress(DestIp) == true )
	{
		alert('Destination  "' + DestIPAddress.value + '" is invalid');
		return false;
	}
	if (IpAddress == DestIp
	|| (DestIp.substr(index1 + 1) == '0' && IpAddress.substr(0,index1) == DestIp.substr(0,index2)))
	{
		alert('Destination IP address is invalid!');
		return false;
	}
//Form.addParameter('DestIPAddress',DestIPAddress.value);
	if ( isValidSubnetMask(DestSubnetMask.value) == false &&  DestSubnetMask.value != '255.255.255.255')
	{
		alert('Subnet Mask"' + DestSubnetMask.value + '" is invalid');
		return false;
	}
//Form.addParameter('DestSubnetMask',DestSubnetMask.value);
	if (isMatchedIpAndMask(DestIPAddress.value, DestSubnetMask.value) == false)
	{
		alert('Destination IP address  "' + DestIPAddress.value + '"and subnet mask"' + DestSubnetMask.value + '" dose not match!');
		return false;
	}
	if (gwStr.checked == false && ifStr.checked == false)
	{
		alert('Please select ');
		return false;
	}
	if (gwStr.checked == true)
	{
		if ( isAbcIpAddress(GatewayIPAddress.value) == false )
		{
			alert('Default Gateway:"' + GatewayIPAddress.value + '" is invalid');
			return false;
		}
//Form.addParameter('GatewayIPAddress',GatewayIPAddress.value);
	}
	else
	{
//Form.addParameter('GatewayIPAddress','0.0.0.0');
	}
	
	if (ifStr.checked == true)
	{
		var idx = Interface.selectedIndex;
		var WANId = Interface.options[idx].id;
		if ((idx != Interface.length - 1) && (Interface.value.indexOf('nas') > -1) && (gwStr.checked == false))
		{
			alert('If IPoE interface is selected, please fill in the gateway IP address!');
			return false;
		}
//Form.addParameter('Interface',getSelectVal('Interface'));
	}
	else
	{
	}
}
//Form.endPrefix();
return true;
}
function SubmitForm()
{
	//var Form = new webSubmitForm();
	if (true == CheckForm(document.ConfigForm))
	{
		/*Form.setAction("addcfg.cgi?x=InternetGatewayDevice.Layer3Forwarding.Forwarding"
		+ "&RequestFile=html/network/route.asp");
		Form.submit();*/
		var vForm = document.ConfigForm;
		if(vForm.user_def_num.value >= 16)
		{
			alert("User only define 16 static routes!");
			return;
		}

		if(vForm.gwStr.checked)
			vForm.gwflag.value = "Yes";
		else vForm.gwflag.value = "No";
		
		if(vForm.ifStr.checked)
			vForm.ifflag.value = "Yes";
		else vForm.ifflag.value = "No";
		
		//vForm.WanInterfaceFlag.value = vForm.Interface.value;
		for (var i = 0; i < nEntryNum; i++) 
		{
								
			if ((vEntryName[i].indexOf('_INTERNET_') < 0) || (vEntryName[i].indexOf('_B_') > -1) || 'IPv6' == Wan_IPVERSION[i])
				continue;

			if (vForm.Interface.value == vEntryValue[i])
			{
				vForm.WanInterfaceFlag.value = vEntryValue[i];//IFName
				vForm.WanInterfaceFlag1.value = vEntryName[i];//GUIInterfaceName
			}

			if(vForm.Interface.value == "br0")
			{
				vForm.WanInterfaceFlag.value = "br0";
				vForm.WanInterfaceFlag1.value = "LAN/br0";
			}
		}
		vForm.SaveFlag.value = "1";
		if( true == setEBooValueCookie(vForm) )
			vForm.submit();
	}

}
function Cancle()
{
location.replace("/cgi-bin/net-routeset.asp");
}
</script>
									<div class="container-fluid">
										<div class="lighter_grey_bg">
											<p>Please input destination IP address, subnet mask, gateway and / or available WAN interface, and then click &quot;ok&quot; to add records to the routing table.<br>
                      <script language="JavaScript" type="text/JavaScript">

                          function WriteWanNameSelected() {
                              for (var i = 0; i < nEntryNum; i++) {
                                  if ((vEntryName[i].indexOf('_INTERNET_') < 0) || (vEntryName[i].indexOf('_B_') > -1) || 'IPv6' == Wan_IPVERSION[i])
                                      continue;

                                  document.write('<option value=' + vEntryValue[i] + '>' + vEntryName[i] + '</option>');
                              }
                          }
                          function ChangeInterface() {
                              //document.ConfigForm.SaveFlag.value = "2";
                              //document.ConfigForm.submit();
                          }
					  </script></p>
										</div>
										 <form name="ConfigForm" action="/cgi-bin/net-routeadd.asp" method="post" class="row">
										      <input type="hidden" id="add_num" name="add_num" value="0">
                                              <input type="hidden" id="user_def_num" name="user_def_num" value="0">
                                              <input type="hidden" id="WanInterfaceFlag" name="WanInterfaceFlag" value="PVC0">
											  <input type="hidden" id="WanInterfaceFlag1" name="WanInterfaceFlag1" value="PVC0">
                                              <input type="hidden" id="metricFlag" name="metricFlag" value="0">
                                              <input type="hidden" id="gwflag" name="gwflag" value="No">
                                              <input type="hidden" id="SaveFlag" name="SaveFlag" value="0">
                                              <input type="hidden" id="ifflag" name="ifflag" value="No">
										<div class="col-md-3 form-group">
											<label>Destination IP address </label>
                                            <input type='text' class="form-control" id='DestIPAddress' name='DestIPAddress' maxlength='15' value="0.0.0.0">
										</div>
										<div class="col-md-3 form-group">
											<label>Subnet Mask</label>
                                            <input type='text' class="form-control" id='DestSubnetMask' name='DestSubnetMask' maxlength='15' value="0.0.0.0">
										</div>
										<div class="col-md-12"></div>
										<div class="col-md-3 form-group">
											<label><div class="custom-control custom-checkbox">
                                            <input type="checkbox" id='gwStr' name='gwStr' class="custom-control-input" >
											  <label class="custom-control-label" for="gwStr">Use gateway IP Address:</label>
											</div></label>
                                            <input type='text' maxlength='15' class="form-control" id='GatewayIPAddress' name='GatewayIPAddress' value="">
										</div>
										<div class="col-md-3 form-group">
											<label><div class="custom-control custom-checkbox">
                                            <input type="checkbox"  class="custom-control-input" id='ifStr' name='ifStr' >
											  <label class="custom-control-label" for="ifStr">Use Interface</label>
											</div></label>
                                            <select name='Interface'  id="select"  onChange="ChangeInterface()" class="custom-select">
                            <script language="javascript">
                                WriteWanNameSelected();
                                document.writeln("  <option value='br0'> LAN/br0");
</script>
                          </select>
										</div>

							      </form>
										<hr class="margin_adjs" />
										<div class="form-footer">
										<button class="btn orange_btn" type="button"  id="btnOK" onClick="SubmitForm()">OK</button>
										<button class="btn grey_btn" type="button" id="btnCancel" onClick="Cancle()">Cancel</button>	
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

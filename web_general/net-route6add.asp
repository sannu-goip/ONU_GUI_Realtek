

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>IPv6 Static Route</title>
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
<body onLoad="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<input name="Selected_Menu" type="hidden" id="Selected_Menu" value="Net->Route">
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
function stWanppp(domain,wanName,CntType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
function stWanip(domain,wanName,CntType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.wanName = wanName;
this.CntType = CntType;
this.LinkType = '';
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
function stDsl(domain,LinkType,address,enable,servicelist)
{
this.domain = domain;
var list = domain.split('.');
this.key = 	list[4];
this.LinkType = LinkType;
this.address = address;
this.enable = enable;
this.servicelist = servicelist;
}
var WanPPP = new Array(new stWanppp("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANPPPConnection.2","1_TR069_INTERNET_R_0_35","IP_Routed","","1","TR069_INTERNET"),null);
var WanIP = new Array(null);
var CntPvc = new Array(new stDsl("InternetGatewayDevice.WANDevice.1.WANConnectionDevice.4.WANDSLLinkConfig","EoA"),null);
var k = 0;
var Wan = new Array();
for (i = 0; i < WanPPP.length-1; i++)
{
if ((WanPPP[i].enable == 0)
|| (WanPPP[i].servicelist.indexOf('TR069') >= 0)
|| (WanPPP[i].CntType.indexOf('Bridge') > -1))
{
continue;
}
Wan[k] = WanPPP[i];
k++;
}
for (j = 0; j < WanIP.length-1; j++)
{
if ((WanIP[j].enable == 0)
|| (WanIP[j].servicelist.indexOf('TR069') >= 0)
|| (WanIP[j].CntType.indexOf('Bridge') > -1))
{
continue;
}
Wan[k] = WanIP[j];
k++;
}

var route6count = 16;
function stStaticRoute6(Domain, DestIPAddress, PrefixLength, GatewayIPAddress, Interface)
{
	this.Domain = Domain;
	this.DestIPAddress = DestIPAddress;
	this.PrefixLength = PrefixLength;
	this.GatewayIPAddress = GatewayIPAddress;
	this.Interface = Interface;
}
function getStaticRoute6Info()
{
	var	nCurTemp = 0;
	var	vDestIPAddress = new Array(route6count);
	var	vPrefixLength = new Array(route6count);
	var	vcurLinks = new Array(route6count);
	
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
	
	vPrefixLength[0] = "N/A";
	vPrefixLength[1] = "N/A";
	vPrefixLength[2] = "N/A";
	vPrefixLength[3] = "N/A";
	vPrefixLength[4] = "N/A";
	vPrefixLength[5] = "N/A";
	vPrefixLength[6] = "N/A";
	vPrefixLength[7] = "N/A";
	vPrefixLength[8] = "N/A";
	vPrefixLength[9] = "N/A";
	vPrefixLength[10] = "N/A";
	vPrefixLength[11] = "N/A";
	vPrefixLength[12] = "N/A";
	vPrefixLength[13] = "N/A";
	vPrefixLength[14] = "N/A";
	vPrefixLength[15] = "N/A";
	
	for(var i=0; i<route6count; i++)
	{
		if(vDestIPAddress[i] != "N/A")
			vcurLinks[nCurTemp++] = new stStaticRoute6(i, vDestIPAddress[i], vPrefixLength[i], "", "");
	}
	var	vObjRet = new Array(nCurTemp+1);
	for(var m=0; m<nCurTemp; m++)
	{
		vObjRet[m] = vcurLinks[m];
	}
	vObjRet[nCurTemp] = null;
	return vObjRet;
}
var StaticRoute = getStaticRoute6Info();

function btnClear()
{
with ( document.forms[0] )
{
	DestIPAddress.value = '';
	PrefixLen.value = '';
	GatewayIPAddress.value = '';
	gEnable.checked = false;
}
}
function LoadFrame()
{
	document.ConfigForm.IPv6_Flag.value = "0";
}
function CheckForm(Form)
{
//Form.usingPrefix('x');
with ( document.forms[0] )
{
	for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if ((StaticRoute[i].DestIPAddress == getValue('DestIPAddress'))
		&& (StaticRoute[i].PrefixLength == getValue('PrefixLen')))
		{
			alert('The destination IP address is incorrect, which has been occupied by other static routing!');
			return false;
		}
	}
	var DestIp = DestIPAddress.value;
	if (DestIp == '')
	{
		alert('The destination IP address is incorrect!');
		return false;
	}
	if (isIpv6Address(DestIp) == false)
	{
		alert('The destination IP address is incorrect!');
		return false;
	}
	if ((PrefixLen.value == '')
	|| (!isInteger(PrefixLen.value))
	|| (parseInt(PrefixLen.value) > 128)
	|| (parseInt(PrefixLen.value) < 0))
	{
		alert('The length of prefix is incorrect!');
		return false;
	}
	var addrTmp = getValue('DestIPAddress');
	var plen1 = getValue('PrefixLen');
	var plen2 = 0;
	/*for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if ((StaticRoute[i].PrefixLength == '')
		|| (StaticRoute[i].DestIPAddress == ''))
		{
			continue;
		}
		plen2 = StaticRoute[i].PrefixLength;
		if (true == CompareTwoAddress(addrTmp, plen1, StaticRoute[i].DestIPAddress, plen2))
		{
			alert('Destination IP error!');
			return false;
		}
	}*/
	if (gwStr.checked == true)
	{
		if (isIpv6Address(GatewayIPAddress.value) == false)
		{
			alert("Default gateway is incorrect!");
			return false;
		}
		if (isUnicastIpv6Address(GatewayIPAddress.value) == false)
		{
			alert("Default gateway is incorrect!");
			return false;
		}
	}
	if ('' == getSelectVal('Interface'))
	{
		alert('Export interface is incorrect!');
		return false;
	}
	var selectobj = getSelectVal('Interface');
	/*if (Wan.length > 0)
	{
		for (z=0; z < Wan.length; z++)
		{
			if (Wan[z].domain == selectobj)
			{
				if ( Wan[z].address.indexOf(":") < 0 )
				{
					alert("Interface cannot achieve IPv6 address!");
					return false;
				}
			}
		}
	}*/
//Form.addParameter('DestIPAddress', DestIPAddress.value);
//Form.addParameter('PrefixLength', PrefixLen.value);
//if (gwStr.checked == true)
//{
//Form.addParameter('GatewayIPAddress',GatewayIPAddress.value);
//}
//else
//{
//Form.addParameter('GatewayIPAddress', '');
//}
//Form.addParameter('Enable', getCheckVal('gEnable'));
//Form.addParameter('Interface', getSelectVal('Interface'));
}
/*if (0 == getValue('PrefixLen'))
{
	for (i = 0; i < StaticRoute.length - 1; i++)
	{
		if (0 == StaticRoute[i].PrefixLength)
		{
			alert('Destination IP error!');
			return false;;
		}
	}
}*/
//Form.endPrefix();
return true;
}

function checkFormstatus()
{
	var Form = document.ConfigForm;
	if(Form.gEnable.checked)
		Form.hEnableflag.value = "Yes";
	else Form.hEnableflag.value = "No";
	
	if(Form.gwStr.checked)
		Form.gwEnableflag.value = "Yes";
	else Form.gwEnableflag.value = "No";
	
	
}
function SubmitForm()
{
	var Form = document.ConfigForm;

	if (true == CheckForm(Form))
	{
	//if(Form.Interface.value == "br0")
		//Form.WanInterfaceFlag.value = Form.Interface.value;	

	//else Form.WanInterfaceFlag.value = Form.Interface.value;
	for (var i = 0; i < nEntryNum; i++) 
	{
							
		if ((vEntryName[i].indexOf('_INTERNET_') < 0) || (vEntryName[i].indexOf('_B_') > -1) || 'IPv4' == Wan_IPVERSION[i])
			continue;

		if (Form.Interface.value == vEntryValue[i])
		{
			Form.WanInterfaceFlag.value = vEntryValue[i];//IFName
			Form.WanInterfaceFlag1.value = vEntryName[i];//GUIInterfaceName
		}

		if(Form.Interface.value == "br0")
		{
			Form.WanInterfaceFlag.value = "br0";
			Form.WanInterfaceFlag1.value = "LAN/br0";
		}
	}
		checkFormstatus();
		Form.IPv6_Flag.value = "1";
		if( true == setEBooValueCookie(Form) )
			Form.submit();
	}
}
function Cancle()
{
location.replace("net-routeset.asp");
}
</script>


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
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/ip_icon.png" width="45" height="40" class="img_sub" alt=""/> IPv6 Static Route</h1>
									<div class="container-fluid">
										<hr />
									<form name="ConfigForm" action="/cgi-bin/net-route6add.asp" method="post" class="row">
                                    <input type="hidden" id="IPv6_Flag" name="IPv6_Flag" value="0">
                      <input type="hidden" id="curSetIdx" name="curSetIdx" value="0">
                      <input type="hidden" id="WanInterfaceFlag" name="WanInterfaceFlag" value="nas0_0">
					  <input type="hidden" id="WanInterfaceFlag1" name="WanInterfaceFlag1" value="nas0_0">
                      <input type="hidden" id="metricFlag" name="metricFlag" value="0">
                      <input type="hidden" id="hEnableflag" name="hEnableflag" value="No">
                      <input type="hidden" id="gwEnableflag" name="gwEnableflag" value="No">
                      <script language="JavaScript" type="text/JavaScript">
                          var nCount = 8;
                          var nEntryCount = 8;
                          function WanIndexConstruction(domain, WanName, WanMode) {
                              this.domain = domain;
                              this.WanName = WanName;
                              this.WanMode = WanMode;
                          }

                          function WriteWanNameSelected()
						  {
                              /*var	iSlected = 0;
                              var WanIDNums = CurWan;
                              var nlength = WanIDNums.length-1;
                              for(var i=0; i< nlength; i++)
                              {
                              if((WanIDNums[i].WanName.search(/TR069/i) < 1) && (WanIDNums[i].WanMode == "Route"))
                              document.writeln("<option value=" + WanIDNums[i].domain + ">" + WanIDNums[i].WanName + "</option>");
                              if(document.dmzForm.CurWan_Flag.value == WanIDNums[i].domain)
                              {
                              document.dmzForm.Interface.selectedIndex= iSlected;
                              }
                              iSlected++;
                              }*/
                              for (var i = 0; i < nEntryNum; i++) 
							  {

                                  if ((vEntryName[i].indexOf('_INTERNET_') < 0) || (vEntryName[i].indexOf('_B_') > -1) || 'IPv4' == Wan_IPVERSION[i])
                                      continue;
                                  document.write('<option value=' + vEntryValue[i] + '>' + vEntryName[i] + '</option>');
                              }
                          }
</script>
										<div class="col-md-12 form-group">
										<h2 class="sub_heading">Static Route</h2>
											<div class="custom-control custom-checkbox">
                                            <input type="checkbox" id='gEnable' name='gEnable' class="custom-control-input" value="Yes"/>
											  <label class="custom-control-label" for="gEnable">Enable</label>
											</div>
										</div>
										<div class="col-md-3 form-group">
											<label>Destination IP address </label>
                                            <input type='text' id='DestIPAddress' name='DestIPAddress' maxlength='64'  class="form-control">
										</div>
										<div class="col-md-3 form-group">
											<label>Prefix Length:</label>
                                            <input type="text" id="PrefixLen" name="PrefixLen" maxlength="64"  class="form-control">
										</div>
										<div class="col-md-12"></div>
										<div class="col-md-3 form-group">
											<label><div class="custom-control custom-checkbox">
                                            <input type="checkbox" id='gwStr' name='gwStr' class="custom-control-input" >
											  <label class="custom-control-label" for="gwStr">Default Gateway:</label>
											</div></label>
                                            <input type='text' maxlength='64' id='GatewayIPAddress' name='GatewayIPAddress' class="form-control">
										</div>
										<div class="col-md-3 form-group">
											<label>Use Interface</label>
                                            <select name='Interface'  id="Interface" class="custom-select">
<script language="javascript">
    WriteWanNameSelected();
    document.writeln("<option value='br0'> LAN/br0");
</script>
</select>
										</div>

										
							      </form>
										<hr class="margin_adjs" />
										<div class="form-footer">
										<button class="btn orange_btn" type="button" id="btnOK" onClick="SubmitForm()">OK</button>
										<button class="btn grey_btn" type="button" id="btnCancel" onClick="Cancle()">Cancel</button>	
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
  <!--  </div>-->
 
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

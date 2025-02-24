
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">


<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="N/A" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>
         WAN</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">

     <script language="javascript" src="/Dashboard/JS/util.js"></script>
	  <script src="admin/jquip_sizzle.js" type="text/javascript" ></script>
    <script src="admin/jquip.js" type="text/javascript" ></script>
    <script src="admin/juicer.js" type="text/javascript" ></script>
    <script src="admin/ui.js" type="text/javascript" ></script>
<script>
document.write("<s"+"cript type='text/javascript' src='adminMenu.js?v="+Math.random()+"'></scr"+"ipt>");
</script>
    <script type="text/javascript" src="admin/init.js"></script>
    <script id="nav-tmpl" type="text/template">
        {@each items as item}
            <li><a href="javascript:void(0)" rel="${item.sub}" class="">${item.name}</a><span></span></li>
        {@/each}
    </script>
    <script id="side-tmpl" type="text/x-template">
        {@each items as item}
            <li class="{@if item.collapsed}collapsed{@/if}">
                <h3><a href="#">${item.name}</a></h3>
                <ul>
                    {@each item.items as it}
                        <li><a target="contentIframe" href="${it.href}" class="">${it.name}</a></li>
                    {@/each}
                </ul>
            </li>
        {@/each}
    </script>
 <script>
      function confirmlogout()
      {
       if ( !confirm('do you confirm to logout?') ) {
      return false;
      }
      else
   {
     return true;
   }
     }
function cleanload()
{
 top.document.getElementById('shade').style.display = 'none';
 top.document.getElementById('loadpagediv').style.display = 'none';
}
    </script>
</head>
<META content="MSHTML 6.00.6000.16809" name=GENERATOR></HEAD>
<style>
.heading{
    font-weight: 200;
    color: #f58220;
    font-size: 20px;
    padding: 0px 12px;
    margin: 0px;
}
	input[type="checkbox"] {
	  appearance: none;
	  -webkit-appearance: none;
	  width: 16px;
	  height: 15px;
	  border: 1px solid darkgray;
	  border-radius: 1px; 
	  cursor: pointer;
	  position: relative;
	  background-color: white;
	}	

	input[type="checkbox"]:checked {
	  background-color: orange;
	  border-color: orange;
	}	

	input[type="checkbox"]:checked::after {
	  content: "";
	  position: absolute;
	  top: 0px;
	  left: 4px;
	  width: 5px;
	  height: 12px;
	  border: solid white;
	  border-width: 0 2px 2px 0;
	  transform: rotate(45deg);
	}
	.body-container{
		width: 150%;
	}
	.flex{
		display: flex;	
	}
	.custom-select, #MTU, .select-input{
		height: 30px;
	}
	.w-360{
		width: 360px;
	}
	.w-400{
		width: 400px;
	}
	.flex input{
		width: 400px;
	}
	
	.flex select{
		width: 400px;
	}
	.custom-checkbox-col{
		max-width: fit-content;
	}
	.w-400{
		width: 400px;
	}
	.flexi-checkbox{
		display: flex;
		flex-direction: row-reverse;
		margin-left: -3px;
	}
	.ipversionstyle{
		display: flex; 
		justify-content: normal; 
		align-items: center;
	}
	.w-85{
		width: 85px;
	}
	#secStaticItems div{
		padding-bottom: 10px;
	}
	#secPppoeItems div{
		padding-bottom: 10px;
	}
	.notePadding{
		padding-inline: 18px;
		padding-block: 18px;
	}
	
</style>
<body onload="LoadFrame();manual_dnsconfig_dhcp_mode(1)">


      <TABLE height=117 cellSpacing=0 cellPadding=0 width=808> 
 

<INPUT id="Selected_Menu" type="hidden" 
            value="Net->WAN" name="Selected_Menu">
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
							        MakeLeftMenu('Net','WAN')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                           <div id="Header">
                                <header class="header_box scoop-header iscollapsed" header-theme="theme2" scoop-header-position="relative">
                                    <div class="sidebar_toggle">
                                        <a href="javascript:void(0)">
                                            <i class="icon-menu"></i>
                                        </a>
                                    </div>
                                    <span class="gateway_box">Gateway Name:Home Gateway</span>
                                    <span class="model_box">Gateway Type:SY-GPON-2010-WADONT</span>
                                    <a onclick="DoLogout()" href="/cgi-bin/logout.cgi" id="logOut" name="logOut" target="_top" class="Power_btn">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="22" height="25" viewBox="0 0 22 25"> 
                                            <path id="power_icon" data-name="power_icon" class="cls-1" d="M15.405,3.524s-1.324-.6-1.324.8A3.166,3.166,0,0,0,15.41,6.65,8.495,8.495,0,0,1,11,22.253,8.495,8.495,0,0,1,6.59,6.65,3.167,3.167,0,0,0,7.919,4.322c0-1.4-1.324-.8-1.324-0.8A11.242,11.242,0,0,0,11,25,11.242,11.242,0,0,0,15.405,3.524ZM11.077,0A1.47,1.47,0,0,0,9.46,1.258V12.325a1.47,1.47,0,0,0,1.618,1.258,1.3,1.3,0,0,0,1.463-1.258V1.258A1.3,1.3,0,0,0,11.077,0Z">
                                            </path>
                                        </svg>
                                    </a> 
                                </header>
                                <div class="breadcrum_box">
                                    <ul style="display: flex; align-items: center;">
                                        <li><a href="#">Status</a></li>
                                        <div>
                                        <a href="https://www.facebook.com/SyrotechNetworks" target="_blank">
                                            <img src="/img/facebook.png" style="width:30px">
                                        </a>
                                        <a href="https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2F13408012%2Fadmin%2F" target="_blank">
                                            <img src="/img/linkedin.png" style="width:30px">


                                        </a>
                                        <a href="https://twitter.com/Syrotech" target="_blank">
                                            <img src="/img/twitter.png" style="width:30px">
                                        </a>
                                        <a href="https://www.youtube.com/channel/UCxKPAshBZ3BjsKoryZqd1jg?reload=9" target="_blank">
                                            <img src="/img/youtube.png" style="width:30px">
                                        </a> <a href="https://www.instagram.com/syrotechnetworks/" target="_blank">
                                            <img src="/img/insta.png" style="width:30px">
                                        </a>

                                    </div>
                                    </ul>
                                    <div class="help_icon">
                                        <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> 
                                                <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> 
                                            </svg> 
                                        </a> 
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="">
                            

                             <div class="scoop-inner-content">
								
							 						 
								
                                 <FORM name="ConfigForm" id='ConfigForm' action="/web/change_wan.asp" method="post">
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> InternetConnection</h1>
									<div class="container-fluid">
										<hr class="margin_adjs" />
										
                                                                                <div class="col-md-4 form-group" id="trans_id">
																				
<div class="col-md-12 form-group" id="divIpVersion">
        <h2 class="sub_heading" style="color:#fd7e14;" id="ip_text">WAN Mode:</h2>
        <div class="custom-radio custom-control-inline">
                  <input type="radio" value="GPON WAN " name="wanmode" Value="0">
                 <!-- <label class="custom-control-label" for="IpVersion">IPv4</label>-->GPON WAN
                </div>
                 
<div class="custom-control custom-radio custom-control-inline">
                   <input type="radio" value="EPON WAN " name="wanmode" value="1">
                 <!-- <label class="custom-control-label" for="IpVersion-6">IPv6</label>-->EPON WAN
                </div>

<div class="custom-control custom-radio custom-control-inline">
                 <input type="radio" value="ETHERNET WAN" name="wanmode" value="2">
                <!--  <label class="custom-control-label" for="IpVersion-46">IPv4/IPv6</label>-->ETHERNET WAN
                </div>
              <div class=" col-md-4 form-group ">
                     <div class="btn btn-lg btn-group-lg">
					 <input class="link_bg" type="submit" value="Apply Changes" name="save" onclick="return saveChanges()">
                     <input type="hidden" value="/change_wan.asp" name="submit-url">
                     <input type="hidden" name="postSecurityFlag" value="">
						</div>
                      
                                  </div>
               
                <div id="result"></div>
                <script>
                   function radiobutton() {
                      var ele = document.getElementsByName('gender');
                      for(i = 0; i < ele.length; i++) {
                         if(ele[i].checked)
                         document.getElementById("result").innerHTML = "Gender: "+ele[i].value;
                      }
                   }
                </script>
<input type="hidden" id="IPVersionValue" name="IPVersionValue" value="IPv4/IPv6">
<input type="hidden" id="ISPTypeValue" name="ISPTypeValue" value="0">
</div>
<script language="JavaScript" type="text/JavaScript">  


setDisplay('secLan5', 0);
setDisplay('secLan6', 0);
setDisplay('secLan7', 0);
setDisplay('secLan8', 0);
setDisplay('LanBindExt', 0);

var validSSID = "4";
var validNum = parseInt(validSSID);
if(validSSID == "1"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 0);
setDisplay('secWireless3', 0);
setDisplay('secWireless4', 0);
setDisplay('secWireless5', 0);
setDisplay('secWireless6', 0);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
setDisplay('wlanBindSSIDExt', 0);
}
else if(validSSID == "2"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 0);
setDisplay('secWireless4', 0);
setDisplay('secWireless5', 0);
setDisplay('secWireless6', 0);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
setDisplay('wlanBindSSIDExt', 0);
}
else if(validSSID == "3"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 0);
setDisplay('secWireless5', 0);
setDisplay('secWireless6', 0);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
setDisplay('wlanBindSSIDExt', 0);
}
else if(validSSID == "4"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 1);
setDisplay('secWireless5', 0);
setDisplay('secWireless6', 0);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
setDisplay('wlanBindSSIDExt', 0);
}

else if(validSSID == "5"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 1);
setDisplay('secWireless5', 1);
setDisplay('secWireless6', 0);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
}
else if(validSSID == "6"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 1);
setDisplay('secWireless5', 1);
setDisplay('secWireless6', 1);
setDisplay('secWireless7', 0);
setDisplay('secWireless8', 0);
}
else if(validSSID == "7"){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 1);
setDisplay('secWireless5', 1);
setDisplay('secWireless6', 1);
setDisplay('secWireless7', 1);
setDisplay('secWireless8', 0);
}
else if(validNum >= 8){
setDisplay('secWireless1', 1);
setDisplay('secWireless2', 1);
setDisplay('secWireless3', 1);
setDisplay('secWireless4', 1);
setDisplay('secWireless5', 1);
setDisplay('secWireless6', 1);
setDisplay('secWireless7', 1);
setDisplay('secWireless8', 1);
setDisplay('wlanBindSSIDExt', 1);
}

/*wireless 5g*/
var validacSSID = "4";	
var validAcNum = parseInt(validSSID);
if(validacSSID == "1"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 0);
setDisplay('secWirelessac3', 0);
setDisplay('secWirelessac4', 0);
setDisplay('secWirelessac5', 0);
setDisplay('secWirelessac6', 0);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
setDisplay('wlanacBindSSIDExt', 0);
}
else if(validacSSID == "2"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 0);
setDisplay('secWirelessac4', 0);
setDisplay('secWirelessac5', 0);
setDisplay('secWirelessac6', 0);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
setDisplay('wlanacBindSSIDExt', 0);
}
else if(validacSSID == "3"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 0);
setDisplay('secWirelessac5', 0);
setDisplay('secWirelessac6', 0);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
setDisplay('wlanacBindSSIDExt', 0);
}
else if(validacSSID == "4"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 1);
setDisplay('secWirelessac5', 0);
setDisplay('secWirelessac6', 0);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
setDisplay('wlanacBindSSIDExt', 0);
}

else if(validacSSID == "5"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 1);
setDisplay('secWirelessac5', 1);
setDisplay('secWirelessac6', 0);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
}
else if(validacSSID == "6"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 1);
setDisplay('secWirelessac5', 1);
setDisplay('secWirelessac6', 1);
setDisplay('secWirelessac7', 0);
setDisplay('secWirelessac8', 0);
}
else if(validacSSID == "7"){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 1);
setDisplay('secWirelessac5', 1);
setDisplay('secWirelessac6', 1);
setDisplay('secWirelessac7', 1);
setDisplay('secWirelessac8', 0);
}
else if(validAcNum >= 8){
setDisplay('secWirelessac1', 1);
setDisplay('secWirelessac2', 1);
setDisplay('secWirelessac3', 1);
setDisplay('secWirelessac4', 1);
setDisplay('secWirelessac5', 1);
setDisplay('secWirelessac6', 1);
setDisplay('secWirelessac7', 1);
setDisplay('secWirelessac8', 1);
}



setDisplay('secLan3', 0);
  setDisplay('secLan4', 0);



</script>
                                  <div style="width:100%" id="secIpMode">
                                        <div class="col-md-12 form-group" id="secDhcp">

                                                                                        <div class="custom-control custom-radio">
                                                                                                  <input class="custom-control-input" onclick="IpModeChange()" type="radio" value="DHCP" id="IpMode_dynamic" name="IpMode" checked>
                                                                                                  <label class="custom-control-label" for="IpMode_dynamic">DHCP <span class="light_grey_text">Get an IP automatically from ISP.</span></label>
                                                                                                </div>
                                                                                </div>

                                              <div class="col-md-12 form-group" id="secStatic">

                                                                                        <div class="custom-control custom-radio">
                                                                                                  <input class="custom-control-input" onclick="IpModeChange()" type="radio" value="Static" id="IpMode_staic" name="IpMode" >
                                                                                                  <label class="custom-control-label" for="IpMode_staic">Static <span class="light_grey_text">Get a static IP from ISP.</span></label>
                                                                                                </div>
                                                                                </div>

                                         <div class="col-md-12 form-group" id="secPppoe" style="display:none">

                                                                                        <div class="custom-control custom-radio">
                                                                                                  <input  class="custom-control-input" onclick="IpModeChange()" type="radio" value="PPPoE" id="IpMode_PPPoE" name="IpMode" >
                                                                                                  <label class="custom-control-label" for="IpMode_PPPoE">PPPoE <span class="light_grey_text">Please select if your ISP use PPPoE.</span></label>
                                                                                                </div>
                                                                                </div>

                                           <div class="col-md-12 form-group" id="secPppoa" style="display:none">

                                                                                        <div class="custom-control custom-radio">
                                                                                                  <input class="custom-control-input" onclick="IpModeChange()" type="radio" value="PPPoA" id="IpMode_PPPoA" name="IpMode" >
                                                                                                  <label class="custom-control-label" for="IpMode_PPPoA">PPPoA <span class="light_grey_text">Please select if your ISP use PPPoA.</span></label>
                                                                                                </div>
                                                                                </div>

                                          <div class="col-md-12 form-group" id="secIpoa" style="display:none">

                                                                                        <div class="custom-control custom-radio">
                                                                                                  <input class="custom-control-input" onclick="IpModeChange()" type="radio"  value="IPoA" id="IpMode_IPoA" name="IpMode" >
                                                                                                  <label class="custom-control-label" for="IpMode_IPoA">IPoA <span class="light_grey_text">Please select if your ISP use IPoA.</span></label>
                                                                                                </div>
                                                                                </div>

                                        </div>

                                        <div class="col-md-4 form-group" id="secBridgeType" style="display:none">
                                                                                        <label>Bridge Mode:</label>
                                                  <select id="bridgeMode" name="bridgeMode"  class="custom-select">
                          <option value="PPPoE_Bridged" >PPPoE_Bridged</OPTION>
                                                  <option value="IP_Bridged" >IP_Bridged</OPTION></SELECT>
                                                                                </div>

                                        <div class="col-md-12 form-group" id="secbridgeDhcprelay" style="display:none">
                                        <input type="hidden" id="dhcprelay" name="dhcprelay" value="No">
                                                                                        <div class="custom-control custom-checkbox">
                                                                                          <input class="custom-control-input" id="cb_dhcprelay" type="checkbox" name="cb_dhcprelay" onClick="EnableDHCPRealy()" >
                                                                                          <label class="custom-control-label" for="cb_dhcprelay">Enable DHCP Transparent Transmission:</label>
                                                                                        </div>
                                                                        </div>
                                     <input id="multMode" type="hidden" value=0 name="multMode">

                                                                                <div class="col-md-3 form-group" id="vlan_type">
                                                                                        <label>VLAN Gateway Type:</label>
                                             <select id='VLANMode' onchange="VLANModeChg()" size=1 name='VLANMode' class="custom-select">
                                    <option value="TAG" selected>TAG
                                    <option value="UNTAG"  >UNTAG
                                    <option value="TRANSPARENT" >TRANSPARENT
                                  </select>
                                                                                </div>
                                                                                <SCRIPT language=JavaScript type=text/javascript>
                                                                                        if (curUserName != sptUserName)
                                                                                                getElement("vlan_type").style.display = "none";
                                                                        </SCRIPT>

                                                                                <div class="col-md-3 form-group"  id='vlansec'>
                                                                                        <label>VLAN ID[1-4094]:</label>
                                               <input type="text" class="form-control" id=vlan maxLength=4 size=5 name=vlan value="46">
                                                                                                                        <input id=vlanId type=hidden name=vlanId value="No">
                                                                                                                        <input id=vlanUNTAG type=hidden name=vlanUNTAG value="4096">
                                                                                                                        <input id=vlanTRANSPARENT type=hidden name=vlanTRANSPARENT value="4097">
                                                                                </div>
                                                                                <div class="col-md-3 form-group" id='priosec'>
                                                                                        <label>802.1p[0-7]:</label>
                                              <input type="text" class="form-control" id="v8021P" maxLength="1" size="5" name="v8021P" value="0">
                                                                                                                        <input id=vlanPri type=hidden name=vlanPri value="No">
                                                                                                                        <input id=vlanPriNone type=hidden name=vlanPriNone value="0">
                                                                                </div>
                                                                                <div class="col-md-3 form-group"  id='mulvidsec'>
                                                                                        <label>Multicast VLAN ID[1-4094]:</label>
                                            <input type="text" class="form-control" id=MulticastVID maxLength=4 size=5 name=MulticastVID value="">
                                                                <input type="hidden" id="MulVIDUsed" name="MulVIDUsed" value="No">
                                                                                </div>
                                        <div class="col-md-3 form-group"  id='MTUsec'>
                                                                                        <label id='MIUDescrip'>MTU[1-2000]</label>
                                            <input type="text" class="form-control"  id="MTU" maxlength="4" size="5" name="MTU" value="1500">

                                                                                </div>
                                         <div class="col-md-3 form-group" id="secOption43Items" style="display:none">
                                         <div class="custom-control custom-checkbox" style="margin-top:30px">
                                            <input type="checkbox" class="custom-control-input" id="cb_enblOption43" onclick="cb_enblOption43Change()" name="cb_enblOption43" >
                                            <label class="custom-control-label" for="cb_enblOption43">Enable Option 43</label>
                                            <input type="hidden" id="Option43Enable" name="Option43Enable" value="No">
                                            <input type="hidden" id="Option43flag" name="Option43flag" value="0">
                                         </div>
                                         </div>

                                                                                <div class="col-md-12 form-group" id="secNat">
                                                                                        <div class="custom-control custom-checkbox">
                                                                                          <input class="custom-control-input" id="cb_nat" type="checkbox" name="cb_nat" onClick="EnableNatClick()" checked>
                                                                                          <label class="custom-control-label" for="cb_nat">Enable NAT:</label>
                                              <input id="nat" type="hidden" value="Enable" name="nat">
                                                                                        </div>
                                                                                </div>

                                        <div class="col-md-12 form-group" id="bootp77Items" style="display:none">
                                                <div class="custom-control custom-checkbox">
                                                        <input class="custom-control-input" id="cb_opt" type="hidden" name="cb_opt" onClick="Enablebootpoption()" unchecked>
                                        <!--label class="custom-control-label" for="cb_opt">N/A</label-->
                                    <input id="cboptval" type="hidden" name="cboptval" value="">
                                <input type="hidden" id="bootpopt" maxlength="15" size="15" name="bootpopt" value="">
                                        </div>
                                        </div>
                                        <div class="col-md-12 form-group" id="secIgmp" style="display:none">
                                                                                        <div class="custom-control custom-checkbox">

                                             <input class="custom-control-input" id="cb_enblIgmp" type="checkbox" name="cb_enblIgmp" >
                                               <label class="custom-control-label" for="cb_enblIgmp">Enable IGMP Proxy:</label>
                                    <input id="enblIgmp" type="hidden" value="No" name="enblIgmp">

                                                                                        </div>
                                                                        </div>

                                    <div class="col-md-12 form-group" style="width:100%" id="secRouteItems">
                                                                        <div class="row" id="secOption60Items" style="display:none">
                                   <div class="col-md-3 form-group">
                                   <label>N/A</label>
                                   <input type="text" class="form-control" id="Option60VendorID" maxLength="15" size="15" name="Option60VendorID" value=""></div>
                                   </div>
                                      <div class="row" id="secStaticItems" style="display:none">
                                   <div class="col-md-4">
                                   <label>IP Address:</label>
                                   <input type="text" class="form-control" id="wanIpAddress" maxLength="15" size="15" name="wanIpAddress" value=""></div>

                                      <div class="col-md-4">
                                   <label>Subnet Mask</label>
                                   <input type="text" class="form-control" id="wanSubnetMask" maxLength="15" size="15" name="wanSubnetMask" value=""></div>

                                    <div class="col-md-4">
                                   <label>Default Gateway:</label>
                                   <input type="text" class="form-control" id="defaultGateway" maxLength="15" size="15" name="defaultGateway" value=""></div>

                                        <div class="col-md-4">
                                   <label>Primary DNS Server:</label>
                                   <input type="text" class="form-control" id="dnsPrimary" maxLength="15" size="15" name="dnsPrimary" value=""></div>

                                   <div class="col-md-4">
                                   <label>Secondary DNS Server:</label>
                                   <input type="text" class="form-control" id="dnsSecondary" maxLength="15" size="15" name="dnsSecondary" value=""></div>
                                                </div>

                                <div class="row" id="secDNSItems" style="display: none">
                                <div class="custom-control col-md-12 row">
                                        <label class="custom-control-inline custom-control">DNS Status:</label>
                                <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="dns_status" name="dns_status" value="1" onclick="manual_dnsconfig_dhcp_mode(1)" unchecked></div>
                                <label for="male">Enable</label>
                                <div class="custom-control custom-radio custom-control-inline">
                                <input type="radio" id="dns_status" name="dns_status" value="0" onclick="manual_dnsconfig_dhcp_mode(1)" checked></div>
                                <label for="male">Disable</label>
                        </div>
                        <div class="col-md-4">
                                <label>Primary DNS Server:</label>
                                <input type="text" class="form-control" id="dns_Primary" maxlength="15" size="15" name="dns_Primary" value=""></div>
                                <div class="col-md-4">
                                <label>Secondary DNS Server:</label>
                                <input type="text" class="form-control" id="dns_Secondary" maxlength="15" size="15" name="dns_Secondary" value=""></div>
                                </div>

                                       <div class="row" id="secPppoeItems" style="display: none">

                                                  <div class="col-md-4">
                                   <label>User Name:</label>
                                   <input type="text" class="form-control" id="pppUserName" maxLength="128" size="15"
                        name="pppUserName" value=""></div>

                         <div class="col-md-4">
                                   <label>Password: </label>
                                <span id="inpsw"><input id="pppPassword" class="form-control" type="password" maxlength="63" size="15"
                        name="pppPassword" value=""></span>

                        </div>

                        

                                <div class="col-md-4" id="pppoe_sname">
                                   <label>Server Name:</label>
                                   <input type="text" class="form-control" id="pppServerName" maxLength="63" size="15"
                        name="pppServerName" value="">
                                   </div>
                                                                   <SCRIPT language=JavaScript type=text/javascript>
                                                                        if (curUserName != sptUserName)
                                                                                getElement("pppoe_sname").style.display = "none";
                                                        </SCRIPT>

                                   


  <div class="col-md-4" style="display:none">
                                   <label>Dial Mode:</label>

                                 <SELECT id="DialMethod" class="custom-select"  onchange="DialMethodChange()" name="DialMethod"></SELECT>
  </div>

                                  



                                            <div class="col-md-4" style="display:none" id="secManualDial">
                                   <label> </label>
                                   <input id="pppDialButton" onclick="ManualCntSubmit()" class="btn grey_btn" type="button" value="Manual" name="pppDialButton">
                                   </div>

                                     <div class="col-md-4" style="display:none" id="secIdleTime">

                                   
                        <label>         Idle Timeout(minute)[1-4320]</label>



                                  <input class="form-control" id="pppTimeOut" maxLength="4" size="4" name="pppTimeOut">

                                      <input type="hidden" id="pppv6Mode" name="pppv6Mode" value="0">
                                   </div>
                                   
                                       <div class="col-md-4" id='ppp_bi'>




                                         <div class="custom-control custom-checkbox" id="ppp_r_t">
                                                                                          <input class="custom-control-input" id='cb_enable_pppbi' type="checkbox" name='cb_enable_pppbi' >
                                                                                          <label class="custom-control-label" for="cb_enable_pppbi">Enable PPPoE Router Bridge Mode:</label>
                                                                                        </div>
                                                                                        <SCRIPT language=JavaScript type=text/javascript>
                                                                                                if (curUserName != sptUserName)
                                                                                                        getElement("ppp_r_t").style.display = "none";
                                                                                </SCRIPT>

                            <input id='enablepppbi' type="hidden" name='enablepppbi'>
                            <input id='pppbiUsed' type="hidden" name='pppbiUsed'>
                            <input id='pppbiDisabled' type="hidden" name='pppbiDisabled' value='No'>

                                      </div>

                                       
                                                     </div>
                                     </div>
                                                              </div>

                                  <div class="row" id="secIPv6Div" style="display:none">
                                                                                        <div class="col-md-3 form-group" id="TrIpv6AddrType">
                                            <label>Style of Acquiring IPv6 WAN Information:</label>
                                            <select  class="custom-select" id="IdIpv6AddrType" onChange="pdDefaultSel=1;OnIPv6Changed();" name="IdIpv6AddrType">
                                                                          <option value="SLAAC" selected>SLAAC
                                      <option value="DHCP" >DHCP
                                                                          <option value="Static" >Static
                                                                        </select>
                                                                                        </div>
                                                                                <SCRIPT language=JavaScript type=text/javascript>
                                                                                                if (curUserName != sptUserName)
                                                                                                        getElement("TrIpv6AddrType").style.display = "none";
                                                                                </SCRIPT>


                                             <div class="col-md-6 form-group" id="TrIpv6Addr">
                                                                                                <label>IPv6Address:</label>
                                                                                                <div class="row">
                                                   <div class="col-md-8"> <INPUT id="IdIpv6Addr" type="text" class="form-control" maxLength="39" size="36" name="IdIpv6Addr" value=""></div>
                                /  <div class="col-md-3">
                                          <INPUT id=IdIpv6PrefixLen type="text" class="form-control" maxLength="3" size="3" name="IdIpv6PrefixLen" value=""> </div>
                                                                                                </div>                                                                  
                                                                                        </div>

                                            <div class="col-md-3 form-group" id="TrIpv6Gateway">
                                            <label>IPv6Default Gateway:</label>
                                          <input type="text" class="form-control" id="IdIpv6Gateway" maxlength="39" size="36" name="IdIpv6Gateway" value="">
                                          <p class="light_grey_text" id="TrIpv6GatewayInfo">(Automatically acquire if IPv6 default gateway is empty)</p>
                                    <script language="JavaScript" type="text/JavaScript">
                                                                        var ipv6gwstr = "N/A";
                                                                        if("N/A" == ipv6gwstr)
                                                                                setText('IdIpv6Gateway', "");
                                                                        else
                                                                                setText('IdIpv6Gateway', ipv6gwstr);
                                                                        </script>
                                                                                        </div>

                                            <div class="col-md-3 form-group" id="TrIpv6Dns1">
                                                                                        <label>Primary IPv6 DNS Server</label>
                                            <input type="text" class="form-control" id="IdIpv6Dns1" maxLength="39" size="36" name="IdIpv6Dns1" value="">
                                                                                        </div>

                                            <div class="col-md-3 form-group" id="TrIpv6Dns2">
                                                                                        <label>Secondary IPv6 DNS Server</label>
                                            <input type="text" class="form-control" id="IdIpv6Dns2" maxLength="39" size="36" name="IdIpv6Dns2" value="">

                                                                                        </div>

                                            <div class="col-md-12 form-group" id='PDEnableSec'>
                                                                                        <div class="custom-control custom-checkbox">
                                               <input class="custom-control-input" id='cb_enabledpd' type=checkbox onclick='cb_pdEnableChange()' name='cb_enabledpd' checked>
                                               <label class="custom-control-label" for="cb_enabledpd">Enable PD:</label>
                            <INPUT id='enablepd' type="hidden" name='enablepd'>
                            <INPUT id='PDUsed' type="hidden" name='PDUsed'>
                            <INPUT id='PDDisabled' type="hidden" name='PDDisabled' value='No'>
                                                                                        </div>                                                                          
                                                                                        </div>
                                                                                        <SCRIPT language=JavaScript type=text/javascript>
                                                                                                if (curUserName != sptUserName)
                                                                                                        getElement("PDEnableSec").style.display = "none";
                                                                                </SCRIPT>


                                            <div class="col-md-12 form-group" id='pdmode_1'>
                                                                                        <h2 class="sub_heading" style="color:#fd7e14;">Prefix Mode:</h2>
                                                                                        <div class="custom-control custom-radio custom-control-inline">
                                                                                                  <input class="custom-control-input" id='pdmode3w' onclick='pdmodeChange()' type="radio" value="Yes" name="pdmode" checked>
                                                                                                  <label class="custom-control-label" for="pdmode3w">Auto</label>
                                                                                                </div>
                                                                                                        <div class="custom-control custom-radio custom-control-inline">
                                                                                                  <input class="custom-control-input" id='pdmode9' onclick='pdmodeChange()' type=radio value="No" name="pdmode" >
                                                                                                  <label class="custom-control-label" for="pdmode9">Manual</label>
                                                                                                </div>
                                                 <INPUT id='pdmodeUsed' type="hidden" name='pdmodeUsed'>
                                                            <INPUT id='pdmodeDisabled' type="hidden" name='pdmodeDisabled' value='No'>
                                                            <INPUT id='pdmodeAuto' type="hidden" name='pdmodeAuto' value='PrefixDelegation'>
                                                            <INPUT id='pdmodeStatic' type="hidden" name='pdmodeStatic' value='Static'>
                                                            <INPUT id='pdmodeNone' type="hidden" name='pdmodeNone' value='None'>
                                                                                        </div>

                                             <div class="col-md-3 form-group" id='pdmode_2'>
                                                                                        <label>Prefix Address:</label>
                                            <input type="text" class="form-control" id='pdprefix' maxlength="39" size="36" name='pdprefix' value="">
                                                                                        </div>

                                            <div class="col-md-3 form-group" id='pdmode_3'>
                                                                                                <label>Primary Time:</label>
                                                                                                <div class="input-group">
                                                   <input type="text" class="form-control" id='pdprefixptime' maxlength="10" size="10" name='pdprefixptime' value="">
                                                                                                  <div class="input-group-append">
                                                                                                        <span class="input-group-text">*[600 - 4294967295 s]</span>
                                                                                                  </div>
                                                                                                        </div>
                                                                                                </div>

                                                <div class="col-md-3 form-group" id='pdmode_4'>
                                                                                                <label>Lease Time:</label>
                                                                                                <div class="input-group">
                                                  <input  type="text" class="form-control" id='pdprefixvtime' maxLength=10 size=10 name='pdprefixvtime' value="">
                                                                                                  <div class="input-group-append">
                                                                                                        <span class="input-group-text">*[600 - 4294967295 s]</span>
                                                                                                  </div>
                                                                                                        </div>
                                                                                                </div>

                                                
                                                <div class="col-md-3 form-group" id='dslite_1'>
                                                <INPUT id='enabledslite' type=hidden name='enabledslite'>
                            <INPUT id='dsliteUsed' type=hidden name='dsliteUsed'>
                            <INPUT id='dsliteDisabled' type=hidden name='dsliteDisabled' value='No'>
                                                                                        <div class="custom-control custom-checkbox" id="cb_enable">
                                                                                          <input class="custom-control-input" id='cb_enabledslite' onclick="cb_enabledsliteChange()" type="checkbox" name='cb_enabledslite' >
                                                                                          <label class="custom-control-label" for="cb_enabledslite">DS-LiteEnable</label>
                                                                                        </div>
                                                                        </div>
                                                                        <SCRIPT language=JavaScript type=text/javascript>
                                                                                if (curUserName != sptUserName)
                                                                                        getElement("cb_enable").style.display = "none";
                                                                </SCRIPT>

                                     <div class="col-md-12 form-group" id='dslite_2'>
                                                                                        <h2 class="sub_heading" style="color:#fd7e14;">DS-LiteGateway Type:</h2>
                                                                                        <div class="custom-control custom-radio custom-control-inline">
                                                                                                  <input class="custom-control-input" id='dslitemode' onclick='dslitemodeChange()' type="radio" value="0" name="dslitemode" checked>
                                                                                                  <label class="custom-control-label" for="dslitemode">Auto</label>
                                                                                                </div>
                                                                                                        <div class="custom-control custom-radio custom-control-inline">
                                                                                                  <input class="custom-control-input"  id='dslitemode-' onclick='dslitemodeChange()' type="radio" value="1" name="dslitemode" >
                                                                                                  <label class="custom-control-label" for="dslitemode-">Manual</label>
                                                                                                </div>
                                                                                        </div>

                                            <div class="col-md-3 form-group" id='dslite_3'>
                                                                                        <label>DS-LiteServer:</label>
                                            <input type="text" class="form-control" id='dsliteaddress' maxLength=39 size=36 name='dsliteaddress' value="">
                                                                                        </div>
                                                                                        <SCRIPT language=JavaScript type=text/javascript>
                                                                                                if (curUserName != sptUserName)
                                                                                                        getElement("pdmode_1").style.display = "none";
                                                                                                        getElement("pdmode_2").style.display = "none";
                                                                                                        getElement("pdmode_3").style.display = "none";
                                                                                                        getElement("pdmode_4").style.display = "none";
                                                                                                        getElement("dslite_1").style.display = "none";
                                                                                                        getElement("dslite_2").style.display = "none";
                                                                                                        getElement("dslite_3").style.display = "none";
                                                                                </SCRIPT>
 

                                              </div>

                                              

                                                                                <hr class="margin_adjs" />
                                                                                <div class="form-footer text-right">
                                                                                <button class="btn btn-orang btn-lg" type="button" id="btnOK" onclick="btnSave();">Apply</button>
                                                                                <button class="btn  btn-secondary btn-lg" type="button" id="btnCancel" onclick="onCancel()">Cancel</button>
                                                                                
                                          					<input  class="btn btn-orang" id="btnRemoveCnt" name="btnRemoveCnt" onclick="btnRemoveWanCnt()" type="button" value="Delete Connection">
                                                                                  
                                                                                </div>
                                                                </div>
                                                        </div>
                            <div>
                <INPUT id=pppIdleTimeout type=hidden value=0 name=pppIdleTimeout>
                <INPUT type=hidden name=xponstate value="Yes">
                <!--<input type='hidden' id='Option60Enable1' name='Option60Enable1' value="">-->
                <input type='hidden' id='Option60Enable1' name='Option60Enable1' value="Yes">
                                <input type='hidden' id='Option60Enable2' name='Option60Enable2' value="">
                <input type='hidden' id='Option60Enable3' name='Option60Enable3' value="">
                <input type='hidden' id='Option60Enable4' name='Option60Enable4' value="">

                <!--<input type='hidden' id='Option60Type1' name='Option60Type1' value="">-->
                                <input type='hidden' id='Option60Type1' name='Option60Type1' value="1">
                <input type='hidden' id='Option60Type2' name='Option60Type2' value="">
                <input type='hidden' id='Option60Type3' name='Option60Type3' value="">
                <input type='hidden' id='Option60Type4' name='Option60Type4' value="">

                <!--<input type='hidden' id='Option60ValueMode1' name='Option60ValueMode1' value="">-->
                                <input type='hidden' id='Option60ValueMode1' name='Option60ValueMode1' value="0">
                <input type='hidden' id='Option60ValueMode2' name='Option60ValueMode2' value="">
                <input type='hidden' id='Option60ValueMode3' name='Option60ValueMode3' value="">
                <input type='hidden' id='Option60ValueMode4' name='Option60ValueMode4' value="">

                <!--<input type='hidden' id='Option60Value1' name='Option60Value1' value="">-->
                <input type='hidden' id='Option60Value2' name='Option60Value2' value="">
                <input type='hidden' id='Option60Value3' name='Option60Value3' value="">
                <input type='hidden' id='Option60Value4' name='Option60Value4' value="">

                 </div>
                                </FORM>
                                                </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center p-3"  style="background-color: rgb(235 234 234 / 20%);">
                &COPY; 2023 Copyright :
                <a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
              </div>
            </div>
        </div>
    </div>

    
    <script language="JavaScript">
function lockObj(objName, readST)
{
	if ( null != getElById(objName) )
	{
		getElById(objName).readOnly = readST;
		getElById(objName).style.color = readST ? 'gray' : '';
	}
}
var UsernameOpenFlag = "1";
var PasswordOpenFlag = "1";
var VLANIDOpenFlag = "1";
if(UsernameOpenFlag == "0")
	lockObj('pppUserName', true);
if(PasswordOpenFlag == "0")
	lockObj('pppPassword', true);
if(VLANIDOpenFlag == "0")
	lockObj('vlan', true);
</script>
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

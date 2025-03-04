
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
 <script src="/Dashboard/JS/menu.js" type="text/javascript" ></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
	  <script src="admin/jquip_sizzle.js" type="text/javascript" ></script>
    <script src="admin/jquip.js" type="text/javascript" ></script>
    <script src="admin/juicer.js" type="text/javascript" ></script>
    <script src="admin/ui.js" type="text/javascript" ></script>
    <script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
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
.left-field{
    margin-left:-15px;
    width:195px;
}
.right-field{
    margin-left:50px
}
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
<body onLoad="on_init();">

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
								
							 						 
								
                                 <FORM name="ConfigForm" id='ConfigForm' action="/change_wan.asp" method="post">
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> Internet Connection</h1>
									<div class="container-fluid">
										<hr style="width: 104.8%; margin-left: -30px;">
										
                                       
																				



    <div class="row">
        <div class="col-md-3 custom-radio custom-control" style="margin-left:7px">
        
                  <input  type="radio" value="GPON WAN " name="wanmode" Value="0">
                 <!-- <label class="custom-control-label" for="IpVersion">IPv4</label>-->GPON WAN
                </div>
                 
<div class="col-md-3 custom-control custom-radio " style="margin-left:-120px">
                   <input type="radio" value="EPON WAN " name="wanmode" value="1">
                 <!-- <label class="custom-control-label" for="IpVersion-6">IPv6</label>-->EPON WAN
                </div>

<div class="col-md-3 custom-control custom-radio" style="margin-left:-120px">
                 <input type="radio" value="ETHERNET WAN" name="wanmode" value="2">
                <!--  <label class="custom-control-label" for="IpVersion-46">IPv4/IPv6</label>-->ETHERNET WAN
                </div>
              </div>
              <hr style="width: 104.9%;margin-left: -31px;">
              <div class=" col-md-12 form-group ">
                     <div class="btn btn-lg btn-group-lg">
					 <input class="link_bg left-field" type="submit" value="Apply Changes" name="save" onclick="return saveChanges()" style="margin-top: -9px;margin-bottom: -6px; width:120px">
                     <input type="hidden" value="/change_wan.asp" name="submit-url">
                     <input type="hidden" name="postSecurityFlag" value="">
						</div>
                      
                                  </div>
                                 <hr style="width: 104.9%;margin-left: -31px;">
               <SCRIPT>
function saveChanges()
{
	document.forms[0].save.isclick = 1;
	postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);	
	return true;
}
</SCRIPT>
<script>
	<% showWanPortInfo() %>
</script>
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

<div class="col-md-12 form-group left-field">
          <h2 class="sub_heading" style="color:#fd7e14;" id="ip_text">PON WAN</h2>
          
              <div class="col-md-12 form-group">
        <select name="" onchange="on_ctrlupdate()" size="1">
        <option value="0">nas0_0</option>
        <option value="new">new link</option></select>
       </div>
       </div>
       
                                        <div class="col-md-12 form-group" >

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field" for="IpMode_dynamic">Admin Status:</label>
                                                                           <input class="right-field" type="radio" value="1" name="chEnable">Enable
                                                                  <input class="right-field" type="radio" value="0" name="chEnable" checked="">Disable
                                                                                                </div>
                                                                                </div>

                                   

<div class="col-md-12 form-group" id="vlan_tr">
    <div class="custom-control">
        <label class="left-field" for="IpMode_PPPoE">Enable VLAN:</label>
        <input class="right-field" type="checkbox" name="vlan" size="2" maxlength="2" value="ON" onclick="vlanClicked()">
    </div>
</div>

<div class="col-md-12 form-group" id="vid_tr" style="display: none;">
    <div class="custom-control">
        <label class="left-field" for="IpMode_PPPoE">VLAN ID</label>
       <input class="right-field" name="vlan" size="2" maxlength="2" value="" style="width: 67px;">
    </div>
</div>

<div class="col-md-12 form-group" id="cos_tr" style="display: none;">
    <div class="custom-control">
        <label class="left-field">802.1p_Mark:</label>
        <select class="right-field" size="1" name="vprio" style="width: 69px;">
            <option value="0"> </option>
            <option value="1"> 0 </option>
            <option value="2"> 1 </option>
            <option value="3"> 2 </option>
            <option value="4"> 3 </option>
            <option value="5"> 4 </option>
            <option value="6"> 5 </option>
            <option value="7"> 6 </option>
            <option value="8"> 7 </option>
        </select>
    </div>
</div>      
                                                                                <div class="col-md-12 form-group">
                                                                                 <div class="custom-control">
                                                                                        <label class="left-field">Channel Mode:</label>
                                            <select class="right-field" size="1" name="adslConnectionMode" onchange="adslConnectionModeSelection()" style="width:150px">
	  <option selected="" value="0">Bridged</option>
	  <option value="1">IPoE</option>
	  <option value="2">PPPoE</option>
<option value="8">6rd</option></select>
                                                                                </div>
                                                                                </div>
                                                                                <script>
function adslConnectionModeSelection() {
    var adslConnectionMode = document.getElementsByName("adslConnectionMode")[0];
    var selectedValue = adslConnectionMode.value;
    var tbmtu = document.getElementById("tbmtu");
    var tbprotocol = document.getElementById("tbprotocol");

    if (selectedValue === "1") { // IPoE
        tbmtu.style.display = "";
        tbprotocol.style.display = "";
    } else {
        tbmtu.style.display = "none";
        tbprotocol.style.display = "none";
    }
}
</script>
     
                                         <div class="col-md-12 form-group">

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field" for="IpMode_PPPoE">Enable  NAPT:</label>
                                                                                                 <input class="right-field" type="checkbox" name="naptEnabled" maxlength="2" value="ON" onclick="naptClicked()" disabled="">
                                                                                                </div>
                                                                                </div>
                                                                                 <div class="col-md-12 form-group">

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label class="left-field" for="IpMode_PPPoE">Enable  Qos:</label>
                                                                                                 <input class="right-field " type="checkbox" name="qosEnabled" size="2" maxlength="2" value="ON">
                                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-12 form-group">
                                                                                 <div class="custom-control">
                                                                                        <label class="left-field">Connection Type:</label>
                                            <select class="right-field" size="1" id="ctype" name="ctype" onchange="onSelectSvrList()" style="width:150px">
				
			<option value="4">OTHER</option>
            <option value="2">INTERNET</option></select>
                                                                                </div>
                                                                                </div>
                                                                                <div class="col-md-12 form-group" style="display:none" id="tbmtu">

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field" for="IpMode_PPPoE">MTU:</label>
                                                                                                 <input class="right-field" type="text" name="mtu" size="10" maxlength="15">
                                                                                                </div>
                                                                                </div>
                                                                                   <div class="col-md-12 form-group">
                                                                                 <div class="custom-control">
                                                                                                  
                                                                                                  <label class="left-field">Enable IGMP-Proxy:</label>
                                                                                                 <input class="right-field"type="checkbox" name="igmpEnabled" size="2" maxlength="2" value="ON" disabled="">
                                                                                                </div>
                                                                                </div>
                                                                             

                                                                                   <div class="col-md-12 form-group">
                                                                                 <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field">Enable MLD-Proxy:</label>
                                                                                                 <input class="right-field" type="checkbox" name="mldEnabled" size="2" maxlength="2" value="ON" disabled="">
                                                                                                </div>
                                                                                </div>
                                                                                 <div class="col-md-12 form-group" style="display:none" id="tbprotocol">
                                                                                 <div class="custom-control">
                                                                                        <label class="left-field">IP Protocol:</label>
                                           <select class="right-field" id="IpProtocolType" onchange="protocolChange()" name="IpProtocolType">
			<option value="1"> IPv4</option>
			<option value="2"> IPv6</option>
			<option value="3"> IPv4/IPv6</option>
			</select>
                                                                                </div>
                                                                                </div>

<div id="tbl_ppp">
      <div class="col-md-12 form-group" >
             <h2 class="sub_heading left-field" style="color:#fd7e14;" >PPP Settings:</h2>
             </div>
                                                                              <div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="pppUserName" class="left-field">UserName:</label>
        <input type="text" name="pppUserName" size="16" maxlength="63" class="right-field" style="width:150px">
    </div>
</div>
<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="pppPassword" class="left-field">Password:</label>
        <input type="password" name="pppPassword" size="10" maxlength="29" class="right-field" style="width:150px">
        <input type="checkbox" onClick="show_password()">Show Password
    </div>
</div>

<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="serviceName" class="left-field">Service-Name:</label>
        <input type="text" name="serviceName" size="10" maxlength="30" class="right-field" style="width:150px">
    </div>
</div>

<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="acName" class="left-field">AC-Name:</label>
        <input type="text" name="acName" size="16" maxlength="30" class="right-field" style="width:150px">
    </div>
</div>

<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="pppConnectType" class="left-field">Type:</label>
        <select size="1" name="pppConnectType" onChange="pppTypeSelection()" class="right-field" style="width:150px">
            <option selected value="0">Continuous</option>
            <option value="1">Connect on Demand</option>
            <option value="2">Manual</option>
        </select> 
    </div>
</div>
<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="pppIdleTime" class="left-field">Idle Time (sec):</label>
        <input type="text" name="pppIdleTime" size="10" maxlength="10" class="right-field" style="width:150px">
    </div>
</div>
<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="auth" class="left-field">Authentication Method:</label>
        <select size="1" name="auth" class=" right-field" style="width:150px">
            <option selected value="0">AUTO</option>
            <option value="1">PAP</option>
            <option value="2">CHAP</option>
        </select>
    </div>
</div>

</div>
<div  id="tbl_ip">
        <div class="col-md-12 form-group" >
             <h2 class="sub_heading left-field" style="color:#fd7e14;" >WAN IP Setting</h2>
             </div>
              <div class="col-md-12 form-group" >

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field" >Type:</label>
                                                                           <input class="right-field" type="radio" value="0" name="ipMode" checked onclick="ipTypeSelection(0)">Fixed IP
                                                                  <input class="right-field" type="radio" value="1" name="ipMode" onclick="ipTypeSelection(0)">DHCP
                                                                                                </div>
                                                                                </div>
                          
                           <div class="col-md-12 form-group" >

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field">Local IP Address:</label>
                                                                                                 <input class="right-field" type="text" name="ip" size="10" maxlength="15" style="width:150px">
                                                                                                </div>
                                                                                </div>

                                                                                     <div class="col-md-12 form-group" >

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field">Subnet Mask:</label>
                                                                                                 <input class="right-field" type="text" name="netmask" size="10" maxlength="15" style="width:150px">
                                                                                                </div>
                                                                                </div>

                                                                                 <div class="col-md-12 form-group" >

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field">Remote IP Address:</label>
                                                                                                 <input class="right-field" type="text" name="remoteIp" size="10" maxlength="15" style="width:150px">
                                                                                                </div>
                                                                                </div> 

                                                                                <div class="col-md-12 form-group" >

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field" >Primary DNS Server:</label>
                                                                                                 <input class="right-field" type="text" name="dns1" size="18" maxlength="15" value="" style="width:150px">
                                                                                                </div>
                                                                                </div>

                                                                                 <div class="col-md-12 form-group" >

                                                                                        <div class="custom-control">
                                                                                                  
                                                                                                  <label  class="left-field">Secondary DNS Server:</label>
                                                                                                 <input class="right-field"  type="text" name="dns2" size="18" maxlength="15" value="" style="width:150px">
                                                                                                </div>
                                                                                </div>

                                                        <div class="col-md-12 form-group" >
    <div class="custom-control">
        <label class="left-field" >IP Unnumbered:</label>
        <input class="right-field" type="checkbox" name="ipUnnum" size="2" maxlength="2" value="ON" onclick="ipModeSelection()">
    </div>
</div>
                                                                                 <div class="col-md-12 form-group" >
                                                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field" >Request DNS:</label>
                                                                              <input class="right-field" type="radio" value="1" name="dnsMode" onclick="dnsModeClicked()">Enable
		                                                                             <input class="right-field" type="radio" value="0" name="dnsMode" checked="" onclick="dnsModeClicked()">Disable
                                                                                                </div>
                                                                                </div>

                                                                               
                                                      
                                                                                </div>
                                                        
                                                        <div id="tbipv6wan">
                                                          <div class="col-md-12 form-group" id="tbipv6wan" >
             <h2 class="sub_heading left-field" style="color:#fd7e14;" >6rd Config:</h2>
             </div>
                                                        <div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="SixrdBRv4IP" class="left-field">Board Router v4 Address:</label>
        <input id="SixrdBRv4IP" maxLength="39" size="36" name="SixrdBRv4IP" style="width:150px" class="right-field">
    </div>
</div>
<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="SixrdIPv4MaskLen" class="left-field">6rd IPv4 Mask Len:</label>
        <input id="SixrdIPv4MaskLen" maxLength="39" size="36" name="SixrdIPv4MaskLen" style="width:150px" class="right-field">
    </div>
</div>
<div class="col-md-12 form-group">
    <div class="custom-control">
        <label for="SixrdPrefix" class="left-field">6rd Prefix (EX:"2001:db8::"):</label>
        <input id="SixrdPrefix" maxLength="39" size="36" name="SixrdPrefix" style="width:150px" class="right-field">
    </div>
</div>

<div class="col-md-12 form-group">
 <div class="custom-control">
    <label for="SixrdPrefixLen" class="left-field">6rd Prefix length:</label>
        <input id="SixrdPrefixLen" maxLength="39" size="20" name="SixrdPrefixLen" style="width:150px"  class="right-field">
    </div>
</div>
</div>

                                 <div id="tbipv6wan" >
                                 
                                                        <div class="col-md-12 form-group">
             <h2 class="sub_heading left-field" style="color:#fd7e14; width:230px" >IPv6 WAN Settings:</h2>
             </div>
    <div class="col-md-12 form-group">
       <div class="custom-control" id="TrIpv6AddrType">
        <label class="left-field" >Address Mode:</label>
       <input class="right-field" type="checkbox" value="ON" name="slacc" id="send3">Slaac
			<input class="right-field" type="checkbox" value="ON" name="staticIpv6" id="send4" onclick="ipv6StaticUpdate()">Static
    </div>
</div>

                                  <div id="secIPv6Div">
                                        <div class="col-md-12 form-group ">
                                       <div class="custom-control" id="TrIpv6Addr">
                                                                                                  
                                                                                                  <label  class="left-field">IPv6 Address:</label>
                                                                                                <input class="right-field" id="Ipv6Addr" maxlength="39" size="36" name="Ipv6Addr" style="width:150px">
	                                                                                      	/
		                                                                                  <input id="Ipv6PrefixLen" maxlength="3" size="3" name="Ipv6PrefixLen" style="width:150px">
                                                                                </div>
                                                                                </div>

                                                                                   <div class="col-md-12 form-group ">
                                       <div class="custom-control" id="TrIpv6Gateway">
                                                                                                  
                                                                                                  <label  class="left-field">IPv6 Gateway:</label>
                                                                                                  <input class="right-field" id="Ipv6Gateway" maxlength="39" size="36" name="Ipv6Gateway" style="width:150px">
                                                                                                  </div>
                                                                                                  </div>
</div>
                           <div id="dhcp6c_ctrlblock" >                                                      
                                  <div class="col-md-12 form-group" id="tbdhcpv6">
       <div class="custom-control" >
        <label class="left-field" >Enable DHCPv6 Client:</label>
        <input class="right-field" type="checkbox" value="ON" name="itfenable" id="itfenable" onclick="dhcp6cEnable()">
        </div>
        </div>

         <div class="col-md-12 form-group" id="dhcp6c_block">
       <div class="custom-control" >
        <label class="left-field" >Request Options:</label>
        <input class="right-field" type="checkbox" value="ON" name="iana" id="send1">Request Address
       <input class="right-field" type="checkbox" value="ON" name="iapd" id="send2">Request Prefix
        </div>
        </div>
        </div>

               <div id="IPv6DnsDiv">
               <div class="col-md-6 form-group">

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field">Request DNS:</label>
                                                                           <input class="right-field" type="radio" value="1" name="dnsV6Mode" onclick="dnsModeV6Clicked()" disabled="">Enable
			                                                   <input class="right-field" type="radio" value="0" name="dnsV6Mode" checked="" onclick="dnsModeV6Clicked()" disabled="">Disable
                                                                         </label>
                                                                                                </div>
                                                                                </div>

                                                                                <div class="col-md-12 form-group ">
                                       <div class="custom-control" >
                                                                                                  
                                                                                                  <label  class="left-field">Primary IPv6 DNS:</label>
                                                                                                  <input class="right-field"  maxlength="39" size="36" name="Ipv6Dns1" style="width:150px">
                                                                                                  </div>
                                                                                                  </div>

                                                                                                    <div class="col-md-12 form-group ">
                                       <div class="custom-control" >
                                                                                                  
                                                                                                  <label  class="left-field">Secondary IPv6 DNS:</label>
                                                                                                  <input class="right-field" maxlength="39" size="36" name="Ipv6Dns2" style="width:150px">
                                                                                                  </div>
                                                                                                  </div>

               </div>

               <div id="DSLiteDiv">

                                                                              <div class="col-md-12 form-group ">
                                       <div class="custom-control" >
                                                                                                  
                                                                                                  <label  class="left-field">DS-Lite:</label>
                                                                                                  <input class="right-field" type="checkbox" value="ON" name="dslite_enable" id="dslite_enable" onclick="dsliteSettingChange()" style="width:150px">
                                                                                                  </div>
                                                                                                  </div>
                 <div class="col-md-12 form-group "> 
                                       <div class="custom-control" >
                                                          <label  class="left-field">AFTR Address Mode:</label>
                                                          <select class="right-field" name="dslite_aftr_mode" onchange="dsliteAftrModeChange()" style="width:150px">
			<option value="0">DHCPv6</option>
			<option value="1">static</option>
			</select>
                                                          </div>
                                                          </div>  
                                                           <div class="col-md-12 form-group ">                             
                                       <div class="custom-control" >
                                                                                                  
                                                                                                  <label  class="left-field">AFTR Address:</label>
                                                                                                  <input class="right-field" type="text" name="dslite_aftr_hostname" size="37" maxlength="64" style="width:150px">
                                                                                                  </div>
                                                                                                  </div>
                                                            </div>
                                                            </div>
               
                                                                                <div class="col-md-12 form-group left-field" id="div_pmap">
                                                                                        <h2 class="sub_heading" style="color:#fd7e14;">Port Mapping</h2>
                                              
                                                                            
                                                                                <div class="form-group row" id="tbl_pmap">

                                                                            <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">LAN_1
                                                                                       </div>

                                                                                         <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt" >LAN_2
                                                                                       </div>
                                                                                         <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID1(5G)
                                                                                       </div>
                                                                                         <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID2
                                                                                       </div> 
                                                                                        <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID3
                                                                                       </div> 
                                                                                        <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID4
                                                                                       </div>  
                                                                                       <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID5(2.4G)
                                                                                       </div>  
                                                                                       <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID6
                                                                                       </div>  
                                                                                       <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID7
                                                                                       </div>
                                                                                         <div class="col-md-12">
                                                                            <input type="checkbox" name="chkpt">SSID8
                                                                                       </div>
                                                                                                                </div>                                                     
                                                                               
                                             </div>

                                                                             <hr style="width: 104.7%;margin-left: -29px;">
                                                                             
                                                                                <div class="btn_ctl">
<input type="hidden" value="/admin/multi_wan_generic.asp" name="submit-url">
<input type="hidden" id="lst" name="lst" value="">
<input type="hidden" name="encodePppUserName" value="">
<input type="hidden" name="encodePppPassword" value="">
<input class="link_bg left-field" type="submit" value="Apply Changes" name="apply" onClick="return applyCheck(this)" style="width: 110px;margin-left: 27px;">&nbsp; &nbsp; &nbsp; &nbsp;
<input class="link_bg" type="submit" value="Delete" name="delete" id="delete" onClick="return deleteCheck(this)" >
<input type="hidden" name="itfGroup" value=0>
<input type="hidden" name="postSecurityFlag" value="">
</div>
<hr style="width: 104.7%;margin-left: -29px;">
<br>

                 <div class="col-md-12 form-group left-field">
              <div class="custom-control>
                   <h2 class="sub_heading" style="color:#fd7e14;" id="ip_text">NAT Type</h2>
               </div>
               </div>
                          <div class="col-md-6 form-group">

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label class="left-field">Admin Status:</label>
                                                                           <input class="right-field" name="nattype" type="radio" value="NAT1">NAT1&nbsp;&nbsp;
                                                                        <input class="right-field" name="nattype" type="radio" value="NAT2">NAT2&nbsp;&nbsp;
                                                                         <input class="right-field" name="nattype" type="radio" value="NAT4">NAT4 (default)
                                                                         </label>
                                                                                                </div>
                                                                                </div>
                                                                                </div>
                                                                             <hr style="width: 102%;margin-left: -16px;">
                 <div class="btn_ctl">
                                                                               
                                                                                <input class="link_bg left-field" type="submit" value="Apply Changes" name="apply" onclick="return on_submit()" style="width: 110px;margin-left: 15px;">
                                                                         </div>
                                                                        <hr style="width: 102%;margin-left: -16px;">

                                     <script language="javascript">

var nattype=0
function on_init()
{
 if(nattype==0)
 {
  document.forms[0].nattype[2].checked = true;
 }
 else if(nattype==1)
 {
  document.forms[0].nattype[0].checked = true;
 }
 else
 {
  document.forms[0].nattype[1].checked = true;
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script> 

                                                                             <div class="form-footer text-right">
                                                                                <button class="btn btn-orang btn-lg" type="button" id="btnOK" onclick="btnSave()">Apply</button>
                                                                                <button class="btn  btn-secondary btn-lg" type="button" id="btnCancel" onclick="onCancel()">Cancel</button>
                                                                                
                                          					<input  class="btn btn-orang" id="btnRemoveCnt" name="btnRemoveCnt" onclick="btnRemoveWanCnt()" type="button" value="Delete Connection">
                                                                                  
                                                                                </div>
                                                                </div>
                                                        </div>
                            </div>
                            </div>
                            </div>
                          </div>
               
               <script>
 if (isAHMVersion == "0" && 0 == 1)
  document.getElementById("delete").style.display="none";
 			document.getElementById('IGMPProxy_show').style.display = '';

 var isConfigRTKRG = "yes";
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
 if(isPRACTVersion == "1")
 {
  document.getElementById("vlan_tr").style.display = "none";
  document.getElementById("vid_tr").style.display = "none";
  document.getElementById("cos_tr").style.display = "none";
 }
</script>
<script type="text/javascript" src="base64_code.js"></script>
<script language="javascript">
var initConnectMode;
var pppConnectStatus=0;
var dgwstatus;
var gtwy;
var interfaceInfo = '';
var gtwyIfc ='';
var gwInterface=0;
var ipver=1;
var curlink = null;
var ctype = 4;
var cgi = new Object();
var links = new Array();
var adminAccount="0";
var fixdns="0";
var isAHMNormalUser = "0"
var isSPVersion = "0"
var isAHMVersion = "0"
var isJDMVersion = "0"
var isTriPlayVersion = "0"
var isRedinetVersion = "0"
var isAirLinkVersion = "0"
var isDigiWayVersion = "0"
var isGenevaVersion = "0"
var isHBSVersion = "0"
var isPRACTVersion = "0"
with(links){push(new it_nr("nas0_0" , new it("applicationtype", 2), new it("cmode", 0), new it("brmode", 0), new it("napt", 1), new it("enableIGMP", 0), new it("enableIpQos", 0), new it("dgw", 0), new it("vlan", 0), new it("vid", 0), new it("vprio", 0), new it("enable", 1), new it("mtu", 1500), new it("IpProtocol", 3), new it("ipDhcp", 0), new it("ipAddr", "0.0.0.0"), new it("remoteIpAddr", "0.0.0.0"), new it("netMask", "0.0.0.0"), new it("dnsMode", 0), new it("v4dns1", ""), new it("v4dns2", ""), new it("pppUsername", ""), new it("pppPassword", ""), new it("pppCtype", 0), new it("pppIdleTime", 0), new it("pppAuth", 0), new it("pppACName", ""), new it("pppServiceName", ""), new it("AddrMode", 0), new it("Ipv6Addr", ""), new it("RemoteIpv6Addr", ""), new it("RemoteIpv6EndPointAddr", ""), new it("Ipv6Dns1", ""), new it("Ipv6Dns2", ""), new it("Ipv6AddrPrefixLen", 0), new it("Ipv6Dhcp", 0), new it("Ipv6DhcpRequest", 0), new it("dnsv6Mode", 1), new it("dslite_enable", 0), new it("dslite_aftr_mode", 0), new it("dslite_aftr_hostname", ""), new it("itfGroup", 0), new it("SixrdIPv4MaskLen", 0), new it("SixrdPrefixLen", 0), new it("SixrdPrefix", ""), new it("SixrdBRv4IP", ""), new it("enableMLD", 0)));
}
function show_password()
{
 var x= document.ethwan.pppPassword;
 if (x.type == "password") {
  x.type = "text";
 } else {
  x.type = "password";
 }
}
function disableForm()
{
 if(isSPVersion != "1" )
  disableTextField(document.ethwan.mtu);
 if(isSPVersion != "1" )
  disableTextField(document.ethwan.IpProtocolType);
 if( isDigiWayVersion != "1")
  disableTextField(document.ethwan.ctype);
 if(isAirLinkVersion == "1" )
  disableTextField(document.ethwan.adslConnectionMode);
}
function enableForm()
{
 enableTextField(document.ethwan.mtu);
 enableTextField(document.ethwan.IpProtocolType);
 enableTextField(document.ethwan.ctype);
 enableTextField(document.ethwan.adslConnectionMode);
}
function pppTypeSelection()
{
 if ( document.ethwan.pppConnectType.selectedIndex == 2) {
  document.ethwan.pppIdleTime.value = "";
  disableTextField(document.ethwan.pppIdleTime);
 }
 else {
  if (document.ethwan.pppConnectType.selectedIndex == 1) {
   enableTextField(document.ethwan.pppIdleTime);
  }
  else {
   document.ethwan.pppIdleTime.value = "";
   disableTextField(document.ethwan.pppIdleTime);
  }
 }
}
function checkDefaultGW() {
 with (document.forms[0]) {
  if (droute[0].checked == false && droute[1].checked == false && gwStr[0].checked == false && gwStr[1].checked == false) {
   alert('A default gateway has to be selected.');
   return false;
  }
  if (droute[1].checked == true) {
   if (gwStr[0].checked == true) {
    if (isValidIpAddress(dstGtwy.value, "Default Gateway IP Address") == false)
     return false;
   }
  }
 }
 return true;
}
function check_dhcp_opts()
{
 with (document.forms[0])
 {
  if(typeof enable_opt_60 !== 'undefined' &&enable_opt_60.checked)
  {
   if (opt60_val.value=="") {
    alert('Vendor ID cannot be empty!');
    opt60_val.focus();
    return false;
   }
   if (checkString(opt60_val.value) == 0) {
    alert('Invalid Vendor ID.');
    opt60_val.focus();
    return false;
   }
  }
  if(typeof enable_opt_61 !== 'undefined'&&enable_opt_61.checked)
  {
   if (iaid.value=="") {
    alert('IAID cannot be empty!');
    iaid.focus();
    return false;
   }
   if (checkDigit(iaid.value) == 0) {
    alert('IAID should be a number.');
    iaid.focus();
    return false;
   }
   if(duid_type[1].checked)
   {
    if (duid_ent_num.value=="") {
     alert('Enterprise number cannot be empty!');
     duid_ent_num.focus();
     return false;
    }
    if (checkDigit(duid_ent_num.value) == 0) {
     alert('Enterprise number should be a number.');
     duid_ent_num.focus();
     return false;
    }
    if (duid_id.value=="") {
     alert('DUID Identifier cannot be empty!');
     duid_id.focus();
     return false;
    }
    if (checkString(duid_id.value) == 0) {
     alert('Invalid DUID Identifier.');
     duid_id.focus();
     return false;
    }
   }
  }
  if(typeof enable_opt_125 !== 'undefined' &&enable_opt_125.checked)
  {
   if (manufacturer.value=="") {
    alert('Manufacturer OUI cannot be empty!');
    manufacturer.focus();
    return false;
   }
   if (checkString(manufacturer.value) == 0) {
    alert('Invalid Manufacturer OUI.');
    manufacturer.focus();
    return false;
   }
   if (product_class.value=="") {
    alert('Product Class cannot be empty!');
    product_class.focus();
    return false;
   }
   if (checkString(product_class.value) == 0) {
    alert('Invalid Product Class.');
    product_class.focus();
    return false;
   }
   if (model_name.value=="") {
    alert('Model Name cannot be empty!');
    model_name.focus();
    return false;
   }
   if (checkString(model_name.value) == 0) {
    alert('Invalid Model Name.');
    model_name.focus();
    return false;
   }
   if (serial_num.value=="") {
    alert('Serial Number cannot be empty!');
    serial_num.focus();
    return false;
   }
   if (checkString(serial_num.value) == 0) {
    alert('Serial Number cannot be empty!');
    serial_num.focus();
    return false;
   }
  }
 }
}
function isAllStar(str)
{
  for (var i=0; i<str.length; i++) {
   if ( str.charAt(i) != '*' ) {
   return false;
 }
  }
  return true;
}
function disableUsernamePassword()
{
 disableTextField(document.ethwan.pppUserName);
 if(!isAllStar(document.ethwan.pppPassword.value))
  disableTextField(document.ethwan.pppPassword);
}
function applyCheck(obj)
{
 var tmplst = "";
 var ptmap = 0;
 var pmchkpt = document.getElementById("tbl_pmap");
 if (pmchkpt) {
  with (document.forms[0]) {
   for (var i = 0; i < 14; i++) {
    if (!chkpt[i])
     break;
    if (chkpt[i].checked == true)
     ptmap |= (0x1 << i);
   }
   itfGroup.value = ptmap;
  }
 }
 if (checkDefaultGW()==false)
  return false;
 if (document.ethwan.vlan.checked == true) {
  if (document.ethwan.vid.value == "") {
   alert('VID should not be empty!');
   document.ethwan.vid.focus();
   return false;
  }
  else if(document.ethwan.vid.value<0 ||document.ethwan.vid.value>4095) {
    alert("Incorrect vlan id, shoule be 1~4095");
    return false;
  }
 }
 if ( document.ethwan.adslConnectionMode.value == 2 ) {
  if (document.ethwan.pppUserName.value=="") {
   alert('PPP user name cannot be empty!');
   document.ethwan.pppUserName.focus();
   return false;
  }
  if (includeSpace(document.ethwan.pppUserName.value)) {
   alert('Cannot accept space character in PPP user name.');
   document.ethwan.pppUserName.focus();
   return false;
  }
  document.ethwan.encodePppUserName.value=encode64(document.ethwan.pppUserName.value);
  if (document.ethwan.pppPassword.value=="") {
   alert('PPP password cannot be empty!');
   document.ethwan.pppPassword.focus();
   return false;
  }
  if(!isAllStar(document.ethwan.pppPassword.value)){
   if (includeSpace(document.ethwan.pppPassword.value)) {
    alert('Cannot accept space character in PPP password.');
    document.ethwan.pppPassword.focus();
    return false;
   }
   document.ethwan.encodePppPassword.value=encode64(document.ethwan.pppPassword.value);
  }
  if (document.ethwan.pppConnectType.selectedIndex == 1) {
   if (document.ethwan.pppIdleTime.value <= 0) {
    alert('Invalid PPP idle time.');
    document.ethwan.pppIdleTime.focus();
    return false;
   }
  }
 }
 if (document.ethwan.dns1.value !="")
 {
  if (!checkHostIP(document.ethwan.dns1, 1))
  {
   document.ethwan.dns1.focus();
   return false;
  }
 }
 if (document.ethwan.dns2.value !="")
 {
  if (!checkHostIP(document.ethwan.dns2, 1))
  {
   document.ethwan.dns2.focus();
   return false;
  }
 }
 if (1) {
  if(document.ethwan.IpProtocolType.value & 1){
   if ( document.ethwan.adslConnectionMode.value == 1 ) {
    if (document.ethwan.ipMode[0].checked)
    {
     if ( document.ethwan.ipUnnum.disabled || ( !document.ethwan.ipUnnum.disabled && !document.ethwan.ipUnnum.checked )) {
      if (!checkHostIP(document.ethwan.ip, 1))
       return false;
      if (document.ethwan.remoteIp.visiblity == "hidden") {
       if (!checkHostIP(document.ethwan.remoteIp, 1))
       return false;
      }
      if (document.ethwan.adslConnectionMode.value == 1 && !checkNetmask(document.ethwan.netmask, 1))
       return false;
     }
    }
    else
    {
     if(check_dhcp_opts() == false)
      return false;
    }
   }
  }
 }
 if (1) {
  if (document.ethwan.adslConnectionMode.value != 0
   && (document.ethwan.IpProtocolType.value & 2)) {
   if (document.ethwan.adslConnectionMode.value != 0 && document.ethwan.adslConnectionMode.value != 8) {
    if(document.ethwan.slacc.checked == false && document.ethwan.itfenable.checked == false && document.ethwan.staticIpv6.checked == false){
     alert('Please input ipv6 address or select DHCPv6 client or click SLAAC!');
     document.ethwan.slacc.focus();
     return false;
    }
   }
   if(document.ethwan.itfenable.checked) {
    if(document.ethwan.iana.checked == false && document.ethwan.iapd.checked == false ) {
     alert('Please select iana or iapd!');
     document.ethwan.iana.focus();
     return false;
    }
   }
   if(document.ethwan.staticIpv6.checked) {
    if(document.ethwan.Ipv6Addr.value == "" || document.ethwan.Ipv6PrefixLen.value == "") {
     alert('Please input ipv6 address and Prefix Length!');
     document.ethwan.Ipv6Addr.focus();
     return false;
    }
    if(document.ethwan.Ipv6Addr.value != ""){
     if (! isGlobalIpv6Address( document.ethwan.Ipv6Addr.value) ){
      alert('Invalid ipv6 address!');
      document.ethwan.Ipv6Addr.focus();
      return false;
     }
     var prefixlen= getDigit(document.ethwan.Ipv6PrefixLen.value, 1);
     if (prefixlen > 128 || prefixlen <= 0) {
      alert('Invalid ipv6 prefix length!');
      document.ethwan.Ipv6PrefixLen.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Gateway.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Gateway.value) ){
      alert('Invalid ipv6 gateway address!');
      document.ethwan.Ipv6Gateway.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('Invalid primary IPv6 DNS address!');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('Invalid secondary IPv6 DNS address!');
      document.ethwan.Ipv6Dns2.focus();
      return false;
     }
    }
   }
   else if ( document.ethwan.dnsV6Mode[1].checked ) {
    if(document.ethwan.Ipv6Dns1.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns1.value) ){
      alert('Invalid primary IPv6 DNS address!');
      document.ethwan.Ipv6Dns1.focus();
      return false;
     }
    }
    if(document.ethwan.Ipv6Dns2.value != "" ){
     if (! isUnicastIpv6Address( document.ethwan.Ipv6Dns2.value) ){
      alert('Invalid secondary IPv6 DNS address!');
      document.ethwan.Ipv6Dns2.focus();
      return false;
     }
    }
   }
   else{
    document.ethwan.Ipv6Addr.value = "";
    document.ethwan.Ipv6PrefixLen.value = "";
    document.ethwan.Ipv6Gateway.value = "";
    document.ethwan.Ipv6Dns1.value = "";
    document.ethwan.Ipv6Dns2.value = "";
   }
   if (1) {
    if (document.ethwan.adslConnectionMode.value == 8)
    {
     if(document.ethwan.SixrdBRv4IP.value == ""){
      alert('Invalid 6rd Board Router v4IP address!');
      document.ethwan.SixrdBRv4IP.focus();
      return false;
     }
     if(document.ethwan.SixrdIPv4MaskLen.value == ""){
      alert('Invalid 6rd IPv4 Mask length address!');
      document.ethwan.SixrdIPv4MaskLen.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefix.value == ""){
      alert('Invalid 6rd Prefix address!');
      document.ethwan.SixrdPrefix.focus();
      return false;
     }
     if(document.ethwan.SixrdPrefixLen.value == ""){
      alert('Invalid 6rd Prefix length address!');
      document.ethwan.SixrdPrefixLen.focus();
      return false;
     }
    }
    else{
     document.ethwan.SixrdBRv4IP.value = "";
     document.ethwan.SixrdIPv4MaskLen.value = "";
     document.ethwan.SixrdPrefix.value = "";
     document.ethwan.SixrdPrefixLen.value = "";
    }
   }
  }
 }
 if(document.ethwan.lkname.value != "new") tmplst = curlink.name;
 document.ethwan.lst.value = tmplst;
 disableUsernamePassword();
 enableForm();
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
 return true;
}
function deleteCheck(obj)
{
 var tmplst = "";
 if ( document.ethwan.lkname.value == "new" )
 {
  alert('no link selected!');
  return false;
 }
 tmplst = curlink.name;
 document.ethwan.lst.value = tmplst;
 disableUsernamePassword();
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
 return true;
}
function setPPPConnected()
{
 pppConnectStatus = 1;
}
function dnsModeClicked()
{
 if ( document.ethwan.dnsMode[0].checked )
 {
  disableTextField(document.ethwan.dns1);
  disableTextField(document.ethwan.dns2);
 }
 if ( document.ethwan.dnsMode[1].checked )
 {
  if(fixdns == '1')
  {
   document.ethwan.dns1.value = "139.5.198.254";
   document.ethwan.dns2.value = "139.5.199.54";
   disableTextField(document.ethwan.dns1);
   disableTextField(document.ethwan.dns2);
  }else{
   enableTextField(document.ethwan.dns1);
   enableTextField(document.ethwan.dns2);
  }
 }
}
function dnsModeV6Clicked()
{
 if ( document.ethwan.dnsV6Mode[0].checked )
 {
  disableTextField(document.ethwan.Ipv6Dns1);
  disableTextField(document.ethwan.Ipv6Dns2);
 }
 if ( document.ethwan.dnsV6Mode[1].checked )
 {
  enableTextField(document.ethwan.Ipv6Dns1);
  enableTextField(document.ethwan.Ipv6Dns2);
 }
}
function disableFixedIpInput()
{
 disableTextField(document.ethwan.ip);
 disableTextField(document.ethwan.remoteIp);
 disableTextField(document.ethwan.netmask);
 document.ethwan.dnsMode[0].disabled = false;
 document.ethwan.dnsMode[1].disabled = false;
 dnsModeClicked();
}
function enableFixedIpInput()
{
 enableTextField(document.ethwan.ip);
 enableTextField(document.ethwan.remoteIp);
 if (document.ethwan.adslConnectionMode.value == 4)
  disableTextField(document.ethwan.netmask);
 else
  enableTextField(document.ethwan.netmask);
 document.ethwan.dnsMode[0].disabled = true;
 document.ethwan.dnsMode[1].disabled = true;
 dnsModeClicked();
}
function disableDNSv6Input()
{
 document.ethwan.dnsV6Mode[0].disabled = false;
 document.ethwan.dnsV6Mode[1].disabled = false;
 dnsModeV6Clicked();
}
function enableDNSv6Input()
{
 document.ethwan.dnsV6Mode[0].disabled = true;
 document.ethwan.dnsV6Mode[1].disabled = true;
 dnsModeV6Clicked();
}
function ipTypeSelection(init)
{
 if ( document.ethwan.ipMode[0].checked ) {
  enableFixedIpInput();
  showDhcpOptSettings(0);
 } else {
  disableFixedIpInput();
  showDhcpOptSettings(1);
 }
 if (init == 0)
 {
  if ( document.ethwan.ipMode[0].checked )
   document.ethwan.dnsMode[1].checked = true;
  else
   document.ethwan.dnsMode[0].checked = true;
  dnsModeClicked();
 }
}
function enable_pppObj()
{
 enableTextField(document.ethwan.pppUserName);
 enableTextField(document.ethwan.pppPassword);
 enableTextField(document.ethwan.pppConnectType);
 document.ethwan.gwStr[0].disabled = false;
 document.ethwan.gwStr[1].disabled = false;
 enableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = false;
 pppTypeSelection();
 autoDGWclicked();
}
function pppSettingsEnable()
{
 document.getElementById('tbl_ppp').style.display='block';
 enable_pppObj();
}
function disable_pppObj()
{
 disableTextField(document.ethwan.pppUserName);
 disableTextField(document.ethwan.pppPassword);
 disableTextField(document.ethwan.pppIdleTime);
 disableTextField(document.ethwan.pppConnectType);
 document.ethwan.gwStr[0].disabled = true;
 document.ethwan.gwStr[1].disabled = true;
 disableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = true;
}
function pppSettingsDisable()
{
 document.getElementById('tbl_ppp').style.display='none';
 disable_pppObj();
}
function enable_ipObj()
{
 document.ethwan.ipMode[0].disabled = false;
 document.ethwan.ipMode[1].disabled = false;
 document.ethwan.gwStr[0].disabled = false;
 document.ethwan.gwStr[1].disabled = false;
 enableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = false;
 ipTypeSelection(1);
 autoDGWclicked();
}
function ipSettingsEnable()
{
 document.getElementById('tbl_ip').style.display='block';
 enable_ipObj();
}
function disable_ipObj()
{
 document.ethwan.ipMode[0].disabled = true;
 document.ethwan.ipMode[1].disabled = true;
 document.ethwan.gwStr[0].disabled = true;
 document.ethwan.gwStr[1].disabled = true;
 disableTextField(document.ethwan.dstGtwy);
 document.ethwan.wanIf.disabled = true;
 disableFixedIpInput();
}
function ipSettingsDisable()
{
 document.getElementById('tbl_ip').style.display='none';
 showDhcpOptSettings(0);
 disable_ipObj();
}
function showDuidType2(show)
{
 if(show == 1)
 {
  document.getElementById('duid_t2_ent').style.display = '';
  document.getElementById('duid_t2_id').style.display = '';
 }
 else
 {
  document.getElementById('duid_t2_ent').style.display = 'none';
  document.getElementById('duid_t2_id').style.display = 'none';
 }
}
function showDhcpOptSettings(show)
{
 var dhcp_opt = document.getElementById('tbl_dhcp_opt');
 if(dhcp_opt == null)
  return ;
 if(show == 1)
 {
  document.getElementById('tbl_dhcp_opt').style.display='block';
  if(document.ethwan.duid_type[1].checked == true)
   showDuidType2(1);
  else
   showDuidType2(0);
 }
 else
  document.getElementById('tbl_dhcp_opt').style.display='none';
}
function onSelectSvrList()
{
 var ctype_value = document.getElementById('ctype').value;
 if(ctype_value == '1' || ctype_value == '8' || ctype_value == '9')
  document.getElementById("div_pmap").style.display = "none";
 else
  document.getElementById("div_pmap").style.display = "";
}
function ipModeSelection()
{
 if (document.ethwan.ipUnnum.checked) {
  disable_pppObj();
  disable_ipObj();
  document.ethwan.gwStr[0].disabled = false;
  document.ethwan.gwStr[1].disabled = false;
  enableTextField(document.ethwan.dstGtwy);
  document.ethwan.wanIf.disabled = false;
 }
 else
  enable_ipObj();
}
function updateBrMode(isLinkChanged)
{
 var brmode_ops = document.getElementById('brmode');
 if(!brmode_ops)
  return ;
 if(!isLinkChanged)
 {
  document.ethwan.br.checked = false;
  brmode_ops.value = 0;
  brmode_ops.disabled = true;
 }
 if(document.ethwan.adslConnectionMode.value == 0)
 {
  document.getElementById('br_row').style.display = "none";
  brmode_ops.disabled = false;
 }
 else
 {
  document.getElementById('br_row').style.display = "";
 }
}
function brClicked()
{
 var brmode_ops = document.getElementById('brmode');
 if(!brmode_ops)
  return ;
 if(document.ethwan.br.checked)
  brmode_ops.disabled = false;
 else
  brmode_ops.disabled = true;
}
function updateCtypeAHM(isBridge)
{
 var ctype_select = document.getElementById('ctype');
 ctype_select.options.length=0;
 if(isAHMNormalUser == "1")
 {
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isBridge)
 {
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("INTERNET", "2");
  ctype_select.add(opt);
 }else{
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("TR069", "1");
  ctype_select.add(opt);
  opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  opt = new Option("VOICE_TR069", "9");
  ctype_select.add(opt);
 }
}
function updateCtype(isBridge)
{
 var ctype_select = document.getElementById('ctype');
 ctype_select.options.length=0;
 if(isTriPlayVersion == "1")
 {
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isRedinetVersion == "1")
 {
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
  return;
 }
 if(isHBSVersion == "1")
 {
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
  return;
 }
 if(isAHMNormalUser == "1")
 {
  var opt = new Option("VOICE", "8");
  ctype_select.add(opt);
  return;
 }
 if(isBridge)
 {
  var opt = new Option("OTHER", "4");
  ctype_select.add(opt);
  opt = new Option("INTERNET", "2");
  ctype_select.add(opt);
 }else{
  if(isJDMVersion !="1")
  {
   var opt = new Option("OTHER", "4");
   ctype_select.add(opt);
   opt = new Option("TR069", "1");
   ctype_select.add(opt);
   opt = new Option("INTERNET", "2");
   ctype_select.add(opt);
  }
  opt = new Option("INTERNET_TR069", "3");
  ctype_select.add(opt);
  if(isJDMVersion !="1")
  {
   opt = new Option("VOICE", "8");
   ctype_select.add(opt);
   opt = new Option("VOICE_TR069", "9");
   ctype_select.add(opt);
   opt = new Option("VOICE_INTERNET", "10");
   ctype_select.add(opt);
  }
  opt = new Option("VOICE_INTERNET_TR069", "11");
  ctype_select.add(opt);
 }
}

function naptClicked()
{
 if (document.ethwan.adslConnectionMode.value == 3) {
  if (document.ethwan.naptEnabled.checked == true) {
   document.ethwan.ipUnnum.checked = false;
   document.ethwan.ipUnnum.disabled = true;
  }
  else
   document.ethwan.ipUnnum.disabled = false;
  ipModeSelection();
 }
}
function vlanClicked()
{
var vid_tr = document.getElementById("vid_tr");
    var cos_tr = document.getElementById("cos_tr");
    
    if (vid_tr.style.display === "none") {
        vid_tr.style.display = "";
        cos_tr.style.display = "";
    } else {
        vid_tr.style.display = "none";
        cos_tr.style.display = "none";
    }
 if(isPRACTVersion == "1")
 {
  document.getElementById('vid_tr').style.display = "none";
  document.getElementById('cos_tr').style.display = "none";
 }
}
function hideGWInfo(hide) {
 var status = false;
 if (hide == 1)
  status = true;
 changeBlockState('gwInfo', status);
 if (hide == 0) {
  with (document.forms[0]) {
   if (dgwstatus == 255) {
    if (isValidIpAddress(gtwy) == true) {
     gwStr[0].checked = true;
     gwStr[1].checked = false;
     dstGtwy.value=gtwy;
     wanIf.disabled=true
    } else {
     gwStr[0].checked = false;
     gwStr[1].checked = true;
     dstGtwy.value = '';
    }
   }
   else if (dgwstatus != 239) {
     gwStr[1].checked = true;
     gwStr[0].checked = false;
     wanIf.disabled=false;
     wanIf.value=dgwstatus;
     dstGtwy.disabled=true;
   } else {
     gwStr[1].checked = false;
     gwStr[0].checked = true;
     wanIf.disabled=true;
     dstGtwy.disabled=false;
   }
  }
 }
}
function autoDGWclicked() {
 if (document.ethwan.droute[0].checked == true) {
  hideGWInfo(1);
 } else {
  hideGWInfo(0);
 }
}
function gwStrClick() {
 with (document.forms[0]) {
  if (gwStr[1].checked == true) {
   dstGtwy.disabled = true;
   wanIf.disabled = false;
  }
  else {
   dstGtwy.disabled = false;
   wanIf.disabled = true;
  }
       }
}
function dhcp6cEnable()
{
 if(document.ethwan.itfenable.checked)
  document.getElementById('dhcp6c_block').style.display="";
 else
  document.getElementById('dhcp6c_block').style.display="none";
}
function ipv6StaticUpdate()
{
 if(document.ethwan.staticIpv6.checked) {
  document.getElementById('secIPv6Div').style.display="";
  document.ethwan.dnsV6Mode[1].checked = true;
  enableDNSv6Input();
 } else {
  document.getElementById('secIPv6Div').style.display="none";
  document.ethwan.dnsV6Mode[0].checked = true;
  disableDNSv6Input();
 }
}
function ipv6StaticUpdateRefresh()
{
 if(document.ethwan.staticIpv6.checked) {
  document.getElementById('secIPv6Div').style.display="";
  enableDNSv6Input();
 } else {
  document.getElementById('secIPv6Div').style.display="none";
 }
}
function ipv6WanUpdate()
{
 ipv6StaticUpdateRefresh();
 dhcp6cEnable();
}
function ipv6SettingsDisable()
{
 document.getElementById('tbipv6wan').style.display="none";
 document.getElementById('secIPv6Div').style.display="none";
 document.getElementById('dhcp6c_ctrlblock').style.display="none";
 document.getElementById('IPv6DnsDiv').style.display="none";
 document.getElementById('DSLiteDiv').style.display="none";
}
function ipv6SettingsEnable()
{
 if(document.ethwan.IpProtocolType.value != 1){
  document.getElementById('tbipv6wan').style.display="";
  document.getElementById('dhcp6c_ctrlblock').style.display="block";
  document.getElementById('IPv6DnsDiv').style.display="";
  if (document.ethwan.IpProtocolType.value == 2) {
   document.getElementById('DSLiteDiv').style.display="";
   dsliteSettingChange();
  }
  else
   document.getElementById('DSLiteDiv').style.display="none";
  ipv6WanUpdate();
   }
}
function dsliteSettingChange()
{
 with ( document.forms[0] )
 {
  if(dslite_enable.checked == true){
   if (adslConnectionMode.value == 2) {
    if(mtu.value > 1452)
     mtu.value = 1452;
   }
   else {
    if(mtu.value > 1460)
     mtu.value = 1460;
   }
   dslite_mode_div.style.display = '';
   dsliteAftrModeChange();
  }
  else{
   dslite_mode_div.style.display = 'none';
   dslite_aftr_hostname_div.style.display = 'none';
  }
 }
}
function dsliteAftrModeChange()
{
 with ( document.forms[0] )
 {
  var dslitemode =dslite_aftr_mode.value;
  dslite_aftr_hostname_div.style.display = 'none';
  switch(dslitemode){
   case '0':
     break;
   case '1':
     dslite_aftr_hostname_div.style.display = '';
     if(dslite_aftr_hostname.value == "::")
      dslite_aftr_hostname.value ="";
     break;
  }
 }
}
function protocolChange()
{
 ipver = document.ethwan.IpProtocolType.value;
 if(document.ethwan.IpProtocolType.value == 1){
  if( document.ethwan.adslConnectionMode.value ==1 ||
   document.ethwan.adslConnectionMode.value ==4 ||
   document.ethwan.adslConnectionMode.value ==5)
   ipSettingsEnable();
   ipv6SettingsDisable();
 }else{
  if(document.ethwan.IpProtocolType.value == 2){
   ipSettingsDisable();
  }else{
   if( document.ethwan.adslConnectionMode.value ==1 ||
    document.ethwan.adslConnectionMode.value ==4 ||
    document.ethwan.adslConnectionMode.value ==5)
    ipSettingsEnable();
  }
  ipv6SettingsEnable();
 }
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
}
function on_linkchange(itlk)
{
 var pmchkpt = document.getElementById("tbl_pmap");
 with ( document.forms[0] )
 {
  if(itlk == null)
  {
   adslConnectionMode.value = pppConnectType.value = 0;
   if(isSPVersion == "1" || isJDMVersion == "1" || isTriPlayVersion == "1" || isAirLinkVersion == "1")
    adslConnectionMode.value = 1;
   if(isAHMNormalUser == "1" || isSPVersion == "1" || isJDMVersion == "1" || isAirLinkVersion == "1")
    updateCtype(false);
   else
    updateCtype(true);
   if(typeof brmode != "undefined")
    brmode.value = 0;
   mtu.value = 1500;
   IpProtocolType.value = 1;
   if(isAHMNormalUser == "1" || isSPVersion == "1" || isTriPlayVersion == "1")
    ctype.value = 8;
   else if (isJDMVersion == "1" || isRedinetVersion == "1")
    ctype.value = 3;
   else
    ctype.value = 4;
   ipMode[0].checked = droute[0].checked = dnsMode[1].checked = dnsV6Mode[1].checked =true;
   chEnable[0].checked = true;
   if(typeof duid_type !== 'undefined')
    duid_type[1].checked = true;
   naptEnabled.checked = vlan.checked = qosEnabled.checked = igmpEnabled.checked = mldEnabled.checked = false;
   if(typeof enable_opt_60 !== 'undefined')
    enable_opt_60.checked = enable_opt_61.checked = enable_opt_125.checked = false;
   vprio.value = vid.value = "0";
   vid.value = "";
   ip.value = remoteIp.value = "0.0.0.0";
   netmask.value = "255.255.255.0";
   pppUserName.value = pppPassword.value = acName.value = serviceName.value = dns1.value = dns2.value = "";
   auth.value = 0;
   slacc.checked = true;
   staticIpv6.checked = false;
   Ipv6Addr.value = "";
   Ipv6PrefixLen.value = "";
   Ipv6Gateway.value = "";
   dnsV6Mode[0].checked = true;
   disableDNSv6Input();
   itfenable.checked = true;
   iana.checked = true;
   iapd.checked = false;
   document.getElementById('tbipv6wan').style.display="none";
   if(typeof document.ethwan.br != "undefined")
    document.ethwan.br.checked = false;
   if (pmchkpt)
    for (var i = 0; i < 14; i++) {
     if (!chkpt[i])
      break;
     chkpt[i].checked = false;
    }
  }
  else
  {
   mtu.value=itlk.mtu;
   adslConnectionMode.value = itlk.cmode;
   if(isAHMVersion == "1" || isSPVersion == "1" || isJDMVersion == "1" || isTriPlayVersion == "1" || isAirLinkVersion == "1" || isRedinetVersion == "1")
   {
    if(itlk.cmode == 2)
     document.getElementById("delete").style.display="none";
    else
     document.getElementById("delete").style.display="";
   }
   if(adslConnectionMode.value == '0')
    updateCtype(true);
   else
    updateCtype(false);
   ctype.value = itlk.applicationtype;
   if(document.ethwan.br)
   {
    document.ethwan.br.checked = false;
    if(itlk.brmode == 2)
    {
     brmode.value = 0;
     brmode.disabled = true;
    }
    else
    {
     if(itlk.cmode != 0)
      document.ethwan.br.checked = true;
     brmode.value = itlk.brmode;
     brmode.disabled = false;
    }
   }
   if (itlk.napt == 1)
    naptEnabled.checked = true;
   else
    naptEnabled.checked = false;
   if (itlk.enableIGMP == 1)
    igmpEnabled.checked = true;
   else
    igmpEnabled.checked = false;
   if (itlk.enableMLD == 1)
    mldEnabled.checked = true;
   else
    mldEnabled.checked = false;
   if (itlk.enableIpQos == 1)
    qosEnabled.checked = true;
   else
    qosEnabled.checked = false;
   mtu.value = itlk.mtu;
   if (itlk.vlan == 1)
   {
    vid_tr.style.display = "";
    cos_tr.style.display = "";
    vlan.checked = true;
    vid.value = itlk.vid;
    vprio.value = itlk.vprio;
   }
   else
   {
    vlan.checked = false;
    vid_tr.style.display = "none";
    cos_tr.style.display = "none";
   }
   if (itlk.dgw == 1)
    droute[1].checked = true;
   else
    droute[0].checked = true;
   if (itlk.enable == 1)
    chEnable[0].checked = true;
   else
    chEnable[1].checked = true;
   if(itlk.cmode != 0)
   {
    IpProtocolType.value = itlk.IpProtocol;
    if (IpProtocolType.value != 1)
    {
     if (itlk.AddrMode & 1)
      slacc.checked = true;
     else
      slacc.checked = false;
     if (itlk.AddrMode & 2)
     {
      staticIpv6.checked = true;
      Ipv6Addr.value = itlk.Ipv6Addr;
      Ipv6PrefixLen.value = itlk.Ipv6AddrPrefixLen;
      Ipv6Gateway.value = itlk.RemoteIpv6Addr;
     }
     else
     {
      staticIpv6.checked = false;
      Ipv6Addr.value = "";
      Ipv6PrefixLen.value = "";
      Ipv6Gateway.value = "";
     }
     if (itlk.dnsv6Mode == 1)
     {
      dnsV6Mode[0].checked = true;
      disableDNSv6Input();
     }
     else
     {
      dnsV6Mode[1].checked = true;
      dnsModeV6Clicked();
     }
     Ipv6Dns1.value = itlk.Ipv6Dns1;
     Ipv6Dns2.value = itlk.Ipv6Dns2;
     if (itlk.Ipv6Dhcp)
     {
      itfenable.checked = true;
      if (itlk.Ipv6DhcpRequest & 1)
       iana.checked = true;
      else
       iana.checked = false;
      if (itlk.Ipv6DhcpRequest & 2)
       iapd.checked = true;
      else
       iapd.checked = false;
     }
     else
      itfenable.checked = false;
     if (IpProtocolType.value == 2) {
      dslite_enable.checked = itlk.dslite_enable;
      dslite_aftr_mode.value = itlk.dslite_aftr_mode;
      dslite_aftr_hostname.value = itlk.dslite_aftr_hostname;
     }
     if (itlk.AddrMode & 8)
     {
      adslConnectionMode.value = 8;
      SixrdBRv4IP.value = itlk.SixrdBRv4IP;
      SixrdIPv4MaskLen.value = itlk.SixrdIPv4MaskLen;
      SixrdPrefix.value = itlk.SixrdPrefix;
      SixrdPrefixLen.value = itlk.SixrdPrefixLen;
      ip.value = itlk.ipAddr;
      remoteIp.value = itlk.remoteIpAddr;
      netmask.value = itlk.netMask;
     }
    }else{
     slacc.checked = true;
     staticIpv6.checked = false;
     Ipv6Addr.value = "";
     Ipv6PrefixLen.value = "";
     Ipv6Gateway.value = "";
     dnsV6Mode[0].checked = true;
     disableDNSv6Input();
     itfenable.checked = true;
     iana.checked = true;
     iapd.checked = false;
    }
    if (itlk.cmode == 1)
    {
     if (itlk.ipDhcp == 1)
     {
      ipMode[1].checked = true;
      ip.value = "";
      remoteIp.value = "";
      netmask.value = "";
     }
     else
     {
      ipMode[0].checked = true;
      ip.value = itlk.ipAddr;
      remoteIp.value = itlk.remoteIpAddr;
      netmask.value = itlk.netMask;
     }
     if (itlk.dnsMode == 1)
       dnsMode[0].checked = true;
      else
       dnsMode[1].checked = true;
     dns1.value = itlk.v4dns1;
     dns2.value = itlk.v4dns2;
    }
    else if (itlk.cmode == 2)
    {
     pppUserName.value = decode64(itlk.pppUsername);
     pppPassword.value = decode64(itlk.pppPassword);
     pppConnectType.value = itlk.pppCtype;
     pppIdleTime.value = itlk.pppIdleTime;
     auth.value = itlk.pppAuth;
     acName.value = itlk.pppACName;
     serviceName.value = itlk.pppServiceName;
    }
    protocolChange();
   }
   if(typeof enable_opt_60 !== 'undefined')
   {
    if(itlk.enable_opt_60)
     enable_opt_60.checked = true;
    opt60_val.value = itlk.opt60_val;
    if(itlk.enable_opt_61)
     enable_opt_61.checked = true;
    iaid.value = itlk.iaid;
    if(itlk.duid_type == 0)
     duid_type[0].checked = true;
    else
     duid_type[itlk.duid_type - 1].checked = true;
    duid_ent_num.value = itlk.duid_ent_num;
    duid_id.value = itlk.duid_id;
    if(itlk.enable_opt_125)
     enable_opt_125.checked = true;
    manufacturer.value = itlk.manufacturer;
    product_class.value = itlk.product_class;
    model_name.value = itlk.model_name;
    serial_num.value = itlk.serial_num;
   }
   if (pmchkpt)
    for (var i = 0; i < 14; i++) {
     if (!chkpt[i])
      break;
     chkpt[i].checked = (itlk.itfGroup & (0x1 << i));
    }
  }
 }
 ipver = document.ethwan.IpProtocolType.value;
 onSelectSvrList();
 vlanClicked();
 autoDGWclicked();
 adslConnectionModeSelection(true);
}
function on_ctrlupdate()
{
 with ( document.forms[0] )
 {
  if(lkname.value == "new")
  {
   curlink = null;
   on_linkchange(curlink);
  }
  else
  {
   curlink = links[lkname.value];
   on_linkchange(curlink);
  }
 }
 if((isSPVersion == "1")||(isAHMNormalUser != "1" && isGenevaVersion != "1" && adminAccount==1))
  disableForm();
}
function on_init()
{
 sji_docinit(document, cgi);
 with ( document.forms[0] )
 {
  for(var k in links)
  {
   var lk = links[k];
   lkname.options.add(new Option(lk.name, k));
  }
  if ((0 == 0 || isAHMNormalUser == "1") && isPRACTVersion != "1")
   lkname.options.add(new Option("new link", "new"));
  if(links.length > 0) lkname.selectedIndex = 0;
  on_ctrlupdate();
 }
}
</script>

            <div class="text-center p-3"  style="background-color: rgb(235 234 234 / 20%);">
                &COPY; 2023 Copyright :
                <a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
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

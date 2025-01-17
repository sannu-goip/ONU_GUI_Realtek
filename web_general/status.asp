<%
	If Request_Form("Saveflag")="1" then
		tcWebApi_set("DeviceInfo_PVC","DipNasName","DipNasName")
		If Request_Form("Dipflag")="1" then
			tcWebApi_set("DeviceInfo_PVC","DispBtnType","Dipflag")
			tcWebApi_commit("DeviceInfo_PVC")
		elseif Request_Form("Dipflag")="2" then
			tcWebApi_set("DeviceInfo_PVC","DispBtnType","Dipflag")
			tcWebApi_commit("DeviceInfo_PVC")
		elseif Request_Form("Dipflag")="3" then
			tcWebApi_set("DeviceInfo_PVC","DispBtnType","Dipflag")
			tcWebApi_set("DeviceInfo_PVC","IP6DispBtnType","Dipflag")
			tcWebApi_commit("DeviceInfo_PVC")
		elseif Request_Form("Dipflag")="4" then
			tcWebApi_set("DeviceInfo_PVC","DispBtnType","Dipflag")
			tcWebApi_set("DeviceInfo_PVC","IP6DispBtnType","Dipflag")
			tcWebApi_commit("DeviceInfo_PVC")
		END If 
	END If

    tcWebApi_get("Info_WLan", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_wlan_read", "1")

tcWebApi_get("Info_Ether", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_ether_read", "1")

tcWebApi_get("Info_WLan11ac", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_wlan11ac_read", "1")

tcWebApi_constSet("WebCurSet_Entry", "isSSIDHidden", "No")
if tcWebApi_get("WebCustom_Entry", "isCTPONCZNXSupported", "h") = "Yes"  then
	if tcwebApi_get("WebCurSet_Entry","CurrentAccess","h") <> "0" then
		tcWebApi_constSet("WebCurSet_Entry", "isSSIDHidden", "Yes")
	end if
elseif tcWebApi_get("WebCustom_Entry", "isCTPONOnlyOneSSIDSupported", "h") = "Yes"  then
	tcWebApi_constSet("WebCurSet_Entry", "isSSIDHidden", "Yes")
end if

tcWebApi_get("Info_WLan", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_wlan_read", "1")

tcWebApi_get("Info_Ether", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_ether_read", "1")

tcWebApi_get("Info_WLan11ac", "Test", "h")
tcWebApi_constSet("WebCurSet_Entry", "info_wlan11ac_read", "1")
%>


<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="icon" href="<%tcWebApi_get("String_Entry","iconHerf","s")%>" type="image/x-icon"> 
	<link rel="stylesheet" type="text/css" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">  
    <title><%tcWebApi_get("String_Entry","DevInfoDevInformationText","s")%></title>
<link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" type="text/css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css" type="text/css" > 
	  <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" type="text/css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet">
	  <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
	  <script language=javascript src="/Dashboard/JS/jquery.js"></SCRIPT>
      			   <SCRIPT type="text/javascript" src="/Dashboard/JS/menu.js"></SCRIPT>
      <SCRIPT type="text/javascript" src="/Dashboard/JS/util.js"></SCRIPT>
      <SCRIPT language=JavaScript src="/Dashboard/JS/printtable.js"></SCRIPT>
	  <style type="text/css">
      th {
        font-size: 13px!important;
      }

      .close {
            color: red;
        }

@media only screen and (min-device-width: 960px)and (max-device-width: 2000px){

#overflow-amit {
height:1600px!important;
}

.front-img {
    width: 100%;
    height: 314px!important;
    background-repeat: no-repeat;
    background-image: url(../img/FRONT.png);
    background-size: cover;
}  
.mobile-iconfront{
     width: 54%!important;
    margin-left: 58px!important;
    margin-top: 90px !important;


}

.mobile-iconfront-text{
 padding-left: 99!important;

}
.mobile-iconfront{
margin-left: 125px;
}

.mid-divice{
        width: 42%;
    margin-left: 166px!important;
    margin-top: 50px;
}


}



@media screen and (min-device-width: 200px) and (max-device-width: 768px) { 
    
#overflow-amit {
height:1600px!important;
}

.front-img {
    width: 100%;
    height: 241px!important;
    background-repeat: no-repeat;
    background-image: url(../img/FRONT.png);
    background-size: cover;
}  
.mobile-iconfront{
    width: 48%!important;
    margin-left: 52px!important;
    margin-top: 78px !important;


}
.mobile-iconfront-text{
 padding-left: 62px!important;
}
.mobile-iconfront{
margin-left: 125px;
}

.mid-divice{
    width: 45%;
    margin-left: 124px!important;
    margin-top: 42px;
}

}

.sidebar_toggle{
visibility:hidden;
}

.active 
{
    display: contents;
}

.hidden 
{
    display: none;
}
.p-3 {
    padding: 3rem !important;
}


    </style>
	</head>
	<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
    <INPUT id="Selected_Menu" type="hidden"
            value="<%tcWebApi_get("String_Entry","ContentStatusText","s")%>-><%tcWebApi_get("String_Entry","ContentDeviceInfoText","s")%>" name="Sta_Dev"> 
		<div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left" vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact" vertical-effect="shrink" vnavigation-view="view1">	
			<div class="scoop-overlay-box"></div>
			<div class="scoop-container">  				
				<div class="scoop-main-container">
					<div class="scoop-wrapper">
						<nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0" sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle">
                                <a href="#"><i class="icon-close icons"></i></a>
                            </div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('<%tcWebApi_get("String_Entry","ContentStatusText","s")%>','<%tcWebApi_get("String_Entry","ContentDeviceInfoText","s")%>')
							        </SCRIPT>
							    </div>
							</div> 
						</nav> 
						<div class="scoop-content">
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
                                            <image src="/img/facebook.png" style="width:30px">
                                        </a>
                                        <a href="https://www.linkedin.com/uas/login?session_redirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2F13408012%2Fadmin%2F"
                                            target="_blank">
                                            <image src="/img/linkedin.png" style="width:30px">


                                        </a>
                                        <a href="https://twitter.com/Syrotech" target="_blank">
                                            <image src="/img/twitter.png" style="width:30px">
                                        </a>
                                        <a href="https://www.youtube.com/channel/UCxKPAshBZ3BjsKoryZqd1jg?reload=9"
                                            target="_blank">
                                            <image src="/img/youtube.png" style="width:30px">
                                        </a> <a href="https://www.instagram.com/syrotechnetworks/" target="_blank">
                                            <image src="/img/insta.png" style="width:30px">
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
                            <div class="">



                            <form name="ConfigForm" action="/cgi-bin/sta-device-new.asp" method="post">
                                <input type="hidden" id="Dipflag" name="Dipflag" value="0">
                                <input type="hidden" id="Saveflag" name="Saveflag" value="0">
                                <input type="hidden" id="DipNasName" name="DipNasName" value="0">
                            </form>

                        
                                <div class="row p-3 mb-4" style="background-color:#fff;" id="overflow-amit">
                                    <div class="col-xl-6 col-md-6 mb-4">
                                        <div class="card" style="height:400px">
                                            <div class="card-header" style="height:125px">
                                                <span>
                                                    <img src="/Dashboard/images/staush.png"
                                                        style="width:45px;padding-bottom:5px;">
                                                </span>
                                                <span><b style="font-size: 18px;padding-top:5px;"><span
                                                            style="vertical-align:middle;">Device Information</b></span>
                                                <hr>
                                                <span>On this page, you can view basic device information </span>
                                            </div>
                                            <div class="card-body table-bordered table-responsive ">
                                                <a style="text-decoration: none;" href="" data-toggle="modal"
                                                    data-target="#HERO01">
                                                    <table class="table  table-bordered table-striped">
                                                        <tbody>
                                                            <tr>
                                                                <th style="width:25%">Model Number </th>
                                                                <td style="width:75%">
                                                                     <SCRIPT language=javascript>
                                                                        document.write('<% getInfo("name"); %>');
                                                                    </SCRIPT>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:25%">Device Serial </th>
                                                                <td style="width:75%">
                                                                     <SCRIPT language=javascript>
                                                                        document.write('<% fmgpon_checkWrite("fmgpon_sn"); %>');
                                                                    </SCRIPT>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:25%">Description: </th>
                                                                <td style="width:75%">
                                                                    <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","DeviceDescription","s") %>');
                                                                    </SCRIPT>
                                                                    &nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th style="width:25%">Hardware Version </th>
                                                                <td style="width:75%">
                                                                    <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","CustomerHWVersion","s") %>');
                                                                    </SCRIPT>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                    <button class="btn orange_btn" href="" data-toggle="modal"
                                                        data-target="#HERO01">View More
                                                    </button>
                                                </a>
                                                <div class="modal fade" id="HERO01" role="dialog">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span class="">
                                                                    <img src="/Dashboard/images/staush.png"
                                                                        style="width:45px;padding-bottom:5px;">
                                                                </span>
                                                                <h2 class="modal-title" style="display: inline;"><span
                                                                        style="vertical-align:middle;">&nbsp;Device
                                                                        Information</h2></span>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal">&times;</button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>On this page, you can view basic device information.
                                                                </p>
                                                                <table class="table  table-bordered table-striped">
                                                                    <tbody>
                                                                        <tr>
                                                                            <th style="width:40%">Model Number </th>
                                                                            <td style="width:60%">
                                                                             <SCRIPT language=javascript>
                                                                        document.write('<% getInfo("name"); %>');
                                                                    </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th style="width:40%">Device Serial </th>
                                                                            <td style="width:60%">  <SCRIPT language=javascript>
                                                                        document.write('<% fmgpon_checkWrite("fmgpon_sn"); %>');
                                                                    </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Description </th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","DeviceDescription","s") %>');
                                                                    </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>MAC</th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% getInfo("elan-Mac"); %>');
                                                                    </SCRIPT>
 </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>IP Address</th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% getInfo("lan-ip"); %>');
                                                                    </SCRIPT>
 </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>IPv6 Address</th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("Lan_Entry0","IP6","s") %>');
                                                                    </SCRIPT>
 </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Hardware Version </th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","CustomerHWVersion","s") %>');
                                                                    </SCRIPT></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Software Version</th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","CustomerSWVersion","s") %>');
                                                                    </SCRIPT></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th> Manufacture Info </th>
                                                                            <td> <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("DeviceInfo_devParaStatic","Manufacturer","s") %>');
                                                                    </SCRIPT></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>ONT Registration Status </th>
                                                                            <td>
                                                                                <Script language=JavaScript type=text/javascript>
                                                                                    let ponState = '<% tcWebApi_get("XPON_Common","trafficStatus","s") %>';
												                                    if( ponState == "up")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOnlineText","s")%>");
												                                    else if ( ponState == "connecting")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>");
												                                    else
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOfflineText","s")%>");
												                                </Script>
                                                                             </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>CPU Usage</th>
                                                                            <td>
                                                                             <SCRIPT language=javascript>
                                                                        document.write('<% cpuUtility(); %>');
                                                                    </SCRIPT>
                                                                    </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th> Memory Usage </th>
                                                                            <td>
                                                                                 <SCRIPT language=javascript>
                                                                                    document.write('<% memUtility(); %>');
                                                                    </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                                                                                         <tr>
                                                                            <th>System Time</th>
                                                                            <td>
                                                                    <SCRIPT language=javascript>
                                                                        let curTime = '<%tcWebApi_get("DeviceInfo","cur_time2","s")%>';
                                                                        let curTimelist = curTime.split('/');
                                                                       
																  if ( 5 == curTimelist.length )
																  {
																  	document.write(curTimelist[2] + '<%tcWebApi_get("String_Entry","YearText","s")%>' + curTimelist[0] + '<%tcWebApi_get("String_Entry","MonthText","s")%>' + curTimelist[1] + '<%tcWebApi_get("String_Entry","DayText","s")%>' + curTimelist[3] + '<%tcWebApi_get("String_Entry","HourText","s")%>' + curTimelist[4] + '<%tcWebApi_get("String_Entry","MinuteText","s")%>');
																  }
																  else
																  	document.write('N/A');
                                                                    </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                    </tbody>
                                                                </table>
                                                            </div>
                                                            <div class="modal-footer">
                                                                
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                    <script language="JavaScript" type="text/javascript">
	 	var userState = 1;
	 	if (curUserName == sptUserName)
			userState = 0;
	 	var para = 0;
		var pvc_counts=<% tcWebApi_get("WanInfo_Common","CycleNum","s") %>;
<% if tcwebApi_get("WebCustom_Entry","isCTSFUC9Supported","h") = "Yes" then %>		
		pvc_counts = 1;
<% end if %>
		//get all value
		// num 0
		var vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_WanName = vArrayStr.split(',');
		// num 1
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_WanNas = vArrayStr.split(',');
		// num 2
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 3
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Actives = vArrayStr.split(',');
		// num 4		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_EnNAT = vArrayStr.split(',');
		// num 5		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 6		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IPVERSION = vArrayStr.split(',');
		// num 7		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Status4 = vArrayStr.split(',');
		// num 8		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IP4 = vArrayStr.split(',');
		// num 9		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_ENCAP = vArrayStr.split(',');
		// num 10		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_GateWay4 = vArrayStr.split(',');
		// num 11		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_DNS4 = vArrayStr.split(',');
		// num 12		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_SecDNS4 = vArrayStr.split(',');
		// num 13		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Status6 = vArrayStr.split(',');
		// num 14		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_IP6 = vArrayStr.split(',');
		// num 15		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_GateWay6 = vArrayStr.split(',');
		// num 16		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_DNS6 = vArrayStr.split(',');
		// num 17		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_SecDNS6 = vArrayStr.split(',');
		// num 18		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_PD6 = vArrayStr.split(',');
		// num 19		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_NetMask4 = vArrayStr.split(',');
		// num 20		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 21		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		// num 22		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_Connection = vArrayStr.split(',');
		// num 23		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_VidPRI = vArrayStr.split(',');
		// num 24		
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_MAC = vArrayStr.split(',');
		// num 25
        vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
        var str_mcvid = vArrayStr.split(',');
        // num 26
        vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
        var str_ppp_bi = vArrayStr.split(',');
        // num 27
		vArrayStr = "<% tcWebApi_get("WanInfo_Common","CycleValue","s") %>";
		var Wan_sesstime = vArrayStr.split(',');

		var Uptime = "<%tcWebApi_get("Info_PonPhy","Uptime","s") %>";
		var UptimeSplit = Uptime.split(',');

		SortUtil.SetReplaceStrflag(1);
		Wan_WanName = SortUtil.UpdateWanIFName( Wan_WanName, pvc_counts );
		Wan_WanNas = SortUtil.SortMyArray( Wan_WanNas );
		Wan_Actives = SortUtil.SortMyArray( Wan_Actives );
        Wan_EnNAT = SortUtil.SortMyArray( Wan_EnNAT );
		Wan_IPVERSION = SortUtil.SortMyArray( Wan_IPVERSION );
		Wan_Status4 = SortUtil.SortMyArray( Wan_Status4 );
		Wan_IP4 = SortUtil.SortMyArray( Wan_IP4 );
		Wan_ENCAP = SortUtil.SortMyArray( Wan_ENCAP );
		Wan_GateWay4 = SortUtil.SortMyArray( Wan_GateWay4 );
		Wan_DNS4 = SortUtil.SortMyArray( Wan_DNS4 );
		Wan_SecDNS4 = SortUtil.SortMyArray( Wan_SecDNS4 );
		Wan_Status6 = SortUtil.SortMyArray( Wan_Status6 );
		Wan_IP6 = SortUtil.SortMyArray( Wan_IP6 );
		Wan_GateWay6 = SortUtil.SortMyArray( Wan_GateWay6 );
		Wan_DNS6 = SortUtil.SortMyArray( Wan_DNS6 );
		Wan_SecDNS6 = SortUtil.SortMyArray( Wan_SecDNS6 );
		Wan_PD6 = SortUtil.SortMyArray( Wan_PD6 );
		Wan_NetMask4 = SortUtil.SortMyArray( Wan_NetMask4 );
		Wan_Connection = SortUtil.SortMyArray( Wan_Connection );
		Wan_VidPRI = SortUtil.SortMyArray( Wan_VidPRI );
		Wan_MAC = SortUtil.SortMyArray( Wan_MAC );
		Wan_sesstime = SortUtil.SortMyArray( Wan_sesstime );


        let onlineSecond = new Array(pvc_counts);

                                                                                for (let i = 0; i < pvc_counts; i++) {
                                                                                    switch(i) {
                                                                                        case 0:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry0","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 1:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry1","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 2:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry2","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 3:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry3","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 4:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry4","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 5:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry5","connect_sec","s") %>';
                                                                                            break;
                                                                                        case 6:
                                                                                            onlineSecond[i] = '<% tcWebApi_get("WanInfo_Entry6","connect_sec","s") %>';
                                                                                            break;
                                                                                    }
                                                                                }


        var Wan_NTPServer = '<% tcWebApi_get("Timezone_Entry","SERVER","s") %>';
        var Wan_TimeZone = '<% tcWebApi_get("Timezone_Entry","TZ","s") %>'

        function LoadFrame() {
            return;
        }

		function transTemperature(temperature)
		{
			var temp = Number(temperature);
			if (temp >= Math.pow(2, 15)){
				<% if tcwebApi_get("WebCustom_Entry","isCTPONGDTemperatureSupported","h") = "Yes" then %>	
					return -((Math.pow(2, 16)-temp)/256).toFixed(1);
				<% else %>
					return -Math.round((Math.pow(2, 16)-temp)/256);
				<% end if %>
			}else{
				<% if tcwebApi_get("WebCustom_Entry","isCTPONGDTemperatureSupported","h") = "Yes" then %>	
					return (temp/256).toFixed(1);
				<% else %>
					return Math.round(temp/256);
				<% end if %>
			}
		}			
			
		function PonInfoClass()
		{
			var SupplyVoltage = '<%tcWebApi_get("Info_PonPhy", "SupplyVoltage", "s")%>';
			var TxBiasCurrent = '<%tcWebApi_get("Info_PonPhy", "TxBiasCurrent", "s")%>';
			var Temperature = '<%tcWebApi_get("Info_PonPhy", "Temperature", "s")%>';
			var TxPower = '<%tcWebApi_get("Info_PonPhy", "TxPower", "s")%>';
			var RxPower = '<%tcWebApi_get("Info_PonPhy", "RxPower", "s")%>';
			this.LinkSta					= '<% tcWebApi_get("XPON_LinkCfg","LinkSta","s") %>';
			this.trafficstate			= '<% tcWebApi_get("XPON_Common","trafficStatus","s") %>';
			this.fecState					= '<% tcWebApi_get("Info_PonPhy","FecStatus","s") %>';
			this.ponType					= '<% tcWebApi_get("XPON_Common","xponMode","s") %>';
			this.loidStatus				= 'init';
			this.PonState 				= 'down';
			this.FECEnable 				= '-';
			this.WarnInfo 				= 'disconnect';
			this.PonSendPkt 			= '<% tcWebApi_get("Info_PonWanStats","TxFrameCnt","s") %>';
			this.PonRecvPkt 			= '<% tcWebApi_get("Info_PonWanStats","RxFrameCnt","s") %>';
			this.SendPower 				= '-';
			this.RecvPower 				= '-';
			<% if SupplyVoltage <> "N/A" then %>	
			this.WorkVoltage 			= (Number(SupplyVoltage)/10);
			<% else %>
			this.WorkVoltage 			= '-';
			<% end if %>
			<% if TxBiasCurrent <> "N/A" then %>	
			this.WorkElectric 		= (Number(TxBiasCurrent)*2/1000);
			<% else %>
			this.WorkElectric 		= '-';
			<% end if %>
			<% if Temperature <> "N/A" then %>	
			this.WorkTemperature 	= transTemperature(Temperature);
			<% else %>
			this.WorkTemperature 	= '-';
			<% end if %>
			this.EncryptEnable 		= '-';
			this.encryptState			= '<% tcWebApi_get("WebCurSet_Entry","EPONEncryption","s") %>';
			this.GemPortInfo			= '<% tcWebApi_get("GPON_GEMPort","EncryptionStateALL","s") %>';
			this.DispGemPortState = DispGemPortState;
			this.phyStatus				=	'<% tcWebApi_get("XPON_Common","phyStatus","s") %>';

			if ( 'GPON' != this.ponType && 'EPON' != this.ponType )
				this.ponType = 'GPON';
			if ( 'GPON' == this.ponType )
			{
				this.loidAuth					= '<% tcWebApi_get("GPON_LOIDAuth","AuthStatus","s") %>';
				this.loidV1						= '<% tcWebApi_get("GPON_LOIDAuth","LOID","s") %>';
			}
			else
			{
				this.loidAuth					= '<% tcWebApi_get("EPON_LOIDAuth","AuthStatus","s") %>';
				this.loidV1						= '<% tcWebApi_get("EPON_LOIDAuth","LOID0","s") %>';
			}

			if ( 'up' == this.trafficstate )
			{
				this.PonState 				= 'up';
				this.WarnInfo 				= 'no info';
				this.loidStatus				= 'up';
			}
			else
			{
				if ( '0' != this.LinkSta && '2' == this.loidAuth && 0 != this.loidV1.length )
					this.loidStatus			= 'error';
			}
			
			if( '0' != this.LinkSta)
			{
				<% if TxPower <> "N/A" then %>	
				this.SendPower 				= (Math.round(Math.log((Number(TxPower))/10000)/(Math.log(10))*100)/10);
				<% else %>
				this.SendPower 				= '-';
				<% end if %>
				<% if RxPower <> "N/A" then %>	
				this.RecvPower 				= (Math.round(Math.log((Number(RxPower))/10000)/(Math.log(10))*100)/10);
				<% else %>
				this.RecvPower 				= '-';
				<% end if %>
				this.FECEnable 				= ( '1' == this.fecState ) ? 'enabled' : 'disabled';

				if ( '2' == this.LinkSta )
					this.EncryptEnable	= ( '1' == this.encryptState ) ? 'enabled' : 'disabled';
			}
			
			function DispGemPortState()
			{
				var gemportList;
				var gemportInfo;
				var gemportState;
				var i = 0;

				if ( this.GemPortInfo.indexOf('#') >=0 )
					this.GemPortInfo = this.GemPortInfo.substring(0, this.GemPortInfo.length - 1);
				else
				{
					document.write('<%tcWebApi_get("String_Entry","NetInfoDisableText","s")%>');
					return -1;
				}

				gemportList = this.GemPortInfo.split('#');
				for (i = 0; i < gemportList.length; i ++)
				{
					gemportInfo = gemportList[i].split(':');
					if ( 2 != gemportInfo.length )
						continue;

					gemportState = 'GEMPORT' + gemportInfo[0] + ':' + ( ( 1 == gemportInfo[1] ) ? '<%tcWebApi_get("String_Entry","NetInfoEnableText","s")%>' : '<%tcWebApi_get("String_Entry","NetInfoDisableText","s")%>' )
												+ '; '
					document.write(gemportState);
				}

				return 0;
			}
		}
		
		var PonInfo = new PonInfoClass();
    
		var EthernetState = '<% tcWebApi_get("WanInfo_Common","EthernetState","s") %>';


		function renewrelease(ip, nasIndex)
		{
			if(checkVoipIdle() == false)
			{
				return false;
			}

			document.ConfigForm.Dipflag.value = ip;
			document.ConfigForm.Saveflag.value = 1;
			document.ConfigForm.DipNasName.value = Wan_WanNas[nasIndex];
			if( true == setEBooValueCookie(document.ConfigForm) )
				document.ConfigForm.submit(); 
		}

        function getOnlineDurationInDDHHMMSS(seconds) {
                                                                                    // Calculate the number of days, hours, minutes, and seconds
                                                                                    const days = Math.floor(seconds / (24 * 3600));
                                                                                    const hours = Math.floor((seconds % (24 * 3600)) / 3600);
                                                                                    const minutes = Math.floor((seconds % 3600) / 60);
                                                                                    const secs = seconds % 60;

                                                                                    // Format the result to ensure two digits for hours, minutes, and seconds
                                                                                    const formattedDays = days.toString().padStart(2, '0');
                                                                                    const formattedHours = hours.toString().padStart(2, '0');
                                                                                    const formattedMinutes = minutes.toString().padStart(2, '0');
                                                                                    const formattedSeconds = secs.toString().padStart(2, '0');

                                                                                    // Construct the formatted duration string
                                                                                    return `${formattedDays}:${formattedHours}:${formattedMinutes}:${formattedSeconds}`;
                                                                                }
            function formatWanTime(sessTime, wanStatus)
            {
                if('up' != wanStatus)
						{
							sessTime=0;
						}
                        var days = parseInt(sessTime/60/60/24);
                        var hours = parseInt(sessTime/60/60%24);
                        var minutes = parseInt(sessTime/60%60);
                        var seconds = parseInt(sessTime%60)

                        if (isNaN(days))
                        {
                            days = 0;
                        }
                        if (isNaN(hours))
                        {
                            hours = 0;
                        }
                        if (isNaN(minutes))
                        {
                            minutes = 0;
                        }
                        if (isNaN(seconds))
                        {
                            seconds = 0;
                        }
						if (seconds < 0)
						{
							seconds = 0;
						}

                        if(hours < 10)
                            var code_h = "0" + hours;
                        else
                            var code_h = hours;

                        if(minutes < 10)
                            var code_m = "0" + minutes;
                        else
                            var code_m = minutes;

                        if(seconds < 10)
                            var code_s = "0" + seconds;
                        else
                            var code_s = seconds;

                        var code = code_h + " : " + code_m + " : " + code_s;
                        var code_d =  days + " Days " + code;
                        if (days == 0)
                            return code;
                        else
                            return code_d;
					}
</script>
                                    <div class="col-xl-6 col-md-6 mb-4">

                                        <div class="card " style="height:400px">
                                            <div class="card-header" style="padding-bottom:18px">
                                                <span>
                                                    <img src="/Dashboard/images/internet.png"
                                                        style="width:45px;padding-bottom:5px;">
                                                </span>
                                                <span><b style="font-size: 18px;"><span
                                                            style="vertical-align:middle;">
                                                            WAN
                                                            Information</b></span></span>
                                                <hr>
                                                <span>
                                                    you can query the connection and line status of the WAN port.
                                                </span>
                                            </div>
                                            <div class="card-body table-bordered table-responsive" style="height:1300px; overflow:hidden">
                                                <a style="text-decoration: none;" href="" data-toggle="modal"
                                                    data-target="#HERO">
                                                    <table class="table table-striped ">
                                                        <tbody>
                                                            <Script language=javascript>
                                                                let ipindex = 0;
                                                                if (pvc_counts < 1) {
                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">Connection <br>Name </th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">Status</th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">IP <br>Address </th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">NetMask </th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');


                                                                }
                                                                while (Wan_Actives[ipindex] != "N/A" && ipindex < pvc_counts) {
                                                                    
                                                                    if (curUserName == sptUserName){
                                                                            document.write('<tr>');
                                                                                document.write('<th style="width:25%;">Connection <br>Name </th>');
                                                                                document.write('<td>' + Wan_WanName[ipindex] + '</td>');
                                                                            document.write('</tr>');
                                                                        
                                                                        }
								                                    if(Wan_IPVERSION[ipindex] == "IPv4" || Wan_IPVERSION[ipindex] == "IPv4/IPv6")
                                                                    {
                                                                        if(curUserName != sptUserName)
                                                                        {
                                                                            var tr069 = Wan_WanName[ipindex]
                                                                            console.log(tr069)
                                                                            var reg = RegExp(/TR069/);
                                                                            var reg1 =  RegExp(/VOICE/);
                                                                            
                                                                                if(tr069.match(reg) || tr069.match(reg1))
                                                                                {
                                                                                    continue;
                                                                                }

                                                                                if('PPPoE' != Wan_ENCAP[ipindex])
                                                                                {
                                                                                    continue;
                                                                                }
                                                                        }
                                                                        <% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
                                                                        if(EthernetState == "up"){
                                                                        <% else %>
                                                                        if(PonInfo.PonState == "up"){
                                                                        <% end if %>
                                                                            document.write('<tr>');
                                                                                document.write('<th style="width:25%;">Status</th>');
                                                                                if ('up' == Wan_Status4[ipindex])
                                                                                
                                                                                    document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectedText","s")%>&nbsp;</td>');
                                                                                <% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
                                                                                else if(Wan_Actives[ipindex]=="Yes"
                                                                                            && ( Wan_WanName[ipindex].indexOf('_B_') >= 0
                                                                                                            ||'PPPoE' != Wan_ENCAP[ipindex]
                                                                                                            || ('PPPoE' == Wan_ENCAP[ipindex] && ('Connect_Keep_Alive' == Wan_Connection[ipindex] || '-' == Wan_Connection[ipindex]))
                                                                                                            )
                                                                                                )
                                                                                <% else %>
                                                                                else if(Wan_Actives[ipindex]=="Yes")	
                                                                                <% end if %>
                                                                                    document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>&nbsp;</td>');
                                                                                else
                                                                                    document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
                                                                                    
                                                                                document.write('</tr>');

                                                                                document.write('<tr>');
                                                                                    document.write('<th style="width:25%;">IP <br>Address </th>');
                                                                                
                                                                                    document.write('<td>' + Wan_IP4[ipindex] + '&nbsp;</td>');

                                                                                document.write('</tr>');

                                                                                document.write('<tr>');
                                                                                    document.write('<th style="width:25%;">NetMask </th>');
                                                                                    
                                                                                    document.write('<td>' + Wan_NetMask4[ipindex] + '&nbsp;</td>');
                                                                                document.write('</tr>');

                                                                                break;
                                                                        }
                                                                        else
                                                                        {   
                                                                            document.write('<tr>');
                                                                                document.write('<th style="width:25%;">Status</th>');
                                                                                document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
                                                                            document.write('</tr>');

                                                                            document.write('<tr>');
                                                                                document.write('<th style="width:25%;">IP <br>Address </th>');
                                                                                document.write('<td>' + '-' + '&nbsp;</td>');
                                                                            document.write('</tr>');

                                                                            document.write('<tr>');
                                                                                document.write('<th style="width:25%;">NetMask </th>');
                                                                                document.write('<td>' + '-' + '&nbsp;</td>');
                                                                            document.write('</tr>');


                                                                            break;
                                                                        }
                                                                    } else if (Wan_IPVERSION[ipindex] == "IPV6") {
                                                                        var isIPGWUp = 0;
                                                                        if ( 0 != Wan_IP6[ipindex].length && '-' != Wan_IP6[ipindex] && 0 != Wan_GateWay6[ipindex].length && '-' != Wan_GateWay6[ipindex] )
                                                                            isIPGWUp = 1;
                                                                        if(Wan_WanName[ipindex].indexOf('_B_') >= 0)
                                                                            isIPGWUp = 1;								
                                                                        <% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
                                                                        if(EthernetState == "up"){
                                                                        <% else %>
                                                                        if(PonInfo.PonState == "up"){
                                                                        <% end if %>
                                                                        document.write('<tr>');
                                                                            document.write('<th style="width:25%;">Status</th>');
                                                                        if ('up' == Wan_Status6[ipindex] && (1 == isIPGWUp))
                                                                            document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectedText","s")%>&nbsp;</td>');
                                                                        <% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
                                                                        else if(Wan_Actives[ipindex]=="Yes"
                                                                                && ( Wan_WanName[ipindex].indexOf('_B_') >= 0
                                                                                        ||'PPPoE' != Wan_ENCAP[ipindex]
                                                                                        || ('PPPoE' == Wan_ENCAP[ipindex] && ('Connect_Keep_Alive' == Wan_Connection[ipindex] || '-' == Wan_Connection[ipindex]))
                                                                                        )
                                                                                    )
                                                                        <% else %>
                                                                        else if(Wan_Actives[ipindex]=="Yes")	
                                                                        <% end if %>
                                                                            document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>&nbsp;</td>');
                                                                        else
                                                                            document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
                                                                        
                                                                        document.write('</tr>');
                                                                    
                                                                        document.write('<tr>');
                                                                            document.write('<th style="width:25%;">IPv6 <br>Address </th>');
                                                                            document.write('<td>' + Wan_IP6[ipindex] + '&nbsp;</td>');
                                                                        document.write('</tr>');

                                                                        document.write('<tr>');
                                                                            document.write('<th style="width:25%;">Get <br>Prefix </th>');
                                                                            document.write('<td>' + Wan_PD6[ipindex] + '&nbsp;</td>');
                                                                        document.write('</tr>');

                                                                        break;
                                                                }
                                                                else
                                                                {
                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">Status</th>');
                                                                        document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">IPv6 <br>Address </th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    document.write('<tr>');
                                                                        document.write('<th style="width:25%;">Get <br>Prefix </th>');
                                                                        document.write('<td>' + '-' + '&nbsp;</td>');
                                                                    document.write('</tr>');

                                                                    break;

                                                                }
                                                            }
                                                            ipindex++;
                                                        }
                                                            </Script>
                                                        </tbody>
                                                    </table>
                                                </a>
                                                <button class="btn orange_btn" href="" data-toggle="modal"
                                                    data-target="#HERO">View More
                                                </button>
                                                <div class="modal fade" id="HERO" role="dialog">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span>
                                                                    <img src="/Dashboard/images/internet.png"
                                                                        style="width:45px;padding-bottom:5px;">
                                                                </span>
                                                                <h2 class="modal-title"><span
                                                                        style="vertical-align:middle;">&nbsp;WAN
                                                                        Information</h2></span>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal">&times;</button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>On this page, you can query the connection and line
                                                                    status of the WAN port.</p>
                                                                <p>
                                                                    <b>IPv4 Information(Click the form for details)</b>
                                                                </p>

                                                                
                                                                    <table class="table table-striped">
                                                                        <thead class="bg-dark text-white">
                                                                            <tr>
                                                                                <th>WAN Name </th>
                                                                                <th>Status </th>
                                                                                <th>IP Address</th>
                                                                                <th>VLAN/Priority </th>
                                                                                <th>Connect </th>

                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        
                                                                            <SCRIPT language=JavaScript type=text/javascript>
						                                
                                                                                  function setIP4ModalContent(wanIndex) {
                                                                                    
                                                                                    //Select all rows in the tbody
                                                                                    const rows = document.querySelectorAll('#myModal2 .modal-body tbody tr');
                                                                                    
                                                                                    //Function to set content for a specific row
                                                                                    function setRowContent(rowIndex, value) {
                                                                                        const row = rows[rowIndex];
                                                                                        if (row) {
                                                                                            const tdElement = row.querySelector('td');
                                                                                            if (tdElement) {
                                                                                                tdElement.innerHTML = value || '--';
                                                                                            } else {
                                                                                                console.log(`No td found in row ${rowIndex}`);
                                                                                            }
                                                                                        } else {
                                                                                            console.log(`Row ${rowIndex} not found`);
                                                                                        }
                                                                                    }
                                                                                   
                                                                                    // Populate the modal with data
                                                                                    if (curUserName == sptUserName) {
                                                                                        setRowContent(0, Wan_WanName[wanIndex]);
                                                                                    }
                                                                                    setRowContent(1, Wan_MAC[wanIndex]);
                                                                                    setRowContent(2, Wan_VidPRI[wanIndex]);
                                                                                    setRowContent(3, Wan_ENCAP[wanIndex]);
                                                                                    setRowContent(4, Wan_EnNAT[wanIndex]);

                                                                                    <% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
                                                                                    if(EthernetState == "up"){
                                                                                    <% else %>
                                                                                    if(PonInfo.PonState == "up"){
                                                                                    <% end if %>
                                                                                        setRowContent(5, Wan_IP4[wanIndex]);  // Assuming you have this data
                                                                                        setRowContent(6, Wan_NetMask4[wanIndex]); // Assuming you have this data
                                                                                        setRowContent(7, Wan_GateWay4[wanIndex]);    // Assuming you have this data
                                                                                        setRowContent(8, Wan_DNS4[wanIndex]); // Assuming you have this data
                                                                                        setRowContent(9, Wan_SecDNS4[wanIndex]); // Assuming you have this data
                                                                                        if( Wan_ENCAP[wanIndex] != "PPPoE")
                                                                                        {
                                                                                            if (curUserName == sptUserName){
                                                                                            setRowContent(10, '<INPUT id=btnReleaseIP name=btnReleaseIP onclick="renewrelease(2, '+ wanIndex +')" type=button value=ReleaseIP>');
                                                                                            setRowContent(11, '<INPUT id=btnRenewIP name=btnRenewIP onclick="renewrelease(1, '+ wanIndex +')" type=button value=RenewIP></td>');
                                                                                            } else {
                                                                                                setRowContent(10, '-');
                                                                                                setRowContent(11, '-');
                                                                                            }
                                                                                        } else {
                                                                                            setRowContent(10, '-');
                                                                                            setRowContent(11, '-');
                                                                                        }
                                                                                    } else {
                                                                                       setRowContent(5, '-');
                                                                                       setRowContent(6, '-');
                                                                                       setRowContent(7, '-');
                                                                                       setRowContent(8, '-');
                                                                                       setRowContent(9, '-');
                                                                                       setRowContent(10, '-');
                                                                                       setRowContent(11, '-'); 
                                                                                    }    
                                                                                    
                                                                                    setRowContent(12, Wan_NTPServer);
                                                                                    setRowContent(13, Wan_TimeZone + ", " + '<%tcWebApi_get("String_Entry","Time49Text","s")%>');

                                                                                    let onlineDuration = formatWanTime(onlineSecond[wanIndex], Wan_Status4[wanIndex]);
                                                                                    setRowContent(14, onlineDuration);
                                                                                }
                                                                                for (let arrayIndex = 0; arrayIndex < pvc_counts; arrayIndex++) {
                                                                            
                                                                                    if (Wan_Actives[arrayIndex] != "N/A") 
                                                                                    {
                                                                                        if (Wan_IPVERSION[arrayIndex] == "IPv4" || Wan_IPVERSION[arrayIndex] == "IPv4/IPv6") 
                                                                                        {
                                                                                            if(curUserName != sptUserName)
                                                                                            {
                                                                                                var tr069 = Wan_WanName[arrayIndex]
                                                                                                console.log(tr069)
                                                                                                var reg = RegExp(/TR069/);
                                                                                                var reg1 =  RegExp(/VOICE/);
                                                                                                
                                                                                                    if(tr069.match(reg) || tr069.match(reg1))
                                                                                                    {
                                                                                                        continue;
                                                                                                    }

                                                                                                    if('PPPoE' != Wan_ENCAP[arrayIndex])
                                                                                                    {
                                                                                                        continue;
                                                                                                    }
                                                                                            }
                                                                                            if (curUserName == sptUserName) {
                                                                                                document.write('<tr data-toggle="modal" data-target="#myModal2" onclick="setIP4ModalContent(' + arrayIndex + ')">');
                                                                                                document.write('<td>' + Wan_WanName[arrayIndex] +'</td>');
                                                                                            }

                                                                                                                                                                    <% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
                                                                                                        if(EthernetState == "up"){
                                                                        <% else %>
                                                                                                            if(PonInfo.PonState == "up"){
                                                                        <% end if %>
                                                                                                                if ('up' == Wan_Status4[arrayIndex])
                                                                                                                        document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectedText","s")%>&nbsp;</td>');
                                                                        <% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
                                                                                                                else if(Wan_Actives[arrayIndex]=="Yes"
                                                                                                                            && ( Wan_WanName[arrayIndex].indexOf('_B_') >= 0
                                                                                                                                            ||'PPPoE' != Wan_ENCAP[arrayIndex]
                                                                                                                                            || ('PPPoE' == Wan_ENCAP[arrayIndex] && ('Connect_Keep_Alive' == Wan_Connection[arrayIndex] || '-' == Wan_Connection[arrayIndex]))
                                                                                                                                            )
                                                                                                                                )
                                                                        <% else %>
                                                                                                                else if(Wan_Actives[arrayIndex]=="Yes")	
                                                                        <% end if %>
                                                                                                                    document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>&nbsp;</td>');
                                                                                                                else
                                                                                                                    document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>'); 
                                                                    
                                                                                            document.write('<td>' + Wan_IP4[arrayIndex] +'</td>');
                                                                                            

                                                                                        } 
                                                                                        else 
                                                                                        {
                                                                                            document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
										                                                    document.write('<td>' + '-' + '&nbsp;</td>');
                                                                                        }
                                                                                            document.write('<td>' + Wan_VidPRI[arrayIndex] +'</td>');
                                                                                            if ( 'Connect_Manually' == Wan_Connection[arrayIndex] )
                                                                                            {
                                                                                                document.write('<td> <%tcWebApi_get("String_Entry","NetInfoManualText","s")%> </td>');
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                document.write('<td> <%tcWebApi_get("String_Entry","NetInfoAutomaticText","s")%> </td>');
                                                                                            }
                                                                                            document.write('</tr>');
                                                                                        }
                                                                                    }
                                                                                }
                                                                                
					                                                        </SCRIPT>
                                                                        </tbody>
                                                                    </table>

                                                                <p><b>IPv6 Information(Click the form for details)</b>
                                                                </p>
                                                                <p style="text-decoration: none;">
                                                                    <table class="table table-striped">
                                                                        <thead class="bg-dark text-white">
                                                                            <tr>
                                                                                <th>WAN Name </th>
                                                                                <th>Status </th>
                                                                                <th>IP Address</th>
                                                                                <th>VLAN/Priority </th>
                                                                                <th>Connect </th>

                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                            <SCRIPT language=JavaScript type=text/javascript>

                                                                                function setIP6ModalContent(wanIndex) {
                                                                                    
                                                                                    //Select all rows in the tbody
                                                                                    const rows = document.querySelectorAll('#myModal1 .modal-body tbody tr');
                                                                                    
                                                                                    //Function to set content for a specific row
                                                                                    function setRowContent(rowIndex, value) {
                                                                                        const row = rows[rowIndex];
                                                                                        if (row) {
                                                                                            const tdElement = row.querySelector('td');
                                                                                            if (tdElement) {
                                                                                                tdElement.innerHTML = value || '--';
                                                                                            } else {
                                                                                                console.log(`No td found in row ${rowIndex}`);
                                                                                            }
                                                                                        } else {
                                                                                            console.log(`Row ${rowIndex} not found`);
                                                                                        }
                                                                                    }
                                                                                   
                                                                                    // Populate the modal with data
                                                                                    if (curUserName == sptUserName) {
                                                                                        setRowContent(0, Wan_WanName[wanIndex]);
                                                                                    }
                                                                                    setRowContent(1, Wan_MAC[wanIndex]);
                                                                                    setRowContent(2, Wan_VidPRI[wanIndex]);
                                                                                    setRowContent(3, Wan_ENCAP[wanIndex]);
                                                                                    setRowContent(4, Wan_EnNAT[wanIndex]);

                                                                                    <% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
                                                                                    if(EthernetState == "up"){
                                                                                    <% else %>
                                                                                    if(PonInfo.PonState == "up"){
                                                                                    <% end if %>
                                                                                        setRowContent(5, Wan_IP6[wanIndex]);  // Assuming you have this data
                                                                                        setRowContent(6, Wan_PD6[wanIndex]); // Assuming you have this data
                                                                                        setRowContent(7, Wan_GateWay6[wanIndex]);    // Assuming you have this data
                                                                                        setRowContent(8, Wan_DNS6[wanIndex]); // Assuming you have this data
                                                                                        setRowContent(9, Wan_SecDNS6[wanIndex]); // Assuming you have this data
                                                                                        if('PPPoE' != Wan_ENCAP[wanIndex])
                                                                                        {
                                                                                            if (curUserName == sptUserName){
                                                                                            setRowContent(10, '<INPUT id=btnReleaseIP name=btnReleaseIP onclick="renewrelease(4, '+ wanIndex +')" type=button value=ReleaseIP>');
                                                                                            setRowContent(11, '<INPUT id=btnRenewIP name=btnRenewIP onclick="renewrelease(3, '+ wanIndex +')" type=button value=RenewIP></td>');
                                                                                            }
                                                                                        }
                                                                                    } else {
                                                                                       setRowContent(5, '-');
                                                                                       setRowContent(6, '-');
                                                                                       setRowContent(7, '-');
                                                                                       setRowContent(8, '-');
                                                                                       setRowContent(9, '-'); 
                                                                                       setRowContent(10, '-');
                                                                                       setRowContent(11, '-'); 
                                                                                    }    
                                                                                    
                                                                                    setRowContent(12, Wan_NTPServer);
                                                                                    setRowContent(13, Wan_TimeZone + ", " + '<%tcWebApi_get("String_Entry","Time49Text","s")%>');
                                                                                }
						                                
                                                                                for (let arrayIndex = 0; arrayIndex < pvc_counts; arrayIndex++) {
                                                                            
                                                                                    if (Wan_Actives[arrayIndex] != "N/A") 
                                                                                    {
                                                                                        if (Wan_IPVERSION[arrayIndex] == "IPv6" || Wan_IPVERSION[arrayIndex] == "IPv4/IPv6") 
                                                                                        {

                                                                                            if (curUserName == sptUserName) {
                                                                                                document.write('<tr data-toggle="modal" data-target="#myModal1" onclick="setIP6ModalContent(' + arrayIndex + ')">');
                                                                                                document.write('<td>' + Wan_WanName[arrayIndex] +'</td>');
                                                                                            }
                                                                                           var isIPGWUp = 0;
											if ( 0 != Wan_IP6[arrayIndex].length && '-' != Wan_IP6[arrayIndex] && 0 != Wan_GateWay6[arrayIndex].length && '-' != Wan_GateWay6[arrayIndex] )
												isIPGWUp = 1;
											if(Wan_WanName[arrayIndex].indexOf('_B_') >= 0)
												isIPGWUp = 1;								
											<% if TCWebApi_get("Wan_Common","TransMode","h" ) = "Ethernet" then %>
											if(EthernetState == "up"){
											<% else %>
											if(PonInfo.PonState == "up"){
											<% end if %>
											if ('up' == Wan_Status6[arrayIndex] && (1 == isIPGWUp))
												document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectedText","s")%>&nbsp;</td>');
											<% if TCWebApi_get("WebCustom_Entry","isPPPoEOnDemandSupported","h" ) = "Yes" then %>
											else if(Wan_Actives[arrayIndex]=="Yes"
													&& ( Wan_WanName[arrayIndex].indexOf('_B_') >= 0
															||'PPPoE' != Wan_ENCAP[arrayIndex]
															|| ('PPPoE' == Wan_ENCAP[arrayIndex] && ('Connect_Keep_Alive' == Wan_Connection[arrayIndex] || '-' == Wan_Connection[arrayIndex]))
															)
														)
<% else %>
										else if(Wan_Actives[arrayIndex]=="Yes")	
<% end if %>
											document.write('<td><%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>&nbsp;</td>');
										else
											document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
                                                                    
                                                                                            document.write('<td>' + Wan_IP6[arrayIndex] +'</td>');
                                                                                            

                                                                                        } 
                                                                                        else 
                                                                                        {
                                                                                            document.write('<td><%tcWebApi_get("String_Entry","NetInfoUnconnectedText","s")%>&nbsp;</td>');
										                                                    document.write('<td>' + '-' + '&nbsp;</td>');
                                                                                        }
                                                                                            document.write('<td>' + Wan_VidPRI[arrayIndex] +'</td>');
                                                                                            if ( 'Connect_Manually' == Wan_Connection[arrayIndex] )
                                                                                            {
                                                                                                document.write('<td> <%tcWebApi_get("String_Entry","NetInfoManualText","s")%> </td>');
                                                                                            }
                                                                                            else
                                                                                            {
                                                                                                document.write('<td> <%tcWebApi_get("String_Entry","NetInfoAutomaticText","s")%> </td>');
                                                                                            }
                                                                                            document.write('</tr>');
                                                                                        }
                                                                                    }
                                                                                }
                                                                                
					                                                        </SCRIPT>
                                                                        </tbody>
                                                                    </table>
                                                                </p>
                                                            </div>


                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="modal fade" id="myModal2" role="dialog">
                                                <div class="modal-dialog modal-lg">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <span>
                                                                <img src="/Dashboard/images/wanip.png"
                                                                    style="width:45px;padding-bottom:5px;">
                                                            </span>
                                                            <h2 class="modal-title"><span
                                                                    style="vertical-align:middle;">&nbsp;IPv4
                                                                    Information</h2></span>
                                                            <button type="button" class="close"
                                                                data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <table class="table  table-bordered table-striped">
                                                                <tbody>
                                                                     <tr>
                                                                        <th>Connection Name</th>
                                                                        <td>
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th style="width: 40%">MAC Address </th>
                                                                        <td> 
                                                                          
                                                                    </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>VLAN/Priority</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Way of Getting IP</th>
                                                                        <td> </td>
                                                                    </tr>
                                    
                                                                    <tr>
                                                                        <th>NAT</th>
                                                                        <td>
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>IP Address</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <th>Subnet Mask</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Gateway</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Primary DNS</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Secondary DNS </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Release IP </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <th>Renew IP </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                            
                                                                    <tr>
                                                                        <th>NTP Server </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Time Zone Info </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Online Duration (dd:hh:mm:ss):</th>
                                                                        <td>
                                                                              
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn grey_btn"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>


                                            <div class="modal fade" id="myModal1" role="dialog">
                                                <div class="modal-dialog modal-lg">

                                                    <!-- Modal content-->
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <span>
                                                                <img src="/Dashboard/images/wanip.png"
                                                                    style="width:45px;padding-bottom:5px;">
                                                            </span>
                                                            <h2 class="modal-title"><span
                                                                    style="vertical-align:middle;">&nbsp;IPv6
                                                                    Information</h2></span>
                                                            <button type="button" class="close"
                                                                data-dismiss="modal">&times;</button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <table class="table  table-bordered table-striped">
                                                                <tbody>
                                                                     <tr>
                                                                        <th>Connection Name </th>
                                                                        <td> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th style="width: 40%">MAC Address </th>
                                                                        <td></td>

                                                                    </tr>
                                                                    <tr>
                                                                        <th>VLAN/Priority </th>
                                                                        <td> </td>
                                                                    </tr>

                                                                     <tr>
                                                                        <th>Way of Getting IPv6</th>
                                                                        <td></td>
                                                                    </tr>
                                                                     <tr>
                                                                        <th>NAT</th>
                                                                        <td>
                                                                            
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <th>IPv6 Address</th>
                                                                        <td>
                                                                        
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Get Prefix</th>
                                                                        <td> </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>IPv6 DefaultGateway</th>
                                                                        <td>
                                                                           
                                                                        </td>
                                                                    </tr>
                                                        
                                                                    <tr>
                                                                        <th>IPv6 Primary DNS</th>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>IPv6 Secondary DNS</th>
                                                                        <td></td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Release IP </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                     <tr>
                                                                        <th>Renew IP </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>NTP Server </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <th>Time Zone Info </th>
                                                                        <td>
                                                                             
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <button type="button" class="btn grey_btn"
                                                                data-dismiss="modal">Close</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-xl-6 col-md-6 mb-4 ">

                                        <div class="card "
                                            style="height:400px; margin-top:-570px; border: 1px solid rgba(0, 0, 0, .125);">
                                            <div class="card-header ">
                                                <span>
                                                    <img src="/Dashboard/images/link_icon.png"
                                                        style="width:45px;padding-bottom:5px;">
                                                </span>
                                                <span> <b style="font-size:18px;"><span
                                                            style="vertical-align:middle;">
                                                            PON Optical
                                                            Information</b></span></span>
                                                <hr>
                                                On this page, you can query the status of the optical module.
                                            </div>
                                            <div class="card-body table-bordered table-responsive ">
                                                <a style="text-decoration: none;" href="" data-toggle="modal"
                                                    data-target="#HERO02">

                                                    <table class="table table-striped ">
                                                        <tbody>
                                                        <tr>
                                                                <th>Optical Information</th>
                                                                <th>Current Value</th>
                                                                <th>Reference Value</th>
                                                            </tr>
                                                            <tr>
                                                                            <th style="width: 30%"> PON Link Connection
                                                                                Status</th>
                                                                            <td>
                                                                                 <Script language=JavaScript type=text/javascript>
                                                                                 console.log(PonInfo)
												                                    if( PonInfo.PonState == "up")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOnlineText","s")%>");
												                                    else if ( PonInfo.PonState == "connecting")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>");
												                                    else
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOfflineText","s")%>");
												                                </Script>
                                                                            </td>
                                                                            <td>
                                                                                Online / Offline
                                                                            </td>

                                                                        </tr>
                                                                        
                                                            <tr>
                                                                <th>RX Optical Power</th>
                                                                <td>
                                                                             <SCRIPT language=javascript>
                                                                             document.write(PonInfo.RecvPower)
                                                        
                                                                    </SCRIPT>   dBm </td>

                                                                <td> -27 to -7 dBm</td>
                                                            </tr>

                                                              <tr>
                                                                <th>TX Optical Power </th>
                                                                 <td>
                                                                             <SCRIPT language=javascript>
                                                                             document.write(PonInfo.SendPower)
                                                        
                                                                    </SCRIPT>   dBm </td>
                                                                <td> 0.5 to 5 dBm</td>
                                                            </tr>



                                                        </tbody>
                                                    </table>
                                                    <button class="btn orange_btn" href="" data-toggle="modal"
                                                        data-target="#HERO02">View More</button>
                                                </a>
                                                <div class="modal fade" id="HERO02" role="dialog">
                                                    <div class="modal-dialog modal-lg">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <span>
                                                                    <img src="/Dashboard/images/link_icon.png"
                                                                        style="width:45px;padding-bottom:5px;">
                                                                </span>
                                                                <h2 class="modal-title" style="display: inline;"><span
                                                                        style="vertical-align:middle;">PON Optical
                                                                        Information</span></h2>
                                                                <button type="button" class="close"
                                                                    data-dismiss="modal">&times;</button>
                                                            </div>

                                                            <div class="modal-body">
                                                                <p>On this page, you can query the status of the optical
                                                                    module.</p>
                                                                <table class="table table-striped ">

                                                                    <tbody>
                                                                        <tr>
                                                                            <th colspan="3" style="color: #f58220">
                                                                                Network Link Connection Information</th>
                                                                        </tr>

                                                                        <tr>
                                                                            <th style="width: 30%"> PON Link Connection
                                                                                Status</th>
                                                                            <td colspan="2">
                                                                                 <Script language=JavaScript type=text/javascript>
												                                    if( PonInfo.PonState == "up")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOnlineText","s")%>");
												                                    else if ( PonInfo.PonState == "connecting")
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoConnectingText","s")%>");
												                                    else
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOfflineText","s")%>");
												                                </Script>
                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <th>PON Mode </th>
                                                                            <td colspan="2">
                                                                                <Script language=JavaScript type=text/javascript>
                                                                                    if(( PonInfo.PonState == "up") || ( PonInfo.PonState == "connecting")) {
                                                                                        if (PonInfo.phyStatus = "gpon_phy_up") {
													                                        document.write("<%tcWebApi_get("String_Entry","NetInfoPONGMODEText","s")%>");
                                                                                        } else {    
                                                                                            document.write("<%tcWebApi_get("String_Entry","NetInfoPONEMODEText","s")%>");
                                                                                        }
                                                                                    }    
												                                    else {
													                                    document.write("<%tcWebApi_get("String_Entry","NetInfoOfflineText","s")%>");
                                                                                    }
												                                </Script>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>FEC Status</th>
                                                                            <td colspan="2">
                                                                                 <SCRIPT language=JavaScript type=text/javascript>

                        if (PonInfo.fecEnable)
                        	document.write(fecEnable);
                        else
                        {
													if(PonInfo.fecEnable == "disabled")
														document.write("<%tcWebApi_get("String_Entry","NetInfoDisable11Text","s")%>");
													else
														document.write("<%tcWebApi_get("String_Entry","NetInfoEnable11Text","s")%>");
												}
											</SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Encryption Mode </th>
                                                                            <td colspan="2">
                                                                                <SCRIPT language=JavaScript type=text/javascript>
                                                                                        if ( '1' == PonInfo.LinkSta )
                                                                                        {
                                                                                            PonInfo.DispGemPortState();
                                                                                        }
                                                                                        else
                                                                                        {
                                                                                            if ( '-' == PonInfo.EncryptEnable )
                                                                                                document.write(PonInfo.EncryptEnable);
                                                                                            else
                                                                                            {
                                                                                                                        if(PonInfo.EncryptEnable == "disabled")
                                                                                                                            document.write("<%tcWebApi_get("String_Entry","NetInfoDisableText","s")%>");
                                                                                                                        else
                                                                                                                            document.write("<%tcWebApi_get("String_Entry","NetInfoEnableText","s")%>");
                                                                                                                    }
                                                                                        }
                                                                                </SCRIPT>
                                                                            </td>

                                                                        </tr>
                                                                        <tr>
                                                                            <th>Alarm Information
                                                                            </th>
                                                                            <td colspan="2">
                                                                                 <SCRIPT language=JavaScript type=text/javascript>
                                                                                 if(PonInfo.WarnInfo == "disconnect")
                                                                                                            document.write("<%tcWebApi_get("String_Entry","NetInfoConIntText","s")%>");
                                                                                        else
                                                                                            document.write("<%tcWebApi_get("String_Entry","NetInfoNAlaText","s")%>");
                                                                                </SCRIPT>
                                                                            </td>

                                                                        </tr>

                                                                        <tr>
                                                                            <th style="color: #f58220" colspan="3">Link
                                                                                Preformance Statistics</th>

                                                                        </tr>
                                                                        <tr>

                                                                            <th>Number Of Packets PON Port Sent </th>
                                                                            <td colspan="2">
                                                                                <SCRIPT language=javascript>
                                                                                    document.write(PonInfo.PonSendPkt);
                                                                                </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Number Of Packets PON Port Received</th>
                                                                            <td colspan="2">
                                                                                 <SCRIPT language=javascript>
                                                                                    document.write(PonInfo.PonRecvPkt);
                                                                                </SCRIPT>
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th style="color: #f58220" colspan="3">Light
                                                                                Module Information</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Optical Information</th>
                                                                            <th>Current Value</th>
                                                                            <th>Reference Value</th>
                                                                        </tr>
                                                                         <tr>
                                                                            <th>RX Optical Power </th>
                                                                            <td> 
                                                                            <SCRIPT language=javascript>
                                                                             document.write(PonInfo.RecvPower)
                                                        
                                                                            </SCRIPT> dBm </td>
                                                                            <td> -27 to -7 dBm </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>TX Optical Power</th>
                                                                            <td> <SCRIPT language=javascript>
                                                                             document.write(PonInfo.SendPower)
                                                        
                                                                    </SCRIPT> dBm</td>
                                                                            <td> 0.5 to 5 dBm</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Working Voltage </th>
                                                                            <td> 
                                                                             <SCRIPT language=javascript>
                                                                             
                                                                    

                                                                        document.write(PonInfo.WorkVoltage);
                                                                    </SCRIPT>   mV</td>
                                                                            <td> 3100 to 3500 mV </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Bias Current </th>
                                                                            <td> 
                                                                             <SCRIPT language=javascript>
                                                                        document.write(PonInfo.WorkElectric);
                                                                    </SCRIPT>   mA </td>
                                                                            <td> 0 to 90 mA </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Working Temperature </th>
                                                                            <td> 
                                                                             <SCRIPT language=javascript>
                                                                        document.write(PonInfo.WorkTemperature);
                                                                    </SCRIPT>   </td>
                                                                            <td> -10 to +85 ? </td>
                                                                        </tr>

                                                                    </tbody>
                                                                </table>

                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn grey_btn"
                                                                    data-dismiss="modal">Close
                                                                </button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-6 col-md-6 mb-4">
                                        <div class="card" style="margin-top:-570px; border:2px solid rgba(0, 0, 0, .125); height:399px">
                                            <div class="card-header" style="height:110px">
                                                <span>
                                                    <img src="/Dashboard/images/voip.png" style="width:45px;padding-bottom:5px;">
                                                </span>
                                                <span><b style="font-size:18px;"><span
                                                            style="vertical-align:middle;">Voice Info</b></span></span>
                                                <hr>
                                                Status information of voice users and reset the voice function.
                                            </div>
                                            <Script language=javascript>
                                            <% if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "SIP"  then %>
			                                    function VoipInfoClass()
		{
			this.Reg1Status = '<%if tcWebAPI_get("InfoVoIP_Entry0", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry0", "Status", "s") else asp_Write("") end if %>';
			this.Line1Status = '<%if tcWebApi_get("VoIPSysParam_Entry0", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry0", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
			
			this.Reg2Status = '<%if tcWebAPI_get("InfoVoIP_Entry1", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry1", "Status", "s") else asp_Write("") end if %>';
			this.Line2Status = '<%if tcWebApi_get("VoIPSysParam_Entry1", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry1", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
			
			this.Reg3Status = '<%if tcWebAPI_get("InfoVoIP_Entry2", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry2", "Status", "s") else asp_Write("") end if %>';
			this.Line3Status = '<%if tcWebApi_get("VoIPSysParam_Entry2", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry2", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
			
			this.Reg4Status = '<%if tcWebAPI_get("InfoVoIP_Entry3", "Status", "h") <> "N/A" then tcWebAPI_get("InfoVoIP_Entry3", "Status", "s") else asp_Write("") end if %>';
			this.Line4Status = '<%if tcWebApi_get("VoIPSysParam_Entry3", "SC_LINE_INFO_STATUS", "h") <> "N/A" then tcWebAPI_get("VoIPSysParam_Entry3", "SC_LINE_INFO_STATUS", "s") else asp_Write("") end if %>';
			

			var line1number='<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPDisplayName", "s") else asp_Write("") end if %>';
			if(line1number == ''){
				var tmp='<%if tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
				if(tmp.indexOf('@') >= 0)
					line1number=tmp.substr(0,tmp.indexOf('@'));
				else
					line1number=tmp;
			}
			this.Line1Number = line1number;

			var line2number = '<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPDisplayName", "s") else asp_Write("") end if %>';
			if(line2number == ''){
				var tmp2='<%if tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
				if(tmp2.indexOf('@') >= 0)
					line2number=tmp2.substr(0,tmp2.indexOf('@'));
				else
					line2number=tmp2;
			}
			this.Line2Number = line2number;

			var line3number = '<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry2", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry2", "SIPDisplayName", "s") else asp_Write("") end if %>';
			if(line3number == ''){
				var tmp3='<%if tcWebAPI_get("VoIPBasic_Entry2", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry2", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
				if(tmp3.indexOf('@') >= 0)
					line3number=tmp3.substr(0,tmp3.indexOf('@'));
				else
					line3number=tmp3;
			}
			this.Line3Number = line3number;

			var line4number = '<%if tcWebApi_get("VoIPBasic_Common","SIPProtocol", "h") = "SIP" then asp_Write("") elseif tcWebAPI_get("VoIPBasic_Entry3", "SIPDisplayName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry3", "SIPDisplayName", "s") else asp_Write("") end if %>';
			if(line4number == ''){
				var tmp4='<%if tcWebAPI_get("VoIPBasic_Entry3", "SIPAuthenticationName", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry3", "SIPAuthenticationName", "s") else asp_Write("") end if %>';
				if(tmp4.indexOf('@') >= 0)
					line4number=tmp4.substr(0,tmp4.indexOf('@'));
				else
					line4number=tmp4;
			}
			this.Line4Number = line4number;
			
			this.showRegisterState = showRegisterState;
			this.showVoipNumber = showVoipNumber;
			this.showLineState = showLineState;
		}

		function showRegisterState(port)
		{
			var Status = '';
			var LineEnable='';

			if ( 1 == port ){
				Status = this.Reg1Status;
				LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry0", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry0", "Enable", "s") else asp_Write("") end if %>';
				RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry0", "RegFailReason", "s") %>";

			}
			else if ( 2 == port ){
				Status = this.Reg2Status;
				LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry1", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry1", "Enable", "s") else asp_Write("") end if %>';
				RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry1", "RegFailReason", "s") %>";
			}
			else if ( 3 == port ){
				Status = this.Reg3Status;
				LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry2", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry2", "Enable", "s") else asp_Write("") end if %>';
				RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry2", "RegFailReason", "s") %>";
			}
			else if ( 4 == port ){
				Status = this.Reg3Status;
				LineEnable = '<%if tcWebAPI_get("VoIPBasic_Entry3", "Enable", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Entry3", "Enable", "s") else asp_Write("") end if %>';
				RegFailReason = "<% tcWebAPI_get("InfoVoIP_Entry3", "RegFailReason", "s") %>";
			}
			else
				return;
						if(LineEnable == 'No'){
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP2Text","s")%>');
							return;
						}
						if ( Status == 'Up' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP3Text","s")%>');
						else if ( Status == 'Initializing' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP4Text","s")%>');
						else if ( Status == 'Registering' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP5Text","s")%>');
						else if ( Status == 'Unregistering' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP6Text","s")%>');
						else if ( Status == 'Quiescent' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP7Text","s")%>');
						else if ( Status == 'Disabled' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP2Text","s")%>');
						else if ( Status == 'Error' ){
							switch ( parseInt(RegFailReason) ){
								case 2:
								case 3:
									voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP9Text","s")%>';
									break;
								case 4:
									voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP10Text","s")%>';
									break;
								case 6:
									voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP11Text","s")%>';
									break;
								default:
									voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP12Text","s")%>';
									break;
							}
							document.write(voiptatus);
							}
						else if ( Status == 'Testing' )
							document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP13Text","s")%>');
						else
							document.write('--');
		}

		function showVoipNumber(port)
		{
			var Number = '';
			var DigNum = '';
			var k;
			
			if ( 1 == port )
				Number = this.Line1Number
			else if ( 2 == port )
				Number = this.Line2Number
			else if ( 3 == port )
				Number = this.Line3Number
			else if ( 4 == port )
				Number = this.Line4Number
			else
				return;
			
			k = Number.split('@');
			DigNum = k[0];
			
			document.write(DigNum);
		}

		function showLineState(port)
		{
			var lineStatus = '';
			
			if ( 1 == port ){
				lineStatus = this.Line1Status;
			}
			else if ( 2 == port ){
				lineStatus = this.Line2Status;
			}
			else if ( 3 == port ){
				lineStatus = this.Line3Status;
			}
			else if ( 4 == port ){
				lineStatus = this.Line4Status;
			}
			else
				return;
			if ( lineStatus == 'Idle' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP14Text","s")%>');
			else if ( lineStatus == 'Ringing' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP15Text","s")%>');
			else if ( lineStatus == 'Dialing' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP16Text","s")%>');
			else if ( lineStatus == 'Ringback' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP17Text","s")%>');
			else if ( lineStatus == 'Connect' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP18Text","s")%>');
			else if ( lineStatus == 'Disconnect' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP19Text","s")%>');	
			else
				document.write('--');
		}	
		var VoipInfo = new VoipInfoClass();

	
		function checkLineNum()
		{
			var i, j, k;
			var lineNumber = parseInt(<% tcwebApi_get("VoIPBasic_Common","VoIPLineNumber","s") %>);
			var table = document.getElementById("perLineTablePlaceholder");
			for(i = 0; i < lineNumber; i++)
			{
				var tabletr = table.getElementsByTagName("tr");
				if(lineNumber > 0)
				{
					for(j = 0; j < tabletr.length; j++)
					{
						var tabletd = tabletr[j].getElementsByTagName("td");
						for(k = lineNumber + 1; k < tabletd.length; k++)
						{
							tabletd[k].style.display = "none";
						}

                        tabletd = tabletr[j].getElementsByTagName("th");
						for (k = lineNumber + 1; k < tabletd.length; k++) {
						    tabletd[k].style.display = "none";
						}
					}
				}
			}
		}
		                                    <% end if %>
        </script>


        <Script language=javascript>
            <% if tcWebApi_get("VoIPBasic_Common", "SIPProtocol", "h") = "H.248"  then %>
			    var lineNumber = parseInt(<% tcwebApi_get("VoIPBasic_Common","VoIPLineNumber","s") %>);
		function VoipInfoClass()
		{
			this.Reg1Status = '<%if tcWebAPI_get("VoIPH248_Entry0", "UserServiceState", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry0", "UserServiceState", "s") else asp_Write("") end if %>';
			this.Reg2Status = '<%if tcWebAPI_get("VoIPH248_Entry1", "UserServiceState", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry1", "UserServiceState", "s") else asp_Write("") end if %>';
			this.Reg3Status = '<%if tcWebAPI_get("VoIPH248_Entry2", "UserServiceState", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry2", "UserServiceState", "s") else asp_Write("") end if %>';
			this.Reg4Status = '<%if tcWebAPI_get("VoIPH248_Entry3", "UserServiceState", "h") <> "N/A" then tcWebAPI_get("VoIPH248_Entry3", "UserServiceState", "s") else asp_Write("") end if %>';
			
			this.UserState1 = '<%if tcWebAPI_get("InfoVoIPH248_Entry0", "lineInfoStatus", "h") <> "N/A" then tcWebAPI_get("InfoVoIPH248_Entry0", "lineInfoStatus", "s") else asp_Write("") end if %>';
			this.UserState2 = '<%if tcWebAPI_get("InfoVoIPH248_Entry1", "lineInfoStatus", "h") <> "N/A" then tcWebAPI_get("InfoVoIPH248_Entry1", "lineInfoStatus", "s") else asp_Write("") end if %>';
			this.UserState3 = '<%if tcWebAPI_get("InfoVoIPH248_Entry2", "lineInfoStatus", "h") <> "N/A" then tcWebAPI_get("InfoVoIPH248_Entry2", "lineInfoStatus", "s") else asp_Write("") end if %>';
			this.UserState4 = '<%if tcWebAPI_get("InfoVoIPH248_Entry3", "lineInfoStatus", "h") <> "N/A" then tcWebAPI_get("InfoVoIPH248_Entry3", "lineInfoStatus", "s") else asp_Write("") end if %>';
			this.showRegisterState = showRegisterState;
			this.showUserState = showUserState;
		}

		function showRegisterState(port)
		{
			var Status = '';

			if ( 1 == port ){
			Status = this.Reg1Status;
			RegFailReason = "<% tcWebAPI_get("InfoVoIPH248_Entry0", "RegFailReason", "s") %>";
			}
		
			else if ( 2 == port ){
			Status = this.Reg2Status;
			RegFailReason = "<% tcWebAPI_get("InfoVoIPH248_Entry1", "RegFailReason", "s") %>";
			}
			
			else if ( 3 == port ){
			Status = this.Reg3Status;
			RegFailReason = "<% tcWebAPI_get("InfoVoIPH248_Entry2", "RegFailReason", "s") %>";
			}
			
			else if ( 4 == port ){
			Status = this.Reg4Status;
			RegFailReason = "<% tcWebAPI_get("InfoVoIPH248_Entry3", "RegFailReason", "s") %>";
			}
		
			else
				return;

			if ( Status == '1' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP3Text","s")%>');
			else if ( Status == '3' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP5Text","s")%>');
			else if ( Status == '5' ){
				switch ( parseInt(RegFailReason) ){
					case 2:
					case 3:
						voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP9Text","s")%>';
						break;
					case 4:
						voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP10Text","s")%>';
						break;
					case 6:
						voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP11Text","s")%>';
						break;
					case 7:
						voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP33Text","s")%>';
						break;
					default:
						voiptatus = '<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP34Text","s")%>';
						break;
				}
				document.write(voiptatus);
			}
			else if ( Status == '8' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP35Text","s")%>');
			else
				document.write('--');
			}

		function showUserState(port)
		{
			var Status = "";

			if ( 1 == port )
				Status = this.UserState1;
		
			else if ( 2 == port )
				Status = this.UserState2;

			else if ( 3 == port )
				Status = this.UserState3;
				
			else if ( 4 == port )
				Status = this.UserState4;	

			else
				return;

			if ( Status == "" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP5Text","s")%>');
			else if ( Status == "Idle" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP14Text","s")%>');
			else if ( Status == '3' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP36Text","s")%>');
			else if ( Status == "Dialing" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP16Text","s")%>');
			else if ( Status == "Ringing" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP15Text","s")%>');
			else if ( Status == "Ringback" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP17Text","s")%>');
			else if ( Status == "Connect" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP18Text","s")%>');
			else if ( Status == "Disconnect" )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP19Text","s")%>');
			else if ( Status == '9' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP37Text","s")%>');
			else if ( Status == '10' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP34Text","s")%>');
			else if ( Status == '11' )
				document.write('<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP38Text","s")%>');
			else
				document.write('--');
		}

		var VoipInfo = new VoipInfoClass();
		
		function checkLineNum()
		{
			var i, j, k;
			var lineNumber = parseInt(<% tcwebApi_get("VoIPBasic_Common","VoIPLineNumber","s") %>);
			var table = document.getElementById("perLineTablePlaceholder");
			for(i = 0; i < lineNumber; i++)
				{
					var tabletr = table.getElementsByTagName("tr");
					if(lineNumber > 0)
					{
						for(j = 0; j < tabletr.length; j++)
						{
							var tabletd = tabletr[j].getElementsByTagName("td");
							for(k = lineNumber + 1; k < tabletd.length; k++)
							{
								tabletd[k].style.display = "none";
							}
						}
					}
				}
		}
		    <% end if %>
        </Script>

                                            <div class="card-body">
                                                <a style="text-decoration: none;" href="" data-toggle="modal"
                                                    data-target="#HERO04">
                                                    <table class="table table-bordered table-striped">
                                                        <thead></thead>
                                                        <tbody>
                                                            <tr>
                                                                <th>User Name(Phone Number)</th>
                                                                <td>
                                                                     <SCRIPT language=javascript>
                                                                        document.write('<% tcWebApi_get("VoIPBasic_Entry0","SIPAuthenticationName","s") %>');
                                                                    </SCRIPT>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>Associated POTS Port</th>
                                                                <td>1</td>
                                                            </tr>
                                                            <tr>
                                                                <th>User Status</th>
                                                                <td>
                                                                     
                                                                     <SCRIPT language=javascript>
                                                                        VoipInfo.showRegisterState(1);
                                                                    </SCRIPT>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>Call Status</th>
                                                                <td>
                                                                    <SCRIPT language=javascript>        
                                                                        VoipInfo.showLineState(1);
                                                                    </SCRIPT>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th>Registry Error</th>
                                                                <td>
                                                                     <SCRIPT language=javascript>
                                                                        let regFailReason = '<% tcWebApi_get("InfoVoIP_Entry0","RegFailReason","s") %>';
                                                                        if (parseInt(regFailReason) === 2) {
                                                                            document.write("upstream port disconnected");
                                                                        }
                                                                    </SCRIPT>
                                                                </td>
                                                            </tr>
                                                        </tbody>

                                                    </table>
                                                </a>
                                                <button class="btn orange_btn" href="" data-toggle="modal"
                                                    data-target="#HERO04">View More</button>
                                            </div>

                                        </div>
                                    </div>
</div>
                                    <div class="modal fade" id="HERO04" role="dialog">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <span class="">
                                                        <img src="/Dashboard/images/voip.png" style="width:45px;padding-bottom:5px;">
                                                    </span>
                                                    <h2 class="modal-title" style="display: inline;">
                                                        <span style="vertical-align:middle;">&nbsp;Voice Info
                                                    </h2>
                                                    </span>
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                </div>
                                                <div class="modal-body">
                                                   
                                                    <p>Status information of voice users and reset the voice</p>
                                                    <div class="table-responsive" id="Voip_content" style="display: none;">

                                                          <TABLE id="voipSIP_info" name="voipSIP_info" class="table table-bordered table_text_center">
															<TBODY>
																<TR>
																	<TD >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP21Text","s")%>
																	</TD>
																	<TD>
																		<%if tcWebApi_get("VoIPBasic_Common", "RegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServer", "s") else asp_Write("--") end if %>
																			&nbsp;
																	</TD>
																</TR>

																<TR>
																	<TD >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP22Text","s")%>
																	</TD>
																	<TD>
																		<%if tcWebApi_get("VoIPBasic_Common", "RegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "RegistrarServerPort", "s") else asp_Write("--") end if %>
																			&nbsp;
																	</TD>
																</TR>
																<TR>
																	<TD >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP23Text","s")%>
																	</TD>
																	<TD>
																		<%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServer", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServer", "s") else asp_Write("--") end if %>
																			&nbsp;
																	</TD>
																</TR>
																<TR>
																	<TD >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP24Text","s")%>
																	</TD>
																	<TD>
																		<%if tcWebApi_get("VoIPBasic_Common", "SBRegistrarServerPort", "h") <> "N/A" then tcWebAPI_get("VoIPBasic_Common", "SBRegistrarServerPort", "s") else asp_Write("--") end if %>
																			&nbsp;
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
                                                    </div>
                                                    <div class="table-responsive">
                                                        <TABLE id="perLineTablePlaceholder" class="table table-bordered table_text_center">
															<TBODY>
																<TR>
																	<th  >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP25Text","s")%>
																	</th>
																	<th >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP26Text","s")%>
																	</th>
																	<th >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP27Text","s")%>
																	</th>
																	<th >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP28Text","s")%>
																	</th>
																	<th >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP29Text","s")%>
																	</th>
																</TR>
																<TR>
																	<TD >
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP30Text","s")%>
																	</TD>
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showVoipNumber(1);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showVoipNumber(2);
																		</script>
																	</TD>
																		
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showVoipNumber(3);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showVoipNumber(4);
																		</script>
																	</TD>
																</TR>
																<TR>
																	<TD class=table_title width="20%">
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP31Text","s")%>
																	</TD>
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showRegisterState(1);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showRegisterState(2);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showRegisterState(3);
																		</script>
																	</TD>
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showRegisterState(4);
																		</script>
																		</TD>
																</TR>
																<TR>
																	<TD class=table_title width="20%">
																		<%tcWebApi_get("String_Entry","VoipInfoVoIPSIP32Text","s")%>
																	</TD>
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showLineState(1);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showLineState(2);
																		</script>
																	</TD>

																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showLineState(3);
																		</script>
																	</TD>
																	<TD>
																		<script language=JavaScript type=text/javascript>
																		    VoipInfo.showLineState(4);
																		</script>
																	</TD>
																</TR>
															</TBODY>
														</TABLE>
                                                    </div>
                                                    <Script language=javascript>
                                                            var cur_user = '<%tcWebApi_get("WebCurSet_Entry", "CurrentAccess", "s")%>';
                                                            if (cur_user == "0") {
                                                                setDisplay('Voip_content', 1);
                                                            }
                                                            if (getElById("perLineTablePlaceholder") != null) {
                                                                checkLineNum();
                                                            }
                                                    </Script>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn grey_btn" data-dismiss="modal">Close </button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    </div>
                                    </div>

                                    

                                                    <script language="JavaScript" type="text/javascript">

                                                        function getDateByDuration(duration)
                                                        {
                                                            if ("" == duration)
                                                            {
                                                                return "";
                                                            }

                                                            var arrayDuration = duration.split(' ');
                                                            return arrayDuration[0];
                                                        }

                                                        function translateTimeToSeconds(time)  //time format should be hh:mm:ss
                                                        {
                                                            if ("" == time)
                                                            {
                                                                return 0;
                                                            }

                                                            arrayTime = time.split(':');
                                                            var hour = parseInt(arrayTime[0]);
                                                            var minute = parseInt(arrayTime[1]);
                                                            var second = parseInt(arrayTime[2]);
                                                            var result = second + (minute*60) + (hour*60*60);

                                                            return result;
                                                        }

                                                        function translateSecondsToTime(seconds)
                                                        {
                                                            var hour = parseInt(seconds/60/60);
                                                            var leftSeconds = seconds-(hour*60*60);
                                                            var minute = parseInt(leftSeconds/60);
                                                            leftSeconds = leftSeconds - (minute*60);
                                                            var second = parseInt(leftSeconds);
                                                            var strHour = '' + hour;
                                                            if (strHour.length < 2)
                                                            {
                                                                strHour='0' + strHour;
                                                            }
                                                            var strMinute = '' + minute;
                                                            if (strMinute.length < 2)
                                                            {
                                                                strMinute='0' + strMinute;
                                                            }
                                                            var strSecond = '' + second;
                                                            if (strSecond.length < 2)
                                                            {
                                                                strSecond='0' + strSecond;
                                                            }

                                                            var result = strHour + ':' + strMinute + ':' + strSecond;

                                                            return result;
                                                        }

                                                        function dealList(action, lineNumber)
                                                        {
                                                            var form = $('#ConfigForm');
                                                            $.ajax({
                                                                    url: 'getVoipHistory.json?lineNumber=' + lineNumber + '&action=' + action,
                                                                    type: form.attr("method"),
                                                                    data: form.serialize(),
                                                                    dataType: "text",
                                                                    beforeSend: function () 
                                                                    {
                                                                    },
                                                                    error: function ()
                                                                    {
                                                                    },
                                                                    complete:function ()
                                                                    {
                                                                    },
                                                                    success: function (result)
                                                                    {
                                                                        var res = result.replace('{\"data\":[', '');
                                                                        var res = res.replace(']}', '');
                                                                        var vListTbody = document.getElementById('listTbody');
                                                                        var vSummaryTbody = document.getElementById('summaryTbody');
                                                                        var vClassifySelect = document.getElementById('classifySelect');

                                                                        var lineData=res.split('\n');
                                                                        var i = 0;
                                                                        var j = 0;
                                                                        var listHtml = '';
                                                                        var summaryHtml = '';
                                                                        var voipRecord;
                                                                        var callType;
                                                                        var devicePort;
                                                                        var date;
                                                                        var peerNumber;
                                                                        var selfNumber;
                                                                        var dulation;
                                                                        var imgSrc;
                                                                        var PrivateNumber = '<%tcWebApi_get("String_Entry","PrivateNumberText","s")%>';
                                                                        var port;
                                                                        var phoneNumber;

                                                                        var summaryDate = "";
                                                                        var summaryDateNew = "";
                                                                        var totalCalls = 0;
                                                                        var outGoingCalls = 0;
                                                                        var incomingCalls = 0;
                                                                        var missingCalls = 0;
                                                                        var totalSeconds = 0;
                                                                        var totalDuration;
                                                        
                                                                        for(i=0; i<lineData.length; i++)
                                                                        {
                                                                            if ('' == lineData[i])
                                                                            {
                                                                                continue;
                                                                            }
                                                                            voipRecord = lineData[i].split(',');
                                                                            callType = voipRecord[0];
                                                                            devicePort = voipRecord[1];
                                                                            dateTime = voipRecord[2];
                                                                            peerNumber = voipRecord[3];
                                                                            selfNumber = voipRecord[4];
                                                                            dulation = voipRecord[5];
                                                        
                                                                            if ("1" == devicePort)
                                                                            {
                                                                                port = "PHONE1"
                                                                            }
                                                                            else if ("2" == devicePort)
                                                                            {
                                                                                port = "PHONE2"
                                                                            }
                                                                            else
                                                                            {
                                                                                continue;
                                                                            }

                                                                            summaryDateNew = getDateByDuration(dateTime);

                                                                            if (summaryDateNew != summaryDate)
                                                                            {
                                                                                totalCalls = outGoingCalls + incomingCalls + missingCalls;
                                                                                totalDuration = translateSecondsToTime(totalSeconds);
                                                                                if (totalCalls != 0)
                                                                                {
                                                                                    summaryHtml += `<TR>
                                                                                        <TD style="vertical-align: middle">${summaryDate}</TD>
                                                                                        <TD style="vertical-align: middle">${totalCalls}</TD>
                                                                                        <TD style="vertical-align: middle">${outGoingCalls}</TD>
                                                                                        <TD style="vertical-align: middle">${incomingCalls}</TD>
                                                                                        <TD style="vertical-align: middle">${missingCalls}</TD>
                                                                                        <TD style="vertical-align: middle">${totalDuration}</TD>
                                                                                        </TR>`;
                                                                                }

                                                                                summaryDate = summaryDateNew;
                                                                                outGoingCalls = 0;
                                                                                incomingCalls = 0;
                                                                                missingCalls = 0;
                                                                                totalSeconds = 0;
                                                                            }
                                                        
                                                                            if (callType == "1")  //missed
                                                                            {
                                                                                missingCalls++;
                                                                                imgSrc = "/Dashboard/images/voipMissed.png";
                                                                            }
                                                                            else if (callType == "2")  //incoming
                                                                            {
                                                                                incomingCalls++;
                                                                                imgSrc = "/Dashboard/images/voipIncoming.png";
                                                                            }
                                                                            else if (callType == "3")  //outgoing
                                                                            {
                                                                                outGoingCalls++;
                                                                                imgSrc = "/Dashboard/images/voipOutgoing.png";
                                                                            }
                                                                            phoneNumber = selfNumber + '/' + port;

                                                                            totalSeconds+=translateTimeToSeconds(dulation);
                                                        
                                                                            if (peerNumber == "NONE")
                                                                            {
                                                                                peerNumber = PrivateNumber;
                                                                            }

                                                                            if ((vClassifySelect.value == "0") || (vClassifySelect.value == callType))
                                                                            {
                                                                                if (1 == j%2)
                                                                                {
                                                                                    listHtml += `<TR style="background:#F5F5F5">`
                                                                                }
                                                                                else
                                                                                {
                                                                                    listHtml += `<TR>`
                                                                                }
                                                                                j++;
                                                                                listHtml += `
                                                                                        <TD style="vertical-align: middle"><img src=${imgSrc} width="26" height="26" class="img-fluid" alt=""/></TD>
                                                                                        <TD style="vertical-align: middle">${dateTime}</TD>
                                                                                        <TD style="vertical-align: middle">${peerNumber}</TD>
                                                                                        <TD style="vertical-align: middle">${phoneNumber}</TD>
                                                                                        <TD style="vertical-align: middle">${dulation}</TD>
                                                                                        <TD style="vertical-align: middle"><button type="button" style="border-style:none; background-color: Transparent" onclick="deleteRecord(${i})"><span><img src="/img/delete.png" width="20" height="20" class="img-fluid" alt=""/></span></button></TD>
                                                                                    </TR>`;
                                                                            }
                                                                        }
                                                                        vListTbody.innerHTML = listHtml;

                                                                        totalCalls = outGoingCalls + incomingCalls + missingCalls;
                                                                        totalDuration = translateSecondsToTime(totalSeconds);
                                                                        if (totalCalls != 0)
                                                                        {
                                                                            summaryHtml += `<TR>
                                                                                <TD style="vertical-align: middle">${summaryDate}</TD>
                                                                                <TD style="vertical-align: middle">${totalCalls}</TD>
                                                                                <TD style="vertical-align: middle">${outGoingCalls}</TD>
                                                                                <TD style="vertical-align: middle">${incomingCalls}</TD>
                                                                                <TD style="vertical-align: middle">${missingCalls}</TD>
                                                                                <TD style="vertical-align: middle">${totalDuration}</TD>
                                                                                </TR>`;
                                                                        }
                                                                        vSummaryTbody.innerHTML = summaryHtml;
                                                                    }
                                                                });
                                                        }

                                                        function deleteRecord(index)
                                                        {
                                                            dealList("delete", index+1);
                                                        }
    
                                                        dealList("get", 0);

                                                    </script>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                        </div>
                        </div>

 <div class="col-xl-12 col-md-12 mb-4">
                                <SCRIPT language=javascript>
                                    let hostName = '<% tcWebApi_get("Info_Ether","HostName","s") %>';
                                    hostName = hostName.split(',');

                                    let portMac = '<% tcWebApi_get("Info_Ether","PortMac","s") %>';
                                    portMac = portMac.split(',');

                                    let portIP = '<% tcWebApi_get("Info_Ether","PortIP","s") %>';
                                    portIP = portIP.split(',');

                                    let portDHCP = '<% tcWebApi_get("Info_Ether","PortDHCP","s") %>';
                                    portDHCP = portDHCP.split(",");

                                    let portExpire = '<% tcWebApi_get("Info_Ether","PortExpire","s") %>';
                                    portExpire = portExpire.split(',');

                                    let portBrHost = '<% tcWebApi_get("Info_Ether", "brHost", "s")%>';
                                    portBrHost = portBrHost.split(',');

                                    let dhcpnum = portDHCP.length - 1;

                                    function getUserInfoLanPort(mac)
                                    {
                                        for (let idx = 0; idx < portBrHost.length - 1; idx ++ )
                                        {
                                        let macPorts = portBrHost[idx];
                                        let objDif = macPorts.split('=');
                                        if ( 2 == objDif.length
                                            && mac == objDif[1] )
                                            return objDif[0];
                                        }

                                        return '5';
                                    }                                
                                </SCRIPT>
                                <div class="card" style="margin-top:-837px; margin-left:118px">
                                    <div class="card-header">
                                        <span>
                                            <img src="/Dashboard/images/logo-user.png" style="width:45px;padding-bottom:5px;">
                                        </span>
                                        <span><b style="font-size:18px;"><span style="vertical-align:middle;">
                                        User Info</b></span></span>
                                                    
                                        <hr>
                                        <span>
                                            On this page, you can query the WLAN information,& user-side Ethernet
                                            port information.
                                        </span>

                                    </div>
                                    
                                    <div class="card-body table-responsive">
                                        <p style="color:#f58220;"><b>WIFI Devices</b></p>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th colspan="2">Device Name</th>
                                                    <th>Device IP </th>
                                                    <th>Device Mac </th>
                                                    <th> Type </th>
                                                    <th colspan="2">Remaining Lease</th>
                                                    <th>Operations</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               
                                                <SCRIPT language=javascript>
                                                    
                                                        for(i = 0; i < dhcpnum; i++)
                                                        {
                                                            if(portIP[i] != "N/A" || portMac[i] != "N/A")
                                                            {   
                                                                let portIdx = parseInt(getUserInfoLanPort(portMac[i]))

                                                                console.log(portIdx)

                                                                if (!(portIdx === 1 || portIdx === 2)) {

                                                                    document.write('<tr>');
                                                                    

                                                                     if(hostName[i] === '' || hostName[i] === "N/A" )
                                                                    {
                                                                        document.write('<td colspan="2"> Computer &nbsp;</td>')
                                                                    } else {
                                                                        document.write('<td colspan="2">'  + hostName[i] + '</td>');
                                                                    }

                                                                        document.write('<td>' + portIP[i] + '</td>')
                                                                        document.write('<td>' + portMac[i] + '&nbsp;</td>');

                                                                    if (portIdx === 13) {
                                                                        document.write('<td>' + 'Wi-Fi 5GHz' + '</td>');
                                                                    } else {
                                                                        document.write('<td>' + 'Wi-Fi 2.4GHz' + '</td>');
                                                                    }
                                                                       

                                                                    if(portDHCP[i] == "1")
                                                                    {  
                                                                        let portExpireTime = portExpire[i].split(':');
                                                                        
                                                                        if(portExpireTime[0] !== "0"){
                                                                            
                                                                            document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[0] + '<%tcWebApi_get("String_Entry","UserInfodayText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                        }
                                                                        else{
                                                                            if(("0:0:0:0" == portExpire[i]) || ("0" == portExpire[i])) {
                                                                                document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeIFuText","s")%>' + '</td>');
                                                                                
                                                                            } else{
                                                                                document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                                
                                                                            }
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoStaallText","s")%>' + '</td>');
                                                                        
                                                                    }
                                                                        
                                                                    
                                                                    let shareAccessAlertString = 'Cannot use this function due to high security level of your brouser.';
                                                                    

                                                                    document.write('<td>');
                                                                    document.write('<button class="btn orange_btn pl-1 pr-0" onclick="alert(shareAccessAlertString)" >' + 'Share Access' + '</button>');
                                                                    document.write('<button class="btn orange_btn m-1 p-1" data-toggle="modal" data-target="#HERO06">' + 'Application' + '</button>');
                                                                    document.write('</td>');
                                                                    document.write('</tr>');
    
                                                                }

                                                                
                                                                
                                                            }					
                                                        }
                                                    </SCRIPT>

                                            </tbody>

                                        </table>
                                        <p style="color:#f58220;"><b>WIRED Devices</b></p>
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th colspan="2">Device Name</th>
                                                    <th>Device IP </th>
                                                    <th>Device Mac </th> 
                                                    <th> Type </th>
                                                    <th colspan="2">Remaining Lease</th>
                                                    <th>Operations</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                               
                                                <SCRIPT language=javascript>
                                                    
                                                        for(i = 0; i < dhcpnum; i++)
                                                        {
                                                            if(portIP[i] != "N/A" || portMac[i] != "N/A")
                                                            {   
                                                                let portIdx = parseInt(getUserInfoLanPort(portMac[i]))

                                                                if (portIdx === 1 || portIdx === 2) {

                                                                    document.write('<tr>');
                                                                    

                                                                     if(hostName[i] === '' || hostName[i] === "N/A" )
                                                                    {
                                                                        document.write('<td colspan="2"> Computer &nbsp;</td>')
                                                                    } else {
                                                                        document.write('<td colspan="2">'  + hostName[i] + '</td>');
                                                                    }

                                                                        document.write('<td>' + portIP[i] + '</td>')
                                                                        document.write('<td>' + portMac[i] + '&nbsp;</td>');

                                                                        document.write('<td>' + 'LAN-' + portIdx + '</td>');
                                                                       

                                                                    if(portDHCP[i] == "1")
                                                                    {  
                                                                        let portExpireTime = portExpire[i].split(':');
                                                                        
                                                                        if(portExpireTime[0] !== "0"){
                                                                            
                                                                            document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[0] + '<%tcWebApi_get("String_Entry","UserInfodayText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                        }
                                                                        else{
                                                                            if(("0:0:0:0" == portExpire[i]) || ("0" == portExpire[i])) {
                                                                                document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeIFuText","s")%>' + '</td>');
                                                                                
                                                                            } else{
                                                                                document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                                
                                                                            }
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        document.write('<td colspan="2">' + '<%tcWebApi_get("String_Entry","UserInfoStaallText","s")%>' + '</td>');
                                                                        
                                                                    }

                                                                    document.write('<td>');
                                                                    document.write('<button class="btn orange_btn pl-1 pr-0" onclick="alert(shareAccessAlertString)" >' + 'Share Access' + '</button>');
                                                                    document.write('<button class="btn orange_btn m-1 p-1" data-toggle="modal" data-target="#HERO06">' + 'Application' + '</button>');
                                                                    document.write('</td>');
                                                                        
                                                     
                                                                    document.write('</tr>');
    
                                                                }

                                                                
                                                                
                                                            }					
                                                        }
                                                    </SCRIPT>

                                            </tbody>

                                        </table>
                                        
                                        
                                        <div class="modal fade" id="HERO06" role="dialog">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <span>
                                                            <img src="/Dashboard/images/logo-user.png" style="width:45px;">
                                                        </span>
                                                        <h2 class="modal-title" style="display: inline;"> &nbsp;
                                                            User Device Information
                                                        </h2>
                                                        <button type="button" class="close"
                                                            data-dismiss="modal">&times;</button>
                                                    </div>

                                                    <div class="modal-body">

                                                     
                                                        <button class="btn grey_btn m-1"><a href="sec-macfilter.asp" style="text-decoration:none; color:black">Mac Filter</a></button><br>
                                                        <button class="btn grey_btn m-1"><a href="sec-portfilter.asp" style="text-decoration:none; color:black">Port Mapping</a></button><br>
                                    
                                                        <button class="btn grey_btn m-1"> <a href="sec-parental.asp" style="text-decoration:none; color:black">Parental Control
                                                            Configuration</a></button>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn grey_btn"
                                                            data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <button class="btn orange_btn" data-toggle="modal"
                                            data-target="#HERO08">View More</button>
                                    </div>

                                </div>
                        </div>

<Script language=javascript>
                                            var PortConnStatus = new Array(4);
		PortConnStatus[0] = "<% tcWebApi_get("Info_Ether","Port1Status","s") %>";
		PortConnStatus[1] = "<% tcWebApi_get("Info_Ether","Port2Status","s") %>";
		PortConnStatus[2] = "<% tcWebApi_get("Info_Ether","Port3Status","s") %>";
		PortConnStatus[3] = "<% tcWebApi_get("Info_Ether","Port4Status","s") %>";


		var PortConnSpeed = new Array(4);
		PortConnSpeed[0] = "<% tcWebApi_get("Info_Ether","Port1Speed","s") %>";
		PortConnSpeed[1] = "<% tcWebApi_get("Info_Ether","Port2Speed","s") %>";
		PortConnSpeed[2] = "<% tcWebApi_get("Info_Ether","Port3Speed","s") %>";
		PortConnSpeed[3] = "<% tcWebApi_get("Info_Ether","Port4Speed","s") %>";

		var PortConnDuplex = new Array(4);
		PortConnDuplex[0] = "<% tcWebApi_get("Info_Ether","Port1Duplex","s") %>";
		PortConnDuplex[1] = "<% tcWebApi_get("Info_Ether","Port2Duplex","s") %>";
		PortConnDuplex[2] = "<% tcWebApi_get("Info_Ether","Port3Duplex","s") %>";
		PortConnDuplex[3] = "<% tcWebApi_get("Info_Ether","Port4Duplex","s") %>";

function print_port_status(port_index)
{
	var portnum = "<%tcWebApi_get("portconfig_common", "PortNum", "s") %>";
	if (port_index > portnum)
	{
		document.write("--");
	}
	else
	{
	    if (PortConnStatus[port_index-1] == 1)
	    {
	        //document.write("<%tcWebApi_get("String_Entry","UserInfoCONneText","s")%>");
	        document.write(PortConnSpeed[port_index-1] + ' ' + PortConnDuplex[port_index-1]);

	    }
	    else 
	    {
			// link down
			document.write("<%tcWebApi_get("String_Entry","UserInfoUnCONneText","s")%>");
	    }
	}
}

		var aryInfoTemp = "<% tcWebApi_get("Info_Ether","PortIP","s") %>";
		var PortIp = aryInfoTemp.split(',');
		dhcpnum = 0;
                if (PortIp.length > 0)
                    dhcpnum = PortIp.length - 1;
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","PortMac","s") %>";
		aryInfoTemp += "<% tcWebApi_get("Info_Ether","PortMac2","s") %>";
		var PortMac = aryInfoTemp.split(',');
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","PortDHCP","s") %>";
		var PortDhcp = aryInfoTemp.split(',');
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","PortExpire","s") %>";
		var PortExpireTime = aryInfoTemp.split(',');
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","HostName","s") %>";
		var PortHostName = aryInfoTemp.split(',');
		
		var wlanEnbl = "<% TCWebApi_get("WLan_Common", "APOn", "s") %>";
		var wlanacEnbl = "<% TCWebApi_get("WLan11ac_Common", "APOn", "s") %>";
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","HostName","s") %>";
		var PortHostName = aryInfoTemp.split(',');
		aryInfoTemp = "<% tcWebApi_get("Info_Ether","brHost","s") %>";
		var LayerConInterface = aryInfoTemp.split(',');

		function getLanPort(mac)
		{
			for ( var idx = 0; idx < LayerConInterface.length; idx ++ )
			{
			var mac_ports = LayerConInterface[idx];
			var obj_dif = mac_ports.split('=');
			if ( 2 == obj_dif.length
				&& mac == obj_dif[1] )
				return obj_dif[0];
			}

			return '1';
		}

function stWlan(domain,enable,ssid,BeaconType,BasicEncrypt,BasicAuth,WPAEncrypt,WPAAuth,IEEE11iEncrypt,IEEE11iAuth,Channel,ChannelsInUse)
{
this.domain = domain;
this.enable = enable;
this.ssid = ssid;
this.BeaconType = BeaconType;
this.BasicAuth = BasicAuth;
this.BasicEncrypt = BasicEncrypt;
this.WPAAuth = WPAAuth;
this.WPAEncrypt = WPAEncrypt;
this.IEEE11iAuth = IEEE11iAuth;
this.IEEE11iEncrypt = IEEE11iEncrypt;
this.Channel = Channel;
this.ChannelsInUse = ChannelsInUse;
}

var DeviceInfo =  [["0","Computer","  "," ","0"," Static "],null];

<% if tcwebApi_get("WebCustom_Entry","isMultiUserITFSupported","h") <> "Yes" then %>
var WlanInfo = new Array(4);
<% else %>
var WlanInfo = new Array(8);
<% end if %>
WlanInfo[0] = new stWlan("0","<% tcWebApi_get("WLan_Entry0","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry0","SSID","s") %>","<% tcWebApi_get("WLan_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry0","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry0","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% if tcwebApi_get("WebCurSet_Entry","isSSIDHidden","h") <> "Yes" then %>
WlanInfo[1] = new stWlan("1","<% tcWebApi_get("WLan_Entry1","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry1","SSID","s") %>","<% tcWebApi_get("WLan_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry1","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry1","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% if tcwebApi_get("WebCustom_Entry","isCTPONOnlyTwoSSIDSupported","h") <> "Yes" then %>
WlanInfo[2] = new stWlan("2","<% tcWebApi_get("WLan_Entry2","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry2","SSID","s") %>","<% tcWebApi_get("WLan_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry2","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry2","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanInfo[3] = new stWlan("3","<% tcWebApi_get("WLan_Entry3","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry3","SSID","s") %>","<% tcWebApi_get("WLan_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry3","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry3","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isMultiUserITFSupported","h") = "Yes" then %>
WlanInfo[4] = new stWlan("4","<% tcWebApi_get("WLan_Entry4","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry4","SSID","s") %>","<% tcWebApi_get("WLan_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry4","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry4","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanInfo[5] = new stWlan("5","<% tcWebApi_get("WLan_Entry5","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry5","SSID","s") %>","<% tcWebApi_get("WLan_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry5","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry5","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanInfo[6] = new stWlan("6","<% tcWebApi_get("WLan_Entry6","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry6","SSID","s") %>","<% tcWebApi_get("WLan_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry6","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry6","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanInfo[7] = new stWlan("7","<% tcWebApi_get("WLan_Entry7","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry7","SSID","s") %>","<% tcWebApi_get("WLan_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry7","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry7","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% end if %>
<% end if %>

<% if tcwebApi_get("WebCustom_Entry","isMultiUserITFSupported","h") <> "Yes" then %>
var WlanacInfo = new Array(4);
<% else %>
var WlanacInfo = new Array(8);
<% end if %>
WlanacInfo[0] = new stWlan("0","<% tcWebApi_get("WLan11ac_Entry0","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry0","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry0","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry0","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry0","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% if tcwebApi_get("WebCustom_Entry","isCTPONSNSupported","h") <> "Yes" then %>
WlanacInfo[1] = new stWlan("1","<% tcWebApi_get("WLan11ac_Entry1","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry1","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry1","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry1","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry1","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanacInfo[2] = new stWlan("2","<% tcWebApi_get("WLan11ac_Entry2","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry2","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry2","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry2","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry2","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanacInfo[3] = new stWlan("3","<% tcWebApi_get("WLan11ac_Entry3","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry3","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry3","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry3","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry3","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isMultiUserITFSupported","h") = "Yes" then %>
WlanacInfo[4] = new stWlan("4","<% tcWebApi_get("WLan11ac_Entry4","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry4","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry4","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry4","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry4","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanacInfo[5] = new stWlan("5","<% tcWebApi_get("WLan11ac_Entry5","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry5","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry5","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry5","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry5","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanacInfo[6] = new stWlan("6","<% tcWebApi_get("WLan11ac_Entry6","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry6","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry6","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry6","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry6","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
WlanacInfo[7] = new stWlan("7","<% tcWebApi_get("WLan11ac_Entry7","HideSSID","s") %>","<% tcWebApi_get("WLan11ac_Entry7","SSID","s") %>","<% tcWebApi_get("WLan11ac_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry7","WEPAuthType","s") %>","<% tcWebApi_get("WLan11ac_Entry7","AuthMode","s") %>","<% tcWebApi_get("WLan11ac_Entry7","EncrypType","s") %>","AESEncryption","PSKAuthentication","0","1");
<% end if %>

var PacketInfo = new Array();
PacketInfo = [["0","0","0","0","0","0","0","0","0"],null];



Ethernet = [["0","Disabled","560097","4123","0","0","3096680","5897","0","0"],["InternetGatewayDevice.LANDevice.1.LANEthernetInterfaceConfig.2","Up","560097","4123","0","0","3096680","5897","0","0"],["InternetGatewayDevice.LANDevice.1.LANEthernetInterfaceConfig.3","Disabled","560362","4124","0","0","3096680","5897","0","0"],["InternetGatewayDevice.LANDevice.1.LANEthernetInterfaceConfig.4","Disabled","560362","4124","0","0","3096680","5897","0","0"],null]

var usbstate0 = "<% tcWebApi_get("Usb_Entry0","usbstate","s") %>";
var usbstate1 = "<% tcWebApi_get("Usb_Entry1","usbstate","s") %>";

var usb = [null];
var usb1 = usb[0];
if (usb.length > 1)
var usb2 = usb[1];
var i = 0;
var LanInfo = new Array();

function stUserInfo(domain,name,level,busy)
{
	this.domain = domain;
	this.name = name;
	this.level = level;
	this.busy = busy;
}

var UserInfo = new Array(3);
	UserInfo[0] = new stUserInfo(0,"<% tcWebApi_get("Account_Entry0","username","s") %>","<% tcWebApi_get("Account_Entry1","usertype","s") %>","null");
	UserInfo[1] = new stUserInfo(1,"<% tcWebApi_get("Account_Entry1","username","s") %>","<% tcWebApi_get("Account_Entry2","usertype","s") %>","null");
	UserInfo[2] = new stUserInfo(2,"<% tcWebApi_get("Account_Entry2","username","s") %>","<% tcWebApi_get("Account_Entry3","usertype","s") %>","null");

var k = 1;
for(k=0; k < UserInfo.length-1; k++)
{
	var num = UserInfo[k].level;
	if (num == 1)
	{
		break;
	}
}
var sysUserName = UserInfo[k].name;
var addressNum = 0;
var i = 0;
function ipv6cnst(domain,ipv6address)
{
	this.domain = domain;
	this.ipv6address = ipv6address.split(',');
	addressNum = this.ipv6address.length;
}
var ipv6infost = new Array(new ipv6cnst("1","1111:db8:1::1,fe80::1"),new ipv6cnst("2","1111:db8:2::1,fe80::1"),new ipv6cnst("3","1111:db8:1::1,fe80::1"),null);

function LanInfoConstruction(Device, IPAddr, MACAddr, Status)
{
	this.Device = Device;
	this.IPAddr = IPAddr;
	this.MACAddr = MACAddr;
	this.Status = Status;
}
function DhcpServerRelTime(timeVal)
{
	var timeString = "<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>";
	if (timeVal == 0)
	{
	return '<%tcWebApi_get("String_Entry","UserInfoLeIFuText","s")%>';
	}
	if (timeVal >= 60*60*24)
	{
	timeString += parseInt(timeVal/(60*60*24)) + "<%tcWebApi_get("String_Entry","UserInfodayText","s")%>" ;
	timeVal %= 60*60*24;
	}
	if (timeVal >= 60*60)
	{
	timeString += parseInt(timeVal / (60*60)) + "<%tcWebApi_get("String_Entry","UserInfohourText","s")%>" ;
	timeVal %= 60*60;
	}
	if (timeVal >= 60)
	{
	timeString += parseInt(timeVal / (60)) + "<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>" ;
	timeVal %= 60;
	}
	if (timeVal > 0)
	{
	timeString += timeVal + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>';
	}
	return timeString;
}
</Script>


 <div class="modal fade" id="HERO08" role="dialog" style="overflow-y:auto;">
 
                                <div class="modal-dialog modal-lg">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <span>
                                                <img src="/Dashboard/images/wlan.png" style="width:45px;">
                                            </span>
                                            <h2 class="modal-title" style="display: inline;"> &nbsp;
                                                WLAN Information
                                            </h2>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>

                                        <div class="modal-body table-responsive">

                                            <table class="table table-bordered ">
                                                <p>
                                                    On this page, you can query the WLAN information, WLAN packet
                                                    statistics, and SSID information.
                                                </p>


 
                                                <thead>
                                                    <tr>
                                                        <td colspan="4">    
                                                            <button class="btn orange_btn" data-target="#HERO010"
                                                                data-toggle="modal"> Ethernet
                                                                Port Status
                                                            </button>
                                                        </td>
                                                    </tr>
                                                <tbody id="div3" class="hidden">
                                                </tbody>
                                                <tr style="background-color: rgba(0, 0, 0, .05) !important;">
                                                    <td colspan="4"><input name="WlanMethod" type="radio" checked="checked"
                                                            onclick="showDiv1()">2.4 GHz wireless network information
                                                    </td>
                                                    <td colspan="4"><input name="WlanMethod" type="radio"
                                                            onclick="showDiv2()">5 GHz wireless network information
                                                    </td>
                                                </tr>

                                                </thead>
                                                <tbody id="div1" class="active">
                                                
                                                    <tr>
                                                        <td style="color:#f58220 " colspan="8">WLAN Info</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">WLAN Status</th>
                                                        <td colspan="7">
                                                            <SCRIPT language=JavaScript type=text/javascript>
                                                                let wlanEnabled = '<% TCWebApi_get("WLan_Common", "APOn", "s") %>';

					                                            if (wlanEnabled == "0")
                                                                {
                                                                    document.write('<%tcWebApi_get("String_Entry","UserInfoDisableText","s")%>')
                                                                }
                                                                else
                                                                {
                                                                    document.write('<%tcWebApi_get("String_Entry","UserInfoEnableText","s")%>')
                                                                }
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">WLAN Channel</th>
                                                        <td colspan="7">
                                                            <SCRIPT language=JavaScript type=text/javascript>
                                                                if (( wlanEnabled == "1")) {
                                                                    document.write('<%tcWebApi_get("Info_WLan","CurrentChannel","s") %>');
                                                                } else {
                                                                    document.write('--');
                                                                }
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol"><%tcWebApi_get("String_Entry","UserInfoSSIDIText","s")%></th>
                                                        <th class="table-headcol"><%tcWebApi_get("String_Entry","UserInfoSSIDNaText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoSeCoText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoAutMeText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoEncryText","s")%> </th>
                                                    </tr>
                                                    <script language=javascript>
                                                    var ssidnum="<% tcWebApi_get("WLan_Common","BssidNum","s") %>";

					if (wlanEnbl == "1")
					{
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
					        var dispSSIDNum = 0;
						for (var i = 0; i < 4; i++)
<%else%>
						for (var i = 0; i < ssidnum; i++)
<%end if%>
						{
<% if tcWebApi_get("WebCurSet_Entry", "isSSIDHidden", "h") = "Yes"  then %>
							if ( i > 0 )
								continue;
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONOnlyTwoSSIDSupported","h") = "Yes" then %>
							if ( i > 1 )
								continue;
<% end if %>
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
							if(dispSSIDNum >= ssidnum)
								continue;

							if(WlanInfo[i].enable=='0' || WlanInfo[i].enable=='1'){
								dispSSIDNum++;
<% end if %>
							var Auth = "";
							var Encrypt = "";
							var AuthSt = "<%tcWebApi_get("String_Entry","UserInfoConfiguText","s")%>";
							if (WlanInfo[i].BeaconType.indexOf('WEP') > -1)
							{
								Auth = WlanInfo[i].BasicAuth;
								Encrypt = WlanInfo[i].BasicEncrypt;
							}
							else if(WlanInfo[i].BeaconType.indexOf('OPEN') > -1)
							{
								Auth = "OPENSYSTEM";
								Encrypt = "NONE";
								AuthSt = "<%tcWebApi_get("String_Entry","UserInfoUnconfiguText","s")%>";
							}
							else
							{
								Encrypt = WlanInfo[i].WPAAuth;
								Auth = WlanInfo[i].WPAEncrypt;
							}
							
							if(Auth == "WPA2PSK" || Auth == "wpa2psk")
							{
								Auth = "WPA2-PSK";
							}
							if(Auth == "WPAPSK" || Auth == "wpapsk")
							{
								Auth = "WPA-PSK";
							}
							if(Auth == "WPAPSKWPA2PSK" || Auth == "wpapskwpa2psk")
							{
								Auth = "WPA-PSK/WPA2-PSK";
							}
							if(Auth == "WPA3PSK" || Auth == "wap3psk")
							{
								Auth = "WPA3-PSK";
							}
							if(Auth == "WPA2PSKWPA3PSK" || Auth == "wpa2pskwpa3psk")
							{
								Auth = "WPA2-PSK/WPA3-PSK";
							}
							if(Encrypt == "TKIPAES" || Encrypt == "tkipaes")
							{
								Encrypt = "TKIP+AES";
							}
							document.writeln('<tr>' + '<td>' + 'SSID-' + (i+1) + ':</td>' + '<td  >' + WlanInfo[i].ssid + '&nbsp;</td><td colspan="2" >' + AuthSt + '&nbsp;</td>' + '<td  colspan="2">' + Auth.toUpperCase () + '&nbsp;</td>' + '<td colspan="2"' + ' >' + Encrypt.toUpperCase() + '&nbsp;</td>' + '</tr>');
						}
					}
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZGDSupported","h") = "Yes" then %>
					}
<% end if %>
</script>
                                                    <tr>
                                                        <td style="color:#f58220 " colspan="8">
                                                            WLAN Packet Statistics
                                                        </td>
                                                    </tr >
                                               
                                                    
                                                    <tr>
                                                        <th colspan="4" align="center" style="text-align: center" > Received(Rx) </th>
                                                        <th colspan="4" align="center" style="text-align: center" > Sent(Tx) </th>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","rxbytes","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanRxFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanRxErrFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanRxDropFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","txbytes","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanTxFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanTxErrFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan","wlanTxDropFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                               
                                                </tbody>

                                                <tbody id="div2" class="hidden">
                                                
                                                    <tr>
                                                        <td style="color:#f58220 " colspan="8">WLAN 5G Info</td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">WLAN 5G Status</th>
                                                        <td colspan="7">
                                                            <SCRIPT language=JavaScript type=text/javascript>
                                                                let wlan11acEnabled = '<% TCWebApi_get("WLan11ac_Common", "APOn", "s") %>';

					                                            if (wlan11acEnabled == "0")
                                                                {
                                                                    document.write('<%tcWebApi_get("String_Entry","UserInfoDisableText","s")%>')
                                                                }
                                                                else
                                                                {
                                                                    document.write('<%tcWebApi_get("String_Entry","UserInfoEnableText","s")%>')
                                                                }
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">WLAN 5G Channel</th>
                                                        <td colspan="7">
                                                            <SCRIPT language=JavaScript type=text/javascript>
                                                                if (( wlan11acEnabled == "1")) {
                                                                    document.write('<%tcWebApi_get("Info_WLan11ac","CurrentChannel","s") %>');
                                                                } else {
                                                                    document.write('--');
                                                                }
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol"><%tcWebApi_get("String_Entry","UserInfoSSIDIText","s")%></th>
                                                        <th class="table-headcol"><%tcWebApi_get("String_Entry","UserInfoSSIDNaText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoSeCoText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoAutMeText","s")%></th>
                                                        <th class="table-headcol" colspan="2"><%tcWebApi_get("String_Entry","UserInfoEncryText","s")%> </th>
                                                    </tr>
                                                    <script language="javascript">
var ssidacnum="<% tcWebApi_get("WLan11ac_Common","BssidNum","s") %>";
if (wlanacEnbl == "1")
{
	for (var i = 0; i < ssidacnum; i++)
	{
<% if tcwebApi_get("WebCustom_Entry","isCTPONSNSupported","h") = "Yes" then %>
		if ( i > 0 )
		continue;
<% end if %>

		var Auth = "";
		var Encrypt = "";
		var AuthSt = "<%tcWebApi_get("String_Entry","UserInfoConfiguText","s")%>";
		if (WlanacInfo[i].BeaconType.indexOf('WEP') > -1)
		{
			Auth = WlanacInfo[i].BasicAuth;
			Encrypt = WlanacInfo[i].BasicEncrypt;
		}
		else if(WlanacInfo[i].BeaconType.indexOf('OPEN') > -1)
		{
			Auth = "OPENSYSTEM";
			Encrypt = "NONE";
			AuthSt = "<%tcWebApi_get("String_Entry","UserInfoUnconfiguText","s")%>";
		}
		else
		{
			Encrypt = WlanacInfo[i].WPAAuth;
			Auth = WlanacInfo[i].WPAEncrypt;
		}
		
		if(Auth == "WPA2PSK" || Auth == "wpa2psk")
		{
			Auth = "WPA2-PSK";
		}
		if(Auth == "WPAPSK" || Auth == "wpapsk")
		{
			Auth = "WPA-PSK";
		}
		if(Auth == "WPAPSKWPA2PSK" || Auth == "wpapskwpa2psk")
		{
			Auth = "WPA-PSK/WPA2-PSK";
		}
		if(Auth == "WPA3PSK" || Auth == "wap3psk")
		{
			Auth = "WPA3-PSK";
		}
		if(Auth == "WPA2PSKWPA3PSK" || Auth == "wpa2pskwpa3psk")
		{
			Auth = "WPA2-PSK/WPA3-PSK";
		}
		if(Encrypt == "TKIPAES" || Encrypt == "tkipaes")
		{
			Encrypt = "TKIP+AES";
		}
		document.writeln('<tr>' + '<td >' + 'SSID-' + (i+1) + ':</td>' + '<td >' + WlanacInfo[i].ssid + '&nbsp;</td><td colspan="2">' + AuthSt + '&nbsp;</td>' + '&nbsp;<td colspan="2" >' + Auth.toUpperCase () + '&nbsp;</td>' + '<td colspan="2"' + ' >' + Encrypt.toUpperCase() + '&nbsp;</td>' + '</tr>');
	}
}
function change_time(time)
{
	var days = parseInt(time / 60 / 60 /24);
	var hours = parseInt(time / 60 / 60 % 24);
	var minutes = parseInt(time / 60 % 60);
	var seconds = parseInt(time % 60);
	var timestr;	
	hours = hours < 10 ? '0' + hours : hours;
	minutes = minutes < 10 ? '0' + minutes : minutes;
	seconds = seconds < 10 ? '0' + seconds : seconds;
	if(days > 0)
	{
		timestr = days + ' Days ' + hours + ':' + minutes + ':' + seconds ;
	}
	else
	{
		timestr = hours + ':' + minutes + ':' + seconds ;
	}
	return timestr;
}
function insert(source, start, newStr)
{
    return source.slice(0, start) + newStr + source.slice(start);
}
</script>
                                                    <tr>
                                                        <td style="color:#f58220 " colspan="8">
                                                            WLA 5G Packet Statistics
                                                        </td>
                                                    </tr >
                                               
                                                    
                                                    <tr>
                                                        <th colspan="4" align="center" style="text-align: center" > Received(Rx) </th>
                                                        <th colspan="4" align="center" style="text-align: center" > Sent(Tx) </th>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanRxBytes","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanRxFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanRxErrFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanRxDropFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanTxBytes","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanTxFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanTxErrFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_WLan11ac","wlanTxDropFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                               
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>


 <div class="modal fade show" id="HERO010" style="display:none;" aria-modal="true"
                                role="dialog">
                                <div class="modal-dialog modal-lg" style="">
                                    <!-- Modal content-->
                                    <div class="modal-content" style="width:125%;">
                                        <div class="modal-header">
                                            <span>
                                                <img src="/Dashboard/images/ethernet.png" style="width:45px;">
                                            </span>
                                            <h2 class="modal-title" style="display: inline;"> &nbsp;
                                                Eth Port Information
                                            </h2>
                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        </div>
                                        <div class="modal-body">
                                            <p>On this page, you can query the user-side Ethernet port information.
                                            </p>
                                            <h5>Ethernet Port Status</h5>
                                            <table class="table  table-bordered table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th colspan="1" rowspan="2" align="center" style="text-align: center">Port</<th>
                                                        <th colspan="5" align="center" style="text-align: center" > Device Info </th>
                                                        <th colspan="3" align="center" style="text-align: center" >Status</<th>
                                                        
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol" colspan="2">HostName</<th>
                                                        <th class="table-headcol" colspan="2">Mac</<th>
                                                        <th class="table-headcol">IP</<th>
                                                        <th class="table-headcol">Mode</<th>
                                                        <th class="table-headcol">Speed</<th>
                                                        <th class="table-headcol">Reamining Lease</<th>
                                                    </tr>

                                                        <SCRIPT language=javascript>
                                                    
                                                        for(i = 0; i < dhcpnum; i++)
                                                        {
                                                            if(portIP[i] != "N/A" || portMac[i] != "N/A")
                                                            {   
                                                                let portIdx = parseInt(getLanPort(portMac[i]))

                                                                if (portIdx === 1 || portIdx === 2) {

                                                                    document.write('<tr>');
                                                                    document.write('<td>' + portIdx + '</td>' );

                                                                     if(hostName[i] === '' || hostName[i] === "N/A" )
                                                                    {
                                                                        document.write('<td colspan="2"> Computer &nbsp;</td>')
                                                                    } else {
                                                                        document.write('<td colspan="2">'  + hostName[i] + '</td>');
                                                                    }
                                                                        document.write('<td colspan="2">' + portMac[i] + '&nbsp;</td>');
                                                                        document.write('<td>' + portIP[i] + '&nbsp;</td>');

                                                                        let lanIndex = 0

                                                                        if (lanIndex === 0) {
                                                                            document.write('<td>');
                                                                        
                                                                            let port2Duplex = '<% tcWebApi_get("Info_Ether","Port2Duplex","s") %>';
                                                                                if (port2Duplex === '')
                                                                                {   
                                                                                    document.write('--');
                                                                                } else {
                                                                                    document.write(port2Duplex + ' -duplex');    
                                                                                }
                                                                            document.write('</td>');

                                                                            document.write('<td>');

                                                                             let port2CurrentBitRate = '<% tcWebApi_get("Info_Ether","port2CurrentBitRate","s") %>';
                                                                                if (parseInt(port2CurrentBitRate) === 0)
                                                                                {
                                                                                    document.write('--');
                                                                                } else {
                                                                                    document.write(port2CurrentBitRate + ' Mbit/s');
                                                                                }

                                                                            document.write('</td>');
                                                                            lanIndex++;

                                                                        } else {
                                                                            document.write('<td>');
                                                                        
                                                                            let port1Duplex = '<% tcWebApi_get("Info_Ether","Port1Duplex","s") %>';
                                                                                if (port1Duplex === '')
                                                                                {   
                                                                                    document.write('--');
                                                                                } else {
                                                                                    document.write(port1Duplex + ' -duplex');    
                                                                                }
                                                                            document.write('</td>');

                                                                            document.write('<td>');

                                                                             let port1CurrentBitRate = '<% tcWebApi_get("Info_Ether","port1CurrentBitRate","s") %>';
                                                                                if (parseInt(port1CurrentBitRate) === 0)
                                                                                {
                                                                                    document.write('--');
                                                                                } else {
                                                                                    document.write(port1CurrentBitRate + ' Mbit/s');
                                                                                }

                                                                            document.write('</td>');
                                                                        }

                                                                        

                                                                        
                                                                    
                                                                    if(portDHCP[i] == "1")
                                                                    {  
                                                                        let portExpireTime = portExpire[i].split(':');
                                                                        
                                                                        if(portExpireTime[0] !== "0"){
                                                                            
                                                                            document.write('<td>' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[0] + '<%tcWebApi_get("String_Entry","UserInfodayText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                        }
                                                                        else{
                                                                            if(("0:0:0:0" == portExpire[i]) || ("0" == portExpire[i])) {
                                                                                document.write('<td>' + '<%tcWebApi_get("String_Entry","UserInfoLeIFuText","s")%>' + '</td>');
                                                                                
                                                                            } else{
                                                                                document.write('<td>' + '<%tcWebApi_get("String_Entry","UserInfoLeRemText","s")%>' + portExpireTime[1] + '<%tcWebApi_get("String_Entry","UserInfohourText","s")%>' + portExpireTime[2] + '<%tcWebApi_get("String_Entry","UserInfominuteText","s")%>' + portExpireTime[3] + '<%tcWebApi_get("String_Entry","UserInfosecondText","s")%>' + '</td>');
                                                                                
                                                                            }
                                                                        }
                                                                    }
                                                                    else
                                                                    {
                                                                        document.write('<td>' + '<%tcWebApi_get("String_Entry","UserInfoStaallText","s")%>' + '</td>');
                                                                        
                                                                    }
                                                                        
                                                                        document.write('</tr>');
    
                                                                }

                                                                
                                                                
                                                            }					
                                                        }
                                                    </SCRIPT>
                                                </tbody>
                                            </table>
                                            <table class="table  table-bordered table-striped">
                                                <tbody>
                                                    <tr>
                                                        <th colspan="9" align="center" style="text-align: center" > Packet Statistics </th>
                                                    </tr>
                                                     <tr>
                                                        <th colspan="1" rowspan="4"> Ethernet </th>
                                                        <th colspan="4" align="center" style="text-align: center" > Received(Rx) </th>
                                                        <th colspan="4" align="center" style="text-align: center" > Sent(Tx) </th>
                                                    </tr>
                                                    <tr>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                        <th class="table-headcol">Bytes</<th>
                                                        <th class="table-headcol">Packets</<th>
                                                        <th class="table-headcol">Error</<th>
                                                        <th class="table-headcol">Discarded</<th>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","inOctets","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","rxFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","rxCrcErr","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","inMulticastPkts","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","outOctets","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","txFrames","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","outErrors","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                        <td>
                                                            <SCRIPT language=javascript>
                                                                document.write('<% tcWebApi_get("Info_Ether","outMulticastPkts","s") %>');
                                                            </SCRIPT>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn grey_btn"
                                                data-dismiss="modal">Close</button>
                                        </div>
                                    </div>

                                </div>
                            </div>


<div class="col-xl-12 col-md-12 mb-4">
                                <div class="card " style="margin-left:118px">
                                    <div class="card-header">
                                        <span>
                                            <img src="/Dashboard/images/TR069.png" style="width:45px;padding-bottom:5px;">
                                        </span>
                                        <span> <b style="font-size:18px;"><span style="vertical-align:middle;">&nbsp;&nbsp;TR069
                                                    Status </b></span></span>
                                        <hr>
                                        <p>
                                            On this page, you can query the TR069 Information
                                        </p>
                                    </div>


                                    <div class="card-body">
                                        <table class="table table-bordered table-striped">
                                            <tr>
                                                <!--  <th>Interaction Build</th> -->
                                                <th colspan="2" class="text-left modal-title"><span>
                                                        <img src="/Dashboard/images/TR069.png" style="width: 30px">
                                                    </span>Tr069 connection state</th>
                                               
                                                      
                                                 
                                            </tr>
                                            <tr>
                                                <th class="table-headcol text-center modal-title">Active inform state</th>
                                                <th class="table-headcol text-center modal-title">ACS connect request state
                                                  </th>



                                            </tr>
                                            <tr>
                                                <td>
                                                    <SCRIPT language=javascript>
                                                        let cwmpEntryInformStatus = "<%TCWebApi_get("Cwmp_Entry","Inform_Status","s")%>";
                                                        switch(cwmpEntryInformStatus)
                                                        {
                                                            case "0":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnReText","s")%>");
                                                                break;
                                                            case "1":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnReNOText","s")%>");
                                                                break;
                                                            case "2":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnReMText","s")%>");
                                                                break;
                                                            case "3":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnNoMText","s")%>");
                                                                break;
                                                            case "4":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnNoACSText","s")%>");
                                                                break;
                                                            case "5":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusUnACSDoText","s")%>");
                                                                break;
                                                            case "6":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusReNoReText","s")%>");
                                                                break;
                                                            case "7":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusRePInText","s")%>"); 
                                                                break;
                                                            case "8":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusReSuccText","s")%>");
                                                                break;
                                                            default:
                                                                document.writeln("N/A");
                                                                break;			
                                                        }						
                                                        </SCRIPT>
                                                </td>
                                                <td>
                                                    <SCRIPT language=javascript>
                                                        var cwmpEntryAcsConnStatus = "<%TCWebApi_get("Cwmp_Entry","AcsConnStatus","s")%>";
                                                        switch(cwmpEntryAcsConnStatus)
                                                        {
                                                            case "0":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusNRRCText","s")%>");
                                                                break;
                                                            case "1":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusThRCText","s")%>");
                                                                break;
                                                            case "2":
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusTRConText","s")%>");
                                                                break;
                                                            default:
                                                                document.writeln("<%tcWebApi_get("String_Entry","CwmpStatusNRRCText","s")%>");
                                                                break;			
                                                        }						
                                                    </SCRIPT>
                                                </td>
                                                
                                            </tr>
                                        </table>

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
<!--	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script> -->
    <script type="text/javascript" src="/JS/popper.min.js"></script>
		
	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.js"></script>
	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script> 	 

	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mCustomScrollbar_concat.js"></script> 
	<script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery_mousewheel.js"></script> 

    <script type="text/javascript">
                function myFunction() {
                    var result = confirm("This operation will interrupt the current call. Are you sure you want to continue?");
                }
            </script>
            <script type="text/javascript">
                function showDiv1() {
                    document.getElementById("div1").classList.add("active");
                    document.getElementById("div1").classList.remove("hidden");
                    document.getElementById("div2").classList.remove("active");
                    document.getElementById("div2").classList.add("hidden");
                }

                function showDiv2() {
                    document.getElementById("div2").classList.add("active");
                    document.getElementById("div2").classList.remove("hidden");
                    document.getElementById("div1").classList.remove("active");
                    document.getElementById("div1").classList.add("hidden");
                }

                function showDiv3() {
                    document.getElementById("div3").classList.add("active");
                    document.getElementById("div3").classList.remove("hidden");
                    document.getElementById("div1").classList.remove("active");
                    document.getElementById("div1").classList.add("hidden");
                }
                function showDiv4() {
                    document.getElementById("div4").classList.add("active");
                    document.getElementById("div4").classList.remove("hidden");
                    document.getElementById("div2").classList.remove("active");
                    document.getElementById("div2").classList.add("hidden");
                }

            </script>
            <script type="text/javascript">
                function showDiv6() {
                    document.getElementById("div6").classList.add("active");
                    document.getElementById("div6").classList.remove("hidden");
                    document.getElementById("div7").classList.remove("active");
                    document.getElementById("div7").classList.add("hidden");
                }

                function showDiv7() {
                    document.getElementById("div7").classList.add("active");
                    document.getElementById("div7").classList.remove("hidden");
                    document.getElementById("div6").classList.remove("active");
                    document.getElementById("div6").classList.add("hidden");
                }

            </script>
	</body>
</html>

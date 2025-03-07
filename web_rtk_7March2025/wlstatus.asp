
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
<link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css" type="text/css">
<link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" type="text/css" rel="stylesheet">
<link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
<link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script src="/Dashboard/JS/jquery.js"></script>
<script src="/Dashboard/JS/menu.js"></script>
<script src="/Dashboard/JS/util.js"></script>
<script src="/Dashboard/JS/printtable.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<title>WLAN Status</title>
<script>
var wlanmode, wlanclientnum;
</script>
<style>
.form-group {
    margin-bottom: 1rem;
}
.custom-control {
    position: relative;
    display: block;
    min-height: 1.5rem;
    padding-left: 1.5rem;
}
.form-group label {
    color: #584848;
    font-size: 13px;
    line-height: 22px;
}
.left-field {
    margin-left: -10px;
    width: 143px;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
}
.right-field {
    margin-left: 178px;
    padding: 2px;
    width: 248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.margin_adjs {
    margin-right: -29px;
    margin-left: -29px;
}
</style>
</head>
<body>
<INPUT id="Selected_Menu" type="hidden" 
            value="Wireless->WiFi" name="Net_Wlan">
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
							        MakeLeftMenu("Wireless","WiFi");
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Wi-Fi',"Wi-Fi 2.4G",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">								 
				
                	<div class="white_box" name="CwmpConfig">
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/> WLAN Status</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p>This page shows the WLAN current status.</p>
 </div>
</div>
<script>
 var wlan_num = 1;
 var isNewMeshUI = 1;
 var wlanMode =new Array();
 var networkType =new Array();
 var band=new Array();
 var ssid_drv=new Array();
 var channel_drv=new Array();
 var wep=new Array();
 var wdsEncrypt=new Array();
 var meshEncrypt=new Array();
 var bssid_drv=new Array();
 var clientnum=new Array();
 var state_drv=new Array();
 var rp_enabled=new Array();
 var rp_mode=new Array();
 var rp_encrypt=new Array();
 var rp_clientnum=new Array();
 var rp_ssid=new Array();
 var rp_bssid=new Array();
 var rp_state=new Array();
 var wlanDisabled=new Array();
 var mssid_num;
 var mssid_disable=new Array();
 var mssid_bssid_drv=new Array();
 var mssid_clientnum=new Array();
 var mssid_band=new Array();
 var mssid_ssid_drv=new Array();
 var mssid_wep=new Array();
 var Band2G5GSupport;
 var is_wlan_qtn = 0;
 wlanMode[0]=0;
	networkType[0]=0;
	band[0]=11;
	ssid_drv[0]='FTTH-84E8';
	channel_drv[0]='6';
	wep[0]='WPA2 Mixed';
	wdsEncrypt[0]='Disabled';
	meshEncrypt[0]='';
	bssid_drv[0]='04:11:19:5d:84:ec';
	clientnum[0]='0';
	state_drv[0]='Started';
	wlanDisabled[0]=0;
	rp_enabled[0]=0;
	rp_mode[0]=1;
	rp_encrypt[0]='None';
	rp_ssid[0]='';
	rp_bssid[0]='00:00:00:00:00:00';
	rp_state[0]='Disabled';
	rp_clientnum[0]='0';
	mssid_num=3;
	mssid_ssid_drv[0]='EasyMeshBH-MquxcLHpr';
	mssid_band[0]=11;
	mssid_disable[0]=0;
	mssid_bssid_drv[0]='04:11:19:5d:84:ed';
	mssid_clientnum[0]='0';
	mssid_wep[0]='WPA2';
	mssid_disable[1]=1;
	mssid_disable[2]=1;
	Band2G5GSupport=1;

 if(ssid_drv[0]=="")
  mssid_num=0;
 for(i=0; i < wlan_num; i++){
  document.write(' <div class="column"> <div class="column_title"> <div class="column_title_left"></div> <p>WLAN Configuration</p> <div class="column_title_right"></div> </div> <div class="data_common"> <table>');
  document.write('<div class="col-md-12 form-group"><div class="custom-control"><label class="left-field">Mode</label><td class="right-field custom-select"' );
  if(wlanMode[i] == 0)
   document.write("AP");
  if(wlanMode[i] == 1){
   if (networkType[0] == 0)
            document.write( "Infrastructure Client");
   else
    document.write( "Ad-hoc Client");
    }
    if ( wlanMode[i] == 2 )
           document.write( "WDS");
    if ( wlanMode[i] == 3 )
           document.write( "AP+WDS");
  if( isNewMeshUI ==1 )
  {
   if ( wlanMode[i] == 4 )
            document.write( "AP+MESH");
      if ( wlanMode[i] == 5 )
           document.write( "MESH");
  }
  else
  {
      if ( wlanMode[i] == 4 )
            document.write( "AP+MPP");
      if ( wlanMode[i] == 5 )
           document.write( "MPP");
      if ( wlanMode[i] == 6 )
            document.write( "MAP");
      if ( wlanMode[i] == 7 )
            document.write( "MP");
  }
  document.write('</td></tr> <tr> <th width=40%>Band</th> <td width=60%>');
 if (band[i] == 1)
     document.write( "2.4 GHz (B)");
    if (band[i] == 2)
     document.write( "2.4 GHz (G)");
    if (band[i] == 3)
     document.write( "2.4 GHz (B+G)");
    if (band[i] == 4)
     document.write( "5 GHz (A)");
    if (band[i] == 8) {
     if(Band2G5GSupport == 1)
      document.write( "2.4 GHz (N)");
     else if(Band2G5GSupport == 2)
      document.write( "5 GHz (N)");
    }
    if (band[i] == 10)
     document.write( "2.4 GHz (G+N)");
    if (band[i] == 11)
     document.write( "2.4 GHz (B+G+N)");
    if (band[i] == 12)
     document.write( "5 GHz (A+N)");
 if (band[i] == 64)
  document.write( "5 GHz (AC)");
 if (band[i] == 72)
  document.write( "5 GHz (N+AC)");
    if (band[i] == 76)
     document.write( "5 GHz (A+N+AC)");
 document.write('</td></tr> <tr> <th width=40%>SSID</th> <td width=60% class="show_space">');
 if (wlanMode[i] != 2) {
  document.write(ssid_drv[i]);
 }
 document.write('</td> </tr> <tr> <th width=40%>Channel Number</th> <td width=60%>'+channel_drv[i] +'</td> </tr> <tr> <th width=40%>Encryption</th> <td width=60%>');
 if (wlanMode[i] == 0 || wlanMode[i] == 1)
      document.write(wep[i]);
     else if (wlanMode[i] == 2)
      document.write(wdsEncrypt[i]);
     else if (wlanMode[i] == 3)
      document.write(wep[i] + '(AP), ' + wdsEncrypt[i] + '(WDS)');
     else if (wlanMode[i] == 4 || wlanMode[i] == 6)
      document.write(wep[i] + '(AP), ' + meshEncrypt[i] + '(Mesh)');
     else if (wlanMode[i] == 5|| wlanMode[i] == 7)
      document.write( meshEncrypt[i] + '(Mesh)');
 document.write('</td> </tr> <tr> <th width=40%>BSSID</th> <td width=60%>'+bssid_drv[i]+'</td> </tr>');
 if (wlanMode[i]!=2) {
  document.write('<tr >\n');
  if (wlanMode[i]==0 || wlanMode[i]==3 || wlanMode[i]==4) {
   document.write("<th width=40%%>Associated Clients</th>\n");
   document.write("<td width=60%%>"+clientnum[i]+"</td></tr>");
  }
  else {
   document.write("<th width=40%%>State</th>\n");
   document.write('<td width=60%%>'+state_drv[i]+'</td></tr>');
  }
        }
 document.write('</table></div></div>');
 if (!wlanDisabled[i] && (wlanMode[i]==0 || wlanMode[i]==3 )) {
  for (idx=0; idx<mssid_num; idx++) {
   if (!mssid_disable[idx]) {
    document.write(' <div class="column"> <div class="column_title"> <div class="column_title_left"></div> <p>Virtual AP'+(idx+1)+' Configuration</p> <div class="column_title_right"></div> </div> <div class="data_common"> <table>');
    if(!is_wlan_qtn){
     document.write('<tr> <th width=40%>Band</th> <td width=60%>');
     if (mssid_band[idx] == 1)
         document.write( "2.4 GHz (B)");
        if (mssid_band[idx] == 2)
         document.write( "2.4 GHz (G)");
        if (mssid_band[idx] == 3)
         document.write( "2.4 GHz (B+G)");
        if (mssid_band[idx] == 4)
         document.write( "5 GHz (A)");
        if (mssid_band[idx] == 8) {
         if(Band2G5GSupport == 1)
          document.write( "2.4 GHz (N)");
         else if(Band2G5GSupport == 2)
          document.write( "5 GHz (N)");
        }
        if (mssid_band[idx] == 10)
         document.write( "2.4 GHz (G+N)");
        if (mssid_band[idx] == 11)
         document.write( "2.4 GHz (B+G+N)");
        if (mssid_band[idx] == 12)
         document.write( "5 GHz (A+N)");
     if (mssid_band[idx] == 64)
      document.write( "5 GHz (AC)");
     if (mssid_band[idx] == 72)
      document.write( "5 GHz (N+AC)");
        if (mssid_band[idx]== 76)
         document.write( "5 GHz (A+N+AC)");
     document.write('</td></tr>');
    }
    document.write('<tr> <th width=40%>SSID</th> <td width=60% class="show_space">');
    document.write(mssid_ssid_drv[idx]+'</td>');
    document.write('</tr> <tr> <th>Encryption</th> <td>'+mssid_wep[idx]+'</td>');
    document.write('</tr> <tr> <th>BSSID</th> <td>'+mssid_bssid_drv[idx]+'</td>');
    document.write('</tr> <tr> <th>Associated Clients</th> <td>'+mssid_clientnum[idx]+'</td></tr>');
    document.write('</table></div></div>');
   }
  }
 }
    if (rp_enabled[i])
    {
     document.write(' <div class="column"> <div class="column_title"> <div class="column_title_left"></div> <p>WLAN Repeater Interface Configuration</p> <div class="column_title_right"></div> </div> <div class="data_common"> <table>');
     document.write(' <tr> <th width=40%>Mode</th> <td width=60%>' );
     if(rp_mode[i] == 0)
      document.write("AP");
     else
      document.write( "Infrastructure Client");
     document.write('</td> </tr> <tr> <th>SSID</th> <td class="show_space">'+rp_ssid[i] +'</td> </tr> <tr> <th>Encryption</th> <td>'+rp_encrypt[i] +'</td> </tr> <tr> <th>BSSID</th> <td>'+rp_bssid[i] +'</td> </tr>');
     document.write('<tr >\n');
     if (rp_mode[i]==0 || rp_mode[i]==3) {
      document.write("<th>Associated Clients</th>\n");
      document.write("<td>"+rp_clientnum[i]+"</td></tr>");
     }
     else {
      document.write("<th>State</th>\n");
      document.write('<td>'+rp_state[i]+'</td></tr>');
     }
  document.write('</table></div></div>');
 }
   }
</script>
</body>
</html>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>SIP</title>
<link rel="stylesheet" href="./admin/style.css">
<link rel="stylesheet" href="./admin/reset.css" />
<link rel="stylesheet" href="./admin/base.css" />
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
<script language="javascript">
<!--
function enableAutoBypass()
{
 document.other_form.auto_bypass_warning.disabled =
  !document.other_form.auto_bypass_relay.checked;
}
function InitOther()
{
 enableAutoBypass();
}
-->
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
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
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
<body onload="InitOther()">
<INPUT id=Selected_Menu type=hidden 
										value="VoIP->VoIP History" name=Selected_Menu> 
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
							        MakeLeftMenu("VoIP",'VoIP History')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"Voice","Advanced VoIP Setup",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
								
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png" width="45" height="47" class="img_sub"  style="margin-bottom: -5px;alt="/>VoIP Other Config</h1>
										
									</div>	
                                    <hr class="margin_adjs">
 
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">

  <p>This page shows the VoIP Other Config.</p>
 </div>
 </div>
<form method="post" action="/boaform/voip_other_set" name=other_form>
<!--

<b>Function Key</b>

<table cellSpacing=1 cellPadding=2 border=0 width=450  >
<tr bgColor=#888888>
 <td colspan=2>
 <font color=#ffffff>
 Must be * + 0~9
 </font>
 </td>
</tr>
<tr style="display:none">
    <td bgColor=#aaddff width=150>Switch to PSTN</td>
 <td bgColor=#ddeeff>
  <input type=text name=funckey_pstn size=5 maxlength=2 value="*0">
  ( default: *0 )
 </td>
</tr>
<tr>
    <td bgColor=#aaddff>Call Transfer</td>
 <td bgColor=#ddeeff>
  <input type=text name=funckey_transfer size=5 maxlength=2 value="*1">
  ( default: *1 )
 </td>
</tr>
</table>-->
<br>
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">Dial Option</h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Auto Dial Time:</label>
            
                <input class="right-field" type="text" name="auto_dial" size="3" maxlength="1" value="5">
                ( 3~9 Sec, 0 is disable )
            </div>
        </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Dial-out by Hash Key:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="auto_dial_always"> Disabled
            </div>
        </div>
    </div>

<div class="column" style="display:none">
 <div class="col-md-12 form-group">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">PSTN Relay</h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Auto bypass relay:</label>
           
                <input  class="right-field" type="checkbox" name="auto_bypass_relay" onclick="enableAutoBypass()"> Enable
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Warning tone:</label>
           
                <input class="right-field" type="checkbox" name="auto_bypass_warning"> Enable
            </div>
        </div>
    </div>
</div>

 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  
 <h2 class="sub_heading " style="color:#fd7e14; width:250px">Off-Hook Alarm</h2>

 </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Off-Hook Alarm Time:</label>
         
                <input  class="right-field" type="text" name="off_hook_alarm" size="3" maxlength="2" value="10">
                ( 10~60 Sec, 0 is disable )
            </div>
        </div>
    </div>

<!--
<div class="column" style="display:none">
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">VoIP to PSTN</h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">One Stage Dialing:</label>
          
                <input class="right-field" type="checkbox" name="one_stage_dial"> Enable
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Two Stage Dialing:</label>
            
                <input class="right-field" type="checkbox" name="two_stage_dial"> Enable
            </div>
        </div>
    </div>
</div>
<div class="column" style="display:none">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">PSTN to VoIP</p>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Caller ID Auto Detection:</label>
            
                <input class="right-field" type="radio" name="caller_id_auto_det" value="0" onclick="enable_cid_det_mode()"> Off
                <input class="right-field" type="radio" name="caller_id_auto_det" value="1" onclick="enable_cid_det_mode()"> On (NTT Support)
                <input class="right-field" type="radio" name="caller_id_auto_det" value="2" onclick="enable_cid_det_mode()" checked> On (NTT Not Support)
                <input class="right-field" type="hidden" name="caller_id_test" value="hello">
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Caller ID Detection Mode:</label>
            <select name="caller_id_det" disabled class="right-field">
                <option>FSK_BELLCORE</option>
                <option>FSK_ETSI</option>
                <option>FSK_BT</option>
                <option>FSK_NTT</option>
                <option selected>DTMF</option>
            </select>
        </div>
    </div>
</div>
</div>
-->

<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14;">FXS Pulse Dial Detection</h2>
  </div>
 </div>
 
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Pulse Dial Detection:</label>
            
                <input class="right-field-radio" type="radio" name="pulse_dial_detection" value="0" checked> Disable
                <input class="right-field-radio" type="radio" name="pulse_dial_detection" value="1"> Enable
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Interdigit Pause Duration:</label>
           
                <input class="right-field" type="text" name="pulse_det_Pause" size="5" maxlength="4" value="450"> (msec)
            </div>
        </div>
    </div>
</div>
<!--
<div class="column" style="display:none">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">3G Configuration</h2>
 </div>
 </div>
 <div class="data_common">
    <div class="row" style="background-color: #808080;">
        <div class="col-md-2" style="width: 15%; text-align: center;">
            <font size="2"><b>Interface</b></font>
        </div>
        <div class="col-md-2" style="width: 15%; text-align: center;">
            <font size="2"><b>Protocol</b></font>
        </div>
        <div class="col-md-3" style="width: 25%; text-align: center;">
            <font size="2"><b>IP Address</b></font>
        </div>
        <div class="col-md-3" style="width: 25%; text-align: center;">
            <font size="2"><b>Gateway</b></font>
        </div>
        <div class="col-md-2" style="width: 20%; text-align: center;">
            <font size="2"><b>Status</b></font>
        </div>
    </div>
</div>

<div class="column" style="display:none">
    < <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">FXO Pulse Dial Generation</h2>
        </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Pulse Dial Generation:</label>
                <div class="right-field">
                    <input type="radio" name="pulse_dial_generation" value="0" checked> Disable
                    <input type="radio" name="pulse_dial_generation" value="1"> Enable
                </div>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Pulse Per Second:</label>
                <select name="pulse_gen_PPS" class="right-field">
                    <option selected>10 PPS</option>
                    <option>20 PPS</option>
                </select>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Make Duration:</label>
                <input type="text" name="pulse_gen_Make" size="5" maxlength="2" value="40" class="right-field"> (msec)
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field"></label>
                <div class="right-field">
                    <font size="2">1~99 msec for 10PPS, 1~49 msec for 20PPS</font>
                </div>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Interdigit Pause Duration:</label>
                <input type="text" name="pulse_gen_Pause" size="5" maxlength="4" value="700" class="right-field"> (msec)
            </div>
        </div>
    </div>
</div>
-->

     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">SIP setting</p>
 </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP Prack:</label>
           
                <input class="right-field-checkbox" type="checkbox" name="sip_disable_prack"> Disabled
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP Server Redundancy:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_enable_redundancy"> Enabled
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP CLIR anonymous from header:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_anonymouse_from"> Enabled
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Non-SIP INBOX call:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_internalcall"> Enabled
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Hook Flash Relay setting:</label>
            
                <select class="right-field" name="hookflash_type">
                    <option selected>NONE</option>
                    <option>SIP_INFO</option>
                </select>
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP Min-SE:</label>
            
                <input class="right-field" type="text" name="sip_mini_se" size="4" maxlength="4" value=""> (Sec)
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">user=phone:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="user_equal_phone"> Enabled
            </div>
        </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"># to %23:</label>
           
                <input class="right-field-checkbox" type="checkbox" name="pound_to_ascii"> Enabled
            </div>
        </div>
    </div>


     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">SIP OPTIONS</p>
  </div>
 </div>
   <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field">SIP OPTIONS</label>
            <input class="right-field-radio" type="radio" name="sip_option_flag" value=0 checked>Disable
            <input class="right-field-radio" type="radio" name="sip_option_flag" value=1 >Enable
        </div>
        </div>

        <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field">Options interval time</label>
        
          <input class="right-field" type="text" name="sip_option_HeartbeatCycle" size=5 maxlength=4 value="0">
    (Sec)
    </div>
    </div>
    <hr class="margin_adjs">
  <div class="col-md-12 form-group">
        <div class="custom-control">

 <input class="link_bg" type="submit" value="Apply" onclick="return check_other()">
</div>
</div>

<input type="hidden" name="postSecurityFlag" value="">
<hr class="margin_adjs">
</form>

<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">VoIP Network Config</h2>
         </div>
         </div>
         <form method="post" action="/boaform/voip_net_set" name=net_form>
         <div class="column" style="display:none">
         <div class="col-md-12 form-group">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">VoIP Interface Selection</h2>
        </div>
        </div>
        <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">VoIP Port 1:</label>
           
                <select name="voip_itf" class="right-field">
                    <option value="1">Any WAN</option>
                    <option value="2">LAN</option>
                    <option value="130816">nas0_0</option>
                    <option value="65537">ppp0</option>
                </select>
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">VoIP Port 2:</label>
         
                <select name="voip_itf_2" class="right-field">
                    <option value="1">Any WAN</option>
                    <option value="2">LAN</option>
                    <option value="130816">nas0_0</option>
                    <option value="65537">ppp0</option>
                </select>
            </div>
        </div>
    </div>
        </div>
   
        <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP DSCP:</label>
            
                <input  class="right-field" type="text" name="sipDscp" size="5" maxlength="2" value="24"> ( 0~63 )
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">RTP DSCP:</label>
            
                <input  class="right-field" type="text" name="rtpDscp" size="5" maxlength="2" value="46"> ( 0~63 )
            </div>
        </div>
    </div>
  <div class="column" style="display:none">
     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <p>VLAN Tags for Voice, Data and Video.</p>
        </div>
        </div>

        <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Use VLAN Tags:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="wanVlanEnable" onclick="enableWanVlan()"> Enable
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Voice: VLAN ID:</label>
           
                <input class="right-field" type="text" name="wanVlanIdVoice" size="5" maxlength="4" value="1"> ( 1~4090 )
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Voice: User Priority:</label>
            
                <input class="right-field" type="text" name="wanVlanPriorityVoice" size="5" maxlength="1" value="7"> ( 0~7 )
            </div>
        </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Voice: CFI:</label>
          
                <input class="right-field" type="text" name="wanVlanCfiVoice" size="5" maxlength="1" value="0"> ( 0~1 )
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Data: VLAN ID:</label>
           
                <input class="right-field" type="text" name="wanVlanIdData" size="5" maxlength="4" value="2"> ( 1~4090 )
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Data: User Priority:</label>
            
                <input class="right-field" type="text" name="wanVlanPriorityData" size="5" maxlength="1" value="0"> ( 0~7 )
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Data: CFI:</label>
          
                <input class="right-field" type="text" name="wanVlanCfiData" size="5" maxlength="1" value="0"> ( 0~1 )
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Video: VLAN ID:</label>
           
                <input class="right-field" type="text" name="wanVlanIdVideo" size="5" maxlength="4" value="3"> ( 1~4090 )
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Video: User Priority:</label>
          
                <input class="right-field" type="text" name="wanVlanPriorityVideo" size="5" maxlength="1" value="5"> ( 0~7 )
            </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Video: CFI:</label>
         
                <inputclass="right-field" type="text" name="wanVlanCfiVideo" size="5" maxlength="1" value="0"> ( 0~1 )
            </div>
        </div>
    </div>
    <p>Note I: The Video port is near the WAN port.</p>
    <p>Note II: Only support in HWNAT-disabled Mode.</p>
  </div>
</div>
  <div class="column" style="display:none">

    <div class="col-md-12 form-group">
        <div class="custom-control">
         <p>Add VLAN Tags for WAN packet</p>
         </div>
         </div>
         <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">For ALL Packets:</label>
            VLAN ID <input type="text" name="vlan_tag" size="4" maxlength="4" value="10" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_host_enable" onclick="enableVlan();"> For HOST Packets
            </label>
            VLAN ID <input type="text" name="vlan_host_tag" size="4" maxlength="4" value="20" class="right-field">
            Priority <input type="text" name="vlan_host_pri" size="1" maxlength="1" value="7" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_wifi_enable" onclick="enableVlan();"> For Wifi Root Packets
            </label>
            VLAN ID <input type="text" name="vlan_wifi_tag" size="4" maxlength="4" value="30" class="right-field">
            Priority <input type="text" name="vlan_wifi_pri" size="1" maxlength="1" value="3" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_wifi_vap0_enable" onclick="enableVlan();"> For Wifi VAP1 Packets
            </label>
            VLAN ID <input type="text" name="vlan_wifi_vap0_tag" size="4" maxlength="4" value="30" class="right-field">
            Priority <input type="text" name="vlan_wifi_vap0_pri" size="1" maxlength="1" value="3" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_wifi_vap1_enable" onclick="enableVlan();"> For Wifi VAP2 Packets
            </label>
            VLAN ID <input type="text" name="vlan_wifi_vap1_tag" size="4" maxlength="4" value="30" class="right-field">
            Priority <input type="text" name="vlan_wifi_vap1_pri" size="1" maxlength="1" value="3" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_wifi_vap2_enable" onclick="enableVlan();"> For Wifi VAP3 Packets
            </label>
            VLAN ID <input type="text" name="vlan_wifi_vap2_tag" size="4" maxlength="4" value="30" class="right-field">
            Priority <input type="text" name="vlan_wifi_vap2_pri" size="1" maxlength="1" value="3" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_wifi_vap3_enable" onclick="enableVlan();"> For Wifi VAP4 Packets
            </label>
            VLAN ID <input type="text" name="vlan_wifi_vap3_tag" size="4" maxlength="4" value="30" class="right-field">
            Priority <input type="text" name="vlan_wifi_vap3_pri" size="1" maxlength="1" value="3" class="right-field"> ( 0~7 )
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">
                <input type="checkbox" name="vlan_bridge_enable" onclick="enableVlan();"> Bridge with WAN
            </label>
            VLAN ID <input type="text" name="vlan_bridge_tag" size="4" maxlength="4" value="12" class="right-field">
            <input type="checkbox" name="vlan_bridge_multicast_enable" onclick="enableVlan();"> Multicast Packet
            VLAN ID <input type="text" name="vlan_bridge_multicast_tag" size="4" maxlength="4" value="13" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"></label>
            <input type="checkbox" name="vlan_bridge_port_0" class="right-field"> LAN Port 0
            <input type="checkbox" name="vlan_bridge_port_1" class="right-field"> LAN Port 1
            <input type="checkbox" name="vlan_bridge_port_2" class="right-field"> LAN Port 2
            <input type="checkbox" name="vlan_bridge_port_3" class="right-field"> LAN Port 3
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"></label>
            <input type="checkbox" name="vlan_bridge_port_wifi" class="right-field"> WiFi root
            <input type="checkbox" name="vlan_bridge_port_vap0" class="right-field"> VAP 1
            <input type="checkbox" name="vlan_bridge_port_vap1" class="right-field"> VAP 2
            <input type="checkbox" name="vlan_bridge_port_vap2" class="right-field"> VAP 3
            <input type="checkbox" name="vlan_bridge_port_vap3" class="right-field"> VAP 4
        </div>
    </div>
</div>
</div>

  <div class="column" style="display:none">
   <div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
        <p>Note I: The lan port 0 is near the WAN port.</p>
        <br>
        <p>Note II: VLAN ID 11 is reserved for other purpose.</p>
        </div>
        </div>
  </div>
  
  <div class="column" style="display:none">
          <div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
       <h2 class="sub_heading " style="color:#fd7e14"> Enable/Disable HW-NAT</h2>
        </div>
        </div>
     
     <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">HWNAT:</label>
         
                <select name="hwnat_enable" class="right-field">
                    <option>Disable</option>
                    <option selected>Enable</option>
                </select>
            </div>
        </div>
    </div>
   </div>

  <div class="column" style="display:none">
   
      <div class="col-md-12 form-group left-field-para" 
        <div class="custom-control">
       <h2 class="sub_heading " style="color:#fd7e14">Bandwidth Manager<h2>
       </div>
       </div>

       <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Port</label>
            <label class="left-field">Egress (unit: 64kbps)</label>
            <label class="left-field">Ingress (unit: 16kbps)</label>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">LAN Port 0</label>
            <input type="text" name="LANPort0_Bandwidth_out" size="5" maxlength="5" value="0" class="right-field">
            <input type="text" name="LANPort0_Bandwidth_in" size="5" maxlength="5" value="0" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">LAN Port 1</label>
            <input type="text" name="LANPort1_Bandwidth_out" size="5" maxlength="5" value="0" class="right-field">
            <input type="text" name="LANPort1_Bandwidth_in" size="5" maxlength="5" value="0" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">LAN Port 2</label>
            <input type="text" name="LANPort2_Bandwidth_out" size="5" maxlength="5" value="0" class="right-field">
            <input type="text" name="LANPort2_Bandwidth_in" size="5" maxlength="5" value="0" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">LAN Port 3</label>
            <input type="text" name="LANPort3_Bandwidth_out" size="5" maxlength="5" value="0" class="right-field">
            <input type="text" name="LANPort3_Bandwidth_in" size="5" maxlength="5" value="0" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">WAN Port</label>
            <input type="text" name="WANPort_Bandwidth_out" size="5" maxlength="5" value="0" class="right-field">
            <input type="text" name="WANPort_Bandwidth_in" size="5" maxlength="5" value="0" class="right-field">
        </div>
    </div>
      <div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
    <p >Note: Unlimit: 0, Egress max: 16383, Ingress max: 65535</p>
</div>
</div>
</div>

<hr class="margin_adjs">
 <div class="col-md-12 form-group form-footer text-right">
        <div class="custom-control">
 <input class="link_bg" type="submit" value="Apply" onclick="return check_network()">
</div>
</div>
         </form>

</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

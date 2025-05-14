
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
 InitOther_network()
}
-->
</script>
<script language="javascript">
    <!--
    function InitOther_network()
    {
            enableVlan();
    }
    check_network()
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
.radio_class label.left-field {
    white-space: nowrap;
    display: flex;
}
.radio_class{
    text-align: -webkit-center;
}
.radio_class label.left-field input[type="radio"] {
    margin-right: 3px;
}

.radio_class label.left-field input[type="radio"] + input[type="radio"] {
    margin-left: 20px;
}
.sip_radio_buttons label.left-field {
    display: inline-block;
    margin-right: 15px; 
}

.sip_radio_buttons input[type="radio"] {
    margin-right: 3px; 
}

.sip_radio_buttons input[type="radio"] + input[type="radio"] {
    margin-left: 20px; 
}
input[name="sip_option_flag"] {
    margin-left: 163px; 
}
.sip_radio_buttons label.left-field input[type="radio"] {
    vertical-align: middle;
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
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png" width="45" height="47" class="img_sub"  style="margin-bottom: -5px;alt="/><% multilang("2942" "LANG_VOIP_OTHER_CONFIG"); %></h1>
										
									</div>	
                                    <hr class="margin_adjs">
 
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">

  <p><% multilang("2943" "LANG_THIS_PAGE_SHOWS_THE_VOIP_OTHER_CONFIG"); %></p>
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
   <h2 class="sub_heading " style="color:#fd7e14; width:250px"><%voip_other_get("auto_dial_display_title");%></h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1071" "LANG_AUTO_DIAL_TIME"); %></label>
            
                <input class="right-field" type="text" name="auto_dial" size="3" maxlength="1" value="<%voip_other_get("auto_dial");%>">
                ( 3~9 <% multilang("583" "LANG_SEC"); %>, <% multilang("1073" "LANG_0_IS_DISABLE"); %> )
            </div>
        </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1072" "LANG_DIAL_OUT_BY_HASH_KEY"); %></label>
            
                <input class="right-field-checkbox" type="checkbox" name="auto_dial_always" <%voip_other_get("auto_dial_always");%>><% multilang("179" "LANG_DISABLED"); %>
            </div>
        </div>
    </div>

<div class="column" <%voip_other_get("display_funckey_pstn");%>>
 <div class="col-md-12 form-group">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px"><% multilang("1074" "LANG_PSTN_RELAY"); %></h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1075" "LANG_AUTO_BYPASS_RELAY"); %></label>
           
                <input  class="right-field" type="checkbox" name="auto_bypass_relay" onclick="enableAutoBypass()" <%voip_other_get("auto_bypass_relay");%>><% multilang("248" "LANG_ENABLE");%>
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1076" "LANG_WARNING_TONE");%></label>
           
                <input class="right-field" type="checkbox" name="auto_bypass_warning" <%voip_other_get("auto_bypass_warning");%>><% multilang("248" "LANG_ENABLE");%>
            </div>
        </div>
    </div>
</div>

 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  
 <h2 class="sub_heading " style="color:#fd7e14; width:250px"><%voip_other_get("off_hook_alarm_display_title");%></h2>

 </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1078" "LANG_OFF_HOOK_ALARM_TIME");%></label>
         
                <input  class="right-field" type="text" name="off_hook_alarm" size="3" maxlength="2" value="<%voip_other_get("off_hook_alarm");%>">
                ( 10~60 <% multilang("583" "LANG_SEC");%>, <% multilang("1073" "LANG_0_IS_DISABLE");%> )
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
<%voip_general_get("not_ipphone_option_start");%>
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14;"><% multilang("1085" "LANG_FXS_PULSE_DIAL_DETECTION");%></h2>
  </div>
 </div>
 <%voip_general_get("not_ipphone_option_end");%>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control radio_class">
            <label class="left-field"><%voip_other_get("pulse_dial_detection");%></label>
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1086" "LANG_INTERDIGIT_PAUSE_DURATION");%></label>
           
                <input class="right-field" type="text" name="pulse_det_Pause" size="5" maxlength="4" value="<%voip_other_get("pulse_det_Pause");%>"> (<% multilang("952" "LANG_MSEC");%>)
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
   <h2 class="sub_heading " style="color:#fd7e14; width:250px"><% multilang("1090" "LANG_SIP_SETTING");%></p>
 </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1091" "LANG_SIP_PRACK");%></label>
           
                <input class="right-field-checkbox" type="checkbox" name="sip_disable_prack" <%voip_other_get("sip_disable_prack");%>><% multilang("179" "LANG_DISABLED");%>
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1092" "LANG_SIP_SERVER_RENDUNDACY");%></label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_enable_redundancy" <%voip_other_get("sip_enable_redundancy");%>><% multilang("178" "LANG_ENABLED");%>
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1093" "LANG_SIP_CLIR_ANONYMOUSE_FROM_HEADER");%></label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_anonymouse_from" <%voip_other_get("sip_anonymouse_from");%>><% multilang("178" "LANG_ENABLED");%>
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1094" "LANG_NON_SIP_INBOX_CALL");%></label>
            
                <input class="right-field-checkbox" type="checkbox" name="sip_internalcall" <%voip_other_get("sip_internalcall");%>><% multilang("178" "LANG_ENABLED");%>
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("1095" "LANG_HOOK_FLASH_RELAY_SETTING");%>:</label>
            
                <select class="right-field" name="hookflash_type">
                    <%voip_other_get("hookflash_type");%>
                </select>
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP Min-SE:</label>
            
                <input class="right-field" type="text" name="sip_mini_se" size="4" maxlength="4" value="<%voip_other_get("sip_mini_se");%>"> (<% multilang("583" "LANG_SEC");%>)
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">user=phone:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="user_equal_phone" <%voip_other_get("user_equal_phone");%>><% multilang("178" "LANG_ENABLED");%>
            </div>
        </div>
    
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"># to %23:</label>
           
                <input class="right-field-checkbox" type="checkbox" name="pound_to_ascii" <%voip_other_get("pound_to_ascii");%>><% multilang("178" "LANG_ENABLED");%>
            </div>
        </div>
    </div>


     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px"><% multilang("1096" "LANG_SIP_OPTIONS");%></p>
  </div>
 </div>
   <div class="col-md-12 form-group">
        <div class="custom-control sip_radio_buttons">
        <label class="left-field"><% multilang("1096" "LANG_SIP_OPTIONS");%></label>
        <%voip_other_get("sip_option_flag");%>
        </div>
        </div>

        <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("1097" "LANG_OPTIONS_INTERVAL_TIME");%></label>
        
          <input class="right-field" type="text" name="sip_option_HeartbeatCycle" size=5 maxlength=4 value="<%voip_other_get("sip_option_HeartbeatCycle");%>">
          (<% multilang("583" "LANG_SEC");%>)
    </div>
    </div>
    <p><%voip_general_get("not_ipphone_option_start");%></p>
    <hr class="margin_adjs">
  <div class="col-md-12 form-group">
        <div class="custom-control">

 <input class="link_bg" type="submit" value="<% multilang("334" "LANG_APPLY");%>" onclick="return check_other()">
</div>
</div>

<input type="hidden" name="postSecurityFlag" value="">
<hr class="margin_adjs">
</form>
<!-- Networking Configuration -->
<div class="intro_main ">
    <p class="intro_title"><% multilang("2946" "LANG_VOIP_NETWORK_CONFIG"); %></p>
    <p class="intro_content"><% multilang("2947" "LANG_THIS_PAGE_SHOWS_THE_VOIP_NETWORK_CONFIG"); %></p>
   </div>
  <form method="post" action="/boaform/voip_net_set" name=net_form>
  <div class="column" <%voip_net_get("display_voip_interface_select");%>>
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>VoIP Interface Selection</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table cellSpacing=1 cellPadding=2 border=0 width=450>
     <tr>
      <td bgColor=#aaddff width=150>VoIP Port 1</td>
      <td bgColor=#ddeeff>
       <select name="voip_itf">
        <option value=1>Any WAN</option>
        <option value=2>LAN</option>
        <% if_wan_list("all"); %>
       </select>
      </td>
     </tr>
     <tr <%voip_net_get("display_voip_interface_2_select");%>>
      <td bgColor=#aaddff width=150>VoIP Port 2</td>
      <td bgColor=#ddeeff>
       <select name="voip_itf_2">
        <option value=1>Any WAN</option>
        <option value=2>LAN</option>
       <% if_wan_list("all"); %>
       </select>
      </td>
     </tr>
    </table>
   </div>
  </div>
  <!--
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>3G Configuration</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table width=600 border=0>
      <tr bgcolor="#808080">
     <td width="15%" align=center><font size=2><b>Interface</b></font></td>
     <td width="15%" align=center><font size=2><b>Protocol</b></font></td>
     <td width="25%" align=center><font size=2><b>IP Address</b></font></td>
     <td width="25%" align=center><font size=2><b>Gateway</b></font></td>
     <td width="20%" align=center><font size=2><b>Status</b></font></td>
      </tr>
    </table>
   </div>
  </div>
  -->
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
    <p><% multilang("1099" "LANG_DSCP_FLAG"); %></p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table cellSpacing=1 cellPadding=2 border=0 width=450>
     <tr>
      <td bgColor=#aaddff><% multilang("1100" "LANG_SIP_DSCP"); %></td>
      <td bgColor=#ddeeff>
      <input type=text name=sipDscp size=5 maxlength=2 value="<%voip_net_get("sipDscp"); %>">( 0~63 )
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff><% multilang("1101" "LANG_RTP_DSCP"); %></td>
      <td bgColor=#ddeeff>
      <input type=text name=rtpDscp size=5 maxlength=2 value="<%voip_net_get("rtpDscp"); %>">( 0~63 )
      </td>
     </tr>
    </table>
   </div>
  </div>
  <div class="column" <%voip_net_get("display_wanVlan");%>>
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>VLAN Tags for Voice, Data and Video.</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table>
    <tr>
     <td bgColor=#aaddff width=155>Use VLAN Tags</td>
     <td bgColor=#ddeeff width=170>
        <input type=checkbox name=wanVlanEnable onClick="enableWanVlan();" <%voip_net_get("wanVlanEnable");%>>Enable
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Voice: VLAN ID</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanIdVoice size=5 maxlength=4 value="<%voip_net_get("wanVlanIdVoice");%>">
        ( 1~4090 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Voice: User Priority</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanPriorityVoice size=5 maxlength=1 value="<%voip_net_get("wanVlanPriorityVoice");%>">
      ( 0~7 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Voice: CFI</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanCfiVoice size=5 maxlength=1 value="<%voip_net_get("wanVlanCfiVoice");%>">
      ( 0~1 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Data: VLAN ID</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanIdData size=5 maxlength=4 value="<%voip_net_get("wanVlanIdData");%>">
        ( 1~4090 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Data: User Priority</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanPriorityData size=5 maxlength=1 value="<%voip_net_get("wanVlanPriorityData");%>">
      ( 0~7 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Data: CFI</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanCfiData size=5 maxlength=1 value="<%voip_net_get("wanVlanCfiData");%>">
      ( 0~1 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Video: VLAN ID</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanIdVideo size=5 maxlength=4 value="<%voip_net_get("wanVlanIdVideo");%>">
        ( 1~4090 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Video: User Priority</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanPriorityVideo size=5 maxlength=1 value="<%voip_net_get("wanVlanPriorityVideo");%>">
      ( 0~7 )
     </td>
    </tr>
    <tr>
     <td bgColor=#aaddff>Video: CFI</td>
     <td bgColor=#ddeeff>
        <input type=text name=wanVlanCfiVideo size=5 maxlength=1 value="<%voip_net_get("wanVlanCfiVideo");%>">
      ( 0~1 )
     </td>
    </tr>
    </table>
    <p>Note I: The Video port is near the WAN port. </p>
    <p>Note II: Only support in HWNAT-disabled Mode. </p>
   </div>
  </div>
  <div class="column" <%voip_net_get("display_vlan_wan_tag");%>>
  <input type=checkbox name=vlan_enable onClick="enableVlan();" <%voip_net_get("vlan_enable");%>>Enable tag for WAN packets
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>Add VLAN Tags for WAN packet</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table>
    <tr>
    <td bgColor=#aaddff width=200>For ALL Packets</td>
    <td bgColor=#ddeeff width=150>
      VLAN ID <input type=text name=vlan_tag size=4 maxlength=4 value="<%voip_net_get("vlan_tag");%>">
    </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_host_enable onClick="enableVlan();" <%voip_net_get("vlan_host_enable");%>>For HOST Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_host_tag size=4 maxlength=4 value="<%voip_net_get("vlan_host_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_host_pri size=1 maxlength=1 value="<%voip_net_get("vlan_host_pri");%>"> ( 0~7 )
      </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_wifi_enable onClick="enableVlan();" <%voip_net_get("vlan_wifi_enable");%>>For Wifi Root Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_wifi_tag size=4 maxlength=4 value="<%voip_net_get("vlan_wifi_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_wifi_pri size=1 maxlength=1 value="<%voip_net_get("vlan_wifi_pri");%>"> ( 0~7 )
      </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_wifi_vap0_enable onClick="enableVlan();" <%voip_net_get("vlan_wifi_vap0_enable");%>>For Wifi VAP1 Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_wifi_vap0_tag size=4 maxlength=4 value="<%voip_net_get("vlan_wifi_vap0_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_wifi_vap0_pri size=1 maxlength=1 value="<%voip_net_get("vlan_wifi_vap0_pri");%>"> ( 0~7 )
      </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_wifi_vap1_enable onClick="enableVlan();" <%voip_net_get("vlan_wifi_vap1_enable");%>>For Wifi VAP2 Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_wifi_vap1_tag size=4 maxlength=4 value="<%voip_net_get("vlan_wifi_vap1_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_wifi_vap1_pri size=1 maxlength=1 value="<%voip_net_get("vlan_wifi_vap1_pri");%>"> ( 0~7 )
      </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_wifi_vap2_enable onClick="enableVlan();" <%voip_net_get("vlan_wifi_vap2_enable");%>>For Wifi VAP3 Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_wifi_vap2_tag size=4 maxlength=4 value="<%voip_net_get("vlan_wifi_vap2_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_wifi_vap2_pri size=1 maxlength=1 value="<%voip_net_get("vlan_wifi_vap2_pri");%>"> ( 0~7 )
      </td>
    </tr>
    <tr>
      <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_wifi_vap3_enable onClick="enableVlan();" <%voip_net_get("vlan_wifi_vap2_enable");%>>For Wifi VAP4 Packets
        </td>
      <td bgColor=#ddeeff width=150>
          VLAN ID <input type=text name=vlan_wifi_vap3_tag size=4 maxlength=4 value="<%voip_net_get("vlan_wifi_vap3_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
          Priority <input type=text name=vlan_wifi_vap3_pri size=1 maxlength=1 value="<%voip_net_get("vlan_wifi_vap3_pri");%>"> ( 0~7 )
      </td>
    </tr>
    </table>
    <table>
     <tr>
      <td bgColor=#aaddff width=200>
        <input type=checkbox name=vlan_bridge_enable onClick="enableVlan();" <%voip_net_get("vlan_bridge_enable");%>>Bridge with WAN
      </td>
      <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_bridge_tag size=4 maxlength=4 value="<%voip_net_get("vlan_bridge_tag");%>">
      </td>
      <td bgColor=#ddeeff width=150>
        <input type=checkbox name=vlan_bridge_multicast_enable onClick="enableVlan();" <%voip_net_get("vlan_bridge_multicast_enable");%>>Multicast Packet
      </td>
      <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_bridge_multicast_tag size=4 maxlength=4 value="<%voip_net_get("vlan_bridge_multicast_tag");%>">
      </td>
     </tr>
    </table>
    <table>
     <tr>
      <td width=200></td>
      <td bgColor=#ddeeff width=450>
        <input type=checkbox name=vlan_bridge_port_0 <%voip_net_get("vlan_bridge_port_0");%>>LAN Port 0
        <input type=checkbox name=vlan_bridge_port_1 <%voip_net_get("vlan_bridge_port_1");%>>LAN Port 1
        <input type=checkbox name=vlan_bridge_port_2 <%voip_net_get("vlan_bridge_port_2");%>>LAN Port 2
        <input type=checkbox name=vlan_bridge_port_3 <%voip_net_get("vlan_bridge_port_3");%>>LAN Port 3
      </td>
     </tr>
     <tr>
        <td width=200></td>
        <td bgColor=#ddeeff width=450>
        <input type=checkbox name=vlan_bridge_port_wifi <%voip_net_get("vlan_bridge_port_wifi");%>>WiFi root
        <input type=checkbox name=vlan_bridge_port_vap0 <%voip_net_get("vlan_bridge_port_vap0");%>>VAP 1
        <input type=checkbox name=vlan_bridge_port_vap1 <%voip_net_get("vlan_bridge_port_vap1");%>>VAP 2
        <input type=checkbox name=vlan_bridge_port_vap2 <%voip_net_get("vlan_bridge_port_vap2");%>>VAP 3
        <input type=checkbox name=vlan_bridge_port_vap3 <%voip_net_get("vlan_bridge_port_vap3");%>>VAP 4
      </td>
     </tr>
    </table>
   </div>
  </div>
  <div class="column" <%voip_net_get("display_vlan_wan_tag");%>>
   <h2>Note I: The lan port 0 is near the WAN port. </h2>
   <br>
   <h2>Note II: VLAN ID 11 is reserved for other purpose. </h2>
  </div>
  <div class="column" <%voip_net_get("display_hwnat");%>>
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>Enable/Disable HW-NAT</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table cellSpacing=1 cellPadding=2 border=0 width=375>
     <tr>
      <td bgColor=#aaddff>HWNAT</td>
      <td bgColor=#ddeeff>
      <select name=hwnat_enable>
        "<%voip_net_get("hwnat_enable");%>"
      </select>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
    </table>
   </div>
  </div>
  <div class="column" <%voip_net_get("display_bandwidth_mgr");%>>
    <div class="column_title">
     <div class="column_title_left"></div>
     <p>Bandwidth Manager</p>
     <div class="column_title_right"></div>
    </div>
    <div class="data_common">
     <table cellSpacing=1 cellPadding=2 border=0 width=450>
       <tr align=center>
       <td bgcolor=#aaddff>Port</td>
       <td bgcolor=#aaddff>Egress(unit: 64kbps)</td>
       <td bgcolor=#aaddff>Ingress(unit: 16kbps)</td>
      </tr>
      <tr align=center>
      <td bgColor=#aaddff>LAN Port 0</td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort0_Bandwidth_out size=5 maxlength=5 value="<%voip_net_get("LANPort0_Bandwidth_out");%>">
      </td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort0_Bandwidth_in size=5 maxlength=5 value="<%voip_net_get("LANPort0_Bandwidth_in");%>">
      </td>
      </tr>
      <tr align=center>
      <td bgColor=#aaddff>LAN Port 1</td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort1_Bandwidth_out size=5 maxlength=5 value="<%voip_net_get("LANPort1_Bandwidth_out");%>">
      </td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort1_Bandwidth_in size=5 maxlength=5 value="<%voip_net_get("LANPort1_Bandwidth_in");%>">
      </td>
      </tr>
      <tr align=center>
      <td bgColor=#aaddff>LAN Port 2</td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort2_Bandwidth_out size=5 maxlength=5 value="<%voip_net_get("LANPort2_Bandwidth_out");%>">
      </td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort2_Bandwidth_in size=5 maxlength=5 value="<%voip_net_get("LANPort2_Bandwidth_in");%>">
      </td>
      </tr>
      <tr align=center>
      <td bgColor=#aaddff>LAN Port 3</td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort3_Bandwidth_out size=5 maxlength=5 value="<%voip_net_get("LANPort3_Bandwidth_out");%>">
      </td>
      <td bgColor=#ddeeff>
         <input type=text name=LANPort3_Bandwidth_in size=5 maxlength=5 value="<%voip_net_get("LANPort3_Bandwidth_in");%>">
      </td>
      </tr>
      <tr align=center>
      <td bgColor=#aaddff>WAN Port</td>
      <td bgColor=#ddeeff>
         <input type=text name=WANPort_Bandwidth_out size=5 maxlength=5 value="<%voip_net_get("WANPort_Bandwidth_out");%>">
      </td>
      <td bgColor=#ddeeff>
         <input type=text name=WANPort_Bandwidth_in size=5 maxlength=5 value="<%voip_net_get("WANPort_Bandwidth_in");%>">
      </td>
      </tr>
     </table>
     <h2>Note: Unlimit: 0, Egress max: 16383, Ingress max: 65535</h2>
   </div>
  </div>
  <div style="padding:10px 0;">
   <input class="link_bg" type="submit" value="<% multilang("334" "LANG_APPLY"); %>" onclick="return check_network()">
  </div>
  <!--
       &nbsp;&nbsp;&nbsp;&nbsp;
       <input type="reset" value="<% multilang("222" "LANG_RESET"); %>">
  -->
  <input type="hidden" name="postSecurityFlag" value="">
  </form>
  <% getInfo("voip_wan_intf"); %>

</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

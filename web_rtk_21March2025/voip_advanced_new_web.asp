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
<script language="javascript" src=voip_script.js></script>
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
<style> TABLE {width:375} 

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
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}


</style>

<script language="javascript">
function t38param_click_check()
{
 document.sipform.T38MaxBuffer.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38RateMgt.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38MaxRate.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableECM.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCSignal.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCData.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableSpoof.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38DuplicateNum.disabled = !document.sipform.T38ParamEnable.checked;
}
function enable_hotline()
{
 document.sipform.hotline_number.disabled = !document.sipform.hotline_enable.checked;
}
function enable_dnd()
{
 document.sipform.dnd_from_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_from_min.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_min.disabled = !document.sipform.dnd_mode[1].checked;
}
function vad_enable()
{
 document.sipform.sid_mode.disabled = !document.sipform.useVad.checked;
 document.sipform.sid_noiselevel.disabled = (!document.sipform.sid_mode[1].checked) || (!document.sipform.useVad.checked) ;
 document.sipform.sid_noisegain.disabled = (!document.sipform.sid_mode[2].checked) || (!document.sipform.useVad.checked) ;
}
function rtcp_click_check()
{
 document.sipform.RTCPInterval.disabled = !document.sipform.useRTCP.checked;
 document.sipform.useRTCPXR.disabled = !document.sipform.useRTCP.checked;
}
function echotail_check(obj)
{
 if(parseInt(obj.value) != obj.value ||
       parseInt(obj.value) < 2 ||
       parseInt(obj.value) > 32)
    {
        alert('The acceptable range is [2-32]');
    }
}
function on_submit()
{
 postTableEncrypt(document.sipform.postSecurityFlag, document.sipform);
 document.sipform.submit();
}
</script>
</head>
<body bgcolor="#ffffff" text="#000000">
<INPUT id=Selected_Menu type=hidden 
										value="VoIP->VoIP Advanced" name=Selected_Menu> 
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
							        MakeLeftMenu("VoIP",'VoIP Advanced')
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
									  
								
							  <h1 class="heading_big bei">Advance Voice Setup</h1>	
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png" width="45" height="47" class="img_sub"  style="margin-bottom: -5px;alt="/><% multilang("2940" "LANG_VOIP_ADVANCE_CONFIG"); %></h1>
										
									</div>	
                                    <hr class="margin_adjs">
 
   <div class="col-md-12 form-group">
        <div class="custom-control">

  <p class="left-field-para"><% multilang("2941" "LANG_THIS_PAGE_SHOWS_THE_VOIP_ADVANCE_CONFIG"); %></p>
 </div>
 </div>
<form method="post" action="/boaform/voip_advanced_set" name=sipform>
<!-- QoS
<p>
<table cellSpacing=1 cellPadding=1 border=0 <%voip_advanced_get("display_voice_qos");%>>
<b><% multilang("983" "LANG_QOS"); %></b>
   <tr>
     <td bgColor=#aaddff>Voice QoS</td>
  <td bgColor=#ddeeff>
  <select name=voice_qos>
    "<%voip_advanced_get("voice_qos");%>"
  </select>
  </td>
  <td bgColor=#ddeeff></td>
 </tr>
</table>
-->
<!-- V.152 -->
<p <%voip_advanced_get("not_dect_port_option");%>>
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">V.152</h2>
        </div>
    </div>
  <div class="column_title_right"></div>

 <div class="data_common">
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">V.152</label>
            <input type="checkbox" name="useV152" size="20" <%voip_advanced_get("useV152");%> class="right-field-checkbox"><% multilang("248", "LANG_ENABLE"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">V.152 <% multilang("976", "LANG_PAYLOAD_TYPE"); %></label>
            <input type="text" name="V152_payload_type" size="20" value="<%voip_advanced_get("V152_payload_type");%>" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">V.152 <% multilang("984", "LANG_CODEC_TYPE"); %></label>
            <select name="V152_codec_type" class="right-field">
                <%voip_advanced_get("V152_codec_type_options");%>
            </select>
        </div>
    </div>
</div>
 </div>

</p>
<!-- T.38 (FAX) -->
<!-- ++T.38 config add by Jack Chan++ -->
<p <%voip_advanced_get("not_dect_port_option");%>>
<!-- style:display:none(hidden) style:display:table(show) -->
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">T.38(<% multilang("985" "LANG_FAX"); %>)</h2>
  </div>
 </div>
 <div class="data_common">
  <table <%voip_advanced_get("T38_BUILD");%>
  <div class="data_common">
<div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">T.38</label>
    <input type="checkbox" name="useT38" size=20 <%voip_advanced_get("useT38");%> class="right-field-checkbox"><% multilang("248" "LANG_ENABLE"); %>
</div>
</div>

   <!--
   <tr>
   <td bgColor=#aaddff>T.38 <% multilang("213" "LANG_PORT"); %></td>
   <td bgColor=#ddeeff><input type=text name=T38_PORT size=20 maxlength=39 value="<%voip_advanced_get("T38_PORT");%>"></td>
   <%voip_advanced_get("t38Ports");%>
   </tr>
   -->
   
   <div class="col-md-12 form-group">
    <div class="custom-control">
        <label class="left-field"><% multilang("1240", "LANG_FAX_DETECTION_MODE"); %></label>
        <select name="fax_modem_det_mode" class="right-field">
            <%voip_advanced_get("fax_modem_det_mode");%>
        </select>
    </div>
</div>
   
  </table>
 </div>

</p>
<!-- ++T.38 config add by Jack Chan++ -->
<p <%voip_advanced_get("not_dect_port_option");%>>
<!-- style:display:none(hidden) style:display:table(show) -->
<div class="column">
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">T.38(<% multilang("987" "LANG_CUSTOMIZE_PARAMETERS"); %>)</h2>
 </div>
 </div>
 <div class="data_common">
  <table <%voip_advanced_get("T38_BUILD");%>>
   <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("987", "LANG_CUSTOMIZE_PARAMETERS"); %></label>
            <input type="checkbox" name="T38ParamEnable" size="20" <%voip_advanced_get("T38ParamEnable");%> onclick="t38param_click_check()" class="right-field-checkbox"><% multilang("248", "LANG_ENABLE"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("988", "LANG_MAX_BUFFER"); %></label>
            <input type="text" name="T38MaxBuffer" size="20" maxlength="39" value="<%voip_advanced_get("T38MaxBuffer");%>" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">TCF</label>
            <select name="T38RateMgt" class="right-field">
                <%voip_advanced_get("T38RateMgt");%>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("991", "LANG_MAX_RATE"); %></label>
            <select name="T38MaxRate" class="right-field">
                <%voip_advanced_get("T38MaxRate");%>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">ECM</label>
            <input type="checkbox" name="T38EnableECM" size="20" <%voip_advanced_get("T38EnableECM");%> class="right-field-checkbox"><% multilang("248", "LANG_ENABLE"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("992", "LANG_ECC_SIGNAL"); %></label>
            <select name="T38ECCSignal" class="right-field">
                <%voip_advanced_get("T38ECCSignal");%>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("993", "LANG_ECC_DATA"); %></label>
            <select name="T38ECCData" class="right-field">
                <%voip_advanced_get("T38ECCData");%>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("994", "LANG_SPOOFING"); %></label>
            <input type="checkbox" name="T38EnableSpoof" size="20" <%voip_advanced_get("T38EnableSpoof");%> class="right-field-checkbox"><% multilang("248", "LANG_ENABLE"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("995", "LANG_PACKET_DUPLICATE_NUM"); %></label>
            <select name="T38DuplicateNum" class="right-field">
                <%voip_advanced_get("T38DuplicateNum");%>
            </select>
        </div>
    </div>
</div>
  <script language="JavaScript">
  <!--
   t38param_click_check();
  </script>
</p>
<!-- VoIP Security
<p>
<!-- style:display:none(hidden) style:display:table(show) ->
<table cellSpacing=1 cellPadding=1 border=0 <%voip_advanced_get("SRTP_BUILD");%>>
<b><% multilang("996" "LANG_VOIP_SECURITY"); %></b>
 <tr>
  <td bgColor=#aaddff><% multilang("997" "LANG_MAKE_SECRUITY_CALL"); %></td>
  <td bgColor=#ddeeff><input type=checkbox name=useSRTP size=20 <%voip_advanced_get("useSRTP");%>><% multilang("248" "LANG_ENABLE"); %></td>
 </tr>
</table>
-->
<!--
<%voip_advanced_get("not_ipphone_option_start");%>
<p>
<b><% multilang("202" "LANG_AUTHENTICATION"); %></b>
<%voip_advanced_get("not_ipphone_option_end");%>
<table cellSpacing=1 cellPadding=2 border=0 width=450 <%voip_advanced_get("not_ipphone_table");%> >
<tr>
    <td bgColor=#aaddff width=150><% multilang("1004" "LANG_OFF_HOOK_PASSWORD"); %></td>
 <td bgColor=#ddeeff>
  <input type=text name=offhook_passwd size=20 maxlength=9 value="<%voip_advanced_get("offhook_passwd");%>">
 </td>
</tr>
</table>
-->
<!-- DSP -->
  <div class="column">
    <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">DSP</h2>
   </div>
   </div>
   <div class="data_common">
    <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
     <!--
     <tr>
      <td bgColor=#aaddff width=155 rowspan=2>FXS Volume</td>
      <td bgColor=#ddeeff width=170>Handset Gain</td>
      <td bgColor=#ddeeff>
       <select name=slic_txVolumne>
          "<%voip_advanced_get("slic_txVolumne");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170>Handset Volume</td>
      <td bgColor=#ddeeff>
       <select name=slic_rxVolumne>
         "<%voip_advanced_get("slic_rxVolumne");%>"
       </select>
      </td>
     </tr>
    -->
    <tr>
    <td><% multilang("1006", "LANG_JITTER_BUFFER_CONTROL"); %></td>
    <td>
        <% multilang("1039", "LANG_MIN_DELAY"); %> (<% multilang("978", "LANG_MS"); %>):
    </td>
    <td>
        <select name="jitterDelay">
            <%voip_advanced_get("jitterDelay");%>
        </select>
    </td>
</tr>
<tr>
<td></td>
    <td>
        <% multilang("1040", "LANG_MAX_DELAY"); %> (<% multilang("978", "LANG_MS"); %>):
    </td>
    <td>
        <select name="maxDelay">
            <%voip_advanced_get("maxDelay");%>
        </select>
    </td>
</tr>
<tr>
<td></td>
    <td>
        <% multilang("1038", "LANG_OPTIMIZATION_FACTOR"); %>:
    </td>
    <td>
        <select name="jitterFactor">
            <%voip_advanced_get("jitterFactor");%>
        </select>
    </td>
</tr>
<tr>
    <td>LEC Tail Length</td>
    <td>
        <input type="text" name="echoTail" size="4" maxlength="2" value="<%voip_advanced_get("echoTail");%>" onblur="javascript:echotail_check(this)"> (ms)
    </td>
    <td>2~32 ms</td>
</tr>
<tr>
    <td>LEC</td>
    <td>
        <input type="checkbox" name="useLec" size="20" <%voip_advanced_get("useLec");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td>NLP</td>
    <td>
        <input type="checkbox" name="useNlp" size="20" <%voip_advanced_get("useNlp");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td>VAD</td>
    <td>
        <input type="checkbox" name="useVad" size="20" onClick="vad_enable()" <%voip_advanced_get("useVad");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td>VAD Amp. <% multilang("1007", "LANG_THRESHOLD"); %> (0 < Amp < 200)</td>
    <td>
        <input type="text" name="Vad_threshold" size="4" maxlength="5" value="<%voip_advanced_get("Vad_threshold");%>"> (Amp.)
    </td>
    <td></td>
</tr>
<tr>
    <td rowspan="3"><% multilang("1008", "LANG_SID_NOISE_LEVEL"); %></td>
    <td><input type="radio" name="sid_mode" value="0" onClick="vad_enable()" <%voip_advanced_get("sid_config_enable");%>><% multilang("1009", "LANG_DISABLE_CONFIGURATION"); %></td>
    <td></td>
</tr>
<tr>
    <td><input type="radio" name="sid_mode" value="1" onClick="vad_enable()" <%voip_advanced_get("sid_fixed_level");%>><% multilang("1010", "LANG_FIXED_NOISE_LEVEL"); %></td>
    <td><input type="text" name="sid_noiselevel" size="4" maxlength="3" value="<%voip_advanced_get("sid_noiselevel");%>"> (0><% multilang("1012", "LANG_VALUE"); %>>127 dBov)</td>
</tr>
<tr>
    <td><input type="radio" name="sid_mode" value="2" onClick="vad_enable()" <%voip_advanced_get("sid_adjust_level");%>><% multilang("1011", "LANG_ADJUST_NOISE_LEVEL"); %></td>
    <td><input type="text" name="sid_noisegain" size="4" maxlength="4" value="<%voip_advanced_get("sid_noisegain");%>">(-127~127 dBov, 0:<% multilang("1013", "LANG_NOT_CHANGE"); %>)</td>
</tr>
<tr>
    <td>CNG</td>
    <td>
        <input type="checkbox" name="useCng" size="20" <%voip_advanced_get("useCng");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<script language="javascript">vad_enable()</script>
<tr>
    <td>CNG <% multilang(LANG_MAX); %>. Amp. (0 < Amp < 200, 0 <% multilang("1014", "LANG_MEANS_NO_LIMIT_FOR_MAX"); %>. Amp)</td>
    <td>
        <input type="text" name="Cng_threshold" size="4" maxlength="5" value="<%voip_advanced_get("Cng_threshold");%>"> (Amp.)
    </td>
    <td></td>
</tr>
<tr>
    <td>PLC</td>
    <td>
        <input type="checkbox" name="usePLC" size="20" <%voip_advanced_get("usePLC");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td>RTCP</td>
    <td>
        <input type="checkbox" name="useRTCP" size="20" <%voip_advanced_get("useRTCP");%> onclick="rtcp_click_check();"><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td>
        <% multilang("1015", "LANG_INTERVAL"); %>: <input type="text" name="RTCPInterval" maxlength="3" size="5" value="<%voip_advanced_get("RTCPInterval");%>"> (<% multilang("583", "LANG_SEC");%>)
    </td>
</tr>
<tr <%voip_advanced_get("rtcp_xr_option");%>>
    <td>RTCP XR</td>
    <td>
        <input type="checkbox" name="useRTCPXR" size="20" <%voip_advanced_get("useRTCPXR");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<script language="javascript">rtcp_click_check();</script>
<tr>
    <td rowspan="3"><% multilang("1016", "LANG_FAX_MODEM_RFC2833_SUPPORT"); %></td>
    <td colspan="2">
        <input type="checkbox" name="useFaxModem2833Relay" size="20" <%voip_advanced_get("useFaxModem2833Relay");%>><% multilang("1017", "LANG_ENABLE_FAX_MODEM_RFC2833_RELAY_FOR_TX"); %>
    </td>
</tr>
<tr>
    <td colspan="2">
        <input type="checkbox" name="useFaxModemInbandRemoval" size="20" <%voip_advanced_get("useFaxModemInbandRemoval");%>><% multilang("1018", "LANG_ENABLE_FAX_MODEM_INBAND_REMOVAL_FOR_TX"); %>
    </td>
</tr>
<tr>
    <td colspan="2">
        <input type="checkbox" name="useFaxModem2833RxTonePlay" size="20" <%voip_advanced_get("useFaxModem2833RxTonePlay");%>><% multilang("1019", "LANG_ENABLE_FAX_MODEM_TONE_PLAY_FOR_RX"); %>
    </td>
</tr>
<tr>
    <td rowspan="4"><% multilang("1023", "LANG_SPEAKER_AGC"); %></td>
    <td>
        <input type="checkbox" name="CFuseSpeaker" size="20" onClick="enableCFSpkAGC(this.checked)" <%voip_advanced_get("CFuseSpeaker");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td><% multilang("1020", "LANG_REQUIRE_LEVEL"); %>:</td>
    <td>
        <select name="CF_spk_AGC_level">
            <%voip_advanced_get("CF_spk_AGC_level");%>
        </select>
    </td>
</tr>
<tr>
    <td><% multilang("1021", "LANG_MAX_GAIN_UP"); %>: dB</td>
    <td>
        <select name="CF_spk_AGC_up_limit">
            <%voip_advanced_get("CF_spk_AGC_up_limit");%>
        </select>
    </td>
</tr>
<tr>
    <td><% multilang("1022", "LANG_MAX_GAIN_DOWN"); %>: dB</td>
    <td>
        <select name="CF_spk_AGC_down_limit">
            <%voip_advanced_get("CF_spk_AGC_down_limit");%>
        </select>
    </td>
</tr>
<tr>
    <td rowspan="4"><% multilang("1024", "LANG_MIC_AGC"); %></td>
    <td>
        <input type="checkbox" name="CFuseMIC" size="20" onClick="enableCFMicAGC(this.checked)" <%voip_advanced_get("CFuseMIC");%>><% multilang("248", "LANG_ENABLE"); %>
    </td>
    <td></td>
</tr>
<tr>
    <td><% multilang("1020", "LANG_REQUIRE_LEVEL"); %>:</td>
    <td>
        <select name="CF_mic_AGC_level">
            <%voip_advanced_get("CF_mic_AGC_level");%>
        </select>
    </td>
</tr>
<tr>
    <td><% multilang("1021", "LANG_MAX_GAIN_UP"); %>: dB</td>
    <td>
        <select name="CF_mic_AGC_up_limit">
            <%voip_advanced_get("CF_mic_AGC_up_limit");%>
        </select>
    </td>
</tr>
<tr>
    <td><% multilang("1022", "LANG_MAX_GAIN_DOWN"); %>: dB</td>
    <td>
        <select name="CF_mic_AGC_down_limit">
            <%voip_advanced_get("CF_mic_AGC_down_limit");%>
        </select>
    </td>
</tr>
     <!-- ----------------------------------------------------------- -->
     <!-- Not IP phone option start -->
     <%voip_advanced_get("not_ipphone_option_start");%>
    <tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Caller ID Mode</td>
    <td><%voip_advanced_get("caller_id");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>FSK Date & Time Sync</td>
    <td><%voip_advanced_get("FSKdatesync");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Reverse Polarity before Caller ID</td>
    <td><%voip_advanced_get("revPolarity");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Short Ring before Caller ID</td>
    <td><%voip_advanced_get("sRing");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Dual Tone before Caller ID</td>
    <td><%voip_advanced_get("dualTone");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Caller ID Prior First Ring</td>
    <td><%voip_advanced_get("PriorRing");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Caller ID DTMF Start Digit</td>
    <td><%voip_advanced_get("cid_dtmfMode_S");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Caller ID DTMF End Digit</td>
    <td><%voip_advanced_get("cid_dtmfMode_E");%></td>
    <td></td>
</tr>
<tr <%voip_advanced_get("not_dect_port_option");%>>
    <td>Flash Time Setting (ms) [ Space:10, Min:80, Max:2000 ]</td>
    <td>
        <%voip_advanced_get("flash_hook_time");%>
    </td>
    <td></td>
</tr>
     <%voip_advanced_get("not_ipphone_option_end");%>
     <!-- not IP phone option end -->
     <!-- ----------------------------------------------------------- -->
    <!-- thlin: Gen FSK Caller ID with sw DSP only -->
    <!--
     <tr>
      <td bgColor=#aaddff>Caller ID Soft FSK Gen</td>
      <td bgColor=#ddeeff><%voip_advanced_get("SoftFskGen");%></td>
      <td bgColor=#ddeeff>Hardware caller id only support si3215/3210 slic</td>
     </tr>
    -->
    <tr>
    <td><% multilang("1035", "LANG_SPEAKER_VOICE_GAIN"); %> (dB) [ -32~31 ],<% multilang("1037", "LANG_MUTE"); %>:-32</td>
    <td>
        <input type="text" name="spk_voice_gain" size="4" maxlength="5" value="<%voip_advanced_get("spk_voice_gain");%>">
    </td>
    <td></td>
</tr>
<tr>
    <td><% multilang("1036", "LANG_MIC_VOICE_GAIN"); %> (dB) [ -32~31 ],<% multilang("1037", "LANG_MUTE"); %>:-32</td>
    <td>
        <input type="text" name="mic_voice_gain" size="4" maxlength="5" value="<%voip_advanced_get("mic_voice_gain");%>">
    </td>
    <td></td>
</tr>
    </table>
   </div>
  </div>
 <hr class="margin_adjs">

<div class="form-footer text-right">

<input  type="button" value="<% multilang("334" "LANG_APPLY"); %>" onclick="on_submit();">
</div>

<input type="hidden" name="postSecurityFlag" value="">
<script language=javascript>init();</script>
</form>

</div>
</div>
</div>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

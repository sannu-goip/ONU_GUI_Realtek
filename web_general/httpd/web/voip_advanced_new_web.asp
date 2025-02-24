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
<style> TABLE {width:375} </style>
<SCRIPT language="javascript" src="common.js"></SCRIPT>
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
 <div class="intro_main ">
  <p class="intro_title"><% multilang("2940" "LANG_VOIP_ADVANCE_CONFIG"); %></p>
  <p class="intro_content"><% multilang("2941" "LANG_THIS_PAGE_SHOWS_THE_VOIP_ADVANCE_CONFIG"); %></p>
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
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>V.152</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <td bgColor=#aaddff>V.152</td>
    <td bgColor=#ddeeff><input type=checkbox name=useV152 size=20 <%voip_advanced_get("useV152");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr>
    <td bgColor=#aaddff>V.152 <% multilang("976" "LANG_PAYLOAD_TYPE"); %></td>
    <td bgColor=#ddeeff><input type=text name=V152_payload_type size=20 value="<%voip_advanced_get("V152_payload_type");%>"></td>
   </tr>
   <tr>
    <td bgColor=#aaddff>V.152 <% multilang("984" "LANG_CODEC_TYPE"); %></td>
    <td bgColor=#ddeeff>
     <select name=V152_codec_type>
      <%voip_advanced_get("V152_codec_type_options");%>
     </select>
    </td>
   </tr>
  </table>
 </div>
</div>
</p>
<!-- T.38 (FAX) -->
<!-- ++T.38 config add by Jack Chan++ -->
<p <%voip_advanced_get("not_dect_port_option");%>>
<!-- style:display:none(hidden) style:display:table(show) -->
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>T.38(<% multilang("985" "LANG_FAX"); %>)</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table <%voip_advanced_get("T38_BUILD");%>>
   <tr>
    <td bgColor=#aaddff>T.38</td>
    <td bgColor=#ddeeff><input type=checkbox name=useT38 size=20 <%voip_advanced_get("useT38");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <!--
   <tr>
   <td bgColor=#aaddff>T.38 <% multilang("213" "LANG_PORT"); %></td>
   <td bgColor=#ddeeff><input type=text name=T38_PORT size=20 maxlength=39 value="<%voip_advanced_get("T38_PORT");%>"></td>
   <%voip_advanced_get("t38Ports");%>
   </tr>
   -->
   <tr>
    <td bgColor=#aaddff><% multilang("1240" "LANG_FAX_DETECTION_MODE"); %></td>
    <td bgColor=#ddeeff>
     <select name=fax_modem_det_mode>
      "<%voip_advanced_get("fax_modem_det_mode");%>"
     </select>
    </td>
   </tr>
  </table>
 </div>
</div>
</p>
<!-- ++T.38 config add by Jack Chan++ -->
<p <%voip_advanced_get("not_dect_port_option");%>>
<!-- style:display:none(hidden) style:display:table(show) -->
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>T.38(<% multilang("987" "LANG_CUSTOMIZE_PARAMETERS"); %>)</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table <%voip_advanced_get("T38_BUILD");%>>
   <tr>
    <td bgColor=#aaddff><% multilang("987" "LANG_CUSTOMIZE_PARAMETERS"); %></td>
    <td bgColor=#ddeeff><input type=checkbox name=T38ParamEnable size=20 <%voip_advanced_get("T38ParamEnable");%> onclick="t38param_click_check()"><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("988" "LANG_MAX_BUFFER"); %></td>
    <td bgColor=#ddeeff><input type=text name=T38MaxBuffer size=20 maxlength=39 value="<%voip_advanced_get("T38MaxBuffer");%>"></td>
   </tr>
   <tr>
    <td bgColor=#aaddff>TCF</td>
    <td bgColor=#ddeeff>
     <select name=T38RateMgt>
      <%voip_advanced_get("T38RateMgt");%>
     </select>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("991" "LANG_MAX_RATE"); %></td>
    <td bgColor=#ddeeff>
     <select name=T38MaxRate>
      <%voip_advanced_get("T38MaxRate");%>
     </select>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff>ECM</td>
    <td bgColor=#ddeeff><input type=checkbox name=T38EnableECM size=20 <%voip_advanced_get("T38EnableECM");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("992" "LANG_ECC_SIGNAL"); %></td>
    <td bgColor=#ddeeff>
     <select name=T38ECCSignal>
      <%voip_advanced_get("T38ECCSignal");%>
     </select>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("993" "LANG_ECC_DATA"); %></td>
    <td bgColor=#ddeeff>
     <select name=T38ECCData>
      <%voip_advanced_get("T38ECCData");%>
     </select>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("994" "LANG_SPOOFING"); %></td>
    <td bgColor=#ddeeff><input type=checkbox name=T38EnableSpoof size=20 <%voip_advanced_get("T38EnableSpoof");%>><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr>
    <td bgColor=#aaddff><% multilang("995" "LANG_PACKET_DUPLICATE_NUM"); %></td>
    <td bgColor=#ddeeff>
     <select name=T38DuplicateNum>
      <%voip_advanced_get("T38DuplicateNum");%>
     </select>
    </td>
   </tr>
  </table>
  <script language="JavaScript">
  <!--
   t38param_click_check();
  </script>
 </div>
</div>
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
   <div class="column_title">
    <div class="column_title_left"></div>
    <p>DSP</p>
    <div class="column_title_right"></div>
   </div>
   <div class="data_common">
    <table>
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
      <td bgColor=#aaddff width=155 rowspan=3><% multilang("1006" "LANG_JITTER_BUFFER_CONTROL"); %></td>
      <td bgColor=#ddeeff width=170>
      <% multilang("1039" "LANG_MIN_DELAY"); %> (<% multilang("978" "LANG_MS"); %>):
      </td>
      <td bgColor=#ddeeff>
      <select name=jitterDelay>
       <%voip_advanced_get("jitterDelay");%>
      </select>
      </td>
     </tr>
     <tr>
      <td bgcolor=#ddeeff width=170>
      <% multilang("1040" "LANG_MAX_DELAY"); %> (<% multilang("978" "LANG_MS"); %>):
      </td>
      <td bgColor=#ddeeff>
      <select name=maxDelay>
       <%voip_advanced_get("maxDelay");%>
      </select>
      </td>
     </tr>
     <tr>
      <td bgcolor=#ddeeff width=170>
      <% multilang("1038" "LANG_OPTIMIZATION_FACTOR"); %>:
      </td>
      <td bgColor=#ddeeff>
      <select name=jitterFactor>
       <%voip_advanced_get("jitterFactor");%>
      </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff>LEC Tail Length</td>
      <td bgColor=#ddeeff width=170>
       <input type=text name=echoTail size=4 maxlength=2 value="<%voip_advanced_get("echoTail");%>" onblur="javascript:echotail_check(this)"/> (ms)
      </td>
      <td bgColor=#ddeeff>2~32 ms</td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>LEC</td>
      <td bgColor=#ddeeff width=170>
       <input type=checkbox name=useLec size=20 <%voip_advanced_get("useLec");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>NLP</td>
      <td bgColor=#ddeeff width=170>
       <input type=checkbox name=useNlp size=20 <%voip_advanced_get("useNlp");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>VAD</td>
      <td bgColor=#ddeeff width=170>
         <input type=checkbox name=useVad size=20 onClick="vad_enable()" <%voip_advanced_get("useVad");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>VAD Amp. <% multilang("1007" "LANG_THRESHOLD"); %> (0 < Amp < 200)</td>
      <td bgColor=#ddeeff width=170>
       <input type=text name=Vad_threshold size=4 maxlength=5 value="<%voip_advanced_get("Vad_threshold");%>"> (Amp.)
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155 rowspan=3><% multilang("1008" "LANG_SID_NOISE_LEVEL"); %></td>
      <td bgColor=#ddeeff ><input type=radio name=sid_mode value=0 onClick="vad_enable()" <%voip_advanced_get("sid_config_enable");%>><% multilang("1009" "LANG_DISABLE_CONFIGURATION"); %> </td>
      <td bgColor=#ddeeff></td> <tr>
      <td bgColor=#ddeeff ><input type=radio name=sid_mode value=1 onClick="vad_enable()" <%voip_advanced_get("sid_fixed_level");%>><% multilang("1010" "LANG_FIXED_NOISE_LEVEL"); %> </td>
      <td bgColor=#ddeeff ><input type=text name=sid_noiselevel size=4 maxlength=3 value="<%voip_advanced_get("sid_noiselevel");%>"> (0><% multilang("1012" "LANG_VALUE"); %>>127 dBov) </td> <tr>
      <td bgColor=#ddeeff ><input type=radio name=sid_mode value=2 onClick="vad_enable()" <%voip_advanced_get("sid_adjust_level");%>><% multilang("1011" "LANG_ADJUST_NOISE_LEVEL"); %></td>
      <td bgColor=#ddeeff ><input type=text name=sid_noisegain size=4 maxlength=4 value="<%voip_advanced_get("sid_noisegain");%>">(-127~127 dBov, 0:<% multilang("1013" "LANG_NOT_CHANGE"); %>)</td> <tr>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>CNG</td>
      <td bgColor=#ddeeff width=170>
      <input type=checkbox name=useCng size=20 <%voip_advanced_get("useCng");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <script language=javascript>vad_enable()</script>
     <tr>
      <td bgColor=#aaddff width=155>CNG <% multilang(LANG_MAX); %>. Amp. (0 < Amp < 200, 0 <% multilang("1014" "LANG_MEANS_NO_LIMIT_FOR_MAX"); %>. Amp)</td>
      <td bgColor=#ddeeff width=170>
       <input type=text name=Cng_threshold size=4 maxlength=5 value="<%voip_advanced_get("Cng_threshold");%>"> (Amp.)
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>PLC</td>
      <td bgColor=#ddeeff width=170>
       <input type=checkbox name=usePLC size=20 <%voip_advanced_get("usePLC");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
    <!--
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-CNG</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_CNG_TDM size=20 <%voip_advanced_get("useANSTONE_CNG_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_CNG_IP size=20 <%voip_advanced_get("useANSTONE_CNG_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANS_TDM size=20 <%voip_advanced_get("useANSTONE_ANS_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANS_IP size=20 <%voip_advanced_get("useANSTONE_ANS_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSAM</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSAM_TDM size=20 <%voip_advanced_get("useANSTONE_ANSAM_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSAM_IP size=20 <%voip_advanced_get("useANSTONE_ANSAM_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSBAR</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSBAR_TDM size=20 <%voip_advanced_get("useANSTONE_ANSBAR_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSBAR_IP size=20 <%voip_advanced_get("useANSTONE_ANSBAR_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSAMBAR</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSAMBAR_TDM size=20 <%voip_advanced_get("useANSTONE_ANSAMBAR_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSAMBAR_IP size=20 <%voip_advanced_get("useANSTONE_ANSAMBAR_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELLANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELLANS_TDM size=20 <%voip_advanced_get("useANSTONE_BELLANS_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELLANS_IP size=20 <%voip_advanced_get("useANSTONE_BELLANS_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V.22ANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V22ANS_TDM size=20 <%voip_advanced_get("useANSTONE_V22ANS_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V22ANS_IP size=20 <%voip_advanced_get("useANSTONE_V22ANS_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V8bis_Cre</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V8bis_Cre_TDM size=20 <%voip_advanced_get("useANSTONE_V8bis_Cre_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V8bis_Cre_IP size=20 <%voip_advanced_get("useANSTONE_V8bis_Cre_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21flag</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21flag_TDM size=20 <%voip_advanced_get("useANSTONE_V21flag_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21flag_IP size=20 <%voip_advanced_get("useANSTONE_V21flag_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21DIS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21DIS_TDM size=20 <%voip_advanced_get("useANSTONE_V21DIS_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21DIS_IP size=20 <%voip_advanced_get("useANSTONE_V21DIS_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21DCN</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21DCN_TDM size=20 <%voip_advanced_get("useANSTONE_V21DCN_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21DCN_IP size=20 <%voip_advanced_get("useANSTONE_V21DCN_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELL202_CP</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELL202_CP_TDM size=20 <%voip_advanced_get("useANSTONE_BELL202_CP_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELL202_CP_IP size=20 <%voip_advanced_get("useANSTONE_BELL202_CP_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELL202_AP</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELL202_AP_TDM size=20 <%voip_advanced_get("useANSTONE_BELL202_AP_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELL202_AP_IP size=20 <%voip_advanced_get("useANSTONE_BELL202_AP_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21CH1</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21CH1_TDM size=20 <%voip_advanced_get("useANSTONE_V21CH1_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21CH1_IP size=20 <%voip_advanced_get("useANSTONE_V21CH1_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21CH2</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21CH2_TDM size=20 <%voip_advanced_get("useANSTONE_V21CH2_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21CH2_IP size=20 <%voip_advanced_get("useANSTONE_V21CH2_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V23</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V23_TDM size=20 <%voip_advanced_get("useANSTONE_V23_TDM");%>><% multilang("248" "LANG_ENABLE"); %> TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V23_IP size=20 <%voip_advanced_get("useANSTONE_V23_IP");%>><% multilang("248" "LANG_ENABLE"); %> IP
      </td>
     </tr>
    -->
     <tr>
      <td bgColor=#aaddff width=155>RTCP</td>
      <td bgColor=#ddeeff width=170>
       <input type=checkbox name=useRTCP size=20 <%voip_advanced_get("useRTCP");%> onclick="rtcp_click_check();"><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff>
       <% multilang("1015" "LANG_INTERVAL"); %>: <input type=text name=RTCPInterval maxlength=3 size=5 value=<%voip_advanced_get("RTCPInterval");%>> (<% multilang("583" "LANG_SEC");%>)
      </td>
     </tr>
     <tr <%voip_advanced_get("rtcp_xr_option");%>>
      <td bgColor=#aaddff width=155>RTCP XR</td>
      <td bgColor=#ddeeff width=170>
       <input type=checkbox name=useRTCPXR size=20 <%voip_advanced_get("useRTCPXR");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <script language=javascript>rtcp_click_check();</script>
     <tr>
     <td bgColor=#aaddff width=155 rowspan=3><% multilang("1016" "LANG_FAX_MODEM_RFC2833_SUPPORT"); %></td>
      <td bgColor=#ddeeff width=140 colspan=2>
       <input type=checkbox name=useFaxModem2833Relay size=20 <%voip_advanced_get("useFaxModem2833Relay");%>><% multilang("1017" "LANG_ENABLE_FAX_MODEM_RFC2833_RELAY_FOR_TX"); %>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=140 colspan=2>
       <input type=checkbox name=useFaxModemInbandRemoval size=20 <%voip_advanced_get("useFaxModemInbandRemoval");%>><% multilang("1018" "LANG_ENABLE_FAX_MODEM_INBAND_REMOVAL_FOR_TX"); %>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=140 colspan=2>
       <input type=checkbox name=useFaxModem2833RxTonePlay size=20 <%voip_advanced_get("useFaxModem2833RxTonePlay");%>><% multilang("1019" "LANG_ENABLE_FAX_MODEM_TONE_PLAY_FOR_RX"); %>
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155 rowspan=4><% multilang("1023" "LANG_SPEAKER_AGC"); %></td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=CFuseSpeaker size=20 onClick="enableCFSpkAGC(this.checked)" <%voip_advanced_get("CFuseSpeaker");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1020" "LANG_REQUIRE_LEVEL"); %>:</td>
      <td bgColor=#ddeeff>
       <select name=CF_spk_AGC_level>
          "<%voip_advanced_get("CF_spk_AGC_level");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1021" "LANG_MAX_GAIN_UP"); %>: dB</td>
      <td bgColor=#ddeeff>
       <select name=CF_spk_AGC_up_limit>
          "<%voip_advanced_get("CF_spk_AGC_up_limit");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1022" "LANG_MAX_GAIN_DOWN"); %>: dB</td>
      <td bgColor=#ddeeff>
       <select name=CF_spk_AGC_down_limit>
         "<%voip_advanced_get("CF_spk_AGC_down_limit");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155 rowspan=4><% multilang("1024" "LANG_MIC_AGC"); %></td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=CFuseMIC size=20 onClick="enableCFMicAGC(this.checked)" <%voip_advanced_get("CFuseMIC");%>><% multilang("248" "LANG_ENABLE"); %>
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1020" "LANG_REQUIRE_LEVEL"); %>:</td>
      <td bgColor=#ddeeff>
       <select name=CF_mic_AGC_level>
          "<%voip_advanced_get("CF_mic_AGC_level");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1021" "LANG_MAX_GAIN_UP"); %>: dB</td>
      <td bgColor=#ddeeff>
       <select name=CF_mic_AGC_up_limit>
          "<%voip_advanced_get("CF_mic_AGC_up_limit");%>"
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170><% multilang("1022" "LANG_MAX_GAIN_DOWN"); %>: dB</td>
      <td bgColor=#ddeeff>
       <select name=CF_mic_AGC_down_limit>
         "<%voip_advanced_get("CF_mic_AGC_down_limit");%>"
       </select>
      </td>
     </tr>
     <!-- ----------------------------------------------------------- -->
     <!-- Not IP phone option start -->
     <%voip_advanced_get("not_ipphone_option_start");%>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Caller ID Mode</td>
      <td bgColor=#ddeeff><%voip_advanced_get("caller_id");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>FSK Date & Time Sync</td>
      <td bgColor=#ddeeff><%voip_advanced_get("FSKdatesync");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Reverse Polarity before Caller ID</td>
      <td bgColor=#ddeeff><%voip_advanced_get("revPolarity");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Short Ring before Caller ID</td>
      <td bgColor=#ddeeff><%voip_advanced_get("sRing");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Dual Tone before Caller ID</td>
      <td bgColor=#ddeeff><%voip_advanced_get("dualTone");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Caller ID Prior First Ring</td>
      <td bgColor=#ddeeff><%voip_advanced_get("PriorRing");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Caller ID DTMF Start Digit</td>
      <td bgColor=#ddeeff><%voip_advanced_get("cid_dtmfMode_S");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff>Caller ID DTMF End Digit</td>
      <td bgColor=#ddeeff><%voip_advanced_get("cid_dtmfMode_E");%></td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr <%voip_advanced_get("not_dect_port_option");%>>
      <td bgColor=#aaddff width=155>Flash Time Setting (ms) [ Space:10, Min:80, Max:2000 ]</td>
      <td bgColor=#ddeeff width=170>
      <%voip_advanced_get("flash_hook_time");%>
      </td>
      <td bgColor=#ddeeff></td>
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
      <td bgColor=#aaddff width=155><% multilang("1035" "LANG_SPEAKER_VOICE_GAIN"); %> (dB) [ -32~31 ],<% multilang("1037" "LANG_MUTE"); %>:-32</td>
      <td bgColor=#ddeeff width=170>
       <input type=text name=spk_voice_gain size=4 maxlength=5 value="<%voip_advanced_get("spk_voice_gain");%>">
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155><% multilang("1036" "LANG_MIC_VOICE_GAIN"); %> (dB) [ -32~31 ],<% multilang("1037" "LANG_MUTE"); %>:-32</td>
      <td bgColor=#ddeeff width=170>
       <input type=text name=mic_voice_gain size=4 maxlength=5 value="<%voip_advanced_get("mic_voice_gain");%>">
      </td>
      <td bgColor=#ddeeff></td>
     </tr>
    </table>
   </div>
  </div>
<div style="padding:10px 0;">
<input class="link_bg" type="button" value="<% multilang("334" "LANG_APPLY"); %>" onclick="on_submit();">
</div>
<input type="hidden" name="postSecurityFlag" value="">
<script language=javascript>init();</script>
</form>
</body>
</html>

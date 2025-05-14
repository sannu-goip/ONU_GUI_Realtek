<% SendWebHeadStr();%>
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
<SCRIPT language="javascript" src="common.js"></SCRIPT>
<style>
TABLE {width:375} 
.link_bg{
  float: right;
  margin-right: 20px;
}

/* Column Title Styling */
.column_title {
  display: flex;
  align-items: center;
  height: 30px;
}
.table_width table tr td:first-child{
  width: 40%;
}
.column_title p {
  padding: 25px 15px;
    font-size: 20px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 10px;
    font-weight: 300;
}
.column_title1 b{
  margin-left: -34px;
}
.input_radio input[type="radio"] {
  margin-top: -4px;
}
.column_title_left, .column_title_right {
  width: 5px;
}

/* Common Data Section */
.data_common {
  padding: 10px;
}

/* Table Styling */
table {
  width: 100%;
  border-collapse: collapse;
}

table tr {
 
}

table tr:last-child {
  
}
td{
  background-color: white;
}
table th, table td {
  padding: 8px;
  text-align: left;
  vertical-align: middle;
}
tr td:first-child{
  width: 40%;
}
table th {
  width: 40%;
  font-weight: normal;
  
  font-size: 13px;
}

input[type="radio"]{
  vertical-align: text-bottom !important;
}

/* Section Headers */
h1 {
  color: #ff6600;
  font-size: 20px;
  margin-top: 0;
  margin-bottom: 10px;
  font-weight: normal;
}

h2 {
  color: #ff6600;
  font-size: 18px;
  margin-top: 20px;
  margin-bottom: 10px;
  
  padding-bottom: 5px;
}

/* Radio Buttons */
input[type="radio"] {
  margin-right: 5px;
  vertical-align: middle;
}

/* Main Sections like ACS, Connection Request, etc. */
.section {
  
}

/* Line under main titles */
.separator {
  
 
}
.data_common1 {
  margin-bottom: 15px;
}

/* Table Layout */
.data_common table {
  border-collapse: collapse;
  width: 100%;
  table-layout: fixed;
}

/* First RTP Redundant Table */
.data_common1 table:first-child {
  margin-bottom: 10px;
}

.data_common1 table:first-child td:first-child {
  width: 120px;
  padding: 6px;
  vertical-align: middle;
}

.data_common1 table:first-child td {
  padding: 6px;
  vertical-align: middle;
}

/* Precedence Table */
.data_common_notitle1 table tr td {
  padding: 6px;
  text-align: center;
  vertical-align: middle;
}

.data_common_notitle1 table tr td[rowspan="2"],
.data_common_notitle1 table tr td[rowspan="3"] {
  vertical-align: middle;
  text-align: center;
}

/* Type Column */
.data_common_notitle1 table tr td:first-child {
  width: 85px;
  text-align: left;
  padding-left: 10px;
}

/* Packetization Column */
.data_common_notitle1 table tr td:nth-child(2) {
  width: 85px;
}

/* Checkboxes Alignment */
.data_common_notitle1 input[type="checkbox"] {
  margin: 0;
  vertical-align: middle;
}

/* Select Boxes */
.data_common1 select {
  padding: 1px;
  width: 100px;
}

.data_common1 input[type="text"] {
  padding: 1px;
  width: 100px;
}

/* Option Table */
.data_common_notitle1 table:last-child td:first-child {
  
  vertical-align: middle;
}

.data_common_notitle1 table:last-child td {
  padding: 6px;
  text-align: left;
}

/* G726 and G723 Options */
.data_common_notitle1 table:last-child select {
  width: 62px;
}
.codec_table {
  border-collapse: collapse;
  border: 1px solid #ccc; 
}
.codec_table th, .codec_table td{
  border: 1px solid #ccc; 
  background-color: #ebeced;
  text-align: center;
}
.codec_table td input {
    text-align: center; /* Centers the text inside the input field */
    display: block; /* Ensures the input is treated as a block element */
    margin: 0 auto; /* Centers the input element horizontally within the <td> */
}
.codec_table tr:first-child{
  font-weight: bold;
  background-color: #f2f2f2 !important;
}
</style>
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
 InitOther1();
}
-->
</script>
<!-- voip_network -->

<script language="javascript">
  <!--
  function InitOther1()
  {
          enableVlan();
  }
  check_network()
  -->
  </script>
</head>
<body bgcolor="#ffffff" text="#000000" onload="InitOther()">
<div class="breadcrum_box"> <ul><li><a href="#">Voice</a></li><li>Voice Other</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

  <div class="intro_main ">
  <div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/voip.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title"><% multilang("2942" "LANG_VOIP_OTHER_CONFIG"); %></p></div></div>

  <p class="intro_content"><% multilang("2943" "LANG_THIS_PAGE_SHOWS_THE_VOIP_OTHER_CONFIG"); %></p>
 </div>
<form method="post" action="/boaform/voip_other_set" name=other_form>
<!--
<%voip_general_get("not_ipphone_option_start");%>
<b><% multilang("1064" "LANG_FUNCTION_KEY"); %></b>
<%voip_general_get("not_ipphone_option_end");%>
<table cellSpacing=1 cellPadding=2 border=0 width=450 <%voip_general_get("not_ipphone_table");%> >
<tr bgColor=#888888>
 <td colspan=2>
 <font color=#ffffff>
 <% multilang("1065" "LANG_MUST_BE"); %> * + 0~9
 </font>
 </td>
</tr>
<tr <%voip_other_get("display_funckey_pstn");%>>
    <td bgColor=#aaddff width=150><% multilang("1066" "LANG_SWITCH_TO_PSTN"); %></td>
 <td bgColor=#ddeeff>
  <input type=text name=funckey_pstn size=5 maxlength=2 value="<%voip_other_get("funckey_pstn");%>">
  ( default: *0 )
 </td>
</tr>
<tr>
    <td bgColor=#aaddff><% multilang("1067" "LANG_CALL_TRANSFER"); %></td>
 <td bgColor=#ddeeff>
  <input type=text name=funckey_transfer size=5 maxlength=2 value="<%voip_other_get("funckey_transfer");%>">
  ( <% multilang("1069" "LANG_DEFAULT"); %>: *1 )
 </td>
</tr>
</table>-->
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p style="margin-left: -32px;"><%voip_other_get("auto_dial_display_title");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table <%voip_other_get("auto_dial_display");%>>
    <tr>
    <td bgColor=#aaddff width=150><% multilang("1071" "LANG_AUTO_DIAL_TIME"); %></td>
    <td bgColor=#ddeeff>
     <input type=text name=auto_dial size=3 maxlength=1 value="<%voip_other_get("auto_dial");%>">
     ( 3~9 <% multilang("583" "LANG_SEC"); %>, <% multilang("1073" "LANG_0_IS_DISABLE"); %> )
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1072" "LANG_DIAL_OUT_BY_HASH_KEY"); %></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=auto_dial_always <%voip_other_get("auto_dial_always");%>><% multilang("179" "LANG_DISABLED"); %>
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="column" <%voip_other_get("display_funckey_pstn");%>>
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1074" "LANG_PSTN_RELAY"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1075" "LANG_AUTO_BYPASS_RELAY"); %></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=auto_bypass_relay onclick=enableAutoBypass() <%voip_other_get("auto_bypass_relay");%>><% multilang("248" "LANG_ENABLE");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1076" "LANG_WARNING_TONE");%></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=auto_bypass_warning <%voip_other_get("auto_bypass_warning");%>><% multilang("248" "LANG_ENABLE");%>
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p style="margin-left: -32px;"><%voip_other_get("off_hook_alarm_display_title");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table <%voip_other_get("off_hook_alarm_display");%>>
  <tr>
   <td bgColor=#aaddff width=150><% multilang("1078" "LANG_OFF_HOOK_ALARM_TIME");%></td>
   <td bgColor=#ddeeff>
    <input type=text name=off_hook_alarm size=3 maxlength=2 value="<%voip_other_get("off_hook_alarm");%>">
    ( 10~60 <% multilang("583" "LANG_SEC");%>, <% multilang("1073" "LANG_0_IS_DISABLE");%> )
   </td>
  </tr>
  </table>
 </div>
</div>
<!--
<div class="column" <%voip_other_get("display_cid_det");%>>
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1079" "LANG_VOIP_TO_PSTN");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
  <tr bgColor=#888888>
   <td bgColor=#aaddff width=150><% multilang("1080" "LANG_ONE_STAGE_DIALING");%></td>
   <td bgColor=#ddeeff>
    <input type=checkbox name=one_stage_dial <%voip_other_get("one_stage_dial");%>>Enable
   </td>
  </tr>
  <tr bgColor=#888888>
   <td bgColor=#aaddff width=150><% multilang("1081" "LANG_TWO_STAGE_DIALING");%></td>
   <td bgColor=#ddeeff>
    <input type=checkbox name=two_stage_dial <%voip_other_get("two_stage_dial");%>>Enable
   </td>
  </tr>
  </table>
 </div>
</div>
<div class="column" <%voip_other_get("display_cid_det");%>>
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1082" "LANG_PSTN_TO_VOIP");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr bgColor=#888888>
    <td bgColor=#aaddff width=150><% multilang("1083" "LANG_CALLER_ID_AUTO_DETECTION");%></td>
    <td bgColor=#ddeeff><%voip_other_get("caller_id_auto_det");%></td>
    <input type=hidden name=caller_id_test value=hello>
   </tr>
   <tr bgColor=#888888>
    <td bgColor=#aaddff width=150><% multilang("1084" "LANG_CALLER_ID_DETECTION_MODE");%></td>
    <td bgColor=#ddeeff><%voip_other_get("caller_id_det");%></td>
   </tr>
  </table>
 </div>
</div>
-->
<%voip_general_get("not_ipphone_option_start");%>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1085" "LANG_FXS_PULSE_DIAL_DETECTION");%></p>
  <div class="column_title_right"></div>
 </div>
 <%voip_general_get("not_ipphone_option_end");%>
 <div class="data_common">
  <table <%voip_general_get("not_ipphone_table");%> >
   <tr>
    <td></td>
    <td bgColor=#aaddff>
     <%voip_other_get("pulse_dial_detection");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1086" "LANG_INTERDIGIT_PAUSE_DURATION");%></td>
    <td bgColor=#ddeeff>
     <input type=text name=pulse_det_Pause size=5 maxlength=4 value="<%voip_other_get("pulse_det_Pause");%>">
     (<% multilang("952" "LANG_MSEC");%>)
    </td>
   </tr>
  </table>
 </div>
</div>
<!--
<div class="column" <%voip_other_get("display_pulse_dial_gen");%>>
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
<div class="column" <%voip_other_get("display_pulse_dial_gen");%>>
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1087" "LANG_FXO_PULSE_DIAL_GENERATION");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
 <table>
  <tr>
  <td bgColor=#aaddff>
   <%voip_other_get("pulse_dial_generation");%>
  </td>
  </tr>
  <tr>
  <td bgColor=#aaddff width=150><% multilang("1088" "LANG_PULSE_PER_SECOND");%></td>
  <td bgColor=#ddeeff>
   <select name=pulse_gen_PPS>
   <%voip_other_get("pulse_gen_PPS");%>
   </select>
  </td>
  </tr>
  <tr>
   <td bgColor=#aaddff rowspan=2><% multilang("1098" "LANG_MAKE_DURATION");%></td>
   <td bgColor=#ddeeff>
   <input type=text name=pulse_gen_Make size=5 maxlength=2 value="<%voip_other_get("pulse_gen_Make");%>">
   (<% multilang("952" "LANG_MSEC");%>)
  </td>
  </tr>
  <tr>
   <td bgColor=#ddeeff><font size=2><% multilang("1089" "LANG_1_99_MSEC_FOR_10PPS_1_49_MSEC_FOR_20PPS");%></font>
   </td>
  </tr>
  <tr>
  <td bgColor=#aaddff width=150><% multilang("1086" "LANG_INTERDIGIT_PAUSE_DURATION");%></td>
  <td bgColor=#ddeeff>
   <input type=text name=pulse_gen_Pause size=5 maxlength=4 value="<%voip_other_get("pulse_gen_Pause");%>">
   (<% multilang("952" "LANG_MSEC");%>)
  </td>
  </tr>
 </table>
 </div>
</div>
-->
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1090" "LANG_SIP_SETTING");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table cellSpacing=1 cellPadding=2 border=0 width=450 >
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1091" "LANG_SIP_PRACK");%></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=sip_disable_prack <%voip_other_get("sip_disable_prack");%>><% multilang("179" "LANG_DISABLED");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1092" "LANG_SIP_SERVER_RENDUNDACY");%></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=sip_enable_redundancy <%voip_other_get("sip_enable_redundancy");%>><% multilang("178" "LANG_ENABLED");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1093" "LANG_SIP_CLIR_ANONYMOUSE_FROM_HEADER");%></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=sip_anonymouse_from <%voip_other_get("sip_anonymouse_from");%>><% multilang("178" "LANG_ENABLED");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1094" "LANG_NON_SIP_INBOX_CALL");%></td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=sip_internalcall <%voip_other_get("sip_internalcall");%>><% multilang("178" "LANG_ENABLED");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150><% multilang("1095" "LANG_HOOK_FLASH_RELAY_SETTING");%>:</td>
      <td bgColor=#ddeeff>
      <select name=hookflash_type>
       <%voip_other_get("hookflash_type");%>
      </select>
     </td>
   </tr>
   <tr>
       <td bgColor=#aaddff width=150>SIP Min-SE</td>
     <td bgColor=#ddeeff>
      <input type=text name=sip_mini_se size=4 maxlength=4 value="<%voip_other_get("sip_mini_se");%>">
      (<% multilang("583" "LANG_SEC");%>)
     </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150>user=phone</td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=user_equal_phone <%voip_other_get("user_equal_phone");%>><% multilang("178" "LANG_ENABLED");%>
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=150># to %23</td>
    <td bgColor=#ddeeff>
     <input type=checkbox name=pound_to_ascii <%voip_other_get("pound_to_ascii");%>><% multilang("178" "LANG_ENABLED");%>
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("1096" "LANG_SIP_OPTIONS");%></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table cellSpacing=1 cellPadding=2 border=0 width=450>
   <tr>
    <td></td>
   <td bgColor=#aaddff>
    <%voip_other_get("sip_option_flag");%>
   </td>
   </tr>
   <tr>
   <td bgColor=#aaddff width=150><% multilang("1097" "LANG_OPTIONS_INTERVAL_TIME");%></td>
   <td bgColor=#ddeeff>
    <input type=text name=sip_option_HeartbeatCycle size=5 maxlength=4 value="<%voip_other_get("sip_option_HeartbeatCycle");%>">
    (<% multilang("583" "LANG_SEC");%>)
   </td>
   </tr>
  </table>
 </div>
</div>
<p><%voip_general_get("not_ipphone_option_start");%></p>
<div style="padding:10px 0;">
 <input class="link_bg" type="submit" value="<% multilang("334" "LANG_APPLY");%>" onclick="return check_other()">
</div>
<%voip_general_get("not_ipphone_option_end");%>
<input type="hidden" name="postSecurityFlag" value="">
</form>

<!-- voip_network -->
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
</body>
</html>

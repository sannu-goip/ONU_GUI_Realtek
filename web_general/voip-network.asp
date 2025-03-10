
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
<script language="javascript">
<!--
function InitOther()
{
        enableVlan();
}
check_network()
-->
</script>
</head>
<body bgcolor="#ffffff" text="#000000" onload="InitOther()">
 <div class="intro_main ">
  <p class="intro_title">VoIP Network Config</p>
  <p class="intro_content">This page shows the VoIP Network Config.</p>
 </div>
<form method="post" action="/boaform/voip_net_set" name=net_form>
<div class="column" style="display:none">
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
      <option value=130816>nas0_0</option>
<option value=65537>ppp0</option>

     </select>
    </td>
   </tr>
   <tr >
    <td bgColor=#aaddff width=150>VoIP Port 2</td>
    <td bgColor=#ddeeff>
     <select name="voip_itf_2">
      <option value=1>Any WAN</option>
      <option value=2>LAN</option>
     <option value=130816>nas0_0</option>
<option value=65537>ppp0</option>

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
  <p>DSCP Flag</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table cellSpacing=1 cellPadding=2 border=0 width=450>
   <tr>
    <td bgColor=#aaddff>SIP DSCP</td>
    <td bgColor=#ddeeff>
    <input type=text name=sipDscp size=5 maxlength=2 value="24">( 0~63 )
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff>RTP DSCP</td>
    <td bgColor=#ddeeff>
    <input type=text name=rtpDscp size=5 maxlength=2 value="46">( 0~63 )
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="column" style="display:none">
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
      <input type=checkbox name=wanVlanEnable onClick="enableWanVlan();" >Enable
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Voice: VLAN ID</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanIdVoice size=5 maxlength=4 value="1">
      ( 1~4090 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Voice: User Priority</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanPriorityVoice size=5 maxlength=1 value="7">
    ( 0~7 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Voice: CFI</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanCfiVoice size=5 maxlength=1 value="0">
    ( 0~1 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Data: VLAN ID</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanIdData size=5 maxlength=4 value="2">
      ( 1~4090 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Data: User Priority</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanPriorityData size=5 maxlength=1 value="0">
    ( 0~7 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Data: CFI</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanCfiData size=5 maxlength=1 value="0">
    ( 0~1 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Video: VLAN ID</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanIdVideo size=5 maxlength=4 value="3">
      ( 1~4090 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Video: User Priority</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanPriorityVideo size=5 maxlength=1 value="5">
    ( 0~7 )
   </td>
  </tr>
  <tr>
   <td bgColor=#aaddff>Video: CFI</td>
   <td bgColor=#ddeeff>
      <input type=text name=wanVlanCfiVideo size=5 maxlength=1 value="0">
    ( 0~1 )
   </td>
  </tr>
  </table>
  <p>Note I: The Video port is near the WAN port. </p>
  <p>Note II: Only support in HWNAT-disabled Mode. </p>
 </div>
</div>
<div class="column" style="display:none">
<input type=checkbox name=vlan_enable onClick="enableVlan();" >Enable tag for WAN packets
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
    VLAN ID <input type=text name=vlan_tag size=4 maxlength=4 value="10">
  </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_host_enable onClick="enableVlan();" >For HOST Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_host_tag size=4 maxlength=4 value="20">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_host_pri size=1 maxlength=1 value="7"> ( 0~7 )
    </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_wifi_enable onClick="enableVlan();" >For Wifi Root Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_wifi_tag size=4 maxlength=4 value="30">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_wifi_pri size=1 maxlength=1 value="3"> ( 0~7 )
    </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_wifi_vap0_enable onClick="enableVlan();" >For Wifi VAP1 Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_wifi_vap0_tag size=4 maxlength=4 value="30">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_wifi_vap0_pri size=1 maxlength=1 value="3"> ( 0~7 )
    </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_wifi_vap1_enable onClick="enableVlan();" >For Wifi VAP2 Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_wifi_vap1_tag size=4 maxlength=4 value="30">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_wifi_vap1_pri size=1 maxlength=1 value="3"> ( 0~7 )
    </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_wifi_vap2_enable onClick="enableVlan();" >For Wifi VAP3 Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_wifi_vap2_tag size=4 maxlength=4 value="30">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_wifi_vap2_pri size=1 maxlength=1 value="3"> ( 0~7 )
    </td>
  </tr>
  <tr>
    <td bgColor=#aaddff width=200>
    <input type=checkbox name=vlan_wifi_vap3_enable onClick="enableVlan();" >For Wifi VAP4 Packets
      </td>
    <td bgColor=#ddeeff width=150>
        VLAN ID <input type=text name=vlan_wifi_vap3_tag size=4 maxlength=4 value="30">
    </td>
    <td bgColor=#ddeeff width=150>
        Priority <input type=text name=vlan_wifi_vap3_pri size=1 maxlength=1 value="3"> ( 0~7 )
    </td>
  </tr>
  </table>
  <table>
   <tr>
    <td bgColor=#aaddff width=200>
      <input type=checkbox name=vlan_bridge_enable onClick="enableVlan();" >Bridge with WAN
    </td>
    <td bgColor=#ddeeff width=150>
      VLAN ID <input type=text name=vlan_bridge_tag size=4 maxlength=4 value="12">
    </td>
    <td bgColor=#ddeeff width=150>
      <input type=checkbox name=vlan_bridge_multicast_enable onClick="enableVlan();" >Multicast Packet
    </td>
    <td bgColor=#ddeeff width=150>
      VLAN ID <input type=text name=vlan_bridge_multicast_tag size=4 maxlength=4 value="13">
    </td>
   </tr>
  </table>
  <table>
   <tr>
    <td width=200></td>
    <td bgColor=#ddeeff width=450>
      <input type=checkbox name=vlan_bridge_port_0 >LAN Port 0
      <input type=checkbox name=vlan_bridge_port_1 >LAN Port 1
      <input type=checkbox name=vlan_bridge_port_2 >LAN Port 2
      <input type=checkbox name=vlan_bridge_port_3 >LAN Port 3
    </td>
   </tr>
   <tr>
      <td width=200></td>
      <td bgColor=#ddeeff width=450>
      <input type=checkbox name=vlan_bridge_port_wifi >WiFi root
      <input type=checkbox name=vlan_bridge_port_vap0 >VAP 1
      <input type=checkbox name=vlan_bridge_port_vap1 >VAP 2
      <input type=checkbox name=vlan_bridge_port_vap2 >VAP 3
      <input type=checkbox name=vlan_bridge_port_vap3 >VAP 4
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="column" style="display:none">
 <h2>Note I: The lan port 0 is near the WAN port. </h2>
 <br>
 <h2>Note II: VLAN ID 11 is reserved for other purpose. </h2>
</div>
<div class="column" style="display:none">
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
      "<option>Disable</option><option selected>Enable</option>"
    </select>
    </td>
    <td bgColor=#ddeeff></td>
   </tr>
  </table>
 </div>
</div>
<div class="column" style="display:none">
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
       <input type=text name=LANPort0_Bandwidth_out size=5 maxlength=5 value="0">
    </td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort0_Bandwidth_in size=5 maxlength=5 value="0">
    </td>
    </tr>
    <tr align=center>
    <td bgColor=#aaddff>LAN Port 1</td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort1_Bandwidth_out size=5 maxlength=5 value="0">
    </td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort1_Bandwidth_in size=5 maxlength=5 value="0">
    </td>
    </tr>
    <tr align=center>
    <td bgColor=#aaddff>LAN Port 2</td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort2_Bandwidth_out size=5 maxlength=5 value="0">
    </td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort2_Bandwidth_in size=5 maxlength=5 value="0">
    </td>
    </tr>
    <tr align=center>
    <td bgColor=#aaddff>LAN Port 3</td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort3_Bandwidth_out size=5 maxlength=5 value="0">
    </td>
    <td bgColor=#ddeeff>
       <input type=text name=LANPort3_Bandwidth_in size=5 maxlength=5 value="0">
    </td>
    </tr>
    <tr align=center>
    <td bgColor=#aaddff>WAN Port</td>
    <td bgColor=#ddeeff>
       <input type=text name=WANPort_Bandwidth_out size=5 maxlength=5 value="0">
    </td>
    <td bgColor=#ddeeff>
       <input type=text name=WANPort_Bandwidth_in size=5 maxlength=5 value="0">
    </td>
    </tr>
   </table>
   <h2>Note: Unlimit: 0, Egress max: 16383, Ingress max: 65535</h2>
 </div>
</div>
<div style="padding:10px 0;">
 <input class="link_bg" type="submit" value="Apply" onclick="return check_network()">
</div>
<!--
     &nbsp;&nbsp;&nbsp;&nbsp;
     <input type="reset" value="Reset">
-->
<input type="hidden" name="postSecurityFlag" value="">
</form>

</body>
</html>

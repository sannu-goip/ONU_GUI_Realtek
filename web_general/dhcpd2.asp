
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>LAN</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">

    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
        
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
     <SCRIPT language=JavaScript src="/Dashboard/JS/printtable.js"></SCRIPT>
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

' <title>LAN Interface Settings</title>
<SCRIPT>
function resetClick()
{
 document.tcpip.reset;
}
function saveChanges()
{
 var lpm1 = 0;
 var lpm2 = 0;
 if (!checkHostIP(document.tcpip.ip, 1))
  return false;
 if (!checkNetmask(document.tcpip.mask, 1))
  return false;
 with (document.forms[0])
 {
  if(typeof chk_port_mask1 != 'undefined' && chk_port_mask1 != null){
   for (var i = 0; i < chk_port_mask1.length; i++) {
    if (chk_port_mask1[i].checked == true)
     lpm1 |= (0x1 << i);
   }
   lan_port_mask1.value = lpm1;
  }
  if(typeof chk_port_mask2 != 'undefined' && chk_port_mask2 != null){
   for (var i = 0; i < chk_port_mask2.length; i++) {
    if (chk_port_mask2[i].checked == true)
     lpm2 |= (0x1 << i);
   }
   lan_port_mask2.value = lpm2;
  }
  if((ip_version1.selectedIndex != 0) && (ipv6_mode1[1].checked)){
   if (ipv6_addr1.value =="" || ipv6_addr1.value =="::") {
    alert("LAN IPv6 address cannot be empty! Format is IPV6 address. For example: 3ffe:501:ffff:100::1");
    ipv6_addr1.focus();
    return false;
   } else {
    if ( validateKeyV6IP(ipv6_addr1.value) == 0) {
     alert("Invalid LAN IPv6 IP!");
     ipv6_addr1.focus();
     return false;
    }
   }
   if (ipv6_prefix1.value =="") {
    alert("LAN IPv6 address ipv6_prefix1 cannot be empty! valid number is 0~127");
    ipv6_prefix1.focus();
    return false;
   } else {
    var prefixInt = parseInt(ipv6_prefix1.value);
    if ( prefixInt>127 ||prefixInt<0) {
     alert("Invalid LAN IPv6 Previx!");
     ipv6_prefix1.focus();
     return false;
    }
   }
  }
  save.isclick = 1;
 }
 
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableRadioGroup (radioArrOrButton)
{
  if (radioArrOrButton.type && radioArrOrButton.type == "radio") {
  var radioButton = radioArrOrButton;
  var radioArray = radioButton.form[radioButton.name];
  }
  else
  var radioArray = radioArrOrButton;
  radioArray.disabled = true;
  for (var b = 0; b < radioArray.length; b++) {
  if (radioArray[b].checked) {
   radioArray.checkedElement = radioArray[b];
   break;
 }
  }
  for (var b = 0; b < radioArray.length; b++) {
  radioArray[b].disabled = true;
  radioArray[b].checkedElement = radioArray.checkedElement;
  }
}
function updateState()
{
  if (document.tcpip.wlanDisabled.value == "ON") {
    disableRadioGroup(document.tcpip.BlockEth2Wir);
  }
}
function ipv6_mode1_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode1[0].checked)
  {
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
  }
  else
  {
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   if(ipv6_addr1.value =="::")
    ipv6_addr1.value ="";
  }
 }
}
function ipv6_mode2_change()
{
 with (document.forms[0])
 {
  if(ipv6_mode2[0].checked)
  {
   ipv6_addr2.disabled = true;
   ipv6_prefix2.disabled = true;
  }
  else
  {
   ipv6_addr2.disabled = false;
   ipv6_prefix2.disabled = false;
  }
 }
}
function ipv6_version1_change()
{
 with (document.forms[0])
 {
  if(ip_version1.selectedIndex == 0)
  {
   ipv6_mode1[0].disabled = true;
   ipv6_mode1[1].disabled = true;
   ipv6_addr1.disabled = true;
   ipv6_prefix1.disabled = true;
   ip.disabled = false;
   mask.disabled = false;
  }
  else
  {
   ipv6_mode1[0].disabled = false;
   ipv6_mode1[1].disabled = false;
   ipv6_addr1.disabled = false;
   ipv6_prefix1.disabled = false;
   ip.disabled = false;
   mask.disabled = false;
   ipv6_mode1_change();
  }
 }
}

function on_init()
{
 ipv6_version1_change();
 updateDHCPClient();
}

</SCRIPT>
</head>
<BODY onLoad="on_init();">
 <div class="intro_main ">
  <p class="intro_title">LAN Interface Settings</p>
  <p class="intro_content">This page is used to configure the LAN interface of your Device. Here you may change the setting for IP addresses, subnet mask, etc..</p>
 </div>
 <form action=/boaform/formTcpipLanSetup method=POST name="tcpip">
  <div class="data_common data_common_notitle">
   <table>
    <input type=hidden name="wlanDisabled" value="OFF">
    <tr>
      <th width="30%">InterfaceName:</th>
      <td width="70%">br0</td>
    </tr>
    <tr>
      <th width="30%">IP Address:</th>
      <td width="70%"><input type="text" name="ip" id="ip" size="15" maxlength="15" value=192.168.2.1></td>
    </tr>
    <tr>
      <th width="30%">Subnet Mask:</th>
      <td width="70%"><input type="text" name="mask" id="mask" size="15" maxlength="15" value="255.255.255.0"></td>
    </tr>
    <tr id=tr_ipv6_mode1 >
     <th width="30%">IPv6 Address Mode:</th>
     <td width="70%">
      <input type="radio" name="ipv6_mode1" value=0 OnChange="ipv6_mode1_change()" checked >Auto
      <input type="radio" name="ipv6_mode1" value=1 OnChange="ipv6_mode1_change()" >Manual
     </td>
    </tr>
    <tr id=tr_ipv6_addr1 >
      <th width="30%">IPv6 Address:</th>
      <td width="70%"><input type="text" name="ipv6_addr1" size="30" maxlength="60" value=0></td>
    </tr>
    <tr id=tr_ipv6_prefix1 >
      <th width="30%">IPv6 Prefix Length:</th>
      <td width="70%"><input type="text" name="ipv6_prefix1" size="5" maxlength="5" value=0></td>
    </tr>
     <!-- Hide VID setting temporarily -->
    <tr style="display:none">
     <th width="30%">VLAN ID:</th>
     <td width="70%"><input type="text" name="lan_vlan_id1" size="15" maxlength="15" value="4200"></td>
    </tr>
    <tr >
     <th width="30%">IP Version:</th>
     <td width="70%">
      <select size="1" name="ip_version1" OnChange="ipv6_version1_change()">
       <option  value="0">IPv4</option>
       <option  value="2">IPv4/IPv6</option>
      </select>
     </td>
    </tr>
    <tr >
      
    </tr>
   </table>
  </div>
  <div class="data_common data_common_notitle"><table>
<tr><th width="30%">IGMP Snooping:</th>
<td width="70%">
<input type="radio" name=snoop value=0>Disabled&nbsp;&nbsp;
<input type="radio" name=snoop value=1>Enabled</td>
</tr></table>
<table>
<tr><th width="30%">Ethernet to Wireless Blocking:</th>
<td width="70%">
<input type="radio" name=BlockEth2Wir value=0>Disabled&nbsp;&nbsp;
<input type="radio" name=BlockEth2Wir value=1>Enabled</td></tr></table>
<table>
<tr><th width="30%">Mac Based Tag Decision:</th>
<td width="70%">
<input type="radio" name=mac_based_tag_decision value=0>Disabled&nbsp;&nbsp;
<input type="radio" name=mac_based_tag_decision value=1>Enabled</td></tr></table>
</div>

  <div class="btn_ctl">
   <input type="submit" value="Apply Changes" name="save" onClick="return saveChanges()" class="link_bg">&nbsp;&nbsp;
   <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
   <input type="hidden" value="/tcpiplan.asp" name="submit-url">
   <input type="hidden" name="lan_port_mask1" value=0>
   <input type="hidden" name="lan_port_mask2" value=0>
   <input type="hidden" name="postSecurityFlag" value="">
  </div>
  <script>
  document.tcpip.snoop[1].checked = true;
document.tcpip.BlockEth2Wir[0].checked = true;
document.tcpip.mac_based_tag_decision[1].checked = true;
document.tcpip.ip_version1.options[1].selected = true;
document.tcpip.ipv6_mode1[0].checked = true;
document.tcpip.ipv6_addr1.disabled = true;
document.tcpip.ipv6_prefix1.disabled = true;
document.tcpip.ipv6_addr1.value = "::";
document.tcpip.ipv6_prefix1.value = "0";

  updateState();
  </script>
 </form>
<br><br>
<!--//set display none-->
    
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


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
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>Add IP QoS Traffic Shaping Rule</title>
<script language="javascript" type="text/javascript">
function on_init_page() {
 if ( 1 )
 {
  if (document.getElementById)
  {
   document.getElementById('ipprotbl').style.display = 'block';
  }
  else {
   if (document.layers == false)
   {
    document.all.ipprotbl.style.display = 'block';
   }
  }
 }
 if ( 0 )
 {
  if (document.getElementById)
  {
   document.getElementById('vidDiv').style.display = 'block';
  }
  else {
   if (document.layers == false)
   {
    document.all.vidDiv.style.display = 'block';
   }
  }
 }
 if ( 0 )
 {
  if (document.getElementById)
  {
   document.getElementById('ssidDiv').style.display = 'block';
  }
  else {
   if (document.layers == false)
   {
    document.all.ssidDiv.style.display = 'block';
   }
  }
 }
}
function on_apply() {
 with(document.forms[0]) {
  if (inflist.value == " ")
  {
   inflist.focus();
   alert("wan interface not assigned!");
   return;
  }
  if(srcip.value != "" && sji_checkip(srcip.value) == false)
  {
   srcip.focus();
   alert("Source IP invalid!");
   return;
  }
  if(dstip.value != "" && sji_checkip(dstip.value) == false)
  {
   dstip.focus();
   alert("Destination IP invalid");
   return;
  }
  if(srcnetmask.value != "" && sji_checkip(srcnetmask.value) == false)
  {
   srcnetmask.focus();
   alert("Source IP Mask invalid");
   return;
  }
  if(dstnetmask.value != "" && sji_checkip(dstnetmask.value) == false)
  {
   dstnetmask.focus();
   alert("Destination IP Mask invalid");
   return;
  }
  if(sport.value <0 || sport.value > 65536)
  {
   sport.focus();
   alert("Source Port invalid");
   return;
  }
  if (sport.value > 0 && sport.value < 65535)
  {
   if (protolist.value!= 1 && protolist.value!= 2 && protolist.value!= 4) {
    sport.focus();
    alert("Please assign TCP/UDP!");
    return;
   }
  }
  if(dport.value <0 || dport.value > 65536)
  {
   dport.focus();
   alert("Destination Port invalid");
   return;
  }
  if (dport.value > 0 && dport.value<65535)
  {
   if (protolist.value!= 1 && protolist.value!= 2 && protolist.value!= 4) {
    dport.focus();
    alert("Please assign TCP/UDP!");
    return;
   }
  }
  if(rate.value<0)
  {
   rate.focus();
   alert("uplink rate invalid");
   return;
  }
  if ( 1 ) {
   if(document.forms[0].IpProtocolType.value == 2) {
    if(sip6.value != ""){
     if (! isGlobalIpv6Address(sip6.value) ){
      alert("Invalid Source IPv6 address!");
      return;
     }
     if ( sip6PrefixLen.value != "" ) {
      var prefixlen= getDigit(sip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen <= 0) {
       alert("Invalid Source IPv6 prefix length!");
       return;
      }
     }
    }
    if(dip6.value != ""){
     if (! isGlobalIpv6Address(dip6.value) ){
      alert("Invalid Destination IPv6 address!");
      return;
     }
     if ( dip6PrefixLen.value != "" ) {
      var prefixlen= getDigit(dip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen <= 0) {
       alert("Invalid destination IPv6 prefix length!");
       return;
      }
     }
    }
   }
  }
  lst.value ="dummy=dummy&";
  if ( 0 )
  {
   if( vlanID.value<0 || vlanID.value > 4095){
    alert("Incorrect vlan id, shoule be 1~4095");
    return;
   }
   lst.value += "vlanID="+vlanID.value+"&";
  }
  if ( 0 )
  {
    lst.value += "ssid="+ssid.value+"&";
  }
  if ( 1 ) {
   if(document.forms[0].IpProtocolType.value == 1){
    lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&IPversion="+IpProtocolType.value+"&srcip="+srcip.value+"&srcnetmask="+srcnetmask.value+
     "&dstip="+dstip.value+"&dstnetmask="+dstnetmask.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
   }
   else if (document.forms[0].IpProtocolType.value == 2) {
    lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&IPversion="+IpProtocolType.value+"&sip6="+sip6.value+"&sip6PrefixLen="+sip6PrefixLen.value+
     "&dip6="+dip6.value+"&dip6PrefixLen="+dip6PrefixLen.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
   }
  }
  else
  {
    lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&srcip="+srcip.value+"&srcnetmask="+srcnetmask.value+
     "&dstip="+dstip.value+"&dstnetmask="+dstnetmask.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
  }
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function protocolChange()
{
 if(document.forms[0].IpProtocolType.value == 1){
  if (document.getElementById)
  {
   document.getElementById('ip4tbl').style.display = 'block';
   document.getElementById('ip6tbl').style.display = 'none';
  }
  else {
   if (document.layers == false)
   {
    document.all.ip4tbl.style.display = 'block';
    document.all.ip6tbl.style.display = 'none';
   }
  }
 }
 else if(document.forms[0].IpProtocolType.value == 2){
  if (document.getElementById)
  {
   document.getElementById('ip4tbl').style.display = 'none';
   document.getElementById('ip6tbl').style.display = 'block';
  }
  else {
   if (document.layers == false)
   {
    document.all.ip4tbl.style.display = 'none';
    document.all.ip6tbl.style.display = 'block';
   }
  }
 }
}
</script>
</head>
<body onLoad="on_init_page();">
<div class="intro_main ">
 <p class="intro_title">Add IP QoS Traffic Shaping Rule</p>
 <p class="intro_content"> </p>
</div>
<form id="form" action="/boaform/admin/formQosTraffictlEdit" method="post">
<div id='ipprotbl' style="display:none" class="data_common data_common_notitle">
 <table>
  <tr><th width="30%">IP Version:</th>
   <td width="70%"><select id="IpProtocolType" onChange="protocolChange()" name="IpProtocolType">
    <option value="1" > IPv4</option>
    <option value="2" > IPv6</option>
    </select>
   </td>
  </tr>
 </table>
</div>
<div id='qos_direction' style="display:block" class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">Direction:</th>
   <td width="70%">
      <select name="direction">
     <option value="0">Upstream</option>
     <option value="1">Downstream </option>
      </select>
   </td>
  </tr>
 </table>
</div>
<div id='vidDiv' style="display:none" class="data_common data_common_notitle">
 <table>
  <tr>
    <th width="30%">VLAN ID:</th>
   <td width="70%"><input type="text" name="vlanID" size="4" style="width:80px"> </td>
  </tr>
 </table>
</div>
<div id='ssidDiv' style="display:none" class="data_common data_common_notitle">
 <table>
  <tr>
    <th>SSID ID:</th>
    <td><font size=2><select name="ssid">  </select> </td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><div id='wan_interface' style="display:none" >Interface:</div></th>
   <td><div id='wan_interface_value' style="display:none" ><select id="inflist"></select></div></td>
  </tr>
  <tr>
   <th width="30%">Protocol:</th>
   <td width="70%">
      <select name="protolist">
     <option value="0">NONE</option>
     <option value="1">TCP </option>
     <option value="2">UDP </option>
     <option value="3">ICMP</option>
<!-- <option value="4">TCP/UDP</option> -->
         </select>
   </td>
  </tr>
 </table>
</div>
<div id='ip4tbl' style="display:block;" class="data_common data_common_notitle">
 <table>
  <tr>
   <th>Source IP:</th>
   <td><input type="text" name="srcip" size="15" maxlength="15" style="width:150px"></td>
  </tr>
  <tr>
   <th>Source Mask:</th>
   <td><input type="text" name="srcnetmask" size="15" maxlength="15" style="width:150px"></td>
  </tr>
  <tr>
   <th>Destination IP:</th>
   <td><input type="text" name="dstip" size="15" maxlength="15" style="width:150px"></td>
  </tr>
  <tr>
   <th>Destination Mask:</th>
   <td><input type="text" name="dstnetmask" size="15" maxlength="15" style="width:150px"></td>
  </tr>
 </table>
</div>
<div id='ip6tbl' style="display:none;" class="data_common data_common_notitle">
 <table>
  <tr>
   <th>Source IP:</th>
   <td><input type="text" name="sip6" size="26" maxlength="39" style="width:150px"></td>
  </tr>
  <tr>
     <th>Source Prefix Length:</th>
   <td><input type="text" name="sip6PrefixLen" size="15" maxlength="15" style="width:150px"></td>
  </tr>
  <tr>
    <th>Destination IP:</th>
   <td><input type="text" name="dip6" size="26" maxlength="39" style="width:150px"></td>
  </tr>
  <tr>
     <th>Destination Prefix Length:</th>
   <td><input type="text" name="dip6PrefixLen" size="15" maxlength="15" style="width:150px"></td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">Source Port:</th>
   <td width="70%"><input type="text" name="sport" size="6" style="width:80px"></td>
  </tr>
  <tr>
     <th>Destination Port:</th>
   <td><input type="text" name="dport" size="6" style="width:80px"></td>
  </tr>
  <tr>
    <th>Rate Limit:</th>
   <td><input type="text" name="rate" size="6" style="width:80px"> kb/s</td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="button" name="return" value="Close" onClick="location.href='/net_qos_traffictl.asp';">
 <input class="link_bg" type="button" name="apply" value="Apply Changes" onClick="on_apply();">
 <input type="hidden" name="lst" id="lst" value="">
 <input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>
 
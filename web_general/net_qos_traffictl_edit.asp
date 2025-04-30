<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
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
<title><% multilang("803" "LANG_ADD_IP_QOS_TRAFFIC_SHAPING_RULE"); %></title>
<script language="javascript" type="text/javascript">
function on_init_page() {
 if ( <% checkWrite("IPv6Show"); %> )
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
 if ( <% checkWrite("TrafficShapingByVid"); %> )
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
 if ( <% checkWrite("TrafficShapingBySsid"); %> )
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
   alert("<% multilang("2352" "LANG_WAN_INTERFACE_NOT_ASSIGNED"); %>");
   return;
  }
  if(srcip.value != "" && sji_checkip(srcip.value) == false)
  {
   srcip.focus();
   alert("<% multilang("2353" "LANG_SOURCE_IP_INVALID"); %>");
   return;
  }
  if(dstip.value != "" && sji_checkip(dstip.value) == false)
  {
   dstip.focus();
   alert("<% multilang("2354" "LANG_DESTINATION_IP_INVALID"); %>");
   return;
  }
  if(srcnetmask.value != "" && sji_checkip(srcnetmask.value) == false)
  {
   srcnetmask.focus();
   alert("<% multilang("2355" "LANG_SOURCE_IP_MASK_INVALID"); %>");
   return;
  }
  if(dstnetmask.value != "" && sji_checkip(dstnetmask.value) == false)
  {
   dstnetmask.focus();
   alert("<% multilang("2356" "LANG_DESTINATION_IP_MASK_INVALID"); %>");
   return;
  }
  if(sport.value <0 || sport.value > 65536)
  {
   sport.focus();
   alert("<% multilang("2357" "LANG_SOURCE_PORT_INVALID"); %>");
   return;
  }
  if (sport.value > 0 && sport.value < 65535)
  {
   if (protolist.value!= 1 && protolist.value!= 2 && protolist.value!= 4) {
    sport.focus();
    alert("<% multilang("2358" "LANG_PLEASE_ASSIGN_TCP_UDP"); %>");
    return;
   }
  }
  if(dport.value <0 || dport.value > 65536)
  {
   dport.focus();
   alert("<% multilang("2359" "LANG_DESTINATION_PORT_INVALID"); %>");
   return;
  }
  if (dport.value > 0 && dport.value<65535)
  {
   if (protolist.value!= 1 && protolist.value!= 2 && protolist.value!= 4) {
    dport.focus();
    alert("<% multilang("2358" "LANG_PLEASE_ASSIGN_TCP_UDP"); %>");
    return;
   }
  }
  if(rate.value<0)
  {
   rate.focus();
   alert("<% multilang("2360" "LANG_UPLINK_RATE_INVALID"); %>");
   return;
  }
  if ( <% checkWrite("IPv6Show"); %> ) {
   if(document.forms[0].IpProtocolType.value == 2) {
    if(sip6.value != ""){
     if (! isGlobalIpv6Address(sip6.value) ){
      alert("<% multilang("2325" "LANG_INVALID_SOURCE_IPV6_ADDRESS"); %>");
      return;
     }
     if ( sip6PrefixLen.value != "" ) {
      var prefixlen= getDigit(sip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen <= 0) {
       alert("<% multilang("2326" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH"); %>");
       return;
      }
     }
    }
    if(dip6.value != ""){
     if (! isGlobalIpv6Address(dip6.value) ){
      alert("<% multilang("2327" "LANG_INVALID_DESTINATION_IPV6_ADDRESS"); %>");
      return;
     }
     if ( dip6PrefixLen.value != "" ) {
      var prefixlen= getDigit(dip6PrefixLen.value, 1);
      if (prefixlen > 128 || prefixlen <= 0) {
       alert("<% multilang("2328" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH"); %>");
       return;
      }
     }
    }
   }
  }
  lst.value ="dummy=dummy&";
  if ( <% checkWrite("TrafficShapingByVid"); %> )
  {
   if( vlanID.value<0 || vlanID.value > 4095){
    alert("<% multilang("2316" "LANG_INCORRECT_VLAN_ID_SHOULE_BE_1_4095"); %>");
    return;
   }
   lst.value += "vlanID="+vlanID.value+"&";
  }
  if ( <% checkWrite("TrafficShapingBySsid"); %> )
  {
    lst.value += "ssid="+ssid.value+"&";
  }
  if ( <% checkWrite("IPv6Show"); %> ) {
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
    width:200px; 
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
</head>
<body onLoad="on_init_page();">
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							 
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> Q0S</h1>
										
									</div>	
                                    <hr class="margin_adjs">
 <div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">Add IP QoS Traffic Shaping Rule</h2>
  </div>
 </div>
<form id="form" action="/boaform/admin/formQosTraffictlEdit" method="post">
<div id='ipprotbl' style="display:none" class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">

  <label class="left-field">IP <% multilang("704" "LANG_VERSION"); %>:</label>
   <select class="right-field custom-select" id="IpProtocolType" onChange="protocolChange()" name="IpProtocolType">
    <option value="1" > IPv4</option>
    <option value="2" > IPv6</option>
    </select>
  </div>
  </div>
</div>
<div id='qos_direction' style="display:<% check_display("qos_direction"); %>" class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
  <label class="left-field"><% multilang("385" "LANG_DIRECTION");%>:</label>
   
      <select class="right-field custom-select" name="direction">
     <option value="0"><% multilang("521" "LANG_UPSTREAM");%></option>
     <option value="1"><% multilang("520" "LANG_DOWNSTREAM");%> </option>
      </select>
      </div>
      </div>
</div>
<div id='vidDiv' style="display:none" class="data_common data_common_notitle">
<div class="col-md-12 form-group">
        <div class="custom-control">
 
   <label class="left-field"><% multilang("286" "LANG_VLAN"); %> ID:</label>
   <input class="right-field custom-select" type="text" name="vlanID" size="4" style="width:80px"> </td>
  </div>
    </div>

</div>
<div id='ssidDiv' style="display:none" class="data_common data_common_notitle">
<div class="col-md-12 form-group">
        <div class="custom-control">
     <label class="left-field"><% multilang("135" "LANG_SSID"); %> ID:</label>
    <font size=2><select class="right-field custom-select" name="ssid"> <% ssid_list("ssid"); %> </select></font>
  </div>
  </div>
</div>

<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><div id='wan_interface' style="display:<% check_display("wan_interface"); %>" ><% multilang("70" "LANG_INTERFACE"); %>:</div></th>
   <td><div id='wan_interface_value' style="display:<% check_display("wan_interface"); %>" ><select id="inflist"><% if_wan_list("queueITF-without-Any"); %></select></div></td>
  </tr>
<div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("95" "LANG_PROTOCOL"); %>:</label>
  
      <select class="right-field custom-select"  name="protolist">
     <option value="0"><% multilang("346" "LANG_NONE"); %></option>
     <option value="1">TCP </option>
     <option value="2">UDP </option>
     <option value="3">ICMP</option>
<!-- <option value="4">TCP/UDP</option> -->
         </select>
   </div>
   </div>
 </table>
</div>
<div id='ip4tbl' style="display:block;" class="data_common data_common_notitle">
<div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> IP:</label>
   <input class="right-field custom-select"   type="text" name="srcip" size="15" maxlength="15" >
 </div>
  </div>

  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("662" "LANG_SOURCE_MASK"); %>:</label>
   <input class="right-field custom-select" type="text" name="srcnetmask" size="15" maxlength="15">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> IP:</label>
   <input class="right-field custom-select" type="text" name="dstip" size="15" maxlength="15" ">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("663" "LANG_DESTINATION_MASK"); %>:</label>
   <input class="right-field custom-select" type="text" name="dstnetmask" size="15" maxlength="15">
  </div>
  </div>
 </table>
</div>
<div id='ip6tbl' style="display:none;" class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> IP:</label>
   <input  class="right-field custom-select"  type="text" name="sip6" size="26" maxlength="39">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("804" "LANG_SOURCE_PREFIX_LENGTH"); %>:</label>
   <input class="right-field custom-select" type="text" name="sip6PrefixLen" size="15" maxlength="15" style="width:150px">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> IP:</label>
   <input class="right-field custom-select" type="text" name="dip6" size="26" maxlength="39" >
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("805" "LANG_DESTINATION_PREFIX_LENGTH"); %>:</label>
   <input class="right-field custom-select" type="text" name="dip6PrefixLen" size="15" maxlength="15">
  </div>
  </div>
  </table>
</div>
<div class="data_common data_common_notitle">
<div class="col-md-12 form-group">
        <div class="custom-control">
<label class="left-field"><% multilang("392" "LANG_SOURCE_PORT"); %>:</label>
   <input class="right-field custom-select" type="text" name="sport" size="6">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
<label class="left-field"><% multilang("393" "LANG_DESTINATION_PORT"); %>:</label>
    <input class="right-field custom-select" type="text" name="dport" size="6">

  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
<label class="left-field"><% multilang("794" "LANG_RATE_LIMIT"); %>:</label>
    <input class="right-field custom-select" type="text" name="rate" size="6"> kb/s
  </div>
  </div>

 </table>
</div>
<hr class="margin_adjs" style="margin-left:-15px;">
<div class="btn_ctl form-footer">
 <input class="link_bg btn orange_btn" type="button" name="return" value="<% multilang("743" "LANG_CLOSE"); %>" onClick="location.href='/net_qos_traffictl.asp';">
 <input class="link_bg btn orange_btn" type="button" name="apply" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="on_apply();">
 <input type="hidden" name="lst" id="lst" value="">
 <input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

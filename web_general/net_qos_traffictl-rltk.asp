
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

<TITLE>IP QoS Traffic Shaping</TITLE>
<SCRIPT language="javascript" type="text/javascript">
var protos = new Array("", "TCP", "UDP", "ICMP", "TCP/UDP", "RTP");
<!--var protos = new Array("", "ICMP", "TCP", "UDP", "TCP/UDP", "RTP");-->
var traffictlRules = new Array();
var totalBandwidth = 1000;
var totalBandWidthEn = 0;
totalBandwidth=100000;
totalBandWidthEn=0;

function on_chkdel(index) {
 if(index<0 || index>=traffictlRules.length)
  return;
 traffictlRules[index].select = !traffictlRules[index].select;
}
function on_init_page(){
 if (totalBandWidthEn == 0) {
  if (document.getElementById)
  {
   document.getElementById('apply').style.display = 'block';
   document.getElementById('cancel').style.display = 'none';
  } else {
   document.all.apply.style.display = 'block';
   document.all.cancel.style.display = 'none';
  }
 } else {
  if (document.getElementById)
  {
   document.getElementById('apply').style.display = 'none';
   document.getElementById('cancel').style.display = 'block';
  } else {
   document.all.apply.style.display = 'none';
   document.all.cancel.style.display = 'block';
  }
 }
 with(document.forms[0]) {
  totalbandwidth.value = totalBandwidth;
  if(traffictl_tbl.rows){
   while(traffictl_tbl.rows.length > 1)
    traffictl_tbl.deleteRow(1);
  }
  for(var i = 0; i < traffictlRules.length; i++)
  {
   var row = traffictl_tbl.insertRow(i + 1);
   row.nowrap = true;
   row.vAlign = "center";
   row.align = "left";
   var cell_index=0;
   var cell = row.insertCell(cell_index++);
   cell.innerHTML = traffictlRules[i].id;
   cell = row.insertCell(cell_index++);
   cell.innerHTML = protos[traffictlRules[i].proto];
   cell = row.insertCell(cell_index++);
   if (traffictlRules[i].sport == "0")
    cell.innerHTML = "<br>";
   else
    cell.innerHTML = traffictlRules[i].sport;
   cell = row.insertCell(cell_index++);
   if (traffictlRules[i].dport == "0")
    cell.innerHTML = "<br>";
   else
    cell.innerHTML = traffictlRules[i].dport;
   cell = row.insertCell(cell_index++);
   if ( 1 ) {
    if ( traffictlRules[i].IpProtocolType == "1 ") {
     if (traffictlRules[i].srcip == "0.0.0.0")
      cell.innerHTML = "<br>";
     else
      cell.innerHTML = traffictlRules[i].srcip;
    }
    else if ( traffictlRules[i].IpProtocolType == "2" ) {
     if (traffictlRules[i].sip6 == "::")
      cell.innerHTML = "<br>";
     else {
      cell.innerHTML = traffictlRules[i].sip6;
     }
    }
   }
   else {
    if (traffictlRules[i].srcip == "0.0.0.0")
     cell.innerHTML = "<br>";
    else
     cell.innerHTML = traffictlRules[i].srcip;
   }
   cell = row.insertCell(cell_index++);
   if ( 1 ) {
    if ( traffictlRules[i].IpProtocolType == "1 ") {
     if (traffictlRules[i].dstip == "0.0.0.0")
      cell.innerHTML = "<br>";
     else
      cell.innerHTML = traffictlRules[i].dstip;
    }
    else if ( traffictlRules[i].IpProtocolType == "2" ) {
     if (traffictlRules[i].dip6 == "::")
      cell.innerHTML = "<br>";
     else {
      cell.innerHTML = traffictlRules[i].dip6;
     }
    }
   }
   else {
    if (traffictlRules[i].dstip == "0.0.0.0")
     cell.innerHTML = "<br>";
    else
     cell.innerHTML = traffictlRules[i].dstip;
   }
   if ( 0 )
   {
       cell = row.insertCell(cell_index++);
    if( traffictlRules[i].vlanID!=0)
     cell.innerHTML = traffictlRules[i].vlanID;
   }
   if ( 0 )
   {
       cell = row.insertCell(cell_index++);
    cell.innerHTML = traffictlRules[i].ssid;
   }
   cell = row.insertCell(cell_index++);
   cell.innerHTML = traffictlRules[i].rate;
   cell = row.insertCell(cell_index++);
   cell.align = "center";
   cell.innerHTML = "<input type=\"checkbox\" onClick=\"on_chkdel(" + i + ");\">";
   cell = row.insertCell(cell_index++);
   if ( 1 ) {
    if (traffictlRules[i].IpProtocolType == "1")
     cell.innerHTML = "IPv4";
    else if (traffictlRules[i].IpProtocolType == "2")
     cell.innerHTML = "IPv6";
   }
   else {
    cell.innerHTML = "IPv4";
   }
   cell = row.insertCell(cell_index++);
   if (traffictlRules[i].direction =="0")
    cell.innerHTML = "UPStream";
   else
    cell.innerHTML = "DownStream";
   if ( 1 )
    ;
   else{
    cell = row.insertCell(cell_index++);
    cell.innerHTML = traffictlRules[i].inf;
   }
  }
 }
}
function on_apply_bandwidth(){
 with(document.forms[0]) {
  var sbmtstr = "";
  var bandwidth = -1;
  bandwidth = parseInt(totalbandwidth.value);
  if(bandwidth<0 || bandwidth >Number.MAX_VALUE)
   return;
  sbmtstr = "applybandwidth&bandwidth="+bandwidth;
  lst.value = sbmtstr;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function on_cancel_bandwidth(){
 with(document.forms[0]) {
  var sbmtstr = "";
  sbmtstr = "cancelbandwidth";
  lst.value = sbmtstr;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function on_submit(){
 var sbmtstr = "applysetting#id=";
 var firstFound = true;
 for(var i=0; i<traffictlRules.length; i++)
 {
  if(traffictlRules[i].select)
  {
   if(!firstFound)
    sbmtstr += "|";
   else
    firstFound = false;
   sbmtstr += traffictlRules[i].id;
  }
 }
 document.forms[0].lst.value = sbmtstr;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 document.forms[0].submit();
}
</SCRIPT>
</head>
<body onLoad="on_init_page();">
<div class="intro_main ">
 <p class="intro_title">IP QoS Traffic Shaping</p>
</div>
<form id="form" action="/boaform/admin/formQosTraffictl" method="post">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th>Total Bandwidth Limit:</th>
   <td>
    <input type="text" id="totalbandwidth" value="1005">Kb
   </td>
  <tr>
 </table>
</div>
<div class="data_vertical data_common_notitle">
  <div class="data_common ">
  <table id="traffictl_tbl" >
      <tr>
     <th>ID</th>
     <th>Protocol</th>
     <th>Source Port</th>
     <th>Destination Port</th>
     <th>Source IP</th>
     <th>Destination IP</th>
     <th style="display:none">VLAN ID</th>
     <th style="display:none">SSID</th>
     <th>Rate(kb/s)</th>
     <th>Delete</th>
     <th>IP Version</th>
                 <th>Direction</th>
     <th><div id='wan_interface' style="display:none" >WAN Interface</div></th>
    </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <table>
  <tr>
   <td><input class="link_bg" type="button" onClick="location.href='net_qos_traffictl_edit.asp';" value="Add"></td>
   <td><input class="link_bg" type="button" onClick="on_submit();" value="Apply Changes"></td>
   <td>
    <div id="apply" style="display:none">
     <input class="link_bg" type="button" onClick="on_apply_bandwidth();" value="Apply Total Bandwidth Limit">
    </div>
    <div id="cancel" style="display:none">
     <input class="link_bg" type="button" onClick="on_cancel_bandwidth();" value="Cancel Total Bandwidth Limit">
    </div>
   </td>
  </tr>
 </table>
</div>
<input type="hidden" id="lst" name="lst" value="">
<input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
<input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>

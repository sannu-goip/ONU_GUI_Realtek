<%SendWebHeadStr(); %>
<TITLE>IP QoS <% multilang("43" "LANG_TRAFFIC_SHAPING"); %></TITLE>
<style>
  .list_header ul{
      display: flex;
      gap: 80px;
      list-style: none;
      margin-top: 1px;
      margin-left: -22px;
      font-size: 15px;
    }
    .list_header ul a{
      text-decoration: none;
      font-size: 15px;
      color: #f58220;
      border-bottom: 2px solid transparent;
      transition: color 0.3s, border-bottom 0.3s;
    }
    .list_header ul a:hover, .list_header ul a.active{
      color: #f58220;
      border-bottom: 2px solid #f58220;
    }
     body {
    font-family: Arial, sans-serif;
  }



  table#traffictl_tbl {
    width: 100%;
    border: 1px solid #ccc;
    border-collapse: collapse;
    margin-bottom: 10px;
  }

  table#traffictl_tbl th,
  table#traffictl_tbl td
 {
     width: 10%; 
    border: 1px solid #ccc;
    padding: 6px 10px;
    text-align: left;
    font-size: 13px;
  }

  table#traffictl_tbl th {
     width: 10%; 
    background-color: #f3f3f3;
    font-weight: bold;
  }

  .btn_ctl {
    margin-top: 10px;
  }

  

  .intro_main {
    margin-top: 15px;
   
    padding: 10px;
    background-color: #fdfdfd;
  }

  .intro_title {
       margin-bottom: 5px;
  }

  input[type="text"],
  select {
    padding: 4px;
    border: 1px solid #ccc;
    border-radius: 3px;
    width: 80%;
    max-width: 200px;
  }
  #traffictl_tbl th[colspan] {
    text-align: left;
    background-color: #f9f9f9;
  }

  </style>
<SCRIPT language="javascript" type="text/javascript">
var protos = new Array("", "TCP", "UDP", "ICMP", "TCP/UDP", "RTP");
<!--var protos = new Array("", "ICMP", "TCP", "UDP", "TCP/UDP", "RTP");-->
var traffictlRules = new Array();
var totalBandwidth = 1000;
var totalBandWidthEn = 0;
<% initTraffictlPage(); %>
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
   if ( <% checkWrite("IPv6Show"); %> ) {
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
   if ( <% checkWrite("IPv6Show"); %> ) {
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
   if ( <% checkWrite("TrafficShapingByVid"); %> )
   {
       cell = row.insertCell(cell_index++);
    if( traffictlRules[i].vlanID!=0)
     cell.innerHTML = traffictlRules[i].vlanID;
   }
   if ( <% checkWrite("TrafficShapingBySsid"); %> )
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
   if ( <% checkWrite("IPv6Show"); %> ) {
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
   if ( <% checkWrite("LUNAShow"); %> )
    ;
   else{
    cell = row.insertCell(cell_index++);
    cell.innerHTML = traffictlRules[i].inf;
   }
  }
 }
 on_init_page1();
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

<script language="javascript" type="text/javascript">
    function on_init_page1() {
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
     with(document.forms[1]) {
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
       if(document.forms[1].IpProtocolType.value == 2) {
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
       if(document.forms[1].IpProtocolType.value == 1){
        lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&IPversion="+IpProtocolType.value+"&srcip="+srcip.value+"&srcnetmask="+srcnetmask.value+
         "&dstip="+dstip.value+"&dstnetmask="+dstnetmask.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
       }
       else if (document.forms[1].IpProtocolType.value == 2) {
        lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&IPversion="+IpProtocolType.value+"&sip6="+sip6.value+"&sip6PrefixLen="+sip6PrefixLen.value+
         "&dip6="+dip6.value+"&dip6PrefixLen="+dip6PrefixLen.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
       }
      }
      else
      {
        lst.value = lst.value +"inf="+inflist.value+"&proto="+protolist.value+"&srcip="+srcip.value+"&srcnetmask="+srcnetmask.value+
         "&dstip="+dstip.value+"&dstnetmask="+dstnetmask.value+"&sport="+sport.value+"&dport="+dport.value+"&rate="+rate.value+"&direction="+direction.value;
      }
      postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
      submit();
     }
    }
    function protocolChange()
    {
     if(document.forms[1].IpProtocolType.value == 1){
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
     else if(document.forms[1].IpProtocolType.value == 2){
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
<div class="breadcrum_box"> <ul><li><a href="#">Net</a></li><li>Qos</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
    <div class="list_header"> 
        <ul>
          <li><a href="/net_qos_imq_policy.asp">QoS Configuration </a></li>
          <li><a href="/net_qos_cls.asp" >QoS Classification</a></li>
          <li><a href="/net_qos_traffictl.asp" class="active">QoS Traffic Shaping</a></li>
        </ul>
      </div>
<div class="intro_main ">

<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><div><img src="/img/internet.png" style="width:34px;"></div>
<div style="padding-top:12px;"><p class="intro_title">IP QoS <% multilang("43" "LANG_TRAFFIC_SHAPING"); %></p></div></div>

</div>
<form id="form" action="/boaform/admin/formQosTraffictl" method="post">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("694" "LANG_TOTAL_BANDWIDTH_LIMIT"); %>:</th>
   <td>
    <input type="text" id="totalbandwidth" value="1005"><% multilang("709" "LANG_KB"); %>
   </td>
  <tr>
 </table>
</div>
<br>
<div class="data_vertical data_common_notitle">
  <div class="data_common ">
  <table id="traffictl_tbl" >
      <tr>
     <th><% multilang("699" "LANG_ID"); %></th>
     <th><% multilang("95" "LANG_PROTOCOL"); %></th>
     <th><% multilang("392" "LANG_SOURCE_PORT"); %></th>
     <th><% multilang("393" "LANG_DESTINATION_PORT"); %></th>
     <th><% multilang("389" "LANG_SOURCE"); %> IP</th>
     <th><% multilang("390" "LANG_DESTINATION"); %> IP</th>
     <th style="display:<% check_display("vlanID"); %>"><% multilang("124" "LANG_VLAN_ID"); %></th>
     <th style="display:<% check_display("ssid"); %>"><% multilang("135" "LANG_SSID"); %></th>
     <th><% multilang("669" "LANG_RATE"); %>(kb/s)</th>
     <th><% multilang("308" "LANG_DELETE"); %></th> 
     <th>IP <% multilang("704" "LANG_VERSION"); %></th>
                 <th><% multilang("385" "LANG_DIRECTION"); %></th>
     <th><div id='wan_interface' style="display:<% check_display("wan_interface"); %>" ><% multilang("424" "LANG_WAN_INTERFACE"); %></div></th>
    </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <table>
  <tr>
   <td><input class="link_bg" type="button" onClick="display_traffictl_edit()" value="<% multilang("221" "LANG_ADD"); %>"></td>
   <td><input class="link_bg" type="button" onClick="on_submit();" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>"></td>
   <td>
    <div id="apply" style="display:none">
     <input class="link_bg" type="button" onClick="on_apply_bandwidth();" value="<% multilang("670" "LANG_APPLY_TOTAL_BANDWIDTH_LIMIT"); %>">
    </div>
    <div id="cancel" style="display:none">
     <input class="link_bg" type="button" onClick="on_cancel_bandwidth();" value="<% multilang("708" "LANG_CANCEL_TOTAL_BANDWIDTH_LIMIT"); %>">
    </div>
   </td>
  </tr>
 </table>
</div>
<input type="hidden" id="lst" name="lst" value="">
<input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
<input type="hidden" name="postSecurityFlag" value="">
</form>

<div id="traffictl_edit" style="display:none">
    <div class="intro_main ">
        <p class="intro_title">Add IP QoS Traffic Shaping Rule</p>
       </div>
       <form id="form" action="/boaform/admin/formQosTraffictlEdit" method="post">
       <div id='ipprotbl' style="display:none" class="data_common data_common_notitle">
        <table>
         <tr><th width="30%">IP <% multilang("704" "LANG_VERSION"); %>:</th>
          <td width="70%"><select id="IpProtocolType" onChange="protocolChange()" name="IpProtocolType">
           <option value="1" > IPv4</option>
           <option value="2" > IPv6</option>
           </select>
          </td>
         </tr>
        </table>
       </div>
       <div id='qos_direction' style="display:<% check_display("qos_direction"); %>" class="data_common data_common_notitle">
        <table>
         <tr>
          <th width="30%"><% multilang("385" "LANG_DIRECTION");%>:</th>
          <td width="70%">
             <select name="direction">
            <option value="0"><% multilang("521" "LANG_UPSTREAM");%></option>
            <option value="1"><% multilang("520" "LANG_DOWNSTREAM");%> </option>
             </select>
          </td>
         </tr>
        </table>
       </div>
       <div id='vidDiv' style="display:none" class="data_common data_common_notitle">
        <table>
         <tr>
           <th width="30%"><% multilang("286" "LANG_VLAN"); %> ID:</th>
          <td width="70%"><input type="text" name="vlanID" size="4" style="width:80px"> </td>
         </tr>
        </table>
       </div>
       <div id='ssidDiv' style="display:none" class="data_common data_common_notitle">
        <table>
         <tr>
           <th><% multilang("135" "LANG_SSID"); %> ID:</th>
           <td><font size=2><select name="ssid"> <% ssid_list("ssid"); %> </select> </td>
         </tr>
        </table>
       </div>
       <div class="data_common data_common_notitle">
        <table>
         <tr>
          <th><div id='wan_interface' style="display:<% check_display("wan_interface"); %>" ><% multilang("70" "LANG_INTERFACE"); %>:</div></th>
          <td><div id='wan_interface_value' style="display:<% check_display("wan_interface"); %>" ><select id="inflist"><% if_wan_list("queueITF-without-Any"); %></select></div></td>
         </tr>
         <tr>
          <th width="30%"><% multilang("95" "LANG_PROTOCOL"); %>:</th>
          <td >
             <select name="protolist">
            <option value="0"><% multilang("346" "LANG_NONE"); %></option>
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
          <th><% multilang("389" "LANG_SOURCE"); %> IP:</th>
          <td><input type="text" name="srcip" size="15" maxlength="15" ></td>
         </tr>
         <tr>
          <th><% multilang("662" "LANG_SOURCE_MASK"); %>:</th>
          <td><input type="text" name="srcnetmask" size="15" maxlength="15" ></td>
         </tr>
         <tr>
          <th><% multilang("390" "LANG_DESTINATION"); %> IP:</th>
          <td><input type="text" name="dstip" size="15" maxlength="15" ></td>
         </tr>
         <tr>
          <th><% multilang("663" "LANG_DESTINATION_MASK"); %>:</th>
          <td><input type="text" name="dstnetmask" size="15" maxlength="15" ></td>
         </tr>
        </table>
       </div>
       <div id='ip6tbl' style="display:none;" class="data_common data_common_notitle">
        <table>
         <tr>
          <th><% multilang("389" "LANG_SOURCE"); %> IP:</th>
          <td><input type="text" name="sip6" size="26" maxlength="39"></td>
         </tr>
         <tr>
            <th><% multilang("804" "LANG_SOURCE_PREFIX_LENGTH"); %>:</th>
          <td><input type="text" name="sip6PrefixLen" size="15" maxlength="15" ></td>
         </tr>
         <tr>
           <th><% multilang("390" "LANG_DESTINATION"); %> IP:</th>
          <td><input type="text" name="dip6" size="26" maxlength="39"></td>
         </tr>
         <tr>
            <th><% multilang("805" "LANG_DESTINATION_PREFIX_LENGTH"); %>:</th>
          <td><input type="text" name="dip6PrefixLen" size="15" maxlength="15" ></td>
         </tr>
        </table>
       </div>
       <div class="data_common data_common_notitle">
        <table>
         <tr>
          <th width="30%"><% multilang("392" "LANG_SOURCE_PORT"); %>:</th>
          <td width="70%"><input type="text" name="sport" size="6"></td>
         </tr>
         <tr>
            <th><% multilang("393" "LANG_DESTINATION_PORT"); %>:</th>
          <td><input type="text" name="dport" size="6"></td>
         </tr>
         <tr>
           <th><% multilang("794" "LANG_RATE_LIMIT"); %>:</th>
          <td><input type="text" name="rate" size="6" > kb/s</td>
         </tr>
        </table>
       </div>
       <div class="btn_ctl">
        <input class="link_bg" type="button" name="return" value="<% multilang("743" "LANG_CLOSE"); %>" onClick="location.href='/net_qos_traffictl.asp';">
        <input class="link_bg" type="button" name="apply" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="on_apply();">
        <input type="hidden" name="lst" id="lst" value="">
        <input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
        <input type="hidden" name="postSecurityFlag" value="">
       </div>
       </form>
</div>

<script>
    const traffictl_edit = document.getElementById('traffictl_edit');
    function display_traffictl_edit() {
          traffictl_edit.style.display = 'block';

    }
  </script>
</body>
</html>

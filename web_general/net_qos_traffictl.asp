<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
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
<title>IP QoS <% multilang("238" "LANG_CONFIGURATION"); %></title>
<script language="javascript" type="text/javascript">
var policy = 1;
var rules = new Array();
var queues = new Array();
var totalBandwidth = 1000;
<% initQueuePolicy(); %>
function queue_display1() {
 var hrow=lstrc.rows[0];
 var hcell=hrow.cells[1];
 if(lstrc.rows){while(lstrc.rows.length > 1) lstrc.deleteRow(1);}
 for(var i = 0; i < queues.length; i++) {
  var row = lstrc.insertRow(i + 1);
  row.nowrap = true;
  row.vAlign = "center";
  row.align = "center";
  var cell = row.insertCell(0);
  cell.innerHTML = queues[i].qname;
  cell = row.insertCell(1);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = '<p>PRIO</p>';
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = '<p>WRR</p>';
  cell = row.insertCell(2);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = queues[i].prio;
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = '<p>--</p>';
  cell = row.insertCell(3);
  if (document.forms[0].queuepolicy[0].checked)
   cell.innerHTML = '<p>--</p>';
  else if(document.forms[0].queuepolicy[1].checked)
   cell.innerHTML = "<input type=\"text\" name=w" + i + " value=" + queues[i].weight + " size=3>";
  cell = row.insertCell(4);
  qcheck= queues[i].enable? " checked":"";
  cell.innerHTML = "<input type=\"checkbox\" name=qen" + i + qcheck + ">";
 }
 document.forms[0].totalbandwidth.value = totalBandwidth;
 document.all.bandwidth_defined[userDefinedBandwidth].checked = true;
}
function bandwidth_defined_check(){
 if (document.all.bandwidth_defined[1].checked)
 {
  document.forms[0].totalbandwidth.disabled = false;
 }
 else
 {
  document.forms[0].totalbandwidth.disabled = true;
 }
}
function on_init(){
 with(document.forms[0]){
  if(policy != 0 && policy !=1)
   policy = 0;
  queuepolicy[policy].checked = true;
  qosen[qosEnable].checked = true;
  qosPly.style.display = qosEnable==0 ? "none":"block";
 }
 queue_display1();
 bandwidth_defined_check();
}
function on_save() {
 with(document.forms[0]) {
  var sbmtstr = "";
  if(queuepolicy[0].checked==true)
   sbmtstr = "policy=0";
  else
   sbmtstr = "policy=1";
  d = parseInt(document.forms[0].totalbandwidth.value, 10);
  if(d<=0){
   alert("Invalid totalbandwidth number!");
   document.forms[0].totalbandwidth.focus();
   return false;
  }
  lst.value = sbmtstr;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
function qosen_click() {
 document.all.qosPly.style.display = document.all.qosen[0].checked ? "none":"block";
}
function qpolicy_click() {
 queue_display1();
 bandwidth_defined_check();
}
//cls
var dscps = new it_nr("dscplst",
new it(0, ""),
new it(1, "Default(000000)"),
new it(57, "AF13(001110)"),
new it(49, "AF12(001100)"),
new it(41, "AF11(001010)"),
new it(33, "CS1(001000)"),
new it(89, "AF23(010110)"),
new it(81, "AF22(010100)"),
new it(73, "AF21(010010)"),
new it(65, "CS2(010000)"),
new it(121, "AF33(011110)"),
new it(113, "AF32(011100)"),
new it(105, "AF31(011010)"),
new it(97, "CS3(011000)"),
new it(153, "AF43(100110)"),
new it(145, "AF42(100100)"),
new it(137, "AF41(100010)"),
new it(129, "CS4(100000)"),
new it(185, "EF(101110)"),
new it(161, "CS5(101000)"),
new it(193, "CS6(110000)"),
new it(225, "CS7(111000)")
);
var iffs = new Array("", "LAN_1", "LAN_2", "LAN_3", "LAN_4");
<!--var protos = new Array("", "ICMP", "TCP", "UDP", "TCP/UDP");-->
var protos = new Array("", "TCP", "UDP", "ICMP", "TCP/UDP");
var rules = new Array();
<% initQosRulePage(); %>
function button_onoff_image(enable)
{
if (enable)
 return "image src='graphics/button-on.png'";
else
 return "image src='graphics/button-off.png'";
}
function button_onoff_html(index, item)
{
var str;
str = "<"+button_onoff_image(rules[index].state)+" onClick=on_onoffClick("+index+","+item+"); />";
return str;
}
function on_chkclick(index)
{
if(index < 0 || index >= rules.length)
 return;
rules[index].select = !rules[index].select;
}
function on_onedit(index)
{
if(index < 0 || index >= rules.length)
 return;
window.location.href = "net_qos_cls_edit.asp?rule_index="+rules[index].index+"&rule=" + rules[index].enc();
}
function on_onoffClick(index, item)
{
if(index < 0 || index >= rules.length)
 return;
rules[index].state = !rules[index].state;
if (rules[index].state != 0)
 lstrc_1.rows[index+2].bgColor = "#FFFFFF";
else
 lstrc_1.rows[index+2].bgColor = "#EEEEEE";
lstrc_1.rows[index+2].cells[item].innerHTML = button_onoff_html(index, item);
}
function on_init()
{
if(lstrc_1.rows){while(lstrc_1.rows.length > 2) lstrc_1.deleteRow(2);}
for(var i = 0; i < rules.length; i++)
{
 var account = 0;
 var row = lstrc_1.insertRow(i + 2);
 var strprio = "";
 row.nowrap = true;
 row.vAlign = "center";
 row.align = "left";
 var cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = rules[i].index;
 cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = rules[i].name;
 cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = rules[i].qos_order;
 cell = row.insertCell(account);
 account = account +1;
 if (rules[i].mdscp != "0") {
  cell.innerHTML = "0x"+(rules[i].mdscp-1).toString(16);
 } else
  cell.innerHTML = " <br>";
 cell = row.insertCell(account);
 account = account +1;
 if (rules[i].m1p != "0") {
  cell.innerHTML = rules[i].m1p-1;
 } else
  cell.innerHTML = "<br> ";
 cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = rules[i].prio;
 cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = rules[i].wanifname;
 cell = row.insertCell(account);
 account = account +1;
 switch(rules[i].ipqos_rule_type)
 {
  case 0:
   cell.innerHTML = "<b>Port Base<br></b>";
   switch(rules[i].phypt)
   {
    case 1:
     cell.innerHTML += "LAN1<br>";
     break;
    case 2:
     cell.innerHTML += "LAN2<br>";
     break;
    case 3:
     cell.innerHTML += "LAN3<br>";
     break;
    case 4:
     cell.innerHTML += "LAN4<br>";
     break;
   }
   break;
  case 1:
   cell.innerHTML = "<b>EtherType Base<br></b>";
   cell.innerHTML +="0x"+rules[i].ethType;
   break;
  case 2:
   cell.innerHTML = "<b>IP/Protocol Base<br></b>";
   switch(rules[i].proto)
   {
    case 0:
     break;
    case 1:
     cell.innerHTML+= "Protocol: "+ "TCP<br>";
     break;
    case 2:
     cell.innerHTML+= "Protocol: "+ "UDP<br>";
     break;
    case 3:
     cell.innerHTML+= "Protocol: "+ "ICMP<br>";
     break;
    case 4:
     cell.innerHTML+= "Protocol: "+ "TCP/UDP<br>";
     break;
   }
   if(rules[i].dscp == 0)
    ;
   else
     cell.innerHTML+= "DSCP: "+dscps[rules[i].dscp]+"<br>";
   switch(rules[i].IpProtocolType)
   {
    case 1:
     if(rules[i].sip!= "0.0.0.0")
      {
       cell.innerHTML += "Source IP: "+ rules[i].sip+"<br>";
       cell.innerHTML += "Source Mask: "+ rules[i].smsk+"<br>";
      }
     if(rules[i].dip!= "0.0.0.0")
      {
       cell.innerHTML += "Destination IP: "+ rules[i].dip+"<br>";
       cell.innerHTML += "Destination Mask: "+ rules[i].dmsk+"<br>";
      }
     break;
    case 2:
     if (rules[i].sip6 != "::")
      {
       if(rules[i].sip6PrefixLen == "")
        cell.innerHTML += "Source IP: "+ rules[i].sip6+"<br>";
       else
        cell.innerHTML += "Source IP: "+ rules[i].sip6 + "/" + rules[i].sip6PrefixLen+"<br>";
      }
     break;
   }
   if(rules[i].spts != "0" || rules[i].spte != "0")
    {
     cell.innerHTML+= "Source Port: ";
     if(rules[i].spte == "0")
      cell.innerHTML+=rules[i].spts + ":"+"<br>";
     else
      cell.innerHTML+=rules[i].spts + ":" + rules[i].spte+"<br>";
    }
   if(rules[i].dpts != "0" || rules[i].dpte != "0")
    {
     cell.innerHTML+= "Destination Port: ";
     if(rules[i].dpte == "0")
      cell.innerHTML+=rules[i].dpts + ":"+"<br>";
     else
      cell.innerHTML+=rules[i].dpts + ":" + rules[i].dpte+"<br>";
    }
   break;
  case 3:
   cell.innerHTML = "<b>MAC Address Base<br></b>";
   cell.innerHTML += "Source MAC: "+ ((rules[i].smac=="00:00:00:00:00:00")?"":rules[i].smac)+"<br>";
   cell.innerHTML += "Destination MAC:"+ ((rules[i].dmac=="00:00:00:00:00:00")?"":rules[i].dmac)+"<br>";
   break;
  case 4:
   cell.innerHTML = "<b>DHCP Option Base<br></b>";
   if(typeof rules[i].dhcpopt_type_select !== "undefined")
   {
    switch(rules[i].dhcpopt_type_select)
    {
     case "0":
      cell.innerHTML += "Option 60<br>";
      cell.innerHTML += "Vendor Class ID:"+rules[i].opt60_vendorclass;
      break;
     case "1":
      cell.innerHTML += "Option 61<br>";
      switch(rules[i].dhcpopt61_DUID_select)
      {
       case "0":
        cell.innerHTML += "DUID Type: DUID_LLT<br>";
        cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
        cell.innerHTML += "Hardware Type:"+rules[i].duid_hw_type+"<br>";
        cell.innerHTML += "Time"+rules[i].duid_time+"<br>";
        cell.innerHTML += "Link-layer Address"+rules[i].duid_mac+"<br>";
        break;
       case "1":
        cell.innerHTML += "DUID Type: DUID_EN<br>";
        cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
        cell.innerHTML += "Enterprise Number: "+rules[i].duid_ent_num+"<br>";
        cell.innerHTML += "Identifier: "+rules[i].duid_ent_id+"<br>";
        break;
       case "2":
        cell.innerHTML += "DUID Type: DUID_LL<br>";
        cell.innerHTML += "IAID: "+rules[i].opt61_iaid+"<br>";
        cell.innerHTML += "Hardware Type: "+rules[i].duid_hw_type+"<br>";
        cell.innerHTML += "Link-layer Address: "+rules[i].duid_mac+"<br>";
        break;
      }
      break;
     case "2":
      cell.innerHTML += "Option 125<br>";
      cell.innerHTML += "Enterprise Number: "+rules[i].opt125_ent_num+"<br>";
      cell.innerHTML += "Manufacturer OUI: "+rules[i].opt125_manufacturer+"<br>";
      cell.innerHTML += "Product Class: "+rules[i].opt125_product_class+"<br>";
      cell.innerHTML += "Model Name: "+rules[i].opt125_model+"<br>";
      cell.innerHTML += "Serial Number: "+rules[i].opt125_serial+"<br>";
      break;
    }
   }
   break;
  default:
   break;
 }
 cell = row.insertCell(account);
 account = account +1;
 cell.align = "center";
 cell.innerHTML = "<input type=\"checkbox\" onClick=\"on_chkclick(" + i + ");\">";
 cell = row.insertCell(account);
 account = account +1;
 cell.align = "center";
 cell.innerHTML = "<input type=\"button\" onClick=\"on_onedit(" + i + ");\" value=\"Edit\">";
 cell = row.insertCell(account);
 account = account +1;
 cell.innerHTML = button_onoff_html(i, account);
 if (rules[i].state != 0)
  row.bgColor = "#FFFFFF";
 else
  row.bgColor = "#EEEEEE";
}
}
function rc2string(it)
{
return it.index + "," + Number(it.state) + "," + Number(it.select);
}
function on_submit()
{
var tmplst = "";
var first = true;
if (rules.length == 0)
 return;
with ( document.forms[0] )
{
 for(var i = 0; i < rules.length; i++)
 {
  if(first)
  {
   first = false;
  }
  else
  {
   tmplst += "&";
  }
  tmplst += rc2string(rules[i]);
 }
 lst_1.value = tmplst;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 submit();
}
}
  //trafclt
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
  }
  function on_apply_bandwidth(){
   with(document.forms[0]) {
    var sbmtstr = "";
    var bandwidth = -1;
    bandwidth = parseInt(totalbandwidth.value);
    if(bandwidth<0 || bandwidth >Number.MAX_VALUE)
     return;
    sbmtstr = "applybandwidth&bandwidth="+bandwidth;
    lst_2.value = sbmtstr;
    postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
    submit();
   }
  }
  function on_cancel_bandwidth(){
   with(document.forms[0]) {
    var sbmtstr = "";
    sbmtstr = "cancelbandwidth";
    lst_2.value = sbmtstr;
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
   document.forms[1].lst_2.value = sbmtstr;
   postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
   document.forms[1].submit();
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
    margin-left: -11px;
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
    margin-left:-22px;
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
<body onLoad="on_init();">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							 
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/internet.png"  width="45" height="40" class="img_sub" alt=""/> Q0S</h1>
										
									</div>	
                                    <hr class="margin_adjs">
<form id="form" action="/boaform/admin/formQosTraffictl" method="post">

 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">IP QoS <% multilang("238" "LANG_CONFIGURATION"); %></h2>
  </div>
 </div>
   
   <div class="data_common data_common_notitle">
   <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("1297" "LANG_IP_QOS"); %></label>
      <input class="right-field-radio "  type="radio" name=qosen value=0 onClick=qosen_click(); checked><% multilang("247" "LANG_DISABLE"); %>
      <input class="right-field-radio"  type="radio" name=qosen value=1 onClick=qosen_click();><% multilang("248" "LANG_ENABLE"); %>
    </div>
    </div>
   </div>
   <div id="qosPly" style="display:none">
    <div class="column">
     <div class="column_title">
      <div class="column_title_left"></div>
       <div class="col-md-12 form-group left-field">
        <div class="custom-control">
       <h2 class="sub_heading " style="color:#fd7e14; width:421px">QoS <% multilang("686" "LANG_QUEUE_CONFIG"); %></h2>
      </div>
      </div>
      <div class="column_title_right"></div>
     </div>
      <div class="data_common">
      <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"><% multilang("687" "LANG_PAGE_DESC_CONFIGURE_QOS_POLICY"); %></p>
       </div>
      </div>
      <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("659" "LANG_POLICY"); %>:</label>
        <input class="right-field-radio " type="radio" name="queuepolicy" value="prio" onClick=qpolicy_click();><% multilang("688" "LANG_PRIO"); %>
        <input class="right-field-radio " type="radio" name="queuepolicy"  style="margin-left: 177px;" value="wrr" onClick=qpolicy_click();><% multilang("689" "LANG_WRR"); %>
       </div>
       </div>

     </div>
     <div class="data_common data_vertical">
      <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%" id="lstrc">
       <tr class="hdb" align="center">
        <th><% multilang("690" "LANG_QUEUE"); %></th>
        <th><% multilang("659" "LANG_POLICY"); %></th>
        <th><% multilang("691" "LANG_PRIORITY"); %></th>
        <th><% multilang("660" "LANG_WEIGHT"); %></th>
        <th><% multilang("248" "LANG_ENABLE"); %></th>
       </tr>
      </table>
     </div>
    </div>
    <div class="column">
     <div class="column_title">
      <div class="column_title_left"></div>
      <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">QoS Bandwidth Config</h2>
  </div>
 </div>
      <div class="column_title_right"></div>
     </div>
     <div class="data_common">
     <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"><% multilang("692" "LANG_PAGE_DESC_CONFIGURE_BANDWIDTH"); %></p>
       </div>
       </div>
       <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("693" "LANG_USER_DEFINED_BANDWIDTH"); %>:</label>
        <input class="right-field-radio" type="radio" name=bandwidth_defined value=0 onClick=bandwidth_defined_check(); checked>Disable
        <input class="right-field-radio" type="radio" name=bandwidth_defined value=1 onClick=bandwidth_defined_check();>Enable 
        </div>
        </div>
      <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("694" "LANG_TOTAL_BANDWIDTH_LIMIT"); %>:</label>
       <input class ="right-field custom-select" type="text" name="totalbandwidth" id="totalbandwidth" value="1005">Kb
       </div>
       </div>
                                  
      </table>
     </div>
    </div>
   </div>

   <div class="btn_ctl form-footer">
     <input class="link_bg btn orange_btn" type="button" class="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="on_save();">
     <input type="hidden" id="lst" name="lst" value="">
     <input type="hidden" name="submit-url" value="/net_qos_imq_policy.asp">
     <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <hr class="margin_adjs" style="margin-left:-22px;">

<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">QoS <% multilang("41" "LANG_CLASSIFICATION"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"><% multilang("695" "LANG_PAGE_DESC_CLASSICY_QOS_RULE"); %><font color="red">(<% multilang("696" "LANG_PAGE_DESC_CLASSICY_QOS_RULE_EXTRA"); %>)</font></p>
       </div>
      </div>
   <div class="data_common data_common_notitle">
    <div class="data_common data_vertical">
     <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%" id="lstrc_1" >
      <tr>
       <th colspan="2">&nbsp;</th>
       <th colspan="3" align="center"><% multilang("698" "LANG_MARK"); %></th>
       <th colspan="3"><% multilang("697" "LANG_CLASSIFICATION_RULES"); %></th>
       <th colspan="3" align="center">&nbsp;</th>
      </tr>
      <tr>
       <td><% multilang("699" "LANG_ID"); %></td>
       <td><% multilang("701" "LANG_NAME"); %></td>
       <td>Order</td>
       <!--<td><% multilang("124" "LANG_VLAN_ID"); %></td>-->
       <td>DSCP <% multilang("698" "LANG_MARK"); %></td>
       <td><% multilang("705" "LANG_802_1P"); %></td>
       <td> <% multilang("690" "LANG_QUEUE"); %></td>
       <td> <% multilang("706" "LANG_WANIF"); %></td>
       <td><% multilang("707" "LANG_RULE_DETAIL"); %></td>
       <td><% multilang("308" "LANG_DELETE"); %></td>
       <td><% multilang("703" "LANG_EDIT"); %></td>
       <td>&nbsp;</td>
      </tr>
     </table>
    </div>
   </div>
   <div class="btn_ctl form-footer">
    <input class="link_bg btn orange_btn" type="button" class="button" onClick="location.href='net_qos_cls_edit.asp';" value="<% multilang("221" "LANG_ADD"); %>">
    <input class="link_bg btn orange_btn" type="button" class="button" onClick="on_submit();" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>">
    <input type="hidden" id="lst_1" name="lst" value="">
    <input type="hidden" name="submit-url" value="/net_qos_cls.asp">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <hr class="margin_adjs">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">IP QoS <% multilang("43" "LANG_TRAFFIC_SHAPING"); %></h2>
  </div>
 </div>

   
   <div class="data_common data_common_notitle">
   <div class="col-md-12 form-group">
        <div class="custom-control">
    <label class="left-field" ><% multilang("694" "LANG_TOTAL_BANDWIDTH_LIMIT"); %>:</label>
       <input class="right-field custom-select"  type="text" id="totalbandwidth" value="1005"><% multilang("709" "LANG_KB"); %>
       </div>
       </div>
         </div>
   <div class="data_vertical data_common_notitle">
     <div class="data_common ">
     <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%;"  id="traffictl_tbl" >
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
   <div class="btn_ctl  form-footer">
    <input class="btn orange_btn link_bg" type="button" onClick="location.href='net_qos_traffictl_edit.asp';" value="<% multilang("221" "LANG_ADD"); %>">
    <input class="btn orange_btn link_bg" type="button" onClick="on_submit();" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>">
       <div id="apply" style="display:none">
        <input class="btn orange_btn link_bg" type="button" onClick="on_apply_bandwidth();" value="<% multilang("670" "LANG_APPLY_TOTAL_BANDWIDTH_LIMIT"); %>">
       </div>
       <div id="cancel" style="display:none">
        <input class="btn orange_btn link_bg" type="button" onClick="on_cancel_bandwidth();" value="<% multilang("708" "LANG_CANCEL_TOTAL_BANDWIDTH_LIMIT"); %>">
       </div>
      </td>
     </tr>
    </table>
   </div>
   <hr class="margin_adjs" style="margin-left:-22px;">
   <input type="hidden" id="lst_2" name="lst" value="">
   <input type="hidden" name="submit-url" value="/net_qos_traffictl.asp">
   <input type="hidden" name="postSecurityFlag" value="">
   
   </form>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

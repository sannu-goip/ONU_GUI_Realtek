


<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Route</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
    <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
    <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<style>
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
    margin-left:-15px;
    width:1248px;
}
.right-field{
    margin-left:50px
}
.data_common{
	width:150px
}
</style>
<script language="javascript" type="text/javascript">
var policy = 1;
var rules = new Array();
var queues = new Array();
var totalBandwidth = 1000;
userDefinedBandwidth=0;
totalBandwidth=100000;
qosEnable=0;
policy=0;
queues.push(new it_nr("0",new it("qname","Q1"),new it("prio",1),new it("weight", 40),new it("enable", 0)));
queues.push(new it_nr("1",new it("qname","Q2"),new it("prio",2),new it("weight", 30),new it("enable", 0)));
queues.push(new it_nr("2",new it("qname","Q3"),new it("prio",3),new it("weight", 20),new it("enable", 0)));
queues.push(new it_nr("3",new it("qname","Q4"),new it("prio",4),new it("weight", 10),new it("enable", 0)));

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
</script>
<SCRIPT language="javascript" type="text/javascript">
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
  lstrc.rows[index+2].bgColor = "#FFFFFF";
 else
  lstrc.rows[index+2].bgColor = "#EEEEEE";
 lstrc.rows[index+2].cells[item].innerHTML = button_onoff_html(index, item);
}
function on_init()
{
 if(lstrc.rows){while(lstrc.rows.length > 2) lstrc.deleteRow(2);}
 for(var i = 0; i < rules.length; i++)
 {
  var account = 0;
  var row = lstrc.insertRow(i + 2);
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
  lst.value = tmplst;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  submit();
 }
}
</SCRIPT>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->QoS" name=Net_Qos>
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
							        MakeLeftMenu('Net','QoS')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','QoS','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                                <div class="scoop-inner-content">
									  
								
							  							 
								 <form name="ConfigForm" action="/net_qos_traffictl.asp" method="post">
								 <div class="white_box">
									<h1 class="heading_grey heading_margin">
									<img src="/Dashboard/images/internet.png" width="45" height="40" class="img_sub" alt=""/> QoS</h1>
									<div class="container-fluid">
										<hr class="margin_adjs" />
				<div class="col-md-12 form-group left-field">
        <h2 class="sub_heading " style="color:#fd7e14; width:250px">IP QoS Configuration</h2>
		</div>

										  <div class="col-md-12 form-group left-field" >

                                                  <div class="custom-control custom-radio">
                                                              
                                                                            <label  >IP Qos:</label>
                                                                           <input class="right-field" type="radio" name="qosen" value="0" onclick="qosen_click();">Disable
                                                                  <input class="right-field" type="radio" name="qosen" value="1" onclick="qosen_click();">Enable
                                                                                                </div>
                                                                                </div>
                                                                                </div>
      
       <div class="col-md-12 form-group left-field">
       <div class="custom-control">
            <h2 class="sub_heading " style="color:#fd7e14; width:259px">QoS Queue Config</p>
            </div>
        </div>
 
   <div class="col-md-12 form-group">
   <div class="custom-control">
   
    <p class="left-field">This page is used to configure the QoS policy and Queue. If select PRIO of policy, the lower numbers imply greater precedence. If select WRR of policy, please input the weight of this queue. Default is 40:30:20:10. After configration, please click 'Apply Changes'</p>
  <div class="col-md-12 form-group">
    <div class="custom-control">
        <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-35px;">
            <thead>
                <tr>
                    <th>Policy:</th>
                    <td><input type="radio" name="queuepolicy" value="prio" onclick="qpolicy_click();" >PRIO</td>
                    <td><input type="radio" name="queuepolicy" value="wrr" onclick="qpolicy_click();" >WRR</td>
                </tr>
            </thead>
        </table>
    </div>
</div>
  <div class="col-md-12 form-group">
    <div class="custom-control">
        <table id="lstrc" class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-35px;">
            <thead>
                <tr class="left-field" align="center">
                    <th>Queue</th>
                    <th>Policy</th>
                    <th>Priority</th>
                    <th>Weight</th>
                    <th>Enable</th>
                </tr>
            </thead>
            <tbody>
                <tr valign="center" align="center">
                    <td>Q1</td>
                    <td><p>WRR</p></td>
                    <td><input type="text" name="w0" value="40" size="3" class="form-control"></td>
                    <td><input type="checkbox" name="qen0"></td>
                </tr>
                <tr valign="center" align="center">
                    <td>Q2</td>
                    <td><p>WRR</p></td>
                    <td><p>--</p></td>
                    <td><input type="text" name="w1" value="30" size="3" class="form-control"></td>
                    <td><input type="checkbox" name="qen1"></td>
                </tr>
                <tr valign="center" align="center">
                    <td>Q3</td>
                    <td><p>WRR</p></td>
                    <td><p>--</p></td>
                    <td><input type="text" name="w2" value="20" size="3" class="form-control"></td>
                    <td><input type="checkbox" name="qen2"></td>
                </tr>
                <tr valign="center" align="center">
                    <td>Q4</td>
                    <td><p>WRR</p></td>
                    <td><p>--</p></td>
                    <td><input type="text" name="w3" value="10" size="3" class="form-control"></td>
                    <td><input type="checkbox" name="qen3"></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

      <div class="col-md-12 form-group left-field">
      <div class="custom-control">
            <h2 class="sub_heading " style="color:#fd7e14; width:259px">QoS Bandwidth Config</p>
         </div>   
        </div>
       
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <p class="left-field">This part is used to configure the bandwidth of different type of WAN. If select Disable, CPE will select the appropriate bandwidth based on WAN. If select Enable, User is allowed to configure specific bandwidth of WAN.</p>
                </div>
            </div>
            <div class="col-md-12 form-group">
                <div class="custom-control custom-radio">
                    <label>User Defined Bandwidth:</label>
                    <input class="right-field" type="radio" name="bandwidth_defined" value="0" onClick="bandwidth_defined_check();" >Disable
                    <input class="right-field"  type="radio" name="bandwidth_defined" value="1" onClick="bandwidth_defined_check();">Enable
                </div>
            </div>
            <div class="col-md-12 form-group">
                <div class="custom-control">
                    <label>Total Bandwidth Limit:</label>
                    <input type="text" name="totalbandwidth" id="totalbandwidth" value="1005" class="right-field">Kb
                </div>
            </div>

 <div class="col-md-12 form-group left-field">
                <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:259px">QoS Classification</h2>
   </div>
   </div>
    <div class="col-md-12 form-group left-field">
                <div class="custom-control">
 <p> This page is used to add or delete classicification rule.<font color="red">(After add a new rule, please click 'Apply Changes' to take effect.)</font></p>
</div>
</div>

<div class="col-md-12 form-group">
    <div class="custom-control">
        <table id="lstrc" class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-35px">
            <thead>
                <tr>
                    <th colspan="2">&nbsp;</th>
                    <th colspan="3" class="text-center">Mark</th>
                    <th colspan="3">Classification Rules</th>
                    <th colspan="3" class="text-center">&nbsp;</th>
                </tr>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Order</th>
                  
                    <th>DSCP Mark</th>
                    <th>802.1p</th>
                    <th>Queue</th>
                    <th>WanIf</th>
                    <th>Rule Detail</th>
                    <th>Delete</th>
                    <th>Edit</th>
                    <th>&nbsp;</th>
                </tr>
            </thead>
            <tbody>
                <!-- Add rows dynamically using JavaScript -->
            </tbody>
        </table>
     
    </div>
</div>
<div class=btn_ctl>
 <input class=link_bg type="button" class="button" onClick="location.href='net_qos_cls_edit.asp';" value="Add">

</div>
<br>

 <div class="col-md-12 form-group">
        <div class="custom-control">
        <h2 class="sub_heading " style="color:#fd7e14; width:340px">Add QoS Classification Rules</h2>
        <p>This page is used to add a IP QoS classification rule.</p>
        </div>
        </div>

  <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">RuleName:</label>
            <input type="text" id="name" size="22"  class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">RuleOrder:</label>
            <input type="text" id="qos_order" size="22" style="width:200px" class="right-field">
        </div>
    </div>
    
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <h2 class="sub_heading " style="color:#fd7e14; width:400px">Assign IP Precedence/DSCP/802.1p</h2>
        </div>
        </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Precedence:</label>
                <select id="prio" size="1" class="right-field">
                <option value="1">Queue 1</option>
                <option value="2">Queue 2</option>
                <option value="3">Queue 3</option>
                <option value="4">Queue 4</option>
                <option value=""></option>
                </select>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">DSCP:</label>
                <select id="mdscp" size="1" class="right-field">
                <option value="0"></option>
                <option value="1">default(000000)</option>
                <option value="33">CS1(001000)</option>
                <option value="41">AF11(001010)</option>
                <option value="49">AF12(001100)</option>
                <option value="57">AF13(001110)</option>
                <option value="65">CS2(010000)</option>
                <option value="73">AF21(010010)</option>
                <option value="81">AF22(010100)</option><option value="89">AF23(010110)</option>
                <option value="97">CS3(011000)</option><option value="105">AF31(011010)</option>
                <option value="113">AF32(011100)</option><option value="121">AF33(011110)</option>
                <option value="129">CS4(100000)</option><option value="137">AF41(100010)</option>
                <option value="145">AF42(100100)</option><option value="153">AF43(100110)</option>
                <option value="161">CS5(101000)</option><option value="185">EF(101110)</option>
                <option value="193">CS6(110000)</option><option value="225">CS7(111000)</option>
                </select>
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">802.1p:</label>
                <select id="m1p" size="1" class="right-field">
                <option value="0"></option>
                <option value="1">0</option>
                <option value="2">1</option>
                <option value="3">2</option>
                <option value="4">3</option>
                <option value="5">4</option>
                <option value="6">5</option>
                <option value="7">6</option>
                <option value="8">7</option>
                </select>
            </div>
        </div>
    </div>                                    

                                        </div>
                        </div>
                    </div>
                </div>
        
		     <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
        </div>
  <!--  </div>-->
 
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

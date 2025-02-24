
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

<title>IP QoS Configuration</title>
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
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title">IP QoS Configuration</p>
</div>
<form id="form" action="/boaform/admin/formQosPolicy" method="post">
<div class="data_common data_common_notitle">
 <table>
  <tr>
     <th>IP QoS</th>
   <td><input type="radio" name=qosen value=0 onClick=qosen_click();>Disable</td>
   <td><input type="radio" name=qosen value=1 onClick=qosen_click();>Enable</td>
  </tr>
 </table>
</div>
<div id="qosPly" style="display:none">
 <div class="column">
  <div class="column_title">
   <div class="column_title_left"></div>
   <p>QoS Queue Config</p>
   <div class="column_title_right"></div>
  </div>
   <div class="data_common">
   <table>
    <tr>
     <td colspan=3>This page is used to configure the QoS policy and Queue. If select PRIO of policy, the lower numbers imply greater precedence. If select WRR of policy, please input the weight of this queue. Default is 40:30:20:10. After configration, please click 'Apply Changes'</td>
    </tr>
    <tr>
     <th width=30%>Policy:</th>
     <td width=35%><input type="radio" name="queuepolicy" value="prio" onClick=qpolicy_click();>PRIO</td>
     <td width=35%><input type="radio" name="queuepolicy" value="wrr" onClick=qpolicy_click();>WRR</td>
    </tr>
   </table>
  </div>
  <div class="data_common data_vertical">
   <table id="lstrc">
    <tr class="hdb" align="center">
     <th>Queue</th>
     <th>Policy</th>
     <th>Priority</th>
     <th>Weight</th>
     <th>Enable</th>
    </tr>
   </table>
  </div>
 </div>
 <div class="column">
  <div class="column_title">
   <div class="column_title_left"></div>
   <p>QoS Bandwidth Config</p>
   <div class="column_title_right"></div>
  </div>
  <div class="data_common">
   <table>
    <tr>
     <td colspan=3>This part is used to configure the bandwidth of different type of WAN. If select Disable, CPE will select the appropriate bandwidth based on WAN. If select Enable, User is allowed to configure specific bandwidth of WAN.</td>
    </tr>
    <tr>
     <th>User Defined Bandwidth:</th>
     <td><input type="radio" name=bandwidth_defined value=0 onClick=bandwidth_defined_check();>Disable</td>
     <td><input type="radio" name=bandwidth_defined value=1 onClick=bandwidth_defined_check();>Enable</td>
    </tr>
    <tr>
    <th colspan=1> Total Bandwidth Limit:</th><td colspan=2><input type="text" name="totalbandwidth" id="totalbandwidth" value="1005">Kb</td>
                                </tr>
   </table>
  </div>
 </div>
</div>
<div class="btn_ctl">
  <input class="link_bg" type="button" class="button" value="Apply Changes" onClick="on_save();">
  <input type="hidden" id="lst" name="lst" value="">
  <input type="hidden" name="submit-url" value="/net_qos_imq_policy.asp">
  <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

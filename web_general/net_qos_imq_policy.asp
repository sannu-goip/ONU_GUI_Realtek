<%SendWebHeadStr(); %>
<title>IP QoS <% multilang("238" "LANG_CONFIGURATION"); %></title>
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
    color: #f58220;
    font-size: 15px;
    border-bottom: 2px solid transparent;
    transition: color 0.3s, border-bottom 0.3s;
  }
  .list_header ul a:hover, .list_header ul a.active{
    color: #f58220;
    border-bottom: 2px solid #f58220;
  }
  <style>
  /* General body styling */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  
  
  /* Form container styling */
  .data_common {
      margin: 0px 15px; /* Compact margin */
      padding: 0px 10px; /* Compact padding */
      background-color: #fff;
     
  }
  
 
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 13px; /* Smaller font size */
      color: #333;
      padding: 6px; /* Compact padding */
      width: 30%;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
      font-size: 13px;
  }
  
  .data_common input[type="text"],
  .data_common input[type="file"],
  .data_common input[type="password"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #9c9a9a;
      border-radius: 2px; /* Slightly smaller border radius */
      font-size: 12px; /* Smaller font size */
      box-sizing: border-box;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin: 10px 15px; /* Compact margin */
  }
  
  .link_bg {
      height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #eee;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .link_bg:hover {
    border: 2px solid #f58220;
      background-color: white;
      color: #f58220;
  }
 .intro_title1{
    margin-top: 7px;
}
  .column {
      margin: 10px 0px; /* Compact margin */
  }
  .intro_title1 {
    font-size: 20px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 8px;
    padding-top: 5px;
  }
#lstrc{
    border-collapse: collapse;
    border: 1px solid #ccc;
    
    table-layout: fixed;
}
#lstrc th, #lstrc td{
     border: 1px solid #ccc;
     text-align:center;
}
#lstrc th{
     font-weight: bold;
background-color: #e0dddd;
}
  </style>
</style>
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
</script>
</head>
<body onLoad="on_init();">
  <div class="list_header"> 
    <ul>
      <li><a href="/net_qos_imq_policy.asp" class="active">QoS Configuration </a></li>
      <li><a href="/net_qos_cls.asp" >QoS Classification</a></li>
      <li><a href="/net_qos_traffictl.asp">QoS Traffic Shaping</a></li>
    </ul>
  </div>
<div class="intro_main ">
 <p class="intro_title">IP QoS <% multilang("238" "LANG_CONFIGURATION"); %></p>
</div>
<form id="form" action="/boaform/admin/formQosPolicy" method="post">
<div class="data_common data_common_notitle">
 <table>
  <tr>
     <th><% multilang("1297" "LANG_IP_QOS"); %></th>
   <td><input type="radio" name=qosen value=0 onClick=qosen_click();><% multilang("247" "LANG_DISABLE"); %>
<input style="margin-left: 30px;" type="radio" name=qosen value=1 onClick=qosen_click();><% multilang("248" "LANG_ENABLE"); %></td>
   <td></td>
  </tr>
 </table>
</div>
<div id="qosPly" style="display:none">
 <div class="column">
  <div class="column_title">
   <div class="column_title_left"></div>
   <p class="intro_title1">QoS <% multilang("686" "LANG_QUEUE_CONFIG"); %></p>
   <div class="column_title_right"></div>
  </div>
   <div class="data_common">
   <table>
    <tr>
     <td colspan=3><% multilang("687" "LANG_PAGE_DESC_CONFIGURE_QOS_POLICY"); %></td>
    </tr>
    <tr>
     <th width=30%><% multilang("659" "LANG_POLICY"); %>:</th>
     <td width=35%><input type="radio" name="queuepolicy" value="prio" onClick=qpolicy_click();><% multilang("688" "LANG_PRIO"); %>
	<input style="margin-left:40px;" type="radio" name="queuepolicy" value="wrr" onClick=qpolicy_click();><% multilang("689" "LANG_WRR"); %>
</td>
     <td width=35%></td>
    </tr>
   </table>
  </div>
  <div class="data_common data_vertical">
   <table id="lstrc">
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
   <p class="intro_title1">QoS Bandwidth Config</p>
   <div class="column_title_right"></div>
  </div>
  <div class="data_common">
   <table>
    <tr>
     <td colspan=3><% multilang("692" "LANG_PAGE_DESC_CONFIGURE_BANDWIDTH"); %></td>
    </tr>
    <tr>
     <th><% multilang("693" "LANG_USER_DEFINED_BANDWIDTH"); %>:</th>
     <td><input type="radio" name=bandwidth_defined value=0 onClick=bandwidth_defined_check();>Disable
<input style="margin-left:40px;" type="radio" name=bandwidth_defined value=1 onClick=bandwidth_defined_check();>Enable
</td>
     <td></td>
    </tr>
    <tr>
    <th colspan=1> <% multilang("694" "LANG_TOTAL_BANDWIDTH_LIMIT"); %>:</th><td colspan=2><input type="text" name="totalbandwidth" id="totalbandwidth" value="1005">Kb</td>
                                </tr>
   </table>
  </div>
 </div>
</div>
<div class="btn_ctl">
  <input class="link_bg" type="button" class="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="on_save();">
  <input type="hidden" id="lst" name="lst" value="">
  <input type="hidden" name="submit-url" value="/net_qos_imq_policy.asp">
  <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

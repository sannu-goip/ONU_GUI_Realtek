<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">

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
<title><% multilang("257" "LANG_WLAN_EASY_MESH_INTERFACE_SETUP"); %></title>
<style>
.on {display:on}
.off {display:none}
</style>
<SCRIPT>
var role=<% getInfo("multi_ap_controller"); %>;
var backhaul_radio=<% checkWrite("backhaul_link"); %>;
function wpsTrigger(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
    return true;
}
function loadInfo()
{
 if (role == 0) {
  document.getElementById("role_disabled").checked = true;
 } else if (role == 1) {
  document.getElementById("role_controller").checked = true;
  document.getElementById("wsc_trigger").innerHTML = '<th width="30%">'+'<% multilang("260" "LANG_WLAN_WPS_TRIGGER"); %>'+':</th><td width="70%"><input type="submit" value="'+'<%multilang("241" "LANG_START_PBC"); %>'+'" class="link_bg" name="start_wsc" onClick="return wpsTrigger(this)"></td>';
 }
 if (role == 0) {
  document.getElementById("role_prev").value = "disabled";
 } else if (role == 1) {
  document.getElementById("role_prev").value = "controller";
 }
 if(document.getElementById("controller_backhaul"))
  document.getElementById("controller_backhaul").style.display = "none";
 if(document.getElementById("agent_backhaul"))
  document.getElementById("agent_backhaul").style.display = "none";
 if (role) {
  if (backhaul_radio == 1) {
   if(document.getElementById("controller_backhaul_wlan1"))
    document.getElementById("controller_backhaul_wlan1").checked = true;
   if(document.getElementById("agent_backhaul_wlan1"))
    document.getElementById("agent_backhaul_wlan1").checked = true;
  } else {
   if(document.getElementById("controller_backhaul_wlan0"))
    document.getElementById("controller_backhaul_wlan0").checked = true;
   if(document.getElementById("agent_backhaul_wlan0"))
    document.getElementById("agent_backhaul_wlan0").checked = true;
  }
  if (role == 1) {
   if(document.getElementById("controller_backhaul"))
    document.getElementById("controller_backhaul").style.display = "";
   if(document.getElementById("agent_backhaul"))
    document.getElementById("agent_backhaul").style.display = "none";
  }
 }

 loadInfo1();
}
function resetClick()
{
 location.reload(true);
}
function saveChanges(obj)
{
 if (!document.getElementById("role_disabled").checked) {
  if ("" == document.getElementById("device_name_text").value) {
   alert("<% multilang("263" "LANG_WLAN_EASY_MESH_DEVICE_NAME_CANNOT_BE_EMPTY"); %>");
   return false;
  }
  if (document.getElementById("device_name_text").value.length > 32) {
   alert("<% multilang("264" "LANG_WLAN_EASY_MESH_DEVICE_NAME_SHOULD_BE_LESS_OR_EQUAL_TO_32_CHARACTERS"); %>");
   return false;
  }
 }
 var dot11kvDisabled = <% checkWrite("is_dot11kv_disabled"); %>;
 if (dot11kvDisabled && (!document.getElementById("role_disabled").checked)) {
  if(!confirm("<% multilang("265" "LANG_WLAN_EASY_MESH_11KV_ENABLE_WARNING_MESSAGE"); %>")){
   return false;
  }
  document.getElementById("needEnable11kv").value = "1";
 }
 var securitySettingWrong = <% checkWrite("is_security_setting_wrong"); %>;
 if (securitySettingWrong && (role == 1)) {
  alert("<% multilang("266" "LANG_WLAN_EASY_MESH_SECURTITY_WRONG_MESSAGE"); %>");
  return false;
 }
 if (<% checkWrite("needPopupBackhaul"); %> && (role == 1)) {
  if(!confirm("<% multilang("267" "LANG_WLAN_EASY_MESH_ALERT_VAP1_AUTO_MANAGED_MESSAGE"); %>")){
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
    return true;
}
function isControllerOnChange(){
 if (document.getElementById("role_controller").checked == true) {
  role = 1;
  if(document.getElementById("controller_backhaul"))
   document.getElementById("controller_backhaul").style.display = "";
  if(document.getElementById("agent_backhaul"))
   document.getElementById("agent_backhaul").style.display = "none";
 } else {
  role = 0;
  if(document.getElementById("controller_backhaul"))
   document.getElementById("controller_backhaul").style.display = "none";
  if(document.getElementById("agent_backhaul"))
   document.getElementById("agent_backhaul").style.display = "none";
 }
 if (backhaul_radio == 1) {
  if(document.getElementById("controller_backhaul_wlan1"))
   document.getElementById("controller_backhaul_wlan1").checked = true;
  if(document.getElementById("agent_backhaul_wlan1"))
   document.getElementById("agent_backhaul_wlan1").checked = true;
 } else {
  if(document.getElementById("controller_backhaul_wlan0"))
   document.getElementById("controller_backhaul_wlan0").checked = true;
  if(document.getElementById("agent_backhaul_wlan0"))
   document.getElementById("agent_backhaul_wlan0").checked = true;
 }
}
function isBackhaulOnChange(){
 if(role == 1) {
  if (document.getElementById("controller_backhaul_wlan2") && document.getElementById("controller_backhaul_wlan2").checked == true) {
   backhaul_radio = 2;
  } else if (document.getElementById("controller_backhaul_wlan1") && document.getElementById("controller_backhaul_wlan1").checked == true){
   backhaul_radio = 1;
  } else {
   backhaul_radio = 0;
  }
 }
}
</SCRIPT>
<script>
  var role1 =<% getInfo("multi_ap_controller"); %>;
function openWindow(url, windowName, wide, high) {
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
  var xMax = 640, yMax=500;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open(url, windowName, settings);
}
function showDetailOnClick(count) {
 openWindow('/multi_ap_popup_device_details.asp?count='+count, 'showDeviceDetail', 700, 500);
}
var htmlString = "";
var device_counter = 0;
function print_device_json(object_json) {
 device_counter++;
 htmlString += '<li>';
 htmlString += object_json.device_name + ' | ' + object_json.mac_address + ' | ' + object_json.ip_addr + ' | <input type="button" value="Show Details" class="link_bg" onClick="showDetailOnClick(' + device_counter.toString() + ')">';
 if (0 != object_json["child_devices"].length) {
  htmlString += '<ul class="square">';
  for (child_device in object_json["child_devices"]) {
   print_device_json(object_json["child_devices"][child_device]);
  }
  htmlString += '</ul>';
 }
 htmlString += '</li>';
}
function loadInfo1()
{
 if(role1 == 1){
  var string_json = '<% checkWrite("topology_json_string"); %>';
  var object_json = JSON.parse(string_json);
  print_device_json(object_json);
  document.getElementById("topology_insertion").innerHTML = htmlString;
  document.getElementById("controller_div").style.display = "";
 }
 else{
  document.getElementById("other_div").style.display = "";
 }
    setInterval(function(){ location.reload(true); }, 10000);
}
function resetClick1()
{
 location.reload(true);
}
function saveChanges1()
{
    return true;
}
</script>
<style>

    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
.left-field{
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-20px;
    margin-right:-10px;
    width:104.5%
}
</style>
</head>
<body onload="loadInfo();">
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("257" "LANG_WLAN_EASY_MESH_INTERFACE_SETUP"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("268" "LANG_WLAN_EASY_MESH_DESC"); %></p>
 </div>
 </div>

<form action=/boaform/formMultiAP method=POST name="MultiAP">
<div class="data_common data_common_notitle">
<table>
  <!-- <tr>
 <td width="100%" colspan=2><font size=2><b>
  <input type="checkbox" name="" value="ON" ONCLICK="">&nbsp;&nbsp;Disable EasyMesh</b>
 </td>
 </tr> -->
    <div class="col-md-12 form-group"  id="device_name">
        <div class="custom-control">
            <label class="left-field"><% multilang("99" "LANG_DEVICE_NAME"); %>:</label>
   <input class="right-field custom-select"  type="text" id="device_name_text" name="device_name_text" value="<% getInfo("map_device_name"); %>">
        </div>
    </div>
    <div class="col-md-12 form-group"   id="is_controller">
        <div class="custom-control">

  <label class="left-field"><% multilang("259" "LANG_ROLE"); %>:</label>
 
  <input class="right-field-radio"  type="radio" id="role_controller" name="role" value="controller" onclick="isControllerOnChange()"><% multilang("261" "LANG_CONTROLLER"); %>&nbsp;&nbsp;
<!-- <input type="radio" id="role_agent" name="role" value="agent" onclick="isControllerOnChange()"><% multilang("262" "LANG_AGENT"); %>&nbsp;&nbsp; -->
  <input class="right-field-radio" type="radio" id="role_disabled" name="role" value="disabled" onclick="isControllerOnChange()"><% multilang("179" "LANG_DISABLED"); %>
 </div>
 </div>
 <% showBackhaulSelection() %>
 <tr id="wsc_trigger">
 </tr>
   <!-- <tr>
  <td width="100%" colspan=2><font size=2><b>Network Topology:</b></td>
  <td width="100%" colspan=2><font size=2><b>Neighbor Table:</b></td>
 </tr> -->
  </table>
 <!-- <table width="400" border="0&quot;">
   <tbody><tr>
     <td width="100%" colspan="2" class="tbl_title">Parent Node</td>
   </tr>
   <tr bgcolor="#DDDDDD">
     <td width="40%"><font size="2"><b>Agent1</b></font></td>
     <td width="60%"><font size="2">1a2b3c4d5e7f</font></td>
   </tr>
   <tr>
   <td width="100%" colspan="2" class="tbl_title">Child Node</td>
   </tr>
   <tr bgcolor="#DDDDDD">
   <td width="40%"><font size="2"><b>Agent3</b></font></td>
   <td width="60%"><font size="2">2a2b3c4d5e7f</font></td>
   </tr>
   <tr bgcolor="#EEEEEE">
   <td width="40%"><font size="2"><b>Agent4</b></font></td>
   <td width="60%"><font size="2">3a2b3c4d5e7f</font></td>
   </tr>
   <tr bgcolor="#DDDDDD">
   <td width="40%"><font size="2"><b>Agent5</b></font></td>
   <td width="60%"><font size="2">3a2b3c4d5e7f
   </font></td>
   </tr>
    </tbody></table> -->
 <table style="display:none;" id="staticIpTable" border="0" width=640>
  <% dhcpRsvdIp_List();%>
 </table>
</div>
<div class="btn_ctl form-footer">
      <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg btn orange_btn" name="save_apply" onClick="return saveChanges(this)">&nbsp;&nbsp;
      <input type="reset" value="<% multilang("222" "LANG_RESET"); %>" class="link_bg btn orange_btn" name="reset" onClick="resetClick()">
      <hr class="margin_adjs">
<!-- <div id="syntaxplugin" class="syntaxplugin" style="border: 1px dashed #bbb; border-radius: 5px !important; overflow: auto; max-height: 30em;">
  <ul class="alternate" type="square">
    <li> Controller - 1a2b3c4d5e6f - <input type="button" value="Show Details" onClick="abc()">
    <ul class="alternate" type="square">
     <li>AgentLivingRoom : 1a2b3c4d5e7f</li>
     <li>AgentBedroom1 : 1a2b3c4d5e8f
     <ul class="alternate" type="square">
      <li>AgentBedroom2 : 2a2b3c4d5e6f
      <ul class="alternate" type="square">
       <li>Agent4 : 3a2b3c4d5e6f</li>
       <li>Agent5 : 4a2b3c4d5e6f</li>
       <li>Agent6 : 5a2b3c4d5e6f</li>
      </ul>
      </li>
      <li>Agent7 : 1a3b3c4d5e6f
      <ul class="alternate" type="square">
       <li>Agent8 : 7a2b3c4d5e6f</li>
       <li>Agent9 : 8a2b3c4d5e6f</li>
       <li>Agent10 : 9a2b3c4d5e6f</li>
      </ul>
      </li>
      <li>Agent11 : 0a2b3c4d5e6f
      <ul class="alternate" type="square">
       <li>Agent12 : 4a2b3c3d5e6f</li>
       <li>Agent13 : 3a2b3c8d5e6f</li>
       <li>Agent14 : 2a2b3c1d5e6f</li>
       <li>Agent15 : 1a2b3c4d5e2f</li>
      </ul>
      </li>
     </ul>
     </li>
     <li>Agent16 : 2a2b3c4d5e6f</li>
     <li>Agent17 : 5a2b3c4d5e6f</li>
    </ul>
    </li>
   </ul>
</div> -->
   <input type="hidden" value="/multi_ap_setting_general.asp" name="submit-url">
   <input type="hidden" value="0" name="needEnable11kv" id="needEnable11kv">
   <input type="hidden" value="<% getIndex("needPopupBackhaul"); %>" name="needPopupBackhaul">
   <input type="hidden" value="" name="role_prev" id="role_prev">
   <input type="hidden" name="postSecurityFlag" value="">
 </div>
 </form>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px"><% multilang("269" "LANG_WLAN_EASY_MESH_TOPOLOGY"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("270" "LANG_WLAN_EASY_MESH_TOPOLOGY_DESC"); %></p>
 </div>
 </div>

 <form action=/boaform/formMultiAP method=POST name="MultiAP">
 <div id="other_div" style="display:none">
 <div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"><% multilang("271" "LANG_WLAN_EASY_MESH_ROLE_IS_NOT_CONTROLLER"); %></p>
       </div>
       </div>   

 </div>
 </div>
 <div id="controller_div" style="display:none">
 <div class="data_common data_common_notitle">
 <table>
   <!-- <tr>
  <td width="100%" colspan=2><font size=2><b>
   <input type="checkbox" name="" value="ON" ONCLICK="">&nbsp;&nbsp;Disable EasyMesh</b>
  </td>
  </tr> -->
    <tr>
   <th><% multilang("272" "LANG_NETWORK_TOPOLOGY"); %>:</th>
  </tr>
  <tr>
  <td>
  <ul id="topology_insertion" class="square">
  </ul>
  </td>
  </tr>
 </table>
 </div>
 <div class="btn_ctl">
  <input type="button" value="<% multilang("443" "LANG_REFRESH"); %>" class="link_bg" onclick="location.reload(true);">
 </div>
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

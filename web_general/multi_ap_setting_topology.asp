<% SendWebHeadStr();%>
<title><% multilang("257" "LANG_WLAN_EASY_MESH_INTERFACE_SETUP"); %></title>
<style>
.on {display:on}
.off {display:none}
</style>
<style>
  .on {display:on}
  .off {display:none}
  </style>
  <style type="text/css">
  ul.square {
   list-style-type:square;
   padding: 0 20px;
  }
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

<SCRIPT>
  var role1=<% getInfo("multi_ap_controller"); %>;
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
  </SCRIPT>
</head>
<body onload="loadInfo();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("257" "LANG_WLAN_EASY_MESH_INTERFACE_SETUP"); %></p>
 <p class="intro_content"><% multilang("268" "LANG_WLAN_EASY_MESH_DESC"); %></p>
</div>
<form action=/boaform/formMultiAP method=POST name="MultiAP">
<div class="data_common data_common_notitle">
<table>
 <tr id="device_name">
  <th width="30%"><% multilang("99" "LANG_DEVICE_NAME"); %>:</th>
  <td width="70%">
   <input type="text" id="device_name_text" name="device_name_text" value="<% getInfo("map_device_name"); %>">
  </td>
 </tr>
 <tr id="is_controller">
  <th width="30%"><% multilang("259" "LANG_ROLE"); %>:</th>
  <td width="70%">
  <input type="radio" id="role_controller" name="role" value="controller" onclick="isControllerOnChange()"><% multilang("261" "LANG_CONTROLLER"); %>&nbsp;&nbsp;
  <input type="radio" id="role_disabled" name="role" value="disabled" onclick="isControllerOnChange()"><% multilang("179" "LANG_DISABLED"); %></td>
 </tr>
 <% showBackhaulSelection() %>
 <tr id="wsc_trigger">
 </tr>
 
 <table style="display:none;" id="staticIpTable" border="0" width=640>
  <% dhcpRsvdIp_List();%>
 </table>
</div>
<div class="btn_ctl">
      <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="link_bg" name="save_apply" onClick="return saveChanges(this)">&nbsp;&nbsp;
      <input type="reset" value="<% multilang("222" "LANG_RESET"); %>" class="link_bg" name="reset" onClick="resetClick()">

   <input type="hidden" value="/multi_ap_setting_general.asp" name="submit-url">
   <input type="hidden" value="0" name="needEnable11kv" id="needEnable11kv">
   <input type="hidden" value="<% getIndex("needPopupBackhaul"); %>" name="needPopupBackhaul">
   <input type="hidden" value="" name="role_prev" id="role_prev">
   <input type="hidden" name="postSecurityFlag" value="">
 </div>
 </form>

 <div class="intro_main ">
  <p class="intro_title"><% multilang("269" "LANG_WLAN_EASY_MESH_TOPOLOGY"); %></p>
  <p class="intro_content"><% multilang("270" "LANG_WLAN_EASY_MESH_TOPOLOGY_DESC"); %></p>
 </div>
 <form action=/boaform/formMultiAP method=POST name="MultiAP">
 <div id="other_div" style="display:none">
 <div class="data_common data_common_notitle">
 <table><tr><td>
 <% multilang("271" "LANG_WLAN_EASY_MESH_ROLE_IS_NOT_CONTROLLER"); %>
 </td></tr></table>
 </div>
 </div>
 <div id="controller_div" style="display:none">
 <div class="data_common data_common_notitle">
 <table>
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
</body>
</html>

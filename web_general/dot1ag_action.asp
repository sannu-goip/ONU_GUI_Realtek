<%SendWebHeadStr(); %>
<title><% multilang("1196" "LANG_CFM_802_1AG_ACTION"); %></title>
<!--<link rel="stylesheet" href="admin/content.css">-->
<SCRIPT>
<% dot1ag_init("action"); %>
var timer_id = 0;
var script = null;
var processing = false;
function init_table()
{
 var table = document.getElementById("cfm_tbl");
 for(var i = 0 ; i < dot1ag.length ; i++)
 {
  var cell;
  var row = table.insertRow(-1);
  for(var j=0 ; j < 7 ; j++)
  {
   cell = row.insertCell(j);
   cell.setAttribute("align", "center");
   cell.setAttribute("bgColor", "#C0C0C0");
   var tmp = "<font size = 2>";
   switch(j)
   {
   case 0:
    tmp += "<input type=\"radio\" name=\"select\" value=" + i + " onClick=\"update_ui()\">";
    break;
   case 1:
    tmp += dot1ag[i].interface;
    break;
   case 2:
    tmp += dot1ag[i].md_name;
    break;
   case 3:
    tmp += dot1ag[i].md_level;
    break;
   case 4:
    tmp += dot1ag[i].ma_name;
    break;
   case 5:
    tmp += dot1ag[i].mep_id;
    break;
   case 6:
    if(dot1ag[i].ccm_enable == 1)
     tmp += "Enabled";
    else
     tmp += "Disabled";
    break;
   }
   cell.innerHTML = tmp;
  }
 }
}
function refresh_result()
{
 var selected;
 var radio = document.getElementsByName('select');
 for(selected = 0 ; selected < radio.length ; selected++)
  if(radio[selected].checked == true)
   break;
 if(radio.length == selected)
  return;
 var new_script = document.createElement('script');
 new_script.new_script = 'text/javascript';
 new_script.src = "/boaform/dot1agActionRefresh?select=" + selected;
 if(script == null)
  document.getElementsByTagName('head')[0].appendChild(new_script);
 else
  document.getElementsByTagName('head')[0].replaceChild(new_script, script)
 script = new_script;
 if(processing == false)
  clearInterval(timer_id);
 update_ui();
}
function on_init()
{
 var select = sji_queryparam('select');
 if(select == null)
  document.dot1agAction.action[0].checked = true;
 else
  document.dot1agAction.select[select].checked = true;
 init_table();
 update_ui();
}
function update_ui()
{
 with(document.dot1agAction)
 {
  if(processing == true)
  {
   document.getElementById('status').innerHTML = "<b><% multilang("3" "LANG_STATUS"); %>:</b> <% multilang("1197" "LANG_PROCESSING"); %>";
   start.disabled = true;
  }
  else
  {
   document.getElementById('status').innerHTML = "<b><% multilang("3" "LANG_STATUS"); %>:</b> <% multilang("1198" "LANG_READY"); %>";
   start.disabled = false;
  }
  if(action[1].checked == true)
  {
   document.getElementById('tr_multicast').style.display = "none";
   document.getElementById('tr_count').style.display = "none";
   mac.disabled = false;
  }
  else
  {
   document.getElementById('tr_multicast').style.display = "";
   document.getElementById('tr_count').style.display = "";
   if(multicast.checked == true)
   {
    var selected;
    var radio = document.getElementsByName('select');
    for(selected = 0 ; selected < radio.length ; selected++)
     if(radio[selected].checked == true)
      break;
    if(radio.length == selected)
    {
     alert('<% multilang("2193" "LANG_YOU_MUST_SELECT_AN_ENTRY_IN_TABLE"); %>');
     multicast.checked = false;
     mac.disabled = false;
    }
    else
    {
     mac.value ="01:80:c2:00:00:3" + dot1ag[selected].md_level;
     mac.disabled = true;
    }
   }
   else
    mac.disabled = false;
  }
 }
}
function isValidMac(mac, checkEmpty)
{
 var reg_mac = new RegExp("^([0-9A-Fa-f]{2}[:]){5}([0-9A-Fa-f]{2})$");
 if(checkEmpty == false && mac == "")
  return true;
 return reg_mac.test(mac);
}
function startClick()
{
 var selected;
 var radio = document.getElementsByName('select');
 var action = "ltm";
 for(selected = 0 ; selected < radio.length ; selected++)
  if(radio[selected].checked == true)
   break;
 if(radio.length == selected)
 {
  alert('<% multilang("2193" "LANG_YOU_MUST_SELECT_AN_ENTRY_IN_TABLE"); %>');
  return false;
 }
 if(!isValidMac(document.dot1agAction.mac.value, true))
 {
  alert('<% multilang("2194" "LANG_INVALID_MAC_ADDRESS"); %>');
  document.dot1agAction.mac.focus();
  return false;
 }
 if(document.dot1agAction.action[0].checked == true)
 {
  action = "lbm";
  if (document.dot1agAction.count.value == "")
  {
   alert('<% multilang("2195" "LANG_COUNT_CANNOT_BE_EMPTY"); %>');
   document.dot1agAction.count.focus();
   return false;
  }
  if (checkDigit(document.dot1agAction.count.value) == 0)
  {
   alert('<% multilang("2196" "LANG_COUNT_SHOULD_BE_A_POSITIVE_NUMBER"); %>');
   document.dot1agAction.count.focus();
   document.dot1agAction.count.focus();
   return false;
  }
 }
 processing = true;
 document.dot1agAction.result.innerHTML = "";
 update_ui();
 var new_script = document.createElement('script');
 new_script.new_script = 'text/javascript';
 new_script.src = "/boaform/formDot1agAction?select=" + selected
  + "&action=" + action
  + "&mac=" + document.dot1agAction.mac.value;
 if(action == "lbm")
  new_script.src += "&count=" + document.dot1agAction.count.value;
 document.getElementsByTagName('head')[0].appendChild(new_script);
 timer_id = setInterval("refresh_result()", 3000);
 return true;
}
</SCRIPT>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("1196" "LANG_CFM_802_1AG_ACTION"); %></p>
</div>
<form action=/boaform/formDot1agAction method=POST name="dot1agAction">
<font size=2><b><% multilang("1199" "LANG_PLEASE_SELECT_ONE_OF_FOLLOWING_ENTRY"); %>:</b></font>
<div class="data_vertical data_common_notitle">
 <div class="data_common ">
  <table id="cfm_tbl" border=0 width="600" cellspacing=4 cellpadding=0>
   <tr>
    <th align=center><% multilang("226" "LANG_SELECT"); %></th>
    <th align=center><% multilang("70" "LANG_INTERFACE"); %></th>
    <th align=center><% multilang("1178" "LANG_MD_NAME"); %></th>
    <th align=center><% multilang(LANG_MD_LVEL); %></th>
    <th align=center><% multilang("1179" "LANG_MA_NAME"); %></th>
    <th align=center><% multilang("1201" "LANG_MEP_ID"); %></th>
    <th align=center><% multilang("1202" "LANG_CCM_STATUS"); %></th>
   </tr>
  </table>
 </div>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%><% multilang("711" "LANG_ACTION"); %>:&nbsp;&nbsp;</th>
   <td><input type="radio" name="action" value="lbm" onClick="update_ui()"><font size=2> <% multilang("1203" "LANG_SEND_LBM"); %>&nbsp;&nbsp;
    <input type="radio" name="action" value="ltm" onClick="update_ui()"><font size=2> <% multilang("1204" "LANG_SEND_LTM"); %>
   </td>
  </tr>
  <tr id="tr_multicast">
   <th><% multilang("1205" "LANG_USE_MULTICAST"); %>:</th>
   <td><input type="checkbox" name="multicast" value=1 onClick="update_ui()"></td>
  </tr>
  <tr>
      <th width=30%><% multilang("1206" "LANG_DESTINATION_MAC_ADDRESS"); %>:&nbsp;&nbsp;</th>
      <td><input type="text" name="mac" size="20" maxlength="17"></td>
  </tr>
  <tr id="tr_count">
      <th width=30%><% multilang("1207" "LANG_LBM_COUNT"); %>:&nbsp;&nbsp;</th>
      <td><input type="text" name="count" size="20" maxlength="5"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
<input class="link_bg" type="button" value="<% multilang("519" "LANG_START"); %>" name="start" onClick="startClick()">&nbsp;&nbsp;
</div>
<div id="status"></div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("1208" "LANG_RESULT"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <td>
     <textarea readonly rows="12" cols="80" name="result"></textarea>
    </td>
   </tr>
  </table>
 </div>
</div>
</form>
<script id="DataLoad" language="JavaScript" type="text/javascript" defer></script>
<br><br>
</body>
</html>

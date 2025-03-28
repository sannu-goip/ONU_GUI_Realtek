<%SendWebHeadStr(); %>
<title><% multilang("1234" "LANG_CFM_802_1AG_CONFIGURATION"); %></title>
<!--<link rel="stylesheet" href="admin/content.css">-->
<SCRIPT>
<% dot1ag_init("conf"); %>
function clear_inputs(clear_select)
{
 with(document.dot1agConf)
 {
  interface.selectedIndex= 0;
  md_name.value = "";
  md_level.selectedIndex= 0;
  ma_name.value = "";
  mep_id.value = "";
  ccm_enable.checked = true;
  ccm_interval.selectedIndex= 0;
  if(clear_select)
  {
   var radio = document.getElementsByName('select');
   for(var i=0 ; i < radio.length ; i++)
    radio[i].checked = false;
  }
 }
 update_ui();
}
function postsetting(num)
{
 clear_inputs(0);
 with(document.dot1agConf)
 {
  for(i = 0 ; i < interface.length ; i++)
  {
   if(dot1ag[num].interface == interface[i].text)
    interface.selectedIndex = i;
  }
  md_name.value = dot1ag[num].md_name;
  md_level.selectedIndex = dot1ag[num].md_level;
  ma_name.value = dot1ag[num].ma_name;
  mep_id.value = dot1ag[num].mep_id;
  if(dot1ag[num].ccm_enable)
   ccm_enable.checked = true;
  else
   ccm_enable.checked = false;
  switch(dot1ag[num].ccm_interval)
  {
  case 1000:
   ccm_interval.selectedIndex = 0;
   break;
  case 10000:
   ccm_interval.selectedIndex = 1;
   break;
  case 60000:
   ccm_interval.selectedIndex = 2;
   break;
  case 60000:
   ccm_interval.selectedIndex = 3;
   break;
  default:
   ccm_interval.selectedIndex = 0;
   break;
  }
 }
 update_ui();
}
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
    tmp += "<input type=\"radio\" name=\"select\" value=" + i + " onClick=\"postsetting(" + i + ")\">";
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
function on_init()
{
 clear_inputs(1);
 init_table();
}
function update_ui()
{
 if(document.dot1agConf.ccm_enable.checked == true)
  document.dot1agConf.ccm_interval.disabled = false;
 else
  document.dot1agConf.ccm_interval.disabled = true;
}
function addClick(action,obj)
{
 var selected;
 var radio = document.getElementsByName('select');
 var interface = document.dot1agConf.interface[document.dot1agConf.interface.selectedIndex].label;
 for(selected = 0 ; selected < radio.length ; selected++)
  if(radio[selected].checked == true)
   break;
 if(action != "add" && radio.length == selected)
 {
  alert('<% multilang("2193" "LANG_YOU_MUST_SELECT_AN_ENTRY_IN_TABLE"); %>');
  return false;
 }
 if(action == "delete")
 {
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 if(action == "add")
 for(i = 0 ; i < dot1ag.length ; i++)
 {
  if(action == "modify" && i == selected)
   continue;
  if(dot1ag[i].interface == interface)
  {
   alert('<% multilang("2197" "LANG_INTERFACE_IS_DUPLICATED"); %>');
   document.dot1agConf.interface.focus();
   return false;
  }
 }
 if (document.dot1agConf.md_name.value=="") {
  alert('<% multilang("2198" "LANG_MD_NAME_CANNOT_BE_EMPTY"); %>');
  document.dot1agConf.md_name.focus();
  return false;
 }
 if (checkString(document.dot1agConf.md_name.value) == 0) {
  alert('<% multilang("2199" "LANG_INVALID_MD_NAME"); %>');
  document.dot1agConf.md_name.focus();
  return false;
 }
 for(i = 0 ; i < dot1ag.length ; i++)
 {
  if(action == "modify" && i == selected)
   continue;
  if(dot1ag[i].md_level == document.dot1agConf.md_level.selectedIndex)
  {
   alert('<% multilang("2200" "LANG_MD_LEVEL_IS_DUPLICATED"); %>');
   document.dot1agConf.md_level.focus();
   return false;
  }
 }
 if (document.dot1agConf.ma_name.value=="") {
  alert('<% multilang("2201" "LANG_MA_NAME_CANNOT_BE_EMPTY"); %>');
  document.dot1agConf.ma_name.focus();
  return false;
 }
 if (checkString(document.dot1agConf.ma_name.value) == 0) {
  alert('<% multilang("2202" "LANG_INVALID_MA_NAME"); %>');
  document.dot1agConf.ma_name.focus();
  return false;
 }
 if (document.dot1agConf.mep_id.value == "")
 {
  alert('<% multilang("2203" "LANG_MEP_INDEX_CANNOT_BE_EMPTY"); %>');
  document.dot1agConf.mep_id.focus();
  return false;
 }
 if (checkDigitRange(document.dot1agConf.mep_id.value, 1, 1, 8191) == 0)
 {
  alert('<% multilang("2204" "LANG_MEP_INDEX_SHOULD_BE_A_NUMBER_BETWEEN_1_AND_8191"); %>');
  document.dot1agConf.mep_id.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("1234" "LANG_CFM_802_1AG_CONFIGURATION"); %></p>
 <p class="intro_content"> <% multilang("1235" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_IEEE_802_1AG_WHICH_IS_ALSO_KNOWN_AS_CONNECTIVITY_FAULT_MAMAGMENT"); %></p>
</div>
<form action=/boaform/formDot1agConf method=POST name="dot1agConf">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=30%><% multilang("70" "LANG_INTERFACE"); %>:</th>
   <td><select name="interface">
    <% if_wan_list("ptm"); %>
    <% if_wan_list("eth"); %>
   </td>
  </tr>
  <tr>
      <th width=30%><% multilang("1178" "LANG_MD_NAME"); %>:&nbsp;&nbsp;</th>
      <td><input type="text" name="md_name" size="20" maxlength="43"></td>
  </tr>
  <tr>
   <th width=30%><% multilang("1200" "LANG_MD_LEVEL"); %>:</th>
   <td><select size="1" name="md_level">
    <option selected value=0>0</option>
    <option value=1>1</option>
    <option value=2>2</option>
    <option value=3>3</option>
    <option value=4>4</option>
    <option value=5>5</option>
    <option value=6>6</option>
    <option value=7>7</option>
   </td>
  </tr>
  <tr>
      <th width=30%><% multilang("1179" "LANG_MA_NAME"); %>:&nbsp;&nbsp;</th>
      <td><input type="text" name="ma_name" size="20" maxlength="10"></td>
  </tr>
  <tr>
      <th width=30%><% multilang("1201" "LANG_MEP_ID"); %>:&nbsp;&nbsp;</th>
      <td><input type="text" name="mep_id" size="20" maxlength="5">(1~8191)</td>
  </tr>
  <tr>
   <th><% multilang("1238" "LANG_ENABLE_CCM"); %>:</th>
   <td><input type="checkbox" name="ccm_enable" value=1 onClick="update_ui()"></td>
  </tr>
  <tr>
   <th width=30%><% multilang("1236" "LANG_CCM_INTERVAL"); %>:</th>
   <td><select size="1" name="ccm_interval">
    <option selected value=1000>1s</option>
    <option selected value=10000>10s</option>
    <option selected value=60000>1min</option>
    <option selected value=600000>10min</option>
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="action" onClick="return addClick('add',this)">&nbsp;&nbsp;
 <input type="submit" value="<% multilang("308" "LANG_DELETE"); %>" name="action" onClick="return addClick('delete',this)">&nbsp;&nbsp;
 <input type="submit" value="<% multilang("331" "LANG_MODIFY"); %>" name="action" onClick="return addClick('modify',this)">&nbsp;&nbsp
 <input type="button" value="<% multilang("878" "LANG_CLEAR"); %>" onClick="clear_inputs(1)">&nbsp;&nbsp;
 <input type="hidden" value="/dot1ag_conf.asp" name="submit-url">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("1237" "LANG_CFM_INSTANCE_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table id="cfm_tbl">
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
<input type="hidden" name="postSecurityFlag" value="">
</form>
<br><br>
</body>
</html>
<SCRIPT>

<%SendWebHeadStr(); %>
<title><% multilang("493" "LANG_OTHER_ADVANCED"); %> <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function saveChanges(obj)
{
 if ( checkDigit(document.others.ltime.value) == 0) {
  alert("<% multilang("2362" "LANG_INVALID_LEASE_TIME"); %>");
  document.others.ltime.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function ipptSelected()
{
 document.others.ltime.value = <% getInfo("ippt-lease"); %>;
 if (document.others.ippt.value == 65535) {
  document.others.ltime.disabled = true;
  document.others.lan_acc.disabled = true;
 }
 else {
  document.others.ltime.disabled = false;
  document.others.lan_acc.disabled = false;
 }
}
function singlePCSelected()
{
 if (document.others.singlePC.checked) {
  document.others.IPtype[0].disabled = false;
  if (document.others.ippt.value==65535) {
   document.others.IPtype[1].disabled = true;
   document.others.IPtype[0].checked = true;
  }
  else
   document.others.IPtype[1].disabled = false;
 }
 else {
  document.others.IPtype[0].disabled = true;
  document.others.IPtype[1].disabled = true;
 }
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("493" "LANG_OTHER_ADVANCED"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <p class="intro_content"> <% multilang("494" "LANG_HERE_YOU_CAN_SET_SOME_OTHER_ADVANCED_SETTINGS"); %></p>
</div>
<form action=/boaform/formOthers method=POST name="others">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("495" "LANG_IP_PASSTHROUGH"); %>:</th>
   <td>
    <select name="ippt" onChange=ipptSelected()>
     <option value=65535><% multilang("346" "LANG_NONE"); %></option>
     <% if_wan_list("p2p"); %>
    </select>
   </td>
  </tr>
  <tr>
   <th><% multilang("496" "LANG_LEASE_TIME"); %>:</th>
   <td>
    <input type="text" name="ltime" size=10 maxlength=9 value="<% getInfo("ippt-lease"); %>"> <% multilang("357" "LANG_SECONDS"); %>
   </td>
  </tr>
  <tr>
   <th><% multilang("497" "LANG_ALLOW_LAN_ACCESS"); %>:</th>
   <td>
    <input type="checkbox" name="lan_acc" value="ON">&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type=submit value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)">
      <input type=hidden value="/others.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 ifIdx = <% getInfo("ippt-itf"); %>;
 document.others.ippt.selectedIndex = -1;
 for( i = 0; i < document.others.ippt.options.length; i++ )
 {
  if( ifIdx == document.others.ippt.options[i].value )
   document.others.ippt.selectedIndex = i;
 }
 <% initPage("others"); %>
</script>
</form>
</body>
</html>

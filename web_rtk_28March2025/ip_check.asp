<%SendWebHeadStr(); %>
<META HTTP-EQUIV=Refresh CONTENT="60; URL=ip_check.asp">
<title>IP Check</title>
<SCRIPT>
selected=0;
function deSelected()
{
}
function btnClick()
{
 if (document.ipcheck.ipaddr.value=="") {
  alert('<% multilang("2106" "LANG_PLEASE_ENTER_HOSTNAME_FOR_THIS_ACCOUNT"); %>');
  document.ipcheck.ipaddr.focus();
  deSelected();
  return false;
 }
 if (includeSpace(document.ipcheck.ipaddr.value)) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.ipcheck.ipaddr.focus();
  return false;
 }
 return true;
}
function addClick()
{
 if(btnClick())
 {
  document.forms[0].addacc.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function modifyClick()
{
 if (!selected) {
  alert('<% multilang("2114" "LANG_PLEASE_SELECT_AN_ENTRY_TO_MODIFY"); %>');
  return false;
 }
 if(btnClick())
 {
  document.forms[0].modify.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function removeClick()
{
 if (!selected) {
  alert('<% multilang("2115" "LANG_PLEASE_SELECT_AN_ENTRY_TO_DELETE"); %>');
  return false;
 }
 document.forms[0].delacc.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function postEntry(ipver, iptype ,ipaddr)
{
 document.ipcheck.ipaddr.value = ipaddr;
 document.ipcheck.ipver.value = ipver;
 document.ipcheck.iptype.value = iptype;
 selected = 1;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">IP Check</p>
 <p class="intro_content">This page is used to config ip check table.</p>
</div>
<form action=/boaform/formIpCheck method=POST name="ipcheck">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">IP Ver:</th>
   <td width="70%">
    <select size="1" name="ipver">
     <option value="0">IPv4</option>
     <option value="1">IPv6</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%">IP Type:</th>
   <td width="70%">
    <select size="1" name="iptype">
     <option value="0">Private IP</option>
     <option value="1">Public IP</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%">IP Addr:</th>
   <td width="70%"><input type="text" name="ipaddr" size="48" maxlength="48"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addacc" onClick="return addClick()" class="link_bg">
 <input type="submit" value="<% multilang("331" "LANG_MODIFY"); %>" name="modify" onClick="return modifyClick()" class="link_bg">
 <input type="submit" value="<% multilang("377" "LANG_REMOVE"); %>" name="delacc" onClick="return removeClick()" class="link_bg">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>IP Check <% multilang("414" "LANG__TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <% showIPCheckTable(); %>
  </table>
  <input type="hidden" value="/ip_check.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
   </div>
</div>
<script>
 deSelected();
</script>
</form>
<br><br>
</body>
</html>

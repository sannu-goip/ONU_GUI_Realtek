<%SendWebHeadStr(); %>
<META HTTP-EQUIV=Refresh CONTENT="60; URL=dnslock.asp">
<title>DNS Lock</title>
<SCRIPT>
selected=0;
function deSelected()
{
}
function btnClick()
{
 if (document.dnslock.ipaddr.value=="") {
  alert('<% multilang("2106" "LANG_PLEASE_ENTER_HOSTNAME_FOR_THIS_ACCOUNT"); %>');
  document.dnslock.ipaddr.focus();
  deSelected();
  return false;
 }
 if (includeSpace(document.dnslock.ipaddr.value)) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.dnslock.ipaddr.focus();
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
function postEntry(ipver, ipaddr)
{
 document.dnslock.ipaddr.value = ipaddr;
 document.dnslock.iptype.value = ipver;
 selected = 1;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">DNS Lock</p>
 <p class="intro_content">This page is used to config dns lock.</p>
</div>
<form action=/boaform/formDnsLock method=POST name="dnslock">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">IP Ver:</th>
   <td width="70%">
    <select size="1" name="iptype">
     <option value="0">IPv4</option>
     <option value="1">IPv6</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%">IP Addr:</th>
   <td width="70%"><input type="text" name="ipaddr" size="35" maxlength="35"></td>
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
   <p>DNS Lock <% multilang("414" "LANG__TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <% showDNSLockTable(); %>
  </table>
  <input type="hidden" value="/dnslock.asp" name="submit-url">
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

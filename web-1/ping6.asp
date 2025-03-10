<% SendWebHeadStr();%>
<title>Ping6 <% multilang("45" "LANG_DIAGNOSTICS"); %></title>
<SCRIPT>
function goClick()
{
 if (document.ping.pingAddr.value=="") {
  alert("Enter host address !");
  document.ping.pingAddr.focus();
  return false;
 }
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">Ping6 <% multilang("45" "LANG_DIAGNOSTICS"); %></p>
 <p class="intro_content"> <% multilang("499" "LANG_PAGE_DESC_ICMPV6_DIAGNOSTIC"); %></p>
</div>
<form action=/boaform/formPing6 method=POST name="ping">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("502" "LANG_HOST_ADDRESS"); %>: </th>
   <td width="70%"><input type="text" name="pingAddr" size="30" maxlength="50"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("424" "LANG_WAN_INTERFACE"); %>: </th>
      <td width="70%"><select name="wanif"><% if_wan_list("rtv6-any-vpn"); %></select></td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" onClick="return goClick()">
 <input type="hidden" value="/ping6.asp" name="submit-url">
</div>
 </form>
</body>
</html>

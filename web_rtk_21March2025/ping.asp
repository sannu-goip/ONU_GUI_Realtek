<% SendWebHeadStr();%>
<title>Ping <% multilang("45" "LANG_DIAGNOSTICS"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<SCRIPT>
function goClick()
{
 const RegExpHost = /^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])(\.([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9]))*$/;
 if (!RegExpHost.test(document.ping.pingAddr.value)) {
  alert("Invalid host address !");
  document.ping.pingAddr.focus();
  return false;
 }
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">Ping <% multilang("45" "LANG_DIAGNOSTICS"); %></p>
 <p class="intro_content"> <% multilang("498" "LANG_PAGE_DESC_ICMP_DIAGNOSTIC"); %></p>
</div>
<form action=/boaform/formPing method=POST name="ping">
<div class="data_common data_common_notitle">
 <table>
   <tr>
       <th width="30%"><% multilang("502" "LANG_HOST_ADDRESS"); %>: </th>
       <td width="70%"><input type="text" name="pingAddr" size="30" maxlength="30"></td>
   </tr>
   <tr>
      <th width="30%"><% multilang("424" "LANG_WAN_INTERFACE"); %>: </th>
      <td width="70%"><select name="wanif"><% if_wan_list("rt-any-vpn"); %></select></td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value=" <% multilang("503" "LANG_GO"); %>" onClick="return goClick()">
      <input type="hidden" value="/ping.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

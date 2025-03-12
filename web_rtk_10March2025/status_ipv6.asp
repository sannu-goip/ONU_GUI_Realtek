<% SendWebHeadStr();%>
<title>IPv6 <% multilang("3" "LANG_STATUS"); %></title>
<script>
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">IPv6 <% multilang("3" "LANG_STATUS"); %></p>
 <p class="intro_content"><% multilang("102" "LANG_THIS_PAGE_SHOWS_THE_CURRENT_SYSTEM_STATUS_OF_IPV6"); %></p>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left" ></div>
   <p><% multilang("6" "LANG_LAN"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
 <table>
  <tr>
   <th width=40%><% multilang("103" "LANG_IPV6_ADDRESS"); %></td>
   <td width=60%><% getInfo("ip6_global"); %></td>
   </tr>
  <tr>
   <th width=40%><% multilang("104" "LANG_IPV6_LINK_LOCAL_ADDRESS"); %></td>
   <td width=60%><% getInfo("ip6_ll"); %></td>
  </tr>
 </table>
 </div>
</div>
<div class="column" <% checkWrite("show_button"); %>>
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("105" "LANG_PREFIX_DELEGATION"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th width=40%><% multilang("106" "LANG_PREFIX"); %></td>
    <td width=60%><% checkWrite("prefix_delegation_info"); %></td>
   </tr>
  </table>
 </div>
</div>
<form action=/boaform/admin/formStatus method=POST name="status_ipv6">
 <div class="column">
  <div class="column_title">
   <div class="column_title_left"></div>
    <p><% multilang("11" "LANG_WAN"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
   <div class="column_title_right"></div>
  </div>
  <div class="data_common data_vertical">
   <table>
    <% wanip6ConfList(); %>
   </table>
  </div>
 </div>
 <div class="btn_ctl">
  <input type="hidden" value="/admin/status_ipv6.asp" name="submit-url">
  <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" onClick="return on_submit()">&nbsp;&nbsp;
  <input type="hidden" name="postSecurityFlag" value="">
 </div>
 <br><br>
</form>
</body>
</html>

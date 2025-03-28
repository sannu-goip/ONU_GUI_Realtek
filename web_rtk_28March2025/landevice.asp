<html>
<%SendWebHeadStr(); %>
<title><% multilang("37" "LANG_LAN_DEVICE_TABLE"); %></title>
<SCRIPT>
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("445" "LANG_LAN_USER_LIST"); %></p>
 <p class="intro_content"> <% multilang("442" "LANG_PAGE_DEVICE_TABLE_INFO"); %></p>
</div>
<form action=/boaform/formRefleshLanUserTbl method=POST name="formLANUserTbl">
<div class="data_vertical data_common_notitle">
 <div class="data_common ">
  <table>
   <tr><th width="20%"><% multilang("89" "LANG_IP_ADDRESS"); %></th>
    <th width="20%"><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
    <th width="20%"><% multilang("374" "LANG_HOSTNAME"); %></th>
    <th width="20%"><% multilang("70" "LANG_INTERFACE"); %></th>
   </tr>
   <% LanUserTableList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="hidden" value="/landevice.asp" name="submit-url">
 <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

<% SendWebHeadStr();%>
<title><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<script>
var need_upgrade_pwd = <% checkWrite("need_upgrade_pwd") %>
function sendClicked()
{
 if(need_upgrade_pwd )
 {
  if (document.authcheck.upgradepass.value == "" || document.authcheck.upgradepass.value != "3hwdm@Netmax") {
   alert("Error: wrong password!");
   document.authcheck.upgradepass.focus();
   return false;
  }
 }
 if (document.password.binary.value=="") {
  alert("<% multilang("2262" "LANG_SELECTED_FILE_CANNOT_BE_EMPTY"); %>");
  document.password.binary.focus();
  return false;
 }
 if (!confirm('<% multilang("565" "LANG_PAGE_DESC_UPGRADE_CONFIRM")%>'))
  return false;
 else{
  setload();
  return true;
 }
}
</script>
</head>
<BODY>
<div class="intro_main ">
 <p class="intro_title"><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></p>
 <p class="intro_content"> <% multilang("560" "LANG_PAGE_DESC_UPGRADE_FIRMWARE"); %></p>
</div>
<form method=POST name="authcheck">
<div class="data_common data_common_notitle" <% checkWrite("upgrade_pwd") %>>
 <table border="0" cellspacing="4" width="500">
  <tr>
      <td width="20%"><font size=2><b><% multilang("67" "LANG_PASSWORD"); %>:</b></td>
      <td width="50%"><font size=2><input type="password" name="upgradepass" size="20" maxlength="30"></td>
  </tr>
 </table>
</div>
</form>
<form action=/boaform/admin/formUpload method=POST enctype="multipart/form-data" name="password">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><input class="inner_btn" type="file" value="<% multilang("546" "LANG_CHOOSE_FILE"); %>" name="binary" size=20></th>
  </tr>
 </table>
</div>
<div class="adsl clearfix">
    <input class="link_bg" type="submit" value="<% multilang("561" "LANG_UPGRADE"); %>" name="send" onclick="return sendClicked()">&nbsp;&nbsp;
 <input class="link_bg" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
 <input type="hidden" value="/admin/upgrade.asp" name="submit-url">
</div>
 </form>
</body>
</html>

<% SendWebHeadStr();%>
<title><% multilang("49" "LANG_GPON_SETTINGS"); %></title>
<script>
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
function on_init()
{
 with (document.forms[0])
 {
  if(isPRACTVersion == "1")
  {
   disableTextField(document.forms[0].fmgpon_loid);
   disableTextField(document.forms[0].fmgpon_loid_password);
   disableTextField(document.forms[0].fmgpon_ploam_password);
   disableTextField(document.forms[0].omci_olt_mode);
   disableTextField(document.forms[0].apply);
  }
 }
}
function applyclick(obj)
{
 if (document.formgponconf.fmgpon_ploam_password.value=="") {
  alert('<% multilang("2258" "LANG_PLOAM_PASSWORD_CANNOT_BE_EMPTY"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if (includeSpace(document.formgponconf.fmgpon_ploam_password.value)) {
  alert('<% multilang("2259" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PLOAM_PASSWORD"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if (checkString(document.formgponconf.fmgpon_ploam_password.value) == 0) {
  alert('<% multilang("2260" "LANG_INVALID_PLOAM_PASSWORD"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if( document.formgponconf.fmgpon_ploam_password.value.length>10 )
 {
  alert('<% multilang("2261" "LANG_PLOAM_PASSWORD_SHOULD_BE_10_CHARACTERS"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("49" "LANG_GPON_SETTINGS"); %></p>
 <p class="intro_content"><% multilang("538" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_PARAMETERS_FOR_YOUR_GPON_NETWORK_ACCESS"); %></p>
</div>
<form action=/boaform/admin/formgponConf method=POST name="formgponconf">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="40%"><% multilang("539" "LANG_LOID"); %>:</th>
   <td><input type="text" name="fmgpon_loid" size="20" maxlength="20" value="<% fmgpon_checkWrite("fmgpon_loid"); %>"></td>
  </tr>
  <tr>
   <th width="40%"><% multilang("540" "LANG_LOID_PASSWORD"); %>:</th>
   <td><input type="text" name="fmgpon_loid_password" size="20" maxlength="12" value="<% fmgpon_checkWrite("fmgpon_loid_password"); %>"></td>
  </tr>
  <tr>
   <th width="40%"><% multilang("541" "LANG_PLOAM_PASSWORD"); %>:</th>
   <td><input type="text" name="fmgpon_ploam_password" size="20" maxlength="10" value="<% fmgpon_checkWrite("fmgpon_ploam_password"); %>" ></td>
  </tr>
  <tr>
   <th><% multilang("542" "LANG_SERIAL_NUMBER"); %>:</th>
   <td><% fmgpon_checkWrite("fmgpon_sn"); %></td>
  </tr>
  <% showOMCI_OLT_mode(); %>
 </table>
</div>
<div class="btn_ctl clearfix">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyclick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/gpon.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

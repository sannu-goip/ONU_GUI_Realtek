<%SendWebHeadStr(); %>
<title><% multilang("24" "LANG_NAT_IP_FORWARDING"); %></title>
<script>
function addClick(obj)
{
 if (!document.formIPFwAdd.enabled.checked){
  obj.isclick = 1;
  postTableEncrypt(document.formIPFwAdd.postSecurityFlag, document.formIPFwAdd);
  return true;
 }
 if (document.formIPFwAdd.l_ip.value=="" && document.formIPFwAdd.r_ip.value=="" ){
  obj.isclick = 1;
  postTableEncrypt(document.formIPFwAdd.postSecurityFlag, document.formIPFwAdd);
  return true;
 }
 if (document.formIPFwAdd.l_ip.value=="") {
  alert('<% multilang("2213" "LANG_EMPTY_LOCAL_IP_ADDRESS"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if ( validateKey( document.formIPFwAdd.l_ip.value ) == 0 ) {
  alert('<% multilang("2214" "LANG_INVALID_LOCAL_IP_ADDRESS_VALUE_"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.l_ip.value,1,0,255) ) {
  alert('<% multilang("2215" "LANG_INVALID_LOCAL_IP_ADDRESS_RANGE_IN_1ST_DIGIT"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.l_ip.value,2,0,255) ) {
  alert('<% multilang("2216" "LANG_INVALID_LOCAL_IP_ADDRESS_RANGE_IN_2ND_DIGIT"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.l_ip.value,3,0,255) ) {
  alert('<% multilang("2217" "LANG_INVALID_LOCAL_IP_ADDRESS_RANGE_IN_3RD_DIGIT"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.l_ip.value,4,1,254) ) {
  alert('<% multilang("2218" "LANG_INVALID_LOCAL_IP_ADDRESS_RANGE_IN_4TH_DIGIT"); %>');
  document.formIPFwAdd.l_ip.focus();
  return false;
 }
 if (document.formIPFwAdd.r_ip.value=="") {
  alert('<% multilang("2219" "LANG_EMPTY_EXTERNAL_IP_ADDRESS"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 if ( validateKey( document.formIPFwAdd.r_ip.value ) == 0 ) {
  alert('<% multilang("2220" "LANG_INVALID_EXTERNAL_IP_ADDRESS_VALUE_"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.r_ip.value,1,0,255) ) {
  alert('<% multilang("2221" "LANG_INVALID_EXTERNAL_IP_ADDRESS_RANGE_IN_1ST_DIGIT"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.r_ip.value,2,0,255) ) {
  alert('<% multilang("2222" "LANG_INVALID_EXTERNAL_IP_ADDRESS_RANGE_IN_2ND_DIGIT"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.r_ip.value,3,0,255) ) {
  alert('<% multilang("2223" "LANG_INVALID_EXTERNAL_IP_ADDRESS_RANGE_IN_3RD_DIGIT"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 if ( !checkDigitRange(document.formIPFwAdd.r_ip.value,4,1,254) ) {
  alert('<% multilang("2224" "LANG_INVALID_EXTERNAL_IP_ADDRESS_RANGE_IN_4TH_DIGIT"); %>');
  document.formIPFwAdd.r_ip.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.formIPFwAdd.postSecurityFlag, document.formIPFwAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formIPFwDel.delSelEntry);
 disableButton(document.formIPFwDel.delAllEntry);
  }
}
function updateState()
{
  if (document.formIPFwAdd.enabled.checked) {
  enableTextField(document.formIPFwAdd.l_ip);
 enableTextField(document.formIPFwAdd.r_ip);
  }
  else {
  disableTextField(document.formIPFwAdd.l_ip);
 disableTextField(document.formIPFwAdd.r_ip);
  }
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formIPFwDel.postSecurityFlag, document.formIPFwDel);
  return true;
 }
}
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formIPFwDel.postSecurityFlag, document.formIPFwDel);
  return true;
 }
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("24" "LANG_NAT_IP_FORWARDING"); %></p>
 <p class="intro_content"> <% multilang("636" "LANG_ENTRIES_IN_THIS_TABLE_ALLOW_YOU_TO_AUTOMATICALLY_REDIRECT_TRAFFIC_TO_A_SPECIFIC_MACHINE_BEHIND_THE_NAT_FIREWALL_THESE_SETTINGS_ARE_ONLY_NECESSARY_IF_YOU_WISH_TO_HOST_SOME_SORT_OF_SERVER_LIKE_A_WEB_SERVER_OR_MAIL_SERVER_ON_THE_PRIVATE_LOCAL_NETWORK_BEHIND_YOUR_GATEWAY_S_NAT_FIREWALL"); %></p>
</div>
<form action=/boaform/formIPFw method=POST name="formIPFwAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th colspan="2">
       <input type="checkbox" name="enabled" value="ON" <% checkWrite("ipFwEn"); %>
         ONCLICK=updateState()>&nbsp;&nbsp;<% multilang("248" "LANG_ENABLE"); %> <% multilang("24" "LANG_NAT_IP_FORWARDING"); %>
   </th>
  </tr>
  <tr>
      <th width="30%"><% multilang("310" "LANG_LOCAL"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: </th>
   <td width="70%">
       <input type="text" name="l_ip" size="10" maxlength="15">
   </td>
  </tr>
  <tr>
      <th><% multilang("637" "LANG_EXTERNAL"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: </th>
      <td><input type="text" name="r_ip" size="10" maxlength="15"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
  <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="addEntry" onClick="return addClick(this)">
  <input type="hidden" value="/fw-ipfw.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
</div>
<script> updateState(); </script>
</form>
<form action=/boaform/formIPFw method=POST name="formIPFwDel">
<div class="column clearfix column_title">
 <div class="column_title_left"></div>
  <p><% multilang("638" "LANG_CURRENT_NAT_IP_FORWARDING_TABLE"); %></p>
 <div class="column_title_right"></div>
</div>
<div class="data_common data_vertical">
<table>
  <% ipFwList(); %>
</table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delSelEntry" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllEntry" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input class="link_bg" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
</div>
<script>
 <% checkWrite("ipFwNum"); %>
</script>
     <input type="hidden" value="/fw-ipfw.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
</form>
<br><br>
</body>
</html>

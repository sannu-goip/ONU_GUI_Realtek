<%SendWebHeadStr(); %>
<title>PPTP VPN <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function checkTextStr(str)
{
 for (var i=0; i<str.length; i++)
 {
  if ( str.charAt(i) == '%' || str.charAt(i) =='&' ||str.charAt(i) =='\\' || str.charAt(i) =='?' || str.charAt(i)=='"')
   return false;
 }
 return true;
}
function pptpSelection()
{
 if (document.pptp.pptpen[0].checked) {
  document.pptp.server.disabled = true;
  document.pptp.username.disabled = true;
  document.pptp.password.disabled = true;
  document.pptp.auth.disabled = true;
  document.pptp.defaultgw.disabled = true;
  document.pptp.addPPtP.disabled = true;
  document.pptp.enctype.disabled = true;
 }
 else {
  document.pptp.server.disabled = false;
  document.pptp.username.disabled = false;
  document.pptp.password.disabled = false;
  document.pptp.auth.disabled = false;
  document.pptp.defaultgw.disabled = false;
  document.pptp.addPPtP.disabled = false;
  document.pptp.enctype.disabled = true;
 }
}
function encryClick()
{
 if (document.pptp.auth.value==3) {
  document.pptp.enctype.disabled = false;
 }else
  document.pptp.enctype.disabled = true;
}
function onClickPPtpEnable()
{
 pptpSelection();
 document.pptp.lst.value = "enable";
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 document.pptp.submit();
}
function addPPtPItf(obj)
{
 if(document.pptp.pptpen[0].checked)
  return false;
 if (document.pptp.server.value=="") {
  alert("<% multilang("2373" "LANG_PLEASE_ENTER_PPTP_SERVER_ADDRESS"); %>");
  document.pptp.server.focus();
  return false;
 }
 if(!checkTextStr(document.pptp.server.value))
 {
  alert("<% multilang("2278" "LANG_INVALID_VALUE_IN_SERVER_ADDRESS"); %>");
  document.pptp.server.focus();
  return false;
 }
 if (document.pptp.username.value=="")
 {
  alert("<% multilang("2374" "LANG_PLEASE_ENTER_PPTP_CLIENT_USERNAME"); %>");
  document.pptp.username.focus();
  return false;
 }
 if(!checkTextStr(document.pptp.username.value))
 {
  alert("<% multilang("2282" "LANG_INVALID_VALUE_IN_USERNAME"); %>");
  document.pptp.username.focus();
  return false;
 }
 if (document.pptp.password.value=="") {
  alert("<% multilang("2375" "LANG_PLEASE_ENTER_PPTP_CLIENT_PASSWORD"); %>");
  document.pptp.password.focus();
  return false;
 }
 if(!checkTextStr(document.pptp.password.value))
 {
  alert("<% multilang("2284" "LANG_INVALID_VALUE_IN_PASSWORD"); %>");
  document.pptp.password.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}
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
 <p class="intro_title">PPTP VPN <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <p class="intro_content"> <% multilang("710" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_PARAMETERS_FOR_PPTP_MODE_VPN"); %></p>
</div>
<form action=/boaform/formPPtP method=POST name="pptp">
<div class="data_common data_common_notitle">
 <table>
   <tr>
       <th> PPTP VPN:</th>
       <td>
        <input type="radio" value="0" name="pptpen" <% checkWrite("pptpenable0"); %> onClick="onClickPPtpEnable()"><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
       <input type="radio" value="1" name="pptpen" <% checkWrite("pptpenable1"); %> onClick="onClickPPtpEnable()"><% multilang("248" "LANG_ENABLE"); %>
       </td>
   </tr>
 </table>
</div>
<input type="hidden" id="lst" name="lst" value="">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("91" "LANG_SERVER"); %>:</th>
   <td ><input type="text" name="server" size="32" maxlength="256"></td>
  </tr>
  <tr>
   <th><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
   <td ><input type="text" name="username" size="15" maxlength="35"></td>
  </tr>
  <tr>
   <th><% multilang("67" "LANG_PASSWORD"); %>:</th>
   <td ><input type="text" name="password" size="15" maxlength="35"></td>
  </tr>
  <tr>
   <th><% multilang("202" "LANG_AUTHENTICATION"); %>:</th>
   <td ><select name="auth" onClick="encryClick()">
    <option value="0"><% multilang("169" "LANG_AUTO"); %></option>
    <option value="1">PAP</option>
    <option value="2">CHAP</option>
    <option value="3">CHAPMSV2</option>
    </select>
   </td>
  </tr>
  <tr>
   <th><% multilang("201" "LANG_ENCRYPTION"); %>:</th>
   <td ><select name="enctype" >
     <option value="0"><% multilang("346" "LANG_NONE"); %></option>
     <option value="1">MPPE</option>
     <option value="2">MPPC</option>
     <option value="3">MPPE&MPPC</option>
    </select>
   </td>
  </tr>
  <tr>
   <th><% multilang("85" "LANG_DEFAULT_GATEWAY"); %>:</th>
   <td><input type="checkbox" name="defaultgw"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="addPPtP" onClick="return addPPtPItf(this)">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>PPTP <% multilang("330" "LANG_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th align=center width="3%"><% multilang("226" "LANG_SELECT"); %></th>
    <th align=center width="5%"><% multilang("70" "LANG_INTERFACE"); %></th>
    <th align=center width="5%"><% multilang("91" "LANG_SERVER"); %></th>
    <th align=center width="8%"><% multilang("711" "LANG_ACTION"); %></th>
   </tr>
   <% pptpList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delSel" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input type="hidden" value="/pptp.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 pptpSelection();
</script>
</form>
</blockquote>
</body>
</html>

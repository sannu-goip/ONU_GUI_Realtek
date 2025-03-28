<%SendWebHeadStr("normal_3"); %>
<TITLE>XPON ONU</TITLE>
<STYLE type=text/css>
</STYLE>
<SCRIPT language="javascript" src="common.js"></SCRIPT>
<SCRIPT language="javascript" type="text/javascript">
function on_init()
{
}
function reset_para()
{
}
function on_submit()
{
 with (document.forms[0]) {
  if (oldPasswd.value.length <= 0) {
   oldPasswd.focus();
   alert("<% multilang("2083" "LANG_PASSWORD_CANNOT_BE_EMPTY_PLEASE_TRY_IT_AGAIN"); %>");
   return;
  }
  if (newPasswd.value.length <= 0) {
   newPasswd.focus();
   alert("<% multilang("2962" "LANG_NEW_PASSWORD_CAN_NOT_BE_EMPTY_INPUT_AGAIN"); %>");
   return;
  }
  if (newPasswd.value.length < 6) {
   newPasswd.focus();
   alert("<% multilang("2958" "LANG_USER_PWD_MNG_RULE1"); %>");
   return;
  }
  if (newPasswd.value.length > 16) {
   newPasswd.focus();
   alert("<% multilang("2959" "LANG_USER_PWD_MNG_RULE2"); %>");
   return;
  }
  if (sji_checkLoginPsk(newPasswd.value, 1, 16) == false) {
   newPasswd.focus();
   alert("<% multilang("2960" "LANG_USER_PWD_MNG_RULE3"); %>"+"<% multilang("2961" "LANG_USER_PWD_MNG_RULE4"); %>");
   return;
  }
  if (confirmPasswd.value.length <= 0) {
   confirmPasswd.focus();
   alert("<% multilang("2963" "LANG_CONFIRMED_PASSWORD_CAN_NOT_BE_EMPTY_INPUT_AGAIN"); %>");
   return;
  }
  if (sji_checkusername(confirmPasswd.value, 1, 16) == false) {
   confirmPasswd.focus();
   alert("<% multilang("2964" "LANG_CONFIRMED_PASSWORD_DO_NOT_MATCH_NEW_PASSWORD_INPUT_AGAIN"); %>");
   return;
  }
  submit();
 }
}
function on_submit_cancle()
{
 window.top.location.href = "/";
 return false;
}
</script>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="on_init();">
<blockquote>
 <form id="form" action="/boaform/formLoginPassCheck" method="post">
  <div align="center">
   <table align="center">
    <tr>
     <td colspan="2" align="center" height="45px"><font color=red><b><% multilang("2957" "LANG_USER_PWD_MNG_PROMPT"); %></b></font></td>
    </tr>
    <tr>
     <td colspan="2" align="left" height="30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1,<% multilang("2958" "LANG_USER_PWD_MNG_RULE1"); %></td>
    </tr>
    <tr>
     <td colspan="2" align="left" height="30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2,<% multilang("2959" "LANG_USER_PWD_MNG_RULE2"); %></td>
    </tr>
    <tr>
     <td colspan="2" align="left" height="30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3,<% multilang("2960" "LANG_USER_PWD_MNG_RULE3"); %></td>
    </tr>
    <tr>
     <td colspan="2" align="left" height="30px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<% multilang("2961" "LANG_USER_PWD_MNG_RULE4"); %></td>
    </tr>
    <tr>
     <td align="right" width="45%" height="35px"><font size="2" color="black" ><% multilang("556" "LANG_OLD_PASSWORD"); %>:</font></td>
     <td ><input type="password" name="oldPasswd" id="oldPasswd" style="width:150; height:25" /></td>
    </tr>
    <tr>
     <td align="right" width="45%" height="35px"><font size="2" color="black" ><% multilang("557" "LANG_NEW_PASSWORD"); %>:</font></td>
     <td ><input type="password" name="newPasswd" id="newPasswd" style="width:150; height:25" /></td>
    </tr>
    <tr>
     <td align="right" width="45%" height="35px"><font size="2" color="black" ><% multilang("558" "LANG_CONFIRMED_PASSWORD"); %>:</font></td>
     <td ><input type="password" name="confirmPasswd" id="confirmPasswd" style="width:150; height:25" /></td>
    </tr>
    <tr>
     <td colspan="2" align="center" height="35px">
     <input type="button" class="link_bg" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onclick="on_submit();">
     <input type="button" class="link_bg" value="<% multilang("685" "LANG_CANCEL"); %>" <% checkWrite("hidden-cancel"); %> onclick="on_submit_cancle();">
     <input type="hidden" name="submit-url" value="">
     </td>
    </tr>
   </table>
  </div>
 </form>
</blockquote>
</body>
</html>

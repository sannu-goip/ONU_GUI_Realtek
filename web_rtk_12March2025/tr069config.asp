<% SendWebHeadStr();%>
<title>TR-069 <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function resetClick()
{
   document.tr069.reset;
}
function periodicSel() {
 if ( document.tr069.enable[0].checked ) {
  disableTextField(document.tr069.interval);
 } else {
  enableTextField(document.tr069.interval);
 }
}
<% TR069ConPageShow("ShowAuthSelFun"); %>
function isInvalidChar(c)
{
 var unsafeString = "\"\\`\,='\t";
 return unsafeString.indexOf(c) != -1
  || c.charCodeAt(0) <= 32
  || c.charCodeAt(0) >= 123;
}
function isInvalidInput(s)
{
 var i;
 for (i = 0; i < s.length; i++) {
  if (isInvalidChar(s.charAt(i)) == true)
   return true;
 }
 return false;
}
function saveChanges(obj)
{
  if (document.tr069.url.value=="") {
 alert("<% multilang("2451" "LANG_ACS_URL_CANNOT_BE_EMPTY"); %>");
 document.tr069.url.value = document.tr069.url.defaultValue;
 document.tr069.url.focus();
 return false;
  }
 if (isInvalidInput(document.tr069.username.value)) {
  alert("<% multilang("2085" "LANG_INVALID_USER_NAME"); %>");
  document.tr069.username.focus();
  return false;
 }
 if (isInvalidInput(document.tr069.password.value)) {
  alert("<% multilang("2087" "LANG_INVALID_PASSWORD"); %>");
  document.tr069.password.focus();
  return false;
 }
  if (document.tr069.enable[1].checked) {
 if ( document.tr069.interval.value=="") {
  alert("<% multilang("2452" "LANG_PLEASE_INPUT_PERIODIC_INTERVAL_TIME_"); %>");
  document.tr069.interval.focus();
  return false;
 }
 if ( validateKey( document.tr069.interval.value ) == 0 ) {
  alert("<% multilang("2453" "LANG_INTERVAL_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
  document.tr069.interval.focus();
  return false;
 }
  }
 if (isInvalidInput(document.tr069.conreqname.value)) {
  alert("<% multilang("2085" "LANG_INVALID_USER_NAME"); %>");
  document.tr069.conreqname.focus();
  return false;
 }
 if (isInvalidInput(document.tr069.conreqpw.value)) {
  alert("<% multilang("2087" "LANG_INVALID_PASSWORD"); %>");
  document.tr069.conreqpw.focus();
  return false;
 }
 if (checkString(document.tr069.conreqpath.value) == 0) {
  alert("<% multilang("2454" "LANG_INVALID_PATH"); %>");
  document.tr069.conreqpath.focus();
  return false;
 }
  if (document.tr069.conreqport.value=="") {
 alert("<% multilang("2455" "LANG_PLEASE_INPUT_THE_PORT_NUMBER_FOR_CONNECTION_REQUEST_"); %>");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  if ( validateKey( document.tr069.conreqport.value ) == 0 ) {
 alert("<% multilang("2456" "LANG_INVALID_PORT_NUMBER_OF_CONNECTION_REQUEST_IT_SHOULD_BE_1_65535"); %>");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  if ( !checkDigitRange(document.tr069.conreqport.value,1,1,65535) ) {
       alert("<% multilang("2456" "LANG_INVALID_PORT_NUMBER_OF_CONNECTION_REQUEST_IT_SHOULD_BE_1_65535"); %>");
 document.tr069.conreqport.value = document.tr069.conreqport.defaultValue;
 document.tr069.conreqport.focus();
 return false;
  }
  obj.isclick = 1;
  postTableEncrypt(document.tr069.postSecurityFlag, document.tr069);
  return true;
}
function addClick(obj)
{
 if (!checkNetIP(document.tr069_acl.aclIP, 1))
  return false;
 if (!checkNetmask(document.tr069_acl.aclMask, 1))
  return false;
 obj.isclick = 1;
 postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
  return true;
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.tr069_acl.postSecurityFlag, document.tr069_acl);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">TR-069 <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <p class="intro_content"> <% multilang("588" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_TR_069_CPE_HERE_YOU_MAY_CHANGE_THE_SETTING_FOR_THE_ACS_S_PARAMETERS"); %></p>
</div>
<form action=/boaform/formTR069Config method=POST name="tr069">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%" style="font-weight: bold; font-size: 14"><% multilang("597" "LANG_TR069_DAEMON"); %>:</th>
   <td width="70%"><font size=2>
   <input type="radio" name=autoexec value=1 <% checkWrite("tr069-autoexec-1"); %> ><% multilang("178" "LANG_ENABLED"); %>&nbsp;&nbsp;
   <input type="radio" name=autoexec value=0 <% checkWrite("tr069-autoexec-0"); %> ><% multilang("179" "LANG_DISABLED"); %></font>
   </td>
  </tr>
  <tr>
   <th width="30%" style="font-weight: bold; font-size: 14"><% multilang("248" "LANG_ENABLE"); %>CWMP<% multilang("607" "LANG_PARAMETER"); %>:</th>
   <td width="70%"><font size=2>
   <input type="radio" name=enable_cwmp value=1 <% checkWrite("tr069-enable-cwmp-1"); %> ><% multilang("178" "LANG_ENABLED"); %>&nbsp;&nbsp;
   <input type="radio" name=enable_cwmp value=0 <% checkWrite("tr069-enable-cwmp-0"); %> ><% multilang("179" "LANG_DISABLED"); %></font>
   </td>
  </tr>
  <% TR069ConPageShow("ShowDataModels"); %>
 </table>
</div>
<div ID=WANshow class="data_common data_common_notitle" style="display:none">
 <table border=0 width="500" cellspacing=4 cellpadding=0>
 <tr>
  <th width="30%"><% multilang("424" "LANG_WAN_INTERFACE"); %>:</th>
  <td width="70%">
   <select name="tr069_itf">
    <option value=65535>&nbsp;</option>
    <% if_wan_list("rt"); %>
   </select>
  </td>
 </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("598" "LANG_ACS"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
 <tr>
   <th width="30%"><% multilang("599" "LANG_URL"); %>:</th>
  <td width="70%"><input type="text" name="url" size="32" maxlength="256" value=<% getInfo("acs-url"); %>></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
  <td width="70%"><input type="text" name="username" size="32" maxlength="256" value=<% getInfo("acs-username"); %>></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("67" "LANG_PASSWORD"); %>:</th>
  <td width="70%"><input type="text" name="password" size="32" maxlength="256" value=<% getInfo("acs-password"); %>></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("589" "LANG_PERIODIC_INFORM"); %>:</th>
  <td width="70%">
  <input type="radio" name=enable value=0 <% checkWrite("tr069-inform-0"); %> onClick="return periodicSel()"><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;
  <input type="radio" name=enable value=1 <% checkWrite("tr069-inform-1"); %> onClick="return periodicSel()"><% multilang("178" "LANG_ENABLED"); %>
  </td>
 </tr>
 <tr>
  <th width="30%"><% multilang("590" "LANG_PERIODIC_INFORM_INTERVAL"); %>:</th>
  <td width="70%"><input type="text" name="interval" size="32" maxlength="10" value=<% getInfo("inform-interval"); %> <% checkWrite("tr069-interval"); %> ></td>
 </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p><% multilang("591" "LANG_CONNECTION_REQUEST"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
 <% TR069ConPageShow("ShowAuthSelect"); %>
  <tr>
      <th width="30%"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
      <td width="70%"><input type="text" name="conreqname" size="32" maxlength="256" value=<% getInfo("conreq-name"); %> <% TR069ConPageShow("DisConReqName"); %> ></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("67" "LANG_PASSWORD"); %>:</th>
      <td width="70%"><input type="text" name="conreqpw" size="32" maxlength="256" value=<% getInfo("conreq-pw"); %> <% TR069ConPageShow("DisConReqPwd"); %> ></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("592" "LANG_PATH"); %>:</th>
      <td width="70%"><input type="text" name="conreqpath" size="32" maxlength="31" value=<% getInfo("conreq-path"); %>></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("213" "LANG_PORT"); %>:</th>
      <td width="70%"><input type="text" name="conreqport" size="32" maxlength="5" value=<% getInfo("conreq-port"); %>></td>
  </tr>
</table>
</div>
<!--
<table>
  <tr><hr size=1 noshade align=top></tr>
  <tr>
      <td class="table_title">Debug:</td>
  </tr>
  <% TR069ConPageShow("ShowACSCertCPE"); %>
  <tr>
      <td class="table_item">Show Message:</td>
      <td>
      <input type="radio" name=dbgmsg value=0 <% checkWrite("tr069-dbgmsg-0"); %> >Disabled&nbsp;&nbsp;
      <input type="radio" name=dbgmsg value=1 <% checkWrite("tr069-dbgmsg-1"); %> >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">CPE Sends GetRPC:</td>
      <td>
      <input type="radio" name=sendgetrpc value=0 <% checkWrite("tr069-sendgetrpc-0"); %> >Disabled&nbsp;&nbsp;
      <input type="radio" name=sendgetrpc value=1 <% checkWrite("tr069-sendgetrpc-1"); %> >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">Skip MReboot:</td>
      <td>
      <input type="radio" name=skipmreboot value=0 <% checkWrite("tr069-skipmreboot-0"); %> >Disabled&nbsp;&nbsp;
      <input type="radio" name=skipmreboot value=1 <% checkWrite("tr069-skipmreboot-1"); %> >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item>"Delay:</td>
      <td>
      <input type="radio" name=delay value=0 <% checkWrite("tr069-delay-0"); %> >Disabled&nbsp;&nbsp;
      <input type="radio" name=delay value=1 <% checkWrite("tr069-delay-1"); %> >Enabled
      </td>
  </tr>
  <tr>
      <td class="table_item">Auto-Execution:</td>
      <td>
      <input type="radio" name=autoexec value=0 <% checkWrite("tr069-autoexec-0"); %> >Disabled&nbsp;&nbsp;
      <input type="radio" name=autoexec value=1 <% checkWrite("tr069-autoexec-1"); %> >Enabled
      </td>
  </tr>
  <% TR069ConPageShow("ShowCTInformExt"); %>
</table>
-->
<div class="btn_ctl">
 <input class="link_bg" type="submit" value=<% multilang("150" "LANG_APPLY_CHANGES"); %> name="save" onClick="return saveChanges(this)">&nbsp;&nbsp;
 <input class="link_bg" type="reset" value=<% multilang("336" "LANG_UNDO"); %> name="reset" onClick="resetClick()">
 <input type="hidden" value="/tr069config.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<% TR069ConPageShow("ShowMNGCertTable"); %>
<form action=/boaform/formTR069Config method=POST name="tr069_acl">
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th width="30%"><% multilang("248" "LANG_ENABLE"); %> CWMP WAN ACL:</th>
  <td width="70%">
  <input type="radio" name=enable_acl value=1 <% checkWrite("tr069-enable-acl-1"); %> ><% multilang("178" "LANG_ENABLED"); %>&nbsp;&nbsp;
  <input type="radio" name=enable_acl value=0 <% checkWrite("tr069-enable-acl-0"); %> ><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;&nbsp;&nbsp;
  <input class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="applyACL" onClick="return on_submit(this)">&nbsp;&nbsp; </td>
 </tr>
 <tr>
  <th width="30%"><% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
  <td width="70%"><input type="text" name="aclIP" size="15" maxlength="15"></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>:</th>
  <td width="70%"><input type="text" name="aclMask" size="15" maxlength="15"></td>
 </tr>
</table>
</div>
<div class="btn_ctl">
 <td><input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addIP" onClick="return addClick(this)">&nbsp;&nbsp;</td>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>CWMP WAN ACL <% multilang("330" "LANG_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common data_vertical">
<table>
  <% showCWMPACLTable(); %>
</table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delIP" onClick="return deleteClick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/tr069config.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<script>
 ifIdx = <% getInfo("tr069_wan_intf"); %>;
 document.tr069.tr069_itf.selectedIndex = -1;
 for( i = 0; i < document.tr069.tr069_itf.options.length; i++ )
 {
  if( ifIdx == document.tr069.tr069_itf.options[i].value )
   document.tr069.tr069_itf.selectedIndex = i;
 }
 <% DisplayTR069WAN() %>
</script>
<br><br>
</body>
</html>

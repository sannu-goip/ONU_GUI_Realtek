<% SendWebHeadStr();%>
<title>TR-069 <% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
    .stun_table {
        font-weight: 300;
    }
    .stun_table td{
        font-size: 12px;
    }
    .intro_title1{
        margin-top: 7px;
    }
    .data_vertical table{
        width: 80%;
    table-layout: fixed; /* Ensures equal column widths */
    border-collapse: collapse; /* Merges adjacent borders */
    border: 0.1px solid #ccc; 
    }
    .data_vertical th {
    border: 0.1px solid #ccc; /* Adds a border to table cells */
    
    text-align: center; 
    background-color: #f2f2f2;
    font-weight: bold;
}
</style>
<SCRIPT>
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
function resetClick()
{
   document.tr069.reset;
}
function periodicSel() {
 if(isPRACTVersion == "1")
  return false;
 if ( document.tr069.enable[0].checked ) {
  disableTextField(document.tr069.interval);
 } else {
  enableTextField(document.tr069.interval);
 }
}
function StunSel() {
 if ( document.tr069.stun_enable[0].checked ) {
  disableTextField(document.tr069.stunsvraddr);
  disableTextField(document.tr069.stunsvrport);
  disableTextField(document.tr069.stunsvruname);
  disableTextField(document.tr069.stunsvrupasswd);
 } else {
  enableTextField(document.tr069.stunsvraddr);
  enableTextField(document.tr069.stunsvrport);
  enableTextField(document.tr069.stunsvruname);
  enableTextField(document.tr069.stunsvrupasswd);
 }
}
<% TR069ConPageShow("ShowAuthSelFun"); %>
function saveChanges(obj)
{
  if (document.tr069.url.value=="") {
 alert("<% multilang("2451" "LANG_ACS_URL_CANNOT_BE_EMPTY"); %>");
 document.tr069.url.value = document.tr069.url.defaultValue;
 document.tr069.url.focus();
 return false;
  }
 if (checkString(document.tr069.username.value) == 0) {
  alert("<% multilang("2085" "LANG_INVALID_USER_NAME"); %>");
  document.tr069.username.focus();
  return false;
 }
 if (checkString(document.tr069.password.value) == 0) {
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
 if (checkString(document.tr069.conreqname.value) == 0) {
  alert("<% multilang("2085" "LANG_INVALID_USER_NAME"); %>");
  document.tr069.conreqname.focus();
  return false;
 }
 if (checkString(document.tr069.conreqpw.value) == 0) {
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
  if (document.tr069.stun_enable[1].checked) {
 if ( document.tr069.stunsvraddr.value=="") {
  alert("Please input stun server address.");
  document.tr069.stunsvraddr.focus();
  return false;
 }
 if ( document.tr069.stunsvrport.value=="") {
  alert("Please input stun server port.");
  document.tr069.stunsvrport.focus();
  return false;
 }
 if ( document.tr069.stunsvruname.value=="") {
  alert("Please input stun server user name.");
  document.tr069.stunsvruname.focus();
  return false;
 }
 if ( document.tr069.stunsvrupasswd.value=="") {
  alert("Please input stun server user password.");
  document.tr069.stunsvrupasswd.focus();
  return false;
 }
  }
  if (checkString(document.tr069.stunsvraddr.value) == 0) {
 alert('Invalid STUN Server address.');
 document.tr069.stunsvraddr.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvrport.value) == 0) {
 alert('Invalid STUN Server port.');
 document.tr069.stunsvrport.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvruname.value) == 0) {
 alert('Invalid STUN Server user name.');
 document.tr069.stunsvruname.focus();
 return false;
  }
  if (checkString(document.tr069.stunsvrupasswd.value) == 0) {
 alert('Invalid STUN Server user password.');
 document.tr069.stunsvrupasswd.focus();
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
function LockAllElement(enable){
 if( isPRACTVersion == "1")
 {
  var idx = 0;
  var frm = document.tr069;
  if ( enable )
  {
   for ( idx = 0; idx < frm.elements.length; idx ++ )
   {
    if ( 'hidden' == frm.elements[idx].type
     || 'enable_acl' == frm.elements[idx].name
     || 'aclIP' == frm.elements[idx].name
     || 'aclMask' == frm.elements[idx].name
     )
      continue;
    frm.elements[idx].disabled = true;
   }
  }
  else
  {
   if(enable == false){
    for ( idx = 0; idx < frm.elements.length; idx ++ )
    {
     if ( 'hidden' == frm.elements[idx].type )
      continue;
     frm.elements[idx].disabled = false;
    }
   }
  }
 }
}
</SCRIPT>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">TR069</a></li><li>tr069 Stun</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main ">
 <div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/TR069.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title">TR-069 <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>
 
 <p class="intro_content"> <% multilang("588" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_TR_069_CPE_HERE_YOU_MAY_CHANGE_THE_SETTING_FOR_THE_ACS_S_PARAMETERS"); %></p>
</div>
<form action=/boaform/formTR069Config method=POST name="tr069">
<div class="data_common data_common_notitle" <% checkWrite("hidden-cwmp"); %>>
 <table>
  <tr>
   <th width="30%" ><% multilang("597" "LANG_TR069_DAEMON"); %>:</th>
   <td width="70%"><font size=2>
   <input type="radio" name=autoexec value=1 <% checkWrite("tr069-autoexec-1"); %> ><% multilang("178" "LANG_ENABLED"); %>&nbsp;&nbsp;
   <input type="radio" name=autoexec value=0 <% checkWrite("tr069-autoexec-0"); %> ><% multilang("179" "LANG_DISABLED"); %></font>
   </td>
  </tr>
  <tr>
   <th width="30%"><% multilang("248" "LANG_ENABLE"); %>CWMP<% multilang("607" "LANG_PARAMETER"); %>:</th>
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
  <p class="intro_title1"><% multilang("598" "LANG_ACS"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
 <tr>
  <th width="30%"><% multilang("599" "LANG_URL"); %>:</th>
  <td width="70%"><input type="text" name="url" size="32" maxlength="256" value=<% getInfo("acs-url"); %> <% checkWrite("acl-url-disabled"); %> <% checkWrite("url-readonly"); %>></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
  <td width="70%"><input type="text" name="username" size="32" maxlength="256" value=<% getInfo("acs-username"); %> <% checkWrite("acl-url-disabled"); %>></td>
 </tr>
 <tr>
  <th width="30%"><% multilang("67" "LANG_PASSWORD"); %>:</th>
  <td width="70%"><input type="text" name="password" size="32" maxlength="256" value=<% getInfo("acs-password"); %> <% checkWrite("acl-url-disabled"); %>></td>
 </tr>
 <tr <% checkWrite("hidden-cwmp"); %>>
  <th width="30%"><% multilang("589" "LANG_PERIODIC_INFORM"); %>:</th>
  <td width="70%">
    <font style="font-size: 13px;">
  <input type="radio" name=enable value=0 <% checkWrite("tr069-inform-0"); %> onClick="return periodicSel()"><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;
  <input type="radio" name=enable value=1 <% checkWrite("tr069-inform-1"); %> onClick="return periodicSel()"><% multilang("178" "LANG_ENABLED"); %></font>
  </td>
 </tr>
 <tr>
  <th width="30%"><% multilang("590" "LANG_PERIODIC_INFORM_INTERVAL"); %>:</th>
  <td width="70%"><input type="text" name="interval" size="32" maxlength="10" <% checkWrite("acl-url-disabled"); %> value=<% getInfo("inform-interval"); %> <% checkWrite("tr069-interval"); %> ></td>
 </tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("591" "LANG_CONNECTION_REQUEST"); %></p>
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
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
   <div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div style=" 
    margin-left: 15px;"
><img src="/img/TR069.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title1" style="
    padding-top: 1px;
    margin-left: -14px;
;" ><% multilang("601" "LANG_TR069_STUN_SETTING"); %></p></div></div>
  
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common stun_table" >
<table>
  <tr <% checkWrite("stun-display"); %>>
 <td width="40%"><font size=2><b><% multilang("600" "LANG_TR069_STUN"); %>:</b></td>
 <td width="70%"><font size=2>
 <input type="radio" name=stun_enable value=0 <% checkWrite("stun-0"); %> onClick="return StunSel()"><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;
 <input type="radio" name=stun_enable value=1 <% checkWrite("stun-1"); %> onClick="return StunSel()"><% multilang("178" "LANG_ENABLED"); %></font></td>
  </tr>
  <tr>
 <td width="40%"><font size=2><b><% multilang("600" "LANG_TR069_STUN"); %><% multilang("602" "LANG_TR069_STUN_SERVER"); %><% multilang("604" "LANG_TR069_STUN_SERVER_ADDRESS"); %>:</b></td>
 <td width="70%"><input type="text" name="stunsvraddr" size="32" maxlength="256" <% checkWrite("tr069-stun"); %> value=<% getInfo("stunsvr-addr"); %> <% checkWrite("acl-url-disabled"); %> <% checkWrite("url-readonly"); %>></td>
  </tr>
  <tr>
        <td width="40%"><font size=2><b><% multilang("600" "LANG_TR069_STUN"); %><% multilang("602" "LANG_TR069_STUN_SERVER"); %><% multilang("603" "LANG_TR069_STUN_SERVER_PORT"); %>:</b></td>
        <td width="70%"><input type="text" name="stunsvrport" size="32" maxlength="5" <% checkWrite("tr069-stun"); %> value=<% getInfo("stunsvr-port"); %> <% checkWrite("acl-url-disabled"); %>></td>
  </tr>
  <tr>
 <td width="40%"><font size=2><b><% multilang("600" "LANG_TR069_STUN"); %><% multilang("602" "LANG_TR069_STUN_SERVER"); %><% multilang("605" "LANG_TR069_STUN_SERVER_USERNAME"); %>:</b></td>
 <td width="70%"><input type="text" name="stunsvruname" size="32" maxlength="256" <% checkWrite("tr069-stun"); %> value=<% getInfo("stunsvr-uname"); %>></td>
  </tr>
  <tr>
        <td width="40%"><font size=2><b><% multilang("600" "LANG_TR069_STUN"); %><% multilang("602" "LANG_TR069_STUN_SERVER"); %><% multilang("606" "LANG_TR069_STUN_SERVER_USERPASSWD"); %>:</b></td>
        <td width="70%"><input type="text" name="stunsvrupasswd" size="32" maxlength="256" <% checkWrite("tr069-stun"); %> value=<% getInfo("stunsvr-upasswd"); %>></td>
  </tr>
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
 <input class="link_bg" type="submit" value=<% multilang("150" "LANG_APPLY_CHANGES"); %> name="save" onClick="return saveChanges(this)" <% checkWrite("apply_disable"); %>>&nbsp;&nbsp;
 <input class="link_bg" type="reset" value=<% multilang("336" "LANG_UNDO"); %> name="reset" onClick="resetClick()">
 <input type="hidden" value="/tr069config_stun.asp" name="submit-url">
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
    <font style="font-size: 13px;">
      <input type="radio" name="enable_acl" value="1" <% checkWrite("tr069-enable-acl-1"); %> ><% multilang("178" "LANG_ENABLED"); %>&nbsp;&nbsp;
      <input type="radio" name="enable_acl" value="0" <% checkWrite("tr069-enable-acl-0"); %> ><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;&nbsp;&nbsp;
    </font>
    <input class="inner_btn link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="applyACL" onClick="return on_submit(this)">&nbsp;&nbsp; 
  </td>
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
  <p class="intro_title1">CWMP WAN ACL <% multilang("330" "LANG_TABLE"); %></p>
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
      <input type="hidden" value="/tr069config_stun.asp" name="submit-url">
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
 LockAllElement(true);
</script>
<br><br>
</body>
</html>

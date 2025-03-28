<%SendWebHeadStr(); %>
<title>IP/Port <% multilang("379" "LANG_FILTERING"); %></title>
<script>
function skip () { this.blur(); }
function protocolSelection()
{
 if ( document.formFilterAdd.protocol.selectedIndex == 2 )
 {
  document.formFilterAdd.sfromPort.disabled = true;
  document.formFilterAdd.stoPort.disabled = true;
  document.formFilterAdd.dfromPort.disabled = true;
  document.formFilterAdd.dtoPort.disabled = true;
 }
 else
 {
  document.formFilterAdd.sfromPort.disabled = false;
  document.formFilterAdd.stoPort.disabled = false;
  document.formFilterAdd.dfromPort.disabled = false;
  document.formFilterAdd.dtoPort.disabled = false;
 }
}
function addClick(obj)
{
 if (document.formFilterAdd.sip.value == "" && document.formFilterAdd.smask.value == ""
  && document.formFilterAdd.dip.value == "" && document.formFilterAdd.dmask.value == ""
  && document.formFilterAdd.sfromPort.value == "" && document.formFilterAdd.dfromPort.value == "") {
  alert('<% multilang("2225" "LANG_FILTER_RULES_CAN_NOT_BE_EMPTY"); %>');
  document.formFilterAdd.sip.focus();
  return false;
 }
 if (document.formFilterAdd.sip.value!="") {
  if (!checkHostIP(document.formFilterAdd.sip, 0))
   return false;
  if ( document.formFilterAdd.smask.value != "" ) {
   if (!checkNetmask(document.formFilterAdd.smask, 0))
    return false;
  }
 }
 if (document.formFilterAdd.dip.value!="") {
  if (!checkHostIP(document.formFilterAdd.dip, 0))
   return false;
  if ( document.formFilterAdd.dmask.value != "" ) {
   if (!checkNetmask(document.formFilterAdd.dmask, 0))
    return false;
  }
 }
 if ( document.formFilterAdd.sfromPort.value!="" ) {
  if ( validateKey( document.formFilterAdd.sfromPort.value ) == 0 ) {
   alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
   document.formFilterAdd.sfromPort.focus();
   return false;
  }
  d1 = getDigit(document.formFilterAdd.sfromPort.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
   document.formFilterAdd.sfromPort.focus();
   return false;
  }
  if ( document.formFilterAdd.stoPort.value!="" ) {
   if ( validateKey( document.formFilterAdd.stoPort.value ) == 0 ) {
    alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
    document.formFilterAdd.stoPort.focus();
    return false;
   }
   d1 = getDigit(document.formFilterAdd.stoPort.value, 1);
   if (d1 > 65535 || d1 < 1) {
    alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
    document.formFilterAdd.stoPort.focus();
    return false;
   }
  }
 }
 if ( document.formFilterAdd.dfromPort.value!="" ) {
  if ( validateKey( document.formFilterAdd.dfromPort.value ) == 0 ) {
   alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
   document.formFilterAdd.dfromPort.focus();
   return false;
  }
  d1 = getDigit(document.formFilterAdd.dfromPort.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
   document.formFilterAdd.dfromPort.focus();
   return false;
  }
  if ( document.formFilterAdd.dtoPort.value!="" ) {
   if ( validateKey( document.formFilterAdd.dtoPort.value ) == 0 ) {
    alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
    document.formFilterAdd.dtoPort.focus();
    return false;
   }
   d1 = getDigit(document.formFilterAdd.dtoPort.value, 1);
   if (d1 > 65535 || d1 < 1) {
    alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
    document.formFilterAdd.dtoPort.focus();
    return false;
   }
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.formFilterAdd.postSecurityFlag, document.formFilterAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formFilterDel.deleteSelFilterIpPort);
 disableButton(document.formFilterDel.deleteAllFilterIpPort);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formFilterDefault.postSecurityFlag, document.formFilterDefault);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
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
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
  return true;
 }
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">IP/Port <% multilang("379" "LANG_FILTERING"); %></p>
 <p class="intro_content"> <% multilang("380" "LANG_PAGE_DESC_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
<form action=/boaform/formFilter method=POST name="formFilterDefault">
<div class="data_common data_common_notitle" <% checkWrite("rg_hidden_function"); %>>
 <table>
  <tr <% checkWrite("rg_hidden_function"); %>>
   <th width="30%"><% multilang("381" "LANG_OUTGOING_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</th>
   <td width="70%"><input type="radio" name="outAct" value=0 <% checkWrite("ipf_out_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
    <input type="radio" name="outAct" value=1 <% checkWrite("ipf_out_act1"); %>><% multilang("383" "LANG_ALLOW"); %>&nbsp;&nbsp;
   </td>
  </tr>
  <tr <% checkWrite("rg_hidden_function"); %>>
   <th width="30%"><% multilang("384" "LANG_INCOMING_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</th>
   <td width="70%"><input type="radio" name="inAct" value=0 <% checkWrite("ipf_in_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
    <input type="radio" name="inAct" value=1 <% checkWrite("ipf_in_act1"); %>><% multilang("383" "LANG_ALLOW"); %>&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl" <% checkWrite("rg_hidden_function"); %>>
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setDefaultAction" onClick="return on_submit(this)">&nbsp;&nbsp;
 <input type="hidden" value="/fw-ipportfilter.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/formFilter method=POST name="formFilterAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">
    <% multilang("385" "LANG_DIRECTION"); %>:
    <select name=dir>
     <option select value=0><% multilang("386" "LANG_OUTGOING"); %></option>
     <option value=1><% multilang("387" "LANG_INCOMING"); %></option>
    </select>
   </th>
   <th>
    <% multilang("95" "LANG_PROTOCOL"); %>:
    <select name="protocol" onChange="protocolSelection()">
     <option select value=1>TCP</option>
     <option value=2>UDP</option>
     <option value=3>ICMP</option>
    </select>
   </th>
   <th>
    <% multilang("388" "LANG_RULE_ACTION"); %>:
       <input type="radio" name="filterMode" value="Deny" checked>&nbsp;<% multilang("382" "LANG_DENY"); %>
       <input type="radio" name="filterMode" value="Allow">&nbsp;&nbsp;<% multilang("383" "LANG_ALLOW"); %>
   </th>
  </tr>
  <tr>
   <th>
    <% multilang("389" "LANG_SOURCE"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: <input type="text" name="sip" size="10" maxlength="15">
   </th>
   <th>
    <% multilang("90" "LANG_SUBNET_MASK"); %>: <input type="text" name="smask" size="10" maxlength="15">
   </th>
   <th>
    <% multilang("213" "LANG_PORT"); %>:
    <input type="text" name="sfromPort" size="4" maxlength="5">-
     <input type="text" name="stoPort" size="4" maxlength="5">&nbsp;&nbsp;
   </th>
  </tr>
  <tr>
   <th>
    <% multilang("390" "LANG_DESTINATION"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>: <input type="text" name="dip" size="10" maxlength="15">
   </th>
   <th>
    <% multilang("90" "LANG_SUBNET_MASK"); %>: <input type="text" name="dmask" size="10" maxlength="15">
   </th>
   <th>
    <% multilang("213" "LANG_PORT"); %>:
    <input type="text" name="dfromPort" size="4" maxlength="5">-
    <input type="text" name="dtoPort" size="4" maxlength="5">&nbsp;&nbsp;
   </th>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterIpPort" onClick="return addClick(this)">
 <input type="hidden" value="/fw-ipportfilter.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/formFilter method=POST name="formFilterDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <% ipPortFilterList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterIpPort" onClick="return deleteClick(this)">
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterIpPort" onClick="return deleteAllClick(this)">
 <input type="hidden" value="/fw-ipportfilter.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% checkWrite("ipFilterNum"); %>
</script>
</form>
</body>
</html>

<%SendWebHeadStr(); %>
<title>IPv6 IP/Port <% multilang("379" "LANG_FILTERING"); %></title>
</script>
<script>
function skip () { this.blur(); }
function protocolSelection()
{
 if ( document.formFilterAdd.protocol.selectedIndex == 2 )
 {
  document.formFilterAdd.sportStart.disabled = true;
  document.formFilterAdd.sportEnd.disabled = true;
  document.formFilterAdd.dportStart.disabled = true;
  document.formFilterAdd.dportEnd.disabled = true;
 }
 else
 {
  document.formFilterAdd.sportStart.disabled = false;
  document.formFilterAdd.sportEnd.disabled = false;
  document.formFilterAdd.dportStart.disabled = false;
  document.formFilterAdd.dportEnd.disabled = false;
 }
}
function addClick(obj)
{
 if (document.formFilterAdd.sip6Start.value == "" && document.formFilterAdd.sip6PrefixLen.value == ""
  && document.formFilterAdd.dip6Start.value == "" && document.formFilterAdd.dip6PrefixLen.value == ""
  && document.formFilterAdd.sfromPort.value == "" && document.formFilterAdd.dfromPort.value == "") {
  alert('<% multilang("2225" "LANG_FILTER_RULES_CAN_NOT_BE_EMPTY"); %>');
  document.formFilterAdd.sip6Start.focus();
  return false;
 }
 with ( document.forms[1] ) {
 if(sip6Start.value != ""){
  if (! isGlobalIpv6Address(sip6Start.value) ){
   alert('<% multilang("2226" "LANG_INVALID_SOURCE_IPV6_START_ADDRESS"); %>');
   document.formFilterAdd.sip6Start.focus();
   return false;
  }
  if ( sip6PrefixLen.value != "" ) {
   if ( validateKey( document.formFilterAdd.sip6PrefixLen.value ) == 0 ) {
    alert('<% multilang("2227" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_9"); %>');
    document.formFilterAdd.sip6PrefixLen.focus();
    return false;
   }
   var prefixlen= getDigit(sip6PrefixLen.value, 1);
   if (prefixlen > 64 || prefixlen < 0) {
    alert('<% multilang("2228" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_64"); %>');
    document.formFilterAdd.sip6PrefixLen.focus();
    return false;
   }
  }
 }
 if(sip6End.value != ""){
  if (! isGlobalIpv6Address(sip6End.value) ){
   alert('<% multilang("2229" "LANG_INVALID_SOURCE_IPV6_END_ADDRESS"); %>');
   document.formFilterAdd.sip6End.focus();
   return false;
  }
 }
 if(dip6Start.value != ""){
  if (! isGlobalIpv6Address(dip6Start.value) ){
   alert('<% multilang("2230" "LANG_INVALID_DESTINATION_IPV6_START_ADDRESS"); %>');
   document.formFilterAdd.dip6Start.focus();
   return false;
  }
  if ( dip6PrefixLen.value != "" ) {
   if ( validateKey( document.formFilterAdd.dip6PrefixLen.value ) == 0 ) {
    alert('<% multilang("2231" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_9"); %>');
    document.formFilterAdd.dip6PrefixLen.focus();
    return false;
   }
   var prefixlen= getDigit(dip6PrefixLen.value, 1);
   if (prefixlen > 64 || prefixlen < 0) {
    alert('<% multilang("2232" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_64"); %>');
    document.formFilterAdd.dip6PrefixLen.focus();
    return false;
   }
  }
 }
 if(dip6End.value != ""){
  if (! isGlobalIpv6Address(dip6End.value) ){
   alert('<% multilang("2233" "LANG_INVALID_DESTINATION_IPV6_END_ADDRESS"); %>');
   document.formFilterAdd.dip6End.focus();
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
 <p class="intro_title">IPv6 IP/Port <% multilang("379" "LANG_FILTERING"); %></p>
 <p class="intro_content"> <% multilang("380" "LANG_PAGE_DESC_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
<form action=/boaform/formFilterV6 method=POST name="formFilterDefault">
<div class="data_common data_common_notitle" <% checkWrite("rg_hidden_function"); %>>
<table>
 <tr <% checkWrite("rg_hidden_function"); %>>
  <th width="30%"><% multilang("381" "LANG_OUTGOING_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</th>
  <td width="70%">
   <input type="radio" name="outAct" value=0 <% checkWrite("v6_ipf_out_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
      <input type="radio" name="outAct" value=1 <% checkWrite("v6_ipf_out_act1"); %>><% multilang("383" "LANG_ALLOW"); %>&nbsp;&nbsp;
  </td>
 </tr>
 <tr <% checkWrite("rg_hidden_function"); %>>
  <th width="30%"><% multilang("384" "LANG_INCOMING_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</th>
  <td width="70%">
   <input type="radio" name="inAct" value=0 <% checkWrite("v6_ipf_in_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
      <input type="radio" name="inAct" value=1 <% checkWrite("v6_ipf_in_act1"); %>><% multilang("383" "LANG_ALLOW"); %>&nbsp;&nbsp;
  </td>
 </tr>
</table>
</div>
<div class="btn_ctl" <% checkWrite("rg_hidden_function"); %>>
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setDefaultAction" onClick="return on_submit(this)">&nbsp;&nbsp;
 <input type="hidden" value="/fw-ipportfilter-v6.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/formFilterV6 method=POST name="formFilterAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("385" "LANG_DIRECTION"); %>: </th>
   <td>
    <select name="dir">
     <option select value=0><% multilang("386" "LANG_OUTGOING"); %></option>
     <option value=1><% multilang("387" "LANG_INCOMING"); %></option>
    </select>&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <th><% multilang("95" "LANG_PROTOCOL"); %>: </th>
   <td>
    <select name="protocol" onChange="protocolSelection()">
     <option select value=1>TCP</option>
     <option value=2>UDP</option>
     <option value=3>ICMPV6</option>
    </select>&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <th><% multilang("388" "LANG_RULE_ACTION"); %>:</th>
   <td width="70%" colspan=2>
     <input type="radio" name="filterMode" value="Deny" checked>&nbsp;<% multilang("382" "LANG_DENY"); %>
     <input type="radio" name="filterMode" value="Allow">&nbsp;&nbsp;<% multilang("383" "LANG_ALLOW"); %>
   </td>
  </tr>
 </table>
 <table>
    <tr>
    <th width="30%"><% multilang("389" "LANG_SOURCE"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
    <td width="70%"><input type="text" size="16" name="sip6Start" style="width:150px"> - <input type="text" size="16" name="sip6End" style="width:150px"></td>
    </tr>
    <tr>
    <th><% multilang("389" "LANG_SOURCE"); %> <% multilang("474" "LANG_PREFIX_LENGTH"); %>:</th>
    <td><input type="text" size="16" name="sip6PrefixLen" style="width:150px"></td>
    </tr>
    <tr>
    <th><% multilang("390" "LANG_DESTINATION"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</th>
    <td><input type="text" size="16" name="dip6Start" style="width:150px"> - <input type="text" size="16" name="dip6End" style="width:150px"></td>
    </tr>
    <tr>
    <th><% multilang("390" "LANG_DESTINATION"); %> <% multilang("474" "LANG_PREFIX_LENGTH"); %>:</th>
    <td><input type="text" size="16" name="dip6PrefixLen" style="width:150px"></td>
    </tr>
    <tr>
    <th><% multilang("389" "LANG_SOURCE"); %> <% multilang("213" "LANG_PORT"); %>:</th>
    <td><input type="text" size="6" name="sfromPort" style="width:150px"> - <input type="text" size="6" name="stoPort" style="width:150px"></td>
    </tr>
    <tr>
    <th><% multilang("390" "LANG_DESTINATION"); %> <% multilang("213" "LANG_PORT"); %>:</th>
    <td><input type="text" size="6" name="dfromPort" style="width:150px"> - <input type="text" size="6" name="dtoPort" style="width:150px"></td>
    </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterIpPort" onClick="return addClick(this)">
 <input type="hidden" value="/fw-ipportfilter-v6.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/formFilterV6 method=POST name="formFilterDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <% ipPortFilterListV6(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterIpPort" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterIpPort" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/fw-ipportfilter-v6.asp" name="submit-url">
</div>
<script>
 <% checkWrite("ipFilterNumV6"); %>
</script>
</form>
</body>
</html>

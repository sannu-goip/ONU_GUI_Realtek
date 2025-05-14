<% SendWebHeadStr();%>
<title>IP/Port <% multilang("379" "LANG_FILTERING"); %></title>
<style>
  /* Typography */
  .intro_main {
    padding: 10px; /* Reduced padding */
    border-bottom: 1px solid #ddd;
}
.ipport_table table{
  border-collapse: collapse;
  border: 1px solid #ccc;
}
.ipport_table table th, .ipport_table table td{
  text-align: center;
  border: 1px solid #ccc;
}
.intro_title {
    font-size: 24px; /* Smaller font size */
    
    color: #f58220;
    margin: 0;
}
  .intro_content {
    color: #333;
    margin-bottom: 20px;
    font-size: 12px;
  }
  
  /* Layout and sections */

  .data_common1 th, .data_common1 td{
    font-size: 13px;
  }
  .btn_ctl {
    margin-bottom: 20px;
  }
  
  .btn_ctl:last-of-type {
    text-align: right;
  }
  
  /* Form elements */
  input[type="text"] {
    margin-left: 5px;
    padding: 3px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  select {
    margin-left: 5px;
    padding: 3px;
    border: 1px solid #ccc;
    border-radius: 3px;
  }
  
  .link_bg, .inner_btn {
    height: 27px; /* Reduced height */
    background-color: #f58220;
    color: white;
    border: 1px solid #e9e5e5;
    border-radius: 3px;
    padding: 4px 8px; /* Compact padding */
    font-size: 12px; /* Smaller font size */
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
}

.link_bg:hover, .inner_btn:hover {
  border: 1px solid #f58220;
    background-color: white;
    color: #f58220;
}
  
  /* Radio buttons alignment */
  .radio-group {
    display: inline-flex;
    align-items: center;
  }
  
  .radio-group input[type="radio"] {
    margin: 0 5px 0 0;
  }
  
  /* Tables */
  table {
    width: 100%;
  }
  form{
    margin-left: 20px;
  }
  th {
    text-align: left;
    padding: 8px 0;
    font-weight: 400;
    font-size: 14px;
  }
  td{
    font-size: 14px;
  }
  /* Current Filter Table */
  .column {
    margin-bottom: 20px;
  }
  
  .column_title {
    background-color: #f5f5f5;
    border: 1px solid #e0e0e0;
    border-bottom: none;
  }
  
  .column_title p {
    color: #ff6600;
    padding: 10px;
    margin: 0;
    font-weight: bold;
  }
  
  .data_vertical {
    border: 1px solid #e0e0e0;
  }
  
  .data_vertical table {
    border-collapse: collapse;
  }
  
  .data_vertical th {
    padding: 8px;
    border-bottom: 1px solid #e0e0e0;
    background-color: #f5f5f5;
    text-align: center;
  }
</style>
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
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Port Filter</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/port.png" style="width:38px;"></div>
<div style="padding-top:18px;"><p class="intro_title">IP/Port <% multilang("379" "LANG_FILTERING"); %></p></div></div>
  
 
 <p class="intro_content"> <% multilang("380" "LANG_PAGE_DESC_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
<form action=/boaform/formFilter method=POST name="formFilterDefault">
<div class="data_common1 data_common_notitle">
 <table style="margin-top: 15px;">
  <tr>
   <th width="40%"><% multilang("395" "LANG_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</th>
   <td width="30%">
    <div class="radio-group">
    <input type="radio" name="outAct" value=0 <% checkWrite("ipf_out_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;</div>
    <div class="radio-group"><input type="radio" name="outAct" value=1 <% checkWrite("ipf_out_act1"); %>><% multilang("383" "LANG_ALLOW"); %></div>
  
   </td>
   <td width="30%" style="text-align: left;">
    <input class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setDefaultAction" onClick="return on_submit(this)">
   </td>
  </tr>
  <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
 </table>
</div>
</form>
<form action=/boaform/formFilter method=POST name="formFilterAdd">
<div class="data_common1 data_common_notitle">
 <table style="margin-top: 10px;">
  <tr>
   <th width="70%" style="display: flex;">
    <div style="width: 165px;">
    <% multilang("95" "LANG_PROTOCOL"); %>:
  </div>
  <div>
    <select name="protocol" onChange="protocolSelection()" style="width: 172px;">
    <option select value=1>TCP</option>
    <option value=2>UDP</option>
    <option value=3>ICMP</option>
    </select>
  </div>
   </th>
   <th colspan=2><% multilang("388" "LANG_RULE_ACTION"); %>:&nbsp;&nbsp;
    <div class="radio-group">
    <input type="radio" name="filterMode" value="Deny" checked><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;</div>
    <div class="radio-group">
    <input type="radio" name="filterMode" value="Allow"><% multilang("383" "LANG_ALLOW"); %></div>
   </th>
  </tr>
  <tr>
   <th width="70%" style="display: flex;">
    <div style="width: 165px;">
    <% multilang("389" "LANG_SOURCE"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</div> <div> <input style="width: 165px;" type="text" name="sip" size="10" maxlength="15"></div></th>
   <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>: <input style="width: 165px;" type="text" name="smask" size="10" maxlength="15"></th>
   <th width="30%"><% multilang("213" "LANG_PORT"); %>:
    <input style="width: 80px;" type="text" name="sfromPort" size="4" maxlength="5">-
    <input style="width: 80px;" type="text" name="stoPort" size="4" maxlength="5">
   </th>
  </tr>
  <tr>
   <th width="70%" style="display: flex;"><div style="width: 165px;"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</div><div><input style="width: 165px;" type="text" name="dip" size="10" maxlength="15"></div> </th>
   <th width="30%"><% multilang("90" "LANG_SUBNET_MASK"); %>: <input style="width: 165px;" type="text" name="dmask" size="10" maxlength="15">&nbsp;&nbsp;</th>
   <th width="30%"><% multilang("213" "LANG_PORT"); %>:
    <input style="width: 80px;" type="text" name="dfromPort" size="4" maxlength="5">-
    <input style="width: 80px;" type="text" name="dtoPort" size="4" maxlength="5">&nbsp;&nbsp;
   </th>
  </tr>
 </table>
</div>
<div class="btn_ctl" style="text-align: right; margin-right: 10%;">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterIpPort" onClick="return addClick(this)">
 <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<div class="" style="border: none;">
  <p class="intro_title1"><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></p>
 </div>
<form action=/boaform/formFilter method=POST name="formFilterDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  
  <div class="column_title_right"></div>
 </div>
 <div class="data_common1 data_vertical ipport_table" style="border: none;">
  <table style="width: 100%; table-layout: fixed; border-collapse: collapse; border: 1px solid #ccc;">
   <% ipPortFilterList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterIpPort" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterIpPort" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/fw-ipportfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
 <script>
  <% checkWrite("ipFilterNum"); %>
 </script>
</form>
</body>
</html>

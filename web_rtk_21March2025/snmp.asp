<% SendWebHeadStr();%>
<title>SNMP <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function saveChanges(obj)
{
  if (!checkHostIP(document.snmpTable.snmpTrapIpAddr, 1))
 return false;
  if ( validateKey( document.snmpTable.snmpSysObjectID.value ) == 0 ) {
 alert("<% multilang("2437" "LANG_INVALID_OBJECT_ID_VALUE_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
 document.snmpTable.snmpSysObjectID.value = document.snmpTable.snmpSysObjectID.defaultValue;
 document.snmpTable.snmpSysObjectID.focus();
 return false;
  }
  var i=0;
  var str=document.snmpTable.snmpSysObjectID.value;
  while (str.length!=0) {
 if ( str.charAt(0) == '.' ) {
  i++;
 }
 str = str.substring(1);
  }
  if ( i!=6 ) {
   alert("<% multilang("2438" "LANG_INVALID_OBJECT_ID_VALUE_IT_SHOULD_BE_FILL_WITH_OID_STRING_AS_1_3_6_1_4_1_X"); %>");
   document.snmpTable.snmpSysObjectID.value = document.snmpTable.snmpSysObjectID.defaultValue;
 document.snmpTable.snmpSysObjectID.focus();
   return false;
  }
  var str2 = document.snmpTable.snmpSysObjectID.value.substring(0, 11);
  if( str2!="1.3.6.1.4.1" ) {
   alert("<% multilang("2439" "LANG_INVALID_OBJECT_ID_VALUE_IT_SHOULD_BE_FILL_WITH_PREFIX_OID_STRING_AS_1_3_6_1_4_1"); %>");
   document.snmpTable.snmpSysObjectID.value = document.snmpTable.snmpSysObjectID.defaultValue;
 document.snmpTable.snmpSysObjectID.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpSysDescr.value) == 0) {
 alert("<% multilang("2440" "LANG_INVALID_SYSTEM_DESCRIPTION"); %>");
 document.snmpTable.snmpSysDescr.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpSysContact.value) == 0) {
 alert("<% multilang("2441" "LANG_INVALID_SYSTEM_CONTACT"); %>");
 document.snmpTable.snmpSysContact.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpSysName.value) == 0) {
 alert("<% multilang("2442" "LANG_INVALID_SYSTEM_NAME"); %>");
 document.snmpTable.snmpSysName.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpSysLocation.value) == 0) {
 alert("<% multilang("2443" "LANG_INVALID_SYSTEM_LOCATION_"); %>");
 document.snmpTable.snmpSysLocation.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpCommunityRO.value) == 0) {
 alert("<% multilang("2444" "LANG_INVALID_COMMUNITY_NAME_READ_ONLY"); %>");
 document.snmpTable.snmpCommunityRO.focus();
 return false;
  }
  if (checkString(document.snmpTable.snmpCommunityRW.value) == 0) {
 alert("<% multilang("2445" "LANG_INVALID_COMMUNITY_NAME_WRITE_ONLY"); %>");
 document.snmpTable.snmpCommunityRW.focus();
 return false;
  }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">SNMP <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <p class="intro_content"><% multilang("776" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_SNMP_HERE_YOU_MAY_CHANGE_THE_SETTINGS_FOR_SYSTEM_DESCRIPTION_TRAP_IP_ADDRESS_COMMUNITY_NAME_ETC"); %></p>
</div>
<form action=/boaform/formSnmpConfig method=POST name="snmpTable">
<div class="data_common data_common_notitle">
 <table>
  <tr>
    <th width="40%">SNMP:</th>
    <td width="60%">
     <input type="radio" value="0" name="snmp_enable" <% checkWrite("snmpd-on"); %> ><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="snmp_enable" <% checkWrite("snmpd-off"); %> ><% multilang("248" "LANG_ENABLE"); %>&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <th width="40%"><% multilang("777" "LANG_SYSTEM_DESCRIPTION"); %>:</th>
    <td width="60%"><input type="text" name="snmpSysDescr" size="50" maxlength="64" value="<% getInfo("snmpSysDescr"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("778" "LANG_SYSTEM_CONTACT"); %>:</th>
    <td width="60%"><input type="text" name="snmpSysContact" size="50" maxlength="64" value="<% getInfo("snmpSysContact"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("74" "LANG_SYSTEM"); %><% multilang("701" "LANG_NAME"); %>:</th>
    <td width="60%"><input type="text" name="snmpSysName" size="50" maxlength="64" value="<% getInfo("snmpSysName"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("779" "LANG_SYSTEM_LOCATION"); %>:</th>
    <td width="60%"><input type="text" name="snmpSysLocation" size="50" maxlength="64" value="<% getInfo("snmpSysLocation"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("780" "LANG_SYSTEM_OBJECT_ID"); %>:</th>
    <td width="60%"><input type="text" name="snmpSysObjectID" size="50" maxlength="64" value="<% getInfo("snmpSysObjectID"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("781" "LANG_TRAP_IP_ADDRESS"); %>:</th>
    <td width="60%"><input type="text" name="snmpTrapIpAddr" size="15" maxlength="15" value=<% getInfo("snmpTrapIpAddr"); %>></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("782" "LANG_COMMUNITY_NAME_READ_ONLY"); %>:</th>
    <td width="60%"><input type="text" name="snmpCommunityRO" size="50" maxlength="64" value="<% getInfo("snmpCommunityRO"); %>"></td>
  </tr>
  <tr>
    <th width="40%"><% multilang("783" "LANG_COMMUNITY_NAME_WRITE_ONLY"); %>:</th>
    <td width="60%"><input type="text" name="snmpCommunityRW" size="50" maxlength="64" value="<% getInfo("snmpCommunityRW"); %>"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)">&nbsp;&nbsp;
      <input class="link_bg" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
      <input type="hidden" value="/snmp.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
 </form>
</body>
</html>

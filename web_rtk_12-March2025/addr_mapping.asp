<%SendWebHeadStr(); %>
<title><% multilang("643" "LANG_ADDRESS_MAPPING_RULE"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function saveClick()
{
 var ls, le, gs, ge;
 var ls1, le1, gs1, ge1;
 var ls2, le2, gs2, ge2;
 var ls3, le3, gs3, ge3;
 ls = getDigit(document.addressMap.lsip.value,4);
   le = getDigit(document.addressMap.leip.value,4);
   gs = getDigit(document.addressMap.gsip.value,4);
   ge = getDigit(document.addressMap.geip.value,4);
   ls1 = getDigit(document.addressMap.lsip.value,1);
   le1 = getDigit(document.addressMap.leip.value,1);
   gs1 = getDigit(document.addressMap.gsip.value,1);
   ge1 = getDigit(document.addressMap.geip.value,1);
   ls2 = getDigit(document.addressMap.lsip.value,2);
   le2 = getDigit(document.addressMap.leip.value,2);
   gs2 = getDigit(document.addressMap.gsip.value,2);
   ge2 = getDigit(document.addressMap.geip.value,2);
   ls3 = getDigit(document.addressMap.lsip.value,3);
   le3 = getDigit(document.addressMap.leip.value,3);
   gs3 = getDigit(document.addressMap.gsip.value,3);
   ge3 = getDigit(document.addressMap.geip.value,3);
 if ( document.addressMap.addressMapType.selectedIndex == 0 ) {
   } else if ( document.addressMap.addressMapType.selectedIndex == 1 ) {
    if ( !checkIP(document.addressMap.lsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.gsip)) {
     return false;
    }
   } else if ( document.addressMap.addressMapType.selectedIndex == 2 ) {
    if ( !checkIP(document.addressMap.lsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.leip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.gsip)) {
     return false;
    }
    if ( ls1 != le1 || ls2 != le2 || ls3 != le3 ) {
   alert('<% multilang("2074" "LANG_LOCAL_START_IP_DOMAIN_IS_DIFFERENT_FROM_LOCAL_END_IP"); %>');
     document.addressMap.lsip.focus();
     return false;
    }
    if ( le <= ls ) {
   alert('<% multilang("2075" "LANG_INVALID_LOCAL_IP_RANGE"); %>');
     document.addressMap.lsip.focus();
     return false;
    }
   } else if ( document.addressMap.addressMapType.selectedIndex == 3 ) {
  if ( !checkIP(document.addressMap.lsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.leip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.gsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.geip)) {
     return false;
    }
    if ( ls1 != le1 || ls2 != le2 || ls3 != le3 ) {
   alert('<% multilang("2074" "LANG_LOCAL_START_IP_DOMAIN_IS_DIFFERENT_FROM_LOCAL_END_IP"); %>');
     document.addressMap.lsip.focus();
     return false;
    }
    if ( gs1 != ge1 || gs2 != ge2 || gs3 != ge3 ) {
   alert('<% multilang("2077" "LANG_GLOBAL_START_IP_DOMAIN_IS_DIFFERENT_FROM_GLOBAL_END_IP"); %>');
     document.addressMap.gsip.focus();
     return false;
    }
    if ( le <= ls ) {
   alert('<% multilang("2075" "LANG_INVALID_LOCAL_IP_RANGE"); %>');
     document.addressMap.lsip.focus();
     return false;
    }
    if ( ge <= gs ) {
   alert('<% multilang("2078" "LANG_INVALID_GLOBAL_IP_RANGE"); %>');
     document.addressMap.gsip.focus();
     return false;
    }
   } else if ( document.addressMap.addressMapType.selectedIndex == 4 ) {
  if ( !checkIP(document.addressMap.lsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.gsip)) {
     return false;
    }
    if ( !checkIP(document.addressMap.geip)) {
     return false;
    }
    if ( gs1 != ge1 || gs2 != ge2 || gs3 != ge3 ) {
   alert('<% multilang("2077" "LANG_GLOBAL_START_IP_DOMAIN_IS_DIFFERENT_FROM_GLOBAL_END_IP"); %>');
     document.addressMap.gsip.focus();
     return false;
    }
    if ( ge <= gs ) {
   alert('<% multilang("2078" "LANG_INVALID_GLOBAL_IP_RANGE"); %>');
     document.addressMap.gsip.focus();
     return false;
    }
   }
 document.addressMap.save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
}
function checkState()
{
 if ( document.addressMap.addressMapType.selectedIndex == 0 ) {
  disableTextField(document.addressMap.lsip);
    disableTextField(document.addressMap.leip);
    disableTextField(document.addressMap.gsip);
    disableTextField(document.addressMap.geip);
   } else if ( document.addressMap.addressMapType.selectedIndex == 1 ) {
    enableTextField(document.addressMap.lsip);
    disableTextField(document.addressMap.leip);
    enableTextField(document.addressMap.gsip);
    disableTextField(document.addressMap.geip);
   } else if ( document.addressMap.addressMapType.selectedIndex == 2 ) {
    enableTextField(document.addressMap.lsip);
    enableTextField(document.addressMap.leip);
    enableTextField(document.addressMap.gsip);
    disableTextField(document.addressMap.geip);
   } else if ( document.addressMap.addressMapType.selectedIndex == 3 ) {
  enableTextField(document.addressMap.lsip);
    enableTextField(document.addressMap.leip);
    enableTextField(document.addressMap.gsip);
    enableTextField(document.addressMap.geip);
   } else if ( document.addressMap.addressMapType.selectedIndex == 4 ) {
  enableTextField(document.addressMap.lsip);
    disableTextField(document.addressMap.leip);
    enableTextField(document.addressMap.gsip);
    enableTextField(document.addressMap.geip);
   }
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("643" "LANG_ADDRESS_MAPPING_RULE"); %></p>
 <p class="intro_content"> <% multilang("644" "LANG_THIS_PAGE_IS_USED_TO_SET_AND_CONFIGURE_THE_ADDRESS_MAPPING_RULE_FOR_YOUR_DEVICE"); %></p>
</div>
<form action=/boaform/formAddressMap method=POST name="addressMap">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">Type:</th>
   <td>
    <select size="1" name="addressMapType" onChange="checkState()">
    <% checkWrite("addressMapType"); %>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%"><% multilang("650" "LANG_LOCAL_START_IP"); %>:</th>
   <td width="70%"><input type="text" name="lsip" size="15" maxlength="15" value=<% getInfo("local-s-ip"); %>></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("651" "LANG_LOCAL_END_IP"); %>:</th>
   <td width="70%"><input type="text" name="leip" size="15" maxlength="15" value=<% getInfo("local-e-ip"); %>></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("652" "LANG_GLOBAL_START_IP"); %>:</th>
   <td width="70%"><input type="text" name="gsip" size="15" maxlength="15" value=<% getInfo("global-s-ip"); %>></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("653" "LANG_GLOBAL_END_IP"); %>:</th>
   <td width="70%"><input type="text" name="geip" size="15" maxlength="15" value=<% getInfo("global-e-ip"); %>></td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveClick()">&nbsp;&nbsp;
 <input type="hidden" value="/addr_mapping.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% initPage("addressMap"); %>
</script>
</form>
<br><br>
</body>
</html>

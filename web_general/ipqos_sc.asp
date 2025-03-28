<%SendWebHeadStr(); %>
<title>IP QoS <% multilang("41" "LANG_CLASSIFICATION"); %></title>
<script>
function dscp_st(val, name) {
 this.val = val;
 this.name = name;
}
var dscps=new Array();
dscps.push(new dscp_st(0, ""));
dscps.push(new dscp_st(1, "default(000000)"));
dscps.push(new dscp_st(57, "AF13(001110)"));
dscps.push(new dscp_st(49, "AF12(001100)"));
dscps.push(new dscp_st(41, "AF11(001010)"));
dscps.push(new dscp_st(33, "CS1(001000)"));
dscps.push(new dscp_st(89, "AF23(010110)"));
dscps.push(new dscp_st(81, "AF22(010100)"));
dscps.push(new dscp_st(73, "AF21(010010)"));
dscps.push(new dscp_st(65, "CS2(010000)"));
dscps.push(new dscp_st(121, "AF33(011110)"));
dscps.push(new dscp_st(113, "AF32(011100)"));
dscps.push(new dscp_st(105, "AF31(011010)"));
dscps.push(new dscp_st(97, "CS3(011000)"));
dscps.push(new dscp_st(153, "AF43(100110)"));
dscps.push(new dscp_st(145, "AF42(100100)"));
dscps.push(new dscp_st(137, "AF41(100010)"));
dscps.push(new dscp_st(129, "CS4(100000)"));
dscps.push(new dscp_st(185, "EF(101110)"));
dscps.push(new dscp_st(161, "CS5(101000)"));
dscps.push(new dscp_st(193, "CS6(110000)"));
dscps.push(new dscp_st(225, "CS7(111000)"));
function writeDscpList()
{
 for (var i = 0; i < dscps.length; i++)
 {
  document.writeln('<option value=' + dscps[i].val + '>' + dscps[i].name + '</option>');
 }
}
function onchange_sel1()
{
}
function onchange_sel2()
{
 with (document.forms[0] )
 {
  prot.value = 0;
  s_dscp.value = 0;
  sip.value = smask.value = sport.value = "";
  dip.value = dmask.value = dport.value = "";
  phyport.value = 0;
 }
}
function adminClick()
{
 var i, num;
 num = document.qos.elements.length;
 if (document.qos.qosen[0].checked) {
  for (i=2; i<num; i++) {
   document.qos[i].disabled = true;
  }
  document.qos.admin.disabled = false;
  document.qos[num-1].disabled = false;
 }
 else {
  for (i=2; i<num; i++) {
   document.qos[i].disabled = false;
  }
  if (document.qos.prot.value != 1 && document.qos.prot.value != 2) {
   document.qos.sport.disabled = true;
   document.qos.dport.disabled = true;
  }
  if (document.qos.dscpenable[0].checked) {
   document.qos.dscp.disabled = true;
   document.qos.ipprio.disabled = false;
   document.qos.tos.disabled = false;
  }
  else {
   document.qos.dscp.disabled = false;
   document.qos.ipprio.disabled = true;
   document.qos.tos.disabled = true;
  }
 }
 onchange_sel1();
}
function addClick(obj)
{
 if ((document.qos.sip.value == "") && (document.qos.smask.value == "") && (document.qos.sport.value == "")
  && (document.qos.dip.value == "") && (document.qos.dmask.value == "") && (document.qos.dport.value == "")
  && (document.qos.prot.value == 0) && (document.qos.phyport.value == 0) && (document.qos.s_dscp.value == 0)
                                        ) {
  alert('<% multilang("2267" "LANG_TRAFFIC_CLASSIFICATION_RULES_CAN_T_BE_EMPTY"); %>');
  document.qos.sip.focus();
  return false;
 }
 if ( document.qos.sip.value!="" ) {
  if (!checkHostIP(document.qos.sip, 0))
   return false;
  if ( document.qos.smask.value != "" ) {
   if (!checkNetmask(document.qos.smask, 0))
    return false;
  }
 }
 if ( document.qos.dip.value!="" ) {
  if (!checkHostIP(document.qos.dip, 0))
   return false;
  if ( document.qos.dmask.value != "" ) {
   if (!checkNetmask(document.qos.dmask, 0))
    return false;
  }
 }
 if ( document.qos.sport.value!="" ) {
  if ( validateKey( document.qos.sport.value ) == 0 ) {
   alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
   document.qos.sport.focus();
   return false;
  }
  d1 = getDigit(document.qos.sport.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
   document.qos.sport.focus();
   return false;
  }
 }
 if ( document.qos.dport.value!="" ) {
  if ( validateKey( document.qos.dport.value ) == 0 ) {
   alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
   document.qos.dport.focus();
   return false;
  }
  d1 = getDigit(document.qos.dport.value, 1);
  if (d1 > 65535 || d1 < 1) {
   alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
   document.qos.dport.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.qos.postSecurityFlag, document.qos);
 return true;
}
function dscpClick()
{
 if (document.qos.dscpenable[0].checked) {
  document.qos.dscp.disabled = true;
  document.qos.ipprio.disabled = false;
  document.qos.tos.disabled = false;
 }
 else {
  document.qos.dscp.disabled = false;
  document.qos.ipprio.disabled = true;
  document.qos.tos.disabled = true;
 }
}
function qosClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, '', settings );
}
function enable8021psetting()
{
 if(document.qos.qosdmn.selectedIndex==1)
 {
  if (document.getElementById) {
   document.getElementById('qos1p').style.display = 'block';
   document.getElementById('qosPred').style.display = 'none';
  } else if (document.layers == false) {
   document.all.qos1p.style.display = 'block';
   document.all.qosPred.style.display = 'none';
  }
 } else {
  if (document.getElementById) {
   document.getElementById('qos1p').style.display = 'none';
   document.getElementById('qosPred').style.display = 'block';
   } else if (document.layers == false) {
   document.all.qos1p.style.display = 'none';
   document.all.qosPred.style.display = 'block';
   }
 }
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.qostbl.postSecurityFlag, document.qostbl);
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
  postTableEncrypt(document.qostbl.postSecurityFlag, document.qostbl);
  return true;
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.qos.postSecurityFlag, document.qos);
 return true;
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">IP QoS <% multilang("41" "LANG_CLASSIFICATION"); %></p>
 <p class="intro_content"> <% multilang("658" "LANG_ENTRIES_IN_THIS_TABLE_ARE_USED_TO_ASSIGN_THE_PRECEDENCE_FOR_EACH_INCOMING_PACKET_IF_DISABLE_IP_QOS_TRAFFIC_SHAPING_WILL_BE_EFFECTIVE_OTHERWISE_TRAFFIC_SHAPING_IS_INVALID"); %></p>
</div>
<form action=/boaform/formIPQoS method=POST name=qos>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th>IP QoS:</th>
   <td>
    <input type="radio" name=qosen value=0 onClick="return adminClick()"><font size=2><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;
    <input type="radio" name=qosen value=1 onClick="return adminClick()"><font size=2><% multilang("178" "LANG_ENABLED"); %>
   </td>
  </tr>
  <tr>
   <th><% multilang("659" "LANG_POLICY"); %>:</th>
   <td>
    <input type="radio" name=qosPolicy value=0><font size=2>PRIO&nbsp;&nbsp;
    <input type="radio" name=qosPolicy value=1><font size=2>WRR&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <% dft_qos(); %>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type=submit value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name=admin onClick="return on_submit(this)">
</div>
<div id="qos1p" style="display:none" class="link_bg">
 <input class="link_bg" type="button" value="802.1p Config" name="8021pTbl" onClick="qosClick('/qos_8021p.asp')">
</div>
<div id="qosPred" style="display:none" class="link_bg">
 <input class="link_bg" type="button" value="IP Pred Config" name="predTbl" onClick="qosClick('/qos_pred.asp')">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("661" "LANG_SPECIFY_TRAFFIC_CLASSIFICATION_RULES"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th><% multilang("95" "LANG_PROTOCOL"); %>:</th>
    <td><select name=prot style="width:150px " onClick="return adminClick()">
     <option value=0></option>
     <option value=1>TCP</option>
     <option value=2>UDP</option>
     <option value=3>ICMP</option>
    </select>
    </td>
   <tr>
   <tr>
    <% match_dscp(); %>
   </tr>
   <tr><th><% multilang("389" "LANG_SOURCE"); %> IP:</th><td><input type=text name=sip size=20 maxlength=15 onChange="onchange_sel1();"></td></tr>
   <tr><th><% multilang("662" "LANG_SOURCE_MASK"); %>:</th><td><input type=text name=smask size=20 maxlength=15 onChange="onchange_sel1();"></td></tr>
   <tr><th><% multilang("392" "LANG_SOURCE_PORT"); %>:</th><td><input type=text name=sport size=10 maxlength=5 onChange="onchange_sel1();"></td></tr>
   <tr><th><% multilang("390" "LANG_DESTINATION"); %> IP:</th><td><input type=text name=dip size=20 maxlength=15 onChange="onchange_sel1();"></td></tr>
   <tr><th><% multilang("663" "LANG_DESTINATION_MASK"); %>:</th><td><input type=text name=dmask size=20 maxlength=15 onChange="onchange_sel1();"></td></tr>
   <tr><th><% multilang("393" "LANG_DESTINATION_PORT"); %>:</th><td><input type=text name=dport size=10 maxlength=5 onChange="onchange_sel1();"></td></tr>
    <th><% multilang("664" "LANG_PHYSICAL_PORT"); %>:</th>
    <td><select style="width:150px " name=phyport onChange="onchange_sel1();">
     <option value=0></option>
     <% if_lan_list("all"); %>
    </select>
    </td>
   </tr>
    <% pr_egress(); %>
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p><% multilang("665" "LANG_ASSIGN_PRIORITY_AND_OR_IP_PRECEDENCE_AND_OR_TYPE_OF_SERVICE_AND_OR_DSCP"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr><th><% multilang("666" "LANG_OUTBOUND_PRIORITY"); %>:</th>
    <td>
     <% pq_egress(); %>
    </td>
   </tr>
   <tr><th>802.1p:</th>
    <td><select name=m1p style="width:150px ">
     <option value=0></option>
     <option value=1>0</option>
     <option value=2>1</option>
     <option value=3>2</option>
     <option value=4>3</option>
     <option value=5>4</option>
     <option value=6>5</option>
     <option value=7>6</option>
     <option value=8>7</option>
    </select>
    </td>
   </tr>
   <% mark_dscp(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name=addqos onClick="return addClick(this)">
 <input type="hidden" value="/ipqos_sc.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/formIPQoS method=POST name=qostbl>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>IP QoS <% multilang("667" "LANG_RULES"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <% ipQosList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
  <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name=delSel onClick="return deleteClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name=delAll onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
  <input type="hidden" value="/ipqos_sc.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<script>
 <% initPage("ipqos"); %>
 adminClick();
</script>
</body>
</html>

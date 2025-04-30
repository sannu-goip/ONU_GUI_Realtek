<%SendWebHeadStr(); %>
<title><% getWanIfDisplay(); %> <% multilang("11" "LANG_WAN"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<script language="javascript">
var initConnectMode;
var pppConnectStatus=0;
var curlink = null;
var cgi = new Object();
var links = new Array();
with(links){<% initPageWaneth(); %>}
function isAllStar(str)
{
  for (var i=0; i<str.length; i++) {
   if ( str.charAt(i) != '*' ) {
   return false;
 }
  }
  return true;
}
function disableUsernamePassword()
{
 disableTextField(document.ethwan.pppUserName);
 if(!isAllStar(document.ethwan.pppPassword.value))
  disableTextField(document.ethwan.pppPassword);
}
function vlanClicked()
{
 if (document.ethwan.vlan.checked)
 {
  document.getElementById('vid_tr').style.display = "";
  document.getElementById('cos_tr').style.display = "";
 }
 else {
  document.getElementById('vid_tr').style.display = "none";
  document.getElementById('cos_tr').style.display = "none";
 }
}
function applyCheck1()
{
 var tmplst = "";
 with ( document.forms[0] )
 {
  curlink = links[lkname.value];
  if ( curlink.cmode == 2 ) {
   if (document.ethwan.pppUserName.value=="") {
    alert('<% multilang("2033" "LANG_PPP_USER_NAME_CANNOT_BE_EMPTY"); %>');
    document.ethwan.pppUserName.focus();
    return false;
   }
   if (includeSpace(document.ethwan.pppUserName.value)) {
    alert('<% multilang("2034" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PPP_USER_NAME"); %>');
    document.ethwan.pppUserName.focus();
    return false;
   }
   if (checkString(document.ethwan.pppUserName.value) == 0) {
    alert('<% multilang("2035" "LANG_INVALID_PPP_USER_NAME"); %>');
    document.ethwan.pppUserName.focus();
    return false;
   }
   document.ethwan.encodePppUserName.value=encode64(document.ethwan.pppUserName.value);
   if (document.ethwan.pppPassword.value=="") {
    alert('<% multilang("2036" "LANG_PPP_PASSWORD_CANNOT_BE_EMPTY"); %>');
    document.ethwan.pppPassword.focus();
    return false;
   }
   if(!isAllStar(document.ethwan.pppPassword.value)){
    if (includeSpace(document.ethwan.pppPassword.value)) {
     alert('<% multilang("2037" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PPP_PASSWORD"); %>');
     document.ethwan.pppPassword.focus();
     return false;
    }
    if (checkString(document.ethwan.pppPassword.value) == 0) {
     alert('<% multilang("2038" "LANG_INVALID_PPP_PASSWORD"); %>');
     document.ethwan.pppPassword.focus();
     return false;
    }
    document.ethwan.encodePppPassword.value=encode64(document.ethwan.pppPassword.value);
   }
  }
  document.ethwan.lst.value = curlink.name;
  disableUsernamePassword();
 }
 setload();
 return true;
}
function setPPPConnected()
{
 pppConnectStatus = 1;
}
function enable_pppObj()
{
 enableTextField(document.ethwan.pppUserName);
 enableTextField(document.ethwan.pppPassword);
}
function pppSettingsEnable()
{
 document.getElementById('tbl_ppp').style.display='block';
 enable_pppObj();
}
function disable_pppObj()
{
 disableTextField(document.ethwan.pppUserName);
 disableTextField(document.ethwan.pppPassword);
}
function pppSettingsDisable()
{
 document.getElementById('tbl_ppp').style.display='none';
 disable_pppObj();
}
function on_linkchange(itlk)
{
 with ( document.forms[0] )
 {
  if (itlk.cmode == 2)
  {
   pppSettingsEnable();
   pppUserName.value = decode64(itlk.pppUsername);
   pppPassword.value = itlk.pppPassword;
  }
  else
  {
   pppSettingsDisable();
  }
  if (itlk.vlan == 1)
  {
   vid_tr.style.display = "";
   cos_tr.style.display = "";
   vlan.checked = true;
   vid.value = itlk.vid;
   vprio.value = itlk.vprio;
  }
  else
  {
   vlan.checked = false;
   vid_tr.style.display = "none";
   cos_tr.style.display = "none";
  }
  ctype.value = itlk.applicationtype;
 }
 vlanClicked();
}
function on_ctrlupdate()
{
 with ( document.forms[0] )
 {
  curlink = links[lkname.value];
  on_linkchange(curlink);
 }
}
function on_init()
{
 sji_docinit(document, cgi);
 with ( document.forms[0] )
 {
  for(var k in links)
  {
   var lk = links[k];
   lkname.options.add(new Option(lk.name, k));
  }
  if(links.length > 0) lkname.selectedIndex = 0;
  on_ctrlupdate();
 }
}
</script>
</head>
<BODY onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% getWanIfDisplay(); %> <% multilang("11" "LANG_WAN"); %></p>
 <p class="intro_content"> <% multilang("280" "LANG_PAGE_DESC_CONFIGURE_PARAMETERS"); %><% getWanIfDisplay(); %><% multilang("11" "LANG_WAN"); %></p>
</div>
<form action=/boaform/admin/formWanEth_admin method=POST name="ethwan">
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th colspan=2><select name="lkname" onChange="on_ctrlupdate()" size="1"></th>
 </tr>
 <tr>
  <th width=30%><% multilang("283" "LANG_ENABLE_VLAN"); %>: </th>
  <td width=70%><input type="checkbox" name="vlan" size="2" maxlength="2" value="ON" onClick=vlanClicked()></td>
 </tr>
 <tr id="vid_tr">
  <th><% multilang("286" "LANG_VLAN"); %> ID:</th>
  <td><input type="text" name="vid" size="10" maxlength="15"></td>
 </tr>
 <tr id="cos_tr">
  <th><% multilang("312" "LANG_802_1P_MARK"); %> </th>
  <td><select style="WIDTH: 60px" name="vprio">
   <option value="0" > </option>
   <option value="1" > 0 </option>
   <option value="2" > 1 </option>
   <option value="3" > 2 </option>
   <option value="4" > 3 </option>
   <option value="5" > 4 </option>
   <option value="6" > 5 </option>
   <option value="7" > 6 </option>
   <option value="8" > 7 </option>
   </select>
  </td>
 </tr>
 <tr id="multicast_vid_tr" style="display:none">
  <th><% multilang("2748" "LANG_MCAST_VLAN"); %> ID: [1-4095]</th>
  <td><input type="text" id="multicast_vid" name="multicast_vid" size="10" maxlength="15"></td>
 </tr>
 <div id="connectionType" style="display:none">
  <tr>
  <th><% multilang("282" "LANG_CONNECTION_TYPE");%>:</th>
  <td>
   <select disabled="disabled" size=1 id=ctype" name="ctype" onChange="wan_service_change()">
   <option id="ctype_other" value=4> OTHERS </option>
   <option value=1>TR069</option>
   <option value=2>INTERNET</option>
   <option value=3>INTERNET_TR069</option>
   <option value=8>VOICE</option>
   <option value=9>VOICE_TR069</option>
   <option value=10>VOICE_INTERNET</option>
   <option value=11>VOICE_INTERNET_TR069</option>
   </select>
  </td>
  </tr>
 </div>
 <tr style="display:none"><td><font size="2">
    <b><% multilang("313" "LANG_ENABLE_IGMP_PROXY"); %>: </b></td>
  <td><input type="checkbox" name="igmpEnabled" size="2" maxlength="2" value="ON"></font>
  </td></tr>
 <tr id=tbmtu style="display:none">
  <th>MTU:</th>
  <td>
  <input type="text" name="mtu" size="10" maxlength="15">
  </td>
 </tr>
 <tr ID=dgwshow style="display:none">
  <th><% multilang("290" "LANG_DEFAULT_ROUTE"); %>:</th>
  <td>
   <input type=radio value=0 name="droute"><% multilang("247" "LANG_DISABLE"); %>
   <input type=radio value=1 name="droute" checked><% multilang("248" "LANG_ENABLE"); %>
  </td>
 </tr>
</table>
</div>
<% ShowPPPIPSettings_admin(); %>
<div class="btn_ctl">
<input type="hidden" value="/admin/pppoe-wan.asp" name="submit-url">
<input type="hidden" id="lst" name="lst" value="">
<input type="hidden" name="encodePppUserName" value="">
<input type="hidden" name="encodePppPassword" value="">
<input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyCheck1(this)">&nbsp; &nbsp; &nbsp; &nbsp;
<input type="hidden" name="itfGroup" value=0>
<input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
</script>
</form>
</blockquote>
</body>
</html>

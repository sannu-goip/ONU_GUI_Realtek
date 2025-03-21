<% SendWebHeadStr();%>
<title>Firewall<% multilang("238" "LANG_CONFIGURATION"); %></title>
<script language="javascript">
var enable = <% checkWrite("firewall_enable"); %>
var level=<% checkWrite("firewall_level"); %>
function on_init()
{
 if(enable)
 {
  document.forms[0].fw_enable[0].checked = true;
  document.getElementById("show_firewall_level").style.display = "";
  if(level==0)
  {
   document.forms[0].firewall_level[0].checked = true;
  }
  else if(level==1)
  {
   document.forms[0].firewall_level[1].checked = true;
  }
  else
  {
   document.forms[0].firewall_level[2].checked = true;
  }
 }
 else
 {
  document.forms[0].fw_enable[1].checked = true;
  document.getElementById("show_firewall_level").style.display = "none";
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function show_firewalllevel()
{
 document.getElementById("show_firewall_level").style.display = "";
 if(level==0)
 {
  document.forms[0].firewall_level[0].checked = true;
 }
 else if(level==1)
 {
  document.forms[0].firewall_level[1].checked = true;
 }
 else
 {
  document.forms[0].firewall_level[2].checked = true;
 }
}
function hide_firewalllevel()
{
 document.getElementById("show_firewall_level").style.display = "none";
}
</script>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("1292" "LANG_FIREWALL"); %> <% multilang("248" "LANG_ENABLE"); %></p>
 <p class="intro_content"><% multilang("2955" "LANG_THIS_PAGE_LET_USER_TO_CONFIG_FIREWALL_LEVEL"); %></p>
</div>
<form action=/boaform/admin/formFirewall method=post name="formFirewall">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width=40%><% multilang("1292" "LANG_FIREWALL"); %>:</th>
   <td width=60%>
    <input type="radio" name="fw_enable" value="1" onClick="show_firewalllevel()"><% multilang("248" "LANG_ENABLE"); %>&nbsp;&nbsp;
    <input type="radio" name="fw_enable" value="0" onClick="hide_firewalllevel()"><% multilang("247" "LANG_DISABLE"); %>
   </td>
  </tr>
  <tr id="show_firewall_level" style="display:none">
   <th width="40%">Level:</th>
   <td width="60%">
    <input name="firewall_level" type=radio value="high">High&nbsp;&nbsp
    <input name="firewall_level" type=radio value="medium">Medium&nbsp;&nbsp
    <input name="firewall_level" type=radio value="low">Low
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit()">&nbsp;&nbsp;
 <input type="hidden" value="/admin/fw-enable.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

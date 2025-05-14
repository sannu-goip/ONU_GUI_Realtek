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
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Firewall</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/firewall.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title"><% multilang("1292" "LANG_FIREWALL"); %> <% multilang("248" "LANG_ENABLE"); %></p></div></div>
 
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
    <input style="margin-left: 19px;" name="firewall_level" type=radio value="medium">Medium&nbsp;&nbsp
    <input style="margin-left: 19px;" name="firewall_level" type=radio value="low">Low
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

<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>SIP</title>
<script language="javascript" src=voip_script.js></script>
<SCRIPT language="javascript" src="common.js"></SCRIPT>
<script language="javascript">
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_change(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 document.ringform.submit()
}
</script>
</head>
<body bgcolor="#ffffff" text="#000000">
<form method="get" action="/boaform/voip_ring_set" name=ringform>
<%voip_general_get("not_ipphone_option_start");%>
<b><% multilang("1058" "LANG_RING_CADENCE_DETECTION_SETTING"); %></b>
<%voip_general_get("not_ipphone_option_end");%>
<table cellSpacing=1 cellPadding=2 border=0 width=325 <%voip_general_get("not_ipphone_table");%> >
 <tr>
     <td bgColor=#aaddff width=155><% multilang("1059" "LANG_CADENCE"); %></td>
     <td bgColor=#ddeeff width=170>
   <select name=ring_cad>
     <%voip_ring_get("ring_cad");%>
   </select>
  </td>
 </tr>
 <tr>
     <td colspan=3 align=center>
      <input type="submit" name="Ring_Cad" value="<% multilang("334" "LANG_APPLY"); %>" onClick="return on_submit(this)">
    </td>
 </tr>
</table>
<!--
<b>Select Group</b>
<table cellSpacing=1 cellPadding=2 border=0 width=325>
 <tr>
     <td bgColor=#aaddff width=155>Group</td>
     <td bgColor=#ddeeff width=170>
   <select name=group onChange="ringform.submit()">
     <%voip_ring_get("group");%>
   </select>
  </td>
 </tr>
 <tr>
     <td bgColor=#aaddff>Phone Number</td>
     <td bgColor=#ddeeff>
  <input type=text name=phonenumber size=20 maxlength=39 value="<%voip_ring_get("phonenumber");%>"></td>
 </tr>
 <tr>
   <tr>
     <td bgColor=#aaddff>Cadence</td>
  <td bgColor=#ddeeff>
  <select name=cadence_use>
    "<%voip_ring_get("cadence_use");%>"
  </select>
  </td>
 </tr>
 <tr>
     <td colspan=3 align=center>
      <input type="submit" name="Ring_Group" value="Apply" >
    </td>
 </tr>
</table>
-->
<%voip_general_get("not_ipphone_option_start");%>
<b><% multilang("1060" "LANG_SELECT_CADENCE"); %></b>
<%voip_general_get("not_ipphone_option_end");%>
<table cellSpacing=1 cellPadding=2 border=0 width=325 <%voip_general_get("not_ipphone_table");%> >
 <tr>
     <td bgColor=#aaddff width=155><% multilang("1059" "LANG_CADENCE"); %></td>
     <td bgColor=#ddeeff width=170>
   <select name=cadence_sel onChange="return on_change(this)">
     <%voip_ring_get("cadence_sel");%>
   </select>
  </td>
 </tr>
</table>
<%voip_general_get("not_ipphone_option_start");%>
<b><% multilang("1061" "LANG_CUSTOM_CADENCE"); %></b>
<%voip_general_get("not_ipphone_option_end");%>
<table cellSpacing=1 cellPadding=2 border=0 width=325 <%voip_general_get("not_ipphone_table");%> >
 <tr>
     <td bgColor=#aaddff><% multilang("1062" "LANG_CADENCE_ON"); %> (<% multilang("952" "LANG_MSEC"); %>)</td>
     <td bgColor=#ddeeff>
  <input type=text name=cad_on size=20 maxlength=39 value="<%voip_ring_get("cad_on");%>"></td>
 </tr>
 <tr>
 <tr>
     <td bgColor=#aaddff><% multilang("1063" "LANG_CADENCE_OFF"); %> (<% multilang("952" "LANG_MSEC"); %>)</td>
     <td bgColor=#ddeeff>
  <input type=text name=cad_off size=20 maxlength=39 value="<%voip_ring_get("cad_off");%>"></td>
 </tr>
 <tr>
 <tr>
     <td colspan=3 align=center>
      <input type="submit" name="Ring_Cadence" value="<% multilang("334" "LANG_APPLY"); %>" onClick="return on_submit(this)" >
    </td>
 </tr>
</table>
<input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>

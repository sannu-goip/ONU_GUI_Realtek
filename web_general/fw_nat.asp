
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>NAT Type</title>
<script language="javascript">
var nattype=0
function on_init()
{
 if(nattype==0)
 {
  document.forms[0].nattype[2].checked = true;
 }
 else if(nattype==1)
 {
  document.forms[0].nattype[0].checked = true;
 }
 else
 {
  document.forms[0].nattype[1].checked = true;
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title">NAT Type</p>
 <p class="intro_content">This page is used to set nat type.NAT1 is FullCone , NAT2 is RestrictedCone and  NAT4 is Symmetric.</p>
</div>
<form action=/boaform/admin/formNatType method=post name="formNatType">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="40%">NAT Type:</th>
   <td width="60%">
    <input name="nattype" type=radio value="NAT1">NAT1&nbsp;&nbsp
    <input name="nattype" type=radio value="NAT2">NAT2&nbsp;&nbsp
    <input name="nattype" type=radio value="NAT4">NAT4 (default)
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="Apply Changes" onClick="return on_submit()">&nbsp;&nbsp;
 <input type="hidden" value="/admin/fw_nat.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

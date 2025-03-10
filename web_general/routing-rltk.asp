
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

<title>RoutingConfiguration</title>
<SCRIPT>
function postGW( enable, destNet, subMask, nextHop, metric, interface, select )
{
 document.route.enable.checked = enable;
 document.route.destNet.value=destNet;
 document.route.subMask.value=subMask;
 document.route.nextHop.value=nextHop;
 document.route.metric.value=metric;
 document.route.interface.value=interface;
 document.route.select_id.value=select;
}
function checkDest(ip, mask)
{
 var i, dip, dmask, nip;
 for (i=1; i<=4; i++) {
  dip = getDigit(ip.value, i);
  dmask = getDigit(mask.value, i);
  nip = dip & dmask;
  if (nip != dip)
   return true;
 }
 return false;
}
function addClick(obj)
{
 if (checkDest(document.route.destNet, document.route.subMask) == true) {
  alert("The specified mask parameter is invalid. (Destination & Mask) != Destination.");
  document.route.subMask.focus();
  return false;
 }
 if (!checkHostIP(document.route.destNet, 1))
  return false;
 if (!checkNetmask(document.route.subMask, 1))
  return false;
 if (document.route.interface.value==65535) {
  if (document.route.nextHop.value=="" ) {
   alert("Enter Next Hop IP or select a GW interface!");
   document.route.nextHop.focus();
   return false;
  }
  if (!checkHostIP(document.route.nextHop, 0))
   return false;
 }
 if ( !checkDigitRange(document.route.metric.value,1,0,16) ) {
  alert("Invalid Metric range. It should be 0~16.");
  document.route.metric.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function routeClick(url)
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
 window.open( url, 'RouteTbl', settings );
}
function deleteClick(obj)
{
 if ( !confirm('Do you really want to delete the selected entry?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">Routing Configuration</p>
 <p class="intro_content"> This page is used to configure the routing information. Here you can add/delete IP routes.</p>
</div>
<form action=/boaform/formRouting method=POST name="route">
<div class="data_common data_common_notitle">
 <table>
  <tr>
    <th width="30%">Enable:</th>
    <td width="70%"><input type="checkbox" name="enable" value="1" checked></td>
  </tr>
  <tr>
    <th width="30%">Destination:</th>
    <td width="70%"><input type="text" name="destNet" size="15" maxlength="15"></td>
  </tr>
  <tr>
    <th width="30%">Subnet Mask:</th>
    <td width="70%"><input type="text" name="subMask" size="15" maxlength="15"></td>
  </tr>
  <tr>
    <th width="30%">Next Hop:</th>
    <td width="70%"><input type="text" name="nextHop" size="15" maxlength="15"></td>
  </tr>
  <tr>
    <th width="30%">Metric:</th>
    <td width="70%"><input type="text" name="metric" size="5" maxlength="5"></td>
  </tr>
  <tr>
    <th width="30%">Interface:</th>
    <td width="70%"><select name="interface">
        <option value=65535>Any</option>
<option value=130816>nas0_0</option>

     </select></td>
  </tr>
  <input type="hidden" value="" name="select_id">
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="Add Route" name="addRoute" onClick="return addClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="Update" name="updateRoute" onClick="return addClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="Delete Selected" name="delRoute" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="button" value="Show Routes" name="showRoute" onClick="routeClick('/routetbl.asp')">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>Static Route Table</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <tr><th align=center>Select</th>
<th align=center>State</th>
<th align=center>Destination</th>
<th align=center>Subnet Mask</th>
<th align=center>Next Hop</th>
<th align=center>Metric</th>
<th align=center>Interface</th>
</tr>

  </table>
 </div>
</div>
<input type="hidden" value="/routing.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</form>
<br>
</body>
</html>

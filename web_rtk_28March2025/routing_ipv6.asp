
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
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
   
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
    <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>RoutingConfiguration</title>
<SCRIPT>
function postGW( enable, destNet, nextHop, metric, interface, select )
{
 document.route.enable.checked = enable;
 document.route.destNet.value=destNet;
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
 if ( validateKeyV6IP( document.route.destNet.value ) == 0 ) {
           if(! validateKeyV6Prefix( document.route.destNet.value) )
           {
    alert("destNet is not valid ipv6 net!");
    document.route.destNet.focus();
    return false;
     }
 }
    else if (! isGlobalIpv6Address( document.route.destNet.value) )
 {
  alert("destNet is not valid ipv6 host!");
  document.route.destNet.focus();
  return false;
 }
 if (document.route.nextHop.value=="" ) {
  alert("Enter Next Hop IP or select a GW interface!");
  document.route.nextHop.focus();
  return false;
 }
 if ( validateKeyV6IP( document.route.nextHop.value ) == 0 ) {
  alert("Invalid Next Hop value.");
  document.route.nextHop.focus();
  return false;
 }
    else
 {
  if (! isGlobalIpv6Address( document.route.nextHop.value) ){
   alert("NextHop is not valid Global and unicast ipv6 address!");
   document.route.nextHop.focus();
   return false;
  }
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
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }

</SCRIPT>
<style>
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
.left-field{
    margin-left:-10px;
    width:142px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:3px
}
.right-field{
    margin-left:178px;
    padding:3px;
    width:160px; 
}


</style>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">IPv6 Static Routing Configuration</p>
 <p class="intro_content">This page is used to configure the IPv6 static routing information. Here you can add/delete static IP routes.</p>
</div>
<form action=/boaform/formIPv6Routing method=POST name="route">
<div class="data_common data_common_notitle">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-14px; width:98%">>
  <tr>
      <th width="30%">Enable:</th>
      <td width="70%"><input type="checkbox" name="enable" value="1" checked></td>
  </tr>
  <tr>
      <th width="30%">Destination:</th>
      <td width="70%"><input type="text" name="destNet" size="40" maxlength="40"></td>
  </tr>
  <tr>
      <th width="30%">Next Hop:</th>
      <td width="70%"><input type="text" name="nextHop" size="40" maxlength="48"></td>
  </tr>
  <tr>
      <th width="30%">Metric:</th>
      <td width="70%"><input type="text" name="metric" size="5" maxlength="5"></td>
  </tr>
  <tr>
      <th width="30%">Interface:</th>
      <td width="70%"><select name="interface">
          <option value=65535>Any</option>

       </select></td>
  </tr>
  <input type="hidden" value="" name="select_id">
</table>
</div>
<div class="col-md-12 form-group">
        <div class="custom-control">
  <input class="link_bg" type="submit" value="Add Route" name="addV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Update" name="updateV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Delete Selected" name="delV6Route" onClick="return deleteClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Delete All" name="delAllV6Route" onClick="return deleteAllClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="button" value="Show Routes" name="showV6Route" onClick="routeClick('/routetbl_ipv6.asp')">
</div>
</div>
<div class="data_common data_common_notitle">
<table>
  <tr><th align=center>Select</th>
<th align=center>State</th>
<th align=center>Destination</th>
<th align=center>Next Hop</th>
<th align=center>Metric</th>
<th align=center>Interface</th>
</tr>

</table>
</div>

      <input type="hidden" value="/routing_ipv6.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>

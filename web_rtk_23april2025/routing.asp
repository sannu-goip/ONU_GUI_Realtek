<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">

<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>


<title><% multilang("39" "LANG_ROUTING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
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
  alert("<% multilang("2426" "LANG_THE_SPECIFIED_MASK_PARAMETER_IS_INVALID_DESTINATION_MASK_DESTINATION"); %>");
  document.route.subMask.focus();
  return false;
 }
 if (!checkHostIP(document.route.destNet, 1))
  return false;
 if (!checkNetmask(document.route.subMask, 1))
  return false;
 if (document.route.interface.value==65535) {
  if (document.route.nextHop.value=="" ) {
   alert("<% multilang("2420" "LANG_ENTER_NEXT_HOP_IP_OR_SELECT_A_GW_INTERFACE"); %>");
   document.route.nextHop.focus();
   return false;
  }
  if (!checkHostIP(document.route.nextHop, 0))
   return false;
 }
 if ( !checkDigitRange(document.route.metric.value,1,0,16) ) {
  alert("<% multilang("2427" "LANG_INVALID_METRIC_RANGE_IT_SHOULD_BE_0_16"); %>");
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
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}

//Ipv6

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
    alert("<% multilang("2428" "LANG_DESTNET_IS_NOT_VALID_IPV6_NET"); %>");
    document.route.destNet.focus();
    return false;
     }
 }
    else if (! isGlobalIpv6Address( document.route.destNet.value) )
 {
  alert("<% multilang("2429" "LANG_DESTNET_IS_NOT_VALID_IPV6_HOST"); %>");
  document.route.destNet.focus();
  return false;
 }
 if (document.route.nextHop.value=="" ) {
  alert("<% multilang("2420" "LANG_ENTER_NEXT_HOP_IP_OR_SELECT_A_GW_INTERFACE"); %>");
  document.route.nextHop.focus();
  return false;
 }
 if ( validateKeyV6IP( document.route.nextHop.value ) == 0 ) {
  alert("<% multilang("2421" "LANG_INVALID_NEXT_HOP_VALUE"); %>");
  document.route.nextHop.focus();
  return false;
 }
    else
 {
  if (! isGlobalIpv6Address( document.route.nextHop.value) ){
   alert("<% multilang("2430" "LANG_NEXTHOP_IS_NOT_VALID_GLOBAL_AND_UNICAST_IPV6_ADDRESS"); %>");
   document.route.nextHop.focus();
   return false;
  }
 }
 if ( !checkDigitRange(document.route.metric.value,1,0,16) ) {
  alert("<% multilang("2427" "LANG_INVALID_METRIC_RANGE_IT_SHOULD_BE_0_16"); %>");
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
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
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
}
</SCRIPT>
<style> TABLE {width:375} 

.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
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
    width:365px;
}
.left-field-para{
    margin-left: -11px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
    padding:2px;
    width:200px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-22px;
    width:102.5%
}
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
input[type="checkbox"]:checked {
    accent-color: #fd5814;
}
</style>
</head>
<body  onLoad="on_init();">
<INPUT id=Selected_Menu type=hidden value="Security->Parental" name="Selected_Menu"> 
  
                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("39" "LANG_ROUTING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("450" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_ROUTING_INFORMATION_HERE_YOU_CAN_ADD_DELETE_IP_ROUTES"); %></p>
 </div>
 </div>

<form action=/boaform/formRouting method=POST name="route">
<div class="data_common data_common_notitle">

  <table>
  <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("248" "LANG_ENABLE"); %>:</label>
     <input class="right-field" style="margin-left:91px;" type="checkbox" name="enable" value="1" checked>
   </div>
  </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %>:</label>
      <input class="right-field custom-select" type="text" name="destNet" size="15" maxlength="15">
    </div>
  </div>
<div class="col-md-12 form-group">
        <div class="custom-control">
     <label class="left-field"><% multilang("90" "LANG_SUBNET_MASK"); %>:</label>
     <input class="right-field custom-select" type="text" name="subMask" size="15" maxlength="15">
    </div>
  </div>
<div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("451" "LANG_NEXT_HOP"); %>:</label>
      <input type="text" class="right-field custom-select"  name="nextHop" size="15" maxlength="15">
    </div>
  </div>
   <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"> <% multilang("452" "LANG_METRIC"); %>:</label>
     <input type="text" class="right-field custom-select"  name="metric" size="5" maxlength="5">
    </div>
  </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"> <% multilang("70" "LANG_INTERFACE"); %>:</label>
     <select  class="right-field custom-select"  name="interface">
          <% if_wan_list("rt-any-vpn"); %>
       </select>
    </div>
  </div>
    <input type="hidden" value="" name="select_id">
   </table>
  </div>
  <hr class="margin_adjs" />
  <div class="link_bg form-footer ">
   <input class="link_bg btn orange_btn" type="submit" value="<% multilang("453" "LANG_ADD_ROUTE"); %>" name="addRoute" onClick="return addClick(this)">&nbsp;&nbsp;
   <input class="link_bg btn orange_btn" type="submit" value="<% multilang("454" "LANG_UPDATE"); %>" name="updateRoute" onClick="return addClick(this)">&nbsp;&nbsp;
   <input class="link_bg btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delRoute" onClick="return deleteClick(this)">&nbsp;&nbsp;
   <input class="link_bg btn orange_btn" type="button" value="<% multilang("455" "LANG_SHOW_ROUTES"); %>" name="showRoute" onClick="routeClick('/routetbl.asp')">
  </div>
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
    <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14"><% multilang("456" "LANG_STATIC_ROUTE_TABLE"); %></h2>
 </div>
 </div>
    
    <div class="column_title_right"></div>
   </div>
   <div class="data_common data_vertical">
    <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
     <% showStaticRoute(); %>
    </table>
   </div>
  </div>
  <input type="hidden" value="/routing.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14;width: 392px;"><% multilang("5" "LANG_IPV6"); %> <% multilang("489" "LANG_STATIC"); %> <% multilang("39" "LANG_ROUTING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>
 </div>
 </div>
  <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("488" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_IPV6_STATIC_ROUTING_INFORMATION_HERE_YOU_CAN_ADD_DELETE_STATIC_IP_ROUTES"); %></p>
 </div>
 </div>
  
   <form action=/boaform/formIPv6Routing method=POST name="route">
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("248" "LANG_ENABLE"); %>:</label>
        <input class="right-field" style="margin-left:91px;" type="checkbox" name="enable" value="1" checked>
        </div>
  </div>
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %>:</label>
        <input class="right-field custom-select" type="text" name="destNet" size="40" maxlength="40">
        </div>
  </div>

 <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("451" "LANG_NEXT_HOP"); %>:</label>
        <input class="right-field custom-select" type="text" name="nextHop" size="40" maxlength="48">
        </div>
  </div>  
  <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("452" "LANG_METRIC"); %>:</label>
        <input class="right-field custom-select" type="text" name="metric" size="5" maxlength="5">
        </div>
  </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("70" "LANG_INTERFACE"); %>:</label>
      <select class="right-field custom-select" name="interface">
            <% if_wan_list("rtv6-any-vpn"); %>
         </select>
        </div>
  </div>
   
    <input type="hidden" value="" name="select_id">
  </table>
  </div>
  <hr class="margin_adjs" />
  <div class="btn_ctl form-footer">
    <input class=" link_bg btn orange_btn" type="submit" value="<% multilang("453" "LANG_ADD_ROUTE"); %>" name="addV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("454" "LANG_UPDATE"); %>" name="updateV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delV6Route" onClick="return deleteClick(this)">&nbsp;&nbsp;
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllV6Route" onClick="return deleteAllClick(this)">&nbsp;&nbsp;
    <input class="link_bg btn orange_btn" type="button" value="<% multilang("455" "LANG_SHOW_ROUTES"); %>" name="showV6Route" onClick="routeClick('/routetbl_ipv6.asp')">
  </div>
  <br>
  <div class="data_common data_common_notitle">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
    <% showIPv6StaticRoute(); %>
  </table>
  </div>
        <input type="hidden" value="/routing.asp" name="submit-url">
        <input type="hidden" name="postSecurityFlag" value="">
</form>
<br>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>

</html>
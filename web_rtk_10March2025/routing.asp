
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Route</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
        <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
            <SCRIPT language=JavaScript src="/Dashboard/JS/printbox.js"></SCRIPT>
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
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
</style>

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

</SCRIPT>
     
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->Route" name=Net_Routeset>
    <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left"
        vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact"
        vertical-effect="shrink" vnavigation-view="view1">
        <div class="scoop-overlay-box">
        </div>
        <div class="scoop-container">
            <div class="scoop-main-container">
                <div class="scoop-wrapper">
                    <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0"
                        sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('Net','Route')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','Route','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                
                                <div class="scoop-inner-content">
									  
														
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/route.png" width="45" height="40" class="img_sub" alt=""/> Routing Configuration</h1>
									<div class="container-fluid">
										<hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field">
            <div class="custom-control">

                <p> This page is used to configure the routing information. Here you can add/delete IP routes.</p>
                         </div>
						 </div>
    <br>
                  <form action=/boaform/formRouting method=POST name="route">
                 <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable:</label>
            <input type="checkbox" name="enable" value="1" checked="" class="right-field-checkbox" >
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Destination:</label>
            <input type="text" name="destNet" size="15" maxlength="15" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Subnet Mask:</label>
            <input type="text" name="subMask" size="15" maxlength="15" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Next Hop:</label>
            <input type="text" name="nextHop" size="15" maxlength="15" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Metric:</label>
            <input type="text" name="metric" size="5" maxlength="5" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Interface:</label>
            <select name="interface" class="right-field">
                <option value="65535">Any</option>
                <option value="130816">nas0_0</option>
            </select>
        </div>
    </div>
    <input type="hidden" value="" name="select_id">
</div>
<hr  style="margin-left:-16px; width:186.4%;">
<div class="btn_ctl">
    <div class="col-md-12 form-group">
        <div class="custom-control">
 <input class="link_bg " type="submit" value="Add Route" name="addRoute" onclick="return addClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="Update" name="updateRoute" onclick="return addClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="Delete Selected" name="delRoute" onclick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="button" value="Show Routes" name="showRoute" onclick="routeClick('/routetbl.asp')">
</div>
</div>
</div>
<hr  style="margin-left: -16px;width:186.4%;">

 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:250px">Static Route Table</h2>
  </div>
 </div>
  <div class="col-md-12 form-group">
    <div class="custom-control">
        <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-14px; width:187%">
   <tbody>
   <tr><th align="center">Select</th>
<th>State</th>
<th>Destination</th>
<th>Subnet Mask</th>
<th>Next Hop</th>
<th>Metric</th>
<th>Interface</th>
</tr>

  </tbody></table>
 </div>
</div>
<input type="hidden" value="/routing.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</form>
						
                        </div>
                    </div>
                </div>
            </div>
			
			      <div class="" style="margin-top:-45px">
                                                         
                                <div class="scoop-inner-content">
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/route.png" width="45" height="40" class="img_sub" alt=""/>IPv6 Static Routing Configuration</h1>
									<div class="container-fluid">
										<hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field">
                                   <div class="custom-control">

                <p>This page is used to configure the IPv6 static routing information. Here you can add/delete static IP routes.</p>
                         </div>
						 </div>
    <br>

               <form action=/boaform/formIPv6Routing method=POST name="route">
			   <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable:</label>
            <input type="checkbox" name="enable" value="1" checked class="right-field-radio">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Destination:</label>
            <input type="text" name="destNet" size="40" maxlength="40" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Next Hop:</label>
            <input type="text" name="nextHop" size="40" maxlength="48" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Metric:</label>
            <input type="text" name="metric" size="5" maxlength="5" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Interface:</label>
            <select name="interface" class="right-field">
                <option value="65535">Any</option>
            </select>
        </div>
    </div>
    <input type="hidden" value="" name="select_id">
</div>
			   <hr style="margin-left: -16px; width:225.4%;">
			      <div class="col-md-12 form-group">
        <div class="custom-control">
  <input class="link_bg" type="submit" value="Add Route" name="addV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Update" name="updateV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Delete Selected" name="delV6Route" onClick="return deleteClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="Delete All" name="delAllV6Route" onClick="return deleteAllClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="button" value="Show Routes" name="showV6Route" onClick="routeClick('/routetbl_ipv6.asp')">
</div>
</div>
<hr style="margin-left: -16px;width:225.4%;">
             
		  <div class="col-md-12 form-group">
        <div class="custom-control">
                <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-14px; width:230%">
                       <tr><th >Select</th>
                         <th>State</th>
                           <th>Destination</th>
                            <th >Next Hop</th>
                            <th >Metric</th>
                            <th >Interface</th>
                        </tr>

</table>
</div>
</div>
      <input type="hidden" value="/routing_ipv6.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
			   </form>
			   </div>
			   </div>
			   </div>
			   </div>
			   </div>
		     <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
        

 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!--    <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mCustomScrollbar.concat.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mousewheel.min.js"></script>
  
</body>
</html>

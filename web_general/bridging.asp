<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><title><% multilang("38" "LANG_BRIDGING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function saveChanges()
{
 if (checkDigit(document.bridge.ageingTime.value) == 0) {
  alert('<% multilang("2098" "LANG_INVALID_AGEING_TIME"); %>');
  document.bridge.ageingTime.focus();
  return false;
 }
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function fdbClick(url)
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
 window.open( url, 'FDBTbl', settings );
}
</SCRIPT>
<style>


    
.left-field{
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px;
    accent-color: #fd5814;
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-29px;
    width:104.5%
}
</style>
</head>
<body>
                        <div class="">

                          <div class="scoop-inner-content">
                          
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("38" "LANG_BRIDGING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("446" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BRIDGE_PARAMETERS_HERE_YOU_CAN_CHANGE_THE_SETTINGS_OR_VIEW_SOME_INFORMATION_ON_THE_BRIDGE_AND_ITS_ATTACHED_PORTS"); %></p>
 </div>
 </div>
									  
<form action=/boaform/formBridging method=POST name="bridge">
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("447" "LANG_AGEING_TIME"); %>:</label>
       <input type="text" class="right-field custom-select" name="ageingTime" size="15" maxlength="15" value=<% getInfo("bridge-ageingTime"); %>> (<% multilang("357" "LANG_SECONDS"); %>)
   </div>
  </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">802.1d <% multilang("448" "LANG_SPANNING_TREE"); %>:</label>
       <input class="right-field-radio" type="radio" value="0" name="stp" <% checkWrite("br-stp-0"); %>><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;
       <input class="right-field-radio"  type="radio" value="1" name="stp" <% checkWrite("br-stp-1"); %>><% multilang("178" "LANG_ENABLED"); %>
     </div>
     </div>
</div>
<hr class="margin_adjs" />
<div class="btn_ctl form-footer">
      <input class="link_bg btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()">&nbsp;&nbsp;
      <input class="link_bg btn orange_btn" type="button" value="<% multilang("449" "LANG_SHOW_MACS"); %>" name="fdbTbl" onClick="fdbClick('/fdbtbl.asp')">
      <input type="hidden" value="/bridging.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</div>
</div>
</div>
</div>
</div>

<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

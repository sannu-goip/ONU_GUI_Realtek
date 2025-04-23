<%SendWebHeadStr(); %>
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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<title><% multilang("44" "LANG_REMOTE_ACCESS"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<script>
function addClick(obj)
{
 dTelnet = getDigit(document.acc.w_telnet_port.value, 1);
 dWeb = getDigit(document.acc.w_web_port.value, 1);
 if ( dTelnet == dWeb) {
  alert("<% multilang("2407" "LANG_DUPLICATED_PORT_NUMBER"); %>");
  document.acc.w_telnet_port.focus();
  return false;
 }
 if (document.acc.w_telnet.checked) {
  if (document.acc.w_telnet_port.value=="") {
   alert("<% multilang("2408" "LANG_PORT_RANGE_CANNOT_BE_EMPTY_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_telnet_port.value ) == 0 ) {
   alert("<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  if (dTelnet > 65535 || dTelnet < 1) {
   alert("<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_telnet_port.focus();
   return false;
  }
  }
 if (document.acc.w_web.checked) {
  if (document.acc.w_web_port.value=="") {
   alert("<% multilang("2408" "LANG_PORT_RANGE_CANNOT_BE_EMPTY_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
  if ( validateKey( document.acc.w_web_port.value ) == 0 ) {
   alert("<% multilang("2247" "LANG_INVALID_PORT_NUMBER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
  if (dWeb > 65535 || dWeb < 1) {
   alert("<% multilang("2248" "LANG_INVALID_PORT_NUMBER_YOU_SHOULD_SET_A_VALUE_BETWEEN_1_65535"); %>");
   document.acc.w_web_port.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
<style>
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
    margin-left:-27px;
    width:365px;
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
        accent-color: #fd5814; 
}
#rmtacc table input[type="checkbox"]{
    accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body>

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/><% multilang("44" "LANG_REMOTE_ACCESS"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"><% multilang("457" "LANG_THIS_PAGE_IS_USED_TO_ENABLE_DISABLE_MANAGEMENT_SERVICES_FOR_THE_LAN_AND_WAN"); %></p>
</div>
</div>
<form action=/boaform/formSAC method=POST name=acc>
	<div class="col-md-12 form-group" id="rmtacc">
			<div class="custom-control">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-29px; width:102%">
  <tr>
  <th align=left><% multilang("378" "LANG_SERVICE"); %><% multilang("701" "LANG_NAME"); %></th>
   <th align=center><% multilang("6" "LANG_LAN"); %></th>
   <th align=center><% multilang("11" "LANG_WAN"); %></th>
   <th align=center><% multilang("458" "LANG_WAN_PORT"); %></th>
   <th align=center><% multilang("408" "LANG_REMOTE_IP"); %></th>
  </tr>
  <% rmtaccItem(); %>
  </table>
 </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
 <input class="btn orange_btn" type="submit" value="Apply Changes" name="set" onClick="return addClick(this)">
 <input type="hidden" value="/rmtacc.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% accPost(); %>
</script>
</form>
</blockquote>
</div>
</div>
</div>


<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

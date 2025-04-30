<% SendWebHeadStr();%>
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

  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
<title><% multilang("49" "LANG_GPON_SETTINGS"); %></title>
<script>
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
function on_init()
{
 with (document.forms[0])
 {
  if(isPRACTVersion == "1")
  {
   disableTextField(document.forms[0].fmgpon_loid);
   disableTextField(document.forms[0].fmgpon_loid_password);
   disableTextField(document.forms[0].fmgpon_ploam_password);
   disableTextField(document.forms[0].omci_olt_mode);
   disableTextField(document.forms[0].apply);
  }
 }
}
function applyclick(obj)
{
 if (document.formgponconf.fmgpon_ploam_password.value=="") {
  alert('<% multilang("2258" "LANG_PLOAM_PASSWORD_CANNOT_BE_EMPTY"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if (includeSpace(document.formgponconf.fmgpon_ploam_password.value)) {
  alert('<% multilang("2259" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PLOAM_PASSWORD"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if (checkString(document.formgponconf.fmgpon_ploam_password.value) == 0) {
  alert('<% multilang("2260" "LANG_INVALID_PLOAM_PASSWORD"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
 }
 if( document.formgponconf.fmgpon_ploam_password.value.length>10 )
 {
  alert('<% multilang("2261" "LANG_PLOAM_PASSWORD_SHOULD_BE_10_CHARACTERS"); %>');
  document.formgponconf.fmgpon_ploam_password.focus();
  return false;
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
    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
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
        accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
#omci-olt select{
    margin-left:298px !important;
    padding:4px;
    width:160px;    
}
</style>
</head>
<body onLoad="on_init();">

                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/device.png" width="45" height="40" class="img_sub" alt=""/><% multilang("49" "LANG_GPON_SETTINGS"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"><% multilang("538" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_PARAMETERS_FOR_YOUR_GPON_NETWORK_ACCESS"); %></p>
</div>
</div>
<form action=/boaform/admin/formgponConf method=POST name="formgponconf">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("539", "LANG_LOID"); %>:</label>
            <input type="text" name="fmgpon_loid" size="20" maxlength="20" value="<% fmgpon_checkWrite("fmgpon_loid"); %>" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("540", "LANG_LOID_PASSWORD"); %>:</label>
            <input type="text" name="fmgpon_loid_password" size="20" maxlength="12" value="<% fmgpon_checkWrite("fmgpon_loid_password"); %>" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("541", "LANG_PLOAM_PASSWORD"); %>:</label>
            <input type="text" name="fmgpon_ploam_password" size="20" maxlength="10" value="<% fmgpon_checkWrite("fmgpon_ploam_password"); %>" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("542", "LANG_SERIAL_NUMBER"); %>:</label>
             <input type="text" size="20" maxlength="10" value="<% fmgpon_checkWrite("fmgpon_sn"); %>" class="right-field">
            
        </div>
    </div>
        <div class="col-md-12 form-group left-field">
        <div class="custom-control" id="omci-olt" style=" font-weight: 400px; font-size: 13px; width:702px">
    <% showOMCI_OLT_mode(); %>
    </div>
    </div>

</div>
<hr class="margin_adjs" />
<div class="clearfix form-footer text-right">
      <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyclick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/gpon.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</div>
</div>
</div>

<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

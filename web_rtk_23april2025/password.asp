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
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<meta HTTP-EQUIV='Pragma' CONTENT='no-cache'>
<title><% multilang("559" "LANG_PASSWORD_CONFIGURATION"); %></title>
<SCRIPT>
function saveChanges(obj)
{
   if ( document.password.newpass.value != document.password.confpass.value) {
 alert("<% multilang("2082" "LANG_PASSWORD_IS_NOT_MATCHED_PLEASE_TYPE_THE_SAME_PASSWORD_BETWEEN_NEW_AND_CONFIRMED_BOX"); %>");
 document.password.newpass.focus();
 return false;
  }
  if ( document.password.newpass.value.length == 0) {
 alert("<% multilang("2083" "LANG_PASSWORD_CANNOT_BE_EMPTY_PLEASE_TRY_IT_AGAIN"); %>");
 document.password.newpass.focus();
 return false;
  }
  if (includeSpace(document.password.newpass.value)) {
 alert("<% multilang("2086" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PASSWORD_PLEASE_TRY_IT_AGAIN"); %>");
 document.password.newpass.focus();
 return false;
  }
  if (checkString(document.password.newpass.value) == 0) {
 alert("<% multilang("2087" "LANG_INVALID_PASSWORD"); %>");
 document.password.newpass.focus();
 return false;
  }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
}
</SCRIPT>
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
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<BODY>

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/usermanagement.png" width="45" height="40" class="img_sub" alt=""/><% multilang("559" "LANG_PASSWORD_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"><% multilang("555" "LANG_PAGE_DESC_SET_ACCOUNT_PASSWORD"); %></p>
</div>
</div>
<form action=/boaform/formPasswordSetup method=POST name="password">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</label>
            <select size="1" name="userMode" class="right-field">
                  <% checkWrite("userMode"); %>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("556" "LANG_OLD_PASSWORD"); %>:</label>
            <input type="password" name="oldpass" size="20" maxlength="30" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("557" "LANG_NEW_PASSWORD"); %>:</label>
            <input type="password" name="newpass" size="20" maxlength="30" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("558" "LANG_CONFIRMED_PASSWORD"); %>:</label>
            <input type="password" name="confpass" size="20" maxlength="30" class="right-field">
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl clearfix form-footer text-right">
 <input type="hidden" value="/password.asp" name="submit-url">
 <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)">
 <input class="btn grey_btn" type="reset" value=" <% multilang("222" "LANG_RESET"); %> " name="reset">
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

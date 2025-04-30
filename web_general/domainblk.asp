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

<title><% multilang("21" "LANG_DOMAIN_BLOCKING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function addClick(obj)
{
 if (document.domainblk.blkDomain.value=="") {
  alert('<% multilang("2189" "LANG_PLEASE_ENTER_THE_BLOCKED_DOMAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
 }
 if ( document.domainblk.blkDomain.value.length == 0 ) {
  if ( !confirm('<% multilang("2565" "LANG_DOMAIN_STRING_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_DOMAIN"); %>') ) {
   document.domainblk.blkDomain.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if ( includeSpace(document.domainblk.blkDomain.value)) {
  alert('<% multilang("2190" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_DOMAIN_PLEASE_TRY_IT_AGAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
  }
 if (checkString(document.domainblk.blkDomain.value) == 0) {
  alert('<% multilang("2191" "LANG_INVALID_BLOCKED_DOMAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
 }
   obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableDelButton()
{
 if (verifyBrowser() != "ns") {
  disableButton(document.domainblk.delDomain);
  disableButton(document.domainblk.delAllDomain);
 }
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
        background-color: rgba(243, 240, 240, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef !important;
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
#domain table td{
    background-color:rgb(199, 202, 206) !important;
    width:35%;
    padding:5px
}
</style>
</head>
<body>

                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("21" "LANG_DOMAIN_BLOCKING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
 <p class="left-field-para"><% multilang("418" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BLOCKED_DOMAIN_HERE_YOU_CAN_ADD_DELETE_THE_BLOCKED_DOMAIN"); %></p>
</div>
</div>
<form action=/boaform/formDOMAINBLK method=POST name="domainblk">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("21" "LANG_DOMAIN_BLOCKING"); %>:</label>
            <input type="radio" value="0" name="domainblkcap" class="right-field-radio" <% checkWrite("domainblk-cap0"); %>><% multilang("247" "LANG_DISABLE"); %>
            <input type="radio" value="1" name="domainblkcap" class="right-field-radio" <% checkWrite("domainblk-cap1"); %>><% multilang("248" "LANG_ENABLE"); %>
            <input class="right-field btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">
        </div>
    </div>
</div>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("419" "LANG_DOMAIN"); %>:</label>
            <input type="text" name="blkDomain" size="15" maxlength="50" class="right-field">
            <input class="btn orange_btn right-field" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addDomain" onClick="return addClick(this)" style="margin-left: 24px;">
        </div>
    </div>
</div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14; width:302%; margin-left:-28px"><% multilang("21" "LANG_DOMAIN_BLOCKING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>
</div>
</div>
<div class="col-md-12 form-group left-field"id="domain">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:343%">
   <% showDOMAINBLKTable(); %>
 </table>
</div>
</div>
<hr class="margin_adjs">
<div class="form-footer text-right">

 <input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delDomain" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="btn grey_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllDomain" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/domainblk.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>


<script>
 <% checkWrite("domainNum"); %>
</script>
</form>
</div>
</div>
</div>

<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

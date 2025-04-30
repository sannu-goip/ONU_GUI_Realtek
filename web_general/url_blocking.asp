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

<title><% multilang("411" "LANG_BLOCKING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function addClick()
{
 return true;
}
function addFQDNClick(obj)
{
 if (document.url.urlFQDN.value=="") {
  alert("<% multilang("2464" "LANG_PLEASE_ENTER_THE_BLOCKED_FQDN"); %>");
  document.url.urlFQDN.focus();
  return false;
 }
 if (document.url.urlFQDN.value.length == 0 ) {
  if (!confirm('<% multilang("2576" "LANG_FQDN_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_FQDN"); %>') ) {
   document.url.urlFQDN.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.urlFQDN.value)) {
  alert("<% multilang("2465" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_FQDN_PLEASE_TRY_IT_AGAIN"); %>");
  document.url.urlFQDN.focus();
  return false;
  }
 if (checkString(document.url.urlFQDN.value) == 0) {
  alert("<% multilang("2466" "LANG_INVALID_BLOCKED_FQDN"); %>");
  document.url.urlFQDN.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function addKeywordClick(obj)
{
 if (document.url.Keywd.value=="") {
  alert("<% multilang("2467" "LANG_PLEASE_ENTER_THE_BLOCKED_KEYWORD"); %>");
  document.url.Keywd.focus();
  return false;
 }
 if (document.url.Keywd.value.length == 0 ) {
  if (!confirm('<% multilang("2577" "LANG_KEYWORD_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_KEYWORD"); %>') ) {
   document.url.Keywd.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.Keywd.value)) {
  alert("<% multilang("2468" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_KEYWORD_PLEASE_TRY_IT_AGAIN"); %>");
  document.url.Keywd.focus();
  return false;
  }
 if (checkString(document.url.Keywd.value) == 0) {
  alert("<% multilang("2469" "LANG_INVALID_BLOCKED_KEYWORD"); %>");
  document.url.Keywd.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableDelFQDNButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delFQDN);
 disableButton(document.url.delFAllQDN);
  }
}
function disableDelKeywdButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delKeywd);
 disableButton(document.url.delAllKeywd);
  }
}
function on_submit(obj)
{
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
    margin-left:-26px;
    width:365px;
}
.left-field-para{
    margin-left:-26px;
    width:1248px;
}
.right-field-radio{
    margin-left:0px;
    width:33px; 
    padding:2px;
     accent-color: #fd5814;
}
.right-field{
    margin-left:0px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:44px;
    padding:3px;
      accent-color: #fd5814;
}
.margin_adjs{
    margin-left:-30px;
    width:104.5%
}
</style>
</head>
<body>

                        <div class="">
                            

                             
                             <div class="scoop-inner-content">
									  
								
														 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/urlfilter.png" width="45" height="40" class="img_sub" alt=""/>URL <% multilang("411" "LANG_BLOCKING"); %></h1>
  	<div class="container-fluid">
 <hr class="margin_adjs">
 <div class="col-md-12 form-group">
        <div class="custom-control">
 <p class="left-field-para"> <% multilang("412" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BLOCKED_FQDN_SUCH_AS_TW_YAHOO_COM_AND_FILTERED_KEYWORD_HERE_YOU_CAN_ADD_DELETE_FQDN_AND_FILTERED_KEYWORD"); %></p>
</div>
</div>
<form action=/boaform/formURL method=POST name="url">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">URL <% multilang("411" "LANG_BLOCKING"); %>:</label>
            
                <input class="right-field-radio" type="radio" value="0" name="urlcap" <% checkWrite("url-cap0"); %>><% multilang("247" "LANG_DISABLE"); %>
                <input class="right-field-radio" type="radio" value="1" name="urlcap" <% checkWrite("url-cap1"); %>><% multilang("248" "LANG_ENABLE"); %>
            &nbsp;&nbsp;&nbsp;&nbsp;
                <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">
            </div>
        </div>
    </div>

<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("413" "LANG_FQDN"); %>:</label>
            <input type="text" name="urlFQDN" size="15" maxlength="125" class="right-field">
            <input class="btn orange_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFQDN" onClick="return addFQDNClick(this)">
        </div>
    </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">URL <% multilang("411" "LANG_BLOCKING"); %> <% multilang("1154" "LANG_TABLE_2"); %></h2>
 </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:402%">
 <% showURLTable(); %>
 </table>
</div>
</div>

        <div class="form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delFQDN" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="btn grey_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delFAllQDN" onClick="return deleteAllClick(this)"></td>
</div>

<script>
 <% checkWrite("FQDNNum"); %>
</script>

  <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("415" "LANG_KEYWORD"); %>: </label>
            <input class="right-field" type="text" name="Keywd" size="15" maxlength="18">

    <input class="btn orange_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addKeywd" onClick="return addKeywordClick(this)">
   </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14"><% multilang("416" "LANG_KEYWORD_FILTERING_TABLE"); %></h2>
</div>
</div>

  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:402%">
 <% showKeywdTable(); %>
 </table>
</div>
</div>
<hr class="margin_adjs">
 
        <div class="form-footer text-right">
<input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delKeywd" onClick="return deleteClick(this)">&nbsp;&nbsp;
<input class="btn orange_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllKeywd" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
<input type="hidden" value="/url_blocking.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</div>


 <script>
  <% checkWrite("keywdNum"); %>
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

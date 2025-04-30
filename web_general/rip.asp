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

<title>RIP <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
var ifnum;
function selected()
{
 document.rip.ripDel.disabled = false;
}
function resetClicked()
{
 document.rip.ripDel.disabled = true;
}
function disableDelButton()
{
 if (verifyBrowser() != "ns") {
  disableButton(document.rip.ripDel);
  disableButton(document.rip.ripDelAll);
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
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
<body>

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>RIP <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">


 <p class="left-field-para"><% multilang("427" "LANG_ENABLE_THE_RIP_IF_YOU_ARE_USING_THIS_DEVICE_AS_A_RIP_ENABLED_DEVICE_TO_COMMUNICATE_WITH_OTHERS_USING_THE_ROUTING_INFORMATION_PROTOCOL_THIS_PAGE_IS_USED_TO_SELECT_THE_INTERFACES_ON_YOUR_DEVICE_IS_THAT_USE_RIP_AND_THE_VERSION_OF_THE_PROTOCOL_USED"); %></p>
</div>
</div>
<form action=/boaform/formRip method=POST name="rip">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("30" "LANG_RIP"); %>:</label>
            <input type="radio" value="0" name="rip_on" class="right-field-radio" <% checkWrite("rip-on-0"); %> ><% multilang("247" "LANG_DISABLE"); %>
            <input type="radio" value="1" name="rip_on" class="right-field-radio" <% checkWrite("rip-on-1"); %> ><% multilang("248" "LANG_ENABLE"); %>
           &nbsp;&nbsp;&nbsp;&nbsp; <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="ripSet" class="inner_btn right-field" onClick="return on_submit(this)">
        </div>
    </div>
</div>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("70" "LANG_INTERFACE"); %>:</label>
            <select name="rip_if" class="right-field">
                <option value="65535">br0</option>
            <% if_wan_list("rt"); %>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("429" "LANG_RECEIVE_MODE"); %>:</label>
            <select size="1" name="receive_mode" class="right-field">
                <option value="0"><% multilang("346" "LANG_NONE"); %></option>
                <option value="1">RIP1</option>
                <option value="2">RIP2</option>
                <option value="3"><% multilang("397" "LANG_BOTH"); %></option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("430" "LANG_SEND_MODE"); %>:</label>
            <select size="1" name="send_mode" class="right-field">
                <option value="0"><% multilang("346" "LANG_NONE"); %></option>
                <option value="1">RIP1</option>
                <option value="2">RIP2</option>
                <option value="4">RIP1COMPAT</option>
            </select>
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl">
 <input class="btn orange_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="ripAdd" class="link_bg" onClick="return on_submit(this)"></td>
</div>
<hr class="margin_adjs">

<br>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
   <h2 class="sub_heading " style="color:#fd7e14"><% multilang("431" "LANG_RIP_CONFIG_TABLE"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <table class="table tab15-bordered table-striped" style="background-color: #f8f9fa; width:346%">
  <% showRipIf(); %>
  </table>
 </div>
</div> 
<hr class="margin_adjs">
<div class="btn_ctl  form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="ripDel" onClick="return deleteClick(this)" class="link_bg">&nbsp;&nbsp;
 <input class="btn grey_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="ripDelAll" onClick="return deleteAllClick(this)" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/rip.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
 <script>
    <% checkWrite("ripNum"); %>
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

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


<title>MAC <% multilang("379" "LANG_FILTERING"); %></title>
<script>
function skip () { this.blur(); }
function addClick(obj)
{
  if (document.formFilterAdd.srcmac.value==""){
 alert('<% multilang("2241" "LANG_INPUT_MAC_ADDRESS"); %>');
 return false;
  }
 if (document.formFilterAdd.srcmac.value != "") {
  if (!checkMac(document.formFilterAdd.srcmac, 0))
   return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.formFilterAdd.postSecurityFlag, document.formFilterAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formFilterDel.deleteSelFilterMac);
 disableButton(document.formFilterDel.deleteAllFilterMac);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formFilterDefault.postSecurityFlag, document.formFilterDefault);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
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
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
  return true;
 }
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
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/><% multilang("19" "LANG_MAC_FILTERING"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
 <p class="left-field-para"> <% multilang("394" "LANG_PAGE_DESC_LAN_TO_INTERNET_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
</div>

<form action=/boaform/admin/formFilter method=POST name="formFilterDefault">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("134" "LANG_MODE"); %>:</label>
            
                <input class="right-field-radio" type="radio" name="outAct" value="0" <% checkWrite("macf_out_act0"); %>><% multilang("2751" "LANG_WHITE_LIST"); %>
                <input class="right-field-radio" type="radio" name="outAct" value="1" <% checkWrite("macf_out_act1"); %>><% multilang("2752" "LANG_BLACK_LIST"); %>
            
                <input class="right-field btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setMacDft" onClick="return on_submit(this) ">
      
   
    <input type="hidden" value="/fw-macfilter_rg.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>
        </div>
</form>
<form action=/boaform/admin/formFilter method=POST name="formFilterAdd">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("92" "LANG_MAC_ADDRESS"); %>:</label>
            <input type="text" name="srcmac" size="15" maxlength="12" style="text-transform: uppercase" class="right-field">
            <input class="btn orange_btn right-field" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterMac" onClick="return addClick(this)" style="margin-left: 43px;">
        </div>
    </div>
    <input type="hidden" value="/admin/fw-macfilter_rg.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/admin/formFilter method=POST name="formFilterDel">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14"><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></h2>
  </div>
 </div>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:343%">
<% macFilterList(); %>
  </table>
 </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterMac" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="btn grey_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterMac" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/admin/fw-macfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
  <% checkWrite("macFilterNum"); %>
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

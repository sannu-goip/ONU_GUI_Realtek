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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><title><% multilang("36" "LANG_ARP_TABLE"); %></title>
<SCRIPT>
function on_submit()
{
 document.forms[0].refresh.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
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
</style>
</head>
<body>
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/gear.png" width="45" height="40" class="img_sub" alt=""/><% multilang("444" "LANG_USER_LIST"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("441" "LANG_PAGE_DESC_MAC_TABLE_INFO"); %></p>
 </div>
 </div>

<form action=/boaform/formRefleshFdbTbl method=POST name="formFdbTbl">
 <div class="data_common data_common_notitle data_vertical">
  <table Class= "table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
   <tr>
    <th width="40%"><% multilang("89" "LANG_IP_ADDRESS"); %></th>
    <th width="60%"><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
   </tr>
   <% ARPTableList(); %>
  </table>
 </div>
 <hr class="margin_adjs">
 <div class="btn_ctl form-footer">
  <input type="hidden" value="/arptable.asp" name="submit-url">
  <input class="link_bg btn orange_btn" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit()">&nbsp;&nbsp;
  <input type="hidden" name="postSecurityFlag" value="">
 </div>
</form>
</div>
</div>
</div>
</div>
</div>
<br><br>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

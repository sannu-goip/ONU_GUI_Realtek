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
<title><% multilang("871" "LANG_BRIDGE_FORWARDING_DATABASE"); %></title>
<SCRIPT>
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
<style>
  input[type="checkbox"]:checked {
    accent-color: #fd5814;
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
    width:289px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
    accent-color: #fd5814;
}
.right-field{
    margin-left:178px;
    padding:6px;
    width:190px; 
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
#cpe input{
       margin-left:170px;
    width:33px; 
    padding:2px
}
#number input{
      margin-left:180px;
    padding:2px;
    width:160px;
}


#codec_opt table{
width:100%;

}

#igmp table{
    margin-left:20px;
  line-height:32px;
}
 p{
    margin-left:27px;
    color:#fd7e14;
    font-size:20px;
    font-weight:bold;
}
#igmp .data_common{
  margin-left:4px;
}
#igmp table th {
     margin-left:72px;
   width:398px;  /* Adjust the value as needed */
    font-weight: 300;
    padding:2px;
}

#igmp table td {
      margin-left:72px;
    width:170px; 
    padding:2px;   /* Adjust the value as needed */

}
#igmp table p{
     margin-left:72pxpx;
}
#igmp table td input[type="text"]{
    margin-left:72px;
    padding:0px;
    width:190px; 
}
#igmp table td select{
    margin-left:72px;
    padding:7px;
    width:190px; 
}
#igmp table td input[type="password"]{
    margin-left:72px;
    padding:0px;
    width:190px; 
}
#igmp table td input[type="checkbox"]{
  margin-left:72px;
    padding:3px;
}
</style>
</head>
<body>

                        <div class="">
                            

                             
                            <div class="scoop-inner-content">	
															 
								
								
   <div class="row justify-content-between">
										<h1 class="heading_grey col-auto"><% multilang("871" "LANG_BRIDGE_FORWARDING_DATABASE"); %></h1>
									</div>
   <hr class="margin_adjs">
     <div class="col-md-12 form-group">
        <div class="custom-control">
  <h5 class="left-field-para" style="font-weight:300"> <% multilang("441" "LANG_PAGE_DESC_MAC_TABLE_INFO"); %></h5>
 </div>
 </div>
 <br>
<form action=/boaform/formRefleshFdbTbl method=POST name="formFdbTbl">
<div class="data_common data_vertical">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
  <tr>
   <th width="10%"><% multilang("213" "LANG_PORT"); %></th>
   <th width="20%"><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
   <th width="10%"><% multilang("873" "LANG_IS_LOCAL"); %>?</th>
   <th width="10%"><% multilang("874" "LANG_AGEING_TIMER"); %></th>
  </tr>
  <% bridgeFdbList(); %>
 </table>
</div>
<div class="btn_ctl form-footer">
 <input type="hidden" value="/fdbtbl.asp" name="submit-url">
 <input class="link_bg btn orange_btn" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">&nbsp;&nbsp;
 <input class="link_bg btn orange_btn" type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

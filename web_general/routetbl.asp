
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Route</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
    <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>IP Route Table</title>
<SCRIPT>
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
<style>
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
    width:142px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:3px
}
.right-field{
    margin-left:178px;
    padding:3px;
    width:160px; 
}


</style>
</head>
<body>
<div class="col-md-12 form-group">
        <div class="custom-control">
 <h2 class="sub_heading " style="color:#fd7e14; width:250px">IP Route Table</h2>
 <p>This table shows a list of destination routes commonly accessed by your network.</p>
</div>
</div>
<form action=/boaform/formRefleshRouteTbl method=POST name="formRouteTbl">
 <div class="col-md-12 form-group">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-14px; width:98%">
  <tr><th align=center width="8%">Destination</th>
<th align=center width="8%">Subnet Mask</th>
<th align=center width="8%">Next Hop</th>
<th align=center width="8%">Metric</th>
<th align=center width="8%">Interface</th></tr>
<tr><td align=center width="8%">0.0.0.0</td>
<td align=center width="8%">0.0.0.0</td>
<td align=center width="8%">10.215.1.1</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0_0</td></tr>
<tr><td align=center width="8%">10.215.1.0</td>
<td align=center width="8%">255.255.255.0</td>
<td align=center width="8%">*</td>
<td align=center width="8%">0</td>
<td align=center width="8%">nas0_0</td></tr>
<tr><td align=center width="8%">127.0.0.0</td>
<td align=center width="8%">255.255.255.0</td>
<td align=center width="8%">*</td>
<td align=center width="8%">0</td>
<td align=center width="8%">lo</td></tr>
<tr><td align=center width="8%">192.168.2.0</td>
<td align=center width="8%">255.255.255.0</td>
<td align=center width="8%">*</td>
<td align=center width="8%">0</td>
<td align=center width="8%">br0</td></tr>

 </table>
</div>
</div>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">

<input type="hidden" value="/routetbl.asp" name="submit-url">
 <input type="submit" value="Refresh" onClick="return on_submit()" class="link_bg">&nbsp;&nbsp;
 <input type="button" value="Close" name="close" onClick="javascript: window.close();" class="link_bg">
 <input type="hidden" name="postSecurityFlag" value="">

</div>
</div>
</form>
<br><br>
</body>
</html>

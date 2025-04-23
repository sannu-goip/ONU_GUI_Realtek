<% SendWebHeadStr();%>
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
<title><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
<script>
var need_upgrade_pwd = <% checkWrite("need_upgrade_pwd") %>
function sendClicked()
{
 if(need_upgrade_pwd )
 {
  if (document.authcheck.upgradepass.value == "" || document.authcheck.upgradepass.value != "3hwdm@Netmax") {
   alert("Error: wrong password!");
   document.authcheck.upgradepass.focus();
   return false;
  }
 }
 if (document.password.binary.value=="") {
  alert("<% multilang("2262" "LANG_SELECTED_FILE_CANNOT_BE_EMPTY"); %>");
  document.password.binary.focus();
  return false;
 }
 if (!confirm('<% multilang("565" "LANG_PAGE_DESC_UPGRADE_CONFIRM")%>'))
  return false;
 else{
  setload();
  return true;
 }
}
</script>
<style>
.left-field{
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left:-34px;
    width:1248px;
}
.right-field-radio{
    margin-left:27px;
    width:33px; 
    padding:2p;
        accent-color: #fd5814; 

}
.right-field{
    margin-left:37px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:44px;
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
									<h1 class="heading_grey"><img src="/Dashboard/images/upgrade.png" width="45" height="40" class="img_sub" alt=""/><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></h1>
  	<div class="container-fluid">
 <hr class="margin_adjs">

  <div class="col-md-12 form-group left-field-para">
        <div class="custom-control">
 <p> <% multilang("560" "LANG_PAGE_DESC_UPGRADE_FIRMWARE"); %></p>
</div>
</div>

<form method=POST name="authcheck">
<div class="data_common data_common_notitle" <% checkWrite("upgrade_pwd") %>>
 <table border="0" cellspacing="4" width="500">
  <tr>
      <td width="20%"><font size=2><b><% multilang("67" "LANG_PASSWORD"); %>:</b></td>
      <td width="50%"><font size=2><input type="password" name="upgradepass" size="20" maxlength="30"></td>
  </tr>
 </table>
</div>
</form>
<form action=/boaform/admin/formUpload method=POST enctype="multipart/form-data" name="password">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><input class="inner_btn" type="file" value="<% multilang("546" "LANG_CHOOSE_FILE"); %>" name="binary" size=20></th>
  </tr>
 </table>
</div>
<br>
<hr class="margin_adjs">
<div class="adsl clearfix form-footer text-right">
    <input class="btn orange_btn" type="submit" value="<% multilang("561" "LANG_UPGRADE"); %>" name="send" onclick="return sendClicked()">&nbsp;&nbsp;
 <input class="btn grey_btn" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
 <input type="hidden" value="/admin/upgrade.asp" name="submit-url">
</div>
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

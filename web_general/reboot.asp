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
<title><% multilang("543" "LANG_COMMIT_AND_REBOOT"); %></title>
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
<SCRIPT>
function saveClick()
{
   if ( !confirm('<% multilang("2570" "LANG_DO_YOU_REALLY_WANT_TO_COMMIT_THE_CURRENT_SETTINGS"); %>') ) {
 return false;
  }
  else{
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
  }
}
function resetClick1()
{
   if ( !confirm('<% multilang("2571" "LANG_DO_YOU_REALLY_WANT_TO_RESET_THE_CURRENT_SETTINGS_TO_DEFAULT"); %>') ) {
 return false;
  }
  else
 return true;
}


//saveconfg.asp
function resetClick3(obj)
{
 if(confirm("<% multilang("2572" "LANG_DO_YOU_REALLY_WANT_TO_RESET_THE_CURRENT_SETTINGS_TO_FACTORY_DEFAULT"); %>"))
 {
  obj.isclick = 1;
  postTableEncrypt(document.resetConfig.postSecurityFlag, document.resetConfig);
  return true;
 }
 else
  return false;
}
function uploadClick()
{
    if (document.saveConfig.binary.value.length == 0) {
  alert('<% multilang("546" "LANG_CHOOSE_FILE"); %>!');
  document.saveConfig.binary.focus();
  return false;
 }
 return true;
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.saveCSConfig.postSecurityFlag, document.saveCSConfig);
 return true;
}

</SCRIPT>
</head>
<body>

                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
														 
                                <FORM id="ResetForm" name="ResetForm" action="/cgi-bin/mag-reset.asp" method="post" class="white_box">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/device.png" width="45" height="40" class="img_sub" alt=""/> Reboot</h1>	
									<div class="container-fluid">
										<hr class="margin_adjs" />
<div class="col-md-12 form-group">
        <div class="custom-control">
<h6 class="sub_heading left-field" style="color:#fd7e14; width:250px"><% multilang("543" "LANG_COMMIT_AND_REBOOT"); %></h6>
 <p class="left-field-para"><% multilang("544" "LANG_THIS_PAGE_IS_USED_TO_COMMIT_CHANGES_TO_SYSTEM_MEMORY_AND_REBOOT_YOUR_SYSTEM"); %></p>
</div>
</div>
<form action=/boaform/admin/formReboot method=POST name="cmboot">
<table>
<!--
  <tr>
      <td width="30%"><font size=2>Reboot from:
      <select size="1" name="rebootMode">
           <option selected value=0>Last Configuration</option>
           <option value=1>Default Configuration</option>
           <option value=2>Upgrade Configuration</option>
      </select>
      </td>
  </tr>
-->
</table>
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("543", "LANG_COMMIT_AND_REBOOT"); %>:</label>
            <input class="inner_btn right-field btn orange_btn" type="submit" value="<% multilang("543", "LANG_COMMIT_AND_REBOOT"); %>" onclick="return saveClick()">
        </div>
    </div>
</div>
<!--
      <input class="btn orange_btn" type="submit" value="Reset to Default" name="reset" onclick="return resetClick1()">
      <input type="submit" value="Reboot" name="reboot">
      <input type="hidden" value="/reboot.asp" name="submit-url">
  <script>
-->
<input type="hidden" name="postSecurityFlag" value="">
</form>

       <div class="col-md-12 form-group">
        <div class="custom-control">
       <h6 class="sub_heading left-field" style="color:#fd7e14"><% multilang("545" "LANG_BACKUP_AND_RESTORE_SETTINGS"); %></h6>
        <p class="left-field-para"> <% multilang("547" "LANG_THIS_PAGE_ALLOWS_YOU_TO_BACKUP_CURRENT_SETTINGS_TO_A_FILE_OR_RESTORE_THE_SETTINGS_FROM_THE_FILE_WHICH_WAS_SAVED_PREVIOUSLY_BESIDES_YOU_COULD_RESET_THE_CURRENT_SETTINGS_TO_FACTORY_DEFAULT"); %></p>
    </div>
    </div>
    <form action=/boaform/formSaveConfig method=POST name="saveCSConfig">
    <div class="data_common data_common_notitle" <% checkWrite("show_button"); %> <% checkWrite("div_hide"); %>>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("548", "LANG_BACKUP_SETTINGS_TO_FILE"); %>:</label>
            
                <input class="inner_btn right-field btn orange_btn" type="submit" value="<% multilang("551", "LANG_BACKUP"); %>..." name="save_cs" onClick="return on_submit(this)">
                <input type="hidden" name="postSecurityFlag" value="">
            </div>
        </div>
   
    </div>
    </form>
      <!--
      <form action=/boaform/formSaveConfig method=POST name="saveHSConfig">
      <tr>
        <td class="table_item"><% multilang("550" "LANG_BACKUP_HARDWARE_SETTINGS_TO_FILE"); %>:</td>
        <td>
          <input class="btn orange_btn" type="submit" value="<% multilang("551" "LANG_BACKUP"); %>..." name="save_hs">
        </td>
      </form>
      -->
    <form action=/boaform/formSaveConfig enctype="multipart/form-data" method=POST name="saveConfig">
    <div class="data_common data_common_notitle" <% checkWrite("show_button"); %> <% checkWrite("div_hide"); %>>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("552", "LANG_RESTORE_SETTINGS_FROM_FILE"); %>:</label>
            
                <input class="inner_btn right-field"  type="file" value="<% multilang("546", "LANG_CHOOSE_FILE"); %>" name="binary" size="24">
             
                <input class="inner_btn right-field btn grey_btn" type="submit" value="<% multilang("553", "LANG_RESTORE"); %>" name="load" onclick="return uploadClick()">
                <input type="hidden" value="/reboot.asp" name="submit-url">
            </div>
        </div>
    </div>

    </form>
    <form action=/boaform/formSaveConfig method=POST name="resetConfig">
    <div class="data_common data_common_notitle">

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("554", "LANG_RESET_SETTINGS_TO_DEFAULT"); %>:</label>
           
                <input class="inner_btn right-field btn orange_btn" type="submit" value="<% multilang("222", "LANG_RESET"); %>" name="reset" onclick="return resetClick3(this)">
                <input type="hidden" value="/reboot.asp" name="submit-url">
                <input type="hidden" name="postSecurityFlag" value="">
            </div>
        </div>
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
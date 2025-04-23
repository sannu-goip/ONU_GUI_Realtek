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

<title><% multilang("2965" "LANG_LOOP_DETECTION"); %></title>
<SCRIPT>
<% initLBDPage(); %>
function on_init()
{
 if(lbd_enable)
  document.lbd.enable.checked = true;
 document.lbd.exist_period.value = lbd_exist_period;
 document.lbd.cancel_period.value = lbd_cancel_period;
 document.lbd.ether_type.value = lbd_ether_type.toString(16).toUpperCase();
 document.lbd.vlans.value = lbd_vlans;
 var table = document.getElementById("port_status");
 for(var i = 0 ; i < lbd_port_status.length ; i++)
 {
  var cell;
  var row = table.insertRow(-1);
  cell = row.insertCell(0);
  cell.innerHTML = "LAN" + (i+1);
  cell = row.insertCell(1);
  switch(lbd_port_status[i])
  {
  case 0:
   cell.innerHTML = "<% multilang("2966" "LANG_LOOP_DETECTION_STATUS_FALSE"); %>";
   break;
  case 1:
   cell.innerHTML = "<% multilang("2967" "LANG_LOOP_DETECTION_STATUS_TRUE_AND_DISABLE_PORT"); %>";
   break;
  case 2:
   cell.innerHTML = "<% multilang("2968" "LANG_LOOP_DETECTION_STATUS_TRUE_BUT_NOT_DISABLED_PORT"); %>";
   break;
  }
 }
 update_gui();
}
function disable_by_class(str_class, disable)
{
 var elements = document.getElementsByClassName(str_class);
 for (var i = 0 ; i < elements.length ; i++)
  elements[i].disabled = disable;
}
function update_gui()
{
 with(document.lbd)
 {
  if(enable.checked == true)
   disable_by_class("lbd", false);
  else
   disable_by_class("lbd", true);
 }
}
function on_submit()
{
 with(document.lbd)
 {
  if(enable.checked == false)
  {
   document.forms[0].save.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
  if(!sji_checkdigitrange(exist_period.value, 1, 60))
  {
   alert("<% multilang("2969" "LANG_LOOP_DETECTION_INTERVAL_TIME_SHOULD_BE_1_TO_60_SEC"); %>!");
   exist_period.focus();
   return false;
  }
  if(!sji_checkdigitrange(cancel_period.value, 10, 1800))
  {
   alert("<% multilang("2970" "LANG_LOOP_DETECTION_RECOVERY_INTERVAL_TIME_SHOULD_BE_10_TO_1800_SEC"); %>!");
   cancel_period.focus();
   return false;
  }
  if(!sji_checkhex(ether_type.value, 1, 4))
  {
   alert("<% multilang("2971" "LANG_LOOP_DETECTION_ETHER_TYPE_SHOULD_BE_IN_HEX_NUMBER"); %>!");
   ether_type.focus();
   return false;
  }
  if(vlans.value.length <= 0)
  {
   alert("<% multilang("2972" "LANG_LOOP_DETECTION_MUST_ASSIGN_VLAN_NUMBER"); %>!");
   vlans.focus();
   return false;
  }
 }
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_refresh(obj)
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
    margin-left:-27px;
    width:406px;
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
    margin-left:30px;
    padding:3px;
       accent-color: #fd5814;  
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body onLoad="on_init();">

                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/mac.png" width="45" height="40" class="img_sub" alt=""/><% multilang("2965" "LANG_LOOP_DETECTION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"><% multilang("2980" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_LOOP_DETECTION_PARAMETERS_HERE_YOU_CAN_CHANGE_THE_SETTINGS_OR_VIEW_LOOP_DETECTION_STATUS"); %></p>
</div>
</div>
<form action=/boaform/formLBD method=POST name="lbd">
		<div class="col-md-12 form-group left-field">
											<div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14"><% multilang("2965" "LANG_LOOP_DETECTION"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>

 </div>
</div>
	
 <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("2973" "LANG_LOOP_DETECTION_ENABLE"); %>:</label>
            <input type="checkbox" name="enable" value="1" onClick="update_gui();" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("2974" "LANG_LOOP_DETECTION_INTERVAL"); %>:</label>
            <input type="text" class="lbd right-field" name="exist_period" size="15" maxlength="5"> (1~60)<% multilang("357" "LANG_SECONDS"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("2975" "LANG_LOOP_DETECTION_RECOVERY_INTERVAL"); %>:</label>
            <input type="text" class="lbd right-field" name="cancel_period" size="15" maxlength="15"> (10 ~ 1800)<% multilang("357" "LANG_SECONDS"); %>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("2976" "LANG_LOOP_DETECTION_ETHER_TYPE"); %>:</label>
              0x<input type="text" class="lbd right-field" name="ether_type" size="13" maxlength="4" style="margin-left: 16px;">
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("124" "LANG_VLAN_ID"); %>:</label>
            <input type="text" class="lbd right-field" name="vlans" size="30" maxlength="300"

            <div class="right-field">&nbsp;&nbsp;<% multilang("2977" "LANG_LOOP_DETECTION_SEPERATE_BY_COMMA_0_REPRESENT_UNTAGGED_EX_0_45_46"); %></div>
              </div>
    </div>
      
</div>

<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14"><% multilang("2965" "LANG_LOOP_DETECTION"); %><% multilang("2979" "LANG_LOOP_DETECTION_STATUS"); %></h2>
 
 </div>
</div>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table id="port_status" class="table table-bordered table-striped" style="background-color: #f8f9fa; width:302%">
  <tr>
   <th><% multilang("2978" "LANG_LOOP_DETECTION_LAN_PORT"); %></th>
   <th><% multilang("2979" "LANG_LOOP_DETECTION_STATUS"); %></th>
  </tr>
 </table>
</div>
</div>
<hr class="margin_adjs">

<div class="form-footer text-right">
      
      <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return on_submit()">&nbsp;&nbsp;
      <input class="btn grey_btn" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_refresh(this)">&nbsp;&nbsp;
      <input type="hidden" value="/lbd.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>

</form>
</div>
</div>
</div>


</body>
</html>

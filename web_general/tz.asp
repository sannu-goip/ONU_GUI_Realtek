<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">

<script language="javascript" src=voip_script.js></script>
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

<title><% multilang("69" "LANG_TIME_ZONE"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<style> TABLE {width:375} 
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
    margin-left:-10px;
    width:164px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:18px; 
    padding:3px;
     accent-color: #fd5814;
}
.right-field{
    margin-left:178px;
    padding:3px;
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
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}


</style>
<script>
var ntp_zone_index=4;
function ntp_entry(name, value) {
 this.name = name ;
 this.value = value ;
}
function setNtpServer(field, ntpServer){
    field.selectedIndex = 0 ;
    for(i=0 ;i < field.options.length ; i++){
     if(field.options[i].value == ntpServer){
  field.options[i].selected = true;
  break;
 }
    }
}
function checkEmpty(field){
 if(field.value.length == 0){
  alert(field.name + " field can't be empty\n");
  field.value = field.defaultValue;
  field.focus();
  return false;
 }
 else
  return true;
}
function checkNumber(field){
    str =field.value ;
    for (var i=0; i<str.length; i++) {
     if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9'))
                        continue;
 field.value = field.defaultValue;
        alert("<% multilang("2457" "LANG_IT_SHOULD_BE_IN_NUMBER_0_9"); %>");
        return false;
    }
 return true;
}
function checkMonth(str) {
  d = parseInt(str, 10);
  if (d < 0 || d > 12)
       return false;
  return true;
}
function checkDay(str, month) {
  d = parseInt(str, 10);
  m = parseInt (month, 10);
  if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
   if (d < 0 || d > 31)
        return false;
  }
  else if (m == 4 || m == 6 || m == 9 || m == 11) {
   if (d < 0 || d > 31)
        return false;
  }
  else if (m == 2) {
   if (d < 0 || d > 29)
        return false;
  }
  else
   return false;
  return true;
}
function checkHour(str) {
  d = parseInt(str, 10);
  if (d < 0 || d >= 24)
       return false;
  return true;
}
function checkTime(str) {
  d = parseInt(str, 10);
  if (d < 0 || d >= 60)
       return false;
  return true;
}
function saveChanges(form,obj){
 if((checkEmpty(form.year)& checkEmpty(form.month) & checkEmpty(form.hour)
  & checkEmpty(form.day) &checkEmpty(form.minute) & checkEmpty(form.second))== false)
   return false;
 if((checkNumber(form.year)& checkNumber(form.month) & checkNumber(form.hour)
  & checkNumber(form.day) &checkNumber(form.minute) & checkNumber(form.second))== false)
   return false;
 if(form.month.value == '0'){
  form.month.value = form.month.defaultValue;
         alert("<% multilang("2458" "LANG_INVALID_MONTH_NUMBER_IT_SHOULD_BE_IN_NUMBER_1_9"); %>");
  return false;
 }
 if (!checkMonth(form.month.value)) {
  alert("<% multilang("2459" "LANG_INVALID_MONTH_SETTING"); %>");
  form.month.focus();
  return false;
 }
 if (!checkDay(form.day.value, form.month.value)) {
  alert("<% multilang("2460" "LANG_INVALID_DAY_SETTING"); %>");
  form.day.focus();
  return false;
 }
 if (!checkHour(form.hour.value)) {
  alert("I<% multilang("2461" "LANG_INVALID_HOUR_SETTING"); %>");
  form.hour.focus();
  return false;
 }
 if (!checkTime(form.minute.value) || !checkTime(form.second.value)) {
  alert("<% multilang("2462" "LANG_INVALID_TIME_SETTING"); %>");
  return false;
 }
 if (form.enabled.checked && form.ntpServerId[1].checked && form.ntpServerHost2.value != form.ntpServerHost2.defaultValue) {
  if (form.ntpServerHost2.value == "" || !checkString(form.ntpServerHost2.value)) {
   alert("<% multilang("2463" "LANG_INVALID_SERVER_STRING"); %>");
   form.ntpServerHost2.value = form.ntpServerHost2.defaultValue;
   form.ntpServerHost2.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function updateState(form)
{
 if(form.enabled.checked){
  enableTextField(form.ntpServerHost1);
  if(form.ntpServerHost2 != null)
   enableTextField(form.ntpServerHost2);
  disableTextField(form.year);
  disableTextField(form.month);
  disableTextField(form.day);
  disableTextField(form.hour);
  disableTextField(form.minute);
  disableTextField(form.second);
 }
 else{
  disableTextField(form.ntpServerHost1);
  if(form.ntpServerHost2 != null)
   disableTextField(form.ntpServerHost2);
  enableTextField(form.year);
  enableTextField(form.month);
  enableTextField(form.day);
  enableTextField(form.hour);
  enableTextField(form.minute);
  enableTextField(form.second);
 }
}
</script>
</head>
<body>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/time.png" width="45" height="40" class="img_sub" alt=""/> <% multilang("69" "LANG_TIME_ZONE"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
										
									</div>	
                                    <hr class="margin_adjs">
 
   <div class="col-md-12 form-group">
        <div class="custom-control">

 <p class="left-field-para"> <% multilang("570" "LANG_YOU_CAN_MAINTAIN_THE_SYSTEM_TIME_BY_SYNCHRONIZING_WITH_A_PUBLIC_TIME_SERVER_OVER_THE_INTERNET"); %></p>
</div>
</div>
<form action=/boaform/formNtp method=POST name="time">
<div class="data_common data_common_notitle">
 <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("571", "LANG_CURRENT_TIME"); %>:</label>
             <div style="margin-left: 332px;margin-top: -27px;">
            <% multilang("578", "LANG_YEAR"); %>
            <input type="text" name="year" value="<% getInfo("year"); %>" size="4" maxlength="4">
            <% multilang("579", "LANG_MONTH"); %>
            <input type="text" name="month" value="<% getInfo("month"); %>" size="2" maxlength="2">
            <% multilang("580", "LANG_DAY"); %>
            <input type="text" name="day" value="<% getInfo("day"); %>" size="2" maxlength="2">
            <% multilang("581", "LANG_HOUR"); %>
            <input type="text" name="hour" value="<% getInfo("hour"); %>" size="2" maxlength="2">
            <% multilang("582", "LANG_MIN"); %>
            <input type="text" name="minute" value="<% getInfo("minute"); %>" size="2" maxlength="2">
            <% multilang("583", "LANG_SEC"); %>
            <input type="text" name="second" value="<% getInfo("second"); %>" size="2" maxlength="2">
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("572", "LANG_TIME_ZONE_SELECT"); %>:</label>
            <select name="timeZone" class="right-field">
                <% timeZoneList(); %>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("573", "LANG_ENABLE_DAYLIGHT_SAVING_TIME"); %></label>
            <input type="checkbox" name="dst_enabled" value="ON" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("574", "LANG_ENABLE_SNTP_CLIENT_UPDATE"); %></label>
            <input type="checkbox" name="enabled" value="ON" onclick="updateState(document.time)" class="right-field-checkbox">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field"><% multilang("424", "LANG_WAN_INTERFACE"); %>:</label>
            <select name="ext_if" <% checkWrite("sntp0d"); %> class="right-field">
                <option value="65535"><% multilang("401", "LANG_ANY"); %></option>
                <% if_wan_list("rt"); %>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SNTP <% multilang("91", "LANG_SERVER"); %>:</label>
            <input type="radio" value="0" name="ntpServerId" class="right-field-radio">
            <select name="ntpServerHost1">
                <option value="192.5.41.41"><% multilang("584", "LANG_192_5_41_41_NORTH_AMERICA"); %></option>
                <option value="192.5.41.209"><% multilang("585", "LANG_192_5_41_209_NORTH_AMERICA"); %></option>
                <option value="130.149.17.8"><% multilang("586", "LANG_130_149_17_8_EUROPE"); %></option>
                <option value="203.117.180.36"><% multilang("587", "LANG_203_117_180_36_ASIA_PACIFIC"); %></option>
            </select>
                       
            <input type="radio" value="1" name="ntpServerId" class="right-field-radio">
            <input type="text" name="ntpServerHost2" size="15" maxlength="30" value="<% getInfo("ntpServerHost2"); %>"> (<% multilang("575", "LANG_MANUAL_SETTING"); %>)
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="form-footer text-right">
<div class="adsl clearfix">
 <input type="hidden" value="/tz.asp" name="submit-url">
 <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(document.time,this)">
 <input class="btn grey_btn" type="button" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="javascript: window.location.reload()">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>
</form>
<script>
 <% initPage("ntp"); %>
 setNtpServer(document.time.ntpServerHost1, "<% getInfo("ntpServerHost1"); %>");
 updateState(document.time);
 ifIdx = <% getInfo("ntp-ext-itf"); %>;
 document.time.ext_if.selectedIndex = 0;
 for( i = 1; i < document.time.ext_if.options.length; i++ )
 {
  if( ifIdx == document.time.ext_if.options[i].value )
   document.time.ext_if.selectedIndex = i;
 }
</script>
</div>
</div>
</div>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

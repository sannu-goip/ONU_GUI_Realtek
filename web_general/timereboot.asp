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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><title><% multilang("2950" "LANG_TIME_REBOOT"); %></title>
<script>
 function padding1(num, length) {
 for(var len = (num + "").length; len < length; len = num.length) {
  num = "0" + num;
 }
 return num;
}
function setValue(id,value)
{
    document.getElementById(id).value=value;
}
function applyclick(obj)
{
 var week = 0;
 if(document.getElementById("everyday").checked)
 {
  week = 1;
 }
 else
 {
  if(document.getElementById("mon").checked)
   week += 0x2;
  if(document.getElementById("tue").checked)
   week += 0x4;
  if(document.getElementById("wen").checked)
   week += 0x8;
  if(document.getElementById("thr").checked)
   week += 0x10;
  if(document.getElementById("fri").checked)
   week += 0x20;
  if(document.getElementById("sat").checked)
   week += 0x40;
  if(document.getElementById("sun").checked)
   week += 0x80;
 }
 setValue("day", week);
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function checkboxOnclick(checkbox)
{
 if ( checkbox.checked == true)
 {
  document.getElementById("sched_time").style.display = "";
  document.getElementById("sched_weekday").style.display = "";
 }
 else
 {
  document.getElementById("sched_time").style.display = "none";
  document.getElementById("sched_weekday").style.display = "none";
 }
}
function on_init()
{
 with (document.forms[0])
 {
  var i=0;
  for(i=0; i<24; i++)
   document.formTimeReboot.hour.options.add(new Option(padding1(i,2), i));
  for(i=0; i<60; i++)
   document.formTimeReboot.minute.options.add(new Option(padding1(i,2), i));
  var reboot_enable = <% getInfo("reboot_sched_enable"); %>;
  var reboot_hour = <% getInfo("reboot_sched_hour"); %>;
  var reboot_min = <% getInfo("reboot_sched_minute"); %>;
  var reboot_weekday = <% getInfo("reboot_sched_day"); %>;
  if(reboot_enable == '1')
  {
   document.getElementById("sched_time").style.display = "";
   document.getElementById("sched_weekday").style.display = "";
   document.formTimeReboot.sch_enable.checked = true;
  }
  else
   document.formTimeReboot.sch_enable.checked = false;
  document.formTimeReboot.hour.selectedIndex = parseInt(reboot_hour);
  document.formTimeReboot.minute.selectedIndex = parseInt(reboot_min);
  reboot_weekday = parseInt(reboot_weekday);
  if(reboot_weekday & 1)
  {
   document.getElementById("everyday").checked=true;
   document.getElementById("mon").checked=false;
   document.getElementById("tue").checked=false;
   document.getElementById("wen").checked=false;
   document.getElementById("thr").checked=false;
   document.getElementById("fri").checked=false;
   document.getElementById("sat").checked=false;
   document.getElementById("sun").checked=false;
  }else{
   if((reboot_weekday&0x2)!=0)
    document.getElementById("mon").checked=true;
   if((reboot_weekday&0x4)!=0)
    document.getElementById("tue").checked=true;
   if((reboot_weekday&0x8)!=0)
    document.getElementById("wen").checked=true;
   if((reboot_weekday&0x10)!=0)
    document.getElementById("thr").checked=true;
   if((reboot_weekday&0x20)!=0)
    document.getElementById("fri").checked=true;
   if((reboot_weekday&0x40)!=0)
    document.getElementById("sat").checked=true;
   if((reboot_weekday&0x80)!=0)
    document.getElementById("sun").checked=true;
  }
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
    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
.left-field{
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1079px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:176px;
    padding:2px;
    width:47px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-29px;
    width:104.5%
}
</style>
</head>
<body onLoad="on_init();">
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("2950" "LANG_TIME_REBOOT"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("2951" "LANG_TIME_REBOOT_PAGE_DESC"); %></p>
 </div>
 </div>
<form action=/boaform/formTimeReboot method=POST name="formTimeReboot" >
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
  <div class="custom-control">

   <label class="left-field"><% multilang("248" "LANG_ENABLE"); %></label>
   
    <input class="right-field-checkbox"  type="checkbox" name="sch_enable" value="ON" onClick="checkboxOnclick(this)">
</div>
</div>
 <div class="col-md-12 form-group" id="sched_time" name="sched_time" style="display:none">
  <div class="custom-control">
  
  <label class="left-field"><% multilang("78" "LANG_TIME"); %></label>
     <select class="right-field"  id="hour" name="hour">
     </select>
     <% multilang("581" "LANG_HOUR"); %>&nbsp;
     <select id="minute" name="minute">
     </select>
     <% multilang("582" "LANG_MIN"); %>&nbsp;
    </div>
  </div>
  <div class="col-md-12 form-group" id="sched_weekday" name="sched_weekday" style="display:none">
  <div class="custom-control">

   <label class="left-field"><% multilang("77" "LANG_DATE"); %></label>
    <input class="right-field-checkbox" type="checkbox" id="everyday" name="everyday" value="0" /><% multilang("2952" "LANG_TIME_EVERYDAY"); %>
    <input type="checkbox" id="sun" name="sun" value="7" /><% multilang("618" "LANG_SUN"); %>
    <input type="checkbox" id="mon" name="mon" value="1" /><% multilang("619" "LANG_MON"); %>
    <input type="checkbox" id="tue" name="tue" value="2" /><% multilang("620" "LANG_TUE"); %>
    <input type="checkbox" id="wen" name="wen" value="3" /><% multilang("621" "LANG_WED"); %>
    <input type="checkbox" id="thr" name="thr" value="4" /><% multilang("622" "LANG_THU"); %>
    <input type="checkbox" id="fri" name="fri" value="5" /><% multilang("623" "LANG_FRI"); %>
    <input type="checkbox" id="sat" name="sat" value="6" /><% multilang("624" "LANG_SAT"); %>
   </div>
   </div>
</div>
<hr class="margin_adjs">
 
<div class="btn_ctl form-footer">
 <input class="link_bg btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return applyclick(this)">&nbsp;&nbsp;
 <input type="hidden" value="/timereboot.asp" name="submit-url">
 <input type="hidden" name="day" id="day" value="">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
</script>
</form>
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

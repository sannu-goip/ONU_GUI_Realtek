<% SendWebHeadStr();%>
<title><% multilang("2950" "LANG_TIME_REBOOT"); %></title>
<style>
  /* General body styling */
  body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  /* Intro section styling */
  .intro_main {
      padding: 5px 15px; /* Compact padding */
      background-color: #fff;
      border-bottom: 1px solid #ddd;
  }
  
  .intro_title {
      font-size: 24px; /* Slightly smaller font size */
   
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      font-size: 12px; /* Smaller font size */
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
      margin: 0px 15px; /* Compact margin */
      padding: 0px 10px; /* Compact padding */
      background-color: #fff;
     
  }
  
 
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 13px; /* Smaller font size */
      color: #333;
      padding: 6px; /* Compact padding */
      width: 40%;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
  }
  
  .data_common input[type="text"],
  .data_common input[type="file"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #ccc;
      border-radius: 2px; /* Slightly smaller border radius */
      font-size: 12px; /* Smaller font size */
      box-sizing: border-box;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin: 10px 15px; /* Compact margin */
  }
  
  .link_bg {
      height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #eee;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .link_bg:hover {
    border: 1px solid #f58220;
      background-color: white;
      color: #f58220;
  }

  /* Column styling */
  .column {
      margin: 10px 15px; /* Compact margin */
  }
  
   input[type="checkbox"] {
    vertical-align: bottom;
   }
  .table_stats th{
    text-align: center;
    font-weight: bold;
    font-size: 14px;
    background-color: #e0dddd;
  }
  .table_stats tr td{
    font-size: 13px;
  }
  span{
    font-size: 13px;
  }
  </style>
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
</head>
<body onLoad="on_init();">

<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>Time Reboot</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><div><img src="/img/time.png" style="width:38px;"></div><div style="padding-top:-3px;"><p class="intro_title"><% multilang("2950" "LANG_TIME_REBOOT"); %></p></div></div>
 
 <p class="intro_content"> <% multilang("2951" "LANG_TIME_REBOOT_PAGE_DESC"); %></p>
</div>
<form action=/boaform/formTimeReboot method=POST name="formTimeReboot" >
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="25%"><% multilang("248" "LANG_ENABLE"); %></th>
   <td width="75%">
    <input type="checkbox" name="sch_enable" value="ON" onClick="checkboxOnclick(this); ">
   </td>
  </tr>
  <tr id="sched_time" name="sched_time" style="display:none">
   <th width="25%"><% multilang("78" "LANG_TIME"); %></th>
   <td width="75%">
    <div>
     <select id="hour" name="hour">
     </select>
     <span><% multilang("581" "LANG_HOUR"); %>&nbsp;</span>
     <select id="minute" name="minute">
     </select>
     <span><% multilang("582" "LANG_MIN"); %>&nbsp;</span>
    </div>
   </td>
  </tr>
  <tr id="sched_weekday" name="sched_weekday" style="display:none">
   <th width="25%"><% multilang("77" "LANG_DATE"); %></th>
   <td width="75%">
    <input type="checkbox" id="everyday" name="everyday" value="0" /><span><% multilang("2952" "LANG_TIME_EVERYDAY"); %></span>
    <input type="checkbox" id="sun" name="sun" value="7" /><span><% multilang("618" "LANG_SUN"); %></span>
    <input type="checkbox" id="mon" name="mon" value="1" /><span><% multilang("619" "LANG_MON"); %></span>
    <input type="checkbox" id="tue" name="tue" value="2" /><span><% multilang("620" "LANG_TUE"); %></span>
    <input type="checkbox" id="wen" name="wen" value="3" /><span><% multilang("621" "LANG_WED"); %></span>
    <input type="checkbox" id="thr" name="thr" value="4" /><span><% multilang("622" "LANG_THU"); %></span>
    <input type="checkbox" id="fri" name="fri" value="5" /><span><% multilang("623" "LANG_FRI"); %></span>
    <input type="checkbox" id="sat" name="sat" value="6" /><span><% multilang("624" "LANG_SAT"); %></span>
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return applyclick(this)">&nbsp;&nbsp;
 <input type="hidden" value="/timereboot.asp" name="submit-url">
 <input type="hidden" name="day" id="day" value="">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
</script>
</form>
</body>
</html>

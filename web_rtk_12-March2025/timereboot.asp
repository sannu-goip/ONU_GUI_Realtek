<%SendWebHeadStr(); %>
<title><% multilang("2950" "LANG_TIME_REBOOT"); %></title>
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
<div class="intro_main ">
 <p class="intro_title"><% multilang("2950" "LANG_TIME_REBOOT"); %></p>
 <p class="intro_content"> <% multilang("2951" "LANG_TIME_REBOOT_PAGE_DESC"); %></p>
</div>
<form action=/boaform/formTimeReboot method=POST name="formTimeReboot" >
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="25%"><% multilang("248" "LANG_ENABLE"); %></th>
   <td width="75%">
    <input type="checkbox" name="sch_enable" value="ON" onClick="checkboxOnclick(this)">
   </td>
  </tr>
  <tr id="sched_time" name="sched_time" style="display:none">
   <th width="25%"><% multilang("78" "LANG_TIME"); %></th>
   <td width="75%">
    <div>
     <select id="hour" name="hour">
     </select>
     <% multilang("581" "LANG_HOUR"); %>&nbsp;
     <select id="minute" name="minute">
     </select>
     <% multilang("582" "LANG_MIN"); %>&nbsp;
    </div>
   </td>
  </tr>
  <tr id="sched_weekday" name="sched_weekday" style="display:none">
   <th width="25%"><% multilang("77" "LANG_DATE"); %></th>
   <td width="75%">
    <input type="checkbox" id="everyday" name="everyday" value="0" /><% multilang("2952" "LANG_TIME_EVERYDAY"); %>
    <input type="checkbox" id="sun" name="sun" value="7" /><% multilang("618" "LANG_SUN"); %>
    <input type="checkbox" id="mon" name="mon" value="1" /><% multilang("619" "LANG_MON"); %>
    <input type="checkbox" id="tue" name="tue" value="2" /><% multilang("620" "LANG_TUE"); %>
    <input type="checkbox" id="wen" name="wen" value="3" /><% multilang("621" "LANG_WED"); %>
    <input type="checkbox" id="thr" name="thr" value="4" /><% multilang("622" "LANG_THU"); %>
    <input type="checkbox" id="fri" name="fri" value="5" /><% multilang("623" "LANG_FRI"); %>
    <input type="checkbox" id="sat" name="sat" value="6" /><% multilang("624" "LANG_SAT"); %>
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

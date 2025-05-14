<% SendWebHeadStr();%>
<title><% multilang("69" "LANG_TIME_ZONE"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
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
      padding-left: 5px;
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
      font-size: 13px;
  }
  
  .data_common input[type="text"],
  .data_common input[type="file"],
  .data_common input[type="password"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #9c9a9a;
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
    border: 2px solid #f58220;
      background-color: white;
      color: #f58220;
  }
  .time_table table input[type="text"] {
      width: 50px !important;
      margin-left: 3px;
  }
  .column {
      margin: 10px 15px; /* Compact margin */
  }
  p {
    font-size: 20px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 8px;
    padding-top: 5px;
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
  alert("<% multilang("2461" "LANG_INVALID_HOUR_SETTING"); %>");
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
<div class="intro_main ">
<div class="breadcrum_box"> <ul><li><a href="#">Net</a></li><li>Time</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><div><img src="/img/time.png" style="width:38px;"></div><div style="padding-top:-3px;"><p class="intro_title"><% multilang("69" "LANG_TIME_ZONE"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>

 <p class="intro_content"> <% multilang("570" "LANG_YOU_CAN_MAINTAIN_THE_SYSTEM_TIME_BY_SYNCHRONIZING_WITH_A_PUBLIC_TIME_SERVER_OVER_THE_INTERNET"); %></p>
</div>
<form action=/boaform/formNtp method=POST name="time">
<div class="data_common data_common_notitle time_table">
 <table>
  <tr>
   <th width ="25%"> <% multilang("571" "LANG_CURRENT_TIME"); %> : </th>
   <td width ="75%">
                <% multilang("578" "LANG_YEAR"); %><input type="text" name="year" value="<% getInfo("year"); %>" size="4" maxlength="4">
                <% multilang("579" "LANG_MONTH"); %><input type="text" name="month" value="<% getInfo("month"); %>" size="2" maxlength="2">
                <% multilang("580" "LANG_DAY"); %><input type="text" name="day" value="<% getInfo("day"); %>" size="2" maxlength="2">
                <% multilang("581" "LANG_HOUR"); %><input type="text" name="hour" value="<% getInfo("hour"); %>" size="2" maxlength="2">
                <% multilang("582" "LANG_MIN"); %><input type="text" name="minute" value="<% getInfo("minute"); %>" size="2" maxlength="2">
                <% multilang("583" "LANG_SEC"); %><input type="text" name="second" value="<% getInfo("second"); %>" size="2" maxlength="2">
         </td>
  </tr>
  <tr><th width ="25%"><% multilang("572" "LANG_TIME_ZONE_SELECT"); %> : </th>
      <td width="75%">
             <select name="timeZone" id="timezone_select">
              <% timeZoneList(); %>
             </select>
            <script>
              console.log('<% timeZoneList(); %>');
var timeZoneSelect = document.getElementsByName("timeZone")[0];
var selectedValue = timeZoneSelect.value;
console.log("Selected Time Zone Value:", selectedValue);
var selectedText = timeZoneSelect.options[timeZoneSelect.selectedIndex].text;

console.log("Selected Time Zone Text:", selectedText);
             </script>
      </td>
  </tr>
  <tr><th><% multilang("573" "LANG_ENABLE_DAYLIGHT_SAVING_TIME"); %></th>
   <td><input type="checkbox" name="dst_enabled" value="ON">
      </td>
  </tr>
  <tr><th><% multilang("574" "LANG_ENABLE_SNTP_CLIENT_UPDATE"); %></th>
   <td>
    <input type="checkbox" name="enabled" value="ON" ONCLICK=updateState(document.time)>
      </td>
  </tr>
  <tr>
   <th width="25%"><% multilang("424" "LANG_WAN_INTERFACE"); %>:</th>
   <td width="75%">
    <select name="ext_if" <% checkWrite("sntp0d"); %>>
     <option value=65535><% multilang("401" "LANG_ANY"); %></option>
     <% if_wan_list("rt"); %>
    </select>
   </td>
  </tr>
  <tr>
   <th width ="25%"> SNTP <% multilang("91" "LANG_SERVER"); %> : </th>
   <td width ="75%">
    <input type="radio" value="0" name="ntpServerId" style="margin-left: -2px;"></input>
    <select name="ntpServerHost1">
     <option value="192.5.41.41"><% multilang("584" "LANG_192_5_41_41_NORTH_AMERICA"); %></option>
     <option value="192.5.41.209"><% multilang("585" "LANG_192_5_41_209_NORTH_AMERICA"); %></option>
     <option value="130.149.17.8"><% multilang("586" "LANG_130_149_17_8_EUROPE"); %></option>
     <option value="203.117.180.36"><% multilang("587" "LANG_203_117_180_36_ASIA_PACIFIC"); %></option>
    </select>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" value="1" name="ntpServerId" style="margin-left: -3px;"></input>
    <!--ping_zhang:20081217 START:patch from telefonica branch to support WT-107-->
    <input style="width: 180px !important;" type="text" name="ntpServerHost2" size="15" maxlength="30" value=<% getInfo("ntpServerHost2"); %>> (<% multilang("575" "LANG_MANUAL_SETTING"); %>)
   </td>
  </tr>
 </table>
</div>
<div class="adsl clearfix" style="text-align: right;margin-top: 10px; margin-right: 20px;">
 <input type="hidden" value="/tz.asp" name="submit-url">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(document.time,this)">
 <input class="link_bg" type="button" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="javascript: window.location.reload()">
 <input type="hidden" name="postSecurityFlag" value="">
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
<script src="/share.js"></script>
</body>
</html>

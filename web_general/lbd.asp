<%SendWebHeadStr(); %>
<title><% multilang("2965" "LANG_LOOP_DETECTION"); %></title>
<style>
    .intro_title1{
        margin-top: 7px;
        margin-bottom: 2px;
    }
    #port_status {
        width: 70%;
        border-collapse: collapse;
    }
    #port_status th, #port_status td {
    border: 0.1px solid #ccc; /* Border for table cells */
    font-size: 13px;
    text-align: center; /* Centered text */
  }
  #port_status th{
    background-color: #e0dddd;
   
  }
</style>
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
</head>
<body onLoad="on_init();">
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Loop Detect</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/gear.png" style="width:38px;"></div>
<div style="padding-top:3px;"><p class="intro_title"><p class="intro_title"><% multilang("2965" "LANG_LOOP_DETECTION"); %></p></div></div>
 
 <p class="intro_content"><% multilang("2980" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_LOOP_DETECTION_PARAMETERS_HERE_YOU_CAN_CHANGE_THE_SETTINGS_OR_VIEW_LOOP_DETECTION_STATUS"); %></p>
</div>
<form action=/boaform/formLBD method=POST name="lbd">
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("2965" "LANG_LOOP_DETECTION"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common">
<table>
  <tr>
      <th width="30%"><% multilang("2973" "LANG_LOOP_DETECTION_ENABLE"); %>:</th>
      <td width="70%"><input type="checkbox" name="enable" value="1" onClick="update_gui();"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("2974" "LANG_LOOP_DETECTION_INTERVAL"); %>:</th>
      <td width="70%"><input type="text" class="lbd" name="exist_period" size="15" maxlength="5"> (1~60)<% multilang("357" "LANG_SECONDS"); %></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("2975" "LANG_LOOP_DETECTION_RECOVERY_INTERVAL"); %>:</th>
      <td width="70%"><input type="text" class="lbd" name="cancel_period" size="15" maxlength="15"> (10 ~ 1800)<% multilang("357" "LANG_SECONDS"); %></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("2976" "LANG_LOOP_DETECTION_ETHER_TYPE"); %>:</th>
      <td width="70%">0x<input type="text" class="lbd" name="ether_type" size="13" maxlength="4" style="width: 166px;"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("124" "LANG_VLAN_ID"); %>:</th>
      <td width="70%"><input type="text" class="lbd" name="vlans" size="30" maxlength="300"></td>
  </tr>
  <tr><th></th><td width="70%"><% multilang("2977" "LANG_LOOP_DETECTION_SEPERATE_BY_COMMA_0_REPRESENT_UNTAGGED_EX_0_45_46"); %></td></tr>
</table>
</div>
<div class="column clearfix">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("2965" "LANG_LOOP_DETECTION"); %><% multilang("2979" "LANG_LOOP_DETECTION_STATUS"); %></p>
  <div class="column_title_right"></div>
 </div>
</div>
<div class="data_common data_vertical">
 <table id="port_status">
  <tr>
   <th align=center><% multilang("2978" "LANG_LOOP_DETECTION_LAN_PORT"); %></th>
   <th align=center><% multilang("2979" "LANG_LOOP_DETECTION_STATUS"); %></th>
  </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return on_submit()">&nbsp;&nbsp;
      <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_refresh(this)">&nbsp;&nbsp;
      <input type="hidden" value="/lbd.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

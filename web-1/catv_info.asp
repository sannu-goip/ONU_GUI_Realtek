<%SendWebHeadStr(); %>
<title>CATV Settings</title>
<script>
var dev_name_value = "CT-CATV";
var swver_value = "1.0";
var hwver_value = "1.0";
var receive_power_value = "-40.5dBm(LoLo)";
var RF_power_value = "0dBuV(LoLo)";
var temperature_value = "70C";
var work_mode_value = "AGC";
var RF_att_set_value = "5";
var RF_switch_value = "1";
<% getCatvInfo(); %>
function applyclick(obj)
{
 var RF_att_set= document.formCatvInfo.RF_att_set.value;
 var RF_switch=document.formCatvInfo.RF_switch.value;
 if(RF_att_set=="255" || RF_switch=="255")
 {
  alert("The setting can not be N/A, please config it again!");
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_init()
{
 with (document.forms[0])
 {
  document.formCatvInfo.dev_name.value = dev_name_value;
  document.formCatvInfo.swVer.value = swver_value;
  document.formCatvInfo.hwVer.value = hwver_value;
  document.formCatvInfo.receive_power.value = receive_power_value;
  document.formCatvInfo.RF_power.value = RF_power_value;
  document.formCatvInfo.temperature.value = temperature_value;
  document.formCatvInfo.work_mode.value = work_mode_value;
  document.formCatvInfo.RF_att_set.value = RF_att_set_value;
  document.formCatvInfo.RF_switch.value = RF_switch_value;
  get_by_id("dev_name_text").innerHTML = dev_name_value;
  get_by_id("dev_name_text").style.display = "";
  get_by_id("swVer_text").innerHTML = swver_value;
  get_by_id("swVer_text").style.display = "";
  get_by_id("hwVer_text").innerHTML = hwver_value;
  get_by_id("hwVer_text").style.display = "";
  get_by_id("receive_power_text").innerHTML = receive_power_value;
  get_by_id("receive_power_text").style.display = "";
  get_by_id("RF_power_text").innerHTML = RF_power_value;
  get_by_id("RF_power_text").style.display = "";
  get_by_id("temperature_text").innerHTML = temperature_value;
  get_by_id("temperature_text").style.display = "";
  get_by_id("work_mode_text").innerHTML = work_mode_value;
  get_by_id("work_mode_text").style.display = "";
  disableTextField(document.forms[0].dev_name);
  disableTextField(document.forms[0].swVer);
  disableTextField(document.forms[0].hwVer);
  disableTextField(document.forms[0].receive_power);
  disableTextField(document.forms[0].RF_power);
  disableTextField(document.forms[0].temperature);
  disableTextField(document.forms[0].work_mode);
 }
}
</script>
</head>
<body onLoad="on_init();">
<div class="intro_main ">
 <p class="intro_title"><% multilang("2918" "LANG_CATV_INFO"); %></p>
 <p class="intro_content"><% multilang("2933" "LANG_THIS_PAGE_IS_USED_TO_SHOW_CATV_INFO"); %></p>
</div>
<form action=/boaform/admin/formCatvInfo method=POST name="formCatvInfo">
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th width="40%"><% multilang("2919" "LANG_CATV_DEVICE_NAME"); %>:</th>
  <td>
  <div id="dev_name_text" style="display:none"> </div>
  <div id="dev_name_input" style="display:none">
  <input type="text" name="dev_name" size="14" maxlength="14">
  </div>
  </td>
 </tr>
 <tr>
  <th><% multilang("2920" "LANG_CATV_SOTFWARE_VERSION"); %>:</th>
  <td>
  <div id="swVer_text" style="display:none"> </div>
  <div id="swVer_input" style="display:none">
  <input type="text" name="swVer" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("2921" "LANG_CATV_HARDWARE_VERSION"); %>:</th>
  <td>
  <div id="hwVer_text" style="display:none"> </div>
  <div id="hwVer_input" style="display:none">
  <input type="text" name="hwVer" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("2922" "LANG_CATV_INPUT_OPTICAL_POWER"); %>:</th>
  <td>
  <div id="receive_power_text" style="display:none"> </div>
  <div id="receive_power_input" style="display:none">
  <input type="text" name="receive_power" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("2923" "LANG_CATV_OUTPUT_LEVEL"); %>:</th>
  <td>
  <div id="RF_power_text" style="display:none"> </div>
  <div id="RF_power_input" style="display:none">
  <input type="text" name="RF_power" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("2924" "LANG_CATV_TEMPERATURE"); %>:</th>
  <td>
  <div id="temperature_text" style="display:none"></div>
  <div id="temperature_input" style="display:none">
  <input type="text" name="temperature" size="14" maxlength="14"></td>
  </div>
 </tr>
 <!--
 <tr>
  <th><% multilang(LANG_CATV_VOLTAGE); %>:</th>
  <td>
  <div id="dc_voltage_text" style="display:none"> </div>
  <div id="dc_voltage_input" style="display:none">
  <input type="text" name="dc_voltage" size="14" maxlength="14"></td>
  </div>
 </tr>
 -->
 <tr>
  <th><% multilang("2925" "LANG_CATV_WORK_MODE"); %>:</th>
  <td>
  <div id="work_mode_text" style="display:none"> </div>
  <div id="work_mode_input" style="display:none">
  <input type="text" name="work_mode" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("2926" "LANG_CATV_OUTPUT_LEVEL_ATTENUATION"); %>:</th>
  <td>
  <div id="RF_att_set_text" style="display:none"> </div>
  <div id="RF_att_set_selection">
   <select name="RF_att_set">
    <option value="0">0 dB</option>
    <option value="1">-1 dB</option>
    <option value="2">-2 dB</option>
    <option value="3">-3 dB</option>
    <option value="4">-4 dB</option>
    <option value="5">-5 dB</option>
    <option value="6">-6 dB</option>
    <!--<option value="255">N/A</option>-->
   </select>
  </div>
  </td>
 </tr>
 <% showCatvSwitch(); %>
    <tr>
  <td colspan="2" ><font color="red"><% multilang("2928" "LANG_CATV_NOTE"); %><font></td>
 </tr>
</table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyclick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/catv_info.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

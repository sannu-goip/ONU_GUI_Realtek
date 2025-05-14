<% SendWebHeadStr();%>
<title><% multilang("51" "LANG_OMCI_INFO"); %></title>
<style>
      /* General body styling */
      body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          color: #333;
      }
      
      /* Intro section styling */
      p {
          padding: 0px 15px; /* Compact padding */
          background-color: #fff;
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
          margin: 0px 11px 10px 10px; /* Compact margin */
          padding: 1px 10px 10px 10px; /* Compact padding */
          background-color: #fff;
      }
      
      .data_common_notitle {
          padding: 10px; /* Compact padding */
          background-color: #fff;
          border-bottom: 1px solid #e2dcdc;
      }
      
      .data_common table {
          width: 100%;
          border-collapse: collapse;
      }
      
      .data_common th {
          text-align: left;
          font-size: 12px; /* Smaller font size */
          color: #333;
          padding: 6px; /* Compact padding */
          width: 40%;
          font-weight: 300;
      }
      
      .data_common td {
          padding: 6px; /* Compact padding */
          width: 60%;
          font-size: 12px;
      }
      
      .data_common input[type="text"],
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
          margin-right: 30px;
      }
      
      .link_bg {
          height: 30px;
          background-color: #f58220;
          color: white;
          border: 1px solid #f58220;
          border-radius: 3px;
          padding: 4px 10px; /* Compact padding */
          font-size: 12px; /* Smaller font size */
          cursor: pointer;
          transition: background-color 0.3s, color 0.3s;
      }
      
      .link_bg:hover {
          background-color: #eee;
          color: #f58220;
      }
      
      .btn_2 {
          margin-right: 39px;
      }
      
      /* Responsive adjustments */
      @media (max-width: 768px) {
          .data_common th, .data_common td {
              display: block;
              width: 100%;
          }
      
          .data_common th {
              margin-top: 5px; /* Compact margin */
          }
      
          .btn_ctl {
              text-align: center;
          }
      }
      </style>
<script>
var omci_vendor_id_value = "<% getInfo("omci_vendor_id"); %>";
var omci_sw_ver1_value = "<% getInfo("omci_sw_ver1"); %>";
var omci_sw_ver2_value = "<% getInfo("omci_sw_ver2"); %>";
var omci_tm_opt_value = <% getInfo("omci_tm_opt"); %>;
var omcc_ver_value = <% getInfo("omcc_ver"); %>;
var cwmp_productclass_value = "<% getInfo("cwmp_productclass"); %>";
var cwmp_hw_ver_value = "<% getInfo("cwmp_hw_ver"); %>";
var omci_olt_mode_value = <% fmOmciInfo_checkWrite("omci_olt_mode"); %>;
var isPRACTVersion = "<% checkWrite("isPRACTVersion"); %>"
function applyclick(obj)
{
 if (document.formOmciInfo.omci_sw_ver1.value=="") {
  alert('<% multilang("2557" "LANG_OMCI_SW_VER1_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.omci_sw_ver1.focus();
  return false;
 }
 if (document.formOmciInfo.omci_sw_ver2.value=="") {
  alert('<% multilang("2558" "LANG_OMCI_SW_VER2_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.omci_sw_ver2.focus();
  return false;
 }
 if (document.formOmciInfo.cwmp_productclass.value=="") {
  alert('<% multilang("2559" "LANG_OMCI_EQID_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.cwmp_productclass.focus();
  return false;
 }
 if (document.formOmciInfo.cwmp_hw_ver.value=="") {
  alert('<% multilang("2560" "LANG_OMCI_ONT_VER_CANNOT_BE_EMPTY"); %>');
  document.formOmciInfo.cwmp_hw_ver.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_change()
{
 with (document.forms[0])
 {
  if(omci_olt_mode_value == 0){
   omci_tm_opt.value = omci_tm_opt_value;
  }
 }
}
function on_init()
{
 with (document.forms[0])
 {
  omci_vendor_id.value = omci_vendor_id_value;
  omci_sw_ver1.value = omci_sw_ver1_value;
  omci_sw_ver2.value = omci_sw_ver2_value;
  omci_tm_opt.value = omci_tm_opt_value;
  omcc_ver.value = omcc_ver_value;
  cwmp_productclass.value = cwmp_productclass_value;
  cwmp_hw_ver.value = cwmp_hw_ver_value;
  if(omci_olt_mode_value == 0)
  {
   get_by_id("omci_sw_ver1_text").innerHTML = omci_sw_ver1_value;
   get_by_id("omci_sw_ver1_text").style.display = "";
   get_by_id("omci_sw_ver2_text").innerHTML = omci_sw_ver2_value;
   get_by_id("omci_sw_ver2_text").style.display = "";
   get_by_id("omci_tm_opt_text").innerHTML = omci_tm_opt_value;
   get_by_id("omci_tm_opt_text").style.display = "";
   get_by_id("cwmp_productclass_text").innerHTML = cwmp_productclass_value;
   get_by_id("cwmp_productclass_text").style.display = "";
   get_by_id("cwmp_hw_ver_text").innerHTML = cwmp_hw_ver_value;
   get_by_id("cwmp_hw_ver_text").style.display = "";
   disableTextField(document.forms[0].omci_sw_ver1);
   disableTextField(document.forms[0].omci_sw_ver2);
   disableTextField(document.forms[0].omci_tm_opt);
   disableTextField(document.forms[0].cwmp_productclass);
   disableTextField(document.forms[0].cwmp_hw_ver);
  }
  else
  {
   get_by_id("omci_sw_ver1_input").style.display = "";
   get_by_id("omci_sw_ver2_input").style.display = "";
   get_by_id("omcc_ver_selection").style.display = "";
   get_by_id("omci_tm_opt_selection").style.display = "";
   get_by_id("cwmp_productclass_input").style.display = "";
   get_by_id("cwmp_hw_ver_input").style.display = "";
  }
  if(isPRACTVersion == "1")
  {
   disableTextField(document.forms[0].omci_sw_ver1);
   disableTextField(document.forms[0].omci_sw_ver2);
   disableTextField(document.forms[0].omci_tm_opt);
   disableTextField(document.forms[0].omcc_ver);
   disableTextField(document.forms[0].cwmp_productclass);
   disableTextField(document.forms[0].cwmp_hw_ver);
   disableTextField(document.forms[0].omci_vendor_id);
   disableTextField(document.forms[0].apply);
  }
 }
}
</script>
</head>
<body onLoad="on_init();">
<div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>OMCI Info</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/device.png" style="width:38px;"></div>
<div style="padding-top:8px;margin-left:-10px;"><p class="intro_title"><% multilang("51" "LANG_OMCI_INFO"); %></p></div></div>
 <p class="intro_content"> <% multilang("2932" "LANG_THIS_PAGE_IS_USED_TO_SHOW_OMCI_INFO"); %></p>
</div>
<form action=/boaform/admin/formOmciInfo method=POST name="formOmciInfo">
<div class="data_common data_common_notitle">
<table>
 <tr>
  <th><% multilang("63" "LANG_OMCI_VENDOR_ID"); %>:</th>
  <td><input type="text" name="omci_vendor_id" size="14" maxlength="4"></td>
 </tr>
 <tr>
  <th><% multilang("57" "LANG_OMCI_SW_VER1"); %>:</th>
  <td>
  <div id="omci_sw_ver1_text" style="display:none"> </div>
  <div id="omci_sw_ver1_input" style="display:none">
  <input type="text" name="omci_sw_ver1" size="14" maxlength="14">
  </div>
  </td>
 </tr>
 <tr>
  <th><% multilang("58" "LANG_OMCI_SW_VER2"); %>:</th>
  <td>
  <div id="omci_sw_ver2_text" style="display:none"> </div>
  <div id="omci_sw_ver2_input" style="display:none">
  <input type="text" name="omci_sw_ver2" size="14" maxlength="14"></td>
  </div>
 </tr>
 <tr>
  <th><% multilang("59" "LANG_OMCC_VER"); %>:</th>
  <td><!--<input type="text" name="omcc_ver" size="40" maxlength="40" value="<% getInfo("omcc_ver"); %>">-->
  <div id="omcc_ver_text" style="display:none"> </div>
  <div id="omcc_ver_selection" >
   <select name="omcc_ver" onChange="on_change()">
   <option value="128" > 0x80</option>
   <option value="129" > 0x81</option>
   <option value="130" > 0x82</option>
   <option value="131" > 0x83</option>
   <option value="132" > 0x84</option>
   <option value="133" > 0x85</option>
   <option value="134" > 0x86</option>
   <option value="150" > 0x96</option>
   <option value="160" > 0xA0</option>
   <option value="161" > 0xA1</option>
   <option value="162" > 0xA2</option>
   <option value="163" > 0xA3</option>
   <!--
   <option value="176" > 0xB0</option>
   <option value="177" > 0xB1</option>
   <option value="178" > 0xB2</option>
   <option value="179" > 0xB3</option>
   -->
   </select>
  </div>
  </td>
 </tr>
 <tr>
  <th><% multilang("60" "LANG_OMCI_TM_OPT"); %>:</th>
  <td><!--<input type="text" name="omci_tm_opt" size="40" maxlength="40" value="<% getInfo("omci_tm_opt"); %>">-->
  <div id="omci_tm_opt_text" style="display:none"> </div>
  <div id="omci_tm_opt_selection" style="display:none">
   <select name="omci_tm_opt" onChange="on_change()">
   <option value="0" > 0</option>
   <option value="1" > 1 </option>
   <option value="2" > 2 </option>
   </select>
  </div>
  </td>
 </tr>
 <tr>
  <th><% multilang("61" "LANG_OMCI_EQID"); %>:</th>
  <td>
  <div id="cwmp_productclass_text" style="display:none"></div>
  <div id="cwmp_productclass_input" style="display:none">
  <input type="text" name="cwmp_productclass" size="20" maxlength="20">
  </div>
  </td>
 </tr>
 <tr>
  <th><% multilang("62" "LANG_OMCI_ONT_VER"); %>:</th>
  <td>
  <div id="cwmp_hw_ver_text" style="display:none"></div>
  <div id="cwmp_hw_ver_input" style="display:none">
  <input type="text" name="cwmp_hw_ver" size="14" maxlength="14"></td>
  </div>
 </tr>
</table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return applyclick(this)">&nbsp;&nbsp;
      <input type="hidden" value="/omci_info.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

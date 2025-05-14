<% SendWebHeadStr();%>
<title><% multilang("543" "LANG_COMMIT_AND_REBOOT"); %></title>
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

  /* Column styling */
  .column {
      margin: 10px 15px; /* Compact margin */
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
function resetClick()
{
   if ( !confirm('<% multilang("2571" "LANG_DO_YOU_REALLY_WANT_TO_RESET_THE_CURRENT_SETTINGS_TO_DEFAULT"); %>') ) {
 return false;
  }
  else
 return true;
}
</SCRIPT>
<!-- stats -->
<script>
  function resetClick1() {
   with ( document.forms[1] ) {
    reset.value = 1;
    postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
    submit();
   }
  }
  function on_submit(obj)
  {
   obj.isclick = 1;
   postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
   return true;
  }
  </script>

  <!-- saveconfig.asp -->
  <script>
    function resetClick2(obj)
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
    function on_submit2(obj)
    {
     obj.isclick = 1;
     postTableEncrypt(document.saveCSConfig.postSecurityFlag, document.saveCSConfig);
     return true;
    }
    </script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>Device Management</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/device.png" style="width:38px;"></div>
<div style="padding-top:7px;"> <p class="intro_title"><% multilang("543" "LANG_COMMIT_AND_REBOOT"); %></p></div></div>
 
 <p class="intro_content"><% multilang("544" "LANG_THIS_PAGE_IS_USED_TO_COMMIT_CHANGES_TO_SYSTEM_MEMORY_AND_REBOOT_YOUR_SYSTEM"); %></p>
</div>
<form action=/boaform/admin/formReboot method=POST name="cmboot">
<table>
<!--
  <tr>
      <td width="30%"><font size=2><b>Reboot from:</b>
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
 <table>
  <tr>
   <th width="30%"><% multilang("543" "LANG_COMMIT_AND_REBOOT"); %>:</th>
   <td>
    <input class="inner_btn" type="submit" value="<% multilang("543" "LANG_COMMIT_AND_REBOOT"); %>" onclick="return saveClick()">
   </td>
  </tr>
 </table>
</div>
<!--
      <input type="submit" value="Reset to Default" name="reset" onclick="return resetClick()">
      <input type="submit" value="Reboot" name="reboot">
      <input type="hidden" value="/reboot.asp" name="submit-url">
  <script>
-->
<input type="hidden" name="postSecurityFlag" value="">
</form>
<br>
<!-- stats.asp -->
<div class="intro_main ">
  <p class="intro_title"><% multilang("608" "LANG_INTERFACE_STATISITCS"); %></p>
  <p class="intro_content"><% multilang("609" "LANG_PAGE_DESC_PACKET_STATISTICS_INFO"); %></p>
  </div>
  <form action=/boaform/formStats method=POST name="formStats">
  <div class="column">
   <div class="column_title">
    <div class="column_title_left"></div>
   
    <div class="column_title_right"></div>
   </div>
   <div class="data_common data_vertical">
    <table class="table_stats" style="width: 100%; table-layout: fixed; border-collapse: collapse; border: 0.1px solid #ccc;">
   <% pktStatsList(); %>
  </table>
   </div>
  </div>
  <div class="btn_ctl">
    <input type="hidden" value="/reboot.asp" name="submit-url">
    <input type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)" class="link_bg">
    <input type="hidden" value="0" name="reset">
    <input type="button" onClick="resetClick1(this)" value="<% multilang("610" "LANG_RESET_STATISTICS"); %>" class="link_bg">
    <input type="hidden" name="postSecurityFlag" value="">
    </div>
  </form>
<br>
  <!-- pon-stats -->
  <div class="intro_main ">
    <p class="intro_title"><% multilang("903" "LANG_PON_STATISTICS"); %></p>
    <p class="intro_content"><% multilang("2934" "LANG_THIS_PAGE_IS_USED_TO_SHOW_PON_STATISTICS"); %></p>
   </div>
   <div class="data_common data_common_notitle">
    <table style="border: 0.1px solid #ccc; margin-top: 10px; padding: 10px; width: 100%; table-layout: fixed; border-collapse: collapse;">
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("904" "LANG_BYTES_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("bytes-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("905" "LANG_BYTES_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("bytes-received"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("906" "LANG_PACKETS_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("packets-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("907" "LANG_PACKETS_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("packets-received"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("908" "LANG_UNICAST_PACKETS_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("unicast-packets-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("909" "LANG_UNICAST_PACKETS_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("unicast-packets-received"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("910" "LANG_MULTICAST_PACKETS_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("multicast-packets-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("911" "LANG_MULTICAST_PACKETS_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("multicast-packets-received"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("912" "LANG_BROADCAST_PACKETS_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("broadcast-packets-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("913" "LANG_BROADCAST_PACKETS_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("broadcast-packets-received"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("914" "LANG_FEC_ERRORS"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("fec-errors"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("915" "LANG_HEC_ERRORS"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("hec-errors"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("916" "LANG_PACKETS_DROPPED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("packets-dropped"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("917" "LANG_PAUSE_PACKETS_SENT"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("pause-packets-sent"); %></td>
      </tr>
      <tr>
        <th style="width: 50%; padding-left: 4%"><% multilang("918" "LANG_PAUSE_PACKETS_RECEIVED"); %>:</th>
        <td style="width: 50%; text-align: center;"><% ponGetStatus("pause-packets-received"); %></td>
      </tr>
    </table>
   </div>
<br><br>
<!-- saveconfig -->
   <div class="intro_main ">
    <p class="intro_title"><% multilang("545" "LANG_BACKUP_AND_RESTORE_SETTINGS"); %></p>
    <p class="intro_content"> <% multilang("547" "LANG_THIS_PAGE_ALLOWS_YOU_TO_BACKUP_CURRENT_SETTINGS_TO_A_FILE_OR_RESTORE_THE_SETTINGS_FROM_THE_FILE_WHICH_WAS_SAVED_PREVIOUSLY_BESIDES_YOU_COULD_RESET_THE_CURRENT_SETTINGS_TO_FACTORY_DEFAULT"); %></p>
</div>
<form action=/boaform/formSaveConfig method=POST name="saveCSConfig">
<div class="data_common data_common_notitle" <% checkWrite("show_button"); %> <% checkWrite("div_hide"); %>>
 <table>
<tr >
<th width="40%"><% multilang("548" "LANG_BACKUP_SETTINGS_TO_FILE"); %>:</th>
<td width="60%">
  <input class="inner_btn" type="submit" value="<% multilang("551" "LANG_BACKUP"); %>..." name="save_cs" onClick="return on_submit2(this)">
  <input type="hidden" name="postSecurityFlag" value="">
</td>
</tr>
 </table>
</div>
</form>
  <!--
  <form action=/boaform/formSaveConfig method=POST name="saveHSConfig">
  <tr>
    <td class="table_item"><% multilang("550" "LANG_BACKUP_HARDWARE_SETTINGS_TO_FILE"); %>:</td>
    <td>
      <input type="submit" value="<% multilang("551" "LANG_BACKUP"); %>..." name="save_hs">
    </td>
  </form>
  -->
<form action=/boaform/formSaveConfig enctype="multipart/form-data" method=POST name="saveConfig">
<div class="data_common data_common_notitle" <% checkWrite("show_button"); %> <% checkWrite("div_hide"); %>>
 <table>
  <tr>
   <th width="40%"><% multilang("552" "LANG_RESTORE_SETTINGS_FROM_FILE"); %>:</th>
   <td width="60%"> 
    <input type="file" value="<% multilang("546" "LANG_CHOOSE_FILE"); %>" name="binary" size=20>&nbsp;&nbsp;&nbsp;&nbsp;
    <input class="inner_btn" type="submit" value="<% multilang("553" "LANG_RESTORE"); %>" name="load" onclick="return uploadClick()">
   </td>
   <input type="hidden" value="/reboot.asp" name="submit-url" >
  </tr>
 </table>
</div>
</form>
<form action=/boaform/formSaveConfig method=POST name="resetConfig">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="40%"><% multilang("554" "LANG_RESET_SETTINGS_TO_DEFAULT"); %>:</th>
   <td width="60%">
    <input class="inner_btn" type="submit" value="<% multilang("222" "LANG_RESET"); %>" name="reset" onclick="return resetClick2(this)">
    <input class="inner_btn" type="hidden" value="/reboot.asp" name="submit-url">
   </td>
   <input type="hidden" name="postSecurityFlag" value="">
  </tr>
 </table>
</div>
</form>
</body>
</html>

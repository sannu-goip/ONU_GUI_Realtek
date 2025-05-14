<% SendWebHeadStr();%>
<META HTTP-EQUIV=Refresh CONTENT="60; URL=ddns.asp">
<title><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("238" "LANG_CONFIGURATION"); %></title>
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
    border: 1px solid #f58220;
      background-color: white;
      color: #f58220;
  }
 #lstrc th, #lstrc td {
    border: 1px solid #ccc; /* Border for table cells */
    font-size: 13px;
    text-align: center; /* Centered text */
  }
  #lstrc th{
    background-color: #e0dddd;
   
  }
  #lstrc th:nth-child(1),
#lstrc td:nth-child(1),
#lstrc th:nth-child(2),
#lstrc td:nth-child(2),
#lstrc th:nth-child(3),
#lstrc td:nth-child(3),
#lstrc th:nth-child(4),
#lstrc td:nth-child(4),
#lstrc th:nth-child(5),
#lstrc td:nth-child(5),
#lstrc th:nth-child(6),
#lstrc td:nth-child(6) {
    width: 16.66%; /* Equal width for all columns */
}
  .column {
      margin: 10px 15px; /* Compact margin */
  }
  .intro_title1 {
    font-size: 20px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 8px;
    padding-top: 5px;
  }
  </style>
<SCRIPT>
selected=0;
function deSelected()
{
}
function btnClick()
{
 if (document.ddns.hostname.value=="") {
  alert('<% multilang("2106" "LANG_PLEASE_ENTER_HOSTNAME_FOR_THIS_ACCOUNT"); %>');
  document.ddns.hostname.focus();
  deSelected();
  return false;
 }
 if (includeSpace(document.ddns.hostname.value)) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.ddns.hostname.focus();
  return false;
 }
 if (checkString(document.ddns.hostname.value) == 0) {
  alert('<% multilang("2107" "LANG_INVALID_HOST_NAME"); %>');
  document.ddns.hostname.focus();
  return false;
 }
 if (document.ddns.ddnsProv.value=="0") {
  if (document.ddns.username.value=="") {
   alert('<% multilang("2108" "LANG_PLEASE_ENTER_USERNAME_FOR_THIS_ACCOUNT"); %>');
   document.ddns.username.focus();
   deSelected();
   return false;
  }
  if (includeSpace(document.ddns.username.value)) {
   alert('<% multilang("2085" "LANG_INVALID_USER_NAME"); %>');
   document.ddns.username.focus();
   return false;
  }
  if (checkString(document.ddns.username.value) == 0) {
   alert('<% multilang("2085" "LANG_INVALID_USER_NAME"); %>');
   document.ddns.username.focus();
   return false;
  }
  if (document.ddns.password.value=="") {
   alert('<% multilang("2109" "LANG_PLEASE_ENTER_PASSWORD_FOR_THIS_ACCOUNT"); %>');
   document.ddns.password.focus();
   deSelected();
   return false;
  }
    if ( includeSpace(document.ddns.password.value)) {
   alert('<% multilang("2087" "LANG_INVALID_PASSWORD"); %>');
   document.ddns.password.focus();
   return false;
   }
  if (checkString(document.ddns.password.value) == 0) {
   alert('<% multilang("2087" "LANG_INVALID_PASSWORD"); %>');
   document.ddns.password.focus();
   return false;
  }
 }
 if (document.ddns.ddnsProv.value=="1") {
  if (document.ddns.email.value=="") {
   alert('<% multilang("2110" "LANG_PLEASE_ENTER_EMAIL_FOR_THIS_ACCOUNT"); %>');
   document.ddns.email.focus();
   deSelected();
   return false;
  }
  if (includeSpace(document.ddns.email.value)) {
   alert('<% multilang("2111" "LANG_INVALID_EMAIL"); %>');
   document.ddns.email.focus();
   return false;
  }
  if (checkString(document.ddns.email.value) == 0) {
   alert('<% multilang("2111" "LANG_INVALID_EMAIL"); %>');
   document.ddns.email.focus();
   return false;
  }
  if (document.ddns.key.value=="") {
   alert('<% multilang("2112" "LANG_PLEASE_ENTER_KEY_FOR_THIS_ACCOUNT"); %>');
   document.ddns.key.focus();
   deSelected();
          return false;
         }
  if (includeSpace(document.ddns.key.value)) {
   alert('<% multilang("2113" "LANG_INVALID_KEY"); %>');
   document.ddns.key.focus();
   return false;
  }
  if (checkString(document.ddns.key.value) == 0) {
   alert('<% multilang("2113" "LANG_INVALID_KEY"); %>');
   document.ddns.key.focus();
   return false;
  }
 }
 return true;
}
function applyClick()
{
 if(checkDigit(document.forms[0].interval.value))
 {
  document.forms[0].apply.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function addClick()
{
 if(btnClick())
 {
  document.forms[0].addacc.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function modifyClick()
{
 if (!selected) {
  alert('<% multilang("2114" "LANG_PLEASE_SELECT_AN_ENTRY_TO_MODIFY"); %>');
  return false;
 }
 if(btnClick())
 {
  document.forms[0].modify.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
 else
  return false;
}
function removeClick()
{
 if (!selected) {
  alert('<% multilang("2115" "LANG_PLEASE_SELECT_AN_ENTRY_TO_DELETE"); %>');
  return false;
 }
 document.forms[0].delacc.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function updateState()
{
  if (document.ddns.ddnsProv.value=="0" || document.ddns.ddnsProv.value=="2") {
  enableTextField(document.ddns.username);
  enableTextField(document.ddns.password);
  disableTextField(document.ddns.email)
  disableTextField(document.ddns.key)
  }
  else {
   enableTextField(document.ddns.email);
   enableTextField(document.ddns.key);
  disableTextField(document.ddns.username);
  disableTextField(document.ddns.password);
  }
}
function postEntry(enabled, pvd, host, user, passwd, intf)
{
 if (enabled)
  document.ddns.enable.checked = true;
 else
  document.ddns.enable.checked = false;
 document.ddns.hostname.value = host;
 if (pvd == 'dyndns') {
  document.ddns.ddnsProv.value = 0;
  document.ddns.username.value = user;
  document.ddns.password.value = passwd;
  document.ddns.email.value = '';
  document.ddns.key.value = '';
  document.ddns.interface.value = intf;
 }
 else {
  document.ddns.ddnsProv.value = 1;
  document.ddns.username.value = '';
  document.ddns.password.value = '';
  document.ddns.email.value = user;
  document.ddns.key.value = passwd;
  document.ddns.interface.value = intf;
 }
 updateState();
 selected = 1;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>DDNS</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><div><img src="/img/wlan.png" style="width:38px;"></div>
<div style="padding-top:12px;"><p class="intro_title"><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>

 <p class="intro_content"><% multilang("372" "LANG_PAGE_DESC_CONFIGURE_DYNAMIC_DNS_ADDRESS"); %></p>
</div>
<form action=/boaform/formDDNS method=POST name="ddns">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("772" "LANG_TIME_INTERVAL"); %>:</th>
   <td width="70%"><input type="text" name="interval" size="35" maxlength="10" value=<% getInfo("ddns_interval"); %>>&nbsp; min</td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value=<% multilang("150" "LANG_APPLY_CHANGES"); %> name="apply" onClick="return applyClick()" class="link_bg">
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("248" "LANG_ENABLE"); %>:</th>
   <td width="70%"><input type="checkbox" name="enable" value="1" checked></td>
  </tr>
  <tr>
   <th width="30%">DDNS <% multilang("373" "LANG_PROVIDER"); %>:</th>
   <td width="70%">
    <select size="1" name="ddnsProv" onChange='updateState()'>
     <option selected value="0">DynDNS.org</option>
     <option value="1">TZO</option>
     <option value="2">No-IP</option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%"><% multilang("374" "LANG_HOSTNAME"); %>:</th>
   <td width="70%"><input type="text" name="hostname" size="35" maxlength="35"></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("70" "LANG_INTERFACE"); %></th>
   <td width="70%">
    <select name="interface" >
      <% if_wan_list("rt");%>
    <!--<option value=100>LAN/br0</option>-->
    </select>
   </td>
  </tr>
 </table>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p class="intro_title1">DynDns <% multilang("375" "LANG_SETTINGS"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th width="30%"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
    <td width="70%"><input type="text" name="username" size="35" maxlength="35"></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("67" "LANG_PASSWORD"); %>:</th>
    <td width="70%"><input type="password" name="password" size="35" maxlength="35"></td>
   </tr>
  </table>
 </div>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left "></div>
   <p class="intro_title1">TZO <% multilang("375" "LANG_SETTINGS"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">
  <table>
   <tr>
    <th width="30%"><% multilang("376" "LANG_EMAIL"); %>:</th>
    <td width="70%"><input type="text" name="email" size="35" maxlength="35"></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("243" "LANG_KEY"); %>:</th>
    <td width="70%"><input type="password" name="key" size="35" maxlength="35"></td>
   </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <!--<input type="hidden" name="interface" value="all">-->
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addacc" onClick="return addClick()" class="link_bg">
 <input type="submit" value="<% multilang("331" "LANG_MODIFY"); %>" name="modify" onClick="return modifyClick()" class="link_bg">
 <input type="submit" value="<% multilang("377" "LANG_REMOVE"); %>" name="delacc" onClick="return removeClick()" class="link_bg">
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left "></div>
   <p class="intro_title1"><% multilang("371" "LANG_DYNAMIC"); %> DNS <% multilang("414" "LANG__TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table id="lstrc">
   <% showDNSTable(); %>
  </table>
  <input type="hidden" value="/ddns.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
   </div>
</div>
<script>
 updateState();
 deSelected();
</script>
</form>
<br><br>
</body>
</html>

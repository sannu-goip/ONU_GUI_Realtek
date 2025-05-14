<% SendWebHeadStr();%>
<title><% multilang("217" "LANG_WLAN_ACCESS_CONTROL"); %></title>
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
      padding: 15px;
      background-color: #fff;
      border-bottom: 1px solid #ddd;
  }
  
  .intro_title {
      font-size: 24px;
     
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      font-size: 12px;
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
      margin: 0px 15px;
      
      background-color: #fff;
  }
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 12px;
      color: #333;
      padding: 10px;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 10px;
      font-size: 12px;
      color: #333;
      
  }
  
  .data_common input[type="text"],
  .data_common select, .data_common input[type="password"] {
      width: 200px;
      
      height: 28px;
      font-size: 12px;
      box-sizing: border-box;
  }
  .intro_title1 {
    font-size: 23px; /* Slightly smaller font size */
    color: #f58220;
    margin: 0;
    padding-bottom: 8px;
    padding-top: 5px;
  }
  /* Checkbox styling */
  .data_common input[type="checkbox"] {
      transform: scale(1.2);
      margin-right: 10px;
  }
  .wlas_table table{
    width: 100%;
    border-collapse: collapse;
    border: 0.5px solid #ccc; /* Very thin border for the table */
    table-layout: fixed;
  }
  .wlas_table table th,
  .wlas_table table td {
      border: 1px solid #ccc; /* Add a black border */
      border-collapse: collapse; /* Ensure borders don't double up */
  }
  .wlas_table table th{
    background-color: #f2f2f2;
    font-weight: bold;
    text-align: center;
  }
  /* Button styling */
  .btn_ctl {
      text-align: right;
      
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
  
  .list_header ul{
    display: flex;
    gap: 110px;
    list-style: none;
    margin-top: 1px;
    margin-left: -22px;
    font-size: 15px;
  }
  .list_header ul a{
    text-decoration: none;
    color: #f58220;
    border-bottom: 2px solid transparent;
    transition: color 0.3s, border-bottom 0.3s;
  }
  .list_header ul a:hover, .list_header ul a.active{
    color: #f58220;
    border-bottom: 2px solid #f58220;
  }
  </style>
<script>
function skip () { this.blur(); }
function addClick(obj)
{
 if (!checkMac(document.formWlAcAdd.mac, 1))
  return false;
 obj.isclick = 1;
 postTableEncrypt(document.formWlAcAdd.postSecurityFlag, document.formWlAcAdd);
 return true;
}
function disableDelButton()
{
 disableButton(document.formWlAcDel.deleteSelFilterMac);
 disableButton(document.formWlAcDel.deleteAllFilterMac);
}
function enableAc()
{
  enableTextField(document.formWlAcAdd.mac);
}
function disableAc()
{
  disableTextField(document.formWlAcAdd.mac);
}
function updateState()
{
  if(wlanDisabled || wlanMode == 1 || wlanMode ==2){
 disableDelButton();
 disableButton(document.formWlAcAdd.reset);
 disableButton(document.formWlAcAdd.setFilterMode);
 disableButton(document.formWlAcAdd.addFilterMac);
   disableTextField(document.formWlAcAdd.wlanAcEnabled);
   disableAc();
  }
  else{
    if (document.formWlAcAdd.wlanAcEnabled.selectedIndex) {
 enableButton(document.formWlAcAdd.reset);
 enableButton(document.formWlAcAdd.addFilterMac);
  enableAc();
    }
    else {
 disableButton(document.formWlAcAdd.reset);
 disableButton(document.formWlAcAdd.addFilterMac);
   disableAc();
    }
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formWlAcAdd.postSecurityFlag, document.formWlAcAdd);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formWlAcDel.postSecurityFlag, document.formWlAcDel);
  return true;
 }
}
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formWlAcDel.postSecurityFlag, document.formWlAcDel);
  return true;
 }
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Wi-Fi</a></li><li>Wlan Access Control</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

  <div class="list_header"> 
    <ul>
      <li><a href="wlbasic.asp">WlBaisic</a></li>
      <li><a href="wladvanced.asp"><% multilang("9", "LANG_ADVANCED_SETTINGS") %></a></li>
      <li><a href="wlwpa.asp"><% multilang("1259", "LANG_SECURITY") %></a></li>
      <li><a href="wlactrl.asp" class="active"><% multilang("1261", "LANG_ACCESS_CONTROL") %></a></li>
      <li><a href="wlsurvey.asp"><% multilang("1266", "LANG_SITE_SURVEY") %></a></li>
      <li><a href="wlwps.asp"><% multilang("1267", "LANG_WPS") %></a></li>
    </ul>
  </div>

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
"><img src="/img/wi-fi.png" style="width:38px;"><p class="intro_title"><% multilang("217" "LANG_WLAN_ACCESS_CONTROL"); %></p></div>
 
 <p class="intro_content"><% multilang("218" "LANG_PAGE_DESC_WLAN_ALLOW_DENY_LIST"); %></p>
</div>
<form action=/boaform/admin/formWlAc method=POST name="formWlAcAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">
    <% multilang("134" "LANG_MODE"); %>: &nbsp;&nbsp;&nbsp;&nbsp;
   </th>
   <td>
   <select size="1" name="wlanAcEnabled" onclick="updateState()">
    <option value=0 ><% multilang("179" "LANG_DISABLED"); %></option>
    <option value=1 selected ><% multilang("219" "LANG_ALLOW_LISTED"); %></option>
    <option value=2 ><% multilang("220" "LANG_DENY_LISTED"); %></option>
   </select>
   </td>
   <td><input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setFilterMode" class="inner_btn" onClick="return on_submit(this)">&nbsp;&nbsp;</td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("92" "LANG_MAC_ADDRESS"); %>: </th>
   <td>
    <input type="text" name="mac" size="15" maxlength="12">&nbsp;&nbsp;(ex. 00E086710502)
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterMac" onClick="return addClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/wlactrl.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=<% checkWrite("wlan_idx"); %>>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/admin/formWlAc method=POST name="formWlAcDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p class="intro_title1"><% multilang("223" "LANG_CURRENT_ACCESS_CONTROL_LIST"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical wlas_table">
  <table border="0" width=440>
   <% wlAcList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterMac" onClick="return deleteClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterMac" onClick="return deleteAllClick(this)" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/wlactrl.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=<% checkWrite("wlan_idx"); %>>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% checkWrite("wlanAcNum"); %>
 <% initPage("wlactrl"); %>
 updateState();
</script>
<br><br>
</form>
</body>
</html>

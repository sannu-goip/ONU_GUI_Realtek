<% SendWebHeadStr();%>
<meta HTTP-EQUIV='Pragma' CONTENT='no-cache'>
<title><% multilang("559" "LANG_PASSWORD_CONFIGURATION"); %></title>
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
      padding: 0px 15px; /* Compact padding */
      background-color: #fff;

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
      margin: 10px 15px; /* Compact margin */
      padding: 10px; /* Compact padding */
      background-color: #fff;
    
  }
  
  .data_common_notitle {
      padding: 10px; /* Compact padding */
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
      font-weight: 300;;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
  }
  
  .data_common input[type="password"],
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
  .data_common_notitle{
    border-bottom: 1px solid #e2dcdc;
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
<SCRIPT>
function saveChanges(obj)
{
   if ( document.password.newpass.value != document.password.confpass.value) {
 alert("<% multilang("2082" "LANG_PASSWORD_IS_NOT_MATCHED_PLEASE_TYPE_THE_SAME_PASSWORD_BETWEEN_NEW_AND_CONFIRMED_BOX"); %>");
 document.password.newpass.focus();
 return false;
  }
  if ( document.password.newpass.value.length == 0) {
 alert("<% multilang("2083" "LANG_PASSWORD_CANNOT_BE_EMPTY_PLEASE_TRY_IT_AGAIN"); %>");
 document.password.newpass.focus();
 return false;
  }
  if (includeSpace(document.password.newpass.value)) {
 alert("<% multilang("2086" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_PASSWORD_PLEASE_TRY_IT_AGAIN"); %>");
 document.password.newpass.focus();
 return false;
  }
  if (checkString(document.password.newpass.value) == 0) {
 alert("<% multilang("2087" "LANG_INVALID_PASSWORD"); %>");
 document.password.newpass.focus();
 return false;
  }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
}
</SCRIPT>
</head>
<BODY>
<div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>User Management</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 
   

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/usermanagement.png" style="width:38px;"></div>
<div style="padding-top:7px;"> <p class="intro_title"><% multilang("559" "LANG_PASSWORD_CONFIGURATION"); %></p></div></div>
 

 <p class="intro_content"> <% multilang("555" "LANG_PAGE_DESC_SET_ACCOUNT_PASSWORD"); %></p>
</div>
<form action=/boaform/formPasswordSetup method=POST name="password">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="40%"><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</th>
   <td><select size="1" name="userMode">
    <% checkWrite("userMode"); %>
    </select>
   </td>
  </tr>
  <tr>
   <th><% multilang("556" "LANG_OLD_PASSWORD"); %>:</th>
   <td><input type="password" name="oldpass" size="20" maxlength="30"></td>
  </tr>
  <tr>
   <th><% multilang("557" "LANG_NEW_PASSWORD"); %>:</th>
   <td><input type="password" name="newpass" size="20" maxlength="30"></td>
  </tr>
  <tr>
   <th><% multilang("558" "LANG_CONFIRMED_PASSWORD"); %>:</th>
   <td><input type="password" name="confpass" size="20" maxlength="30"></td>
  </tr>
 </table>
</div>
<div class="btn_ctl clearfix">
 <input type="hidden" value="/password.asp" name="submit-url">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)">&nbsp;&nbsp;
 <input class="link_bg" type="reset" value=" <% multilang("222" "LANG_RESET"); %> " name="reset">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>

</body>
</html>

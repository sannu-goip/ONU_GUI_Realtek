<% SendWebHeadStr();%>
<title><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></title>
<script type="text/javascript" src="base64_code.js"></script>
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
    .adsl {
        text-align: right;
        margin-right: 30px;
    }
    .inner_btn {
        background-color: transparent;
        color: white;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
        color: black;
        width: auto !important;
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
    
    </style>
<script>
var need_upgrade_pwd = <% checkWrite("need_upgrade_pwd") %>
function sendClicked()
{
 if(need_upgrade_pwd )
 {
  if (document.authcheck.upgradepass.value == "" || document.authcheck.upgradepass.value != "3hwdm@Netmax") {
   alert("Error: wrong password!");
   document.authcheck.upgradepass.focus();
   return false;
  }
 }
 if (document.password.binary.value=="") {
  alert("<% multilang("2262" "LANG_SELECTED_FILE_CANNOT_BE_EMPTY"); %>");
  document.password.binary.focus();
  return false;
 }
 if (!confirm('<% multilang("565" "LANG_PAGE_DESC_UPGRADE_CONFIRM")%>'))
  return false;
 else{
  setload();
  return true;
 }
}
</script>
</head>
<BODY>
<div class="breadcrum_box"> <ul><li><a href="#">Manage</a></li><li>Upgrade Management</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/upgrade.png" style="width:50px;"></div>
<div style="margin-left:-19px;padding-top:7px;"> <p class="intro_title"><% multilang("68" "LANG_FIRMWARE_UPGRADE"); %></div></div>

 <p class="intro_content"> <% multilang("560" "LANG_PAGE_DESC_UPGRADE_FIRMWARE"); %></p>
</div>
<form method=POST name="authcheck">
<div class="data_common data_common_notitle" <% checkWrite("upgrade_pwd") %>>
 <table border="0" cellspacing="4" width="500">
  <tr>
      <td width="20%"><font size=2><b><% multilang("67" "LANG_PASSWORD"); %>:</b></td>
      <td width="50%"><font size=2><input type="password" name="upgradepass" size="20" maxlength="30"></td>
  </tr>
 </table>
</div>
</form>
<form action=/boaform/admin/formUpload method=POST enctype="multipart/form-data" name="password">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><input class="inner_btn" type="file" value="<% multilang("546" "LANG_CHOOSE_FILE"); %>" name="binary" size=20></th>
  </tr>
 </table>
</div>
<div class="adsl clearfix">
    <input class="link_bg" type="submit" value="<% multilang("561" "LANG_UPGRADE"); %>" name="send" onclick="return sendClicked()">&nbsp;&nbsp;
 <input class="link_bg" type="reset" value="<% multilang("222" "LANG_RESET"); %>" name="reset">
 <input type="hidden" value="/admin/upgrade.asp" name="submit-url">
</div>
 </form>
</body>
</html>

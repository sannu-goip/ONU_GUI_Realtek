<% SendWebHeadStr();%>
<title><% multilang("163" "LANG_WLAN_ADVANCED_SETTINGS"); %></title>
<title>URL <% multilang("411" "LANG_BLOCKING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
  .url_table table th{
    width: 25%;
  }
  .fdqn{
    width: 20%;
  }
  .intro_title1{
    margin-top: 10px;
    margin-bottom: 5px;
  }
  .data_vertical table{
    border-collapse: collapse;
    width: 80%;
    table-layout: fixed;
  }
  .data_vertical table th, .data_vertical table td{
    text-align: center;
  }
  .data_vertical table tr:first-child{
    border: 0.1px solid #ccc;
    background-color: #e9e9e9;
  }
</style>
<SCRIPT>
function addClick()
{
 return true;
}
function addFQDNClick(obj)
{
 if (document.url.urlFQDN.value=="") {
  alert("<% multilang("2464" "LANG_PLEASE_ENTER_THE_BLOCKED_FQDN"); %>");
  document.url.urlFQDN.focus();
  return false;
 }
 if (document.url.urlFQDN.value.length == 0 ) {
  if (!confirm('<% multilang("2576" "LANG_FQDN_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_FQDN"); %>') ) {
   document.url.urlFQDN.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.urlFQDN.value)) {
  alert("<% multilang("2465" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_FQDN_PLEASE_TRY_IT_AGAIN"); %>");
  document.url.urlFQDN.focus();
  return false;
  }
 if (checkString(document.url.urlFQDN.value) == 0) {
  alert("<% multilang("2466" "LANG_INVALID_BLOCKED_FQDN"); %>");
  document.url.urlFQDN.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function addKeywordClick(obj)
{
 if (document.url.Keywd.value=="") {
  alert("<% multilang("2467" "LANG_PLEASE_ENTER_THE_BLOCKED_KEYWORD"); %>");
  document.url.Keywd.focus();
  return false;
 }
 if (document.url.Keywd.value.length == 0 ) {
  if (!confirm('<% multilang("2577" "LANG_KEYWORD_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_KEYWORD"); %>') ) {
   document.url.Keywd.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.Keywd.value)) {
  alert("<% multilang("2468" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_KEYWORD_PLEASE_TRY_IT_AGAIN"); %>");
  document.url.Keywd.focus();
  return false;
  }
 if (checkString(document.url.Keywd.value) == 0) {
  alert("<% multilang("2469" "LANG_INVALID_BLOCKED_KEYWORD"); %>");
  document.url.Keywd.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableDelFQDNButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delFQDN);
 disableButton(document.url.delFAllQDN);
  }
}
function disableDelKeywdButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delKeywd);
 disableButton(document.url.delAllKeywd);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Url Filter</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main ">
 <div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/urlfilter.png" style="width:55px;"></div>
<div style="margin-left: -15px;padding-top:10px;"><p class="intro_title">URL <% multilang("411" "LANG_BLOCKING"); %></p></div></div>
  

 <p class="intro_content"> <% multilang("412" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BLOCKED_FQDN_SUCH_AS_TW_YAHOO_COM_AND_FILTERED_KEYWORD_HERE_YOU_CAN_ADD_DELETE_FQDN_AND_FILTERED_KEYWORD"); %></p>
</div>
<form action=/boaform/formURL method=POST name="url">
<div class="data_common data_common_notitle url_table">
 <table style="border: none;">
  <tr>
   <th style="border: none;" width="10%">URL <% multilang("411" "LANG_BLOCKING"); %>:</th>
   <td width="20%" style="text-align: center; border: none;">
    <div style="display: inline-flex; align-items: center;">
      <input type="radio" value="0" name="urlcap" <% checkWrite("url-cap0"); %> style="margin: 0 5px 0 0;">
      <span><% multilang("247" "LANG_DISABLE"); %></span>
    </div>
    &nbsp;&nbsp;
    <div style="display: inline-flex; align-items: center;">
      <input type="radio" value="1" name="urlcap" <% checkWrite("url-cap1"); %> style="margin: 0 5px 0 0;">
      <span><% multilang("248" "LANG_ENABLE"); %></span>
    </div>
  </td>
   <td width="40%" style="border: none;">
    <input style="margin-left: 22px;" class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th class="fdqn" style="width: 23%;" width="30%" style="border: none;"><span><% multilang("413" "LANG_FQDN"); %>:</span></th>
   <td style="width: 7%;"> <input type="text" name="urlFQDN" size="15" maxlength="125"></td>
   <td width="30%" style="border: none;">
    <input class="inner_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFQDN" onClick="return addFQDNClick(this)">
   </td>
  </tr>
 </table>
</div>
<div class="column clearfix column_title">
 <div class="column_title_left"></div>
  <p class="intro_title1">URL <% multilang("411" "LANG_BLOCKING"); %> <% multilang("1154" "LANG_TABLE_2"); %></p>
 <div class="column_title_right"></div>
</div>
<div class="data_common data_vertical">
 <table>
  <% showURLTable(); %>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delFQDN" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delFAllQDN" onClick="return deleteAllClick(this)"></td>
</div>
<script>
 <% checkWrite("FQDNNum"); %>
</script>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%" style="width: 31%;"><% multilang("415" "LANG_KEYWORD"); %>: </th>
   <td style="width: 17%;"><input type="text" name="Keywd" size="15" maxlength="18">&nbsp;&nbsp;</td>
   <td width="40%">
    <input class="inner_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addKeywd" onClick="return addKeywordClick(this)">
   </td>
  </tr>
 </table>
</div>
<div class="column clearfix column_title">
 <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("416" "LANG_KEYWORD_FILTERING_TABLE"); %></p>
 <div class="column_title_right"></div>
</div>
<div class="data_common data_vertical">
 <table>
  <% showKeywdTable(); %>
 </table>
</div>
<div class="btn_ctl">
<input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delKeywd" onClick="return deleteClick(this)">&nbsp;&nbsp;
<input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllKeywd" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
<input type="hidden" value="/url_blocking.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</div>
 <script>
  <% checkWrite("keywdNum"); %>
  </script>
</form>
</body>
</html>

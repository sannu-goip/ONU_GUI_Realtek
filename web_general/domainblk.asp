<%SendWebHeadStr(); %>
<title><% multilang("21" "LANG_DOMAIN_BLOCKING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
  .data_vertical table{
    width: 60%;
    border-collapse: collapse;
    table-layout: fixed !important;
  }
  .data_vertical th, .data_vertical td{
    border: 0.1px solid #ccc;
    text-align: center;
  }
  .data_vertical th, .data_vertical tr:first-child td{
    background-color: #ede9e9 !important;
  }
</style>
<SCRIPT>
function addClick(obj)
{
 if (document.domainblk.blkDomain.value=="") {
  alert('<% multilang("2189" "LANG_PLEASE_ENTER_THE_BLOCKED_DOMAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
 }
 if ( document.domainblk.blkDomain.value.length == 0 ) {
  if ( !confirm('<% multilang("2565" "LANG_DOMAIN_STRING_IS_EMPTY_NPLEASE_ENTER_THE_BLOCKED_DOMAIN"); %>') ) {
   document.domainblk.blkDomain.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if ( includeSpace(document.domainblk.blkDomain.value)) {
  alert('<% multilang("2190" "LANG_CANNOT_ACCEPT_SPACE_CHARACTER_IN_BLOCKED_DOMAIN_PLEASE_TRY_IT_AGAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
  }
 if (checkString(document.domainblk.blkDomain.value) == 0) {
  alert('<% multilang("2191" "LANG_INVALID_BLOCKED_DOMAIN"); %>');
  document.domainblk.blkDomain.focus();
  return false;
 }
   obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableDelButton()
{
 if (verifyBrowser() != "ns") {
  disableButton(document.domainblk.delDomain);
  disableButton(document.domainblk.delAllDomain);
 }
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
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
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}
</SCRIPT>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Parental</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/parental.png" style="width:51px;"></div>
<div style="padding-top:3px;margin-left:-7px;"><p class="intro_title"><p class="intro_title"><% multilang("21" "LANG_DOMAIN_BLOCKING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>

 <p class="intro_content"><% multilang("418" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BLOCKED_DOMAIN_HERE_YOU_CAN_ADD_DELETE_THE_BLOCKED_DOMAIN"); %></p>
</div>
<form action=/boaform/formDOMAINBLK method=POST name="domainblk">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("21" "LANG_DOMAIN_BLOCKING"); %>:</th>
   <td width="20%">
    <input type="radio" value="0" name="domainblkcap" <% checkWrite("domainblk-cap0"); %>><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="domainblkcap" <% checkWrite("domainblk-cap1"); %>><% multilang("248" "LANG_ENABLE"); %>
   </td>
  <td width="40%"><input class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">&nbsp;&nbsp;</td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("419" "LANG_DOMAIN"); %>:</th>
   <td width="20%">
   <input type="text" name="blkDomain" size="15" maxlength="50">
   </td>
   <td width="40%">
   <input class="inner_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addDomain" onClick="return addClick(this)">
   </td>
  </tr>
 </table>
</div>
<div class="column clearfix column_title">
 <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("21" "LANG_DOMAIN_BLOCKING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <div class="column_title_right"></div>
</div>
<div class="data_common data_vertical">
 <table>
   <% showDOMAINBLKTable(); %>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delDomain" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllDomain" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/domainblk.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% checkWrite("domainNum"); %>
</script>
</form>
</body>
</html>

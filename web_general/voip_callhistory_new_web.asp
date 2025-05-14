<% SendWebHeadStr();%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<title><% multilang("1239" "LANG_VOIP_CALLHISTORY"); %></title>
<link rel="stylesheet" href="./admin/style.css">
<link rel="stylesheet" href="./admin/reset.css" />
<link rel="stylesheet" href="./admin/base.css" />
<SCRIPT language="javascript" src="common.js"></SCRIPT>
<style>
  .link_bg{
  float: right;
  margin-right: 20px;
}
.data_common table {
    border-collapse: collapse; /* Ensures borders are collapsed */
    width: 100%; /* Adjust width as needed */
  }

  .data_common table, 
  .data_common table td {
    border: 1px solid #ccc; /* Adds border to table and all <td> */
  }

  .data_common table tr:first-child td{
    background-color: #ebeced !important; /* Sets background color for the first <tr> */
  }

  .data_common table tr:not(:first-child) td {
    background-color: white; /* Sets background color for remaining <td> */
  }
</style>
<SCRIPT>
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Voice</a></li><li>Voice History</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>

 <div class="intro_main ">
 <div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/voip.png" style="width:38px;"></div>
<div style="padding-top:10px;"><p class="intro_title"><% multilang("1239" "LANG_VOIP_CALLHISTORY"); %></p></div></div>
  
  <p class="intro_content"><% multilang("2937" "LANG_THIS_PAGE_SHOWS_THE_VOIP_CALL_LOG"); %></p>
 </div>
<form action=/boaform/voip_log_set method=POST name="voip_log_set">
  <input type="hidden" value="/voip_callhistory_new_web.asp" name="call_log_refesh">
 
 <div class="data_common data_common_notitle" style="margin-top:20px;">
  <%voip_log_get();%>
 </div>
 <div style="padding:10px 0;">
  <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">
 </div>
    <input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>

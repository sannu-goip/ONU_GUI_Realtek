<% SendWebHeadStr();%>
<title>DHCPv6 <% multilang("375" "LANG_SETTINGS"); %></title>
<style>
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
      margin-top: 20px;
  }
  
  .intro_title {
      font-size: 24px; /* Slightly smaller font size */
   
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  .intro_title1 {
    padding: 5px 15px;
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
  #displayDhcpSvr table td:first-child {
    font-weight: bold;
    padding-top: 8px;
  }
  .list_header ul{
display: flex;
gap: 70px;
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
#dhcpv6_server_table1 > tbody > tr:first-child > td, #dhcpv6_server_table2 > tbody > tr:first-child > td {
  background-color: #e2e2e2 !important;
}
</style>

<SCRIPT>
function openWindow(url, windowName)
{
 var wide = 900;
 var high = 600;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
  var xMax = 640, yMax = 480;
 var xOffset = (xMax - wide) / 2;
 var yOffset = (yMax - high) / 3;
 var settings =
     'width=' + wide + ',height=' + high + ',screenX=' + xOffset +
     ',screenY=' + yOffset + ',top=' + yOffset + ',left=' + xOffset +
     ', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open(url, windowName, settings);
}
function showDhcpv6Svr()
{
 var html;
 if (document.dhcpd.dhcpdenable[0].checked == true)
  document.getElementById('displayDhcpSvr').innerHTML=
   '<div class="btn_ctl">'+
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit(this)">&nbsp;&nbsp;'+
   '</div>';
 else if (document.dhcpd.dhcpdenable[1].checked == true)
  document.getElementById('displayDhcpSvr').innerHTML=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td colspan=2>'+
   '<% multilang("754" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_UPPER_INTERFACE_SERVER_LINK_FOR_DHCPV6_RELAY"); %>'+
   '</td></tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("755" "LANG_UPPER_INTERFACE"); %>:</th>'+
   '<td>'+
   '<select name="upper_if">'+
   '<% if_wan_list("all2"); %>'+
   '</select>'+
   '</td>'+
   '</tr>'+
   '</table></div>'+
   '<div class="btn_ctl">'+
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit(this)">&nbsp;&nbsp;'+
   '</div>';
 else if (document.dhcpd.dhcpdenable[2].checked == true) {
  html=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td colspan=2>'+
   '<% multilang("756" "LANG_ENABLE_THE_DHCPV6_SERVER_IF_YOU_ARE_USING_THIS_DEVICE_AS_A_DHCPV6_SERVER_THIS_PAGE_LISTS_THE_IP_ADDRESS_POOLS_AVAILABLE_TO_HOSTS_ON_YOUR_LAN_THE_DEVICE_DISTRIBUTES_NUMBERS_IN_THE_POOL_TO_HOSTS_ON_YOUR_NETWORK_AS_THEY_REQUEST_INTERNET_ACCESS"); %>'+
   '</td></tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("354" "LANG_IP_POOL_RANGE"); %>:</th>';
  html+=
   '<td width="70%"><input type="text" name="dhcpRangeStart" size=25 maxlength=39 value="<% getInfo("dhcpv6s_range_start"); %>">'+
   '<font face="Arial" size="5">-</font><input type="text" name="dhcpRangeEnd" size=25 maxlength=39 value="<% getInfo("dhcpv6s_range_end"); %>">&nbsp;';
  html+= '<input class="link_bg" type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTblv6" onClick="openWindow(\'/dhcptblv6.asp\', \'\')" >'+
   '</td>'+
   '</tr>';
  html += '<tr>'+
   '<th width="30%"><% multilang("474" "LANG_PREFIX_LENGTH"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="prefix_len" size=10 maxlength=3 value="<% getInfo("dhcpv6s_prefix_length"); %>">'+
   '</td>'+
   '</tr>';
  html += '<tr>'+
   '<th width="30%"><% multilang("757" "LANG_VALID_LIFETIME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="Dltime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_default_LTime"); %>"><% multilang("357" "LANG_SECONDS"); %>'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("758" "LANG_PREFERRED_LIFETIME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="PFtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_preferred_LTime"); %>"><% multilang("357" "LANG_SECONDS"); %>'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("759" "LANG_RENEW_TIME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="RNtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_renew_time"); %>"><% multilang("357" "LANG_SECONDS"); %>'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("760" "LANG_REBIND_TIME"); %>:</th>'+
   '<td width="70%">'+
   '<input type="text" name="RBtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_rebind_time"); %>"><% multilang("357" "LANG_SECONDS"); %>'+
   '</td>'+
   '</tr>'+
   '<tr>'+
   '<th width="30%"><% multilang("761" "LANG_CLIENT"); %> DUID:</th>'+
   '<td width="70%">'+
   '<input type="text" name="clientID" size=42 maxlength=41 value="<% getInfo("dhcpv6s_clientID"); %>">'+
   '</td>'+
   '</tr>'+
   '</table></div>'+
   '<div class="btn_ctl">'+
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges(this)" class="link_bg">&nbsp;&nbsp;'+
   '</div>'+
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr>'+
   '<th width="30%"><% multilang("419" "LANG_DOMAIN"); %>:</th>'+
   '<td><input type="text" name="domainStr" size="15" maxlength="50">&nbsp;&nbsp;</td>'+
   '<td><input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addDomain" class="inner_btn" onClick="return on_submit(this)">&nbsp;&nbsp;</td>'+
   '</tr>'+
   '</table>'+
   '</div>'+
   '<div class="column">'+
   '<div class="column_title">'+
   '<div class="column_title_left"></div>'+
   '<p class="intro_title1"><% multilang("762" "LANG_DOMAIN_SEARCH_TABLE"); %></p>'+
   '<div class="column_title_right"></div>'+
   '</div>'+
   '<div class="data_common data_vertical">'+
   '<table style="margin-top: 7px" id="dhcpv6_server_table1">'+
   <% showDhcpv6SDOMAINTable(); %>
   '</table>'+
   '</div></div>'+
   '<div class="btn_ctl">'+
   '<input type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delDomain" class="link_bg" onClick="return on_submit(this)">&nbsp;&nbsp;'+
   '<input type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllDomain" class="link_bg" onClick="return on_submit(this)">&nbsp;&nbsp;&nbsp;'+
   '</div>'+
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr>'+
   '<th width="30%"><% multilang("763" "LANG_NAME_SERVER"); %> IP:</th>'+
   '<td><input type="text" name="nameServerIP" size="15" maxlength="40">&nbsp;&nbsp;</td>'+
   '<td><input class="link_bg" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addNameServer" class="inner_btn" onClick="return on_submit(this)">&nbsp;&nbsp;</td>'+
   '</tr>'+
   '</table>'+
   '</div>'+
   '<div class="column">'+
   '<div class="column_title">'+
   '<div class="column_title_left"></div>'+
   '<p class="intro_title1"><% multilang("764" "LANG_NAME_SERVER_TABLE"); %></p>'+
   '<div class="column_title_right"></div>'+
   '</div>'+
   '<div class="data_common data_vertical">'+
   '<table style="margin-top: 7px" id="dhcpv6_server_table2">'+
   <% showDhcpv6SNameServerTable(); %>
   '</table>'+
   '</div>'+
   '<div class="btn_ctl">'+
   '<input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delNameServer" <% multilang("764" "LANG_NAME_SERVER_TABLE"); %> onClick="return on_submit(this)">&nbsp;&nbsp;'+
   '<input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllNameServer" <% multilang("764" "LANG_NAME_SERVER_TABLE"); %> onClick="return on_submit(this)">&nbsp;&nbsp;&nbsp;'+
   '</div>';
  document.getElementById('displayDhcpSvr').innerHTML=html;
 }
 else if (document.dhcpd.dhcpdenable[3].checked == true)
  document.getElementById('displayDhcpSvr').innerHTML=
   '<div class="data_common data_common_notitle">'+
   '<table>'+
   '<tr><td>'+
   '<% multilang("765" "LANG_AUTO_CONFIG_BY_PREFIX_DELEGATION_FOR_DHCPV6_SERVER"); %>'+
   '</td></tr>'+
   '</table></div>'+
   '<div class="btn_ctl">'+
   '<input class="link_bg" type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTblv6" class="link_bg" onClick="openWindow(\'/dhcptblv6.asp\', \'\')" >&nbsp;&nbsp;'+
   '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit(this)"></tr>'+
   '</div>';
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function checkDigitRange_leaseTime(str, min)
{
  d = parseInt(str, 10);
  if ( d < min || d == 0)
       return false;
  return true;
}
function validateKey_leasetime(str)
{
   for (var i=0; i<str.length; i++) {
    if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9') ||
      (str.charAt(i) == '-' ) )
   continue;
 return 0;
  }
  return 1;
}
function saveChanges(obj)
{
 if (document.dhcpd.dhcpRangeStart.value =="") {
  alert('<% multilang("2149" "LANG_START_IP_ADDRESS_CANNOT_BE_EMPTY_FORMAT_IS_IPV6_ADDRESS_FOR_EXAMPLE_2000_0200_10"); %>');
  document.dhcpd.dhcpRangeStart.value = document.dhcpd.dhcpRangeStart.defaultValue;
  document.dhcpd.dhcpRangeStart.focus();
  return false;
 } else {
  if ( validateKeyV6IP(document.dhcpd.dhcpRangeStart.value) == 0) {
   alert('<% multilang("2150" "LANG_INVALID_START_IP"); %>');
   document.dhcpd.dhcpRangeStart.focus();
   return false;
  }
 }
 if (document.dhcpd.dhcpRangeEnd.value =="") {
  alert('<% multilang("2151" "LANG_END_IP_ADDRESS_CANNOT_BE_EMPTY_FORMAT_IS_IPV6_ADDRESS_FOR_EXAMPLE_2000_0200_20"); %>');
  document.dhcpd.dhcpRangeEnd.value = document.dhcpd.dhcpRangeEnd.defaultValue;
  document.dhcpd.dhcpRangeEnd.focus();
  return false;
 } else {
  if ( validateKeyV6IP(document.dhcpd.dhcpRangeEnd.value) == 0) {
   alert('<% multilang("2152" "LANG_INVALID_END_IP"); %>');
   document.dhcpd.dhcpRangeEnd.focus();
   return false;
  }
 }
 if ( document.dhcpd.prefix_len.value=="") {
  alert('<% multilang("2153" "LANG_PLEASE_INPUT_IP_PREFIX_LENGTH"); %>');
  document.dhcpd.prefix_len.focus();
  return false;
 }
 if ( document.dhcpd.Dltime.value=="") {
  alert('<% multilang("2154" "LANG_PLEASE_INPUT_DHCP_DEFAULT_LEASE_TIME"); %>');
  document.dhcpd.Dltime.focus();
  return false;
 }
 if ( validateKey_leasetime( document.dhcpd.Dltime.value ) == 0 ) {
  alert('<% multilang("2155" "LANG_INVALID_DHCP_SERVER_DEFAULT_LEASE_TIME_NUMBER"); %>');
  document.dhcpd.Dltime.value = document.dhcpd.Dltime.defaultValue;
  document.dhcpd.Dltime.focus();
  return false;
 }
 if ( !checkDigitRange_leaseTime(document.dhcpd.Dltime.value, 0) ) {
  alert('<% multilang("2156" "LANG_INVALID_DHCP_SERVER_DEFAULT_LEASE_TIME"); %>');
  document.dhcpd.Dltime.value = document.dhcpd.Dltime.defaultValue;
  document.dhcpd.Dltime.focus();
  return false;
 }
 if ( document.dhcpd.PFtime.value=="") {
  alert('<% multilang("2157" "LANG_PLEASE_INPUT_DHCP_PREFERED_LIFETIME"); %>');
  document.dhcpd.PFtime.focus();
  return false;
 }
 if ( validateKey_leasetime( document.dhcpd.PFtime.value ) == 0 ) {
  alert('<% multilang("2158" "LANG_INVALID_DHCP_SERVER_PREFERED_LIFETIME_NUMBER"); %>');
  document.dhcpd.PFtime.value = document.dhcpd.PFtime.defaultValue;
  document.dhcpd.PFtime.focus();
  return false;
 }
 if ( !checkDigitRange_leaseTime(document.dhcpd.PFtime.value, 0) ) {
  alert('<% multilang("2159" "LANG_INVALID_DHCP_SERVER_PREFERED_LIFETIME"); %>');
  document.dhcpd.PFtime.value = document.dhcpd.PFtime.defaultValue;
  document.dhcpd.PFtime.focus();
  return false;
 }
 if ( document.dhcpd.RNtime.value=="") {
  alert('<% multilang("2160" "LANG_PLEASE_INPUT_DHCP_RENEW_TIME"); %>');
  document.dhcpd.RNtime.focus();
  return false;
 }
 if ( document.dhcpd.RBtime.value=="") {
  alert('<% multilang("2161" "LANG_PLEASE_INPUT_DHCP_REBIND_TIME"); %>');
  document.dhcpd.RBtime.focus();
  return false;
 }
 if ( document.dhcpd.clientID.value=="") {
  alert('<% multilang("2162" "LANG_PLEASE_INPUT_DHCP_CLIENT_OUID"); %>');
  document.dhcpd.clientID.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.dhcpd.postSecurityFlag, document.dhcpd);
 return true;
}
function enabledhcpd()
{
 document.dhcpd.dhcpdenable[2].checked = true;
 showDhcpv6Svr();
}
function disabledhcpd()
{
 document.dhcpd.dhcpdenable[0].checked = true;
 showDhcpv6Svr();
}
function enabledhcprelay()
{
 document.dhcpd.dhcpdenable[1].checked = true;
 showDhcpv6Svr();
}
function autodhcpd()
{
 document.dhcpd.dhcpdenable[3].checked = true;
 showDhcpv6Svr();
}
</SCRIPT>

</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>DHCPDv6</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


  <div class="list_header"> 
    <ul>
      <li><a href="/ipv6_enabledisable.asp">IPv6 Enable/Disable</a></li>
      <li><a href="/radvdconf.asp" >RADVD</a></li>
      <li><a href="/dhcpdv6.asp" class="active">DHCPv6</a></li>
      <li><a href="/routing_ipv6.asp">Ipv6 routing</a></li>
      <li><a href="/fw-ipportfilter-v6_IfId_rg.asp">IP/Port filtering</a></li>
    </ul>
  </div>

<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/ipv6.png" style="width:38px;"></div>
<div style="padding-top: 7px;"> <p class="intro_title">DHCPv6 <% multilang("375" "LANG_SETTINGS"); %></p></div></div>
 
 <p class="intro_content"><% multilang("766" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_DHCPV6_SERVER_AND_DHCPV6_RELAY"); %></p>
</div>
<form action=/boaform/formDhcpv6Server method=POST name="dhcpd">
 <div class="data_common data_common_notitle">
  <table border=0 width="500" cellspacing=4 cellpadding=0>
   <tr>
    <th width="20%">DHCPv6 <% multilang("134" "LANG_MODE"); %>: </th>
    <td>
     <% checkWrite("dhcpV6Mode"); %>
    </td>
   </tr>
  </table>
 </div>
 <div ID="displayDhcpSvr"></div>
 <input type="hidden" value="/dhcpdv6.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
 <script>
  <% initPage("dhcpv6-mode"); %>
  showDhcpv6Svr();
 </script>
</form>

<br><br>
</body>
</html>

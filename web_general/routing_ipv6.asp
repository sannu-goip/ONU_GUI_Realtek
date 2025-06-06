<% SendWebHeadStr();%>
<title><% multilang("39" "LANG_ROUTING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
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
.ip_port_table table {
    width: 100%;
    border-collapse: collapse; /* Ensures borders do not double up */
    border: 1px solid #ccc; /* Border for the table */
}

.ip_port_table th,
.ip_port_table td {
    border: 0.1px solid #ccc; /* Border for table cells */
    padding: 8px; /* Adds padding for better readability */
    text-align: center; /* Centers text in cells */
    width: 12.5%; /* Equal width for all columns (100% / 8 columns) */
}

.ip_port_table th {
    background-color: #f2f2f2; /* Light grey background for headers */
    font-weight: bold; /* Bold text for headers */
}
</style>
<SCRIPT>
function postGW( enable, destNet, nextHop, metric, interface, select )
{
 document.route.enable.checked = enable;
 document.route.destNet.value=destNet;
 document.route.nextHop.value=nextHop;
 document.route.metric.value=metric;
 document.route.interface.value=interface;
 document.route.select_id.value=select;
}
function checkDest(ip, mask)
{
 var i, dip, dmask, nip;
 for (i=1; i<=4; i++) {
  dip = getDigit(ip.value, i);
  dmask = getDigit(mask.value, i);
  nip = dip & dmask;
  if (nip != dip)
   return true;
 }
 return false;
}
function addClick(obj)
{
 if ( validateKeyV6IP( document.route.destNet.value ) == 0 ) {
           if(! validateKeyV6Prefix( document.route.destNet.value) )
           {
    alert("<% multilang("2428" "LANG_DESTNET_IS_NOT_VALID_IPV6_NET"); %>");
    document.route.destNet.focus();
    return false;
     }
 }
    else if (! isGlobalIpv6Address( document.route.destNet.value) )
 {
  alert("<% multilang("2429" "LANG_DESTNET_IS_NOT_VALID_IPV6_HOST"); %>");
  document.route.destNet.focus();
  return false;
 }
 if (document.route.nextHop.value=="" ) {
  alert("<% multilang("2420" "LANG_ENTER_NEXT_HOP_IP_OR_SELECT_A_GW_INTERFACE"); %>");
  document.route.nextHop.focus();
  return false;
 }
 if ( validateKeyV6IP( document.route.nextHop.value ) == 0 ) {
  alert("<% multilang("2421" "LANG_INVALID_NEXT_HOP_VALUE"); %>");
  document.route.nextHop.focus();
  return false;
 }
    else
 {
  if (! isGlobalIpv6Address( document.route.nextHop.value) ){
   alert("<% multilang("2430" "LANG_NEXTHOP_IS_NOT_VALID_GLOBAL_AND_UNICAST_IPV6_ADDRESS"); %>");
   document.route.nextHop.focus();
   return false;
  }
 }
 if ( !checkDigitRange(document.route.metric.value,1,0,16) ) {
  alert("<% multilang("2427" "LANG_INVALID_METRIC_RANGE_IT_SHOULD_BE_0_16"); %>");
  document.route.metric.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function routeClick(url)
{
 var wide=600;
 var high=400;
 if (document.all)
  var xMax = screen.width, yMax = screen.height;
 else if (document.layers)
  var xMax = window.outerWidth, yMax = window.outerHeight;
 else
    var xMax = 640, yMax=480;
 var xOffset = (xMax - wide)/2;
 var yOffset = (yMax - high)/3;
 var settings = 'width='+wide+',height='+high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
 window.open( url, 'RouteTbl', settings );
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
<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>IPv6 Routing</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


  <div class="list_header"> 
    <ul>
      <li><a href="/ipv6_enabledisable.asp">IPv6 Enable/Disable</a></li>
      <li><a href="/radvdconf.asp" >RADVD</a></li>
      <li><a href="/dhcpdv6.asp">DHCPv6</a></li>
      <li><a href="/routing_ipv6.asp" class="active">Ipv6 routing</a></li>
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
<div style="padding-top: 7px;"> <p class="intro_title"><% multilang("5" "LANG_IPV6"); %> <% multilang("489" "LANG_STATIC"); %> <% multilang("39" "LANG_ROUTING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>
 
 <p class="intro_content"><% multilang("488" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_IPV6_STATIC_ROUTING_INFORMATION_HERE_YOU_CAN_ADD_DELETE_STATIC_IP_ROUTES"); %></p>
</div>
<form action=/boaform/formIPv6Routing method=POST name="route">
<div class="data_common data_common_notitle">
 <table>
  <tr>
      <th width="30%"><% multilang("248" "LANG_ENABLE"); %>:</th>
      <td width="70%"><input type="checkbox" name="enable" value="1" checked></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("390" "LANG_DESTINATION"); %>:</th>
      <td width="70%"><input type="text" name="destNet" size="40" maxlength="40"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("451" "LANG_NEXT_HOP"); %>:</th>
      <td width="70%"><input type="text" name="nextHop" size="40" maxlength="48"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("452" "LANG_METRIC"); %>:</th>
      <td width="70%"><input type="text" name="metric" size="5" maxlength="5"></td>
  </tr>
  <tr>
      <th width="30%"><% multilang("70" "LANG_INTERFACE"); %>:</th>
      <td width="70%"><select name="interface">
          <% if_wan_list("rtv6-any-vpn"); %>
       </select></td>
  </tr>
  <input type="hidden" value="" name="select_id">
</table>
</div>
<div class="btn_ctl">
  <input class="link_bg" type="submit" value="<% multilang("453" "LANG_ADD_ROUTE"); %>" name="addV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="<% multilang("454" "LANG_UPDATE"); %>" name="updateV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delV6Route" onClick="return deleteClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllV6Route" onClick="return deleteAllClick(this)">&nbsp;&nbsp;
  <input class="link_bg" type="button" value="<% multilang("455" "LANG_SHOW_ROUTES"); %>" name="showV6Route" onClick="routeClick('/routetbl_ipv6.asp')">
</div>
<div class="data_common data_common_notitle ip_port_table">
<table>
  <% showIPv6StaticRoute(); %>
</table>
</div>
      <input type="hidden" value="/routing_ipv6.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</form>
</body>
</html>

<% SendWebHeadStr();%>
<title>RADVD <% multilang("238" "LANG_CONFIGURATION"); %></title>
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
</style>
<SCRIPT>
function resetClick()
{
 document.radvd.reset;
}
function saveChanges()
{
 if (document.radvd.MaxRtrAdvIntervalAct.value.length !=0) {
  if ( checkDigit(document.radvd.MaxRtrAdvIntervalAct.value) == 0) {
   alert("<% multilang("2380" "LANG_INVALID_MAXRTRADVINTERVAL_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.MaxRtrAdvIntervalAct.focus();
   return false;
  }
 }
 MaxRAI = parseInt(document.radvd.MaxRtrAdvIntervalAct.value, 10);
 if ( MaxRAI < 4 || MaxRAI > 1800 ) {
  alert("<% multilang("2381" "LANG_MAXRTRADVINTERVAL_MUST_BE_NO_LESS_THAN_4_SECONDS_AND_NO_GREATER_THAN_1800_SECONDS"); %>");
  document.radvd.MaxRtrAdvIntervalAct.focus();
  return false;
 }
 if (document.radvd.MinRtrAdvIntervalAct.value.length !=0) {
  if ( checkDigit(document.radvd.MinRtrAdvIntervalAct.value) == 0) {
   alert("<% multilang("2382" "LANG_INVALID_MINRTRADVINTERVAL_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.MinRtrAdvIntervalAct.focus();
   return false;
  }
 }
 MinRAI = parseInt(document.radvd.MinRtrAdvIntervalAct.value, 10);
 MaxRAI075 = 0.75 * MaxRAI;
 if ( MinRAI < 3 || MinRAI > MaxRAI075 ) {
  alert("<% multilang("2383" "LANG_MINRTRADVINTERVAL_MUST_BE_NO_LESS_THAN_3_SECONDS_AND_NO_GREATER_THAN_0_75_MAXRTRADVINTERVAL"); %>");
  document.radvd.MinRtrAdvIntervalAct.focus();
  return false;
 }
 if (document.radvd.AdvCurHopLimitAct.value.length !=0) {
  if ( checkDigit(document.radvd.AdvCurHopLimitAct.value) == 0) {
   alert("<% multilang("2384" "LANG_INVALID_ADVCURHOPLIMIT_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.AdvCurHopLimitAct.focus();
   return false;
  }
 }
 if (document.radvd.AdvDefaultLifetimeAct.value.length !=0) {
  if ( checkDigit(document.radvd.AdvDefaultLifetimeAct.value) == 0) {
   alert("<% multilang("2385" "LANG_INVALID_ADVDEFAULTLIFETIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.AdvDefaultLifetimeAct.focus();
   return false;
  }
 }
 dlt = parseInt(document.radvd.AdvDefaultLifetimeAct.value, 10);
 if ( dlt != 0 && (dlt < MaxRAI || dlt > 9000) ) {
  alert("<% multilang("2386" "LANG_ADVDEFAULTLIFETIME_MUST_BE_EITHER_ZERO_OR_BETWEEN_MAXRTRADVINTERVAL_AND_9000_SECONDS"); %>");
  document.radvd.AdvDefaultLifetimeAct.focus();
  return false;
 }
 if (document.radvd.AdvReachableTimeAct.value.length !=0) {
  if ( checkDigit(document.radvd.AdvReachableTimeAct.value) == 0) {
   alert("<% multilang("2387" "LANG_INVALID_ADVREACHABLETIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.AdvReachableTimeAct.focus();
   return false;
  }
 }
 if (document.radvd.AdvRetransTimerAct.value.length !=0) {
  if ( checkDigit(document.radvd.AdvRetransTimerAct.value) == 0) {
   alert("<% multilang("2388" "LANG_INVALID_ADVRETRANSTIMER_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.AdvRetransTimerAct.focus();
   return false;
  }
 }
 if (document.radvd.AdvLinkMTUAct.value.length !=0) {
  if ( checkDigit(document.radvd.AdvLinkMTUAct.value) == 0) {
   alert("<% multilang("2389" "LANG_INVALID_ADVLINKMTU_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
   document.radvd.AdvLinkMTUAct.focus();
   return false;
  }
 }
 lmtu= parseInt(document.radvd.AdvLinkMTUAct.value, 10);
 if ( lmtu != 0 && (lmtu < 1280 || lmtu > 1500) ) {
  alert("<% multilang("2390" "LANG_ADVLINKMTU_MUST_BE_EITHER_ZERO_OR_BETWEEN_1280_AND_1500"); %>");
  document.radvd.AdvLinkMTUAct.focus();
  return false;
 }
    if(document.radvd.EnableULA[1].checked){
  if (document.radvd.ULAPrefix.value =="") {
   alert("<% multilang("2391" "LANG_ULA_PREFIX_IP_ADDRESS_CANNOT_BE_EMPTY_FORMAT_IS_IPV6_ADDRESS_FOR_EXAMPLE_FC01"); %>");
   document.radvd.ULAPrefix.focus();
   return false;
  } else {
   if ( validateKeyV6IP(document.radvd.ULAPrefix.value) == 0) {
    alert("<% multilang("2392" "LANG_INVALID_ULA_PREFIX_IP"); %>");
    document.radvd.ULAPrefix.focus();
    return false;
   }
  }
    if (document.radvd.ULAPrefixlen.value =="") {
   alert("<% multilang("2393" "LANG_ULA_PREFIX_LENGTH_CANNOT_BE_EMPTY_FOR_EXAMPLE_64"); %>");
   document.radvd.ULAPrefixlen.focus();
   return false;
  } else {
   if ( checkDigit(document.radvd.ULAPrefixlen.value) == 0) {
    alert("<% multilang("2394" "LANG_INVALID_ULA_PREFIX_LENGTH_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.ULAPrefixlen.focus();
    return false;
   }
  }
  if (document.radvd.ULAPrefixValidTime.value =="") {
   alert("<% multilang("2395" "LANG_ULA_PREFIX_VALID_TIME_CANNOT_BE_EMPTY_VALID_RANGE_IS_600_4294967295"); %>");
   document.radvd.ULAPrefixlen.focus();
   return false;
  } else if ( checkDigit(document.radvd.ULAPrefixValidTime.value) == 0) {
    alert("<% multilang("2396" "LANG_INVALID_ULAPREFIXVALIDTIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.ULAPrefixValidTime.focus();
    return false;
  }
  if (document.radvd.ULAPrefixPreferedTime.value =="") {
   alert("<% multilang("2395" "LANG_ULA_PREFIX_VALID_TIME_CANNOT_BE_EMPTY_VALID_RANGE_IS_600_4294967295"); %>");
   document.radvd.ULAPrefixlen.focus();
   return false;
  } else if ( checkDigit(document.radvd.ULAPrefixPreferedTime.value) == 0) {
    alert("<% multilang("2397" "LANG_INVALID_ULAPREFIXPREFEREDTIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.ULAPrefixPreferedTime.focus();
    return false;
  }
    }
 if (document.radvd.PrefixMode.value == 1) {
  if (document.radvd.prefix_ip.value =="") {
   alert("<% multilang("2398" "LANG_PREFIX_IP_ADDRESS_CANNOT_BE_EMPTY_FORMAT_IS_IPV6_ADDRESS_FOR_EXAMPLE_3FFE_501_FFFF_100"); %>");
   document.radvd.prefix_ip.value = document.radvd.prefix_ip.defaultValue;
   document.radvd.prefix_ip.focus();
   return false;
  } else {
   if ( validateKeyV6IP(document.radvd.prefix_ip.value) == 0) {
    alert("<% multilang("2399" "LANG_INVALID_PREFIX_IP"); %>");
    document.radvd.prefix_ip.focus();
    return false;
   }
  }
  if (document.radvd.prefix_len.value =="") {
   alert("<% multilang("2400" "LANG_PREFIX_LENGTH_CANNOT_BE_EMPTY"); %>");
   document.radvd.prefix_len.value = document.radvd.prefix_len.defaultValue;
   document.radvd.prefix_len.focus();
   return false;
  } else {
   if ( checkDigit(document.radvd.prefix_len.value) == 0) {
    alert("<% multilang("2401" "LANG_INVALID_PREFIX_LENGTH_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.prefix_len.focus();
    return false;
   }
  }
  if (document.radvd.AdvValidLifetimeAct.value.length !=0) {
   if ( checkDigit(document.radvd.AdvValidLifetimeAct.value) == 0) {
    alert("<% multilang("2402" "LANG_INVALID_ADVVALIDLIFETIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.AdvValidLifetimeAct.focus();
    return false;
   }
  }
  if (document.radvd.AdvPreferredLifetimeAct.value.length !=0) {
   if ( checkDigit(document.radvd.AdvPreferredLifetimeAct.value) == 0) {
    alert("<% multilang("2403" "LANG_INVALID_ADVPREFERREDLIFETIME_IT_SHOULD_BE_THE_DECIMAL_NUMBER_0_9"); %>");
    document.radvd.AdvPreferredLifetimeAct.focus();
    return false;
   }
  }
  vlt = parseInt(document.radvd.AdvValidLifetimeAct.value, 10);
  plt = parseInt(document.radvd.AdvPreferredLifetimeAct.value, 10);
  if ( vlt <= plt ) {
   alert("<% multilang("2404" "LANG_ADVVALIDLIFETIME_MUST_BE_GREATER_THAN_ADVPREFERREDLIFETIME"); %>");
   document.radvd.AdvValidLifetimeAct.focus();
   return false;
  }
 }
  if (document.radvd.RDNSS1.value !="") {
   if ( validateKeyV6IP(document.radvd.RDNSS1.value) == 0) {
    alert("<% multilang("2405" "LANG_INVALID_RDNSS1_IP"); %>");
    document.radvd.RDNSS1.focus();
    return false;
   }
  }
  if (document.radvd.RDNSS2.value !="") {
   if ( validateKeyV6IP(document.radvd.RDNSS2.value) == 0) {
    alert("<% multilang("2406" "LANG_INVALID_RDNSS2_IP"); %>");
    document.radvd.RDNSS2.focus();
    return false;
   }
  }
 postTableEncrypt(document.forms[0].postSecurityFlag, document.radvd);
 return true;
}
function updateInput()
{
 document.all.prefixModeDiv.style.display = 'block';
 if (document.radvd.PrefixMode.value == 1) {
  if (document.getElementById)
   document.getElementById('radvdID').style.display = 'block';
   else {
   if (document.layers == false)
    document.all.radvdID.style.display = 'block';
  }
 } else {
  if (document.getElementById)
   document.getElementById('radvdID').style.display = 'none';
  else {
   if (document.layers == false)
    document.all.radvdID.style.display = 'none';
  }
 }
}
function ramodechange(obj)
{
 with ( document.forms[0] )
 {
  if(obj.value == "0")
  {
   if (document.getElementById)
   document.getElementById('radvdID').style.display = 'none';
   else {
    if (document.layers == false)
     document.all.radvdID.style.display = 'none';
   }
  }
  else
  {
   if (document.getElementById)
   document.getElementById('radvdID').style.display = 'block';
   else {
   if (document.layers == false)
    document.all.radvdID.style.display = 'block';
   }
  }
 }
}
function ULASelection()
{
    if(document.radvd.EnableULA[0].checked)
    {
  document.all.ULAdiv.style.display = 'none';
    }
    else
    {
  document.all.ULAdiv.style.display = 'block';
    }
}
function on_init()
{
    if(document.radvd.EnableULA[0].checked)
    {
  document.all.ULAdiv.style.display = 'none';
    }
    else
    {
  document.all.ULAdiv.style.display = 'block';
    }
 document.all.radvdID.style.display = 'block';
 if(document.radvd.PrefixMode.value == 1)
  document.all.radvdID.style.display = 'block';
 else
  document.all.radvdID.style.display = 'none';
}
</SCRIPT>
</head>
<body onLoad="on_init();">
<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>RADVD</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


  <div class="list_header"> 
    <ul>
      <li><a href="/ipv6_enabledisable.asp">IPv6 Enable/Disable</a></li>
      <li><a href="/radvdconf.asp" class="active" >RADVD</a></li>
      <li><a href="/dhcpdv6.asp">DHCPv6</a></li>
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
<div style="padding-top: 7px;"> <p class="intro_title">RADVD <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>
 
 <p class="intro_content"> <% multilang("461" "LANG_THIS_PAGE_IS_USED_TO_SETUP_THE_RADVD_S_CONFIGURATION_OF_YOUR_DEVICE"); %></p>
</div>
<form action=/boaform/formRadvdSetup method=POST name="radvd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("462" "LANG_MAXRTRADVINTERVAL"); %>:</th>
   <td width="70%"><input type="text" name="MaxRtrAdvIntervalAct" size="15" maxlength="15" value=<% getInfo("V6MaxRtrAdvInterval"); %>></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("463" "LANG_MINRTRADVINTERVAL"); %>:</th>
   <td width="70%"><input type="text" name="MinRtrAdvIntervalAct" size="15" maxlength="15" value=<% getInfo("V6MinRtrAdvInterval"); %>></td>
  </tr>
  <tr>
   <th><% multilang("470" "LANG_ADVMANAGEDFLAG"); %>:&nbsp;&nbsp;</th>
   <td>
    <input type="radio" name="AdvManagedFlagAct" value=0 <% checkWrite("radvd_ManagedFlag0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
    <input type="radio" name="AdvManagedFlagAct" value=1 <% checkWrite("radvd_ManagedFlag1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <th><% multilang("471" "LANG_ADVOTHERCONFIGFLAG"); %>:&nbsp;&nbsp;</th>
   <td>
    <input type="radio" name="AdvOtherConfigFlagAct" value=0 <% checkWrite("radvd_OtherConfigFlag0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
    <input type="radio" name="AdvOtherConfigFlagAct" value=1 <% checkWrite("radvd_OtherConfigFlag1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
   </td>
  </tr>
 </table>
</div>
<div style="display:none" class="data_common data_common_notitle">
  <table>
   <tr>
    <th width="30%"><% multilang("464" "LANG_ADVCURHOPLIMIT"); %>:</th>
    <td width="70%"><input type="text" name="AdvCurHopLimitAct" size="15" maxlength="15" value=<% getInfo("V6AdvCurHopLimit"); %>></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("465" "LANG_ADVDEFAULTLIFETIME"); %>:</th>
    <td width="70%"><input type="text" name="AdvDefaultLifetimeAct" size="15" maxlength="15" value=<% getInfo("V6AdvDefaultLifetime"); %>></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("466" "LANG_ADVREACHABLETIME"); %>:</th>
    <td width="70%"><input type="text" name="AdvReachableTimeAct" size="15" maxlength="15" value=<% getInfo("V6AdvReachableTime"); %>></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("467" "LANG_ADVRETRANSTIMER"); %>:</th>
    <td width="70%"><input type="text" name="AdvRetransTimerAct" size="15" maxlength="15" value=<% getInfo("V6AdvRetransTimer"); %>></td>
   </tr>
   <tr>
    <th width="30%"><% multilang("468" "LANG_ADVLINKMTU"); %>:</th>
    <td width="70%"><input type="text" name="AdvLinkMTUAct" size="15" maxlength="15" value=<% getInfo("V6AdvLinkMTU"); %>></td>
   </tr>
   <tr>
    <th><% multilang("469" "LANG_ADVSENDADVERT"); %>: &nbsp;&nbsp;</th>
    <td>
     <input type="radio" name="AdvSendAdvertAct" value=0 <% checkWrite("radvd_SendAdvert0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
     <input type="radio" name="AdvSendAdvertAct" value=1 <% checkWrite("radvd_SendAdvert1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
    </td>
   </tr>
  </div>
 </table>
</div>
<div ID="prefixModeDiv" style="display:none" class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("472" "LANG_PREFIX_MODE"); %>:</th>
   <td>
    <select size="1" name="PrefixMode" id="prefixmode" onChange="ramodechange(this)">
     <OPTION VALUE="0" > <% multilang("169" "LANG_AUTO"); %></OPTION>
     <OPTION VALUE="1" > <% multilang("473" "LANG_MANUAL"); %></OPTION>
    </select>
   </td>
  </tr>
 </table>
</div>
<div ID="radvdID" style="display:none" class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("106" "LANG_PREFIX"); %>:</th>
   <td width="70%"><input type=text name=prefix_ip size=24 maxlength=24 value=<% getInfo("V6prefix_ip"); %>></td>
  </tr>
  <tr>
   <th><% multilang("474" "LANG_PREFIX_LENGTH"); %>:</th>
   <td><input type=text name=prefix_len size=15 maxlength=15 value=<% getInfo("V6prefix_len"); %>></td>
  </tr>
  <tr>
   <th><% multilang("475" "LANG_ADVVALIDLIFETIME"); %>:</th>
   <td><input type=text name=AdvValidLifetimeAct size=15 maxlength=15 value=<% getInfo("V6ValidLifetime"); %>></td>
  </tr>
  <tr>
   <th><% multilang("476" "LANG_ADVPREFERREDLIFETIME"); %>:</th>
   <td><input type=text name=AdvPreferredLifetimeAct size=15 maxlength=15 value=<% getInfo("V6PreferredLifetime"); %>></td>
  </tr>
  <tr>
   <th><% multilang("477" "LANG_ADVONLINK"); %>:</th>
   <td>
    <input type="radio" name="AdvOnLinkAct" value=0 <% checkWrite("radvd_OnLink0"); %>>off&nbsp;&nbsp;
    <input type="radio" name="AdvOnLinkAct" value=1 <% checkWrite("radvd_OnLink1"); %>>on
   </td>
  </tr>
  <tr>
   <th><% multilang("478" "LANG_ADVAUTONOMOUS"); %>:</th>
   <td>
    <input type="radio" name="AdvAutonomousAct" value=0 <% checkWrite("radvd_Autonomous0"); %>>off&nbsp;&nbsp;
    <input type="radio" name="AdvAutonomousAct" value=1 <% checkWrite("radvd_Autonomous1"); %>>on&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <th><% multilang("484" "LANG_RDNSS_1"); %>:</th>
   <td><input type="text" name="RDNSS1" size="48" maxlength="48" value=<% getInfo("V6RDNSS1"); %>></td>
  </tr>
  <tr>
   <th width="30%"><% multilang("485" "LANG_RDNSS_2"); %>:</th>
   <td width="70%"><input type="text" name="RDNSS2" size="48" maxlength="48" value=<% getInfo("V6RDNSS2"); %>></td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
  <table>
   <tr>
    <th width="30%"><% multilang("479" "LANG_ENABLE_ULA"); %>:</th>
    <td>
     <input type="radio" name="EnableULA" value=0 <% checkWrite("radvd_EnableULAFlag0"); %> onClick="ULASelection();"><% multilang("487" "LANG_OFF"); %>
     <input type="radio" name="EnableULA" value=1 <% checkWrite("radvd_EnableULAFlag1"); %> onClick="ULASelection();"><% multilang("486" "LANG_ON"); %>
    </td>
   </tr>
  </table>
</div>
<div ID="ULAdiv" style="display:none" class="data_common data_common_notitle">
  <table>
    <tr>
     <th width="30%"><% multilang("480" "LANG_ULA_PREFIX"); %>:</th>
     <td width="70%"><input type="text" name="ULAPrefix" size="48" maxlength="48" value=<% getInfo("V6ULAPrefix"); %>></td>
    </tr>
    <tr>
     <th width="30%"><% multilang("481" "LANG_ULA_PREFIX_LEN"); %>:</th>
     <td width="70%"><input type="text" name="ULAPrefixlen" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixlen"); %>></td>
    </tr>
    <tr>
     <th width="30%"><% multilang("482" "LANG_ULA_PREFIX_VALID_TIME"); %>:</th>
     <td width="70%"><input type="text" name="ULAPrefixValidTime" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixValidLifetime"); %>></td>
    </tr>
    <tr>
     <th width="30%"><% multilang("483" "LANG_ULA_PREFIX_PREFERED_TIME"); %>:</th>
     <td width="70%"><input type="text" name="ULAPrefixPreferedTime" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixPreferredLifetime"); %>></td>
    </tr>
  </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveChanges()">&nbsp;&nbsp;
 <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
 <input type="hidden" value="/radvdconf.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% initPage("radvd_conf"); %>
</script>
</form>

</body>
</html>

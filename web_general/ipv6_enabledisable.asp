<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><title><% multilang("460" "LANG_IPV6_E"); %> <% multilang("238" "LANG_CONFIGURATION"); %></title>


<!-- ipv6_enabledisable -->
<SCRIPT>
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>

<!-- radvdconf -->
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
     postTableEncrypt(document.forms[1].postSecurityFlag, document.radvd);
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
     with ( document.forms[1] )
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

      on_init2()
    }
    </SCRIPT>

<!-- dhcpdv6 -->
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
       '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit1(this)">&nbsp;&nbsp;'+
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
       '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit1(this)">&nbsp;&nbsp;'+
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
      html+= '<input type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTblv6" onClick="openWindow(\'/dhcptblv6.asp\', \'\')" >'+
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
       '<input type="text" name="Dltime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_default_LTime"); %>"><b> <% multilang("357" "LANG_SECONDS"); %></b>'+
       '</td>'+
       '</tr>'+
       '<tr>'+
       '<th width="30%"><% multilang("758" "LANG_PREFERRED_LIFETIME"); %>:</th>'+
       '<td width="70%">'+
       '<input type="text" name="PFtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_preferred_LTime"); %>"><b> <% multilang("357" "LANG_SECONDS"); %></b>'+
       '</td>'+
       '</tr>'+
       '<tr>'+
       '<th width="30%"><% multilang("759" "LANG_RENEW_TIME"); %>:</th>'+
       '<td width="70%">'+
       '<input type="text" name="RNtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_renew_time"); %>"><b> <% multilang("357" "LANG_SECONDS"); %></b>'+
       '</td>'+
       '</tr>'+
       '<tr>'+
       '<th width="30%"><% multilang("760" "LANG_REBIND_TIME"); %>:</th>'+
       '<td width="70%">'+
       '<input type="text" name="RBtime" size=10 maxlength=9 value="<% getInfo("dhcpv6s_rebind_time"); %>"><b> <% multilang("357" "LANG_SECONDS"); %></b>'+
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
       '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges1(this)" class="link_bg">&nbsp;&nbsp;'+
       '</div>'+
       '<div class="data_common data_common_notitle">'+
       '<table>'+
       '<tr>'+
       '<th width="30%"><% multilang("419" "LANG_DOMAIN"); %>:</th>'+
       '<td><input type="text" name="domainStr" size="15" maxlength="50">&nbsp;&nbsp;</td>'+
       '<td><input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addDomain" class="inner_btn" onClick="return on_submit1(this)">&nbsp;&nbsp;</td>'+
       '</tr>'+
       '</table>'+
       '</div>'+
       '<div class="column">'+
       '<div class="column_title">'+
       '<div class="column_title_left"></div>'+
       '<p><% multilang("762" "LANG_DOMAIN_SEARCH_TABLE"); %></p>'+
       '<div class="column_title_right"></div>'+
       '</div>'+
       '<div class="data_common data_vertical">'+
       '<table>'+
       <% showDhcpv6SDOMAINTable(); %>
       '</table>'+
       '</div></div>'+
       '<div class="btn_ctl">'+
       '<input type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delDomain" class="link_bg" onClick="return on_submit1(this)">&nbsp;&nbsp;'+
       '<input type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllDomain" class="link_bg" onClick="return on_submit1(this)">&nbsp;&nbsp;&nbsp;'+
       '</div>'+
       '<div class="data_common data_common_notitle">'+
       '<table>'+
       '<tr>'+
       '<th width="30%"><% multilang("763" "LANG_NAME_SERVER"); %> IP:</th>'+
       '<td><input type="text" name="nameServerIP" size="15" maxlength="40">&nbsp;&nbsp;</td>'+
       '<td><input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addNameServer" class="inner_btn" onClick="return on_submit1(this)">&nbsp;&nbsp;</td>'+
       '</tr>'+
       '</table>'+
       '</div>'+
       '<div class="column">'+
       '<div class="column_title">'+
       '<div class="column_title_left"></div>'+
       '<p><% multilang("764" "LANG_NAME_SERVER_TABLE"); %></p>'+
       '<div class="column_title_right"></div>'+
       '</div>'+
       '<div class="data_common data_vertical">'+
       '<table>'+
       <% showDhcpv6SNameServerTable(); %>
       '</table>'+
       '</div>'+
       '<div class="btn_ctl">'+
       '<input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delNameServer" <% multilang("764" "LANG_NAME_SERVER_TABLE"); %> onClick="return on_submit1(this)">&nbsp;&nbsp;'+
       '<input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllNameServer" <% multilang("764" "LANG_NAME_SERVER_TABLE"); %> onClick="return on_submit1(this)">&nbsp;&nbsp;&nbsp;'+
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
       '<input type="button" value="<% multilang("355" "LANG_SHOW_CLIENT"); %>" name="dhcpClientTblv6" class="link_bg" onClick="openWindow(\'/dhcptblv6.asp\', \'\')" >&nbsp;&nbsp;'+
       '<input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" class="link_bg" onClick="return on_submit1(this)"></tr>'+
       '</div>';
    }
    function on_submit1(obj)
    {
     obj.isclick = 1;
     postTableEncrypt(document.forms[2].postSecurityFlag, document.forms[2]);
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
    function saveChanges1(obj)
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

<!-- app_mldProxy -->
<SCRIPT>
    var robust_count=0;
    var query_interval=0;
    var query_response_interval=0;
    var last_member_query_response_interval=0;
    var multi_wan_proxy=0;
    <% mldproxyinit(); %>
    function on_init1()
    {
     with(document.forms[3])
     {
      mld_robust_count.value = robust_count;
      mld_query_interval.value = query_interval;
      mld_query_response_interval.value = query_response_interval;
      mld_last_member_query_response_interval.value = last_member_query_response_interval;
     }
    }
    function proxySelection()
    {
     if(document.mldproxy.daemon[0].checked && (multi_wan_proxy==0))
     {
      document.mldproxy.ext_if.disabled = true;
      document.mldproxy.mld_robust_count.disabled = true;
      document.mldproxy.mld_query_interval.disabled = true;
      document.mldproxy.mld_query_response_interval.disabled = true;
      document.mldproxy.mld_last_member_query_response_interval.disabled = true;
     }
     else
     {
      document.mldproxy.ext_if.disabled = false;
      document.mldproxy.mld_robust_count.disabled = false;
      document.mldproxy.mld_query_interval.disabled = false;
      document.mldproxy.mld_query_response_interval.disabled = false;
      document.mldproxy.mld_last_member_query_response_interval.disabled = false;
     }
     if(multi_wan_proxy == 1)
     {
        document.getElementById("proxy_enable").style="display:none";
        document.getElementById("proxy_wan_if").style="display:none";
      }
      else
      {
        document.getElementById("proxy_enable").style="display:";
        document.getElementById("proxy_wan_if").style="display:";
      }
    }
    function on_submit2()
    {
     document.forms[3].save.isclick = 1;
     postTableEncrypt(document.forms[3].postSecurityFlag, document.forms[3]);
     return true;
    }
    </SCRIPT>

<!-- app_mld_snooping -->
<SCRIPT>
    function on_submit3(obj)
    {
     obj.isclick = 1;
     postTableEncrypt(document.forms[4].postSecurityFlag, document.forms[4]);
     return true;
    }
    </SCRIPT>

<!-- routing_ipv6 -->
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
     postTableEncrypt(document.forms[5].postSecurityFlag, document.forms[5]);
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
      postTableEncrypt(document.forms[5].postSecurityFlag, document.forms[5]);
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
      postTableEncrypt(document.forms[5].postSecurityFlag, document.forms[5]);
      return true;
     }
    }
    </SCRIPT>

<!-- fw-ipportfilter-v6_IfId_rg -->
<script>
    function skip () { this.blur(); }
    function on_init2()
    {
     directionSelection();
     document.formFilterAdd.saType.selectedIndex = 0;
     saTypeSelect();
     document.formFilterAdd.daType.selectedIndex = 0;
     daTypeSelect();
    }
    function protocolSelection()
    {
     if ( document.formFilterAdd.protocol.selectedIndex == 2 )
     {
      document.formFilterAdd.sfromPort.disabled = true;
      document.formFilterAdd.stoPort.disabled = true;
      document.formFilterAdd.dfromPort.disabled = true;
      document.formFilterAdd.dtoPort.disabled = true;
     }
     else
     {
      document.formFilterAdd.sfromPort.disabled = false;
      document.formFilterAdd.stoPort.disabled = false;
      document.formFilterAdd.dfromPort.disabled = false;
      document.formFilterAdd.dtoPort.disabled = false;
     }
    }
    function directionSelection()
    {
     if ( document.formFilterAdd.dir.selectedIndex == 0 )
     {
      document.formFilterAdd.sIfId6Start.disabled = false;
      document.formFilterAdd.dIfId6Start.disabled = true;
      document.formFilterAdd.dIfId6Start.value = "";
     }
     else
     {
      document.formFilterAdd.sIfId6Start.disabled = true;
      document.formFilterAdd.sIfId6Start.value = "";
      document.formFilterAdd.dIfId6Start.disabled = false;
     }
    }
    function saTypeSelect()
    {
     if(document.formFilterAdd.saType.selectedIndex == 0)
     {
      document.getElementById("sifid").style.display = "none";
      document.getElementById("sip6").style.display = "";
      document.getElementById("sip6prefix").style.display = "";
     }
     else if(document.formFilterAdd.saType.selectedIndex == 1)
     {
      document.getElementById("sifid").style.display = "";
      document.getElementById("sip6").style.display = "none";
      document.getElementById("sip6prefix").style.display = "none";
     }
    }
    function daTypeSelect()
    {
     if(document.formFilterAdd.daType.selectedIndex == 0)
     {
      document.getElementById("difid").style.display = "none";
      document.getElementById("dip6").style.display = "";
      document.getElementById("dip6prefix").style.display = "";
     }
     else if(document.formFilterAdd.daType.selectedIndex == 1)
     {
      document.getElementById("difid").style.display = "";
      document.getElementById("dip6").style.display = "none";
      document.getElementById("dip6prefix").style.display = "none";
     }
    }
    function checkIpv6AddressPrefixEmpty(type)
    {
     if(type&1)
     {
      if (document.formFilterAdd.sip6Start.value == "")
       return true;
     }
     else if(type&2)
     {
      if (document.formFilterAdd.dip6Start.value == "")
       return true;
     }
    }
    function checkIpv6AddressPrefix(type)
    {
     if(type&1)
     {
      with ( document.forms[7] ) {
       if(sip6Start.value != ""){
        if (! isGlobalIpv6Address(sip6Start.value) ){
         alert('<% multilang("2226" "LANG_INVALID_SOURCE_IPV6_START_ADDRESS"); %>');
         document.formFilterAdd.sip6Start.focus();
         return false;
        }
        if ( sip6PrefixLen.value != "" ) {
         if ( validateKey( document.formFilterAdd.sip6PrefixLen.value ) == 0 ) {
          alert('<% multilang("2227" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_9"); %>');
          document.formFilterAdd.sip6PrefixLen.focus();
          return false;
         }
         var prefixlen= getDigit(sip6PrefixLen.value, 1);
         if (prefixlen > 64 || prefixlen < 0) {
          alert('<% multilang("2228" "LANG_INVALID_SOURCE_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_64"); %>');
          document.formFilterAdd.sip6PrefixLen.focus();
          return false;
         }
        }
       }
      }
     }
     if(type&2)
     {
      with ( document.forms[7] ) {
       if(dip6Start.value != ""){
        if (! isGlobalIpv6Address(dip6Start.value) ){
         alert('<% multilang("2230" "LANG_INVALID_DESTINATION_IPV6_START_ADDRESS"); %>');
         document.formFilterAdd.dip6Start.focus();
         return false;
        }
        if ( dip6PrefixLen.value != "" ) {
         if ( validateKey( document.formFilterAdd.dip6PrefixLen.value ) == 0 ) {
          alert('<% multilang("2231" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_9"); %>');
          document.formFilterAdd.dip6PrefixLen.focus();
          return false;
         }
         var prefixlen= getDigit(dip6PrefixLen.value, 1);
         if (prefixlen > 64 || prefixlen < 0) {
          alert('<% multilang("2232" "LANG_INVALID_DESTINATION_IPV6_PREFIX_LENGTH_IT_MUST_BE_0_64"); %>');
          document.formFilterAdd.dip6PrefixLen.focus();
          return false;
         }
        }
       }
      }
     }
     return true;
    }
    function checkIpv6InterfaceIDEmpty(type)
    {
     if (type&1)
     {
      if(document.formFilterAdd.sIfId6Start.value == "")
       return true;
     }
     if (type&2)
     {
      if(document.formFilterAdd.dIfId6Start.value == "")
       return true;
     }
    }
    function checkIpv6InterfaceID(type)
    {
     var ifid_regex = /[0-9A-F]{1,4}:[0-9A-F]{1,4}:[0-9A-F]{1,4}:[0-9A-F]{1,4}/i;
     with ( document.forms[7] )
     {
      if(type&1)
      {
       if(sIfId6Start.value != "")
       {
        if (!sIfId6Start.value.match(ifid_regex) ){
         alert('<% multilang("2235" "LANG_INVALID_SOURCE_IPV6_INTERFACE_ID_START_ADDRESS"); %>');
         document.formFilterAdd.sIfId6Start.focus();
         return false;
        }
       }
      }
      if(type&2)
      {
       if(dIfId6Start.value != "")
       {
        if (!dIfId6Start.value.match(ifid_regex) ){
         alert('<% multilang("2230" "LANG_INVALID_DESTINATION_IPV6_START_ADDRESS"); %>');
         document.formFilterAdd.dIfId6Start.focus();
         return false;
        }
       }
      }
     }
     return true;
    }
    function checkIpv6PortEmpty(type)
    {
     if ( (type&1) && (document.formFilterAdd.sfromPort.value =="" || document.formFilterAdd.stoPort.value == ""))
      return true;
     if ( (type&2) && (document.formFilterAdd.dfromPort.value =="" || document.formFilterAdd.dtoPort.value == ""))
      return true;
    }
    function checkIpv6Port(type)
    {
     if(type&1)
     {
      if ( document.formFilterAdd.sfromPort.value!="" )
      {
       if ( validateKey( document.formFilterAdd.sfromPort.value ) == 0 )
       {
        alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
        document.formFilterAdd.sfromPort.focus();
        return false;
       }
       d1 = getDigit(document.formFilterAdd.sfromPort.value, 1);
       if (d1 > 65535 || d1 < 1)
       {
        alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
        document.formFilterAdd.sfromPort.focus();
        return false;
       }
      }
      if ( document.formFilterAdd.stoPort.value!="" )
      {
       if ( validateKey( document.formFilterAdd.stoPort.value ) == 0 )
       {
        alert('<% multilang("2175" "LANG_INVALID_SOURCE_PORT"); %>');
        document.formFilterAdd.stoPort.focus();
        return false;
       }
       d1 = getDigit(document.formFilterAdd.stoPort.value, 1);
       if (d1 > 65535 || d1 < 1)
       {
        alert('<% multilang("2176" "LANG_INVALID_SOURCE_PORT_NUMBER"); %>');
        document.formFilterAdd.stoPort.focus();
        return false;
       }
      }
     }
     if(type&2)
     {
      if ( document.formFilterAdd.dfromPort.value!="" )
      {
         if ( validateKey( document.formFilterAdd.dfromPort.value ) == 0 )
         {
        alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
        document.formFilterAdd.dfromPort.focus();
        return false;
         }
         d1 = getDigit(document.formFilterAdd.dfromPort.value, 1);
         if (d1 > 65535 || d1 < 1)
         {
        alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
        document.formFilterAdd.dfromPort.focus();
        return false;
         }
      }
      if ( document.formFilterAdd.dtoPort.value!="" )
      {
       if ( validateKey( document.formFilterAdd.dtoPort.value ) == 0 )
       {
         alert('<% multilang("2177" "LANG_INVALID_DESTINATION_PORT"); %>');
         document.formFilterAdd.dtoPort.focus();
         return false;
       }
       d1 = getDigit(document.formFilterAdd.dtoPort.value, 1);
       if (d1 > 65535 || d1 < 1)
       {
         alert('<% multilang("2178" "LANG_INVALID_DESTINATION_PORT_NUMBER"); %>');
         document.formFilterAdd.dtoPort.focus();
         return false;
       }
      }
     }
     return true;
    }
    function addClick1(obj)
    {
     var checkAddressType = 0;
     var checkIfidType = 0;
     var checkPortType = 3;
     var Src_Dst_All_Empty = 0;
     if(document.formFilterAdd.saType.selectedIndex == 0)
      checkAddressType += 1;
     if(document.formFilterAdd.daType.selectedIndex == 0)
      checkAddressType += 2;
     if(document.formFilterAdd.saType.selectedIndex == 1)
      checkIfidType += 1;
     if(document.formFilterAdd.daType.selectedIndex == 1)
      checkIfidType += 2;
     if(document.formFilterAdd.protocol.selectedIndex == 2)
      checkPortType = 0;
     if(checkAddressType != 0 && checkIfidType != 0)
     {
      if(checkIpv6AddressPrefixEmpty(checkAddressType)&& checkIpv6InterfaceIDEmpty(checkIfidType))
       Src_Dst_All_Empty = 1;
     }
     else if(checkAddressType != 0)
     {
      if(checkIpv6AddressPrefixEmpty(1) && checkIpv6AddressPrefixEmpty(2))
       Src_Dst_All_Empty = 1;
     }
     else if(checkIfidType != 0)
     {
      if(checkIpv6InterfaceIDEmpty(1) && checkIpv6InterfaceIDEmpty(2))
       Src_Dst_All_Empty = 1;
     }
     if(Src_Dst_All_Empty == 1)
     {
      if(checkPortType == 0)
      {
       alert('<% multilang("2234" "LANG_INPUT_FILTER_RULE_IS_NOT_VALID"); %>');
       return false;
      }
      else
      {
       if(checkIpv6PortEmpty(1)&& checkIpv6PortEmpty(2))
       {
        alert('<% multilang("2234" "LANG_INPUT_FILTER_RULE_IS_NOT_VALID"); %>');
        return false;
       }
      }
     }
     if(checkAddressType != 0 && checkIpv6AddressPrefix(checkAddressType) == false)
      return false;
     if(checkIfidType != 0 && checkIpv6InterfaceID(checkIfidType) == false)
      return false;
     if(checkPortType !=0 && checkIpv6Port(checkPortType) == false)
      return false;
     obj.isclick = 1;
     postTableEncrypt(document.formFilterAdd.postSecurityFlag, document.formFilterAdd);
     return true;
    }
    function disableDelButton()
    {
      if (verifyBrowser() != "ns") {
     disableButton(document.formFilterDel.deleteSelFilterIpPort);
     disableButton(document.formFilterDel.deleteAllFilterIpPort);
      }
    }
    function on_submit4(obj)
    {
     obj.isclick = 1;
     postTableEncrypt(document.formFilterDefault.postSecurityFlag, document.formFilterDefault);
     return true;
    }
    function deleteClick1(obj)
    {
     if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
      return false;
     }
     else{
      obj.isclick = 1;
      postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
      return true;
     }
    }
    function deleteAllClick1(obj)
    {
     if ( !confirm('Do you really want to delete the all entries?') ) {
      return false;
     }
     else{
      obj.isclick = 1;
      postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
      return true;
     }
    }
    </script>
      <style>
.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
.left-field{
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1276px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
        accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</HEAD>
<body onLoad="on_init();">
                        <div class="">

                          <div class="scoop-inner-content">
									  	
									  	
									  
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/><% multilang("5" "LANG_IPV6"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"> <% multilang("459" "LANG_THIS_PAGE_BE_USED_TO_CONFIGURE_IPV6_ENABLE_DISABLE"); %></p>
 </div>
 </div>
<form id="form" action=/boaform/admin/formIPv6EnableDisable method=POST name="ipv6enabledisable">
<div class="data_common data_common_notitle">
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("5" "LANG_IPV6"); %>:</label>
    <input type="radio" class="right-field-radio"  value="0" name="ipv6switch" <% checkWrite("ipv6enabledisable0"); %> ><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" class="right-field-radio"  value="1" name="ipv6switch"<% checkWrite("ipv6enabledisable1"); %> ><% multilang("248" "LANG_ENABLE"); %>
   </div>
   </div>
</div>
<hr class="margin_adjs" />
<div class="btn_ctl form-footer">
 <input class="link_bg btn orange_btn " type="submit" class="button" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit()">
 <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>

<!-- radvd -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">RADVD <% multilang("238" "LANG_CONFIGURATION"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"><% multilang("461" "LANG_THIS_PAGE_IS_USED_TO_SETUP_THE_RADVD_S_CONFIGURATION_OF_YOUR_DEVICE"); %>
       </div>
      </div>
   <form action=/boaform/formRadvdSetup method=POST name="radvd">
   <div class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("462" "LANG_MAXRTRADVINTERVAL"); %>:</label>
      <input type="text" class="right-field custom-select" name="MaxRtrAdvIntervalAct" size="15" maxlength="15" value=<% getInfo("V6MaxRtrAdvInterval"); %>>
      </div>
      </div>
       <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("463" "LANG_MINRTRADVINTERVAL"); %>:</label>
      <input class="right-field custom-select"  type="text" name="MinRtrAdvIntervalAct" size="15" maxlength="15" value=<% getInfo("V6MinRtrAdvInterval"); %>>
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("470" "LANG_ADVMANAGEDFLAG"); %>:&nbsp;&nbsp;</label>
      

       <input class="right-field-radio"  type="radio" name="AdvManagedFlagAct" value=0 <% checkWrite("radvd_ManagedFlag0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
       <input  class="right-field-radio" type="radio" name="AdvManagedFlagAct" value=1 <% checkWrite("radvd_ManagedFlag1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
      </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("471" "LANG_ADVOTHERCONFIGFLAG"); %>:&nbsp;&nbsp;</label>
     
       <input class="right-field-radio"  type="radio" name="AdvOtherConfigFlagAct" value=0 <% checkWrite("radvd_OtherConfigFlag0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
       <input class="right-field-radio"  type="radio" name="AdvOtherConfigFlagAct" value=1 <% checkWrite("radvd_OtherConfigFlag1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
     </div>
     </div>
   </div>
   <div style="display:none" class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("464" "LANG_ADVCURHOPLIMIT"); %>:</label>
       <input class="right-field custom-select" type="text" name="AdvCurHopLimitAct" size="15" maxlength="15" value=<% getInfo("V6AdvCurHopLimit"); %>>
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("465" "LANG_ADVDEFAULTLIFETIME"); %>:</label>
       <input class="right-field custom-select" type="text" name="AdvDefaultLifetimeAct" size="15" maxlength="15" value=<% getInfo("V6AdvDefaultLifetime"); %>>
      </div>
      </div>
      <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("466" "LANG_ADVREACHABLETIME"); %>:</label>
       <input class="right-field custom-select" type="text" name="AdvReachableTimeAct" size="15" maxlength="15" value=<% getInfo("V6AdvReachableTime"); %>>
      </div>
      </div>
       <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("467" "LANG_ADVRETRANSTIMER"); %>:</label>
       <input class="right-field custom-select"  type="text" name="AdvRetransTimerAct" size="15" maxlength="15" value=<% getInfo("V6AdvRetransTimer"); %>>
      </div>
      </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("468" "LANG_ADVLINKMTU"); %>:</label>
   <input class="right-field custom-select"  type="text" name="AdvLinkMTUAct" size="15" maxlength="15" value=<% getInfo("V6AdvLinkMTU"); %>>
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("469" "LANG_ADVSENDADVERT"); %>: &nbsp;&nbsp;</label>
       <input class="right-field-radio" type="radio" name="AdvSendAdvertAct" value=0 <% checkWrite("radvd_SendAdvert0"); %>><% multilang("487" "LANG_OFF"); %>&nbsp;&nbsp;
        <input class="right-field-radio" type="radio" name="AdvSendAdvertAct" value=1 <% checkWrite("radvd_SendAdvert1"); %>><% multilang("486" "LANG_ON"); %>&nbsp;&nbsp;
     </div>
     </div>
     </div>
    
   </div>
   <div ID="prefixModeDiv" style="display:none" class="data_common data_common_notitle">
     <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("472" "LANG_PREFIX_MODE"); %>:</label>
    <select class="right-field custom-select" size="1" name="PrefixMode" id="prefixmode" onChange="ramodechange(this)">
        <OPTION VALUE="0" > <% multilang("169" "LANG_AUTO"); %></OPTION>
        <OPTION VALUE="1" > <% multilang("473" "LANG_MANUAL"); %></OPTION>
       </select>
     </div>
     </div>
   </div>
   <div ID="radvdID" style="display:none" class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("106" "LANG_PREFIX"); %>:</label>
      
      <input class="right-field custom-select" type=text name=prefix_ip size=24 maxlength=24 value=<% getInfo("V6prefix_ip"); %>>
      </div>
      </div>



     <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("474" "LANG_PREFIX_LENGTH"); %>:</label>
      <input class="right-field custom-select" type=text name=prefix_len size=15 maxlength=15 value=<% getInfo("V6prefix_len"); %>>
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("475" "LANG_ADVVALIDLIFETIME"); %>:</label>
     <input class="right-field custom-select"  type=text name=AdvValidLifetimeAct size=15 maxlength=15 value=<% getInfo("V6ValidLifetime"); %>>
      </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("476" "LANG_ADVPREFERREDLIFETIME"); %>:</label>
    <input class="right-field custom-select" type=text name=AdvPreferredLifetimeAct size=15 maxlength=15 value=<% getInfo("V6PreferredLifetime"); %>>
      </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("477" "LANG_ADVONLINK"); %>:</label>
       <input class="right-field-radio" type="radio" name="AdvOnLinkAct" value=0 <% checkWrite("radvd_OnLink0"); %>>off&nbsp;&nbsp;
       <input  class="right-field-radio" type="radio" name="AdvOnLinkAct" value=1 <% checkWrite("radvd_OnLink1"); %>>on
   </div>
      </div>
         <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("478" "LANG_ADVAUTONOMOUS"); %>:</label>
    
       <input  class="right-field-radio" type="radio" name="AdvAutonomousAct" value=0 <% checkWrite("radvd_Autonomous0"); %>>off&nbsp;&nbsp;
       <input   class="right-field-radio" type="radio" name="AdvAutonomousAct" value=1 <% checkWrite("radvd_Autonomous1"); %>>on&nbsp;&nbsp;
        </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("484" "LANG_RDNSS_1"); %>:</label>
     <input type="text" class="right-field custom-select" ame="RDNSS1" size="48" maxlength="48" value=<% getInfo("V6RDNSS1"); %>>
     </div>
      </div>
  
      <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("485" "LANG_RDNSS_2"); %>:</label>
      <input type="text"  class="right-field custom-select" name="RDNSS2" size="48" maxlength="48" value=<% getInfo("V6RDNSS2"); %>>
   </div>
   </div>
   </div>
   <div class="data_common data_common_notitle">
     <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("479" "LANG_ENABLE_ULA"); %>:</label>
      
        <input class="right-field-radio" type="radio" name="EnableULA" value=0 <% checkWrite("radvd_EnableULAFlag0"); %> onClick="ULASelection();"><% multilang("487" "LANG_OFF"); %>
        <input class="right-field-radio" type="radio" name="EnableULA" value=1 <% checkWrite("radvd_EnableULAFlag1"); %> onClick="ULASelection();"><% multilang("486" "LANG_ON"); %>
  </div>
  </div>
   </div>
   <div ID="ULAdiv" style="display:none" class="data_common data_common_notitle">
     <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("480" "LANG_ULA_PREFIX"); %>:</label>
        <input class="right-field custom-select" type="text" name="ULAPrefix" size="48" maxlength="48" value=<% getInfo("V6ULAPrefix"); %>>
       </div>
      </div>
          <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("481" "LANG_ULA_PREFIX_LEN"); %>:</label>
      <input class="right-field custom-select"  type="text" name="ULAPrefixlen" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixlen"); %>>
        </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("482" "LANG_ULA_PREFIX_VALID_TIME"); %>:</label>
       
        <input class="right-field custom-select" type="text" name="ULAPrefixValidTime" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixValidLifetime"); %>>
        </div>
      </div>
         <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field"><% multilang("483" "LANG_ULA_PREFIX_PREFERED_TIME"); %>:</label>
       <input class="right-field custom-select" type="text" name="ULAPrefixPreferedTime" size="10" maxlength="10" value=<% getInfo("V6ULAPrefixPreferredLifetime"); %>>
      </div>
      </div>
   </div>
   <hr class="margin_adjs" />
   <div class="btn_ctl form-footer">
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return saveChanges()">&nbsp;&nbsp;
    <!--input type="reset" value="Undo" name="reset" onClick="resetClick()"-->
    <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <script>
    <% initPage("radvd_conf"); %>
   </script>
   </form>

<!-- dhcpdv6 -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">DHCPv6 <% multilang("375" "LANG_SETTINGS"); %></h2>
  </div>
 </div>
  <div class="col-md-12 form-group">
          <div class="custom-control">
          <p class="left-field-para"> <% multilang("766" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_DHCPV6_SERVER_AND_DHCPV6_RELAY"); %></p>
          </div>
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
    <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
    <script>
     <% initPage("dhcpv6-mode"); %>
     showDhcpv6Svr();
    </script>
   </form>
   <br><br>

   <!-- app_mldProxy -->
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px"><% multilang("26" "LANG_MLD_PROXY"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>
  </div>
 </div>
  <div class="col-md-12 form-group">
          <div class="custom-control">
          <p class="left-field-para"> <% multilang("422" "LANG_THIS_PAGE_BE_USED_TO_CONFIGURE_MLD_PROXY"); %><  /p>
          </div>
        </div>
 
   <form id="form" action=/boaform/admin/formMLDProxy method=POST name="mldproxy">
    <div class="data_common data_common_notitle">
       <div class="col-md-12 form-group" id="proxy_enable">
        <div class="custom-control">
       <label class="left-field"><% multilang("26" "LANG_MLD_PROXY"); %>:</label>
  <input class="right-field-radio" type="radio" value="0" name="daemon" <% checkWrite("mldproxy0"); %> onClick="proxySelection()"><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
       <input class="right-field-radio" type="radio" value="1" name="daemon" <% checkWrite("mldproxy1"); %> onClick="proxySelection()"><% multilang("248" "LANG_ENABLE"); %>
      </div>

      </div>
      <div class="col-md-12 form-group"   id="proxy_wan_if">
       <div class="custom-control">
       <label class="left-field"><% multilang("424" "LANG_WAN_INTERFACE"); %>:&nbsp;</label>
       <select class="right-field custom-select"  name="ext_if" <% checkWrite("mldproxy0d"); %>> <% if_wan_list("rtv6"); %> </select> 
      </div>
      </div>
      <div class="col-md-12 form-group">
       <div class="custom-control">

        <label class="left-field">Robust Count:</label>
      
        <input class="right-field custom-select" type="text" name="mld_robust_count" size="10" maxlength="15">
      
        </div>
      </div>
       <div class="col-md-12 form-group">
       <div class="custom-control">

        <label class="left-field">Query Interval:</label>
    
        <input class="right-field custom-select"  type="text" name="mld_query_interval" size="10" maxlength="15">(Second)
      </div>
      </div>
       <div class="col-md-12 form-group">
       <div class="custom-control">

        <label class="left-field">Query Response Interval:</label>
        <input  class="right-field custom-select"  type="text" name="mld_query_response_interval" size="10" maxlength="15">(millisecond)
      </div>
      </div>
      <div class="col-md-12 form-group">
       <div class="custom-control">

        <label class="left-field">Response Interval of Last Group Member:</label>
      
        <input class="right-field custom-select"  type="text" name="mld_last_member_query_response_interval" size="10" maxlength="15">(Second)
     
      </div>
      </div>
    </div>
    <hr class="margin_adjs" />  
    <div class="btn_ctl form-footer">
     <input class="link_bg btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return on_submit2()">
     <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
     <input type="hidden" name="postSecurityFlag" value="">
    </div>
   </form>
   <script>
    on_init1();
    initUpnpDisable = document.mldproxy.daemon[0].checked;
    ifIdx = <% getInfo("mldproxy-ext-itf"); %>;
    document.mldproxy.ext_if.selectedIndex = -1;
    for( i = 0; i < document.mldproxy.ext_if.options.length; i++ )
    {
     if( ifIdx == document.mldproxy.ext_if.options[i].value )
      document.mldproxy.ext_if.selectedIndex = i;
    }
    proxySelection();
   </script>
   <br><br>

   <!-- app_mld_snooping -->
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px"><% multilang("27" "LANG_MLD_SNOOPING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>
  </div>
 </div>
  <div class="col-md-12 form-group">
          <div class="custom-control">
          <p class="left-field-para"> <% multilang("425" "LANG_THIS_PAGE_BE_USED_TO_CONFIGURE_MLD_SNOOPING"); %></p>
          </div>
        </div>
  
   <form id="form" action=/boaform/formMLDSnooping method=POST name="mldsnoop">
    <div class="data_common data_common_notitle">
   <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("27" "LANG_MLD_SNOOPING"); %>:</label>

        <input class="right-field-radio" type="radio" name="snoop" value=0><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
        <input class="right-field-radio" type="radio" name="snoop" value=1><% multilang("248" "LANG_ENABLE"); %>
      </div>
      </div>
    </div>
    <hr class="margin_adjs" />  
    <div class="btn_ctl form-footer">
     <input class="link_bg btn orange_btn " type="submit" name="apply" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit3(this)">
     <input type="hidden" name="submit-url" value="/ipv6_enabledisable.asp">
     <input type="hidden" name="postSecurityFlag" value="">
    </div>
    <script>
     <% initPage("mldsnooping"); %>
    </script>
   </form>
   <br><br>

   <!-- routing_ipv6 -->
   <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px"><% multilang("5" "LANG_IPV6"); %> <% multilang("489" "LANG_STATIC"); %> <% multilang("39" "LANG_ROUTING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h2>
  </div>
 </div>
  <div class="col-md-12 form-group">
          <div class="custom-control">
          <p class="left-field-para"><% multilang("488" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_IPV6_STATIC_ROUTING_INFORMATION_HERE_YOU_CAN_ADD_DELETE_STATIC_IP_ROUTES"); %></p>
          </div>
        </div>

   <form action=/boaform/formIPv6Routing method=POST name="route">
   <div class="data_common data_common_notitle">
   <div class="col-md-12 form-group">
          <div class="custom-control">
         <label class="left-field" ><% multilang("248" "LANG_ENABLE"); %>:</label>
         <input class="right-field-checkbox" type="checkbox" name="enable" value="1" checked>
  </div>
  </div>
     <div class="col-md-12 form-group">
          <div class="custom-control">  

          <label class="left-field" ><% multilang("390" "LANG_DESTINATION"); %>:</label>
         <input class="right-field custom-select" type="text" name="destNet" size="40" maxlength="40">
     </div>
     </div>
      <div class="col-md-12 form-group">
          <div class="custom-control"> 
       <label class="left-field" ><% multilang("451" "LANG_NEXT_HOP"); %>:</label>
        <input  class="right-field custom-select" type="text" name="nextHop" size="40" maxlength="48">
     </div>
      </div>
    <div class="col-md-12 form-group">
          <div class="custom-control"> 
       <label class="left-field" ><% multilang("452" "LANG_METRIC"); %>:</label>
         
         <input class="right-field custom-select"  type="text" name="metric" size="5" maxlength="5">
     </div>
      </div>

   <div class="col-md-12 form-group">
          <div class="custom-control"> 
       <label class="left-field" ><% multilang("70" "LANG_INTERFACE"); %>:</label>
       
        <select class="right-field custom-select" name="interface">
             <% if_wan_list("rtv6-any-vpn"); %>
          </select>
     </div>
      </div>

     <input type="hidden" value="" name="select_id">
  
   </div>
   <hr class="margin_adjs" />
   <div class="btn_ctl form-footer">
     <input class="link_bg btn orange_btn" type="submit" value="<% multilang("453" "LANG_ADD_ROUTE"); %>" name="addV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
     <input class="link_bg btn orange_btn" type="submit" value="<% multilang("454" "LANG_UPDATE"); %>" name="updateV6Route" onClick="return addClick(this)">&nbsp;&nbsp;
     <input class="link_bg btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="delV6Route" onClick="return deleteClick(this)">&nbsp;&nbsp;
     <input class="link_bg btn orange_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="delAllV6Route" onClick="return deleteAllClick(this)">&nbsp;&nbsp;
     <input class="link_bg btn orange_btn" type="button" value="<% multilang("455" "LANG_SHOW_ROUTES"); %>" name="showV6Route" onClick="routeClick('/routetbl_ipv6.asp')">
   </div>
   <div class="data_common data_common_notitle">
   <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
     <% showIPv6StaticRoute(); %>
   </table>
   </div>
         <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
         <input type="hidden" name="postSecurityFlag" value="">
   </form>

   <!-- fw-ipportfilter-v6_IfId_rg -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">IPv6 IP/Port <% multilang("379" "LANG_FILTERING"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
        <div class="custom-control">
        <p class="left-field-para"> <% multilang("380" "LANG_PAGE_DESC_DATA_PACKET_FILTER_TABLE"); %>
       </p>
       </div>
      </div>
  
   <form action=/boaform/formFilterV6 method=POST name="formFilterDefault">
   <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("395" "LANG_DEFAULT_ACTION"); %>:&nbsp;&nbsp;</label>
      <input class="right-field-radio" type="radio" name="outAct" value=0 <% checkWrite("v6_ipf_out_act0"); %>><% multilang("382" "LANG_DENY"); %>&nbsp;&nbsp;
          <input class="right-field-radio" type="radio" name="outAct" value=1 <% checkWrite("v6_ipf_out_act1"); %>><% multilang("383" "LANG_ALLOW"); %>&nbsp;&nbsp;
      <input class="btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setDefaultAction" onClick="return on_submit4(this)">&nbsp;&nbsp;
       <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
       <input type="hidden" name="postSecurityFlag" value="">
     </div>
     </div>
     </div> 
   
   
   </form>
   <form action=/boaform/formFilterV6 method=POST name="formFilterAdd">
   <div class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field" ><% multilang("385" "LANG_DIRECTION"); %>: </label>
    
       <select  class="right-field custom-select" name="dir" onChange="directionSelection()">
        <option select value=0><% multilang("386" "LANG_OUTGOING"); %></option>
        <option value=1><% multilang("387" "LANG_INCOMING"); %></option>
       </select>&nbsp;&nbsp;
      </div>
      </div>
     <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field" ><% multilang("95" "LANG_PROTOCOL"); %>: </label>
     
       <select class="right-field custom-select" name="protocol" onChange="protocolSelection()">
       <option select value=1>TCP</option>
       <option value=2>UDP</option>
       <option value=3>ICMPV6</option>
       </select>&nbsp;&nbsp;
    </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field" ><% multilang("388" "LANG_RULE_ACTION"); %>: </label>
       <input class="right-field-radio"  type="radio" name="filterMode" value="Deny" checked>&nbsp;<% multilang("382" "LANG_DENY"); %>
       <input class="right-field-radio"  type="radio" name="filterMode" value="Allow">&nbsp;&nbsp;<% multilang("383" "LANG_ALLOW"); %>
      </div>
      </div>
   </div>
   <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> :</label>
      <select class="right-field custom-select" name="saType" onChange="saTypeSelect()">
      <option select value=1><% multilang("89" "LANG_IP_ADDRESS"); %>+<% multilang("474" "LANG_PREFIX_LENGTH"); %></option>
      <option value=2>PD+<% multilang("492" "LANG_INTERFACE_ID"); %></option>
      </select>
     </div>
      </div>
      <div class="col-md-12 form-group"  id="sifid">
        <div class="custom-control">
       <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> <% multilang("492" "LANG_INTERFACE_ID"); %>:</label>
      <input  class="right-field custom-select" type="text" size="16" name="sIfId6Start" style="width:150px"> 
      </div>
      </div>
      <div class="col-md-12 form-group"  id="sip6">
        <div class="custom-control">
       <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</label>
      <input class="right-field custom-select" type="text" size="16" name="sip6Start" style="width:150px">
      </div>
      </div>
       <div class="col-md-12 form-group" id="sip6prefix">
         <div class="custom-control">
      <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> <% multilang("474" "LANG_PREFIX_LENGTH"); %>:</label>
      <input class="right-field custom-select" type="text" size="16" name="sip6PrefixLen" style="width:150px">
      </div>
      </div>
      <div class="col-md-12 form-group">
       <div class="custom-control">
      <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %>:</label>
      <select class="right-field custom-select" name="daType" onChange="daTypeSelect()">
      <option select value=1><% multilang("89" "LANG_IP_ADDRESS"); %>+<% multilang("474" "LANG_PREFIX_LENGTH"); %></option>
      <option value=2>PD+<% multilang("492" "LANG_INTERFACE_ID"); %></option>
      </select>
      </div>
      </div>
   
       <div class="col-md-12 form-group"  id="difid">
         <div class="custom-control">
      <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("492" "LANG_INTERFACE_ID"); %>:</label>
      <input class="right-field custom-select" type="text" size="16" name="dIfId6Start" style="width:150px"> 
      </div>
      </div>
       <div class="col-md-12 form-group"   id="dip6">
          <div class="custom-control">
       <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("89" "LANG_IP_ADDRESS"); %>:</label>
      <input class="right-field custom-select" type="text" size="16" name="dip6Start" style="width:150px">
      </div>
      </div>
      <div class="col-md-12 form-group" id="dip6prefix">
         <div class="custom-control">
      <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("474" "LANG_PREFIX_LENGTH"); %>:</label>
      <input class="right-field custom-select" type="text" size="16" name="dip6PrefixLen" style="width:150px">
      </div>
      </div>
      <div class="col-md-12 form-group">
       <div class="custom-control">

      <label class="left-field"><% multilang("389" "LANG_SOURCE"); %> <% multilang("213" "LANG_PORT"); %>:</label>
      <input class="right-field custom-select" type="text" size="6" name="sfromPort" style="width:150px"> - <input class="custom-select"  type="text" size="6" name="stoPort" style="width:150px">
      </div>
      </div>
          <div class="col-md-12 form-group">
       <div class="custom-control">
        <label class="left-field"><% multilang("390" "LANG_DESTINATION"); %> <% multilang("213" "LANG_PORT"); %>:</label>
      <input class="right-field custom-select" type="text" size="6" name="dfromPort" style="width:150px"> - <input class="custom-select" type="text" size="6" name="dtoPort" style="width:150px">
      </div>
      </div>
  
   </div>
   <hr class="margin_adjs" />
   <div class="btn_ctl form-footer">
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterIpPort" onClick="return addClick1(this)">
    <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   </form>
   <form action=/boaform/formFilterV6 method=POST name="formFilterDel">
   <div class="column">
    <div class="column_title">
     <div class="column_title_left"></div>
     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">IPv6 IP/Port Filtering</h2>
  </div>
 </div>


      <p><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></p>
     <div class="column_title_right"></div>
    </div>
    <div class="data_common data_vertical">
     <table  class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
      <% ipPortFilterListV6(); %>
     </table>
    </div>
   </div>
   <hr class="margin_adjs" />
   <div class="btn_ctl form-footer">
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterIpPort" onClick="return deleteClick1(this)">&nbsp;&nbsp;
    <input class="link_bg btn orange_btn" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterIpPort" onClick="return deleteAllClick1(this)">&nbsp;&nbsp;&nbsp;
    <input type="hidden" value="/ipv6_enabledisable.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
   </div>
   <script>
    <% checkWrite("ipFilterNumV6"); %>
   </script>
   </form>
</body>
</html>

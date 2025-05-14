<%SendWebHeadStr(); %>
<title><% multilang("839" "LANG_ACTIVE_DHCPV6_CLIENTS"); %></title>
<style>
    table{
        border-collapse: collapse;
        border: 1px solid #ccc;
        table-layout: fixed;
    }
    table th, table td{
        border: 1px solid #ccc;
        text-align: center !important;
    }
    table th{
        background-color: #ebeced;
    }
</style>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("839" "LANG_ACTIVE_DHCPV6_CLIENTS"); %></p>
 <p class="intro_content"><% multilang("841" "LANG_THIS_TABLE_SHOWS_THE_ASSIGNED_IP_ADDRESS_DUID_AND_TIME_EXPIRED_FOR_EACH_DHCP_LEASED_CLIENT"); %></p>
</div>
<div class="data_common data_vertical">
 <table>
  <tr>
   <th><% multilang("89" "LANG_IP_ADDRESS"); %></th>
   <th><% multilang("1122" "LANG_DUID"); %></th>
   <th><% multilang("162" "LANG_EXPIRED_TIME_SEC"); %></th>
  </tr>
  <% dhcpClientListv6(); %>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="button" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="javascript: location.reload();">&nbsp;&nbsp;
 <input class="link_bg" type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();">
</div>
</body>
</html>

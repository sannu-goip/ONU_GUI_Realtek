<%SendWebHeadStr(); %>
<title><% multilang("155" "LANG_ACTIVE_WLAN_CLIENTS"); %></title>
<link rel="stylesheet" href="admin/content.css">
<SCRIPT>
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
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
 <p class="intro_title"><% multilang("155" "LANG_ACTIVE_WLAN_CLIENTS"); %></p>
 <p class="intro_content"><% multilang("156" "LANG_THIS_TABLE_SHOWS_THE_MAC_ADDRESS"); %></p>
</div>
<form action=/boaform/admin/formWirelessTbl method=POST name="formWirelessTbl">
<div class="data_common data_vertical">
 <table>
  <% wirelessClientList(); %>
 </table>
</div>
<div class="btn_ctl">
 <input type="hidden" name="wlan_idx" value=<% checkWrite("wlan_idx"); %>>
 <input type="hidden" value="/wlstatbl.asp" name="submit-url">
 <input type="submit" value="Refresh" onClick="return on_submit()" class="link_bg">&nbsp;&nbsp;
 <input type="button" value=" Close " name="close" onClick="javascript: window.close();" class="link_bg">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

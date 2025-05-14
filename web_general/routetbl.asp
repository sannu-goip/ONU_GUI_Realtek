<% SendWebHeadStr();%>
<title><% multilang("885" "LANG_IP_ROUTE_TABLE"); %></title>
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
 <p class="intro_title"><% multilang("885" "LANG_IP_ROUTE_TABLE"); %></p>
 <p class="intro_content"><% multilang("886" "LANG_THIS_TABLE_SHOWS_A_LIST_OF_DESTINATION_ROUTES_COMMONLY_ACCESSED_BY_YOUR_NETWORK"); %></p>
</div>
<form action=/boaform/formRefleshRouteTbl method=POST name="formRouteTbl">
<div class="data_common data_vertical">
 <table>
  <% routeList(); %>
 </table>
</div>
<div class="btn_ctl">
<input type="hidden" value="/routetbl.asp" name="submit-url">
 <input type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" onClick="return on_submit()" class="link_bg">&nbsp;&nbsp;
 <input type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();" class="link_bg">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

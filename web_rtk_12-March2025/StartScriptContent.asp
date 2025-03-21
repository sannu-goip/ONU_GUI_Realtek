<%SendWebHeadStr(); %>
<title><% multilang("838" "LANG_ACTIVE_DHCP_CLIENTS"); %></title>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title"><% multilang("1231" "LANG_INITIATING_START_SCRIPT_CONTENT"); %></p>
</div>
<table>
  <tr>
 <td>
  <% checkWrite("getStartScriptContent"); %>
 </td>
  </tr>
</table>
</body>
</html>

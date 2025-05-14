<% SendWebHeadStr();%>
<title><% multilang("871" "LANG_BRIDGE_FORWARDING_DATABASE"); %></title>
<style>
    /* General body styling */
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
    }
    
    .intro_title {
        font-size: 24px; /* Slightly smaller font size */
     
        color: #f58220;
        margin: 0;
        padding-bottom: 5px;
    }
    
    .intro_content {
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
        text-align: center;
    }
    
    .data_common td {
        padding: 6px; /* Compact padding */
        width: 60%;
    }
    
    .data_common input[type="text"],
    .data_common input[type="file"],
    .data_common select {
        width: 180px; /* Slightly smaller width */
        padding: 4px; /* Compact padding */
        border: 1px solid #ccc;
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

   table th, table td {
      border: 1px solid #ccc; /* Border for table cells */
      font-size: 13px;
      text-align: center; /* Centered text */
    }
    table th{
      background-color: #e0dddd;
     
    }
    table{
        margin-top: 20px;
    }
    table th:nth-child(1),
    table td:nth-child(1) {
    width: 22%; /* First column width */
}

    table th:nth-child(2),
    table td:nth-child(2) {
    width: 35%; /* Second column width */
}

    table th:nth-child(3),
    table td:nth-child(3) {
    width: 21%; /* Third column width */
}
    table th:nth-child(4),
    table td:nth-child(4) {
        width: 21%; /* Third column width */
    }
    /* Column styling */
    .column {
        margin: 10px 15px; /* Compact margin */
    }
    
     input[type="checkbox"] {
      vertical-align: bottom;
     }
    .table_stats th{
      text-align: center;
      font-weight: bold;
      font-size: 14px;
      background-color: #e0dddd;
    }
    .table_stats tr td{
      font-size: 13px;
    }
    span{
      font-size: 13px;
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
<div class="intro_main ">
 <p class="intro_title"><% multilang("871" "LANG_BRIDGE_FORWARDING_DATABASE"); %></p>
 <p class="intro_content"> <% multilang("441" "LANG_PAGE_DESC_MAC_TABLE_INFO"); %></p>
</div>
<form action=/boaform/formRefleshFdbTbl method=POST name="formFdbTbl">
<div class="data_common data_vertical">
 <table>
  <tr>
   <th><% multilang("213" "LANG_PORT"); %></th>
   <th><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
   <th><% multilang("873" "LANG_IS_LOCAL"); %>?</th>
   <th><% multilang("874" "LANG_AGEING_TIMER"); %></th>
  </tr>
  <% bridgeFdbList(); %>
 </table>
</div>
<div class="btn_ctl">
 <input type="hidden" value="/fdbtbl.asp" name="submit-url">
 <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit(this)">&nbsp;&nbsp;
 <input class="link_bg" type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

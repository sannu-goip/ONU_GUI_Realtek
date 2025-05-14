<% SendWebHeadStr();%>
<title><% multilang("36" "LANG_ARP_TABLE"); %></title>
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
        width: 80%;
        border-collapse: collapse;
    }
    
    .data_common td {
        padding: 6px; /* Compact padding */
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
      width: 50%;
    }
    table th{
      background-color: #e0dddd;
     padding: 6px;
    }
    table{
        margin-top: 20px;
    }
    /* Column styling */
    .column {
        margin: 10px 15px; /* Compact margin */
    }
    
     input[type="checkbox"] {
      vertical-align: bottom;
     }
    
    </style>
<SCRIPT>
function on_submit()
{
 document.forms[0].refresh.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>

<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>ARP</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


<div class="intro_main ">

<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/log.png" style="width:51px;"></div>
<div style="padding-top:3px;margin-left:-7px;"><p class="intro_title"><p class="intro_title"><% multilang("444" "LANG_USER_LIST"); %></p></div></div>
 
 <p class="intro_content"><% multilang("441" "LANG_PAGE_DESC_MAC_TABLE_INFO"); %></p>
</div>
<form action=/boaform/formRefleshFdbTbl method=POST name="formFdbTbl">
 <div class="data_common data_common_notitle data_vertical">
  <table>
   <tr>
    <th width="40%" style="text-align: center; font-weight: 550;"><% multilang("89" "LANG_IP_ADDRESS"); %></th>
    <th width="60%" style="text-align: center; font-weight: 550;"><% multilang("92" "LANG_MAC_ADDRESS"); %></th>
   </tr>
   <% ARPTableList(); %>
  </table>
 </div>
 <div class="btn_ctl">
  <input type="hidden" value="/arptable.asp" name="submit-url">
  <input class="link_bg" type="submit" value="<% multilang("443" "LANG_REFRESH"); %>" name="refresh" onClick="return on_submit()">&nbsp;&nbsp;
  <input type="hidden" name="postSecurityFlag" value="">
 </div>
</form>
<br><br>
</body>
</html>

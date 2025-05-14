<% SendWebHeadStr();%>
<title><% multilang("38" "LANG_BRIDGING"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
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

  /* Column styling */
  .column {
      margin: 10px 15px; /* Compact margin */
  }
  
   input[type="radio"] {
    vertical-align:baseline;
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
function saveChanges()
{
 if (checkDigit(document.bridge.ageingTime.value) == 0) {
  alert('<% multilang("2098" "LANG_INVALID_AGEING_TIME"); %>');
  document.bridge.ageingTime.focus();
  return false;
 }
 document.forms[0].save.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function fdbClick(url)
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
 window.open( url, 'FDBTbl', settings );
}
</SCRIPT>
</head>
<body>

<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>Bridging</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/bridging.png" style="width:38px;background:transparent;"></div>
<div style="padding-top: 7px;"> <p class="intro_title"><% multilang("38" "LANG_BRIDGING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>

 <p class="intro_content"><% multilang("446" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_THE_BRIDGE_PARAMETERS_HERE_YOU_CAN_CHANGE_THE_SETTINGS_OR_VIEW_SOME_INFORMATION_ON_THE_BRIDGE_AND_ITS_ATTACHED_PORTS"); %></p>
</div>
<form action=/boaform/formBridging method=POST name="bridge">
<div class="data_common data_common_notitle">
 <table>
   <tr>
       <th width="30%"><% multilang("447" "LANG_AGEING_TIME"); %>:</th>
       <td width="70%"><input type="text" name="ageingTime" size="15" maxlength="15" value=<% getInfo("bridge-ageingTime"); %>> <span>(<% multilang("357" "LANG_SECONDS"); %>)</span></td>
   </tr>
   <tr>
       <th>802.1d <% multilang("448" "LANG_SPANNING_TREE"); %>:</th>
       <td>
        <input type="radio" value="0" name="stp" <% checkWrite("br-stp-0"); %>><span><% multilang("179" "LANG_DISABLED"); %>&nbsp;&nbsp;</span>
       <input type="radio" value="1" name="stp" <% checkWrite("br-stp-1"); %>><span><% multilang("178" "LANG_ENABLED"); %></span>
       </td>
   </tr>
 </table>
</div>
<div class="btn_ctl">
      <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return saveChanges()">&nbsp;&nbsp;
      <input class="link_bg" type="button" value="<% multilang("449" "LANG_SHOW_MACS"); %>" name="fdbTbl" onClick="fdbClick('/fdbtbl.asp')">
      <input type="hidden" value="/bridging.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</body>
</html>

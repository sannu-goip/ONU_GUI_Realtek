<% SendWebHeadStr();%>
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<title><% multilang("2948" "LANG_USB_STATUS"); %></title>
</head>
<body>
<div class="intro_main ">
<p class="intro_title"><% multilang("2948" "LANG_USB_STATUS"); %></p>
<p class="intro_content"><% multilang("2949" "LANG_USB_PAGE_DESC"); %></p>
</div>
<div class="data_common data_common_notitle">
 <table>
  <% getInfo("usbstate"); %>
 </table>
</div>
</body>
</html>

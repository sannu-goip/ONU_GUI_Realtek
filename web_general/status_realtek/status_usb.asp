<% SendWebHeadStr();%>
<title><% multilang(LANG_USB_STATUS); %></title>
</head>
<body>
<div class="intro_main ">
<p class="intro_title"><% multilang(LANG_USB_STATUS); %></p>
<p class="intro_content"><% multilang(LANG_USB_PAGE_DESC); %></p>
</div>

<div class="data_common data_common_notitle">
	<table>
		<% getInfo("usbstate"); %>
	</table>
</div>
</body>
</html>

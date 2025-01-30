<%SendWebHeadStr(); %>
<title>TR069 <% multilang(LANG_STATUS); %></title>

</head>
<body onLoad="on_init();">
<div class="intro_main ">
	<p class="intro_title"><% multilang(LANG_TR069_STATUS); %></p>
	<p class="intro_content"><% multilang(LANG_THIS_PAGE_SHOWS_THE_TR069_INFORM_STATUS); %></p>
</div>
<div class="column">
	<div class="column_title">
		<div class="column_title_left"></div>
			<p>TR069 <% multilang(LANG_STATUS); %></p>
		<div class="column_title_right"></div>
	</div>

	<div class="data_common">
		<table>
			<tr>
				<th width=40%><% multilang(LANG_TR069_INFORM_STATUS); %></th>
				<td width="60%"><% getInfo("tr069Inform"); %></td>
			</tr>
				<tr>
				<th width=40%><% multilang(LANG_TR069_CON_REQUEST_STATUS); %></th>
				<td width="60%"><% getInfo("tr069Connect"); %></td>
			</tr>
		</table>
	</div>
</div>	
</body>
</html>

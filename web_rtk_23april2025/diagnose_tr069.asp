<% SendWebHeadStr();%>
<title>Tracert <% multilang(LANG_DIAGNOSTICS); %></title>
<script language="javascript" src="common.js"></script>
<script language="javascript">

function on_init()
{
	if(document.getElementById("result").innerHTML == "Inform...")
	setTimeout(function(){
			   window.location.reload(true);
			}, 1000);
}

</script>
</head>
<div class="intro_main ">
	<p class="intro_title">Inform</p>
	<p class="intro_content">This page is used manual inform to acs server</p>
</div>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="on_init();">
	<form id="form" action="/boaform/admin/formTr069Diagnose" method="post">
	<div class="data_common data_common_notitle">
		<table >
			<tr>
				<th width="30%">Inform Status</th>
				<td><% getInfo("tr069Inform"); %></td>
			</tr>
		</table>
	</div>
	<div class="btn_ctl">
		<input class="link_bg" type="submit" value=" <% multilang(LANG_GO); %>" name="go" >
		<input type="hidden" name="submit-url" value="/diagnose_tr069.asp">
	</div>
</body>
</html>

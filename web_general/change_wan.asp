<%SendWebHeadStr(); %>
<TITLE><% multilang(LANG_WAN); %> <% multilang(LANG_MODE); %></TITLE>
<SCRIPT>
function saveChanges()
{
	document.forms[0].save.isclick = 1;
	postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);	
	return true;
}
</SCRIPT>
</head>

<!-------------------------------------------------------------------------------------->
<body>
<div class="intro_main ">
	<p class="intro_title"><% multilang(LANG_WAN); %> <% multilang(LANG_MODE); %></p>
	<p class="intro_content"><% multilang(LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_WHICH_WAN_TO_USE_OF_YOUR_ROUTER); %></p>
</div>

<form action="/boaform/admin/formWanPortChange" method="post" name="wanMode">
<div class="data_common data_common_notitle">
	<table>
		<tr>
			<th width="25%"><% multilang(LANG_WAN_MODE); %>:</th>
			<td>
				<input type="radio" name=wanmode value=0><% multilang(LANG_GPON_WAN); %>&nbsp;&nbsp
				<input type="radio" name=wanmode value=1><% multilang(LANG_EPON_WAN); %>&nbsp;&nbsp
				<input type="radio" name=wanmode value=2><% multilang(LANG_ETHERNET_WAN); %>
			</td>
		</tr>
	</table>
</div>
<div class="btn_ctl">
	<input class="link_bg" type="submit" value="<% multilang(LANG_APPLY_CHANGES); %>" name="save" onClick="return saveChanges()">
	<input type="hidden" value="/change_wan.asp" name="submit-url">
	<input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
	<% showWanPortInfo() %>
</script>
</form>
</body>
</html>


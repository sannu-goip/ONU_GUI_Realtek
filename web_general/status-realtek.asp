<% SendWebHeadStr();%>
<META HTTP-EQUIV=Refresh CONTENT="10; URL=status.asp">
<title><% multilang(LANG_DEVICE_STATUS); %></title>
<script>
var getObj = null;
function modifyClick(url)
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
	var settings = 'width='+wide+',height='+-high+',screenX='+xOffset+',screenY='+yOffset+',top='+yOffset+',left='+xOffset+', resizable=yes, toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes';
	window.open( url, 'Status_Modify', settings );
}

function disButton(id)
{
	getObj = document.getElementById(id);
	window.setTimeout("getObj.disabled=true", 100);
	return false;
}

function on_init()
{
	// Mason Yu for IPv6
	if (!<% checkWrite("IPv6Show"); %>) {
		if (document.getElementById)  // DOM3 = IE5, NS6
		{
			document.getElementById('ipv6DefaultGW').style.display = 'none';
		}
		else {
			if (document.layers == false) // IE4
			{
				document.all.ipv6DefaultGW.style.display = 'none';
			}
		}
	}
	return true;
}

function on_submit(obj)
{
	obj.isclick = 1;
	postTableEncrypt(document.status.postSecurityFlag, document.status);
	return true;
}

</script>
</head>

<body onLoad="on_init();">
<div class="intro_main ">
	<p class="intro_title"><% multilang(LANG_DEVICE_STATUS); %></p>
	<p class="intro_content"><% multilang(LANG_PAGE_DESC_DEVICE_STATUS_SETTING); %></p>
</div>

<form action=/boaform/admin/formStatus method=POST name="status2">
<div class="column">
	<div class="column_title">
		<div class="column_title_left"></div>
			<p><% multilang(LANG_SYSTEM); %></p>
		<div class="column_title_right"></div>
	</div>

	<div class="data_common">
		<table>
			<tr>
				<th width=40%><% multilang(LANG_DEVICE_NAME); %></th>
				<td width=60%><% getInfo("name"); %></td>
			</tr>
			<tr>
				<th width=40%><% multilang(LANG_PON_MODE); %></th>
				<td width=60%><% getInfo("ponmode"); %></td>
			</tr>
			 <tr>
				<th width=40%><% multilang(LANG_SERIAL_NUMBER); %></th>
				<td width=60%><% fmgpon_checkWrite("fmgpon_sn"); %></td>
		    </tr>
			<tr>
				<th width=40%><% multilang(LANG_PON_MAC); %></th>
				<td width=60%><% getInfo("elan-Mac"); %></td>
		    </tr>
			<tr>
				<th width=40%><% multilang(LANG_UPTIME); %></th>
				<td width=60%><% getInfo("uptime"); %></td>
			</tr>
			<!--
			<tr bgcolor="#EEEEEE">
			<td width=40%><font size=2><b><% multilang(LANG_DATE); %>/<% multilang(LANG_TIME); %></b></td>
			<td width=60%><font size=2><% getInfo("date"); %></td>
			</tr>
			-->
			<% HwVer(); %>
			<tr>
				<th width=40%><% multilang(LANG_FIRMWARE_VERSION); %></th>
				<td width=60%><% getInfo("fwVersion"); %></td>
			</tr>
			<% DSLVer(); %>

			<% cpuUtility(); %>
			<% memUtility(); %>
			<tr>
				<th width=40%><% multilang(LANG_BUILD_INFO); %></th>
				<td width=60%><% getInfo("compiletime"); %></td>
			</tr>	
		</table>
	</div>	
</div>
<div class="column" <% checkWrite("show_button"); %>>
	<div class="column_title">
		<div class="column_title_left"></div>
			<p><% multilang(LANG_NETWORK); %>&nbsp;&nbsp;<% multilang(LANG_PARAMETER); %></p>
		<div class="column_title_right"></div>
	</div>
	<div class="data_common">
		<table>
			<tr <% checkWrite("bridge-only"); %>>
				<th width=40%><% multilang(LANG_NAME_SERVERS); %></th>
				<td width=60%><% getNameServer(); %></td>
			</tr>
			<tr <% checkWrite("bridge-only"); %>>
				<th width=40%>IPv4 <% multilang(LANG_DEFAULT_GATEWAY); %></th>
				<td width=60%><% getDefaultGW(); %></td>
			</tr>
			<tr id='ipv6DefaultGW' <% checkWrite("bridge-only"); %>>
				<th width=40%>IPv6 <% multilang(LANG_DEFAULT_GATEWAY); %></th>
				<td width=60%><% getDefaultGW_ipv6(); %></td>
			</tr>
		</table>
	</div>	
</div>

<table>
<!--
<tr>
<td width=100% colspan="2" bgcolor="#008000"><font color="#FFFFFF" size=2><b><% multilang(LANG_ADSL); %></b></font></td>
</tr>
<tr bgcolor="#EEEEEE">
<td width=40%><font size=2><b><% multilang(LANG_OPERATIONAL_STATUS); %></b></td>
<td width=60%><font size=2><% getInfo("dslstate"); %></td>
</tr>
<tr bgcolor="#DDDDDD">
<td width=40%><font size=2><b><% multilang(LANG_UPSTREAM_SPEED); %></b></td>
<td width=60%><font size=2><% getInfo("adsl-drv-rate-us"); %>&nbsp;kbps
&nbsp;</td>
</tr>
<tr bgcolor="#EEEEEE">
<td width=40%><font size=2><b><% multilang(LANG_DOWNSTREAM_SPEED); %></b></td>
<td width=60%><font size=2><% getInfo("adsl-drv-rate-ds"); %>&nbsp;kbps
&nbsp;</td>
</tr>
-->
</table>
<% DSLStatus(); %>
<div class="column">
	<div class="column_title">
		<div class="column_title_left"></div>
		<p><% multilang(LANG_LAN); %>&nbsp;<% multilang(LANG_CONFIGURATION); %></p>
		<div class="column_title_right"></div>
	</div>
	<div class="data_common">
	<table>
		<tr>
			<th width=40%><% multilang(LANG_IP_ADDRESS); %></th>
			<td width=60%><% getInfo("lan-ip"); %></td>
		</tr>
		<tr>
			<th width=40%><% multilang(LANG_SUBNET_MASK); %></th>
			<td width=60%><% getInfo("lan-subnet"); %></td>
		</tr>
		<% DHCPSrvStatus(); %>
		<tr>
			<th width=40%><% multilang(LANG_MAC_ADDRESS); %></th>
			<td width="60%" style="text-transform: uppercase"><% getInfo("elan-Mac"); %></td>
		</tr>
	</table>
	</div>
</div>
</form>

<form action=/boaform/admin/formStatus method=POST name="status">
<div class="column" <% checkWrite("bridge-only"); %>>
	<div class="column_title">
		<div class="column_title_left"></div>
		<p><% multilang(LANG_WAN); %>&nbsp;<% multilang(LANG_CONFIGURATION); %></p>
		<div class="column_title_right"></div>
	</div>
	<div class="data_common data_vertical">
		<table>
			<% wanConfList(); %>
		</table>
	</div>
</div>
<% wan3GTable(); %>
<% wanPPTPTable(); %>
<% wanL2TPTable(); %>
<% wanIPIPTable(); %>
<div class="btn_ctl">
	<input type="hidden" value="/admin/status.asp" name="submit-url">
	<input class="link_bg" type="submit" value="<% multilang(LANG_REFRESH); %>" name="refresh" onClick="return on_submit(this)">&nbsp;&nbsp;
	<!--
	<input type="button" value="Modify" name="modify" onClick="modifyClick('/admin/date.asp')">
	-->
	<input type="hidden" name="postSecurityFlag" value="">
</div>	
</form>
</body>
</html>

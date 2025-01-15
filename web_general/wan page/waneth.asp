<%SendWebHeadStr(); %>
<title><% multilang(LANG_ETHERNET_WAN); %></title>

<script language="javascript">

var initConnectMode;
var pppConnectStatus=0;

var dgwstatus;
var gtwy;
var interfaceInfo = '';
var gtwyIfc ='';
var gwInterface=0;
var ipver=1;

function pppTypeSelection()
{
	if ( document.ethwan.pppConnectType.selectedIndex == 2) {
		document.ethwan.pppIdleTime.value = "";
		disableTextField(document.ethwan.pppIdleTime);
	}
	else {
		if (document.ethwan.pppConnectType.selectedIndex == 1) {
			document.ethwan.pppIdleTime.value = 600;
			enableTextField(document.ethwan.pppIdleTime);
		}
		else {
			document.ethwan.pppIdleTime.value = "";
			disableTextField(document.ethwan.pppIdleTime);
		}
	}
}

function checkDefaultGW() {
	with (document.forms[0]) {
		if (droute[0].checked == false && droute[1].checked == false && gwStr[0].checked == false && gwStr[1].checked == false) {
			alert('A default gateway has to be selected.');
			return false;
		}
		if (droute[1].checked == true) {
			if (gwStr[0].checked == true) {
				if (isValidIpAddress(dstGtwy.value, "Default Gateway IP Address") == false)
					return false;
			}
		}
	}
	return true;
}

function applyCheck(obj)
{
	if (checkDefaultGW()==false)
		return false;

	if ( document.ethwan.adslConnectionMode.selectedIndex == 2 ) {
		if (document.ethwan.pppUserName.value=="") {
			alert('PPP user name cannot be empty!');
			document.ethwan.pppUserName.focus();
			return false;
		}
		if (includeSpace(document.ethwan.pppUserName.value)) {
			alert('Cannot accept space character in PPP user name.');
			document.ethwan.pppUserName.focus();
			return false;
		}
		if (checkString(document.ethwan.pppUserName.value) == 0) {
			alert('Invalid PPP user name.');
			document.ethwan.pppUserName.focus();
			return false;
		}

		if (document.ethwan.pppPassword.value=="") {
			alert('PPP password cannot be empty!');
			document.ethwan.pppPassword.focus();
			return false;
		}
		if (includeSpace(document.ethwan.pppPassword.value)) {
			alert('Cannot accept space character in PPP password.');
			document.ethwan.pppPassword.focus();
			return false;
		}
		if (checkString(document.ethwan.pppPassword.value) == 0) {
			alert('Invalid PPP password.');
			document.ethwan.pppPassword.focus();
			return false;
		}
		if (document.ethwan.pppConnectType.selectedIndex == 1) {
			if (document.ethwan.pppIdleTime.value <= 0) {
				alert('Invalid PPP idle time.');
				document.ethwan.pppIdleTime.focus();
				return false;
			}
		}
	}

	if (<% checkWrite("IPv6Show"); %>) {
		if(document.ethwan.IpProtocolType.value & 1){
			if ( document.ethwan.adslConnectionMode.selectedIndex == 1 ) {
				if (document.ethwan.ipMode[0].checked) {
					if ( document.ethwan.ipUnnum.disabled || ( !document.ethwan.ipUnnum.disabled && !document.ethwan.ipUnnum.checked )) {
						if (!checkHostIP(document.ethwan.ip, 1))
							return false;
						if (document.ethwan.remoteIp.visiblity == "hidden") {
							if (!checkHostIP(document.ethwan.remoteIp, 1))
							return false;
						}
						if (document.ethwan.adslConnectionMode.selectedIndex == 1 && !checkNetmask(document.ethwan.netmask, 1))
							return false;
					}
				}
			}
		}
	}

	if (<% checkWrite("IPv6Show"); %>) {
		if ( document.ethwan.adslConnectionMode.selectedIndex != 0 ) {
			if(document.ethwan.IpProtocolType.value & 2)
			{
				if(document.ethwan.staticIpv6.checked) {
					if(document.ethwan.itfenable.checked == false ){
						if(document.ethwan.Ipv6Addr.value == "" ){
							alert("Please input ipv6 address or open DHCPv6 client!");
							document.ethwan.Ipv6Addr.focus();
							return false;
						}
					}
					if(document.ethwan.Ipv6Addr.value != ""){
						if (! isGlobalIpv6Address( document.ethwan.Ipv6Addr.value) ){
							alert("Invalid ipv6 address!");
							document.ethwan.Ipv6Addr.focus();
							return false;
						}
						var prefixlen= getDigit(document.ethwan.Ipv6PrefixLen.value, 1);
						if (prefixlen > 128 || prefixlen <= 0) {
							alert("Invalid ipv6 prefix length!");
							document.ethwan.Ipv6PrefixLen.focus();
							return false;
						}
					}
					if(document.ethwan.Ipv6Gateway.value != "" ){
						if (! isUnicastIpv6Address( document.ethwan.Ipv6Gateway.value) ){
							alert("Invalid ipv6 gateway address!");
							document.ethwan.Ipv6Gateway.focus();
							return false;
						}
					}
				}else{
					document.ethwan.Ipv6Addr.value = "";
					document.ethwan.Ipv6PrefixLen.value = "";
					document.ethwan.Ipv6Gateway.value = "";
				}

				if (<% checkWrite("DSLiteShow"); %>) {
					if (document.ethwan.adslConnectionMode.selectedIndex == 6) // DS-Lite
					{
						if(document.ethwan.DSLiteLocalIP.value != ""){
							if (! isGlobalIpv6Address( document.ethwan.DSLiteLocalIP.value) ){
								alert("Invalid DSLiteLocalIP address!");
								document.ethwan.DSLiteLocalIP.focus();
								return false;
							}
						}

						if(document.ethwan.DSLiteRemoteIP.value != ""){
							if (! isGlobalIpv6Address( document.ethwan.DSLiteRemoteIP.value) ){
								alert("Invalid DSLiteRemoteIP address!");
								document.ethwan.DSLiteRemoteIP.focus();
								return false;
							}
						}

						if(document.ethwan.DSLiteGateway.value != ""){
							if (! isGlobalIpv6Address( document.ethwan.DSLiteGateway.value) ){
								alert("Invalid DSLiteGateway address!");
								document.ethwan.DSLiteGateway.focus();
								return false;
							}
						}
					}
					else{
						document.ethwan.DSLiteLocalIP.value = "";
						document.ethwan.DSLiteRemoteIP.value = "";
						document.ethwan.DSLiteGateway.value = "";
					}
				}

			}
		}
	}

	obj.isclick = 1;
	postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
	return true;
}

function setPPPConnected()
{
	pppConnectStatus = 1;
}

function disableFixedIpInput()
{
	disableTextField(document.ethwan.ip);
	disableTextField(document.ethwan.remoteIp);
	disableTextField(document.ethwan.netmask);
}

function enableFixedIpInput()
{
	enableTextField(document.ethwan.ip);
	enableTextField(document.ethwan.remoteIp);
	if (document.ethwan.adslConnectionMode.value == 4)
		disableTextField(document.ethwan.netmask);
	else
		enableTextField(document.ethwan.netmask);
}

function ipTypeSelection()
{
	if ( document.ethwan.ipMode[0].checked ) {
		enableFixedIpInput();
	} else {
		disableFixedIpInput();
	}
}

function enable_pppObj()
{
	enableTextField(document.ethwan.pppUserName);
	enableTextField(document.ethwan.pppPassword);
	enableTextField(document.ethwan.pppConnectType);
	document.ethwan.gwStr[0].disabled = false;
	document.ethwan.gwStr[1].disabled = false;
	enableTextField(document.ethwan.dstGtwy);
	document.ethwan.wanIf.disabled = false;
	pppTypeSelection();
	autoDGWclicked();
}

function pppSettingsEnable()
{
	document.getElementById('tbl_ppp').style.display='block';
	enable_pppObj();
}

function disable_pppObj()
{
	disableTextField(document.ethwan.pppUserName);
	disableTextField(document.ethwan.pppPassword);
	disableTextField(document.ethwan.pppIdleTime);
	disableTextField(document.ethwan.pppConnectType);

	document.ethwan.gwStr[0].disabled = true;
	document.ethwan.gwStr[1].disabled = true;
	disableTextField(document.ethwan.dstGtwy);
	document.ethwan.wanIf.disabled = true;
}

function pppSettingsDisable()
{
	document.getElementById('tbl_ppp').style.display='none';
	disable_pppObj();
}

function enable_ipObj()
{
	document.ethwan.ipMode[0].disabled = false;
	document.ethwan.ipMode[1].disabled = false;
	document.ethwan.gwStr[0].disabled = false;
	document.ethwan.gwStr[1].disabled = false;
	enableTextField(document.ethwan.dstGtwy);
	document.ethwan.wanIf.disabled = false;
	ipTypeSelection();
	autoDGWclicked();
}

function ipSettingsEnable()
{
	if (ipver == 2)
		return;
	document.getElementById('tbl_ip').style.display='block';
	enable_ipObj();
}

function disable_ipObj()
{
	document.ethwan.ipMode[0].disabled = true;
	document.ethwan.ipMode[1].disabled = true;
	document.ethwan.gwStr[0].disabled = true;
	document.ethwan.gwStr[1].disabled = true;
	disableTextField(document.ethwan.dstGtwy);
	document.ethwan.wanIf.disabled = true;
	disableFixedIpInput();
}

function ipSettingsDisable()
{
	document.getElementById('tbl_ip').style.display='none';
	disable_ipObj();
}

function ipModeSelection()
{
	if (document.ethwan.ipUnnum.checked) {
		disable_pppObj();
		disable_ipObj();
		document.ethwan.gwStr[0].disabled = false;
		document.ethwan.gwStr[1].disabled = false;
		enableTextField(document.ethwan.dstGtwy);
		document.ethwan.wanIf.disabled = false;
	}
	else
		enable_ipObj();
}

function adslConnectionModeSelection()
{
	document.ethwan.naptEnabled.disabled = false;
	document.ethwan.igmpEnabled.disabled = false;
	document.ethwan.ipUnnum.disabled = true;
	//if (( document.ethwan.adslConnectionMode.selectedIndex == 1 ) ||
	//	( document.ethwan.adslConnectionMode.selectedIndex == 2 ))
		// MER, PPPoE
	//	document.ethwan.naptEnabled.checked = true;
	//else
	//	document.ethwan.naptEnabled.checked = false;
	document.ethwan.droute[0].disabled = false;
	document.ethwan.droute[1].disabled = false;

	document.getElementById('tbl_ppp').style.display='none';
	document.getElementById('tbl_ip').style.display='none';
	if (<% checkWrite("IPv6Show"); %>) {
		ipv6SettingsEnable();
		document.getElementById('tbprotocol').style.display="";
		document.ethwan.IpProtocolType.disabled = false;
		if (<% checkWrite("DSLiteShow"); %>) {
			document.getElementById('DSLiteDiv').style.display="none";
		}
	}

	e = document.getElementById("qosEnabled");
	if (e) e.disabled = false;
	switch(document.ethwan.adslConnectionMode.selectedIndex){
		case 0:// bridge mode
			document.ethwan.naptEnabled.disabled = true;
			document.ethwan.igmpEnabled.disabled = true;
			document.ethwan.droute[0].disabled = true;
			document.ethwan.droute[1].disabled = true;
			pppSettingsDisable();
			ipSettingsDisable();

			if (<% checkWrite("IPv6Show"); %>) {
				ipv6SettingsDisable();
				document.getElementById('tbprotocol').style.display="none";
			}

			if (e) e.disabled = true;
			break;
		case 1://1483mer
			pppSettingsDisable();
			ipSettingsEnable();
			break;
		case 2://pppoe
			document.getElementById('tbl_ppp').style.display='block';
			ipSettingsDisable();
			pppSettingsEnable();
			break;
		default:
			pppSettingsDisable();
			ipSettingsEnable();
	}
}

function naptClicked()
{
	if (document.ethwan.adslConnectionMode.selectedIndex == 3) {
		// Route1483
		if (document.ethwan.naptEnabled.checked == true) {
			document.ethwan.ipUnnum.checked = false;
			document.ethwan.ipUnnum.disabled = true;
		}
		else
			document.ethwan.ipUnnum.disabled = false;
		ipModeSelection();
	}
}

function hideGWInfo(hide) {
	var status = false;

	if (hide == 1)
		status = true;

	changeBlockState('gwInfo', status);

	if (hide == 0) {
		with (document.forms[0]) {
			if (dgwstatus == 255) {
				if (isValidIpAddress(gtwy) == true) {
					gwStr[0].checked = true;
					gwStr[1].checked = false;
					dstGtwy.value=gtwy;
					wanIf.disabled=true
				} else {
					gwStr[0].checked = false;
					gwStr[1].checked = true;
					dstGtwy.value = '';
				}
			}
			else if (dgwstatus != 239) {
					gwStr[1].checked = true;
					gwStr[0].checked = false;
					wanIf.disabled=false;
					wanIf.value=dgwstatus;
					dstGtwy.disabled=true;
			} else {
					gwStr[1].checked = false;
					gwStr[0].checked = true;
					wanIf.disabled=true;
					dstGtwy.disabled=false;
			}
		}
	}
}

function autoDGWclicked() {
	if (document.ethwan.droute[0].checked == true) {
		hideGWInfo(1);
	} else {
		hideGWInfo(0);
	}
}

function gwStrClick() {
	with (document.forms[0]) {
		if (gwStr[1].checked == true) {
			dstGtwy.disabled = true;
			wanIf.disabled = false;
		}
		else {
			dstGtwy.disabled = false;
			wanIf.disabled = true;
		}
      	}
}

function dhcp6cEnable()
{
	if(document.ethwan.itfenable.checked)
		document.getElementById('dhcp6c_block').style.display="";
	else
		document.getElementById('dhcp6c_block').style.display="none";
}

function ipv6StaticUpdate()
{
	if(document.ethwan.staticIpv6.checked)
		document.getElementById('secIPv6Div').style.display="";
	else
		document.getElementById('secIPv6Div').style.display="none";
}

function ipv6WanUpdate()
{
	ipv6StaticUpdate();
	dhcp6cEnable();
}

function ipv6SettingsDisable()
{
	document.getElementById('tbipv6wan').style.display="none";
	document.getElementById('secIPv6Div').style.display="none";
	document.getElementById('dhcp6c_ctrlblock').style.display="none";
}

function ipv6SettingsEnable()
{
	if(document.ethwan.IpProtocolType.value != 1){
		document.getElementById('tbipv6wan').style.display="block";
		document.getElementById('dhcp6c_ctrlblock').style.display="block";
		ipv6WanUpdate();
  	}
}

function protocolChange()
{
	ipver = document.ethwan.IpProtocolType.value;
	if(document.ethwan.IpProtocolType.value == 1){
		if( document.ethwan.adslConnectionMode.selectedIndex ==1 ||
			document.ethwan.adslConnectionMode.selectedIndex ==4 ||
			document.ethwan.adslConnectionMode.selectedIndex ==5)
			ipSettingsEnable();
			ipv6SettingsDisable();
	}else{
		if(document.ethwan.IpProtocolType.value == 2){
			ipSettingsDisable();
		}else{
			if( document.ethwan.adslConnectionMode.selectedIndex ==1 ||
				document.ethwan.adslConnectionMode.selectedIndex ==4 ||
				document.ethwan.adslConnectionMode.selectedIndex ==5)
				ipSettingsEnable();
		}
		ipv6SettingsEnable();
	}
}
/* Mason Yu:20110307 END */
/*
function SubmitWANMode() // Magician: ADSL/Ethernet WAN mode switch
{
	var wmmap = 0;

	with (document.forms[0])
	{
		if(wanmode == 1 && wmchkbox[0].checked == true && wmchkbox[1].checked == false)
			return false;

		if(wanmode == 2 && wmchkbox[0].checked == false && wmchkbox[1].checked == true)
			return false;

		if(wanmode == 3 && wmchkbox[0].checked == true && wmchkbox[1].checked == true)
			return false;

		if(wmchkbox[0].checked == false && wmchkbox[1].checked == false)
			return false;

		for(var i = 0; i < 2; i ++)
			if(wmchkbox[i].checked == true)
				wmmap |= (0x1 << i);

		wan_mode.value = wmmap;
	}
	return confirm("It needs rebooting to change WAN mode.");
}
*/
</script>

</head>
<BODY>
<div class="intro_main ">
	<p class="intro_title"><% multilang(LANG_ETHERNET_WAN); %></p>
	<p class="intro_content"> <% multilang(LANG_PAGE_DESC_CONFIGURE_PARAMETERS); %><% multilang(LANG_ETHERNET_WAN); %></p>
</div>

<form action=/boaform/admin/formWanEth method=POST name="ethwan">

<!--<table border="0" cellspacing="4" width="800" <% WANConditions(); %>>
	<tr>
		<td>
			<b><% multilang(LANG_WAN_MODE); %>:</b>
			<input type="checkbox" value=1 name="wmchkbox">ADSL
			<input type="checkbox" value=2 name="wmchkbox">Ethernet&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="hidden" name="wan_mode" value=0>
			<input type="submit" value="Submit" name="submitwan" onClick="return SubmitWANMode()">
		</td>
	</tr> 
	<tr><td><hr size=1 noshade align=top></td></tr> 
</table> -->
<div class="data_common data_common_notitle">
	<table>
		<tr>
			<% ShowChannelMode("ethcmode"); %>
		</tr>
		<tr>
			<% ShowNAPTSetting(); %>
		</tr>
		<tr>
			<% ShowIGMPSetting(); %>
		</tr>
		<tr>
			<th <% checkWrite("IPQoS"); %>>
				Enable QoS: </th>
			<td><input type="checkbox" name="qosEnabled" size="2" maxlength="2" value="ON" >
			</th>
		</tr>
		<tr>
			<th><% multilang(LANG_DEFAULT_ROUTE); %>:</th>
			<td><input type=radio value=0 name="droute"><% multilang(LANG_DISABLE); %>
				<input type=radio value=1 name="droute" checked><% multilang(LANG_ENABLE); %>
			</td>
		</tr>
		<% ShowIpProtocolType(); %>
	</table>
</div>

<% ShowPPPIPSettings("pppoeStatus"); %>
<% ShowDefaultGateway("p2p"); %>

<% ShowIPV6Settings(); %>


<div class="btn_ctl">
	<input type="hidden" value="/waneth.asp" name="submit-url">
	<input class="link_bg" type="submit" value="<% multilang(LANG_APPLY_CHANGES); %>" name="apply" onClick="return applyCheck(this)">
	<input type="hidden" name="postSecurityFlag" value="">
</div>

<script>
	initConnectMode = document.ethwan.adslConnectionMode.selectedIndex;
	<% initPage("ethwan"); %>

	<% checkWrite("ethwanSelection"); %>
	<% GetDefaultGateway(); %>
	autoDGWclicked();
	adslConnectionModeSelection();
	protocolChange();
	<% checkWrite("devType"); %>
/*
	var wanmode = <% getInfo("wan_mode"); %>;

	if((wanmode & 1) == 1)
		document.ethwan.wmchkbox[0].checked = true;

	if((wanmode & 2) == 2)
		document.ethwan.wmchkbox[1].checked = true;
*/
</script>
</form>
</body>
</html>

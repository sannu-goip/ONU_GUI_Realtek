<%
if Request_Form("SSID_Flag") = "1" then 
	TCWebApi_set("WebCurSet_Entry","wlan_id", "wlSsidIdx")
end if

If Request_Form("CountryChange")="1" Then
	tcWebApi_set("WebCurSet_Entry","wlan_id","SSID_INDEX")
	TCWebApi_set("WLan_Common","Country","Countries_Channels")
	if Request_Form("Countries_Channels") = "CANADA" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "COLOMBIA" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "DOMINICAN REPUBLIC" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "GUATEMALA" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "MEXICO" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "NORWAY" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "PANAMA" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "PUERTO RICO" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "UNITED STATES" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "TAIWAN" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	elseif Request_Form("Countries_Channels") = "UZBEKISTAN" then
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion0")
	else
		TCWebApi_set("WLan_Common","CountryRegion","CountryRegion1")
	end if
End If
if Request_Form("Save_Flag") = "1" then

	if Request_Form("isDot1XSupported")  = "1" then
			TCWebApi_set("WLan_Common","session_timeout_interval","radiusSVR_ReAuthInter")
			TCWebApi_set("WLan_Entry","RekeyInterval","WPARekeyInter")
			TCWebApi_set("WLan_Entry","RADIUS_Server","radiusSVR_IP")
			TCWebApi_set("WLan_Entry","RADIUS_Port","radiusSVR_Port")
			TCWebApi_set("WLan_Entry","RADIUS_Key","radiusSVR_Key")
		if Request_Form("isDot1XEnhanceSupported") = "1" then
			TCWebApi_set("WLan_Entry","BAK_RADIUS_Server","bakradiusSVR_IP5")
			TCWebApi_set("WLan_Entry","BAK_RADIUS_Port","bakradiusSVR_Port5")
			TCWebApi_set("WLan_Entry","BAK_RADIUS_Key","bakradiusSVR_Key5")
		end if
	end if
    TCWebApi_set("WebCurSet_Entry","24G_channel_update_time","currentTime")

	if Request_Form("wlSsidIdx") <> tcWebApi_get("WebCurSet_Entry","wlan_id", "h") then
		tcWebApi_constSet("WebCurSet_Entry", "wlan_id", "0")
	else
if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then	
	TCWebApi_set("WLan_Common","HT_TxStream","TxStream_Action")	
	TCWebApi_set("WLan_Common","HT_RxStream","RxStream_Action")	
end if	
	TCWebApi_set("WLan_Common", "APOn", "hwlEnbl")
	TCWebApi_set("WLan_Common","WirelessMode", "hwlgMode")
if tcWebApi_get("Info_WLan","isWHNATSupported","h") = "Yes" then 	
	TCWebApi_set("WLan_Common","WHNAT","WLANTxOffload")
end if
if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then	
	TCWebApi_set("WLan_Common","ITxBfEn","WLanITxBfEn")
	TCWebApi_set("WLan_Common","ETxBfEnCond","WLanETxBfEnCond")
	TCWebApi_set("WLan_Common","ETxBfIncapable","WLanETxBfIncapable")
end if	
	TCWebApi_set("WLan_Common","Channel", "wlChannel")
	TCWebApi_set("WLan_Entry","HT_RATE", "wlRate")
	if Request_Form("wlTxPwr") = "6" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel", "6")
		tcWebApi_constSet("WLan_Common","PaMode", "1")
		tcWebApi_constSet("WLan_Common","PowerLevel", "128")
	elseif Request_Form("wlTxPwr") = "1" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel","1")
		tcWebApi_constSet("WLan_Common","PowerLevel", "100")
		tcWebApi_constSet("WLan_Common","PaMode", "0")
	elseif Request_Form("wlTxPwr") = "2" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel","2")
		tcWebApi_constSet("WLan_Common","PowerLevel", "80")
		tcWebApi_constSet("WLan_Common","PaMode", "0")
	elseif Request_Form("wlTxPwr") = "3" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel","3")
		tcWebApi_constSet("WLan_Common","PowerLevel", "60")
		tcWebApi_constSet("WLan_Common","PaMode", "0")
	elseif Request_Form("wlTxPwr") = "4" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel","4")
		tcWebApi_constSet("WLan_Common","PowerLevel", "40")
		tcWebApi_constSet("WLan_Common","PaMode", "0")
	elseif Request_Form("wlTxPwr") = "5" then
		tcWebApi_constSet("WLan_Common","TxPowerLevel","5")
		tcWebApi_constSet("WLan_Common","PowerLevel", "20")
		tcWebApi_constSet("WLan_Common","PaMode", "0")
	end if
	TCWebApi_set("WLan_Common","BeaconPeriod","BeaconInterval")
  	TCWebApi_set("WLan_Common","RTSThreshold","RTSThreshold")
	TCWebApi_set("WLan_Common","FragThreshold","FragmentThreshold")
	TCWebApi_set("WLan_Common","DtimPeriod","wlNetReauth")
	if Request_Form("bwControl") = "0" then
		tcWebApi_constSet("WLan_Common","HT_BW","0")
	else
		tcWebApi_constSet("WLan_Common","HT_BW","1")
	end if
	TCWebApi_set("WLan_Common","HT_GI","giControl")	
	TCWebApi_set("WLan_Entry", "HideSSID", "hwlHide")
	TCWebApi_set("WLan_Entry","SSID", "wlSsid")	
	if tcwebApi_get("WebCustom_Entry","is11AXModeSupported","h" ) <> "Yes" then
	TCWebApi_set("WLan_Entry","HT_MCS","wlMcs")
	end if 
	TCWebApi_set("WLan_Entry","EnableSSID","henableSsid")
        TCWebApi_set("WLan_Entry","EnableGuestWifi","EGWIFI_Enable_Selection")
        tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "0")
	if Request_Form("hwlgMode") = "6" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if	
	if Request_Form("hwlgMode") = "7" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if
	if Request_Form("hwlgMode") = "9" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if
	if Request_Form("hwlgMode") = "16" then
		if Request_Form("bwControl") = "1" then
			tcWebApi_constSet("WLan_Common","HT_BSSCoexistence", "1")
		end if
	end if
	if tcwebApi_get("WebCustom_Entry","isMaxStaNumSupported","h" ) = "Yes" then
		TCWebApi_set("WLan_Entry","MaxStaNum", "wlAssociateNum")
	end if
	TCWebApi_set("WLan_Entry", "AuthMode","hwlAuthMode")
	TCWebApi_set("WLan_Entry","WPAPSK","wlWpaPsk")
	TCWebApi_set("WLan_Entry","WEPAuthType","wlWep")
	TCWebApi_set("WLan_Entry","AuthKeyLen","wlKeyBit")
	TCWebApi_set("WLan_Entry","EncrypType","wlWpa")
	TCWebApi_set("WLan_Entry","DefaultKeyID","wlKeyIndex")
	TCWebApi_set("WLan_Entry","Key1Str","hwlKeys0")
	TCWebApi_set("WLan_Entry","Key2Str","hwlKeys1")
	TCWebApi_set("WLan_Entry","Key3Str","hwlKeys2")
	TCWebApi_set("WLan_Entry","Key4Str","hwlKeys3")
	TCWebApi_set("WLan_Common","DtimPeriod","DTIM")
	If tcwebApi_get("WebCustom_Entry","is11AXModeSupported","h" ) = "Yes" then
		TCWebApi_set("Wlan_Common", "TWTSupport", "TWTSupport")
		TCWebApi_set("Wlan_Common", "MuOfdmaDlEnable", "WlanMuOfdmaDlEnable_flag")
		TCWebApi_set("Wlan_Common", "MuOfdmaUlEnable", "WlanMuOfdmaUlEnable_flag")
		TCWebApi_set("Wlan_Common", "MuMimoDlEnable", "WlanMuMimoDlEnable_flag")
		TCWebApi_set("Wlan_Common", "MuMimoUlEnable", "WlanMuMimoUlEnable_flag")
		TCWebApi_set("Wlan_Common", "SREnable", "WlanSREnable_flag")
	End if
	If tcwebApi_get("WebCustom_Entry","is11AXEnhanceModeSupported","h" ) = "Yes" then
		TCWebApi_set("Wlan_Common", "IndividualTWTSupport", "IndividualTWTSupport_flag")
		TCWebApi_set("Wlan_Common", "HELDPCE", "HELDPC_flag")
		TCWebApi_set("Wlan_Common", "SpatialReuse", "SpatialReuse_flag")		
		TCWebApi_set("Wlan_Common", "BSSColorNum", "BSSColorNum_flag")
		TCWebApi_set("Wlan_Common", "RTS", "RTS_flag")
		TCWebApi_set("Wlan_Common", "CBSSIDMaxIndex", "CBSSIDMaxIndex_flag")
	End if

if Request_Form("WpsActive") = "0" then 
	TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeNone")
else
if Request_Form("hWpsStart") = "1" then
	TCWebApi_set("Info_WLan","WPSActiveStatus","hWpsStart")
	TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
	TCWebApi_set("WLan_Entry","WPSMode","hWPSMode")
	if Request_form("hWPSMode") = "0" then
		TCWebApi_set("WLan_Entry","enrolleePinCode","pinvalue")
	end if
		else
			if tcWebApi_get("Info_WLan","wlanWPStimerRunning", "h") = "0" then
				TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
			elseif tcWebApi_get("Info_WLan","wlanWPStimerRunning", "h") = "N/A" then
					TCWebApi_set("WLan_Entry","WPSConfMode","WpsConfModeAll")
			end if
		end if
	end if
	
if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then 
	if Request_form("WLAN_FltActive") = "0" then
		TCWebApi_set("WLan_Entry","AccessPolicy","WLAN_FltActive")
	else
		TCWebApi_set("WLan_Entry","AccessPolicy","WLAN_FltAction")
	end if
	TCWebApi_set("WLan_Entry","WLan_MAC0","WLANFLT_MAC1")	
	TCWebApi_set("WLan_Entry","WLan_MAC1","WLANFLT_MAC2")	
	TCWebApi_set("WLan_Entry","WLan_MAC2","WLANFLT_MAC3")		
	TCWebApi_set("WLan_Entry","WLan_MAC3","WLANFLT_MAC4")		
	TCWebApi_set("WLan_Entry","WLan_MAC4","WLANFLT_MAC5")	
	TCWebApi_set("WLan_Entry","WLan_MAC5","WLANFLT_MAC6")	
	TCWebApi_set("WLan_Entry","WLan_MAC6","WLANFLT_MAC7")		
	TCWebApi_set("WLan_Entry","WLan_MAC7","WLANFLT_MAC8")
end if
	TCWebApi_commit("WLan_Entry")
	tcWebApi_save()
end if
end if

if Request_Form("isWDSSupported") = "1" then
	TCWebApi_set("WLan_WDS","WdsEnable","WLAN_WDS_Active")
	tcWebApi_constSet("WLan_Common","a", "1")
	if Request_form("WLAN_WDS_Active") = "1" then
		tcWebApi_constSet("WLan_Common","b", "1")
		if Request_Form("wlSecurMode") = "None" then
			TCWebApi_set("WLan_WDS","WdsEncrypType","WDS_EncrypType_NONE")
		elseif Request_Form("wlSecurMode") = "Basic" then
				TCWebApi_set("WLan_WDS","WdsEncrypType","WDS_EncrypType_WEP")
				if Request_Form("wlKeyIndex") = "1" then
					TCWebApi_set("WLan_WDS","WdsKey","hwlKeys0")
				elseif Request_Form("wlKeyIndex") = "2" then
					TCWebApi_set("WLan_WDS","WdsKey","hwlKeys1")
				elseif Request_Form("wlKeyIndex") = "3" then
					TCWebApi_set("WLan_WDS","WdsKey","hwlKeys2")
				elseif Request_Form("wlKeyIndex") = "4" then
					TCWebApi_set("WLan_WDS","WdsKey","hwlKeys3")
				end if
		else
			tcWebApi_constSet("WLan_Common","c", "1")
			TCWebApi_set("WLan_WDS","WdsEncrypType","WDS_EncrypType_Selection")
			TCWebApi_set("WLan_WDS","WdsKey","WDS_Key")
		end if
			TCWebApi_set("WLan_WDS","Wds_MAC0","WLANWDS_PEER_MAC1")
			TCWebApi_set("WLan_WDS","Wds_MAC1","WLANWDS_PEER_MAC2")
			TCWebApi_set("WLan_WDS","Wds_MAC2","WLANWDS_PEER_MAC3")
			TCWebApi_set("WLan_WDS","Wds_MAC3","WLANWDS_PEER_MAC4")
	end if
	TCWebApi_save()
end if
If Request_Form("WpsOOB")="1" Then
	TCWebApi_set("Info_WLan","WPSOOBActive","WpsOOB")
	tcWebApi_commit("WLan_Entry")
end if

If Request_Form("WpsGenerate") = "1" then
			TCWebApi_set("Info_WLan","WPSGenPinCode","WpsGenerate")
			TCWebApi_commit("WLan_Entry")
end if
%>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="<%tcWebApi_get("String_Entry","iconHerf","s")%>" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title><%tcWebApi_get("String_Entry","WLANText","s")%></title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
	<!-- <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet"> -->
	<style>
		.inpswEye{
			position: relative;
			float: right;
		}
		#wlWpaD, #wpaPreShareKey, #wpsmodeTR, #pinval{
			display:flex;
		}
		
	</style>
        <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
        <SCRIPT language=JavaScript type=text/javascript>
var UserLevel = 1;

<% if tcwebApi_get("WebCustom_Entry","isMultiSupported","h") = "Yes" then %>
	<% if tcWebApi_get("Info_WLan","wlanWPStimerRunning_0","h") <> "N/A" then %>
		var oldwpsTimerRunningData = "<% tcWebApi_get("Info_WLan","wlanWPStimerRunning_0","s") %>";
	<% else %>
		var oldwpsTimerRunningData = "";
	<% end if %>
	<% if tcWebApi_get("Info_WLan","wlanWPSStatus_0","h") <> "N/A" then %>
		var oldwlanWPSStatus = "<% tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "s") %>";		
	<% else %>
		var oldwlanWPSStatus = "";
	<% end if %>
<% end if %>

function doRegionCheck(){
	var vCountryName = document.ConfigForm.Countries_Channels.value;
	var ctlCountryRegion = document.ConfigForm.hCountryRegion;
	var ctlCountryRegion0 = document.ConfigForm.CountryRegion0;
	var ctlCountryRegion1 = document.ConfigForm.CountryRegion1;
	var ctlCountryRegion2 = document.ConfigForm.CountryRegion2;
	var ctlCountryRegion3 = document.ConfigForm.CountryRegion3;
	var ctlCountryRegion4 = document.ConfigForm.CountryRegion4;
	var ctlCountryRegion5 = document.ConfigForm.CountryRegion5;
	if(vCountryName == "CANADA" || vCountryName == "COLOMBIA" || vCountryName == "DOMINICAN REPUBLIC" || vCountryName == "GUATEMALA" || vCountryName == "MEXICO" ||
	   vCountryName == "NORWAY" || vCountryName == "PANAMA" || vCountryName == "PUERTO RICO" || vCountryName == "UNITED STATES" || vCountryName == "TAIWAN" || vCountryName == "UZBEKISTAN")
		ctlCountryRegion.value = ctlCountryRegion0.value;	
	else	
		ctlCountryRegion.value = ctlCountryRegion1.value;
	loadChannelList();
	document.ConfigForm.CountryChange.value = 1;
	}
function doStartWPS(){
	var pinLen = 8;
	var Form = new webSubmitForm();
	if (addParameter(Form) == false)
	{
		return;
	}
	if(getSelectVal("wpsmode") == 'ap-pin')
	{
		var pinval = getElement('pinvalue');
		if(isSafeStringIn(pinval.value,'0123456789') == false)
		{
			alert('<%tcWebApi_get("String_Entry","PINIntegerText","s")%> ');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		var pinValue = pinval.value;
		if(pinValue.length != pinLen)
		{
			alert('<%tcWebApi_get("String_Entry","EightDigitPINText","s")%>');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		if(isvalidpin(pinValue) == false)
		{
			alert('<%tcWebApi_get("String_Entry","RightPINText","s")%>');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
	}
	var temp = getSelectVal("wpsmode");
	if(temp == 'ap-pin')
	{
		setText('hWPSMode', 0);
	}
	else
	{
		setText('hWPSMode', 1);
	}
	setText('hWpsStart',1);
	if(getValue('isInWPSing')==0){
		alert("<%tcWebApi_get("String_Entry","EnableIn2MinutesText","s")%>");
	}
<% if tcwebApi_get("WebCustom_Entry", "isMultiSupported", "h") = "Yes" then %>	
	top.getWlanWpsTimerCount = top.maxWlanWpsTimerCount;
<% end if %>
	SubmitForm();	
	//document.ConfigForm.submit();
}

function doGenerate(){
	document.ConfigForm.WpsGenerate.value = "1";
	if( true == setEBooValueCookie(document.ConfigForm) )
		document.ConfigForm.submit();
}

function stWlan(domain,enable,mode,channel,rate,power,wlHide,BeaconType,Encryption,AuthMode,KeyIndex,EncryptionLevel,WPAModes,IEEE11iEModes,BWControl,GIControl,MCSValue,TxRxStream,WPAWPA2Modes,WPSMode,PINValue)
{
	this.domain = domain;
	this.enable = enable;
	/*if(ssid == 'N/A')
		this.ssid = '';
	else
		this.ssid = ssid;*/

	var WirelessMode = 'b,g';
	if (mode == '0')
		WirelessMode = 'b,g';
	else if (mode == '1')
		WirelessMode = 'b';
	else if (mode == '4')
		WirelessMode = 'g';
	else if (mode == '6')
		WirelessMode = 'n';
	else if (mode == '7')
		WirelessMode = 'g,n';
	else if (mode == '9')
		WirelessMode = 'b,g,n';		
<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>	
	else if (mode == '16')
		WirelessMode = 'g,n,ax';
<% end if %>
	else
		WirelessMode = 'b,g';
	this.mode = WirelessMode;

	//this.channel = channel;
	if(channel == 'N/A')
		this.channel = 'Auto';
	else
		this.channel = channel;

	//this.rate = rate;
	if(rate == 'N/A')
		this.rate = 'Auto';
	else
		this.rate = rate;


	if(power == 'N/A')
		this.power = '1';
	else
		this.power = power;
	if (wlHide == '1')
		this.wlHide = '1';
	else
		this.wlHide = '0';

	var SecurMode = 'None';
	if (BeaconType == 'WEP-64Bits')
		SecurMode = 'Basic';
	else if (BeaconType == 'WEP-128Bits')
		SecurMode = 'Basic';
	else if (BeaconType == 'WPAPSK')
		SecurMode = 'WPA';
	else if (BeaconType == 'WPA2PSK')
		SecurMode = '11i';
	else if (BeaconType == 'WPAPSKWPA2PSK')
		SecurMode = 'WPAand11i';
	/*else if (BeaconType == 'Radius-WEP64')
		SecurMode = 'radius64';
	else if (BeaconType == 'Radius-WEP128')
		SecurMode = 'radius128';
	else if (BeaconType == 'WPA')
		SecurMode = 'wpaOnly';
	else if (BeaconType == 'WPA2')
		SecurMode = 'wpa2Only';
	else if (BeaconType == 'WPA1WPA2')
		SecurMode = 'wpa1and2';*/
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
	else if (BeaconType == 'WPA3PSK')
		SecurMode = 'WPA3-PSK';
	else if (BeaconType == 'WPA2PSKWPA3PSK')
		SecurMode = 'WPA2-PSK/WPA3-PSK';
<% end if %>
/*
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan", "isDot1XSupported", "h") = "Yes" then %>
	else if (BeaconType == 'WPA3')
		SecurMode = 'WPA3';
	else if (BeaconType == 'WPA3-192Bit')
		SecurMode = 'WPA3-192Bit';
<% end if %>
<% end if %>
*/
	else//'OPEN'
		SecurMode = 'None';
	this.BeaconType = SecurMode;

	this.Encryption = Encryption;
	if(AuthMode == 'N/A')
		this.AuthMode = 'Both';
	else
		this.AuthMode = AuthMode;
	if(KeyIndex == 'N/A')
		this.KeyIndex = '1';
	else
		this.KeyIndex = KeyIndex;
	if(parseInt(EncryptionLevel.substr(4)) == '64')
		this.EncypBit = '64';
	else if(parseInt(EncryptionLevel.substr(4)) == '128')
		this.EncypBit = '128';
	else
		this.EncypBit = '64';
	if((WPAModes == 'N/A') || (WPAModes == 'NONE') || (WPAModes == 'WEP'))
		this.WPAModes = 'TKIP';
	else
		this.WPAModes = WPAModes;
	if((IEEE11iEModes == 'N/A') || (IEEE11iEModes == 'NONE') || (IEEE11iEModes == 'WEP'))
		this.IEEE11iEModes = 'TKIP';
	else
		this.IEEE11iEModes = IEEE11iEModes;
	this.BWControl = BWControl;
	this.GIControl = GIControl;
	if(MCSValue == 'N/A')
		this.MCSValue = '33';//Auto
	else
		this.MCSValue = MCSValue;
	this.TxRxStream = TxRxStream;
	if((WPAWPA2Modes == 'N/A') || (WPAWPA2Modes == 'NONE') || (WPAWPA2Modes == 'WEP'))
		this.WPAWPA2Modes = 'TKIP';
	else
		this.WPAWPA2Modes = WPAWPA2Modes;
	if(WPSMode == '1' || WPSMode == 'N/A')
		this.WPSMode = 'ap-pbc';
	else
		this.WPSMode = 'ap-pin';
	this.PINValue = PINValue;
}
var srt_device = "<% tcWebApi_get("WLan_Common", "rt_device","s") %>";
var str_trstream = "1";
if(srt_device != "N/A")
{
	if(srt_device.substr(3) == "2")
		str_trstream = "2";
}
var Wlan = new Array(new stWlan("domain","<% tcWebApi_get("WLan_Entry", "EnableSSID","s") %>","<% tcWebApi_get("WLan_Common","WirelessMode","s") %>","<% tcWebApi_get("WLan_Common","Channel","s") %>","<% tcWebApi_get("WLan_Entry","HT_RATE","s") %>","<% tcWebApi_get("WLan_Common","TxPowerLevel","s") %>","<% tcWebApi_get("WLan_Entry","HideSSID","s") %>","<% tcWebApi_get("WLan_Entry","AuthMode","s") %>","WEPEncryption","<% tcWebApi_get("WLan_Entry","WEPAuthType","s") %>","<% tcWebApi_get("WLan_Entry","DefaultKeyID","s") %>","<% tcWebApi_get("WLan_Entry","AuthMode","s") %>","<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Common","HT_BW","s") %>","<% tcWebApi_get("WLan_Common","HT_GI","s") %>","<% tcWebApi_get("WLan_Entry","HT_MCS","s") %>", str_trstream,"<% tcWebApi_get("WLan_Entry","EncrypType","s") %>","<% tcWebApi_get("WLan_Entry","WPSMode","s") %>","<% tcWebApi_get("WLan_Entry","enrolleePinCode","s") %>"),null);
var enbl = <% tcWebApi_get("WLan_Common","APOn","s") %>;
var ssidIdx = 0;
var state = enbl;
var wlHide = Wlan[0].wlHide;
var band = 2;
var phy = 'g';
var wepEnable = getWepSwitch();
var wlCorerev = 8;
var ssidAccessAttr = 'Subscriber';
var beaconTypeAccessAttr = 'Subscriber';
var EnableAccessAttr = 'Subscriber';
var wpsV2Support = '<% tcWebApi_get("WLan_Entry0","WscV2Support", "s") %>';
function getWepSwitch()
{
	if (Wlan[ssidIdx].Encryption == 'WEPEncryption')
	{
		return 1;
	}
	else if (Wlan[ssidIdx].Encryption == 'None')
	{
		return 0;
	}
}
function hideOption(selObject, index)
{
	var oldOption = selObject.children(index);
	var oldStr = oldOption.innerText;
	var newOption = document.createElement('<div' + oldOption.outerHTML.match(/(<\w*)([^>]*)(>)/)[2] +'>');
	newOption.innerText  = oldStr;
	newOption.swapNode(oldOption);
}
function hideWlSecInfo(hidden)
{
	var status = 'visible';
	with ( document.forms[0] )
	{
		var i = 0;
		if ( hidden == 1 )
		{
			status = 'hidden';
			wlHide.disabled = 1;
			wlSsid.disabled = 1;
		}
		else
		{
			wlHide.disabled = 0;
			wlSsid.disabled = 0;
		}
	}
}
function wlSecCbClick(cb)
{
	if ( cb.checked == true )
	{
		hideWlSecInfo(0);
	}
	else
	{
		hideWlSecInfo(1);
	}
}
function getPreauth(wlPreauth) {
	var ret;
	if ( wlPreauth == "on" )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function isValidWPAPskKey(val) {
	var ret = true;
	var len = val.length;
	var maxSize = 64;
	var minSize = 8;
	if ( len >= minSize && len < maxSize )
	{
		if(val.match(/[^\x00-\xff]/g))
   	    {
			ret = false;
		 }
	} else if ( len == maxSize ) {
		for ( i = 0; i < maxSize; i++ )
		if ( isHexaDigit(val.charAt(i)) == false )
		{
			ret = false;	
			break;
		}
		if ( i == maxSize )
		ret = true;
	} else
		ret = false;
	return ret;
}
function hideAllElements()
{
	setDisplay("wlWpaD", 0);
	setDisplay("wpaPreShareKey", 0);
	setDisplay("wpaGTKRekey", 0);
	setDisplay("wlRadius", 0);
	setDisplay("Preauth", 0);
	setDisplay("NetReauth", 0);
	setDisplay("wlWepD", 0);
	setDisplay("keyInfo", 0);
	setDisplay("wlWPARekeyInter", 0);
}
function encrypChange()
{
	with ( document.forms[0] )
	{
		var securmode = getSelectVal('wlSecurMode')
		switch(securmode)
		{
			case 'None':
			{
				getElement("wlUserTip").innerHTML = "<font color=red><%tcWebApi_get("String_Entry","PromotText","s")%></font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsNoneText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","RandomAccessText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","NotUseText","s")%>";
				break;
			}
			case 'Basic':
			case 'radius64': 
			case 'radius128': 
			{
				setDisplay("keyInfo", 1);
				wlKeys[0].disabled = 0;
				wlKeys[1].disabled = 0;
				wlKeys[2].disabled = 0;
				wlKeys[3].disabled = 0;
				wlKeyIndex.length = 0;
				wlKeyIndex[0] = new Option("1", "1");
				wlKeyIndex[1] = new Option("2", "2");
				wlKeyIndex[2] = new Option("3", "3");
				wlKeyIndex[3] = new Option("4", "4");
				setSelect('wlKeyIndex',Wlan[ssidIdx].KeyIndex) ;
                                if(securmode == 'Basic')
                                {
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeWEPText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUserText","s")%>";
                                }
                                else if(securmode == 'radius64')
				{
					getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
					+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeRadius64Text","s")%>"
					+ "<br>"
					+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySet64BitByUserText","s")%>";
				}
				else if(securmode == 'radius128')
				{
					getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
					+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeRadius128Text","s")%>"
				+ "<br>"
					+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySet128BitByUserText","s")%>";
				}
				break;
			}
			case 'WPA':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPAText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser2Text","s")%>";
				break;
			}
			case '11i':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA2Text","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
			case 'WPAand11i':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA2ConfigureText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
			case 'wpaOnly':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeWPAText","s")%>";
				break;
			}
			case 'wpa2Only': 
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeWPA2Text","s")%>";
				break;
			}
			case 'wpa1and2':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeWPA1WPA2Text","s")%>";
				break;
			}
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
			case 'WPA3-PSK':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA3PSKText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
			case 'WPA2-PSK/WPA3-PSK':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA2WPA3PSKText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
<% end if %>
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			case 'WPA3':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA3Text","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
			case 'WPA3-192Bit':
			{
				getElement("wlUserTip").innerHTML = "<font color=red>Note:</font>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","ModeIsWPA3192BitText","s")%>"
				+ "<br>"
				+ "&nbsp;&nbsp;&nbsp;&nbsp;<%tcWebApi_get("String_Entry","KeySetByUser3Text","s")%>";
				break;
			}
<% end if %>
<% end if %>
			default:
				break;
		}
	}
}
function wlKeyBitChange()
{
	with(document.forms[0])
	{
		var wlKeyBitLen = getSelectVal('wlKeyBit');
		if(wlKeyBitLen == 64)
		{
			getElement("wlKeyBitTip").innerHTML = "<%tcWebApi_get("String_Entry","Enter1Text","s")%>";
		}
		else
		{
			getElement("wlKeyBitTip").innerHTML = "<%tcWebApi_get("String_Entry","Enter2Text","s")%>";
		}
	}
}
function authModeChange(OnPageLoad)
{
	with ( document.forms[0] )
	{
		var SecurMode = getSelectVal('wlSecurMode');
		var mode = getValue('wlgMode');
		var i, algos;
	if(SecurMode == "None" || SecurMode == "Basic"){
		document.getElementById("wds_div").style.display="none";
		}
	else if(document.getElementById("wds_div") != null){
		document.getElementById("wds_div").style.display="";
		}
		hideAllElements();
		switch ( SecurMode )
		{
		case 'None':
			setDisplay("wlWepD", 0);
			setDisplay("keyInfo", 0);
			setDisplay("wpsinfo", 1);
			wpsModeChange();

			break;
		case 'Basic':
		case 'shared':
			setDisplay("wlWepD", 1);
			setDisplay("keyInfo", 1);
			setDisplay("wpsinfo", 1);

			break;
		case 'radius':
			setDisplay("wlRadius", 1);
			setDisplay("wlWepD", 1);
			break;
		case 'radius64':
		case 'radius128':
			setDisplay("wlRadius", 1);
			setDisplay("keyInfo", 1); 
			break;
		case 'wpaOnly':
		case 'wpa2Only':
		case 'wpa1and2':
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		case 'WPA3':
		case 'WPA3-192Bit':
<% end if %>
<% end if %>
			setDisplay("wlWpaD", 1);
			setDisplay("wlRadius", 1);
			setDisplay("wlWPARekeyInter", 1);
			break;
		case 'wpa2':
		case 'wpa2mix':
			setDisplay("Preauth", 1);
			setDisplay("NetReauth", 1);
		case 'wpa':
			setDisplay("wlWpaD", 1);
			setDisplay("wlRadius", 1);
			break;
		case '11i':
		case 'psk2mix':
		case 'WPA':
		case 'WPAand11i':
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		case 'WPA3-PSK':
		case 'WPA2-PSK/WPA3-PSK':
<% end if %>
			setDisplay("wlWpaD", 1);
			setDisplay("wpaPreShareKey", 1);
			setDisplay("wpsinfo", 1);
			wpsModeChange();

			break;
		}
		if(OnPageLoad==1)
		{
			if ("n" == mode)
				algos = new Array(new Array('AES','AES'));
			else
				algos = new Array(new Array('TKIP','TKIP'), new Array('AES','AES'),new Array('TKIP+AES','TKIPAES')
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
								,new Array('GCMP256','GCMP256')
<% end if %>
<% end if %>
			);
			wlWpa.length = algos.length;
			for (var i in algos)
			{
				wlWpa[i] = new Option(algos[i][0], algos[i][1]);
				wlWpa[i].value = algos[i][1];
				if (Wlan[ssidIdx].BeaconType == 'WPA'
				&& wlWpa[i][1] == Wlan[ssidIdx].WPAModes)
				{
					wlWpa[i].selected = true;
				}
				else if (Wlan[ssidIdx].BeaconType == '11i'
				&& wlWpa[i][1] ==  Wlan[ssidIdx].IEEE11iEModes)
				{
					wlWpa[i].selected = true;
				}
				else if (Wlan[ssidIdx].BeaconType == 'WPAand11i'
				&& wlWpa[i][1] ==  Wlan[ssidIdx].WPAWPA2Modes)
				{
					wlWpa[i].selected = true;
				}
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
				else if (Wlan[ssidIdx].BeaconType == 'WPA3-PSK'
				&& wlWpa[i][1] == 'AES')
				{
					wlWpa[i].selected = true;
				}
				else if (Wlan[ssidIdx].BeaconType == 'WPA2-PSK/WPA3-PSK'
				&& wlWpa[i][1] == 'AES')
				{
					wlWpa[i].selected = true;
				}
<% end if %>
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
				else if (Wlan[ssidIdx].BeaconType == 'WPA3' && wlWpa[i][1] == 'AES'){
					wlWpa[i].selected = true;
			}
<% end if %>
<% end if %>
			}
		}
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		for (var idx = 0; idx < wlWpa.length; idx++)
		{
				wlWpa[idx].disabled = false;
		}
<% end if %>
		if (SecurMode == 'WPA' || SecurMode =='wpaOnly' || SecurMode =='wpa2Only' ||SecurMode =='wpa1and2' )
		{
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			for (var idx = 0; idx < wlWpa.length; idx++) {
				if (wlWpa[idx].value == "GCMP256")
					wlWpa[idx].disabled = true;	
			}
<% end if %>
<% end if %>
			if ("n" == mode
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>	
			|| Wlan[ssidIdx].WPAModes == "GCMP256"
<% end if %>
<% end if %>
	) 
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].WPAModes);
		}
		else if (SecurMode == '11i')
		{
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			for (var idx = 0; idx < wlWpa.length; idx++) {
				if (wlWpa[idx].value == "GCMP256")
					wlWpa[idx].disabled = true;	
			}
<% end if %>
<% end if %>
			if ("n" == mode
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
					|| Wlan[ssidIdx].WPAModes == "GCMP256"
<% end if %>
<% end if %>
			)  
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].IEEE11iEModes);
		}
		else if (SecurMode == 'WPAand11i')
		{
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			for (var idx = 0; idx < wlWpa.length; idx++) {
				if (wlWpa[idx].value == "GCMP256")
					wlWpa[idx].disabled = true;	
			}
<% end if %>
<% end if %>
			if ("n" == mode
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
			 		|| Wlan[ssidIdx].WPAModes == "GCMP256"
<% end if %>
<% end if %>
			 )
				setSelect('wlWpa',"AES");
			else
				setSelect('wlWpa',Wlan[ssidIdx].WPAWPA2Modes);
		}
		else if (SecurMode == 'Basic')
		{
			document.forms[0].wlKeyBit.disabled=false;
			wlWep.length = 0;
			wlWep[0] = new Option("open", "OpenSystem");
			wlWep[1] = new Option("share", "SharedKey");
			wlWep[2] = new Option("open+share", "Both");
			if(OnPageLoad==1)
			{
				setSelect('wlWep',Wlan[ssidIdx].AuthMode);
			}
			else
			{
				setSelect('wlWep', "Both");
			}
		}
		else if (SecurMode == 'radius64')
		{
			document.forms[0].wlKeyBit.disabled=true;
			document.forms[0].wlKeyBit.options[1].selected=true;
			wlKeyBitChange(); 
		}
		else if (SecurMode == 'radius128')
		{
			document.forms[0].wlKeyBit.disabled=true;
			document.forms[0].wlKeyBit.options[0].selected=true;
			wlKeyBitChange(); 
		}
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		else if (SecurMode == 'WPA3-PSK')
		{
			for (var idx = 0; idx < wlWpa.length; idx++)
			{
				if(wlWpa[idx].value != "AES")
					wlWpa[idx].disabled = true;
			}
			setSelect('wlWpa',"AES");
		}
		else if (SecurMode == 'WPA2-PSK/WPA3-PSK')
		{
			for (var idx = 0; idx < wlWpa.length; idx++)
			{
				if(wlWpa[idx].value != "AES")
					wlWpa[idx].disabled = true;
			}
			setSelect('wlWpa',"AES");
		}
<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		else if (SecurMode == 'WPA3'){
			for (var idx = 0; idx < wlWpa.length; idx++) {
				if (wlWpa[idx].value != "AES")
					wlWpa[idx].disabled = true;	
			}
			setSelect('wlWpa', "AES");	
		}
		else if (SecurMode == 'WPA3-192Bit'){
			for (var idx = 0; idx < wlWpa.length; idx++) {
				if (wlWpa[idx].value != "GCMP256")
					wlWpa[idx].disabled = true;	
			}
			setSelect('wlWpa', "GCMP256");	
		}
<% end if %>
<% end if %>
	}
	encrypChange();
}

function doBroadcastSSIDChange()
{
	with ( document.forms[0] )
	{
		if(wpsV2Support == 1)
		{
			if(wlSsidIdx[0].selected == true && enableWps.checked == true && wlHide.checked == true)
			{
					var rv = confirm("<%tcWebApi_get("String_Entry","BroadcastCancellText","s")%>");
					if (rv == false)
					{
						wlHide.checked = false;
					}
					else
					{
						wlHide.checked = true;
						enableWps.checked = false;
						WpsActive.value = "0";
					}
			}
		}
  }
	return 1;
}

function wpapsk_window()
{
	var psk_window = window.open("", "", "toolbar=no,width=500,height=100");
	psk_window.document.write("The WPA Pre-Shared Key is " + wpaPskKey);
	psk_window.document.close();
}
function getGmodeIndex(mode) {
	var ret = 0;
	switch(mode) {
		case '0':
			ret = 3;
			break;
		case '4':
			ret = 1;
			break;
		case '5':
			ret = 2;
			break;
		default:
			ret = 0;
			break;
	}
	return ret;
}

<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
var isMeshBssCfg = 0;
var isBackHaul = 0;
<% if tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "0" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry0","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "1" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry1","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "2" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry2","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "3" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry3","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "4" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry4","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "5" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry5","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "6" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry6","BackHaul","s") %>";
<% elseif tcWebApi_get("WebCurSet_Entry","wlan_id", "h") = "7" then %>
isBackHaul = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry7","BackHaul","s") %>";
<% end if %>
function easymesh_onload(type)
{
	var wl_authMode="", wl_encrypType = "";
	var mapDevRole = "<% tcWebApi_get("Mesh_common","DeviceRole","s") %>";
	var al_mac = "<% tcWebApi_get("Mesh_mapcfg","AL-MAC","s") %>";
	var bss_al_mac = "";
	var bss_fh_support = 0, bss_bh_support = 0;
	var node_idx = document.forms[0].wlSsidIdx.value;
	node_idx = parseInt(node_idx) + 1;
	isMeshBssCfg = 0;

	if(mapDevRole != 1 && mapDevRole != 2)
	{
		console.log("EasyMesh Device Role is neither Controller nor Agent!");
		return;
	}
	bss_al_mac = "<% tcWebApi_get("Mesh_radio2gbssinfo","AL-MAC","s") %>";
	
	switch(parseInt(node_idx))
	{
		case 1:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry0","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry0","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.1","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.1","EncrypType","s") %>";
			break;
		case 2:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry1","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry1","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.2","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.2","EncrypType","s") %>";
			break;
		case 3:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry2","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry2","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.3","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.3","EncrypType","s") %>";
			break;
		case 4:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry3","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry3","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.4","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.4","EncrypType","s") %>";
			break;
		case 5:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry4","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry4","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.5","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.5","EncrypType","s") %>";
			break;
		case 6:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry5","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry5","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.6","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.6","EncrypType","s") %>";
			break;
		case 7:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry6","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry6","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.7","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.7","EncrypType","s") %>";
			break;
		case 8:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry7","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry7","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.8","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.8","EncrypType","s") %>";
			break;
		case 9:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry8","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry8","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.9","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.9","EncrypType","s") %>";
			break;
		case 10:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry9","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry9","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.10","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.10","EncrypType","s") %>";
			break;
		case 11:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry10","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry10","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.11","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.11","EncrypType","s") %>";
			break;
		case 12:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry11","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry11","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.12","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.12","EncrypType","s") %>";
			break;
		case 13:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry12","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry12","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.13","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.13","EncrypType","s") %>";
			break;
		case 14:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry13","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry13","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.14","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.14","EncrypType","s") %>";
			break;
		case 15:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry14","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry14","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.15","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.15","EncrypType","s") %>";
			break;
		case 16:
			bss_fh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry15","FrontHaul","s") %>";
			bss_bh_support = "<% tcWebApi_get("Mesh_radio2gbssinfo_entry15","BackHaul","s") %>";
			wl_authMode = "<% tcWebApi_get("WLan_Entry.16","AuthMode","s") %>";
			wl_encrypType = "<% tcWebApi_get("WLan_Entry.16","EncrypType","s") %>";
			break;
		default:
			bss_al_mac = "";
			bss_fh_support = 0;
			bss_bh_support = 0;
			wl_authMode = "";
			wl_encrypType = "";
			break;
	}

	al_mac = al_mac.toUpperCase();
	bss_al_mac = bss_al_mac.toUpperCase();
	if( (al_mac == null) || (al_mac == "N/A") || (al_mac == "") || (al_mac == "00:00:00:00:00:00") 
		|| (bss_al_mac == null) || (bss_al_mac == "N/A") || (bss_al_mac == "") || (bss_al_mac == "00:00:00:00:00:00") )
	{
		return;
	}
	
	if( ((bss_al_mac == al_mac) || (bss_al_mac == "FF:FF:FF:FF:FF:FF"))
			&& ((1 == bss_fh_support) || (1 == bss_bh_support)) )
	{
		var wlSecurMode = document.forms[0].wlSecurMode;
		for (var idx=0; idx < wlSecurMode.length; idx++) 
		{
			var tmpSecurMode = wlSecurMode.options[idx].value;
			tmpSecurMode = tmpSecurMode.toUpperCase();
			if(((tmpSecurMode == "NONE") || (tmpSecurMode == "WPA") || (tmpSecurMode == "11I") || (tmpSecurMode == "WPAAND11I") || (tmpSecurMode == "WPA3-PSK") || (tmpSecurMode == "WPA2-PSK/WPA3-PSK")) && 1 != isBackHaul)
			{
				wlSecurMode.options[idx].disabled = false;
			}
			else if(((tmpSecurMode == "NONE") || (tmpSecurMode == "11I")) && 1 == isBackHaul)
			{
				wlSecurMode.options[idx].disabled = false;
			}
			else
			{
				wlSecurMode.options[idx].disabled = true;
			}
		}

		var wlWpa = document.forms[0].wlWpa;
		for (var idx=0; idx < wlWpa.length; idx++) 
		{
			var tmpWpa = wlWpa.options[idx].value;
			tmpWpa = tmpWpa.toUpperCase();
			if(((tmpWpa == "NONE") || (tmpWpa == "AES") || (tmpWpa == "TKIP") || (tmpWpa == "TKIPAES")) && 1 != isBackHaul)
			{
				wlWpa.options[idx].disabled = false;
			}
			else if(((tmpWpa == "NONE") || (tmpWpa == "AES")) && 1 == isBackHaul)
			{
				wlWpa.options[idx].disabled = false;
			}
			else
			{
				wlWpa.options[idx].disabled = true;
			}
		}

		if(1 != isBackHaul && (wl_authMode.toUpperCase() != "OPEN") && (wl_authMode.toUpperCase() != "WPA2PSK") && (wl_authMode.toUpperCase() != "WPA3PSK") && (wl_authMode.toUpperCase() != "WPA2PSKWPA3PSK"))
		{
			alert('<%tcWebApi_get("String_Entry","HintOpenEasyMeshText4","s")%>');
		}
		else if(1 == isBackHaul && (wl_authMode.toUpperCase() != "OPEN") && (wl_authMode.toUpperCase() != "WPA2PSK"))
		{
			alert('<%tcWebApi_get("String_Entry","HintOpenEasyMeshText2","s")%>');
		}
		
		if(wl_authMode.toUpperCase() != "OPEN" && type == 1)
		{
			if(1 != isBackHaul && (wl_encrypType.toUpperCase() != "NONE") && (wl_encrypType.toUpperCase() != "AES") && (wl_encrypType.toUpperCase() != "TKIP") && (wl_encrypType.toUpperCase() != "TKIPAES"))
			{
				alert('<%tcWebApi_get("String_Entry","HintOpenEasyMeshText5","s")%>');
			}
			else if(1 == isBackHaul && (wl_encrypType.toUpperCase() != "NONE") && (wl_encrypType.toUpperCase() != "AES"))
			{
				alert('<%tcWebApi_get("String_Entry","HintOpenEasyMeshText3","s")%>');
			}
		}

		isMeshBssCfg = 1;
	}

	return;	
}
<% end if %>

function gModeChange()
{
	with ( document.forms[0] )
	{
		var mode = getValue('wlgMode');
		if ((mode == 'b,g,n') || (mode == 'n'))
		{
			setDisplay('wlTransferRate',0);
			if (curUserName == sptUserName)
			{
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
				setDisplay('11NmcsControl',0);
<% end if %>
				setDisplay('11NbwControl',1);
				//setDisplay('11NgiControl',1);
			}
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
			loadMCSList();
<% end if %>
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" Then %>
<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>		
		document.ConfigForm.WLanTxBeamForming[3].selected = true;
<% end if %>
<% end if %>

		}
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		else if (mode == 'g,n,ax' || mode == 'n,ax') {
			setDisplay('wlTransferRate',0);
			if (curUserName == sptUserName)
			{
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
				setDisplay('11NmcsControl',0);
<% end if %>
				setDisplay('11NbwControl',1);
				//setDisplay('11NgiControl',1);
			}
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
			loadMCSList();
<% end if %>
		}
<% end if %>
		else
		{
			setDisplay('wlTransferRate',0);
			if (curUserName == sptUserName)
			{
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
				setDisplay('11NmcsControl',0);
<% end if %>
				setDisplay('11NbwControl',0);
				setDisplay('11NgiControl',0);
			}
			loadRateList();
		}
		loadAuthModeList();
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
		easymesh_onload(0);
<% end if %>
	}
}
function loadChannelList()
{
	var CountryRegion = document.ConfigForm.hCountryRegion.value;
	
	if (band == "2")
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0");
		if(CountryRegion == "0"){
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
		}
		else if(CountryRegion == "1"){
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
			document.forms[0].wlChannel[12] = new Option("12", "12");
			document.forms[0].wlChannel[13] = new Option("13", "13");
		}
		else if(CountryRegion == "2"){
			document.forms[0].wlChannel[1] = new Option("10", "10");
			document.forms[0].wlChannel[2] = new Option("11", "11");
		}
		else if(CountryRegion == "3"){
			document.forms[0].wlChannel[1] = new Option("10", "10");
			document.forms[0].wlChannel[2] = new Option("11", "11");
			document.forms[0].wlChannel[3] = new Option("12", "12");
			document.forms[0].wlChannel[4] = new Option("13", "13");
		}
		else if(CountryRegion == "4"){
			document.forms[0].wlChannel[1] = new Option("4", "4");
		}
		else if(CountryRegion == "5"){
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
			document.forms[0].wlChannel[12] = new Option("12", "12");
			document.forms[0].wlChannel[13] = new Option("13", "13");
			document.forms[0].wlChannel[14] = new Option("14", "14");
		}
		else if(CountryRegion == "6"){
			document.forms[0].wlChannel[1] = new Option("3", "3");
			document.forms[0].wlChannel[2] = new Option("4", "4");
			document.forms[0].wlChannel[3] = new Option("5", "5");
			document.forms[0].wlChannel[4] = new Option("6", "6");
			document.forms[0].wlChannel[5] = new Option("7", "7");
			document.forms[0].wlChannel[6] = new Option("8", "8");
			document.forms[0].wlChannel[7] = new Option("9", "9");
		}
		else{//1 or else
			document.forms[0].wlChannel[1] = new Option("1", "1");
			document.forms[0].wlChannel[2] = new Option("2", "2");
			document.forms[0].wlChannel[3] = new Option("3", "3");
			document.forms[0].wlChannel[4] = new Option("4", "4");
			document.forms[0].wlChannel[5] = new Option("5", "5");
			document.forms[0].wlChannel[6] = new Option("6", "6");
			document.forms[0].wlChannel[7] = new Option("7", "7");
			document.forms[0].wlChannel[8] = new Option("8", "8");
			document.forms[0].wlChannel[9] = new Option("9", "9");
			document.forms[0].wlChannel[10] = new Option("10", "10");
			document.forms[0].wlChannel[11] = new Option("11", "11");
			document.forms[0].wlChannel[12] = new Option("12", "12");
			document.forms[0].wlChannel[13] = new Option("13", "13");
		}
	}
	else if (band == "1")
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0");
	}
	else
	{
		document.forms[0].wlChannel[0] = new Option("Auto", "0")
	}
	setSelect('wlChannel',Wlan[ssidIdx].channel);
}

<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
function loadMCSList()
{
	document.forms[0].wlMcs.options.length = 0;
	document.forms[0].wlMcs[0] = new Option("Auto", "33", false, Wlan[ssidIdx].MCSValue == "33");
	if (Wlan[0].TxRxStream == '1')
	{
		if ("0" == getSelectVal('bwControl'))
		{
			if ("0" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("6.5 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("13 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("19.5 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("26 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("39 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("52 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("58.5 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("65 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
			}
			else if ("1" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("7.2 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("14.4 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("21.7 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("28.9 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("43.3 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("57.8 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("65 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("72.2 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
			}
		}
		else
		{
			if ("0" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("13.5 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("27 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("40.5 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("54 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("81 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("108 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("121.5 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("135 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
			}
			else if ("1" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("15 Mbps", "0", false, Wlan[ssidIdx].MCSValue == "0");
				document.forms[0].wlMcs[2] = new Option("30 Mbps", "1", false, Wlan[ssidIdx].MCSValue == "1");
				document.forms[0].wlMcs[3] = new Option("45 Mbps", "2", false, Wlan[ssidIdx].MCSValue == "2");
				document.forms[0].wlMcs[4] = new Option("60 Mbps", "3", false, Wlan[ssidIdx].MCSValue == "3");
				document.forms[0].wlMcs[5] = new Option("90 Mbps", "4", false, Wlan[ssidIdx].MCSValue == "4");
				document.forms[0].wlMcs[6] = new Option("120 Mbps", "5", false, Wlan[ssidIdx].MCSValue == "5");
				document.forms[0].wlMcs[7] = new Option("135 Mbps", "6", false, Wlan[ssidIdx].MCSValue == "6");
				document.forms[0].wlMcs[8] = new Option("150 Mbps", "7", false, Wlan[ssidIdx].MCSValue == "7");
			}
		}
	}
	else if (Wlan[0].TxRxStream == '2')
	{
		if ("0" == getSelectVal('bwControl'))
		{
			if ("0" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("13 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("26 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("39 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("52 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("78 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("104 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("117 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("130 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
			}
			else if ("1" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("14.4 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("28.9 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("43.3 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("57.8 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("86.7 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("115.6 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("130.0 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("144.4 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
			}
		}
		else
		{
			if ("0" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("27 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("54 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("81 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("108 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("162 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("216 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("243 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("270 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
			}
			else if ("1" == getSelectVal('giControl'))
			{
				document.forms[0].wlMcs[1] = new Option("30 Mbps", "8", false, Wlan[ssidIdx].MCSValue == "8");
				document.forms[0].wlMcs[2] = new Option("60 Mbps", "9", false, Wlan[ssidIdx].MCSValue == "9");
				document.forms[0].wlMcs[3] = new Option("90 Mbps", "10", false, Wlan[ssidIdx].MCSValue == "10");
				document.forms[0].wlMcs[4] = new Option("120 Mbps", "11", false, Wlan[ssidIdx].MCSValue == "11");
				document.forms[0].wlMcs[5] = new Option("180 Mbps", "12", false, Wlan[ssidIdx].MCSValue == "12");
				document.forms[0].wlMcs[6] = new Option("240 Mbps", "13", false, Wlan[ssidIdx].MCSValue == "13");
				document.forms[0].wlMcs[7] = new Option("270 Mbps", "14", false, Wlan[ssidIdx].MCSValue == "14");
				document.forms[0].wlMcs[8] = new Option("300 Mbps", "15", false, Wlan[ssidIdx].MCSValue == "15");
			}
		}
	}
	//setSelect('wlMcs',Wlan[ssidIdx].MCSValue);
}
<% end if %>
function loadRateList() {
	document.forms[0].wlRate.options.length = 0;
	var mode = getValue('wlgMode');
	if (band == "2")
	{
		if (mode == "b" )
		{
			document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
			document.forms[0].wlRate[1] = new Option("1 Mbps", "1", false, Wlan[ssidIdx].rate == "1");
			document.forms[0].wlRate[2] = new Option("2 Mbps", "2", false, Wlan[ssidIdx].rate == "2");
			document.forms[0].wlRate[3] = new Option("5.5 Mbps", "5.5", false, Wlan[ssidIdx].rate == "5.5");
			document.forms[0].wlRate[4] = new Option("11 Mbps", "11", false, Wlan[ssidIdx].rate == "11");
		}
		else
		{
			document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
			document.forms[0].wlRate[1] = new Option("1 Mbps", "1", false, Wlan[ssidIdx].rate == "1");
			document.forms[0].wlRate[2] = new Option("2 Mbps", "2", false, Wlan[ssidIdx].rate == "2");
			document.forms[0].wlRate[3] = new Option("5.5 Mbps", "5.5", false, Wlan[ssidIdx].rate == "5.5");
			document.forms[0].wlRate[4] = new Option("6 Mbps", "6", false, Wlan[ssidIdx].rate == "6");
			document.forms[0].wlRate[5] = new Option("9 Mbps", "9", false, Wlan[ssidIdx].rate == "9");
			document.forms[0].wlRate[6] = new Option("11 Mbps", "11", false, Wlan[ssidIdx].rate == "11");
			document.forms[0].wlRate[7] = new Option("12 Mbps", "12", false, Wlan[ssidIdx].rate == "12");
			document.forms[0].wlRate[8] = new Option("18 Mbps", "18", false, Wlan[ssidIdx].rate == "18");
			document.forms[0].wlRate[9] = new Option("24 Mbps", "24", false, Wlan[ssidIdx].rate == "24");
			document.forms[0].wlRate[10] = new Option("36 Mbps", "36", false, Wlan[ssidIdx].rate == "36");
			document.forms[0].wlRate[11] = new Option("48 Mbps", "48", false, Wlan[ssidIdx].rate == "48");
			document.forms[0].wlRate[12] = new Option("54 Mbps", "54", false, Wlan[ssidIdx].rate == "54");
		}
	}
	else if (band == "1")
	{
		document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
		document.forms[0].wlRate[1] = new Option("6 Mbps", "6", false, Wlan[ssidIdx].rate == "6");
		document.forms[0].wlRate[2] = new Option("9 Mbps", "9", false, Wlan[ssidIdx].rate == "9");
		document.forms[0].wlRate[3] = new Option("12 Mbps", "12", false, Wlan[ssidIdx].rate == "12");
		document.forms[0].wlRate[4] = new Option("18 Mbps", "18", false, Wlan[ssidIdx].rate == "18");
		document.forms[0].wlRate[5] = new Option("24 Mbps", "24", false, Wlan[ssidIdx].rate == "24");
		document.forms[0].wlRate[6] = new Option("36 Mbps", "36", false, Wlan[ssidIdx].rate == "36");
		document.forms[0].wlRate[7] = new Option("48 Mbps", "48", false, Wlan[ssidIdx].rate == "48");
		document.forms[0].wlRate[8] = new Option("54 Mbps", "54", false, Wlan[ssidIdx].rate == "54");
	}
	else
	{
		document.forms[0].wlRate[0] = new Option("Auto", "Auto", false, Wlan[ssidIdx].rate == "Auto");
	}
	//setSelect('wlRate',Wlan[ssidIdx].rate);
}
function loadSsidIdxList() {
	var ssidNum;
	var multiFlag = "<% tcWebApi_get("WLan_Common","MultiSSIDConfigEnable","s") %>";
<% if tcwebApi_get("WebCustom_Entry", "isShowNumOfSsid", "h") = "Yes" then %>
	var WlanIndex = "<% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %>";
	var ssidselsectFlag = 0;
	var ssidindex = 1;
	var ssid1 = "<% tcWebApi_get("WLan_Entry0","EnableSSID","s") %>";
	var ssid2 = "<% tcWebApi_get("WLan_Entry1","EnableSSID","s") %>";
	var ssid2isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry1","BackHaul","s") %>";
	var ssid3 = "<% tcWebApi_get("WLan_Entry2","EnableSSID","s") %>";
	var ssid3isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry2","BackHaul","s") %>";
	var ssid4 = "<% tcWebApi_get("WLan_Entry3","EnableSSID","s") %>";
	var ssid4isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry3","BackHaul","s") %>";
	<% if tcwebApi_get("WebCustom_Entry","isMultiUserITFSupported","h") = "Yes" then %>
	var ssid5 = "<% tcWebApi_get("WLan_Entry4", "EnableSSID", "s") %>";
	var ssid5isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry4","BackHaul","s") %>";
	var ssid6 = "<% tcWebApi_get("WLan_Entry5", "EnableSSID", "s") %>";
	var ssid6isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry5","BackHaul","s") %>";
	var ssid7 = "<% tcWebApi_get("WLan_Entry6", "EnableSSID", "s") %>";
	var ssid7isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry6","BackHaul","s") %>";
	var ssid8 = "<% tcWebApi_get("WLan_Entry7", "EnableSSID", "s") %>";
	var ssid8isBH = "<% tcWebApi_get("mesh_Radio2gbssinfo_entry7","BackHaul","s") %>";
<% end if %>
<% end if %>
	if(multiFlag == "Yes")
		ssidNum = "<% tcWebApi_get("WLan_Common","BssidNum","s") %>";
	else
		ssidNum = '1';//only can edit and query 0 index of ssid
<% if tcwebApi_get("WebCustom_Entry","isCTPONCZNXSupported","h") = "Yes" then %>
<% if tcwebApi_get("WebCurSet_Entry","CurrentAccess","h") <> "0" then %>
	if(ssidNum > "1" && ssidNum <= "8")
	{
		ssidNum = '1';//only can edit and query 0 index of ssid for second user.
	}
<% end if %>
<% end if %>
	document.forms[0].wlSsidIdx.options.length = 0;
	document.forms[0].wlSsidIdx[0] = new Option("SSID1", "0");
	<% if tcwebApi_get("WebCustom_Entry", "isShowNumOfSsid", "h") = "Yes" then %>
	if(ssidNum > "1")
	{
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid2 == "0") || (ssid2 == "1")) && ssid2isBH =="0")
<% else %>
        if ( (ssid2 == "0") || (ssid2 == "1"))
<% end if %>
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID2", "1");
			ssidindex++;
		}
<% if tcwebApi_get("WebCustom_Entry","isCTPONOnlyTwoSSIDSupported","h") <> "Yes" then %>
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid3 == "0") || (ssid3 == "1")) && ssid3isBH =="0")
<% else %>
        if ( (ssid3 == "0") || (ssid3 == "1"))
<% end if %>
		{
			if ( ssidNum > "2" )
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID3", "2");
			ssidindex++;
		}
		}
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid4 == "0") || (ssid4 == "1")))
<% else %>
        if ( (ssid4 == "0") || (ssid4 == "1"))
<% end if %>
		{
			if ( ssidNum > "3" )
		{
			document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID4", "3");
			ssidindex++;
		}
		}
		<% if tcwebApi_get("WebCustom_Entry", "isMultiUserITFSupported", "h") = "Yes" then %>
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid5 == "0") || (ssid5 == "1")) && ssid5isBH =="0")
<% else %>
        if ( (ssid5 == "0") || (ssid5 == "1"))
<% end if %>
		{
			if ( ssidNum > "4" )
			{
				document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID5", "4");
			ssidindex++;
		}
		}
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid6 == "0") || (ssid6 == "1")) && ssid6isBH =="0")
<% else %>
        if ( (ssid6 == "0") || (ssid6 == "1"))
<% end if %>
		{
			if ( ssidNum > "5" )
			{
				document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID6", "5");
			ssidindex++;
		}
		}
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid7 == "0") || (ssid7 == "1")) && ssid7isBH =="0")
<% else %>
        if ( (ssid7 == "0") || (ssid7 == "1"))
<% end if %>
		{
			if ( ssidNum > "6" )
			{
				document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID7", "6");
				ssidindex++;
			}
		}
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
		if ( ((ssid8 == "0") || (ssid8 == "1")) && ssid8isBH =="0")
<% else %>
        if ( (ssid8 == "0") || (ssid8 == "1"))
<% end if %>
		{
			if ( ssidNum > "7" )
			{
				document.forms[0].wlSsidIdx[ssidindex] = new Option("SSID8", "7");
				ssidindex++;
			}
		}
		<% end if %>
<% end if %>
	}
<% else %>
	for(var i = 1; i < ssidNum; i++)
	{
		var ssidName = "SSID" + (i + 1).toString();
		document.forms[0].wlSsidIdx[i] = new Option(ssidName, i.toString());
	}
<% end if %>
	<% if tcwebApi_get("WebCustom_Entry", "isShowNumOfSsid", "h") = "Yes" then %>
	for(var i = 0; i < document.forms[0].wlSsidIdx.options.length; i++) 
	{
		if(document.forms[0].wlSsidIdx.options[i].value == WlanIndex)
		{
			setSelect('wlSsidIdx',WlanIndex);
			ssidselsectFlag = 1;
			break;
		}
	}
	if(ssidselsectFlag != 1)
	{
		setSelect('wlSsidIdx',0);
		selChangedSSID();
	}
<% else %>
	setSelect('wlSsidIdx', <% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %>);
<% end if %>
}
function loadMCastRateList() {
	if (band == "2") {
		if (phy == "b") {
			document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
			document.forms[0].wlMCastRate[1] = new Option("1 Mbps", "1000000");
			document.forms[0].wlMCastRate[2] = new Option("2 Mbps", "2000000");
			document.forms[0].wlMCastRate[3] = new Option("5.5 Mbps", "5500000");
			document.forms[0].wlMCastRate[4] = new Option("11 Mbps", "11000000");
		}
		else {
			document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
			document.forms[0].wlMCastRate[1] = new Option("1 Mbps", "1000000");
			document.forms[0].wlMCastRate[2] = new Option("2 Mbps", "2000000");
			document.forms[0].wlMCastRate[3] = new Option("5.5 Mbps", "5500000");
			document.forms[0].wlMCastRate[4] = new Option("6 Mbps", "6000000");
			document.forms[0].wlMCastRate[5] = new Option("9 Mbps", "9000000");
			document.forms[0].wlMCastRate[6] = new Option("11 Mbps", "11000000");
			document.forms[0].wlMCastRate[7] = new Option("12 Mbps", "12000000");
			document.forms[0].wlMCastRate[8] = new Option("18 Mbps", "18000000");
			document.forms[0].wlMCastRate[9] = new Option("24 Mbps", "24000000");
			document.forms[0].wlMCastRate[10] = new Option("36 Mbps", "36000000");
			document.forms[0].wlMCastRate[11] = new Option("48 Mbps", "48000000");
			document.forms[0].wlMCastRate[12] = new Option("54 Mbps", "54000000");
		}
	}
	else if (band == "1") {
		document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
		document.forms[0].wlMCastRate[1] = new Option("6 Mbps", "6000000");
		document.forms[0].wlMCastRate[2] = new Option("9 Mbps", "9000000");
		document.forms[0].wlMCastRate[3] = new Option("12 Mbps", "12000000");
		document.forms[0].wlMCastRate[4] = new Option("18 Mbps", "18000000");
		document.forms[0].wlMCastRate[5] = new Option("24 Mbps", "24000000");
		document.forms[0].wlMCastRate[6] = new Option("36 Mbps", "36000000");
		document.forms[0].wlMCastRate[7] = new Option("48 Mbps", "48000000");
		document.forms[0].wlMCastRate[8] = new Option("54 Mbps", "54000000");
	}
	else {
		document.forms[0].wlMCastRate[0] = new Option("Auto", "Auto");
	}
}
function loadAuthModeList(){
	var mode = getValue('wlgMode');
	document.forms[0].wlSecurMode.options.length = 0;

	if (mode == "n"){
		document.forms[0].wlSecurMode[0] = new Option("None", "None",false,Wlan[ssidIdx].BeaconType=="None");
		document.forms[0].wlSecurMode[1] = new Option("WPA-PSK", "WPA",false,Wlan[ssidIdx].BeaconType=="WPA");
		document.forms[0].wlSecurMode[2] = new Option("WPA2-PSK", "11i",false,Wlan[ssidIdx].BeaconType=="11i");
		document.forms[0].wlSecurMode[3] = new Option("WPA-PSK/WPA2-PSK", "WPAand11i",false,Wlan[ssidIdx].BeaconType=="WPAand11i");
/*
	<% if tcwebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		document.forms[0].wlSecurMode[4] = new Option("Radius-WEP64", "radius64",false,Wlan[ssidIdx].BeaconType=="radius64");
		document.forms[0].wlSecurMode[5] = new Option("Radius-WEP128", "radius128",false,Wlan[ssidIdx].BeaconType=="radius128");
		document.forms[0].wlSecurMode[6] = new Option("WPA", "wpaOnly",false,Wlan[ssidIdx].BeaconType=="wpaOnly");
		document.forms[0].wlSecurMode[7] = new Option("WPA2", "wpa2Only",false,Wlan[ssidIdx].BeaconType=="wpa2Only");
		document.forms[0].wlSecurMode[8] = new Option("WPA1WPA2", "wpa1and2",false,Wlan[ssidIdx].BeaconType=="wpa1and2");
	<% end if %> 
*/
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		var idx = document.forms[0].wlSecurMode.options.length;
		document.forms[0].wlSecurMode[idx++] = new Option("WPA3-PSK", "WPA3-PSK",false,Wlan[ssidIdx].BeaconType=="WPA3-PSK");
		document.forms[0].wlSecurMode[idx++] = new Option("WPA2-PSK/WPA3-PSK", "WPA2-PSK/WPA3-PSK",false,Wlan[ssidIdx].BeaconType=="WPA2-PSK/WPA3-PSK");
/*
<% if tcWebApi_get("Info_WLan", "isDot1XSupported", "h") = "Yes" then %>
		var idx21x = document.forms[0].wlSecurMode.options.length;
		document.forms[0].wlSecurMode[idx21x++] = new Option("WPA3", "WPA3",false,Wlan[ssidIdx].BeaconType=="WPA3");
<% end if %>
*/
<% end if %>
	}
	else {
		document.forms[0].wlSecurMode[0] = new Option("None", "None",false,Wlan[ssidIdx].BeaconType=="None");
		//document.forms[0].wlSecurMode[1] = new Option("WEP", "Basic",false,Wlan[ssidIdx].BeaconType=="Basic");
		document.forms[0].wlSecurMode[1] = new Option("WPA-PSK", "WPA",false,Wlan[ssidIdx].BeaconType=="WPA");
		document.forms[0].wlSecurMode[2] = new Option("WPA2-PSK", "11i",false,Wlan[ssidIdx].BeaconType=="11i");
		document.forms[0].wlSecurMode[3] = new Option("WPA-PSK/WPA2-PSK", "WPAand11i",false,Wlan[ssidIdx].BeaconType=="WPAand11i");
/*
	<% if tcwebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then %>
		document.forms[0].wlSecurMode[4] = new Option("Radius-WEP64", "radius64",false,Wlan[ssidIdx].BeaconType=="radius64");
		document.forms[0].wlSecurMode[5] = new Option("Radius-WEP128", "radius128",false,Wlan[ssidIdx].BeaconType=="radius128");
		document.forms[0].wlSecurMode[6] = new Option("WPA", "wpaOnly",false,Wlan[ssidIdx].BeaconType=="wpaOnly");
		document.forms[0].wlSecurMode[7] = new Option("WPA2", "wpa2Only",false,Wlan[ssidIdx].BeaconType=="wpa2Only");
		document.forms[0].wlSecurMode[8] = new Option("WPA1WPA2", "wpa1and2",false,Wlan[ssidIdx].BeaconType=="wpa1and2");
	<% end if %> 
*/
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		var idx = document.forms[0].wlSecurMode.options.length;
		document.forms[0].wlSecurMode[idx++] = new Option("WPA3-PSK", "WPA3-PSK",false,Wlan[ssidIdx].BeaconType=="WPA3-PSK");
		document.forms[0].wlSecurMode[idx++] = new Option("WPA2-PSK/WPA3-PSK", "WPA2-PSK/WPA3-PSK",false,Wlan[ssidIdx].BeaconType=="WPA2-PSK/WPA3-PSK");
/*
<% if tcWebApi_get("Info_WLan", "isDot1XSupported", "h") = "Yes" then %>
		var idx21x = document.forms[0].wlSecurMode.options.length;
		document.forms[0].wlSecurMode[idx21x++] = new Option("WPA3", "WPA3",false,Wlan[ssidIdx].BeaconType=="WPA3");
		document.forms[0].wlSecurMode[idx21x++] = new Option("WPA3-192Bit", "WPA3-192Bit",false,Wlan[ssidIdx].BeaconType=="WPA3-192Bit");
<% end if %>
*/
<% end if %>
	}
	authModeChange(1);
	doWPSUseChange();
}

function doWPSUseChange(){
	if(document.forms[0].enableWps.checked && getSelectVal('wlSecurMode') == "Basic")
	{
		alert("<%tcWebApi_get("String_Entry","ForWEPText","s")%>");
		document.forms[0].enableWps.checked = false;
		return;
	}
		
	if(document.forms[0].enableWps.checked && getSelectVal('wlSecurMode') == "WPA3-PSK")
	{
		alert("<%tcWebApi_get("String_Entry","ForWPA3Text","s")%>");
		document.forms[0].enableWps.checked = false;
		return;
	}
	if(wpsV2Support == 1)
	{
		if(document.forms[0].enableWps.checked)
		{
			if(getSelectVal('wlWpa') == "TKIP" &&	(getSelectVal('wlSecurMode') == "WPA" || getSelectVal('wlSecurMode') == "WPAand11i" || getSelectVal('wlSecurMode') == "11i"))
			{
				alert("<%tcWebApi_get("String_Entry","ForWPAText","s")%>");
				document.forms[0].enableWps.checked = false;
				return;
			}

			if(document.forms[0].wlHide.checked == true)
			{
				alert("<%tcWebApi_get("String_Entry","UnableOpenWPSText","s")%>");
				document.forms[0].enableWps.checked = false;
				return;
			}
		}
	}
	if(document.forms[0].enableWps.checked)
	{
		setDisplay("wpsmodeTR", 1);
		setDisplay("btnStartWPS", 1);
		setDisplay("wpssta", 1);
		setDisplay("ResetOOB", 1);
        var temp = getSelectVal("wpsmode");
		if (temp == 'ap-pin')
		{
			setDisplay("pinGenerate", 1);
			setDisplay("pinval", 1);
		}
		else
		{
			setDisplay("pinGenerate", 0);
			setDisplay("pinval", 0);
		}
		document.forms[0].WpsActive.value = "1";
}
	else
	{
		if(getValue('isInWPSing')!=0)	//WPS is running
		{
			alert("<%tcWebApi_get("String_Entry","WPSWorkingText","s")%>");
			document.forms[0].enableWps.checked = true;
			document.forms[0].WpsActive.value = "1";
			return;
		}
		else
		{
		setDisplay("wpsmodeTR", 0);
		setDisplay("btnStartWPS", 0);
		setDisplay("wpssta", 0);
		setDisplay("ResetOOB", 0);
		setDisplay("pinval", 0);		
		setDisplay("pinGenerate", 0);
		document.forms[0].WpsActive.value = "0";
	}
	}
	return;
}

function wpsModeChange()
{
	with ( document.forms[0])
	{
		if (document.forms[0].enableWps.checked)
		{
		var temp = getSelectVal("wpsmode");
		if (temp == 'ap-pin')
		{
			setDisplay("pinGenerate", 1);			
			setDisplay("pinval", 1);
		}
		else
		{
			setDisplay("pinGenerate", 0);			
			setDisplay("pinval", 0);
		}
	}
		else
		{
			setDisplay("pinGenerate", 0);			
			setDisplay("pinval", 0);
		}
	}
}
function wpsContChange()
{
	with ( document.forms[0])
	{
		var temp = getCheckVal("wpsControl");
		if (temp == 0)
		{
			setDisable("wpsMode", 1);
			setDisable("pinValue", 1);
		}
		else
		{
			setDisable("wpsMode", 0);
			setDisable("pinValue", 0);
		}
	}
}
function isvalidpin(val)
{
	var ret = false;
	var len = val.length;
	var pinSize = 8;
	var pinvalue = new Array();
	if ( len !=  pinSize)
	{
		return false;
	}
	else
	{
		for(i = 0; i < pinSize; i++ )
		{
			pinvalue[i] = parseInt(val.charAt(i),10);
		}
		var accum = 0;
		accum = (pinvalue[0] + pinvalue[2] + pinvalue[4] + pinvalue[6]) * 3 + pinvalue[1] + pinvalue[3] + pinvalue[5] + pinvalue[7];
		if (0 == (accum % 10))
		{
			return true;
		}
		else
		{
			return false;
		}
	}
	return ret;
}
function getAfterBurnerIndex(afterburner)
{
	var ret;
	if ( afterburner == "auto" )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function getTpcDbIndex(val) {
	var ret;
	if ( val == "0" )
		ret = 0;
	else if ( val == "2" )
		ret = 1;
	else if ( val == "3" )
		ret = 2;
	else if ( val == "4" )
		ret = 3;
	else ret = 0;
	return ret;
}
function ChannelChange() {
}
function getBandIndex(b) {
	var ret;
	if ( b == '1' )
		ret = 1;
	else
		ret = 0;
	return ret;
}
function wl_afterburner_options(OnPageLoad) {
}
function wl_recalc(OnPageLoad)
{
	with ( document.forms[0] )
	{
		wl_afterburner_options(OnPageLoad);
	}
}
function updateCurChannel() {
}

<% if tcwebApi_get("WebCustom_Entry", "isMultiSupported", "h") = "Yes" then %>
function getTimerRunningData()
{
	var wpsTimerRunningData = '';
	
	$.ajaxSetup({
			async : false,
			cache : false
		});
	
	$.getJSON("/cgi-bin/getWPSPara.asp", function(data, status){
				wpsTimerRunningData = data.wpsTimerRunningData;
  	});
	
	top.getWlanWpsTimerCount--;	
	return wpsTimerRunningData;
}

function getwlanWPSStatus()
{
	var wlanWPSStatus = '';
	
	$.ajaxSetup({
			async : false,
			cache : false
		});
	
	$.getJSON("/cgi-bin/getWPSPara.asp", function(data, status){
				wlanWPSStatus = data.wlanWPSStatus;
  	});
	return wlanWPSStatus;
}

function getWPStimerRunning()
{
	clearTimeout(getWPStimerRunning);
	{
		var wpsTimerRunningData = '';
		if(top.getWlanWpsTimerCount > 0)
		{
			wpsTimerRunningData = getTimerRunningData();
			wlanWPSStatus = getwlanWPSStatus();			
			if(('N/A' == wpsTimerRunningData) || ('' == wpsTimerRunningData) || (oldwpsTimerRunningData == wpsTimerRunningData) || (oldwlanWPSStatus == wlanWPSStatus))
			{
				document.ConfigForm.btnStartWPS.value = 'waiting......';				
				document.getElementById("WPSProcess").innerHTML = oldwlanWPSStatus;
				document.ConfigForm.btnStartWPS.disabled = "disabled";
				setTimeout(getWPStimerRunning, 1000);
			}
			else
			{
				top.getWlanWpsTimerCount = 0;								
				switch(wlanWPSStatus)
				{
					case "In progress":
						document.getElementById("WPSProcess").innerHTML = 'Inprogress';						
						break;
					case "Configured":
						document.getElementById("WPSProcess").innerHTML = 'Configured';						
						break;
					case "WPS process Fail":
						document.getElementById("WPSProcess").innerHTML = 'WPS process Fail';								
						break;
					case "Idle":
						document.getElementById("WPSProcess").innerHTML = 'Idle';						
						break;
					default:
						document.getElementById("WPSProcess").innerHTML = wlanWPSStatus;
						break;
				}				
				switch(wpsTimerRunningData)
				{
					case "1":
						document.ConfigForm.btnStartWPS.value = 'Stop WPS';
						break;
					default:
						document.ConfigForm.btnStartWPS.value = 'Start WPS';
						break;
				}
				document.ConfigForm.btnStartWPS.disabled = "";
			}
		}
		else
		{
			switch(oldwlanWPSStatus)
			{
				case "In progress":
					document.getElementById("WPSProcess").innerHTML = 'Inprogress';						
					break;
				case "Configured":
					document.getElementById("WPSProcess").innerHTML = 'Configured';						
					break;
				case "WPS process Fail":
					document.getElementById("WPSProcess").innerHTML = 'WPS process Fail';								
					break;
				case "Idle":
					document.getElementById("WPSProcess").innerHTML = 'Idle';						
					break;
				default:
					document.getElementById("WPSProcess").innerHTML = wlanWPSStatus;
					break;
			}			
			switch(oldwpsTimerRunningData)
			{
				case "1":
					document.ConfigForm.btnStartWPS.value = 'Stop WPS';
					break;
				default:
					document.ConfigForm.btnStartWPS.value = 'Start WPS';
					break;
			}			
			document.ConfigForm.btnStartWPS.disabled = "";
		}
	}
}

<% end if %>

function LoadFrame()
{
    var bandsteering = "<% tcWebApi_get("WLan_Entry","BandsteeringEnable","s") %>";
    //var ssid = "<% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %>"

    if(bandsteering == 1)
    {
        setDisable('wlgMode',1);
        setDisable('wlSsid',1);
        setDisable('wlSecurMode',1);
        setDisable('wlWpa',1);
        setDisable('wlWpaPsk',1);
    }


	if(document.ConfigForm.isWDSSupported.value==1)
	{
		if(document.ConfigForm.WLAN_WDS_Active[0].checked == true){	//if wds enable
			autoWLAN_WDS_Active();
		}else if(document.ConfigForm.WLAN_WDS_Active[1].checked == true){	//if wds disable
			autoWLAN_WDS_Deactive();
		}
	}
	with ( document.forms[0] )
	{
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then %>
<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>		
	if(initFlag == true)
	{
		initWLanTxBeamFormingSel();
		initFlag = false;
	}
<% end if %>
<% end if %>

		setCheck('wlEnbl', enbl);
		setCheck('wlHide', Wlan[ssidIdx].wlHide);
		if ( phy == "g" )
		{
			if(Wlan[ssidIdx].mode == "b/g")
			{
				setSelect('wlgMode', "b,g");
			}
			else
			{
				setSelect('wlgMode',Wlan[ssidIdx].mode);
			}
		}
<% if tcWebApi_get("WLan_Common","HT_BW","h") = "1" then %>
	<% if tcWebApi_get("WLan_Common","HT_BSSCoexistence","h") = "1" then %>
		setSelect('bwControl',"1");
	<% else %>
		setSelect('bwControl',"2");
	<% end if %>
<% else %>
		setSelect('bwControl',"0");
<% end if %>	
		setSelect('giControl',Wlan[ssidIdx].GIControl);
		loadChannelList();
		loadSsidIdxList();
		gModeChange();
<% if tcWebApi_get("WLan_Common","PaMode","h") = "1" then %>
<% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "1" then %>
		setSelect('wlTxPwr',"6");
<% else %>
		setSelect('wlTxPwr',Wlan[ssidIdx].power);
<% end if %>
<% else %>
		setSelect('wlTxPwr',Wlan[ssidIdx].power);
<% end if %>		
		setCheck('wlHide',Wlan[ssidIdx].wlHide);
		setCheck('enableSsid',Wlan[ssidIdx].enable);
		//setText('wlSsid',Wlan[ssidIdx].ssid);
		setSelect('wlSecurMode',Wlan[ssidIdx].BeaconType);
		setDisplay('wlInfo',enbl);
		setDisplay('authen',enbl);
		setDisplay('wlUserTip',enbl);
		setSelect('wlKeyBit',Wlan[ssidIdx].EncypBit);//setSelect('wlKeyBit',parseInt(Wlan[ssidIdx].EncypBit)+24);		
		wlKeyBitChange();
		if (ssidAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('wlSsid',1);
		}
		if ( EnableAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('enableSsid',1);
		}
		if ( beaconTypeAccessAttr.indexOf('Subscriber') < 0)
		{
			setDisable('wlSecurMode',1);
		}
	}
	setSelect("wpsmode", Wlan[ssidIdx].WPSMode);
	if (getSelectVal("wpsmode") == 'ap-pin')
	{
		setText("pinvalue", Wlan[ssidIdx].PINValue);
	}
	authModeChange(1);
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
	if(document.ConfigForm.WLAN_FltActive[0].checked == true){	
		autoWLAN_Flt_Active();
	}else if(document.ConfigForm.WLAN_FltActive[1].checked == true){	
		autoWLAN_Flt_Deactive();
	}
<% end if %>
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
	easymesh_onload(1);
<% end if %>
<% if tcwebApi_get("WebCustom_Entry", "isMultiSupported", "h") = "Yes" then %>
	getWPStimerRunning();
<% end if %>

}

function isValidIpAddr(ip1,ip2,ip3,ip4)
{
	if(ip1==0 || ip4==0 || ip4==255 || ip1==127 )	
		return false;			

	return true;	
}

function inValidIPAddr(Address)
{
	var address = Address.match("^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$");
	var digits;
	var i;

	if(address == null) { 
		alert('<%tcWebApi_get("String_Entry","IsInvalidIPAddrText","s")%>' + Address);
		return true;
	}

	digits = address[0].split(".");
	for(i=0; i < 4; i++)
	{
		if((Number(digits[i]) > 255 ) || (Number(digits[i]) < 0 ) || (Number(digits[0]) > 223) || (digits[i] == null))
		{ 
			alert('<%tcWebApi_get("String_Entry","IsInvalidIPAddrText","s")%>' + Address);
			return true;
		}
	}
	if(!isValidIpAddr(digits[0],digits[1],digits[2],digits[3],false))
	{
		alert('<%tcWebApi_get("String_Entry","IsInvalidIPAddrText","s")%>' + Address);
		return true;
	}
	
	return false;
}

function checkRadiusSetting()
{
	var Radiusip = document.ConfigForm.radiusSVR_IP.value;
	var Radiusport = document.ConfigForm.radiusSVR_Port.value;
	var Radiuskey= document.ConfigForm.radiusSVR_Key.value;
	var RadiusReAuthTime=document.ConfigForm.radiusSVR_ReAuthInter.value;

	if( inValidIPAddr(Radiusip) )
	{
		return false;
	}
	
	if(isNaN(Radiusport) || Radiusport < 0 || Radiusport > 65535)
	{	
		alert("<%tcWebApi_get("String_Entry","RadiusServerPortTipsText","s")%>");
		return false;
	}
	
	if (Radiuskey.length == 0)
	{
		alert("<%tcWebApi_get("String_Entry","RadiusShareSecretTipsText","s")%>");
		return false; 
	}
	
	if (isNaN(RadiusReAuthTime) || RadiusReAuthTime.length == 0)
	{
		alert("<%tcWebApi_get("String_Entry","RadiusReauthIntervalTipsText","s")%>");
		return false; 
	}
	
}

function checkWePKeyValue(KeyBit,index,wlKeys)
{
	var val = wlKeys[index-1].value;
	var SecurMode = getSelectVal('wlSecurMode');
	if(SecurMode == "radius64" || SecurMode == "radius128") {
		return true;
	}
	if ( val == '')
	{
		alert('<%tcWebApi_get("String_Entry","KeyNotEmptyText","s")%>');
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
	var vKey = 0;
	for (vKey = 0; vKey < 4; vKey++)
	{
		val = wlKeys[vKey].value;
		if ( val != '' )
		{
			if ( KeyBit == '128' )
			{
				if (isValidKey(val, 13) == false )
				{
					alert('<%tcWebApi_get("String_Entry","SecretKeyText","s")%> "' + val + '" <%tcWebApi_get("String_Entry","InvalidWEPKey1Text","s")%>');
					setCheck('wlEnbl',1);
					wlClickEnble(getElById('wlEnbl'));
					return false;
}
			}
			else
			{
				if ( isValidKey(val, 5) == false )
				{
					alert('<%tcWebApi_get("String_Entry","SecretKeyText","s")%>"' + val + '" <%tcWebApi_get("String_Entry","InvalidWEPKey2Text","s")%>');
					setCheck('wlEnbl',1);
					wlClickEnble(getElById('wlEnbl'));
					return false;
				}
			}
		}
	}

	return true;
}

function addParameter(Form)
{
	var url = '';
	var temp = '';
	var pinLen = 8;
	Form.usingPrefix('y');
	var phymode = getValue('wlgMode');
	Form.addParameter('Standard',phymode);
	if(phymode == 'b' || phymode == 'g' || phymode== 'b/g' ||phymode== 'b,g')
	{
		Form.addParameter('MaxBitRate',getSelectVal('wlRate'));
	}
	else
	{
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
		Form.addParameter('X_ATP_11NHtMcs',getSelectVal('wlMcs'));
<% end if %>
		Form.addParameter('X_ATP_Wlan11NBWControl',getSelectVal('bwControl'));
		Form.addParameter('X_ATP_Wlan11NGIControl',getSelectVal('giControl'));
	}
	Form.addParameter('Enable',getCheckVal('enableSsid'));
	Form.addParameter('Channel',getSelectVal('wlChannel'));
	Form.addParameter('X_CT-COM_SSIDHide',getCheckVal('wlHide'));
	Form.addParameter('X_CT-COM_Powerlevel',getSelectVal('wlTxPwr'));
	var ssid = getValue('wlSsid');
	if (ssid == '' )
	{
		alert('SSID<%tcWebApi_get("String_Entry","EmptyText","s")%>');
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
	if (ssid.length > 32)
	{
		alert('SSID "' + getValue('wlSsid') + '" <%tcWebApi_get("String_Entry","EqualOrLesser32Text","s")%>');
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}
	if (<% tcWebApi_get("WebCurSet_Entry","wlan_id","s") %> == 0)
	{
		if(document.forms[0].isCUCSupport.value == 1){
			var preLen= document.forms[0].SSIDPre.value.length;
			var the_substring = ssid.substring(0, preLen);
			if (the_substring != document.forms[0].SSIDPre.value)
			{
				alert('SSID1 "' + getValue('wlSsid') + '" <%tcWebApi_get("String_Entry","Should1Text","s")%>');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
		}

	}
	if (hasForbiddenChar(ssid) != '')
	{
		alert("SSID <%tcWebApi_get("String_Entry","InvalidCharacterText","s")%> ' " + hasForbiddenChar(ssid) + " '");
		setCheck('wlEnbl',1);
		wlClickEnble(getElById('wlEnbl'));
		return false;
	}

<% If tcWebApi_get("WebCustom_Entry","isMaxStaNumSupported","h") = "Yes" Then %>
	var deviceNum = parseInt(getValue('wlAssociateNum'),10);
  if (isPlusInteger(deviceNum) == false
      || parseInt(deviceNum) < 0
      || parseInt(deviceNum) > 32
      || !isInteger(getValue('wlAssociateNum')))
  {
      alert('<%tcWebApi_get("String_Entry","NumberConnectText","s")%>');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
      return false;
  }
<%end if%>
	Form.addParameter('SSID',ssid);
	var AuthMode = getSelectVal('wlSecurMode');
	Form.addParameter('BeaconType',AuthMode);
	Form.endPrefix();

	var KeyBit = getSelectVal('wlKeyBit');
	var index = parseInt(getSelectVal('wlKeyIndex'));
	var wlKeys = getElById('wlKeys');
	if (AuthMode == 'None')
	{
		Form.addParameter('y.BasicEncryptionModes','None');
		Form.addParameter('y.BasicAuthenticationMode','OpenSystem');
		return true;
	}
	else if (AuthMode == 'Basic')
	{
		var wepauthtype = getSelectVal('wlWep');
		if ( (wepauthtype == 'OpenSystem')
		||(wepauthtype == 'SharedKey')
		||(wepauthtype == 'Both'))
		{
			if( false == checkWePKeyValue(KeyBit,index,wlKeys) )
					{
							return false;
						}
			Form.addParameter('y.WEPEncryptionLevel',(KeyBit-24)+'-bit');
			Form.addParameter('y.WEPKeyIndex',index);
			for (l = 1; l <= 4; l++)
			{
				Form.addParameter('k' + l +  '.InternetGatewayDevice.LANDevice.1.WLANConfiguration.1.WEPKey.' + l + '.' + 'WEPKey',
				wlKeys[l-1].value);
			}
		}
		Form.addParameter('y.BasicEncryptionModes','WEPEncryption');
		Form.addParameter('y.BasicAuthenticationMode',wepauthtype);
		return true;
	}
	else if (AuthMode == 'WPA' || AuthMode == '11i' || AuthMode == 'WPAand11i'
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
					 || AuthMode == 'WPA3-PSK' || AuthMode == 'WPA2-PSK/WPA3-PSK'
<% end if %>)
	{
		value = getValue('wlWpaPsk');
        if (hasForbiddenChar(value) != '' )
        {
            alert("WPA PresharedKey <%tcWebApi_get("String_Entry","InvalidCharacterText","s")%> '" + hasForbiddenChar(value) + "'");
            return false;
        }
		if (isValidWPAPskKey(value) == false )
		{
			alert('WPA  <%tcWebApi_get("String_Entry","PreliminaryKeyText","s")%>');
			setCheck('wlEnbl',1);
			wlClickEnble(getElById('wlEnbl'));
			return false;
		}
		Form.addParameter('y.X_ATP_WPSMode', getSelectVal('wpsmode'));
		if(getSelectVal("wpsmode") == 'ap-pin')
		{
			var pinval = getElement('pinvalue');
			if(isSafeStringIn(pinval.value,'0123456789') == false)
			{
				alert('<%tcWebApi_get("String_Entry","PINIntegerText","s")%>');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			var pinValue = pinval.value;
			if(pinValue.length != pinLen)
			{
				alert('<%tcWebApi_get("String_Entry","EightDigitPINText","s")%>');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			if(isvalidpin(pinValue) == false)
			{
				alert('<%tcWebApi_get("String_Entry","RightPINText","s")%>');
				setCheck('wlEnbl',1);
				wlClickEnble(getElById('wlEnbl'));
				return false;
			}
			Form.addParameter('y.X_ATP_WPSPinValue', getValue('pinvalue'));
		}
		Form.addParameter('k.PreSharedKey.1.PreSharedKey',value);
		if (AuthMode == 'WPA')
		{
			Form.addParameter('y.WPAEncryptionModes',getSelectVal('wlWpa'));
		}
		else  if (AuthMode == '11i')
		{
			Form.addParameter('y.IEEE11iEncryptionModes',getSelectVal('wlWpa'));
		}
		else  if (AuthMode == 'WPAand11i')
		{
			Form.addParameter('y.WPAWPA2EncryptionModes',getSelectVal('wlWpa'));
		}
	}
	else if(AuthMode == 'radius64' || AuthMode == 'radius128')
	{
		if(false == checkRadiusSetting() ||false == checkWePKeyValue(KeyBit,index,wlKeys))
		{
			return false;
		}
	}
	else if(AuthMode == 'wpaOnly' || AuthMode == 'wpa2Only' || AuthMode == 'wpa1and2'
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
	|| AuthMode == 'WPA3' || AuthMode == 'WPA3-192Bit'
<% end if %>
	)
	{
		if( false == checkRadiusSetting())
		{
			return false;
		}
		
		if(checkRekeyinteral(document.ConfigForm.WPARekeyInter.value))
		{
			return false;
		}
	}
	
	return true;
}
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" Then %>
<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>
var initFlag = true;
function initWLanTxBeamFormingSel()			/*init TxBeamforming sel*/
{
	var ITxBfEn = "<%tcWebApi_get("WLan_Common","ITxBfEn","s")%>";
	var ETxBfEnCond = "<%tcWebApi_get("WLan_Common","ETxBfEnCond","s")%>";
	var ETxBfIncapable = "<%tcWebApi_get("WLan_Common","ETxBfIncapable","s")%>";
	if(ITxBfEn == "1" && ETxBfEnCond == "1" && ETxBfIncapable == "0")		/*Both*/
	{
		document.ConfigForm.WLanTxBeamForming[0].selected = true;
	}
	else if(ITxBfEn == "0" && ETxBfEnCond == "1" && ETxBfIncapable == "0")		/*Explicit*/
	{
		document.ConfigForm.WLanTxBeamForming[1].selected = true;
	}
	else if(ITxBfEn == "1" && ETxBfEnCond == "0" && ETxBfIncapable == "1")		/*Implicit*/
	{
		document.ConfigForm.WLanTxBeamForming[2].selected = true;
	}
	else if(ITxBfEn == "0" && ETxBfEnCond == "0" && ETxBfIncapable == "1")		/*Disable*/
	{
		document.ConfigForm.WLanTxBeamForming[3].selected = true;
	}
	else
	{
		document.ConfigForm.WLanTxBeamForming[3].selected = true;
	}
}

function doVHTTxBeamFormingChange()
{
	if(document.ConfigForm.WLanTxBeamForming[0].selected == true)			/*Both*/
	{
		document.ConfigForm.WLanITxBfEn.value = "1";
		document.ConfigForm.WLanETxBfEnCond.value = "1";
		document.ConfigForm.WLanETxBfIncapable.value = "0";
	}
	else if(document.ConfigForm.WLanTxBeamForming[1].selected == true)		/*Explicit*/
	{
		document.ConfigForm.WLanITxBfEn.value = "0";
		document.ConfigForm.WLanETxBfEnCond.value = "1";
		document.ConfigForm.WLanETxBfIncapable.value = "0";
	}
	else if(document.ConfigForm.WLanTxBeamForming[2].selected == true)		/*Implicit*/
	{
		document.ConfigForm.WLanITxBfEn.value = "1";
		document.ConfigForm.WLanETxBfEnCond.value = "0";
		document.ConfigForm.WLanETxBfIncapable.value = "1";
	}
	else if(document.ConfigForm.WLanTxBeamForming[3].selected == true)		/*Disable*/
	{
		document.ConfigForm.WLanITxBfEn.value = "0";
		document.ConfigForm.WLanETxBfEnCond.value = "0";
		document.ConfigForm.WLanETxBfIncapable.value = "1";
	}
	else
	{
		document.ConfigForm.WLanITxBfEn.value = "0";
		document.ConfigForm.WLanETxBfEnCond.value = "0";
		document.ConfigForm.WLanETxBfIncapable.value = "1";
	}
}
<% end if %>	
<% end if %>

function WDSKeyCheck(object) {
	var keyvalue=object.value;
	var wdskeylen=object.value.length;
 	if(wdskeylen < 8) {
  	alert('WDS Key length error!');
		return true;
	}else if(wdskeylen==64){
		for(i=0;i<64;i++){
			var c=keyvalue.charAt(i);
			if(doHexCheck(c)<0){
				alert('WDS Key Hex value error!');
				return true;
			}
		}
	}else if(wdskeylen > 64) {
    alert('WDS Key length error!');
		return true;
	}			
	return false;
}

function quotationCheck(object, limit_len) {
	var len = object.value.length;
	var c;
	var i, j = 0;
  for (i = 0; i < len; i++)
  {
	 	var c = object.value.charAt(i);
	  if (c == '"')
		{
			j += 6;
		}
		else
			j++;
  }
 	if (j > limit_len-1)
	{
    alert('too many quotation marks!');		
    return true;
	}	
	return false;
}

function MacfilterValidation()
{
	if(document.ConfigForm.WLAN_FltActive_Open.checked == true)
	{
		if((document.ConfigForm.WLANFLT_MAC1.value == "") && (document.ConfigForm.WLANFLT_MAC2.value == "") && (document.ConfigForm.WLANFLT_MAC3.value == "") && (document.ConfigForm.WLANFLT_MAC4.value == "") && (document.ConfigForm.WLANFLT_MAC5.value == "") && (document.ConfigForm.WLANFLT_MAC6.value == "") && (document.ConfigForm.WLANFLT_MAC7.value == "") && (document.ConfigForm.WLANFLT_MAC8.value == ""))
		{
			alert("<%tcWebApi_get("String_Entry","MacFilterAlert","s")%>");
			return false;
		}
	}
}

function checkDTIM(value)
{
	if (!isNumeric(value)) {
		alert("Non-integer value given" + value);
		return true;
	}

	if (value < 1 || value > 255) {
		alert("DTIM value must be between 1 and 255");
		return true;
        }
        return false;
}

function SubmitForm()
{
	if(checkBeacon(document.ConfigForm.BeaconInterval.value) ||
		checkRTS(document.ConfigForm.RTSThreshold.value) ||
		checkFrag(document.ConfigForm.FragmentThreshold.value) ||
		checkDTIM(document.ConfigForm.DTIM.value)) {
		return false;
	}
	
	if( MacfilterValidation() == false )
	{
		return false;
	}

	if(enbl == 1)
	{
	if(getValue('isInWPSing')!=0 && getValue('hWpsStart')!=1)
	{
		alert("<%tcWebApi_get("String_Entry","WPSIsWorkingText","s")%>");
		return;
	}		
	}		

	var Form = new webSubmitForm();
	var enable = getCheckVal('wlEnbl');
	Form.addParameter('x.WLANConfiguration.1.X_CT-COM_APModuleEnable',enable);
	var wlandomain = 'InternetGatewayDevice.LANDevice.1.WLANConfiguration.'
	+(ssidIdx + 1);
<% if tcWebApi_get("WebCustom_Entry", "isUBUSSupported", "h") = "Yes" then	%>
		var wifiswitchval =	"<% tcWebApi_get("WLan_Common", "wifiswitch", "s") %>";
		var wifiswitchval11ac =	"<% tcWebApi_get("WLan11ac_Common", "wifiswitch", "s") %>";

	if((wifiswitchval != 'on') && (wifiswitchval11ac != 'on'))
	{
		setCheck('wlEnbl',0);
		alert("<%tcWebApi_get("String_Entry","UbusWifiSwitchAlert","s")%>");
		return false;
	}

		var wpsswitchval =	"<% tcWebApi_get("WLan_Common", "wpsswitch", "s") %>";
		var wpsswitchval11ac =	"<% tcWebApi_get("WLan11ac_Common", "wpsswitch", "s") %>";
	if ( document.forms[0].enableWps.checked )
	{	
		if((wpsswitchval != 'on') && (wpsswitchval11ac != 'on'))
		{
			document.forms[0].enableWps.checked = false;
			alert("<%tcWebApi_get("String_Entry","UbusWPSSwitchAlert","s")%>");
			return false ;
		}
	}
<% end if %>
	if(state == 1 && enable == 1)
	{
		if (addParameter(Form) == false)
		{
			return;
		}
		var SecurMode = getSelectVal('wlSecurMode');
		if (SecurMode == 'None')
		{
			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain
			+ '&RequestFile=html/network/wlan.asp');
		}
		else if (SecurMode == 'Basic')
		{

			if(document.forms[0].enableWps.checked)
			{
				alert("<%tcWebApi_get("String_Entry","ForWEPText","s")%>");
				return;
			}		

			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain + '&k1=' + '&k2='
			+ '&k3=' + '&k4='
			+ '&RequestFile=html/network/wlan.asp');
		}
		else if (SecurMode == 'WPA3-PSK')
		{

			if(document.forms[0].enableWps.checked)
			{
				alert("<%tcWebApi_get("String_Entry","ForWPA3Text","s")%>");
				return;
			}		

			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain + '&k1=' + '&k2='
			+ '&k3=' + '&k4='
			+ '&RequestFile=html/network/wlan.asp');
		}
		else if (SecurMode == 'WPA' || SecurMode == '11i' || SecurMode == 'WPAand11i')
		{
			if(wpsV2Support == 1 && document.forms[0].enableWps.checked && getSelectVal('wlWpa') == "TKIP")
			{
				alert("<%tcWebApi_get("String_Entry","ForWPAText","s")%>");
				return;
			}

			Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
			+ '&y=' + wlandomain + '&k=' + wlandomain
			+ '&RequestFile=html/network/wlan.asp');
		}
	}
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
		if(isMeshBssCfg)
		{
			var SecurMode = getSelectVal('wlSecurMode');
			if(1 != isBackHaul && (SecurMode != 'None') && (SecurMode != '11i') && (SecurMode != 'WPA3-PSK') && (SecurMode != 'WPA2-PSK/WPA3-PSK'))
			{
				alert("<%tcWebApi_get("String_Entry","HintOpenEasyMeshText4","s")%>");
				return;
			}
			else if(1 == isBackHaul && (SecurMode != 'None') && (SecurMode != '11i'))
			{
				alert("<%tcWebApi_get("String_Entry","HintOpenEasyMeshText2","s")%>");
				return;
			}
			var sel_wlWpa = getSelectVal('wlWpa');
			if(SecurMode != 'None')
			{
				if(1 != isBackHaul && (sel_wlWpa != "NONE") && (sel_wlWpa != "AES") && (sel_wlWpa != "TKIP") && (sel_wlWpa != "TKIPAES"))
				{
					alert("<%tcWebApi_get("String_Entry","HintOpenEasyMeshText5","s")%>");
					return;
				}
				else if(1 == isBackHaul && (sel_wlWpa != "NONE") && (sel_wlWpa != "AES"))
				{
					alert("<%tcWebApi_get("String_Entry","HintOpenEasyMeshText3","s")%>");
					return;
				}
			}
			else if(SecurMode == 'None')
			{
				//alert("111");
				alert("<%tcWebApi_get("String_Entry","HintOpenEasyMeshText6","s")%>");
			}
		}
<% end if %>
	else
	{
		Form.setAction('setcfg.cgi?x=InternetGatewayDevice.LANDevice.1'
		+ '&y='+ wlandomain
		+ '&RequestFile=html/network/wlan.asp');
	}
	//Form.submit();
	setDisable('btnOK',1);
	SetCtlValue();
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then %>	
<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>
	doVHTTxBeamFormingChange();
<% end if %>	
<% end if %>	
	var mode = getValue('wlgMode');
	var SecurMode1 = getSelectVal('wlSecurMode');
	if(document.ConfigForm.isWDSSupported.value==1)
	{
		if(document.ConfigForm.WLAN_WDS_Active[0].checked == true)//if wds enable ,to check wds_key, or not to check
		{
			if((SecurMode1 == 'WPA') || (SecurMode1 == '11i') || (SecurMode1 == 'WPAand11i' ))
			{
				if (WDSKeyCheck(document.ConfigForm.WDS_Key))
				{
					return false;
				}
				if(quotationCheck(document.ConfigForm.WDS_Key, 385) )
				{
					return false;	 
				} 
			}
		}
		
		if(doMACcheck(document.ConfigForm.WLANWDS_PEER_MAC1)||
			doMACcheck(document.ConfigForm.WLANWDS_PEER_MAC2)||
			doMACcheck(document.ConfigForm.WLANWDS_PEER_MAC3)||
			doMACcheck(document.ConfigForm.WLANWDS_PEER_MAC4))
		{
			return false;
	}
	}
<% if tcwebApi_get("WebCustom_Entry","isEasyMeshSupport","h") = "Yes" then %>
	if(document.ConfigForm.WLAN_FltActive[0].checked == true)
	{
		if(doMACcheck(document.ConfigForm.WLANFLT_MAC1)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC2)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC3)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC4)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC5)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC6)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC7)||
			doMACcheck(document.ConfigForm.WLANFLT_MAC8))
		{
			return false;
		}
	}
<% end if %>

    var t = new Date();
    var year = t.getFullYear();
    var month = t.getMonth() + 1;
    var day = t.getDate();
    var hour = t.getHours();
    var minute = t.getMinutes();
    var second = t.getSeconds();
    var curTime = "" + year + ((month<10)?"0":"") + month + ((day<10)?"0":"") + day + ((hour<10)?"0":"") + hour + ((minute<10)?"0":"") + minute + ((second<10)?"0":"") + second;
    document.ConfigForm.currentTime.value = curTime;

	if( true == setEBooValueCookie(document.ConfigForm) )
		document.ConfigForm.submit();
}
function wlClickEnble(wlEnbleCl)
{
	if (wlEnbleCl.checked == true)
	{
		if (state == 1)
		{
			setDisplay('wlInfo',1);
			setDisplay('authen',1);
			setDisplay('wlUserTip',1);
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
			setDisplay('wlMeshTip',1);
<% end if %>
		}
	}
	else
	{
		setDisplay('wlInfo',0);
		setDisplay('authen',0);
		setDisplay('wlUserTip',0);
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
		setDisplay('wlMeshTip',0);
<% end if %>
	}
}

function SetCtlValue()
{
	with ( document.forms[0])
	{
		var enable = getCheckVal('wlEnbl');
		if(enable == 1)
			setText('hwlEnbl', 1);
		else
			setText('hwlEnbl', 0);
		enable = getCheckVal('enableSsid');
		if(enable == 1)
			setText('henableSsid', 1);
		else
			setText('henableSsid', 0);
		var hide = getCheckVal('wlHide');
		if(hide == 1)
			setText('hwlHide', 1);
		else
			setText('hwlHide', 0);

		var temp = getSelectVal("wpsmode");
		if(temp == 'ap-pin')
		{
			setText('hWPSMode', 0);
		}
		else
		{
			setText('hWPSMode', 1);
		}

		setText('hwlKeys0', wlKeys[0].value);
		setText('hwlKeys1', wlKeys[1].value);
		setText('hwlKeys2', wlKeys[2].value);
		setText('hwlKeys3', wlKeys[3].value);

		var mode = '0';
		var WirelessMode = getSelectVal('wlgMode');
		if (WirelessMode == 'b,g')
			mode = '0';
		else if (WirelessMode == 'b')
			mode = '1';
		else if (WirelessMode == 'g')
			mode = '4';
		else if (WirelessMode == 'n')
			mode = '6';
		else if (WirelessMode == 'g,n')
			mode = '7';
		else if (WirelessMode == 'b,g,n')
			mode = '9';		
<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>
		else if (WirelessMode == 'g,n,ax')
		{
			mode = '16';
		}
<% end if %>
		else
			mode = '0';
		setText('hwlgMode', mode);

		if (WirelessMode == 'b,g' || WirelessMode == 'b' || WirelessMode == 'g')
		{
			setText('bwControl', 0);
		}

		var BeaconType = 'OPEN';
		var SecurMode = getSelectVal('wlSecurMode');
		if (SecurMode == 'Basic')
		{
			var wlKeyBitLen = getSelectVal('wlKeyBit');
			if(wlKeyBitLen == 128)
				BeaconType = 'WEP-128Bits';
			else
				BeaconType = 'WEP-64Bits';
		}
		else if (SecurMode == 'WPA')
			BeaconType = 'WPAPSK';
		else if (SecurMode == '11i')
			BeaconType = 'WPA2PSK';
		else if (SecurMode == 'WPAand11i')
			BeaconType = 'WPAPSKWPA2PSK';
		else if (SecurMode == 'radius64')
			BeaconType = 'Radius-WEP64';
		else if (SecurMode == 'radius128')
			BeaconType = 'Radius-WEP128';
		else if (SecurMode == 'wpaOnly')
			BeaconType = 'WPA';
		else if (SecurMode == 'wpa2Only')
			BeaconType = 'WPA2';
		else if (SecurMode == 'wpa1and2')
			BeaconType = 'WPA1WPA2';
<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then %>
		else if (SecurMode == 'WPA3-PSK')
			BeaconType = 'WPA3PSK';
		else if (SecurMode == 'WPA2-PSK/WPA3-PSK')
			BeaconType = 'WPA2PSKWPA3PSK';
<% if tcWebApi_get("Info_WLan", "isDot1XSupported", "h") = "Yes" then %>
		else if (SecurMode == 'WPA3')
			BeaconType = 'WPA3';
		else if (SecurMode == 'WPA3-192Bit')
			BeaconType = 'WPA3-192Bit';
<% end if %>
<% end if %>
		else//'None'
			BeaconType = 'OPEN';
		setText('hwlAuthMode', BeaconType);
		
<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>
		var wlanMuOfdmaDl = getCheckVal('wlanMuOfdmaDlEnable');
		if(wlanMuOfdmaDl == 1)
		{
			setText('WlanMuOfdmaDlEnable_flag', 1);
			setText('WlanMuOfdmaUlEnable_flag', 1);
		}
		else
		{
			setText('WlanMuOfdmaDlEnable_flag', 0);
			setText('WlanMuOfdmaUlEnable_flag', 0);
		}
		var wlanMuMimoDl = getCheckVal('wlanMuMimoDlEnable');
		if(wlanMuMimoDl == 1)
		{
			setText('WlanMuMimoDlEnable_flag', 1);
			setText('WlanMuMimoUlEnable_flag', 1);
		}
		else
		{
			setText('WlanMuMimoDlEnable_flag', 0);
			setText('WlanMuMimoUlEnable_flag', 0);
		}
		var wlanSR = getCheckVal('wlanSREnable');
		if(wlanSR == 1)
		{
			setText('WlanSREnable_flag', 1);
		}
		else
		{
			setText('WlanSREnable_flag', 0);
		}
<% end if %>
		
		setText('Save_Flag', 1);
	}
}

function selChangedSSID()
{
	document.ConfigForm.SSID_Flag.value = "1";
	if( true == setEBooValueCookie(document.ConfigForm) )
		document.ConfigForm.submit();
}

function autoWLAN_WDS_Active()
{
	if(document.ConfigForm.WDS_EncrypType_Selection != null){
		document.ConfigForm.WDS_EncrypType_Selection.disabled = false;
		document.ConfigForm.WDS_Key.disabled = false;
	}
	document.ConfigForm.WLANWDS_PEER_MAC1.disabled = false;
	document.ConfigForm.WLANWDS_PEER_MAC2.disabled = false;
	document.ConfigForm.WLANWDS_PEER_MAC3.disabled = false;
	document.ConfigForm.WLANWDS_PEER_MAC4.disabled = false;
}

function autoWLAN_WDS_Deactive()
{
	if(document.ConfigForm.WDS_EncrypType_Selection != null){
		document.ConfigForm.WDS_EncrypType_Selection.disabled = true;
		document.ConfigForm.WDS_Key.disabled = true;
	}
	document.ConfigForm.WLANWDS_PEER_MAC1.disabled = true;
	document.ConfigForm.WLANWDS_PEER_MAC2.disabled = true;
	document.ConfigForm.WLANWDS_PEER_MAC3.disabled = true;
	document.ConfigForm.WLANWDS_PEER_MAC4.disabled = true;
}


function autoWLAN_Flt_Active()
{
	if(document.ConfigForm.WLAN_FltAction != null){
		document.ConfigForm.WLAN_FltAction.disabled = false;
	}
	document.ConfigForm.WLANFLT_MAC1.disabled = false;
	document.ConfigForm.WLANFLT_MAC2.disabled = false;
	document.ConfigForm.WLANFLT_MAC3.disabled = false;
	document.ConfigForm.WLANFLT_MAC4.disabled = false;
	document.ConfigForm.WLANFLT_MAC5.disabled = false;
	document.ConfigForm.WLANFLT_MAC6.disabled = false;
	document.ConfigForm.WLANFLT_MAC7.disabled = false;
	document.ConfigForm.WLANFLT_MAC8.disabled = false;
}	

function autoWLAN_Flt_Deactive()
{
	if(document.ConfigForm.WLAN_FltAction != null){
		document.ConfigForm.WLAN_FltAction.disabled = true;
	}
	document.ConfigForm.WLANFLT_MAC1.disabled = true;
	document.ConfigForm.WLANFLT_MAC2.disabled = true;
	document.ConfigForm.WLANFLT_MAC3.disabled = true;
	document.ConfigForm.WLANFLT_MAC4.disabled = true;
	document.ConfigForm.WLANFLT_MAC5.disabled = true;
	document.ConfigForm.WLANFLT_MAC6.disabled = true;
	document.ConfigForm.WLANFLT_MAC7.disabled = true;
	document.ConfigForm.WLANFLT_MAC8.disabled = true;
}

function doHexCheck(c)
{
  if ((c >= "0")&&(c <= "9"))
  {
    return 1;
  }
  else if ((c >= "A")&&(c <= "F"))
  {
    return 1;
  }
  else if ((c >= "a")&&(c <= "f"))
  {
    return 1;
  }

  return -1;
}

function isNumeric(s)
{
  var len = s.length;
  var ch;
  if(len==0)
    return false;
  for( i=0; i< len; i++)
  {
    ch= s.charAt(i);
    if( ch > '9' || ch < '0')
    {
      return false;
    }
  }
  return true;
}

function checkRekeyinteral(value) 
{
	if (!isNumeric(value)) {
		alert("<%tcWebApi_get("String_Entry","WPAGroupintegerText","s")%>"); 
		return true;
	}
	if (value < 10 || value > 4194303) {
		alert("<%tcWebApi_get("String_Entry","WPAGrouprangeText","s")%>");
		return true;
	}	
	return false;
}


function checkBeacon(value) 
{
  if (!isNumeric(value)) {
    alert("<%tcWebApi_get("String_Entry","BeaconIntervalintegerText","s")%>");    
    return true;
  }
  if (value < 20 || value > 1000) {
    alert("<%tcWebApi_get("String_Entry","BeaconIntervalrangeText","s")%>");    
    return true;  	
  }
  return false;
}

function checkRTS(value) 
{
  if (!isNumeric(value)) {
    alert("<%tcWebApi_get("String_Entry","RTSThresholdintegerText","s")%>");    
    return true;
  }
  if (value < 1500 || value > 2347) {
    alert("<%tcWebApi_get("String_Entry","RTSThresholdrangeText","s")%>");    
    return true;  	
  }
  return false;
}

function checkFrag(value) 
{
  if (!isNumeric(value)) {
    alert("<%tcWebApi_get("String_Entry","FragmentThresholdintegerText","s")%>");    
    return true;
  }
  if (value < 256 || value > 2346) {
    alert("<%tcWebApi_get("String_Entry","FragmentThresholdrangeText","s")%>");    
    return true;  	
  }
  if (value % 2) {
    alert("<%tcWebApi_get("String_Entry","FragmentThresholdevenText","s")%>");    
    return true;  	
  }
  return false;
}


function doMACcheck(object)
{
  var szAddr = object.value;
  var len = szAddr.length;
  var errMsg = "Invalid MAC Address";

  if ( len == 0 )
  {
    return false;
  }

  if ( len == 12 )
  {
    var newAddr = "";
    var i = 0;

    for ( i = 0; i < len; i++ )
    {
      var c = szAddr.charAt(i);
      
      if ( doHexCheck(c) < 0 )
      {
      	alert("Invalid MAC Address");        
        return true;
      }
      if ( (i == 2) || (i == 4) || (i == 6) || (i == 8) || (i == 10) )
        newAddr = newAddr + ":";
      newAddr = newAddr + c;
    }
    object.value = newAddr;
  }
  else if ( len == 17 )
  {
    var i = 2;
    var c0 = szAddr.charAt(0);
    var c1 = szAddr.charAt(1);

    if ( (doHexCheck(c0) < 0) || (doHexCheck(c1) < 0) )
    {
			alert("Invalid MAC Address");       	
			return true;
    }
    
    i = 2;
    while ( i < len )
    {
      var c0 = szAddr.charAt(i);
      var c1 = szAddr.charAt(i+1);
      var c2 = szAddr.charAt(i+2);  
      if ( (c0 != ":") || (doHexCheck(c1) < 0) || (doHexCheck(c2) < 0) )
      {
				alert("Invalid MAC Address");         	
				return true;
      }
      i = i + 3;
    }
  }
  else
  {
		alert("Invalid MAC Address");         	
		return true;
  }

  return false;
}
function doResetOOB(){
	document.ConfigForm.WpsOOB.value = 1;
if( true == setEBooValueCookie(document.ConfigForm) )
{
<% if tcwebApi_get("WebCustom_Entry", "isMultiSupported", "h") = "Yes" then %>	
	top.getWlanWpsTimerCount = top.maxWlanWpsTimerCount;
<% end if %>
	document.ConfigForm.submit();
}
}
</SCRIPT>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id="Selected_Menu" type="hidden" 
            value="<%tcWebApi_get("String_Entry","ContentNetText","s")%>-><%tcWebApi_get("String_Entry","ContentWLANText","s")%>" name="Net_Wlan">
    <div id="scoop" class="scoop iscollapsed" theme-layout="vertical" vertical-placement="left"
        vertical-layout="wide" scoop-device-type="desktop" vertical-nav-type="compact"
        vertical-effect="shrink" vnavigation-view="view1">
        <div class="scoop-overlay-box">
        </div>
        <div class="scoop-container">
            <div class="scoop-main-container">
                <div class="scoop-wrapper">
                    <nav class="scoop-navbar is-hover" navbar-theme="theme4" active-item-theme="theme0"
                        sub-item-theme="theme2" active-item-style="style0" scoop-navbar-position="absolute">  
							<div class="sidebar_toggle"><a href="#"><i class="icon-close icons"></i></a></div>
							<div class="scoop-inner-navbar"> 
								<div class="scoop-logo"> 
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/logo.png" class="img-fluid" alt=""/></span></a>
							</div> 
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('<%tcWebApi_get("String_Entry","ContentNetText","s")%>','<%tcWebApi_get("String_Entry","ContentWLANText","s")%>')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('<%tcWebApi_get("String_Entry","GatewayNameText","s")%>','<%tcWebApi_get("String_Entry","ModeText","s")%>','<%tcWebApi_get("String_Entry","ContentNetText","s")%>','<%tcWebApi_get("String_Entry","ContentWLANText","s")%>','<%tcWebApi_get("String_Entry","WelcomeSettingText","s")%>','<%tcWebApi_get("String_Entry","logoHerf","s")%>');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							  <h1 class="heading_big bei">WLAN</h1>								 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/wlan.png" width="45" height="40" class="img_sub" alt=""/> <%tcWebApi_get("String_Entry","WLANText","s")%></h1>

                                          <form name="ConfigForm" action="/cgi-bin/net-wlan.asp" method="post">
		<INPUT TYPE="HIDDEN" ID="hCountryRegion" NAME="hCountryRegion" value="<% tcWebApi_get("WLan_Common","CountryRegion","s") %>" >	
		<INPUT TYPE="HIDDEN" ID="CountryName" NAME="CountryName" value="<% tcWebApi_get("WLan_Common","Country","s") %>" >	
		<INPUT TYPE="HIDDEN" ID="CountryChange" NAME="CountryChange" VALUE="0" >
		<INPUT TYPE="HIDDEN" ID="CountryRegion0" NAME="CountryRegion0" value="0" >	
		<INPUT TYPE="HIDDEN" ID="CountryRegion1" NAME="CountryRegion1" value="1" >	
		<INPUT TYPE="HIDDEN" ID="CountryRegion2" NAME="CountryRegion2" value="2" >	
		<INPUT TYPE="HIDDEN" ID="CountryRegion3" NAME="CountryRegion3" value="3" >		
		<INPUT TYPE="HIDDEN" ID="CountryRegion4" NAME="CountryRegion4" value="4" >	
		<INPUT TYPE="HIDDEN" ID="CountryRegion5" NAME="CountryRegion5" value="5" >
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then %>
			<INPUT TYPE="HIDDEN" NAME="WLanITxBfEn" value="<%tcWebApi_get("WLan_Common","ITxBfEn","s")%>">
			<INPUT TYPE="HIDDEN" NAME="WLanETxBfEnCond" value="<%tcWebApi_get("WLan_Common","ETxBfEnCond","s")%>">
			<INPUT TYPE="HIDDEN" NAME="WLanETxBfIncapable" value="<%tcWebApi_get("WLan_Common","ETxBfIncapable","s")%>">
<% end if %>
<% if tcWebApi_get("WLan_Common","rt_device","h") = "7915" then %>
			<INPUT TYPE="HIDDEN" NAME="is11AXModeSupported" value="<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>" >
			<INPUT TYPE="HIDDEN" NAME="isWPA3ModeSupported" value="<% if tcWebApi_get("WebCustom_Entry","isWPA3ModeSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>" >
<% end if %>
<input type="hidden" id="hwlKeys0" name="hwlKeys0" value="0">
			<input type="hidden" id="hwlKeys1" name="hwlKeys1" value="0">
			<input type="hidden" id="hwlKeys2" name="hwlKeys2" value="0">
			<input type="hidden" id="hwlKeys3" name="hwlKeys3" value="0">
			<input type="hidden" id="hwlgMode" name="hwlgMode" value="0">
			<input type="hidden" id="hwlAuthMode" name="hwlAuthMode" value="0">
			<input type="hidden" id="hwlEnbl" name="hwlEnbl" value="0">
			<input type="hidden" id="hWPSMode" name="hWPSMode" value="0">
			<input type="hidden" id="henableSsid" name="henableSsid" value="0">
			<input type="hidden" id="hwlHide" name="hwlHide" value="0">
			<INPUT TYPE="hidden" id="isInWPSing" NAME="isInWPSing" value="<%If TCWebApi_get("Info_WLan","wlanWPStimerRunning","h") <> "N/A" then tcWebApi_get("Info_WLan","wlanWPStimerRunning","s") else asp_write("0") end if%>">
			<INPUT TYPE="HIDDEN" id="WpsConfModeAll" NAME="WpsConfModeAll" value="7">
			<INPUT TYPE="HIDDEN" id="WpsConfModeNone" NAME="WpsConfModeNone" value="0">
			<INPUT TYPE="hidden" id="hWpsStart" NAME="hWpsStart" value="0">
			<INPUT TYPE="hidden" id="WpsOOB" NAME="WpsOOB" value="0">
			<INPUT TYPE="hidden" id="WpsGenerate" NAME="WpsGenerate" value="0">
			<INPUT TYPE="hidden" id="isCUCSupport" NAME="isCUCSupport" value="<%if tcWebApi_get("Info_WLan","isCUCSupport","h")="Yes" then asp_write("1") else asp_write("0") end if%>">
			<INPUT type="hidden" id="SSIDPre" NAME="SSIDPre" value="<%tcWebApi_get("WLan_Common","SSIDPre","s")%>">			
			<INPUT type="HIDDEN" NAME="isDot1XSupported" value="<% if tcWebApi_get("Info_WLan","isDot1XSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>">
			<INPUT type="HIDDEN" NAME="isDot1XEnhanceSupported" value="<% if tcWebApi_get("Info_WLan","isDot1XEnhanceSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>">	
			<INPUT TYPE="HIDDEN" ID="isWDSSupported" NAME="isWDSSupported" value="<% if tcWebApi_get("Info_WLan","isWDSSupported","h") = "Yes" then asp_write("1") else asp_write("0") end if %>" >
			<INPUT TYPE="HIDDEN" ID="WDS_EncrypType_NONE" NAME="WDS_EncrypType_NONE" value="NONE" >
			<INPUT TYPE="HIDDEN" ID="currentTime" NAME="currentTime" value="" >
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control custom-checkbox">
                                              <INPUT onclick=wlClickEnble(this) type="checkbox" value="ON" id="wlEnbl" name="wlEnbl"  class="custom-control-input" >
											  <label class="custom-control-label" for="wlEnbl"><%tcWebApi_get("String_Entry","EnableWirelessText","s")%></label>
											</div>
										</div>
                                        <div class="col-md-12" id="wlInfo" style="display:flex">
										<div class="col-md-12 form-group"  style="display:flex; width:150%">
											<label><%tcWebApi_get("String_Entry","SelectModeText","s")%></label>
                                            <SELECT class="custom-select" onchange="gModeChange()" size="1" id="wlgMode" name=wlgMode style="margin-left:110px; width:200px"> 
						<OPTION value=b,g,n selected>802.11b/g/n <%tcWebApi_get("String_Entry","MixText","s")%>
						<OPTION value=b,g>802.11b/g <%tcWebApi_get("String_Entry","MixText","s")%></OPTION>
						<OPTION value=n>802.11n</OPTION>
						<OPTION value=g>802.11g</OPTION>
						<OPTION value=b>802.11b</OPTION>
						<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>
                        <OPTION value=g,n,ax> 802.11g/n/ax <%tcWebApi_get("String_Entry","MixText","s")%></OPTION>
												<% end if %>					
						</SELECT>
                          <SCRIPT language=JavaScript type=text/javascript>
                              if (curUserName != sptUserName)
                                  getElement("div_gMode").style.display = "none";
			</SCRIPT>
			
										</div>

										<div class="col-md-12 form-group" id="wlTransferRate" style="display:flex">
											<label>Transmitted Power</label>
											<select class="custom-select"></select>
                                            <SELECT  class="custom-select" size="1" name="wlRate" id="wlRate"></SELECT></TD></TR>
                    <SCRIPT language=JavaScript type=text/javascript>
                        //if (curUserName != sptUserName)
                        //	getElement("wlTransferRate").style.display = "none";
                    </SCRIPT>
										</div> 
										<div class="col-md-12 form-group" id="wlPutOutPower" style="display:flex">
											<label><%tcWebApi_get("String_Entry","TransmittedPowerText","s")%></label>
                                            <SELECT class="custom-select" size=1 id="wlTxPwr" name="wlTxPwr"  style="margin-left:75px; width:200px">
								<OPTION value=5 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "5" then asp_Write("selected") end if %> >9%</OPTION>
								<OPTION value=4 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "4" then asp_Write("selected") end if %> >15%</OPTION>
								<OPTION value=3 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "3" then asp_Write("selected") end if %> >25%</OPTION>
								<OPTION value=2 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "2" then asp_Write("selected") end if %> >50%</OPTION>
								<OPTION value=1 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "1" then asp_Write("selected") end if %> >75%</OPTION>
								<OPTION value=6 <% if tcWebApi_get("WLan_Common","TxPowerLevel","h") = "6" then asp_Write("selected") end if %> >100%</OPTION>
                          </SELECT>
                          <SCRIPT language=JavaScript type=text/javascript>
                              //if (curUserName != sptUserName)
                              //	getElement("wlPutOutPower").style.display = "none";
		</SCRIPT>
										</div>
                                        <div class="col-md-12 form-group" style="display:none;" >
												<label><%tcWebApi_get("String_Entry","WlanBeaconIntervalText","s")%></label>
												<div class="input-group">
                                                  <input type="text" class="form-control" id="BeaconInterval" name="BeaconInterval"  MAXLENGTH="4" VALUE="<% If tcWebApi_get("WLan_Common","BeaconPeriod","h") <> "N/A" then tcWebApi_get("WLan_Common","BeaconPeriod","s") else asp_Write("100") end if %>">
												  <div class="input-group-append">
													<span class="input-group-text">(<%tcWebApi_get("String_Entry","BeaconRangeTipText","s")%>)</span>
												  </div>
													</div>
												</div>

										<div class="col-md- form-group" style="display:flex">
											&nbsp;&nbsp;&nbsp;&nbsp;<label><%tcWebApi_get("String_Entry","SelectChannelText","s")%></label>
													<SELECT class="custom-select" ID="Countries_Channels" NAME="Countries_Channels" SIZE="1" onChange="doRegionCheck()" style="display: none">
																	<SCRIPT language=javascript >
																		var countryarr = new Array(98);
																		countryarr[0]="ALBANIA";
																		countryarr[1]="ALGERIA";
																		countryarr[2]="ARGENTINA";
																		countryarr[3]="ARMENIA";
																		countryarr[4]="AUSTRALIA";
																		countryarr[5]="AUSTRIA";
																		countryarr[6]="AZERBAIJAN";
																		countryarr[7]="BAHRAIN";
																		countryarr[8]="BELARUS";
																		countryarr[9]="BELGIUM";
																		countryarr[10]="BELIZE";
																		countryarr[11]="BOLIVIA";
																		countryarr[12]="BRAZIL";
																		countryarr[13]="BRUNEI DARUSSALAM";
																		countryarr[14]="BULGARIA";
																		countryarr[15]="CANADA";
																		countryarr[16]="CHILE";
																		countryarr[17]="CHINA";
																		countryarr[18]="COLOMBIA";
																		countryarr[19]="COSTA RICA";
																		countryarr[20]="CROATIA";
																		countryarr[21]="CYPRUS";
																		countryarr[22]="CZECH REPUBLIC";
																		countryarr[23]="DENMARK";
																		countryarr[24]="DOMINICAN REPUBLIC";
																		countryarr[25]="ECUADOR";
																		countryarr[26]="EGYPT";
																		countryarr[27]="ELSALVADOR";
																		countryarr[28]="FINLAND";
																		countryarr[29]="FRANCE";
																		countryarr[30]="GEORGIA";
																		countryarr[31]="GERMANY";
																		countryarr[32]="GREECE";
																		countryarr[33]="GUATEMALA";
																		countryarr[34]="HONDURAS";
																		countryarr[35]="HONGKONG";
																		countryarr[36]="HUNGARY";
																		countryarr[37]="ICELAND";
																		countryarr[38]="INDIA";
																		countryarr[39]="INDONESIA";
																		countryarr[40]="IRAN";
																		countryarr[41]="IRELAND";
																		countryarr[42]="ISRAEL";
																		countryarr[43]="ITALY";
																		countryarr[44]="JAPAN";
																		countryarr[45]="KAZAKHSTAN";
																		countryarr[46]="KOREA DEMOCRATIC";
																		countryarr[47]="KOREA REPUBLIC";
																		countryarr[48]="LATVIA";
																		countryarr[49]="LEBANON";
																		countryarr[50]="LIECHTENSTEIN";
																		countryarr[51]="LITHUANIA";
																		countryarr[52]="LUXEMBOURG";
																		countryarr[53]="MACAU";
																		countryarr[54]="MACEDONIA";
																		countryarr[55]="MALAYSIA";
																		countryarr[56]="MEXICO";
																		countryarr[57]="MONACO";
																		countryarr[58]="MOROCCO";
																		countryarr[59]="NETHERLANDS";
																		countryarr[60]="NEW ZEALAND";
																		countryarr[61]="NORWAY";
																		countryarr[62]="OMAN";
																		countryarr[63]="PAKISTAN";
																		countryarr[64]="PANAMA";
																		countryarr[65]="PERU";
																		countryarr[66]="PHILIPPINES";
																		countryarr[67]="POLAND";
																		countryarr[68]="PORTUGAL";
																		countryarr[69]="PUERTO RICO";
																		countryarr[70]="QATAR";
																		countryarr[71]="ROMANIA";
																		countryarr[72]="RUSSIA";
																		countryarr[73]="SAUDI ARABIA";
																		countryarr[74]="SINGAPORE";
																		countryarr[75]="SLOVAKIA";
																		countryarr[76]="SLOVENIA";
																		countryarr[77]="SOUTH AFRICA";
																		countryarr[78]="SPAIN";
																		countryarr[79]="SWEDEN";
																		countryarr[80]="SWITZERLAND";
																		countryarr[81]="SYRIAN ARAB REPUBLIC";
																		countryarr[82]="TAIWAN";
																		countryarr[83]="THAILAND";
																		countryarr[84]="TRINIDAD AND TOBAGO";
																		countryarr[85]="TUNISIA";
																		countryarr[86]="TURKEY";
																		countryarr[87]="UKRAINE";
																		countryarr[88]="UNITED ARAB EMIRATES";
																		countryarr[89]="UNITED KINGDOM";
																		countryarr[90]="UNITED STATES";
																		countryarr[91]="URUGUAY";
																		countryarr[92]="UZBEKISTAN";
																		countryarr[93]="VENEZUELA";
																		countryarr[94]="VIETNAM";
																		countryarr[95]="YEMEN";
																		countryarr[96]="ZIMBABWE";
																		countryarr[97]="Undefined";
									
																		for(i=0;i<98;i++)
																		{
																			if(document.ConfigForm.CountryName.value.match(countryarr[i]) != null)
																			{
																				document.ConfigForm.Countries_Channels[i]=new Option(countryarr[i],countryarr[i],false,true);
																				document.ConfigForm.Countries_Channels[i].selected=true;
																			}
																			else
																			{
																				if(countryarr[i].match("TAIWAN") !=null){
																					document.ConfigForm.Countries_Channels[i]=new Option(countryarr[i],countryarr[i],true,false);
																				}
																				else
																				{
																					document.ConfigForm.Countries_Channels[i]=new Option(countryarr[i],countryarr[i],false,false);
																					document.ConfigForm.Countries_Channels[i].selected=false;
																				}
																			}
																		}	
																	</SCRIPT>				
																</SELECT> 
																<SELECT class="custom-select" ID="wlChannel" NAME="wlChannel" SIZE="1" onChange="ChannelChange()" style="margin-left:97px; width:204px"></SELECT>
										</div>

										<div class="col-md-6 form-group" style="display:flex">
											<label><%tcWebApi_get("String_Entry","CurrentChannelText","s")%></label>
													<INPUT class="form-control" TYPE="TEXT" ID="CurrentChannel" NAME="CurrentChannel" STYLE="WIDTH:206px; MARGIN-LEFT:87px" MAXLENGTH="2" VALUE="<% If tcWebApi_get("WLan_Common","Channel","h") <> "N/A" then tcWebApi_get("WLan_Common","Channel","s") end if %>" disabled >

															<SCRIPT language=JavaScript type=text/javascript>
                                                                var t = new Date();
                                                                var year = t.getFullYear();
                                                                var month = t.getMonth() + 1;
                                                                var day = t.getDate();
                                                                var hour = t.getHours();
                                                                var minute = t.getMinutes();
                                                                var second = t.getSeconds();
                                                                var curTime = "" + year + ((month<10)?"0":"") + month + ((day<10)?"0":"") + day + ((hour<10)?"0":"") + hour + ((minute<10)?"0":"") + minute + ((second<10)?"0":"") + second;
                                                                var lastTime = "<%tcWebApi_get("WebCurSet_Entry","24G_channel_update_time","s")%>";
                                                                //var interval = getTimeDifference(curTime, lastTime);
                                                                interval = Math.abs(Number(curTime) - Number(lastTime));

                                                                //show the real value after 20s
                                                                if (isNaN(lastTime) || (interval >= 20) || (document.ConfigForm.wlChannel.value == "0"))
                                                                {
                                                                    //use real value
                                                                    document.ConfigForm.CurrentChannel.value = "<% If tcWebApi_get("Info_WLan","CurrentChannel","h") <> "N/A" then tcWebApi_get("Info_WLan","CurrentChannel","s") end if %>";
                                                                }
                                                                else
                                                                {
                                                                    //use select value
                                                                    document.ConfigForm.CurrentChannel.value = "<% If tcWebApi_get("WLan_Common","Channel","h") <> "N/A" then tcWebApi_get("WLan_Common","Channel","s") end if %>";
															        if (document.ConfigForm.CurrentChannel.value == "0")
                                                                    {
                                                                        //use real value
                                                                        document.ConfigForm.CurrentChannel.value = "<% If tcWebApi_get("Info_WLan","CurrentChannel","h") <> "N/A" then tcWebApi_get("Info_WLan","CurrentChannel","s") end if %>";
                                                                    }
                                                                }
                                                            </SCRIPT>
										</div>
										
										 <div class="col-md-3 form-group" style="display:none;" >
												<label><%tcWebApi_get("String_Entry","WlanRTSThresholdText","s")%></label>
												<div class="input-group">
                                                <input type="text" class="form-control" id="RTSThreshold" name="RTSThreshold" MAXLENGTH="5" VALUE="<% If tcWebApi_get("WLan_Common","RTSThreshold","h") <> "N/A" then tcWebApi_get("WLan_Common","RTSThreshold","s") else asp_Write("2347") end if %>">
												  <div class="input-group-append">
													<span class="input-group-text">(<%tcWebApi_get("String_Entry","RTSrangeTipText","s")%>)</span>
												  </div>
												</div>
											</div>
										<div class="col-md-3 form-group" style="display:none;" >
												<label><%tcWebApi_get("String_Entry","WlanFragmentThresholdText","s")%></label>
												<div class="input-group">
                                                
                                                <INPUT type="text" class="form-control" id="FragmentThreshold" name="FragmentThreshold"  MAXLENGTH="5" VALUE="<% If tcWebApi_get("WLan_Common","FragThreshold","h") <> "N/A" then tcWebApi_get("WLan_Common","FragThreshold","s") else asp_Write("2346") end if %>">
												  <div class="input-group-append">
													<span class="input-group-text">(<%tcWebApi_get("String_Entry","FragmentRangeTipText","s")%>)</span>
												  </div>
													</div>
												</div>
                                                <% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" Then %> 
<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>
										<div class="col-md-3 form-group" id="trTxBeamforming">
											<label><%tcWebApi_get("String_Entry","FixTransmissionText","s")%></label>
                                            <SELECT class="custom-select" NAME="WLanTxBeamForming">
								<option value="3">Both</option>
								<option value="2">Explicit TxBF</option>
								<option value="1">Implicit TxBF</option>
								<option value="0">Disable</option>
							</SELECT>
										</div>
                                        <% end if %>
<% end if %>

                                        <div class="col-md-6 form-group" id="trSSID">
											<label>SSID <%tcWebApi_get("String_Entry","IndexText","s")%></label>
                                            <SELECT class="custom-select"  onchange="selChangedSSID()" size=1 id="wlSsidIdx" name="wlSsidIdx" style="margin-left:113px; width:208px"></SELECT>
                                            <input type="hidden" id="SSID_Flag" name="SSID_Flag" value="0">
										</div>

                                        <div class="col-md-6 form-group" style="display:flex">
											<label>SSID:</label>
                                            <Input type="text" class="form-control" size=10 id="wlSsid" name="wlSsid" style="margin-left:150px; width:210px" VALUE="<% If tcWebApi_get("WLan_Entry","SSID","h") <> "N/A" then tcWebApi_get("WLan_Entry","SSID","s") end if %>">
										</div>
<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then %>
                                        <div  id="11NmcsControl" style="display:none;">
											<label><%tcWebApi_get("String_Entry","RateText","s")%></label>
                                            <SELECT class="custom-select" size=1 id="wlMcs" name="wlMcs"></SELECT>
                                            <SCRIPT language=JavaScript type=text/javascript>
                                                //if (curUserName != sptUserName)
                                                //	getElement("11NmcsControl").style.display = "none";
		</SCRIPT>
										</div>
										<% end if %>

                                        <div class="col-md-6 form-group" id="11NbwControl" style="display:flex">
											<label><%tcWebApi_get("String_Entry","BandwidthText","s")%> </label>
                                            <SELECT id=bwControl class="custom-select" style="margin-left:112px; width:212px" onchange=<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then loadMCSList() end if %> size=1 id="bwControl" name="bwControl"> 
                        <OPTION value=0 selected>20 MHZ</OPTION>
                        <OPTION value=1>20/40 MHZ</OPTION>
                        <OPTION value=2>40 MHZ</OPTION>
                        </SELECT>
                        <!--	<SCRIPT language=JavaScript type=text/javascript>
                        	    if (curUserName != sptUserName)
                        	        getElement("11NbwControl").style.display = "none";
		</SCRIPT> -->
										</div>

                                        <div class="col-md-3 form-group" style="display:none;" id="11NgiControl"  > 
											<label><%tcWebApi_get("String_Entry","ProtectIntervalText","s")%></label>
                                            <SELECT id=giControl  class="custom-select" onchange=<% if tcWebApi_get("WebCustom_Entry", "is11AXModeSupported", "h") <> "Yes" then loadMCSList() end if %> size="1" name="giControl"> 
                                            <OPTION value="0" selected>Long </OPTION>
                                            <OPTION value="1">Short</OPTION></SELECT>
                        	<SCRIPT language=JavaScript type=text/javascript>
                        	    if (curUserName != sptUserName)
                        	        getElement("11NgiControl").style.display = "none";
		</SCRIPT>

										</div>
		<div class="col-md-3 form-group" style="display:none;" >
			<label>DTIM <%tcWebApi_get("String_Entry","IntervalText","s")%></label>
		<div class="input-group">
			<INPUT TYPE="TEXT" ID="DTIM" NAME="DTIM" class="form-control" MAXLENGTH="5" VALUE="<% If tcWebApi_get("WLan_Common","DtimPeriod","h") <> "N/A" then tcWebApi_get("WLan_Common","DtimPeriod","s") else asp_Write("1") end if %>" >
		<div class="input-group-append">
			<span class="input-group-text">(<%tcWebApi_get("String_Entry","RangeText","s")%> 1~255)
			</span>
		</div>
		</div>
		</div>

										<div class="col-md-12 form-group">
											<div class="custom-control custom-checkbox">
                                            <input type="checkbox" id="enableSsid" name="enableSsid" class="custom-control-input">
											  <label class="custom-control-label" for="enableSsid"><%tcWebApi_get("String_Entry","EnableSSIDText","s")%></label>
											</div>
										</div>
										<div class="col-md-6 form-group" style="display:flex">
											<label><%tcWebApi_get("String_Entry","ConnectDeviceText","s")%></label>
                                            <input type="text" class="form-control" size="10" name="wlAssociateNum"  style="margin-left:18px; width: 214px" value="<%tcWebApi_get("WLan_Entry","MaxStaNum","s")%>">
										</div>
										<div class="col-md-3 form-group align-self-center">
											<label > </label>
											<div class="custom-control custom-checkbox">
                                            <INPUT type="checkbox" value="ON" onClick="doBroadcastSSIDChange();" id="wlHide" name="wlHide" class="custom-control-input" >
											  <label class="custom-control-label" for="wlHide"><%tcWebApi_get("String_Entry","CancelBroadcastText","s")%></label>
											</div>
										</div>
										<!-- <div class="col-md-12 form-group">
											<h2 class="sub_heading"><%tcWebApi_get("String_Entry","EnableGuestWifiText","s")%></h2>
										   <div class="custom-control custom-radio custom-control-inline">
                                            <input  class="custom-control-input" type="RADIO" id="EGWIFI_Enable_Selection_open" name="EGWIFI_Enable_Selection" value="1" <%If tcWebApi_get("WLan_Entry","EnableGuestWifi","h") = "1" then asp_Write("checked") end if %> />
                                                                                                  <label class="custom-control-label" for="EGWIFI_Enable_Selection_open"><%tcWebApi_get("String_Entry","OpenText","s")%></label>
                                                                                   </div>
										   <div class="custom-control custom-radio custom-control-inline">
                                            <input  class="custom-control-input" type="RADIO" id="EGWIFI_Enable_Selection_close" name="EGWIFI_Enable_Selection" value="0" <%If tcWebApi_get("WLan_Entry","EnableGuestWifi","h") = "0" then asp_Write("checked") end if %><% If tcWebApi_get("WLan_Entry","EnableGuestWifi","h") = "N/A" then asp_Write("checked") end if %> />
                                                                                                  <label class="custom-control-label" for="EGWIFI_Enable_Selection_close"><%tcWebApi_get("String_Entry","CloseText","s")%></label>
                                                                                   </div>
                                                                                </div> -->
</div>

										<div class="col-md-12"></div>
                                        <div class="col-md-12" id="authen">
                                        <div style="width:100%" id="wpsinfo" style="display:none">

                                        <div class="col-md-12 form-group" id="wpsenableTR">
											<div class="custom-control custom-checkbox">
                                            <input class="custom-control-input"  type="checkbox" id="enableWps" name="enableWps" <%if tcWebApi_get("WLan_Entry","WPSConfMode","h") <> "0" then asp_Write("checked") end if%> onclick="doWPSUseChange()"/>
                      <input type="hidden" id="WpsActive" name="WpsActive" value="0"/>
											  <label class="custom-control-label" for="enableWps">WPS <%tcWebApi_get("String_Entry","EnableText","s")%></label>
											</div>
										</div>

                                        <div class="col-md-6 form-group" id="wpsmodeTR" >
											<label>WPS <%tcWebApi_get("String_Entry","ModeText","s")%></label>
                                              <SELECT id="wpsmode"  class="custom-select"onchange="wpsModeChange()" size="1" name="wpsmode" style="margin-left:68px; width:217px">>
                      <option value=ap-pbc <%if tcWebApi_get("WLan_Entry","WPSMode","h") = "1" then asp_Write("selected") end if%>>PBC</option>
                      <option value=ap-pin <%if tcWebApi_get("WLan_Entry","WPSMode","h") = "0" then asp_Write("selected") end if%>>PIN</option>
                      </SELECT>
        &nbsp;&nbsp
									
                                         <input id="btnStartWPS" class="btn orange_border_btn" name="btnStartWPS" value="<%IF tcWebApi_get("Info_WLan","wlanWPStimerRunning","h") = "0" then asp_Write("Start WPS") end if%> <%IF tcWebApi_get("Info_WLan","wlanWPStimerRunning","h") = "1" then asp_Write("Stop WPS") end if%><%IF tcWebApi_get("Info_WLan","wlanWPStimerRunning","h") = "N/A" then asp_Write("Start WPS") end if%>" onclick="doStartWPS();" type="button"/>
                                    
										</div>
                                        
                                        <div class="col-md-12" id="pinGenerate" style="display:none">
											<div class="form-group">
											<label><strong>AP self PIN code</strong>: <span style="margin-left:75px"><% tcWebApi_get("Info_WLan", "wlanSelfPinCode", "s") %></span></label>
                                                	<input type="button" class="btn orange_border_btn" id="pin_generate" name="pin_generate" value="Generate" onclick="doGenerate()"/>
											</div>
										</div>

                                          <div class="col-md-12 form-group" id="pinval" >
											
											<label>enrollee PIN code:</label>
                                                    <input id="pinvalue" class="form-control" name="pinvalue" size="9" maxlength="9" style="margin-left:77px; width:214px" value="<% If tcWebApi_get("WLan_Entry","enrolleePinCode","h") = "N/A" then asp_Write("") else TCWebApi_get("WLan_Entry","enrolleePinCode","s") end if %>" type="text"/>
											</div>
									
                                        <div class="col-md-12" id="wpssta" >
											<div class="form-group">
					<% if tcwebApi_get("WebCustom_Entry","isMultiSupported","h") = "Yes" then %>
                                                     <label>WPS <%tcWebApi_get("String_Entry","StatusText","s")%><strong id="WPSProcess" name="WPSProcess" style="margin-left:114px"><% if tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "Idle" then asp_Write("Idle")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "In progress" then asp_Write("Inprogress")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "Configured" then asp_Write("Configured")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "WPS process Fail" then asp_Write("WPS process Fail") 
					else tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "s") end if %></strong><span>
				<% else %>
				<% if tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "Idle" then asp_Write("Idle")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "In progress" then asp_Write("Inprogress")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "Configured" then asp_Write("Configured")
					elseif tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "h") = "WPS process Fail" then asp_Write("WPS process Fail")
					else tcWebApi_get("Info_WLan", "wlanWPSStatus_0", "s") end if%>
				<% end if %>
                                                     </span></label>

											</div>
										</div>

                                        <div class="col-md-12" style="display:none;" >
										<div class="form-group" style="display:none;" >
                                        <input id="ResetOOB" class="btn orange_border_btn" name="ResetOOB" value="Reset to OOB" onclick="doResetOOB();" type="button" >
                                        </div>
											 
										</div>

                                         </div>
										<div class="col-md-6 form-group" style="display:flex">
											<label><%tcWebApi_get("String_Entry","SecuritySetText","s")%></label>
                                            <select class="custom-select" onchange="authModeChange(0)" size=1 id="wlSecurMode" name="wlSecurMode" style="width:217px; margin-left:81px"> 
                          </select>
										</div>

                                        <div class="col-md-6 form-group" id="Preauth" style="display:flex">
											<label>WPA2 <%tcWebApi_get("String_Entry","PreCertificationText","s")%></label>
                                            <SELECT class="custom-select" size="1" id="wlPreauth" name="wlPreauth"> 
                                            <OPTION value=off selected>Disabled</OPTION> 
                                            <OPTION value=on>Enabled</OPTION>
                                            </SELECT> 
										</div>

                                       <div class="col-md-6 form-group" id="NetReauth" style="display:flex">
											<label style="width:163px"><%tcWebApi_get("String_Entry","RecertificationIntervalText","s")%></label>
                                            <input type="text" class="form-control" maxLength="10" name="wlNetReauth" value="<%if TCWebApi_get("WLan_Common","DtimPeriod","h") <> "N/A" then TCWebApi_get("WLan_Common","DtimPeriod","s") end if%>">
										</div>

										<div class="col-md-6 form-group" id="wpaPreShareKey">
											<label style="width:163px">WPA <%tcWebApi_get("String_Entry","PreCertificationKeyText","s")%></label>
						<span id="inpsw"
							<input id="inpswPwd" type="password" class="form-control" maxLength="65" name="wlWpaPsk" style="width:219px; margin-left:16px"
							value="<%if tcWebApi_get("WLan_Entry","WPAPSK","h") <> "N/A" then tcWebApi_get("WLan_Entry","WPAPSK","s") end if%>">
							<span class="input-group-text" style="width:278px; margin-left:211px; margin-top:-6px">(8~63<%tcWebApi_get("String_Entry","CharactersOr64StringText","s")%>)&nbsp;&nbsp;<i class="fa fa-eye" onclick="inpsShowhide()" id="inpswEye"></i></span></span>
						<script language="JavaScript" type="text/JavaScript">
							function WDSshowhide(){
				var eye = document.getElementById("WDSeye");
							var pwd = document.getElementById("WDS_Key");

                    if (pwd.type == "password") {
                        pwd.type = "text";
                            eye.className='fa fa-eye-slash'
                    }else {
                        pwd.type = "password";
                        eye.className='fa fa-eye'
                    }
            }

			function inpsShowhide(){
				var eye = document.getElementById("inpswEye");
							var pwd = document.getElementById("inpswPwd");

                    if (pwd.type == "password") {
                        pwd.type = "text";
                            eye.className='fa fa-eye-slash'
                    }else {
                        pwd.type = "password";
                        eye.className='fa fa-eye'
                    }
            }
						</script>
						
                                                <%if TCWebApi_get("WebCurSet_Entry","IsSupportShowPSW","h" ) = "1" then%>
											<div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" id="cb_enablshowpsw" onclick="doshowpswChange()" type=checkbox name="cb_enablshowpsw"> 
											  <label class="custom-control-label" for="cb_enablshowpsw"><%tcWebApi_get("String_Entry","ShowPassowrdText","s")%></label>
											</div>
                                            <script language="JavaScript" type="text/JavaScript">

						function doshowpswChange() {
							with (getElById('ConfigForm')){
								var tempvalue1 = wlWpaPsk.value;
								if (cb_enablshowpsw.checked) {
								    inpsw.innerHTML = "<input class=\"form-control\"  type=\"text\" maxLength=65 name=\"wlWpaPsk\" value=" + document.ConfigForm.wlWpaPsk.value + ">";
								}
								else {
								    inpsw.innerHTML = "<input class=\"form-control\" type=\"password\" maxLength=65 name=\"wlWpaPsk\" value=" + document.ConfigForm.wlWpaPsk.value + ">";
								}
								wlWpaPsk.value = tempvalue1;
							}
						}

						</script>
                                            <%end if%>
										</div>
                                        	<div class="col-md-3 form-group" id="wpaGTKRekey" style="display: none">
											<label>WPA <%tcWebApi_get("String_Entry","PiarKeyText","s")%></label>
                                            <input type="text" class="form-control" maxLength="10" id="wlWpaGtkRekey"  name="wlWpaGtkRekey"/>
										</div>

                                        <div class="col-md-12" id="wlRadius">
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","RadiusServiceIPText","s")%></label>
                                            <input class="form-control" name="radiusSVR_IP" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Server","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Server","s") end if %>"  maxlength="15"/>
										</div>

										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","RadiusServicePortText","s")%></label>
                                            <input  class="form-control" name="radiusSVR_Port" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Port","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Port","s") end if %>" maxlength="5"/>
										</div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","RadiusSharedSecretText","s")%></label>
                                            <input  class="form-control" name="radiusSVR_Key" type="text" value="<% if tcWebApi_get("WLan_Entry","RADIUS_Key","h") <> "N/A" then tcWebApi_get("WLan_Entry","RADIUS_Key","s") end if %>"  maxlength="63"/>
										</div>
                                     
                                     <% if tcWebApi_get("Info_WLan","isDot1XEnhanceSupported","h") = "Yes" then %>	
                                     <div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","BackUpServiceIPText","s")%></label>
                                            <input class="form-control" name="bakradiusSVR_IP" type="text" value="<% if tcWebApi_get("WLan_Entry","BAK_RADIUS_Server","h") <> "N/A" then tcWebApi_get("WLan_Entry","BAK_RADIUS_Server","s") end if %>"  maxlength="15">
										</div>

                                         <div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","BackUpServicePortText","s")%></label>
                                           <input class="form-control" name="bakradiusSVR_Port" type="text" value="<% if tcWebApi_get("WLan_Entry","BAK_RADIUS_Port","h") <> "N/A" then tcWebApi_get("WLan_Entry","BAK_RADIUS_Port","s") end if %>" maxlength="5">
										</div>

                                          <div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","BackUpSharedSecretText","s")%></label>
                                          <input  class="form-control"  name="bakradiusSVR_Key" type="text" value="<% if tcWebApi_get("WLan_Entry","BAK_RADIUS_Key","h") <> "N/A" then tcWebApi_get("WLan_Entry","BAK_RADIUS_Key","s") end if %>" size="20" maxlength="63">
										</div>

                                        	<% end if %>	


										<div class="col-md-3 form-group">
												<label><%tcWebApi_get("String_Entry","ReAuthIntervalText","s")%></label>
												<div class="input-group">
                                                  <input  class="form-control" type="text" name="radiusSVR_ReAuthInter" value="<% if tcWebApi_get("WLan_Common","session_timeout_interval","h") <> "N/A" then tcWebApi_get("WLan_Common","session_timeout_interval","s") end if %>" size="20" maxlength="63">
												  <div class="input-group-append">
													<span class="input-group-text">seconds</span>
												  </div>
													</div>
												</div>
   </div>

										<div class="col-md-3 form-group" id="wlWPARekeyInter">
												<label><%tcWebApi_get("String_Entry","WPAGroupKeyUpdateIntervalText","s")%></label>
												<div class="input-group">
                                                  <input  class="form-control" type="text" id="WPARekeyInter" name="WPARekeyInter" maxlength="7" onchange="checkRekeyinteral(this.value)"> 
						<script language="JavaScript" type="text/JavaScript">
						var rekeystr = "<% tcWebApi_get("WLan_Entry","RekeyInterval","s") %>";
						if("N/A" == rekeystr || "" == rekeystr)
						{
							document.getElementById('WPARekeyInter').value = "3600";
							}						
						else
						{
							document.getElementById('WPARekeyInter').value = rekeystr;
						}
						
						</script>
												  <div class="input-group-append">
													<span class="input-group-text">seconds</span>
												  </div>
													</div>
												</div>
										<div class="col-md-6 form-group" id="wlWpaD" style="display:flex">
											<label>WPA <%tcWebApi_get("String_Entry","EncriptionText","s")%></label>
                                            <select class="custom-select" id="wlWpa" name="wlWpa" style="margin-left:88px; width:218px"></select>
										</div>
										<div class="col-md-3 form-group" id="wlWepD">
											<label>WEP <%tcWebApi_get("String_Entry","CertificationText","s")%></label>
                                            <select class="custom-select" id="wlWep" name="wlWep"></select>
										</div>
                                        <div class="col-md-12" id="keyInfo">
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","EncriptionLengthText","s")%></label>
                                            <SELECT  class="custom-select" id="wlKeyBit" onchange="wlKeyBitChange()" id="wlKeyBit" name="wlKeyBit"> 
                          <OPTION value=128 selected>128-bit</OPTION> 
                          <OPTION value=64>64-bit</OPTION>
                          </SELECT> 
										</div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","CurentKeyIndexText","s")%></label>
                                            <SELECT class="custom-select" size="1" id="wlKeyIndex" name="wlKeyIndex"></SELECT>
										</div>
										<div class="col-md-12"></div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","KeyText","s")%> 1</label>
                                            <input class="form-control" maxLength="26" id="wlKeys1" name="wlKeys" value="<%if tcWebApi_get("WLan_Entry","Key1Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key1Str","s") end if%>"/>
											<p id="wlKeyBitTip" class="light_grey_text"><%tcWebApi_get("String_Entry","Enter2Text","s")%> </p>
										</div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","KeyText","s")%> 2</label>
                                            <input  class="form-control" maxLength="26" id="wlKeys2" name="wlKeys" value="<%if tcWebApi_get("WLan_Entry","Key2Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key2Str","s") end if%>"/>
										</div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","KeyText","s")%> 3</label>
                                            <input class="form-control" maxLength="26" id="wlKeys3" name="wlKeys" value="<%if tcWebApi_get("WLan_Entry","Key3Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key3Str","s") end if%>"/>
										</div>
										<div class="col-md-3 form-group">
											<label><%tcWebApi_get("String_Entry","KeyText","s")%>  4</label>
                                            <input maxLength="26" id="wlKeys4" class="form-control" name="wlKeys" value="<%if tcWebApi_get("WLan_Entry","Key4Str","h") <> "N/A" then tcWebApi_get("WLan_Entry","Key4Str","s") end if%>"/>
										</div>
                                        </div>

                                        <% If tcWebApi_get("Info_WLan","isWDSSupported","h") = "Yes" Then %>
										<div class="col-md-12 form-group" style="display:none;" >
											<h2 class="sub_heading">WDS<%tcWebApi_get("String_Entry","EnableText","s")%></h2>
											<div class="custom-control custom-radio custom-control-inline">
                                            <input  class="custom-control-input" type="RADIO" id="WLAN_WDS_Active_Open" name="WLAN_WDS_Active" value="1" onClick="autoWLAN_WDS_Active()" <%If tcWebApi_get("WLan_WDS","WdsEnable","h") <> "0" then asp_Write("checked") end if %> />
												  <label class="custom-control-label" for="WLAN_WDS_Active_Open"><%tcWebApi_get("String_Entry","OpenText","s")%></label>
												</div>
												<div class="custom-control custom-radio custom-control-inline">
												<input class="custom-control-input" type="RADIO" id="WLAN_WDS_Active_Close" name="WLAN_WDS_Active" value="0" onClick="autoWLAN_WDS_Deactive()" <%If tcWebApi_get("WLan_WDS","WdsEnable","h") = "0" then asp_Write("checked") end if%> <%If tcWebApi_get("WLan_WDS","WdsEnable","h") = "N/A" then asp_Write("checked") end if%> />
												  <label class="custom-control-label" for="WLAN_WDS_Active_Close"><%tcWebApi_get("String_Entry","CloseText","s")%></label>
												</div>
										</div>
                                       

                                          <div class="col-md-12" id="wds_div" style="display:none;" >
										<div class="col-md-3 form-group" style="display:none;" >
											<label>WDS<%tcWebApi_get("String_Entry","EncryptionTypeText","s")%></label>
                                            <SELECT class="custom-select" ID="WDS_EncrypType_Selection" NAME="WDS_EncrypType_Selection" SIZE="1">
				  				<OPTION value="TKIP" <% If tcWebApi_get("WLan_WDS","WdsEncrypType","h") = "TKIP" then asp_Write("selected") end if %> >TKIP</OPTION>
				  				<OPTION value="AES"<% if tcWebApi_get("WLan_WDS","WdsEncrypType","h") = "AES" then asp_Write("selected") end if %> >TKIPAES</OPTION>
				  				</SELECT>
										</div>
										<div class="col-md-3 form-group" style="display:none;">
											<label>WDS<%tcWebApi_get("String_Entry","KeyText","s")%></label>
                                            <INPUT  class="form-control" TYPE="password" ID="WDS_Key" NAME="WDS_Key" MAXLENGTH="64" VALUE="<% If tcWebApi_get("WLan_WDS","WdsKey","h") <> "N/A" then tcWebApi_get("WLan_WDS","WdsKey","s") end if %>" >
											<span class="input-group-text">(8~63<%tcWebApi_get("String_Entry","CharactersOr64StringText","s")%>)&nbsp;&nbsp;<i class="fa fa-eye" onclick="WDSshowhide()" id="WDSeye"></i></span>
										</div>
                                        </div>
										<div class="col-md-12" style="display:none;" ></div>
										<div class="col-md-3 form-group" style="display:none;" >
											<label>WDS Peer MAC #1</label>
                                            <INPUT  class="form-control" TYPE="TEXT" ID="WLANWDS_PEER_MAC1" NAME="WLANWDS_PEER_MAC1"  MAXLENGTH="20" VALUE="<% if tcWebApi_get("WLan_WDS","Wds_MAC0","h") <> "N/A" then tcWebApi_get("WLan_WDS","Wds_MAC0","s") end if %>" />
										</div>
										<div class="col-md-3 form-group" style="display:none;">
											<label>WDS Peer MAC #2</label>
                                            <INPUT TYPE="TEXT"  class="form-control" ID="WLANWDS_PEER_MAC2" NAME="WLANWDS_PEER_MAC2" MAXLENGTH="20" VALUE="<% if tcWebApi_get("WLan_WDS","Wds_MAC1","h") <> "N/A" then tcWebApi_get("WLan_WDS","Wds_MAC1","s") end if %>" />
										</div>
										<div class="col-md-3 form-group" style="display:none;">
											<label>WDS Peer MAC #3</label>
                                            <INPUT TYPE="TEXT"  class="form-control" ID="WLANWDS_PEER_MAC3" NAME="WLANWDS_PEER_MAC3"  MAXLENGTH="20" VALUE="<%if tcWebApi_get("WLan_WDS","Wds_MAC2","h") <> "N/A" then tcWebApi_get("WLan_WDS","Wds_MAC2","s") end if %>" >
										</div>
										<div class="col-md-3 form-group" style="display:none;">
											<label>WDS Peer MAC #4</label>
											<INPUT   class="form-control" TYPE="TEXT" ID="WLANWDS_PEER_MAC4" NAME="WLANWDS_PEER_MAC4"  MAXLENGTH="20" VALUE="<%if tcWebApi_get("WLan_WDS","Wds_MAC3","h") <> "N/A" then tcWebApi_get("WLan_WDS","Wds_MAC3","s") end if %>" >
										</div>
                                         <%end if %>

                                   
                                           <div class="col-md-12" >
                                        <% if tcWebApi_get("WLan_Common","rt_device","h") = "7615" then %>
                                      
                                         <div class="col-md-3 form-group">
											<label>TxStream</label>
                                            <SELECT NAME="TxStream_Action" SIZE="1"  class="custom-select">
								<OPTION value="1" <% if tcWebApi_get("WLan_Common","HT_TxStream","h") = "1" then asp_Write("selected") end if %>>1
								<OPTION value="2" <% if tcWebApi_get("WLan_Common","HT_TxStream","h") = "2" then asp_Write("selected") end if %>>2
								<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>		
								<OPTION value="3" <% if tcWebApi_get("WLan_Common","HT_TxStream","h") = "3" then asp_Write("selected") end if %>>3
								<OPTION value="4" <% if tcWebApi_get("WLan_Common","HT_TxStream","h") = "4" then asp_Write("selected") end if %>>4	
								<% end if %>
							</SELECT>
										</div>
                                        <div class="col-md-3 form-group">
											<label>RxStream</label>
                                            <SELECT NAME="RxStream_Action" SIZE="1"  class="custom-select">
								<OPTION value="1" <% if tcWebApi_get("WLan_Common","HT_RxStream","h") = "1" then asp_Write("selected") end if %>>1
								<OPTION value="2" <% if tcWebApi_get("WLan_Common","HT_RxStream","h") = "2" then asp_Write("selected") end if %>>2
								<% if tcWebApi_get("Info_WLan","isTxRxStreamSupported","h") <> "Yes" then %>		
								<OPTION value="3" <% if tcWebApi_get("WLan_Common","HT_RxStream","h") = "3" then asp_Write("selected") end if %>>3
								<OPTION value="4" <% if tcWebApi_get("WLan_Common","HT_RxStream","h") = "4" then asp_Write("selected") end if %>>4	
								<% end if %>
							</SELECT>
										</div>
                                        
                                         <% end if %>

                                       <% if tcWebApi_get("Info_WLan","isWHNATSupported","h") = "Yes" then %>
                                           <div class="col-md-3 form-group">
											<label>WHNAT</label>
                                         <select id="WLANTxOffload" name="WLANTxOffload" size="1" class="custom-select">
				<option value="0" <% if tcWebApi_get("WLan_Common","WHNAT","h") = "0" then asp_Write("selected") end if %> >Disable</option>
				<option value="1" <% if tcWebApi_get("WLan_Common","WHNAT","h") = "1" then asp_Write("selected") end if %><% if tcWebApi_get("WLan_Common","WHNAT","h") = "N/A" then asp_Write("selected") end if %> >Enable</option>
				</select>
										</div>
                                         <% end if %>
 </div>
 <% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>
 <div class="col-md-3 form-group">
	<label>TWT <%tcWebApi_get("String_Entry","EnableTest","s")%>:</label>
	<select id="TWTSupport" name="TWTSupport" class="custom-select">
		<option value=0 <% if tcWebApi_get("Wlan_Common", "TWTSupport", "h") = "0" then asp_Write("selected") end if %> >Disable</option>
		<option value=1 <% if tcWebApi_get("Wlan_Common", "TWTSupport", "h") = "1" then asp_Write("selected") end if %> >Enable</option>
		<option value=2 <% if tcWebApi_get("Wlan_Common", "TWTSupport", "h") = "2" then asp_Write("selected") end if %> >Mandatory</option>
	</select>
 </div>
<% end if %>
<% if tcWebApi_get("WebCustom_Entry", "is11AXEnhanceModeSupported", "h") = "Yes" then %>
			<TABLE cellSpacing=0 cellPadding=0 border=0 >
				<TBODY>
					<TR>
						<TD width="130">BSS Color:</TD>
						<TD>
							<INPUT style="WIDTH: 123px" size="3" name="BSSColorNum_flag" id="BSSColorNum_flag" value=<% tcWebApi_get("Wlan_Common", "BSSColorNum", "s") %>>
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD width="130"><%tcWebApi_get("String_Entry","TimeOfDurationTest","s")%></TD>
						<TD>
							<INPUT style="WIDTH: 123px" size="8" name="RTS_flag" id="RTS_flag" value=<% tcWebApi_get("Wlan_Common", "RTS", "s") %>>32us
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD width="130"><%tcWebApi_get("String_Entry","BSSIDMaxIndexTest","s")%></TD>
						<TD>
							<select id="CBSSIDMaxIndex_flag" name="CBSSIDMaxIndex_flag">
								<option value=1 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "1" then asp_Write("selected") end if %> >1</option>
								<option value=2 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "2" then asp_Write("selected") end if %> >2</option>
								<option value=3 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "3" then asp_Write("selected") end if %> >3</option>
								<option value=4 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "4" then asp_Write("selected") end if %> >4</option>
								<option value=5 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "5" then asp_Write("selected") end if %> >5</option>
								<option value=6 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "6" then asp_Write("selected") end if %> >6</option>
								<option value=7 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "7" then asp_Write("selected") end if %> >7</option>
								<option value=8 <% if tcWebApi_get("Wlan_Common", "CBSSIDMaxIndex", "h") = "8" then asp_Write("selected") end if %> >8</option>
							</select>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
      <TABLE cellSpacing=0 cellPadding=0 border=0 >
				<TBODY>
					<TR>
						<TD width="130"><%tcWebApi_get("String_Entry","PersonalTWTEnableTest","s")%></TD>
						<TD>
							<INPUT type="RADIO" name="IndividualTWTSupport_flag" id="IndividualTWTSupportDisable" value=0 <% if tcWebApi_get("Wlan_Common", "IndividualTWTSupport", "h") <> "1" then asp_Write("checked") end if %> <% if tcWebApi_get("Wlan_Common", "IndividualTWTSupport", "h") <> "2" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","CloseText","s")%> </font>
							<INPUT type="RADIO" name="IndividualTWTSupport_flag" id="IndividualTWTSupportEnable" value=1 <% if tcWebApi_get("Wlan_Common", "IndividualTWTSupport", "h") = "1" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","EnableTest","s")%> </font>
							<INPUT type="RADIO" name="IndividualTWTSupport_flag" id="IndividualTWTSupportMandatory" value=2 <% if tcWebApi_get("Wlan_Common", "IndividualTWTSupport", "h") = "2" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","ForceTest","s")%> </font>
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD width="130">HE LDPC:</TD>
						<TD>
							<INPUT type="RADIO" name="HELDPC_flag" id="HELDPCDisable" value=0 <% if tcWebApi_get("Wlan_Common", "HELDPCE", "h") <> "1" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","CloseText","s")%> </font>
							<INPUT type="RADIO" name="HELDPC_flag" id="HELDPCEnable" value=1 <% if tcWebApi_get("Wlan_Common", "HELDPCE", "h") = "1" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","EnableTest","s")%> </font>
						</TD>
					</TR>
				</TBODY>
				<TBODY>
					<TR>
						<TD width="130">Spatial Reuse:</TD>
						<TD>
							<INPUT type="RADIO" name="SpatialReuse_flag" id="SpatialReuseDisable" value=0 <% if tcWebApi_get("Wlan_Common", "SpatialReuse", "h") <> "1" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","CloseText","s")%> </font>
							<INPUT type="RADIO" name="SpatialReuse_flag" id="SpatialReuseEnable" value=1 <% if tcWebApi_get("Wlan_Common", "SpatialReuse", "h") = "1" then asp_Write("checked") end if %>>
							<font color="#000000"><%tcWebApi_get("String_Entry","EnableTest","s")%> </font>
						</TD>
					</TR>
				</TBODY>
			</TABLE>	
<% end if %>
<% if tcWebApi_get("WebCustom_Entry","is11AXModeSupported","h") = "Yes" then %>
							<input type="hidden" id="WlanMuOfdmaDlEnable_flag" name="WlanMuOfdmaDlEnable_flag" value="<% if tcWebApi_get("Wlan_Common","MuOfdmaDlEnable","h") <> "N/A" then tcWebApi_get("Wlan_Common","MuOfdmaDlEnable","s") end if %>">
							<input type="hidden" id="WlanMuOfdmaUlEnable_flag" name="WlanMuOfdmaUlEnable_flag" value="<% if tcWebApi_get("Wlan_Common","MuOfdmaUlEnable","h") <> "N/A" then tcWebApi_get("Wlan_Common","MuOfdmaUlEnable","s") end if %>">
							<input type="hidden" id="WlanMuMimoDlEnable_flag" name="WlanMuMimoDlEnable_flag" value="<% if tcWebApi_get("Wlan_Common","MuMimoDlEnable","h") <> "N/A" then tcWebApi_get("Wlan_Common","MuMimoDlEnable","s") end if %>">
							<input type="hidden" id="WlanMuMimoUlEnable_flag" name="WlanMuMimoUlEnable_flag" value="<% if tcWebApi_get("Wlan_Common","MuMimoUlEnable","h") <> "N/A" then tcWebApi_get("Wlan_Common","MuMimoUlEnable","s") end if %>">
							<input type="hidden" id="WlanSREnable_flag" name="WlanSREnable_flag" value="<% if tcWebApi_get("Wlan_Common","SREnable","h") <> "N/A" then tcWebApi_get("Wlan_Common","SREnable","s") end if %>">
							<div class="col-md-12">
							
									<div class="col-md-3 form-group align-self-center">
										<label></label>
										<div class="custom-control custom-checkbox">
										<INPUT type="checkbox" class="custom-control-input" id="wlanMuOfdmaDlEnable"<% if tcWebApi_get("Wlan_Common","MuOfdmaDlEnable","h") = "1" then asp_Write("checked") end if %>  name="wlanMuOfdmaDlEnable">
											<label class="custom-control-label" for="wlanMuOfdmaDlEnable">MU-OFDMA<%tcWebApi_get("String_Entry","EnableTest","s")%>:</label>
									</div>
								</div>
								<div class="col-md-3 form-group align-self-center">
									<label></label>
									<div class="custom-control custom-checkbox">
										<INPUT type="checkbox" class="custom-control-input" id="wlanMuMimoDlEnable"<% if tcWebApi_get("Wlan_Common","MuMimoDlEnable","h") = "1" then asp_Write("checked") end if %>  name="wlanMuMimoDlEnable">
										<label class="custom-control-label" for="wlanMuMimoDlEnable">MU-MIMO<%tcWebApi_get("String_Entry","EnableTest","s")%>:</label>
								</div>
							</div>
							<div class="col-md-3 form-group align-self-center">
								<label></label>
								<div class="custom-control custom-checkbox">
									<INPUT type="checkbox" class="custom-control-input" id="wlanSREnable"<% if tcWebApi_get("Wlan_Common","SREnable","h") = "1" then asp_Write("checked") end if %>  name="wlanSREnable">
									<label class="custom-control-label" for="wlanSREnable">SR<%tcWebApi_get("String_Entry","EnableTest","s")%>:</label>
							</div>
						</div>
								</div>
							
							
<% end if %>
                  
<% if tcWebApi_get("Mesh_dat", "MapEnable", "h") = "1" then %>
                  <DIV id="wlMeshTip">
                  	<p><strong><%tcWebApi_get("String_Entry","HintOpenEasyMeshText1","s")%></strong></p>
                  </DIV>
<% end if %>
										<div class="col-md-12 form-group" id="wlUserTip">
											<h2 class="sub_heading">Note:</h2>
											<p class="normal_text"><%tcWebApi_get("String_Entry","RandomAccessText","s")%></p>
											<p class="normal_text"><%tcWebApi_get("String_Entry","NotUseText","s")%></p>
										</div>
										
							      </div>
										<hr class="margin_adjs" />

                                        <div class="form-footer">
                                         <input type="hidden" name="Save_Flag" value="0">
										<button class="btn orange_btn" type="button" id="btnOK" onclick="SubmitForm()">Apply</button>	
										<button class="btn grey_btn" type="button"  id="btnCancel" onclick="RefreshPage()">Cancel</button>
										</div>
								</div>
                                </form>
							</div>
						</div>
                       
                        </div>
                    </div>
                </div>
            </div>
        </div>

 <script language="JavaScript">
var enableOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aSSIDEnable","s")%>";
var beaconTypeOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aWLanBeaconType","s")%>";
var ssidOpenFlag = "<%tcWebApi_get("dynCwmpAttr_Entry","aWLanSSID","s")%>";
if(enableOpenFlag == "0")
	getElById('enableSsid').disabled = true;
if(beaconTypeOpenFlag == "0")
	getElById('wlSecurMode').disabled = true;
if(ssidOpenFlag == "0")
	getElById('wlSsid').disabled = true;
</script>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!--    <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mCustomScrollbar.concat.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mousewheel.min.js"></script>

   
</body>
</html>

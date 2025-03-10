

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>VoIP Setup</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
	 <style>
	 .margin_adjs {
    margin-right: -16px;
    margin-left: -15px;
}

.custom-checkbox-col{
		max-width: fit-content;
	}
	.flex {
			display: flex;
		}
		.gap-10 {
			gap: 10px;
		}
		.w-360 {
			width: 215px;
		}
		.w-400 {
			width: 320px;
		}
input[type="checkbox"] {
	  appearance: none;
	  -webkit-appearance: none;
	  width: 16px;
	  height: 15px;
	  border: 1px solid darkgray;
	  border-radius: 1px; 
	  cursor: pointer;
	  position: relative;
	  background-color: white;
	}	

input[type="checkbox"]:checked {
  background-color: orange;
  border-color: orange;
}	
input[type="checkbox"]:checked::after {
  content: "";
  position: absolute;
  top: -1px;
  left: 4px;
  width: 5px;
  height: 12px;
  border: solid white;
  border-width: 0 2px 2px 0;
  transform: rotate(45deg);
}
.img_sub {
    vertical-align: sub !important;
}
.white_box {
    background: #fff;
    border-radius: 4px;
    box-shadow: 0px 0px 6px rgba(0, 0, 0, 0.1);
    padding: 15px;
    margin-bottom: 20px;

}
</style>
	 </head>
<SCRIPT language=javascript src="/Dashboard/JS/menu.js"></SCRIPT>
<SCRIPT language=javascript src="/Dashboard/JS/jquery.js"></SCRIPT>
<SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>

<SCRIPT language=javascript>
	var voipinfo = 'Related infomation cannot be saved, because VoIP is on, and please save again after the call!';

var voiptype=document.location.search.toString();
var lineNumber = parseInt(1);

var sm = "1";
function LoadFrame() {

	generatePerLineTable();
	
	with ( document.ConfigForm )
	{
		
			if(voiptype != "")
			{
				selectOption();
			}
		
		enableEditBoxes();
		
	}

	document.getElementById("regStatus0").value = showRegisterState(1);
	
	document.getElementById("regStatus1").value = showRegisterState(2);
	
	document.getElementById("regStatus2").value = showRegisterState(3);
	
	document.getElementById("regStatus3").value = showRegisterState(4);
	
}
function showRegisterState(port)
{
	var Status = '';
	var LineEnable='';
	var RegFailReason = '';

	if ( 1 == port ){
		Status = "Initializing";
		LineEnable = 'Yes';
		RegFailReason = "0";
	}else if ( 2 == port ){
		
		Status = "";
		LineEnable = 'No';
		RegFailReason = "";
	}

	else if ( 3 == port ){
		Status = "";
		LineEnable = 'No';
		RegFailReason = "";
	}

	else if ( 4 == port ){
		Status = "";
		LineEnable = 'No';
		RegFailReason = "";
	}
	else
		return;
	if(LineEnable == 'No'){
			return 'Disable';
	};
	if ( Status == 'Up' )
			return 'Registered';
	else if ( Status == 'Initializing' )
			return 'Initializing';
	else if ( Status == 'Registering' )
			return 'Registering';
	else if ( Status == 'Unregistering' )
			return 'Unregistering';
	else if ( Status == 'Quiescent' )
			return 'Quiescent';
	else if ( Status == 'Disabled' )
			return 'Disable';
	else if ( Status == 'Error' ){
		switch ( parseInt(RegFailReason) ){
			case 2:
			case 3:
				voiptatus = 'Unreached Network(SBC)';
				break;
			case 4:
				voiptatus = 'Fail to authenticate';
				break;
			case 6:
				voiptatus = 'traffic channel error';
				break;
			default:
				voiptatus = 'Fault';
				break;
		}
		return voiptatus;
		}
	else if ( Status == 'Testing' )
			return 'Testing';
	else
			return '--';
}

function generatePerLineTable()
{
	// Generate the table
	if (document.body.innerHTML) {
		var tableHtmlOutput = "<table id='perLineTable1' class=\"table table-bordered \"><tbody id='perLineTbody1'>";
		var lineNumber = parseInt(1);
		// Enable row
		tableHtmlOutput += "<tr>";
		tableHtmlOutput += "<td class='hd'>Port Enable Setting <\/td>"
		var selectOptions0 = Array();
		var selectOptions1 = Array();
		var selectOptions2 = Array();
		var selectOptions3 = Array();
		//var pFlag = "off";
		selectOptions0[0] = "<option value=\'No\' >" + "Disable";
		//pFlag = "on";
		selectOptions0[1] = "<option value=\'Yes\' selected>" + "Enable";
		var data = "<select class=\"custom-select\" name='lineEnabled0' >" + selectOptions0.join("") + "<\/select>";
		tableHtmlOutput += "<td>" + data + "</td>";

		if (lineNumber > 1){
			//var pFlag = "off";
			selectOptions1[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions1[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select class=\"custom-select\" name='lineEnabled1' >" + selectOptions1.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center >" + data + "</td>";
		}
		else {
			//var pFlag = "off";
			selectOptions1[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions1[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select class=\"custom-select\" name='lineEnabled1' >" + selectOptions1.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}
		
		if (lineNumber > 2){
			//var pFlag = "off";
			selectOptions2[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions2[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select  class=\"custom-select\" name='lineEnabled2' >" + selectOptions2.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			//var pFlag = "off";
			selectOptions2[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions2[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select class=\"custom-select\" name='lineEnabled2' >" + selectOptions2.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		
		if (lineNumber > 3){
			//var pFlag = "off";
			selectOptions3[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions3[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select class=\"custom-select\" name='lineEnabled3' >" + selectOptions3.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			//var pFlag = "off";
			selectOptions3[0] = "<option value=\'No\' selected>" + "Disable";
			//pFlag = "on";
			selectOptions3[1] = "<option value=\'Yes\' >" + "Enable";
			var data = "<select class=\"custom-select\" name='lineEnabled3' >" + selectOptions3.join("") + "<\/select>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		tableHtmlOutput += "</tr>";
		
		
		tableHtmlOutput += "<tr>";
		tableHtmlOutput += "<td class='hd'>Registration Status<\/td>"
		var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus0\' id=\'regStatus0\' value=\'Initializing\'>";
		tableHtmlOutput += "<td align=center>" + data + "</td>";
		
		if (lineNumber > 1){
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus1\' id=\'regStatus1\' value=\'\'>";
			tableHtmlOutput += "<td align=center >" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus1\' id=\'regStatus1\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";	
		}
		
		if (lineNumber > 2){
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus2\' id=\'regStatus2\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus2\' id=\'regStatus2\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";	
		}
		
		if (lineNumber > 3){
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus3\' id=\'regStatus3\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 disabled=true name=\'regStatus3\' id=\'regStatus3\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";	
		}
		tableHtmlOutput += "</tr>";
		
		//telephone number
		tableHtmlOutput += "<tr ID=\"edit_telnumber\">";
		tableHtmlOutput += "<td class='hd'>Telephone Number<\/td>"
		
		var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension0\' value=\'1003\'>";
		tableHtmlOutput += "<td align=center>" + data + "</td>";
		
		if (lineNumber > 1 ){
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension1\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension1\' value=\'\'>";
			tableHtmlOutput += "<td align=center 	style=display:none >" + data + "</td>";
		}
		
		if (lineNumber > 2 ){
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension2\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension2\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}

		if (lineNumber > 3 ){
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension3\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=40 name=\'extension3\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}
		tableHtmlOutput += "</tr>";
		
		//display name
		tableHtmlOutput += "<tr ID=\"edit_displayname\">";
		tableHtmlOutput += "<td class='hd'>Show Number<\/td>"
		var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName0\' value=\'\'>";
		tableHtmlOutput += "<td align=center>" + data + "</td>";
		
		if (lineNumber >1 ){
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName1\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName1\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}
		
		if (lineNumber >2 ){
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName2\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName2\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		
		if (lineNumber >2 ){
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName3\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		} 
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'dispName3\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		tableHtmlOutput += "</tr>";
		
		//auth name
		tableHtmlOutput += "<tr>";
		tableHtmlOutput += "<td class='hd'>Account<\/td>"
		
		var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'authName0\' value=\'1003\'>";
		tableHtmlOutput += "<td align=center>" + data + "</td>";
		
		if (lineNumber > 1){
			var data = "<input type='text' class=\"form-control\"  maxlength=128 name=\'authName1\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'authName1\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}
		 
		if (lineNumber > 2){
			var data = "<input type='text' class=\"form-control\"maxlength=128 name=\'authName2\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		} 
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'authName2\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		
		if (lineNumber > 3){
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'authName3\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='text' class=\"form-control\" maxlength=128 name=\'authName3\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		tableHtmlOutput += "</tr>";
		
		// Password row
		tableHtmlOutput += "<tr>";
		tableHtmlOutput += "<td class='hd'>Password<\/td>"
		
		var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password0\' value=\'1003@\'>";
		tableHtmlOutput += "<td align=center>" + data + "</td>";
		
		if (lineNumber > 1){
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password1\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}else{
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password1\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}
		
		if (lineNumber > 2){
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password2\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password2\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none >" + data + "</td>";
		}

		if (lineNumber > 3){
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password3\' value=\'\'>";
			tableHtmlOutput += "<td align=center>" + data + "</td>";
		}
		else{
			var data = "<input type='Password' class=\"form-control\" maxlength=128 name=\'password3\' value=\'\'>";
			tableHtmlOutput += "<td align=center style=display:none>" + data + "</td>";
		}
		tableHtmlOutput += "</tr>";
		
		//End of table
		tableHtmlOutput += "</tbody></table>";
		
		document.getElementById("perLineTablePlaceholder1").innerHTML = tableHtmlOutput;
		//document.getElementById("perLineTable1").style.width = 100 + "px";
		}else {
			alert("Cannot create per line table in this browser.");
		}
}

function enableEditBoxes()
{
	if ( sm == "1" )
	{
		document.getElementById('edit_dareSipDomain').style.display = "none";
		document.getElementById('edit_telnumber').style.display = "none";
		document.getElementById('edit_displayname').style.display = "none";
	}
	else
	{
		document.getElementById('edit_dareSipDomain').style.display = "";
		document.getElementById('edit_telnumber').style.display = "";
		document.getElementById('edit_displayname').style.display = "";
	}
}	
function applyClickAdvanced()
{
	var loc = "app-VoIP_Adv.asp";
	var code = "location='" + loc + " '";
	eval(code);
}

function proClick(obj) {
	var idx = obj.selectedIndex;
	var val = obj.options[idx].value;
	if ( val == "SIP" )
	{
		sm = '1';
	}

	else if ( val == "H.248" )
	{
		location.replace("/cgi-bin/app-VoIP248.asp?isLocation=1");
	}

	else
	{
		sm = '0';
	}
	
	enableEditBoxes();
}

function curIndexUpdate()
{
	var pvc_counts = 3;
	var vArrayStr = "1_INTERNET_R_VID_,3_VOICE_R_VID_,4_INTERNET_R_VID_,";
	var indexArrayStr = "0,1,2,";
	var Wan_WanName = vArrayStr.split(',');
	var Voip_WanIndex = indexArrayStr.split(',');

	for (var i = 0;i < pvc_counts;i++)
	{
		if(Wan_WanName[i]==document.ConfigForm.ifName.value)
		{
			document.ConfigForm.curSetIndex.value = Voip_WanIndex[i];
		}
	}
}

function printInterfaceListBox()
{
	var pvc_counts = 3;
	var vArrayStr = "1_INTERNET_R_VID_,3_VOICE_R_VID_,4_INTERNET_R_VID_,";
	var Voip_WanName = "2_VOICE_R_VID_";
	var Wan_WanName = vArrayStr.split(',');

	for (var i = 0;i < pvc_counts;i++)
	{
		if (Wan_WanName[i].indexOf('_VOICE_') > -1 && Wan_WanName[i].indexOf('_R_') > -1)
		{
			if(Wan_WanName[i]==Voip_WanName)
			{
				document.writeln("<option value=\"" + Wan_WanName[i] + "\" selected>"+Wan_WanName[i]+"");
			}
			else
				document.writeln("<option value=\"" + Wan_WanName[i] + "\">"+Wan_WanName[i]+"");
		}
	}

	curIndexUpdate();
}

function printLocaleListBox()
{
	//var locList = ',,,,,,,,,,,,,,,,,,,,,,,,';
	document.writeln("<option value=\"AUS-AUSTRAILIA\" > AUS-AUSTRAILIA" );
	document.writeln("<option value=\"BEL-BELIGIUM\" > BEL-BELIGIUM" );
	document.writeln("<option value=\"BRA-BRAZIL\" > BRA-BRAZIL" );
	document.writeln("<option value=\"CHL-CHILE\" > CHL-CHILE" );
	document.writeln("<option value=\"CHN-CHINA\" > CHN-CHINA" );
	document.writeln("<option value=\"CZH-CZECH\" > CZH-CZECH" );
	document.writeln("<option value=\"DNK-DENMARK\" > DNK-DENMARK" );
	document.writeln("<option value=\"ETS-ETSI\" > ETS-ETSI" );
	document.writeln("<option value=\"FIN-FINLAND\" > FIN-FINLAND" );
	document.writeln("<option value=\"FRA-FRANCE\" > FRA-FRANCE" );
	document.writeln("<option value=\"DEU-GERMANY\" > DEU-GERMANY" );
	document.writeln("<option value=\"HUN-HUNGARY\" > HUN-HUNGARY" );
	document.writeln("<option value=\"IND-INDIA\" selected> IND-INDIA" );
	document.writeln("<option value=\"ITA-ITALY\" > ITA-ITALY" );
	document.writeln("<option value=\"JPN-JAPAN\" > JPN-JAPAN" );
	document.writeln("<option value=\"RUS-RUSSIA\" > RUS-RUSSIA" );
	document.writeln("<option value=\"NLD-NETHERLANDS\" > NLD-NETHERLANDS" );
	document.writeln("<option value=\"NZL-NEWZEALAND\" > NZL-NEWZEALAND" );
	document.writeln("<option value=\"USA-NORTHAMERICA\" > USA-NORTHAMERICA" );
	document.writeln("<option value=\"ESP-SPAIN\" > ESP-SPAIN" );
	document.writeln("<option value=\"SWE-SWEDEN\" > SWE-SWEDEN" );
	document.writeln("<option value=\"NOR-NORWAY\" > NOR-NORWAY" );
	document.writeln("<option value=\"CHE-SWITZERLAND\" > CHE-SWITZERLAND" );
	document.writeln("<option value=\"T57-TR57\" > T57-TR57" );
	document.writeln("<option value=\"GBR-UK\" > GBR-UK" );
	document.writeln("<option value=\"TWN-TAIWAN\" > TWN-TAIWAN" );
    document.writeln("<option value=\"ARG-ARGENTINA\" > ARG-ARGENTINA" );

	
}


function isInteger(value)
{
	if (/^(\|)?\d+$/.test(value))
	{
		return true;
	}
	else
	{
		return false;
	}
}

function isValidPort(port)
{
	if (!isInteger(port) || port < 0 || port > 65535)
	{
		return false;
	}
	
	return true;
}

function checkPort(o)
{
	if (o.value != "")
	{
		if (!isInteger(o.value) || !isValidPort(o.value))
		{
			alert('"' + o.value + '"' + 'port is invalid.');
			window.setTimeout( function(){ o.focus(); }, 0);
			return false;
		}
		else
		{
			return true;
		}
	}
}

function isValidName(name) 
{
	var i = 0;
	var unsafeString = "\"<>%\\^[]`\+\$\,='#&:;*/{} \t";
	for ( i = 0; i < name.length; i++ )
	{
		for( j = 0; j < unsafeString.length; j++)
			if ( (name.charAt(i)) == unsafeString.charAt(j) )
			return false;
	}
	for (k = 0; k < name.length; k++)
	{
		if (name.charAt(k) == '.')
		{
			break;
		}
	}
	if (k >= name.length - 1 || k == 0)
		return false;
}

function isValidIPV6(str)
{
	var pattern = new RegExp("^((([0-9A-Fa-f]{1,4}:){7}[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){1,7}:)|(([0-9A-Fa-f]{1,4}:){6}:[0-9A-Fa-f]{1,4})|(([0-9A-Fa-f]{1,4}:){5}(:[0-9A-Fa-f]{1,4}){1,2})|(([0-9A-Fa-f]{1,4}:){4}(:[0-9A-Fa-f]{1,4}){1,3})|(([0-9A-Fa-f]{1,4}:){3}(:[0-9A-Fa-f]{1,4}){1,4})|(([0-9A-Fa-f]{1,4}:){2}(:[0-9A-Fa-f]{1,4}){1,5})|([0-9A-Fa-f]{1,4}:(:[0-9A-Fa-f]{1,4}){1,6})|(:(:[0-9A-Fa-f]{1,4}){1,7})|(([0-9A-Fa-f]{1,4}:){6}(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|(([0-9A-Fa-f]{1,4}:){5}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|(([0-9A-Fa-f]{1,4}:){4}(:[0-9A-Fa-f]{1,4}){0,1}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|(([0-9A-Fa-f]{1,4}:){3}(:[0-9A-Fa-f]{1,4}){0,2}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|(([0-9A-Fa-f]{1,4}:){2}(:[0-9A-Fa-f]{1,4}){0,3}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|([0-9A-Fa-f]{1,4}:(:[0-9A-Fa-f]{1,4}){0,4}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3})|(:(:[0-9A-Fa-f]{1,4}){0,5}:(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])(\\.(\\d|[1-9]\\d|1\\d{2}|2[0-4]\\d|25[0-5])){3}))$");
	return pattern.test(str);
}

function btnApplySip() 
{
	with ( document.ConfigForm )
	{
		if(regAddr.value != "")
		{
			if(regAddr.value.match(":"))
			{
				var result = isValidIPV6(regAddr.value);
				if(result != true){
				    alert('"Register Server' + regAddr.value + '"Invalid IP address or domain name');
				    return;
			    }
			}else if (isValidName(regAddr.value) == false)
			{
				alert('"Register Server' + regAddr.value + '"Invalid IP address or domain name');
				return;
			}
		}		
		else
		{
			alert('Register server address cannot be empty.');
			return;
		}
	
		if (regAddr2.value != "")
		{	
			if(regAddr2.value.match(":"))
			{
				var result = isValidIPV6(regAddr2.value);
				if(result != true){
				    alert('"Secondary Register Server' + regAddr2.value + '"Invalid IP address or domain name');
				    return;
			    }
			}else if (isValidName(regAddr2.value) == false)
			{
				alert('"Secondary Register Server' + regAddr2.value + '"Invalid IP address or domain name');
				return;
			}
		}		
		
		
		if (proxyAddr.value != "")
		{
			if(proxyAddr.value.match(":"))
			{
				var result = isValidIPV6(proxyAddr.value);
				if(result != true){
				    alert('"Proxy Server' + proxyAddr.value + '"Invalid IP address or domain name');
				    return;
			    }
			}else if (isValidName(proxyAddr.value) == false)
			{
				alert('"Proxy Server' + proxyAddr.value + '"Invalid IP address or domain name');
				return;
			}
		}
		else
		{
			alert('Proxy server address cannot be empty.');
			return;
		}
		
		if (proxyAddr2.value != "")
		{
			if(proxyAddr2.value.match(":"))
			{
				var result = isValidIPV6(proxyAddr2.value);
				if(result != true){
				    alert('"Secondary Proxy Server' + proxyAddr2.value + '"Invalid IP address or domain name');
				    return;
			    }
			}else if (isValidName(proxyAddr2.value) == false)
			{
				alert('"Secondary Proxy Server' + proxyAddr2.value + '"Invalid IP address or domain name');
				return;
			}
		}

		
		if (obProxyAddr.value != "")
		{
			if(obProxyAddr.value.match(":"))
			{
				var result = isValidIPV6(obProxyAddr.value);
				if(result != true){
				    alert('"Outbound Proxy Server' + obProxyAddr.value + '"Invalid IP address or domain name');
				    return;
			    }
			}else if (isValidName(obProxyAddr.value) == false)
			{
				alert('"Outbound Proxy Server' + obProxyAddr.value + '"Invalid IP address or domain name');
				return;
			}
		}		
		else
		{
			alert('Outbound proxy server address cannot be empty.');
			return;
		}


		if (obProxyAddr2.value != "")
		{
			if(obProxyAddr2.value.match(":"))
			{
				var result = isValidIPV6(obProxyAddr2.value);
				if(result != true){
				    alert('"Secondary Outbound Proxy Server' + obProxyAddr2.value + '"Invalid IP address or domain name');
				    return;
				}
			}else if (isValidName(obProxyAddr2.value) == false)
			{
				alert('"Secondary Outbound Proxy Server' + obProxyAddr2.value + '"Invalid IP address or domain name');
				return;
			}
		}		
		

		if (regPort.value == "")
		{
			alert('Register server port number cannot be empty.');
			return;
		}
		else
		{
			if(checkPort(document.getElementById("regPort"))==false)			
				return;
		}

	

		if (regPort2.value != "")
		{
			if(checkPort(document.getElementById("regPort2"))==false)			
			return;
		}

	

		if (proxyPort.value == "")
		{
			alert('Proxy server port number cannot be empty.');
			return;
		}
		else
		{
			if(checkPort(document.getElementById("proxyPort"))==false)				
			return;
		}

	

		if (proxyPort2.value != "")
		{
			if(checkPort(document.getElementById("proxyPort2"))==false)				
			return;
		}


		if (obProxyPort.value == "")
		{
			alert('Outbound proxy server port number cannot be empty.');
			return;
		}
		else
		{
			if(checkPort(document.getElementById("obProxyPort"))==false)			
			return;
		}

		if (obProxyPort2.value != "")
		{
			if(checkPort(document.getElementById("obProxyPort2"))==false)				
			return;
		}

	
		
		VoIP_basic_flag.value = 1;
		parent.voipType = "SIP";
		if (DnsSrvEnable.checked)
		{
		    DnsSrvEnableFlag.value = "1";
		}
		else
		{
		    DnsSrvEnableFlag.value = "0";
		}
		if( true == setEBooValueCookie(document.ConfigForm) )
			submit();
	}
}

	function selectOption()
	{
		with (document.ConfigForm)
		{
			for(i = 0;i<3;i++)
			{
				if(sipMode.options[i].value == voiptype.slice(10))
				{
					sipMode.options[i].selected = true;
				}
			}
	
			if ( voiptype.slice(10) == "SIP" )
			{
				sm = '1';
			}
			else if(voiptype.slice(10) == "IMSSIP")
			{
				sm = '0';
			}
		}
	}

</SCRIPT>

</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
												value="APP->VoIP Setup" name=Selected_Menu>
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
							        MakeLeftMenu("Voice",'VoIP Setup')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"Voice",'VoIP Setup','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                            <div class="scoop-inner-content">	
															 
								
								<div class="white_box" >
									<div class="row justify-content-between">
										<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png"  width="45" height="47" class="img_sub" alt=""/> Voice Setup</h1>
									</div>
									
                                    <FORM id="ConfigForm" name="ConfigForm" action="/cgi-bin/app-VoIP.asp" method="post">
                                        <input type="hidden" id="DnsSrvEnableFlag" name="DnsSrvEnableFlag" value="1">
									<div class="container-fluid" >
										<hr class="margin_adjs" />
									<div class="">
										<div class="col-md-12 form-group">
											<h2 class="sub_heading">Basic Voice </h2>
											<label>Please input VoIP parameter, and then click on Apply to save VoIP service. </label>
										</div>
										<div class="col-md-12 form-group flex gap-10">
										
											<label class="w-360">Protocol:</label>
                                          <select name="sipMode" id="mg_regist" onChange="proClick(this)" class="custom-select w-400" >
																		<option value="IMSSIP" >IMSSIP</option>
																		<option value="SIP" selected>SIP</option>
																		
																			<option value="H.248" >H.248</option>
																		
																	</select>
																
                                                                    
													
                                                                     <p class="light_grey_text" >If switch voice protocol,please reboot.</p>
													    </div>
													    
																	

                                                                   
										
										<div class="col-md-12  form-group flex gap-10" >
										
											<label class="w-360" >Binding Interface Name:</label>
                                          <input  class="custom-select" type="hidden" id="curSetIndex" name="curSetIndex" value="1">
																					<select id="ifName" name="ifName" class="custom-select w-400" onChange="curIndexUpdate()"  >
																						<script TYPE="text/javascript">
																						    printInterfaceListBox()
																						</script>
																					</select>
											<p class="light_grey_text" >&nbsp;(Note: please reboot VoIP service to take effect.)</p>
										</div>
										<div class="col-md-12 form-group flex gap-10"">
											<label class="w-360" >Select Region:</label>
                                          <select id="localeName" name="localeName" size="1"  class="custom-select w-400">
																					<script TYPE="text/javascript">
																					    printLocaleListBox()
																					</script>
																				</select>
											<p  class="light_grey_text">(Note: please reboot VoIP service to take effect.)</p>
										</div>
										<div class="form-group">
										    <div class="custom-control flex gap-10">
										     <label class="w-360" ;"for="DnsSrvEnable">DNS SRV</label>
										
                                                <INPUT class="w-400" id="DnsSrvEnable" type="checkbox" maxLength="32" name="DnsSrvEnable"checked>
                                                 
                                                <br />
										    </div>
										</div>
										
										<div class="col-md-12 form-group flex gap-10" ID="edit_dareSipDomain">
											<label class="w-360" >SIP Domain:</label>
                                          <input type="text" class="custom-select w-400" id="dareSipDomain" name="dareSipDomain" VALUE="">
										</div>
										</div>
                                        <div class="">
										<div class="col-md-12  form-group flex gap-10">
											<label class="w-360">Register Server:</label>
                                          <input  type="text" class="form-control w-400" id="regAddr" name="regAddr" VALUE="192.168.3.1">
										</div>
										<div class="col-md-12  form-group flex gap-10">
											<label class="w-360">Register Server Port:</label>
                                          <input type="text"   class="form-control w-400" id="regPort" name="regPort" onchange="checkPort(this)" VALUE="5060">
										</div>
										<div class="col-md-12  form-group flex gap-10" ID="edit_proxyAddr">
											<label class="w-360">Proxy Server:</label>
                                          <input type="text"  class="form-control w-400" id="proxyAddr" name="proxyAddr" VALUE="192.168.3.1">
										</div>
										<div class="col-md-12  form-group flex gap-10" ID="edit_proxyPort">
											<label class="w-360">Proxy Server Port:</label>
                                          <input  type="text"  class="form-control w-400" id="proxyPort" name="proxyPort" onchange="checkPort(this)" VALUE="5060">
										</div>

                                        

										<div class="col-md-12  form-group flex gap-10" ID="edit_obProxyAddr">
											<label class="w-360" >Outbound Proxy:</label>
                                          <input type="text" class="form-control w-400" id="obProxyAddr" name="obProxyAddr" VALUE="192.168.3.1">
										</div>
										<div class="col-md-12  form-group flex gap-10" ID="edit_obProxyPort">
											<label class="w-360" >Outbound Proxy Port:</label>
                                          <input  type="text" class="form-control w-400" id="obProxyPort" name="obProxyPort" onchange="checkPort(this)" VALUE="5060">
										</div>
									</div>
									<div class="">
										<div class="col-md-12  form-group flex gap-10"  ID="edit_regAddr2">
											<label class="w-360" >Secondary Register Server:</label>
                                          <input  type="text"  class="form-control w-400" id="regAddr2" name="regAddr2" VALUE="192.168.3.1">
								  </div>
										
										<div class="col-md-12  form-group flex gap-10" ID="edit_regPort2">
											<label class="w-360" >Secondary Register Server Port:</label>
                                          <input  type="text" class="form-control w-400" id="regPort2" name="regPort2" onchange="checkPort(this)" VALUE="5060">
										</div>
										<div class="col-md-12  form-group flex gap-10" ID="edit_proxyAddr2">
											<label class="w-360">Secondary Proxy Server:</label>
                                          <input  type="text" class="form-control w-400" id="proxyAddr2" name="proxyAddr2" VALUE="192.168.3.1">
										</div>
										<div class="col-md-12  form-group flex gap-10" ID="edit_proxyPort2">
											<label class="w-360" >Secondary Proxy Server Port:</label>
                                          <input type="text"  class="form-control w-400" id="proxyPort2" name="proxyPort2" onchange="checkPort(this)" VALUE="5060">
										</div>
										<div class="col-md-12 form-group flex gap-10" ID="edit_obProxyAddr2">
											<label  class="w-360" >Secondary Outbound Proxy:</label>
                                          <input   type="text" class="form-control w-400" id="obProxyAddr2" name="obProxyAddr2" VALUE="192.168.3.1">
										</div>
										<div class="col-md-12 form-group flex gap-10" ID="edit_obProxyPort2">
											<label class="w-360">Secondary Outbound Proxy Port:</label>
                                          <input   type="text" class="form-control w-400" id="obProxyPort2" name="obProxyPort2" onchange="checkPort(this)" VALUE="5060">
										</div>
									</div>
									
									<hr class="margin_adjs" />

                                        <div id="perLineTablePlaceholder1" class="col-md-6 table-responsive">
													
													</div>
								<!--		<div class="col-md-12 form-group flex gap-10">
											<label class="w-360">Port Enable Settings</label>
										  <select class="custom-select w-400" ></select>
										</div>
										<div class="col-md-12 form-group">
											<label class="w-360">Registration Status</label>
										  <input  type="text" class="form-control w-400">
										</div>
										<div class="col-md-12 form-group">
											<label class="w-360">Account</label>
										  <input type="text" class="form-control w-400">
										</div>
										<div class="col-md-12 form-group">
											<label class="w-360">Password</label>
										  <input type="text" class="form-control w-400">
											<div class="custom-control custom-checkbox">
											  <input type="checkbox" class="custom-control-input" id="customCheck1">
											  <label class="custom-control-label" for="customCheck1">Show Password</label>
											</div>
										</div>-->

										<hr class="margin_adjs" />
										<div class="form-footer">
										<input type='hidden' id="VoIP_basic_flag" name="VoIP_basic_flag" value="0">
																
                                                                <input type="button" onClick="btnApplySip()" class="btn orange_btn" value='Apply' ID="ApplyButton" name="ApplyButton" style="margin-left:62%" >

										</div>
											
								</div>
								
                                </FORM>
							</div>
						</div>
                    </div>
                </div>
            </div>
		     <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
        </div>
		<!--  </div>-->
 
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

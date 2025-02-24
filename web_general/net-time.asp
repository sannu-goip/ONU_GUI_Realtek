
 

<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>Time</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">

        <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <script language="javascript" src="/Dashboard/JS/util.js"></script>
          <SCRIPT language=JavaScript type=text/javascript>
function stSntp(domain,Enable,ntp1,ntp2,ZoneName)
{
	this.domain = domain;
	this.Enable = Enable;
	this.ntp1 = ntp1;
	this.ntp2 = ntp2;
	this.ZoneName = ZoneName;
}
var SntpEntry = new Array(new stSntp("InternetGatewayDevice.Time","0","time.nplindia.org ","clock.nyc.he.net","Beijing"),null);
var Sntp = SntpEntry[0];
var localtimename = '';
var ntpServers = new Array();
ntpServers[0] = 'time.nplindia.org ';
ntpServers[1] = 'clock.nyc.he.net';
ntpServers[2] = 'clock.sjc.he.net';
ntpServers[3] = 'time.nist.gov';
var timeZones = new Array();
timeZones[0] = '(GMT-12:00) International Date Line West';
timeZones[1] = '(GMT-11:00) Midway Island, Samoa';
timeZones[2] = '(GMT-10:00) Hawaii';
timeZones[3] = '(GMT-09:00) Alaska';
timeZones[4] = '(GMT-08:00) Pacific Time, Tijuana';
timeZones[5] = '(GMT-07:00) Arizona, Mazatlan';
timeZones[6] = '(GMT-07:00) Chihuahua, La Paz';
timeZones[7] = '(GMT-07:00) Mountain Time';
timeZones[8] = '(GMT-06:00) Central America';
timeZones[9] = '(GMT-06:00) Central Time';
timeZones[10] = '(GMT-06:00) Guadalajara, Mexico City, Monterrey';
timeZones[11] = '(GMT-06:00) Saskatchewan';
timeZones[12] = '(GMT-05:00) Bogota, Lima, Quito';
timeZones[13] = '(GMT-05:00) Eastern Time';
timeZones[14] = '(GMT-05:00) Indiana';
timeZones[15] = '(GMT-04:00) Atlantic Time';
timeZones[16] = '(GMT-04:00) Caracas, La Paz';
timeZones[17] = '(GMT-04:00) Santiago';
timeZones[18] = '(GMT-03:30) Newfoundland';
timeZones[19] = '(GMT-03:00) Brasilia';
timeZones[20] = '(GMT-03:00) Buenos Aires, Georgetown';
timeZones[21] = '(GMT-03:00) Greenland';
timeZones[22] = '(GMT-02:00) Mid-Atlantic';
timeZones[23] = '(GMT-01:00) Azores';
timeZones[24] = '(GMT-01:00) Cape Verde Is.';
timeZones[25] = '(GMT) Casablanca, Monrovia';
timeZones[26] = '(GMT) Greenwich Mean Time: Dublin, Edinburgh, Lisbon, London';
timeZones[27] = '(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna';
timeZones[28] = '(GMT+01:00) Belgrade, Bratislava, Budapest, Ljubljana, Prague';
timeZones[29] = '(GMT+01:00) Brussels, Copenhagen, Madrid, Paris';
timeZones[30] = '(GMT+01:00) Sarajevo, Skopje, Warsaw, Zagreb';
timeZones[31] = '(GMT+01:00) West Central Africa';
timeZones[32] = '(GMT+02:00) Athens, Istanbul, Minsk';
timeZones[33] = '(GMT+02:00) Bucharest';
timeZones[34] = '(GMT+02:00) Cairo';
timeZones[35] = '(GMT+02:00) Harare, Pretoria';
timeZones[36] = '(GMT+02:00) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius';
timeZones[37] = '(GMT+02:00) Jerusalem';
timeZones[38] = '(GMT+03:00) Baghdad';
timeZones[39] = '(GMT+03:00) Kuwait, Riyadh';
timeZones[40] = '(GMT+03:00) Moscow, St. Petersburg, Volgograd';
timeZones[41] = '(GMT+03:00) Nairobi';
timeZones[42] = '(GMT+03:30) Tehran';
timeZones[43] = '(GMT+04:00) Abu Dhabi, Muscat';
timeZones[44] = '(GMT+04:00) Baku, Tbilisi, Yerevan';
timeZones[45] = '(GMT+04:30) Kabul';
timeZones[46] = '(GMT+05:00) Ekaterinburg';
timeZones[47] = '(GMT+05:00) Islamabad, Karachi, Tashkent';
timeZones[48] = '(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi';
timeZones[49] = '(GMT+05:45) Kathmandu';
timeZones[50] = '(GMT+06:00) Almaty, Novosibirsk';
timeZones[51] = '(GMT+06:00) Astana, Dhaka';
timeZones[52] = '(GMT+06:00) Sri Jayawardenepura';
timeZones[53] = '(GMT+06:30) Rangoon';
timeZones[54] = '(GMT+07:00) Bangkok, Hanoi, Jakarta';
timeZones[55] = '(GMT+07:00) Krasnoyarsk';
timeZones[56] = '(GMT+08:00) Beijing, Chongquing, Hong Kong, Urumqi';
timeZones[57] = '(GMT+08:00) Irkutsk, Ulaan Bataar';
timeZones[58] = '(GMT+08:00) Kuala Lumpur, Singapore';
timeZones[59] = '(GMT+08:00) Perth';
timeZones[60] = '(GMT+08:00) Taipei';
timeZones[61] = '(GMT+09:00) Osaka, Sapporo, Tokyo';
timeZones[62] = '(GMT+09:00) Seoul';
timeZones[63] = '(GMT+09:00) Yakutsk';
timeZones[64] = '(GMT+09:30) Adelaide';
timeZones[65] = '(GMT+09:30) Darwin';
timeZones[66] = '(GMT+10:00) Brisbane';
timeZones[67] = '(GMT+10:00) Canberra, Melbourne, Sydney';
timeZones[68] = '(GMT+10:00) Guam, Port Moresby';
timeZones[69] = '(GMT+10:00) Hobart';
timeZones[70] = '(GMT+10:00) Vladivostok';
timeZones[71] = '(GMT+11:00) Magadan';
timeZones[72] = '(GMT+11:00) Solomon Is., New Caledonia';
timeZones[73] = '(GMT+12:00) Auckland, Wellington';
timeZones[74] = '(GMT+12:00) Fiji, Kamchatka, Marshall Is.';
var timeZonesEng = new Array();
timeZonesEng[0] = '(GMT-12:00) International Date Line West';
timeZonesEng[1] = '(GMT-11:00) Midway Island, Samoa';
timeZonesEng[2] = '(GMT-10:00) Hawaii';
timeZonesEng[3] = '(GMT-09:00) Alaska';
timeZonesEng[4] = '(GMT-08:00) Pacific Time, Tijuana';
timeZonesEng[5] = '(GMT-07:00) Arizona, Mazatlan';
timeZonesEng[6] = '(GMT-07:00-1) Chihuahua, La Paz';
timeZonesEng[7] = '(GMT-07:00-2) Mountain Time';
timeZonesEng[8] = '(GMT-06:00) Central America';
timeZonesEng[9] = '(GMT-06:00-1) Central Time';
timeZonesEng[10] = '(GMT-06:00-2) Guadalajara, Mexico City, Monterrey';
timeZonesEng[11] = '(GMT-06:00-3) Saskatchewan';
timeZonesEng[12] = '(GMT-05:00) Bogota, Lima, Quito';
timeZonesEng[13] = '(GMT-05:00-1) Eastern Time';
timeZonesEng[14] = '(GMT-05:00-2) Indiana';
timeZonesEng[15] = '(GMT-04:00) Atlantic Time';
timeZonesEng[16] = '(GMT-04:00-1) Caracas, La Paz';
timeZonesEng[17] = '(GMT-04:00-2) Santiago';
timeZonesEng[18] = '(GMT-03:30) Newfoundland';
timeZonesEng[19] = '(GMT-03:00) Brasilia';
timeZonesEng[20] = '(GMT-03:00-1) Buenos Aires, Georgetown';
timeZonesEng[21] = '(GMT-03:00-2) Greenland';
timeZonesEng[22] = '(GMT-02:00) Mid-Atlantic';
timeZonesEng[23] = '(GMT-01:00) Azores';
timeZonesEng[24] = '(GMT-01:00-1) Cape Verde Is.';
timeZonesEng[25] = '(GMT) Casablanca, Monrovia';
timeZonesEng[26] = '(GMT-1) Greenwich Mean Time: Dublin, Edinburgh, Lisbon, London';
timeZonesEng[27] = '(GMT+01:00) Amsterdam, Berlin, Bern, Rome, Stockholm, Vienna';
timeZonesEng[28] = '(GMT+01:00-1) Belgrade, Bratislava, Budapest, Ljubljana, Prague';
timeZonesEng[29] = '(GMT+01:00-2) Brussels, Copenhagen, Madrid, Paris';
timeZonesEng[30] = '(GMT+01:00-3) Sarajevo, Skopje, Warsaw, Zagreb';
timeZonesEng[31] = '(GMT+01:00-4) West Central Africa';
timeZonesEng[32] = '(GMT+02:00) Athens, Istanbul, Minsk';
timeZonesEng[33] = '(GMT+02:00-1) Bucharest';
timeZonesEng[34] = '(GMT+02:00-2) Cairo';
timeZonesEng[35] = '(GMT+02:00-3) Harare, Pretoria';
timeZonesEng[36] = '(GMT+02:00-4) Helsinki, Kyiv, Riga, Sofia, Tallinn, Vilnius';
timeZonesEng[37] = '(GMT+02:00-5) Jerusalem';
timeZonesEng[38] = '(GMT+03:00) Baghdad';
timeZonesEng[39] = '(GMT+03:00-1) Kuwait, Riyadh';
timeZonesEng[40] = '(GMT+03:00-2) Moscow, St. Petersburg, Volgograd';
timeZonesEng[41] = '(GMT+03:00-3) Nairobi';
timeZonesEng[42] = '(GMT+03:30) Tehran';
timeZonesEng[43] = '(GMT+04:00) Abu Dhabi, Muscat';
timeZonesEng[44] = '(GMT+04:00-1) Baku, Tbilisi, Yerevan';
timeZonesEng[45] = '(GMT+04:30) Kabul';
timeZonesEng[46] = '(GMT+05:00) Ekaterinburg';
timeZonesEng[47] = '(GMT+05:00-1) Islamabad, Karachi, Tashkent';
timeZonesEng[48] = '(GMT+05:30) Chennai, Kolkata, Mumbai, New Delhi';
timeZonesEng[49] = '(GMT+05:45) Kathmandu';
timeZonesEng[50] = '(GMT+06:00) Almaty, Novosibirsk';
timeZonesEng[51] = '(GMT+06:00-1) Astana, Dhaka';
timeZonesEng[52] = '(GMT+06:00-2) Sri Jayawardenepura';
timeZonesEng[53] = '(GMT+06:30) Rangoon';
timeZonesEng[54] = '(GMT+07:00) Bangkok, Hanoi, Jakarta';
timeZonesEng[55] = '(GMT+07:00-1) Krasnoyarsk';
timeZonesEng[56] = '(GMT+08:00) Beijing, Chongquing, Hong Kong, Urumqi';
timeZonesEng[57] = '(GMT+08:00-1) Irkutsk, Ulaan Bataar';
timeZonesEng[58] = '(GMT+08:00-2) Kuala Lumpur, Singapore';
timeZonesEng[59] = '(GMT+08:00-3) Perth';
timeZonesEng[60] = '(GMT+08:00-4) Taipei';
timeZonesEng[61] = '(GMT+09:00) Osaka, Sapporo, Tokyo';
timeZonesEng[62] = '(GMT+09:00-1) Seoul';
timeZonesEng[63] = '(GMT+09:00-2) Yakutsk';
timeZonesEng[64] = '(GMT+09:30) Adelaide';
timeZonesEng[65] = '(GMT+09:30-1) Darwin';
timeZonesEng[66] = '(GMT+10:00) Brisbane';
timeZonesEng[67] = '(GMT+10:00-1) Canberra, Melbourne, Sydney';
timeZonesEng[68] = '(GMT+10:00-2) Guam, Port Moresby';
timeZonesEng[69] = '(GMT+10:00-3) Hobart';
timeZonesEng[70] = '(GMT+10:00-4) Vladivostok';
timeZonesEng[71] = '(GMT+11:00) Magadan';
timeZonesEng[72] = '(GMT+11:00-1) Solomon Is., New Caledonia';
timeZonesEng[73] = '(GMT+12:00) Auckland, Wellington';
timeZonesEng[74] = '(GMT+12:00-1) Fiji, Kamchatka, Marshall Is.';
function getTimeZoneIndex(timeZoneName)
{
	var i = 0, ret = 4;  
	for ( var i = 0; i < timeZonesEng.length; i++ )
	{
		if ( timeZonesEng[i].search(timeZoneName) != -1 )
			break;
		if(timeZonesEng[i] == timeZoneName)
			break;
	}
	if ( i < timeZonesEng.length )
		ret = i;
	return ret;
}
function genlocaltimename()
{
	var obj = getElement('cboTimeZone');
	var index = obj.selectedIndex;
	var val = obj.options[index].value;
	localtimename += "GMT";
	localtimename += val;
	if (val == '')
	{
		localtimename += '00:00:00';
	}
}
function getTimeZoneName(idx) {
	var str = timeZonesEng[idx];
	return str;
}
function getTimeZoneOffset(idx) {
	var str = timeZonesEng[idx];
	var ret = '';
	var nLength = str.indexOf(")");
	ret = str.substr(1, nLength-1);
	return ret;
}
function writeTimeZoneList()
{
	var  vValue;
	var	bExit = 0;
	for( var i = 0; i < timeZones.length; i++ )
	{
		vValue = getTimeZoneOffset(i);
		document.writeln("<option value=" + vValue + ">" + timeZones[i] + "</option>");
		if(document.ConfigForm.CountryName.value == vValue)
		{
			document.ConfigForm.cboTimeZone.selectedIndex= i;
			bExit = 1;
		}
		else
		{
			if((timeZones[i].match("GMT+08:00") != null) && (0 == bExit))
			{
				document.ConfigForm.cboTimeZone.selectedIndex= i;
			}
		}	
	}
}
function ntpChange(optionlist,textbox)
{
if(document.ConfigForm.ntpEnabled.checked)
{
	if( optionlist[optionlist.selectedIndex].value == "Other" )
	{
		textbox.disabled = false;
	}
	else
	{
		textbox.value = "";
		textbox.disabled = true;
	}
}
}

function hideNtpConfig(hide)
{
	var status = 'visible';
	if(hide)
		status = 'hidden';
	if( document.getElementById )
		document.getElementById('ntpConfig').style.visibility = status;
	else
		if(!document.layers)
			document.all.ntpConfig.style.visibility = status;
}
function ntpEnblChange()
{
	if( document.forms[0].ntpEnabled.checked )
	{
		hideNtpConfig(0);
		document.forms[0].autotimeFlag.value = "0";//0 is auto time
	}
	else
	{
		hideNtpConfig(1);
		document.forms[0].autotimeFlag.value = "2";//2 is manual 
	}
}
function writeNtpList(needed, serverFlag, server)
{
	var vFlag = "0";

	if(!needed)
	{
		document.writeln("<option value=None>None</option>");
	}

	for( var i = 0; i < ntpServers.length; i++ )
	{
		document.writeln("<option value=" + ntpServers[i] + ">" + ntpServers[i] + "</option>");

        if(serverFlag.value == ntpServers[i])
        {
            if(needed)
            {
                server.selectedIndex = i;
            }
            else
            {
                server.selectedIndex = i + 1;
            }
            vFlag = "1";
        }
	}

	document.writeln("<option value=Other>Other</option>");

	if(vFlag == "0")
	{
		if(needed)
		{
		    server.selectedIndex = ntpServers.length;
		}
		else
		{
			if(serverFlag.value == "None")
			{
				server.selectedIndex =  0;
			}
			else
			{
				server.selectedIndex =  ntpServers.length+1;
			}
		}
	}
}
function writeDayList(dayNnme)
{
	for( var i = 0; i < 31; i++ )
	{
		var vday = i+1;
        if(dayNnme==vday.toString())
        {
		    document.writeln("<option value=" +vday+ " selected >" + vday + "</option>");
        }
        else{
            document.writeln("<option value=" +vday+ ">" + vday + "</option>");
        }
	}
}

function writeMonList(monNnme)
{
    var Mons = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"];

	for( var i = 0; i < 12; i++ )
	{
        var mon = i+1;
        if(monNnme==mon.toString())
        {
            selectedFlag = true;
            document.writeln("<option value="+mon+' selected >' + Mons[i] + "</option>");
        }
        else
        {
		    document.writeln("<option value=" +mon+ " >" + Mons[i] + "</option>");	
        }
	}
}

function writeWeekList(weekNnme)
{
    var Weeks = ["First","Second", "Third", "Fourth", "Fifth"];
	for( var i = 0; i < 5; i++ )
	{
	    var weekVal = i+1;
        if(weekNnme==weekVal.toString())
        {
            document.writeln("<option value="+weekVal + ' selected >' + Weeks[i] + "</option>");
        }
        else
        {
		    document.writeln("<option value=" + weekVal + ">" + Weeks[i] + "</option>");
        }
	}
}

function writeWeekDayList(weekNnme)
{
    var WeekDay = ["Sunday","Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" ];

	for( var i = 0; i < 7; i++ )
	{
        if(weekNnme==i.toString())
        {
            document.writeln("<option value="+i + ' selected >' + WeekDay[i] + "</option>");
        }
        else
        {  
		    document.writeln("<option value=" +i.toString()+ " >" + WeekDay[i] + "</option>");
        }	
	}
}

function writeHourList(hourNnme)
{
	for( var i = 0; i < 24; i++ )
	{
        if(hourNnme==i.toString())
        {
		    document.writeln("<option value=" +i+' selected>' + i + "</option>");	
        }
        else
        {
            document.writeln("<option value=" +i+ " >" + i + "</option>");
        }
	}
}

function DSTChange()
{
    var  vForm = document.ConfigForm;
    if( vForm.DSTEnabled.checked )
    {
        vForm.DSTEnabledFlag.value="Enable";
    }
    else
    {
        vForm.DSTEnabledFlag.value="Disable";
    }
}

function SelectChangeValue(obj, flag)
{
	var index = obj.selectedIndex;
	var val = obj.options[index].value;
    flag.value=val.toString();
}

function StartModeChange()
{
    var  vForm = document.ConfigForm;

    if ("MonDayMode" ==getRadioVal("start_mode_day"))
    {
        vForm.startDayModeFlag.value = "MonDayMode";
    }
    else if ("weekDayMode" ==getRadioVal("start_mode_day"))
    {
        vForm.startDayModeFlag.value = "weekDayMode";
    }
    else
    {
        vForm.startDayModeFlag.value = "MonDayMode";
    }

    DaylightHideButton();
}

function EndModeChange()
{
    var  vForm = document.ConfigForm;

    if ("MonDayMode" ==getRadioVal("end_mode_day"))
    {
         vForm.endDayModeFlag.value = "MonDayMode";
    }
    else if ("weekDayMode" ==getRadioVal("end_mode_day"))
    {
        vForm.endDayModeFlag.value = "weekDayMode";
    }
    else{
        vForm.endDayModeFlag.value = "MonDayMode";
    }

    DaylightHideButton();
}


function LoadFrame()
{
	var i = 0;
	var ntp1 = Sntp.ntp1 ;
	var ntp2 = Sntp.ntp2;
	var ntp_enabled = Sntp.Enable;
	var tz_name = Sntp.ZoneName;
	with (document.forms[0])
	{
		ntpEnblChange();
		ntpChange(ntpServer1,ntpServerOther1);
		ntpChange(ntpServer2,ntpServerOther2);
        ntpChange(ntpServer3,ntpServerOther3);
        ntpChange(ntpServer4,ntpServerOther4);
        ntpChange(ntpServer5,ntpServerOther5);
	}

	DaylightHideButton();
}
function isIpFormat(str)
{
	var addrParts = str.split('.');
	if (addrParts.length != 4 )
		return false;
	if (isNaN(addrParts[0] || addrparts[i] == ""))
		return false;
	if (isPlusInteger(addrParts[0]) == false)
		return false;
	return true;
}
function isTValidName(name) {
	var i = 0;
	var unsafeString = "\"<>%\\^[]`\+\$\,='#&:;*/{} \t";
	for ( i = 0; i < name.length; i++ ) {
		for( j = 0; j < unsafeString.length; j++)
			if ( (name.charAt(i)) == unsafeString.charAt(j) )
				return false;
	}
	return true;
}
function checkntpServrState()
{
	var  vForm = document.ConfigForm;
	if(vForm.ntpEnabled.checked) {
		if(vForm.ntpServer1.value == "Other")
			vForm.ntpServerOther1Flag.value = vForm.ntpServerOther1.value;
		else vForm.ntpServerOther1Flag.value = vForm.ntpServer1.value;
	
		if(vForm.ntpServer2.value == "Other")
			vForm.ntpServerOther2Flag.value = vForm.ntpServerOther2.value;
		else vForm.ntpServerOther2Flag.value = vForm.ntpServer2.value;

		if(vForm.ntpServer3.value == "Other")
			vForm.ntpServerOther3Flag.value = vForm.ntpServerOther3.value;
		else vForm.ntpServerOther3Flag.value = vForm.ntpServer3.value;

		if(vForm.ntpServer4.value == "Other")
			vForm.ntpServerOther4Flag.value = vForm.ntpServerOther4.value;
		else vForm.ntpServerOther4Flag.value = vForm.ntpServer4.value;

		if(vForm.ntpServer5.value == "Other")
			vForm.ntpServerOther5Flag.value = vForm.ntpServerOther5.value;
		else vForm.ntpServerOther5Flag.value = vForm.ntpServer5.value;
	}
}

//use the information of weeks and day in weeks to calculate this day in month.
function calculateDayInMon(year, month, weekNum, week)
{
    var dayInMon = 0;

    if(month<1 || month>12 || weekNum<1 || weekNum>5 || week<0 || week>6)
    {
        return -1;
    }

    if(month<=2)
    {
        month+=12;
        year--;
    }
    var iWeek=(1+2*month+3*(month+1)/5+year+year/4-year/100+year/400)%7+1;
    iWeek = parseInt(iWeek);

    if(iWeek == 7)
    {
        iWeek =0;
    }
    if(weekNum == 1)
    {
        if(iWeek >week)
        {
           dayInMon =  7-iWeek+week+1;
        }
        else
        {
            dayInMon = week - iWeek+1;
        }
    }
    else
    {
        if(iWeek <=week)
        {
            dayInMon = 7-iWeek+(weekNum-2)*7+week+1;
        }
        else
        {
            dayInMon = 7-iWeek+(weekNum-1)*7+week+1;
        }
    }

    dayInMon = parseInt(dayInMon);
    return dayInMon;
}

//check if the start time is earlier than the end time
function iIsDaylightValueValid()
{
    with( document.forms[0] )
    {
        if ("Enable" == DSTEnabledFlag.value)
        {
            var vCurYear = parseInt(startYearFlag.value);
            var vStartMon = parseInt(startMonflag.value);
            var vStartHour = parseInt(startHourflag.value);
            var vEndMon = parseInt(endMonflag.value);
            var vEndHour = parseInt(endHourflag.value);
            var vStartDay = 0;
            var vEndDay = 0;

            if ("MonDayMode" == startDayModeFlag.value)
            {
                vStartDay = parseInt(startMonDayFlag.value);
            }
            else
            {
                vStartDay = calculateDayInMon(vCurYear, vStartMon, parseInt(startWeekflag.value), parseInt(startWeekDayFlag.value));
            }

            if ("MonDayMode" == endDayModeFlag.value)
            {
                vEndDay = parseInt(endMonDayFlag.value);
            }
            else
            {
                vEndDay = calculateDayInMon(vCurYear, vEndMon, parseInt(endWeekflag.value), parseInt(endWeekDayFlag.value));
            }

            if (isNaN(vCurYear))
            {
                alert('Start time illegal!');
                return false;
            }

            if (isNaN(vStartMon) || isNaN(vStartDay) || isNaN(vStartHour) || (vStartDay < 1) || (vStartDay > 31))
            {
                alert('Start time illegal!');
                return false;
            }
            if (isNaN(vEndMon) || isNaN(vEndDay) || isNaN(vEndHour) || (vEndDay < 1) || (vEndDay > 31))
            {
                alert('End time illegal!');
            }

            //begin check
            if (vEndMon < vStartMon)
            {
                alert('Error! The end time should large than start time!');
                return false;
            }
            else if ((vEndMon == vStartMon) && (vEndDay < vStartDay))
            {
                alert('Error! The end time should large than start time!');
                return false;
            }
            else if ((vEndMon == vStartMon) && (vEndDay == vStartDay) && (vEndHour <= vStartHour))
            {
                alert('Error! The end time should large than start time!');
                return false;
            }
        }
    }

    return true;
}

function SubmitForm()
{
	with( document.forms[0] )
    {
		if( ntpEnabled.checked )
		{
			if( ntpServer1.value == "Other" )
			{
				if( ntpServerOther1.value.length == 0 )
				{ 
					alert('If the master SNTP server select &quot;Other&quot;, the back input box cannot be empty.');
					document.ConfigForm.SaveFlag.value = 0;
					return;
				}
				if(isIpv6Address(ntpServerOther1.value))
				{
					if(isUnicastIpv6Address(ntpServerOther1.value) == false)
					{
                        alert('The primary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
					}
				}
				else if (isIpFormat(ntpServerOther1.value))
				{
					if ( '0.0.0.0' != ntpServerOther1.value && isValidIpAddress(ntpServerOther1.value) == false)
					{
						alert('The primary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
				else
				{
                    if(isTValidName(ntpServerOther1.value) == false)
                    {
                        alert('The primary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
                    }
				}
			}

			if( ntpServer2.value == "Other" )
			{
				if( ntpServerOther2.value.length == 0 )
				{ 
					alert('If the master SNTP server select &quot;Other&quot;, the back input box cannot be empty.');
					document.ConfigForm.SaveFlag.value = 0;
					return;
				}
				if(isIpv6Address(ntpServerOther2.value))
				{
                    if(isUnicastIpv6Address(ntpServerOther2.value) == false)
                    {
                        alert('The secondary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
                    }
				}
				else if (isIpFormat(ntpServerOther2.value))
				{
					if ('0.0.0.0' != ntpServerOther2.value && isValidIpAddress(ntpServerOther2.value) == false)
					{
						alert('The secondary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
				else
				{
					if(isTValidName(ntpServerOther2.value) == false)
					{
						alert('The secondary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
			}

			if( ntpServer3.value == "Other" )
			{
				if( ntpServerOther3.value.length == 0 )
				{
					alert('If the master SNTP server select &quot;Other&quot;, the back input box cannot be empty.');
					document.ConfigForm.SaveFlag.value = 0;
					return;
				}
				if(isIpv6Address(ntpServerOther3.value))
				{
                    if(isUnicastIpv6Address(ntpServerOther3.value) == false)
                    {
                        alert('The tertiary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
                    }
                }
				else if (isIpFormat(ntpServerOther3.value))
				{
					if ('0.0.0.0' != ntpServerOther3.value && isValidIpAddress(ntpServerOther3.value) == false)
					{
						alert('The tertiary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
				else
				{
					if(isTValidName(ntpServerOther3.value) == false)
					{
						alert('The tertiary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
			}

			if( ntpServer4.value == "Other" )
			{
				if( ntpServerOther4.value.length == 0 )
				{
					alert('If the master SNTP server select &quot;Other&quot;, the back input box cannot be empty.');
					document.ConfigForm.SaveFlag.value = 0;
					return;
				}
				if(isIpv6Address(ntpServerOther4.value))
				{
                    if(isUnicastIpv6Address(ntpServerOther4.value) == false)
                    {
                        alert('The Quaternary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
                    }
                }
				else if (isIpFormat(ntpServerOther4.value))
				{
					if ('0.0.0.0' != ntpServerOther4.value && isValidIpAddress(ntpServerOther4.value) == false)
					{
						alert('The Quaternary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
				else
				{
					if(isTValidName(ntpServerOther4.value) == false)
					{
						alert('The Quaternary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
			}

			if( ntpServer5.value == "Other" )
			{
				if( ntpServerOther5.value.length == 0 )
				{
					alert('If the master SNTP server select &quot;Other&quot;, the back input box cannot be empty.');
					document.ConfigForm.SaveFlag.value = 0;
					return;
				}
				if(isIpv6Address(ntpServerOther5.value))
				{
                    if(isUnicastIpv6Address(ntpServerOther5.value) == false)
                    {
                        alert('The Quinary server address is invalid!');
                        document.ConfigForm.SaveFlag.value = 0;
                        return;
                    }
				}
				else if (isIpFormat(ntpServerOther5.value))
				{
					if ('0.0.0.0' != ntpServerOther5.value && isValidIpAddress(ntpServerOther5.value) == false)
					{
						alert('The Quinary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
				else
				{
					if(isTValidName(ntpServerOther5.value) == false)
					{
						alert('The Quinary server address is invalid!');
						document.ConfigForm.SaveFlag.value = 0;
						return;
					}
				}
			}
            checkntpServrState();
            document.ConfigForm.SaveFlag.value = "1";
            document.ConfigForm.DayLightChange.value = "1";

            if (!iIsDaylightValueValid())
            {
                return;
            }

            if( true == setEBooValueCookie(document.ConfigForm) )
            {
                document.ConfigForm.submit();
            }
		}
	}
	
}

function DaylightHideButton()
{
    if (!document.ConfigForm.startModeWeekday.checked)
    {
        document.ConfigForm.setStartMonDay.disabled = false;
        document.ConfigForm.startWeek.disabled = true;
        document.ConfigForm.startWeekDay.disabled = true;
    }
    else
    {
        document.ConfigForm.setStartMonDay.disabled = true;
        document.ConfigForm.startWeek.disabled = false;
        document.ConfigForm.startWeekDay.disabled = false;
    }

    if (!document.ConfigForm.endModeWeekday.checked)
    {
        document.ConfigForm.setEndMonDay.disabled = false;
        document.ConfigForm.endWeek.disabled = true;
        document.ConfigForm.endWeekDay.disabled = true;
    }
    else
    {
        document.ConfigForm.setEndMonDay.disabled = true;
        document.ConfigForm.endWeek.disabled = false;
        document.ConfigForm.endWeekDay.disabled = false;
    }
}


function listCreate(l_flag)
{
		var slNtpServerType = "0";
		var vEntryName = new Array();	
		vEntryName[0]="INTERNET";
		vEntryName[1]="VOICE";
		vEntryName[2]="TR069";
		vEntryName[3]="OTHER";
		for (i = 0; i < 4; i++)
		{

				if(slNtpServerType == i)
				{
					document.write('<option value=' + i + ' selected>'	+ vEntryName[i] + '</option>');
				}
				else
				{
					document.write('<option value=' + i + '>'	+ vEntryName[i] + '</option>');
				}
		}
}

</SCRIPT>
</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->Time" name=Net_Time>
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
							        MakeLeftMenu('Net','Time')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Net','Time','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							 						 
								<FORM name="ConfigForm" action="/cgi-bin/net-time.asp" method="post">
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/time.png" width="45" height="40" class="img_sub" alt=""/> Time Server</h1>
                                    <div class="container-fluid">
                                        <input type="hidden" id="autotimeFlag" name="autotimeFlag" value="0">
                                        <input type="hidden" id="CountryName" name="CountryName" value="GMT+05:30">
                                        <input type="hidden" id="ntpServerOther1Flag" name="ntpServerOther1Flag" value="time.nplindia.org">
                                        <input type="hidden" id="ntpServerOther2Flag" name="ntpServerOther2Flag" value="0.0.0.0">
                                        <input type="hidden" id="ntpServerOther3Flag" name="ntpServerOther3Flag" value="0.0.0.0">
                                        <input type="hidden" id="ntpServerOther4Flag" name="ntpServerOther4Flag" value="0.0.0.0">
                                        <input type="hidden" id="ntpServerOther5Flag" name="ntpServerOther5Flag" value="0.0.0.0">
                                        <INPUT TYPE="HIDDEN" id="isNtpServerTypeSupported" NAME="isNtpServerTypeSupported" value="1">
                                        <input type="hidden" id="SaveFlag" name="SaveFlag" value="0">

										<hr class="margin_adjs" />
									<div class="row">
										<div class="col-md-12 form-group">
											<div class="custom-control custom-checkbox">
                                            <input class="custom-control-input" onclick="ntpEnblChange()" type="checkbox" id="ntpEnabled" name="ntpEnabled" checked/>
											  <label class="custom-control-label" for="ntpEnabled">    Automatic Synchronization Network Time Server</label>
											</div>
										</div>
										<div class="col-md-12">
										<h2 class="sub_heading">System Date&amp;Time:</h2>
											<p class="normal_text"> <SCRIPT language=javascript>
											                            var currTime = '2/22/2025/11/53';
											                            var curTimelist = currTime.split('/');
											                            if (5 == curTimelist.length) {
																		    if(curTimelist[3] < 10)
																			    var curHour = "0" + curTimelist[3];
																		    else
																			    var curHour = curTimelist[3];

																		    if(curTimelist[4] < 10)
																			    var curMinutes = "0" + curTimelist[4];
																		    else
																			    var curMinutes = curTimelist[4];
document.write( curTimelist[2] + '-' + curTimelist[0] + '-' + curTimelist[1] + '  ' + curHour + ':' + curMinutes);
											                            }
											                            else
											                                document.write('N/A');
																  </SCRIPT>
	                        			 </p>
										</div>

                                        	<div class="col-md-3 form-group">
											<label>Select Interface:</label>
                                                <SELECT id="AddRouteTimeZone"   class="custom-select" size="1" name="AddRouteTimeZone" > 
                          <SCRIPT language=javascript>
                              listCreate(0);
						  </SCRIPT>
                        </SELECT>
										    </div>

										    <div class="col-md-12"></div>

										<div class="col-md-3 form-group">
											<label>SNTP Server 1</label>
											<div class="row">
												<div class="col-md-6 form-group">
                                                    <select class="custom-select" onChange="ntpChange(this.form.ntpServer1,this.form.ntpServerOther1)"  size=1 name="ntpServer1">
                                    <script language=javascript>
                                        writeNtpList(true, document.ConfigForm.ntpServerOther1Flag, document.ConfigForm.ntpServer1);
						</script>
                                  </select>
												</div>
												<div class="col-md-6 form-group">
                                                    <input  class="form-control" maxlength="63" id="ntpServerOther1" name="ntpServerOther1" value="time.nplindia.org">
												</div>
											</div>
										</div>
										<div class="col-md-12"></div>

										<div class="col-md-3 form-group">
											<label>SNTP Server 2</label>
											<div class="row">
												<div class="col-md-6 form-group">
                                                    <select class="custom-select" onchange="ntpChange(this.form.ntpServer2,this.form.ntpServerOther2)" size=1 id="ntpServer2" name="ntpServer2">
                                    <script language=javascript>
                                        writeNtpList(false, document.ConfigForm.ntpServerOther2Flag, document.ConfigForm.ntpServer2);
					</script>
                                  </select> 
												</div>
												<div class="col-md-6 form-group">
                                                    <input  class="form-control" maxlength=63 id="ntpServerOther2" name="ntpServerOther2" value="0.0.0.0">
												</div>
											</div>
										</div>
										<div class="col-md-12"></div>

										<div class="col-md-3 form-group">
											<label>SNTP Server 3</label>
											<div class="row">
												<div class="col-md-6 form-group">
                                                    <select class="custom-select" onchange="ntpChange(this.form.ntpServer3,this.form.ntpServerOther3)" size=1 id="ntpServer3" name="ntpServer3">
                                    <script language=javascript>
                                        writeNtpList(false, document.ConfigForm.ntpServerOther3Flag, document.ConfigForm.ntpServer3);
					</script>
                                  </select>
												</div>
												<div class="col-md-6 form-group">
                                                    <input  class="form-control" maxlength=63 id="ntpServerOther3" name="ntpServerOther3" value="0.0.0.0">
												</div>
											</div>
										</div>
										<div class="col-md-12"></div>

										<div class="col-md-3 form-group">
											<label>SNTP Server 4</label>
											<div class="row">
												<div class="col-md-6 form-group">
                                                    <select class="custom-select" onchange="ntpChange(this.form.ntpServer4,this.form.ntpServerOther4)" size=1 id="ntpServer4" name="ntpServer4">
                                    <script language=javascript>
                                        writeNtpList(false, document.ConfigForm.ntpServerOther4Flag, document.ConfigForm.ntpServer4);
					</script>
                                  </select>
												</div>
												<div class="col-md-6 form-group">
                                                    <input  class="form-control" maxlength=63 id="ntpServerOther4" name="ntpServerOther4" value="0.0.0.0">
												</div>
											</div>
										</div>
										<div class="col-md-12"></div>

										<div class="col-md-3 form-group">
											<label>SNTP Server 5</label>
											<div class="row">
												<div class="col-md-6 form-group">
                                                    <select class="custom-select" onchange="ntpChange(this.form.ntpServer5,this.form.ntpServerOther5)" size=1 id="ntpServer5" name="ntpServer5">
                                    <script language=javascript>
                                        writeNtpList(false, document.ConfigForm.ntpServerOther5Flag, document.ConfigForm.ntpServer5);
					</script>
                                  </select>
												</div>
												<div class="col-md-6 form-group">
                                                    <input  class="form-control" maxlength=63 id="ntpServerOther5" name="ntpServerOther5" value="0.0.0.0">
												</div>
											</div>
										</div>
										<div class="col-md-12"></div>
										
										<div class="col-md-3 form-group" id="ntpConfig">
											<label>Time Zone:</label>
                                            <SELECT size=1 id="cboTimeZone" name="cboTimeZone" class="custom-select"> 
                     <SCRIPT language=javascript>
                         writeTimeZoneList();
					</SCRIPT>
                        </SELECT>
										</div>
										
							      </div>
								</div>
                                
							</div>
                            <div class="white_box">
                                <h1 class="heading_grey"><img src="/Dashboard/images/time.png" width="45" height="40" class="img_sub" alt=""/> Daylight Savings</h1>
                                <div class="container-fluid">
                                    <hr class="margin_adjs" />
                                    <div class="row">

                                        <div class="col-md-12 form-group custom-control custom-checkbox">
                                            <input type="hidden" id="DSTEnabledFlag" name="DSTEnabledFlag" value="Disable">
                                            <input type="hidden" id="startDayModeFlag" name="startDayModeFlag" value="">
                                            <input type="hidden" id="endDayModeFlag" name="endDayModeFlag" value="">
                                            <div>
                                                <input class="custom-control-input" style="position: relative" onclick="DSTChange()" type="checkbox" id="DSTEnabled" name="DSTEnabled" />
                                                <label class="custom-control-label" for="DSTEnabled">    Active</label>
                                            </div>
                                        </div>

                                        <div class="col-md-12 form-group"><h4>Start Rule</h4></div>

                                        <div class="col-md-2 form-group">
                                            <p>Month</p>
                                        </div>

                                        <div class="form-group" style="width: 3%"></div>

                                        <div class="col-md-2 form-group">
                                            <input type="hidden" id="startMonflag" name="startMonflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.startMonflag)" size=1 id="startMon" name="startMon">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeMonList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>Select day in month</p>
                                        </div>
                                        <div class="form-group custom-control custom-radio" style="width: 3%">
                                          <input class="custom-control-input" onclick="StartModeChange()" type="radio" value="MonDayMode" id="startModeMonDay" name="start_mode_day" checked>
                                          <label class="custom-control-label" for="startModeMonDay"> </label>
                                          <input type="hidden" id="startYearFlag" name="startYearFlag" value="0">
                                            <SCRIPT language=javascript>
                                                var date = new Date();
                                                var year = date.getFullYear();
                                                document.getElementById('startYearFlag').value = year;
                                            </SCRIPT>
                                        </div>
                                        <div class="col-md-2 form-group">
                                           <input type="hidden" id="startMonDayFlag" name="startMonDayFlag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.startMonDayFlag)" size=1 id="setStartMonDay" name="setStartMonDay">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeDayList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>Select day in week</p>
                                        </div>
                                        <div class="form-group custom-control custom-radio" style="width: 3%">
                                          <input class="custom-control-input" onclick="StartModeChange()" type="radio" value="weekDayMode" id="startModeWeekday" name="start_mode_day" >
                                          <label class="custom-control-label" for="startModeWeekday"> </label>
                                        </div>
                                        <div class="col-md-2 form-group">
                                                <input type="hidden" id="startWeekflag" name="startWeekflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.startWeekflag)" size=1 id="startWeek" name="startWeek">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeWeekList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-2 form-group">
                                                <input type="hidden" id="startWeekDayFlag" name="startWeekDayFlag" value="N/A">
                                                <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.startWeekDayFlag)" size=1 id="startWeekDay" name="startWeekDay">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeWeekDayList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>hour</p>
                                        </div>

                                        <div class="form-group" style="width: 3%"></div>

                                        <div class="col-md-2 form-group">
                                            <input type="hidden" id="startHourflag" name="startHourflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.startHourflag)" size=1 id="startHour" name="startHour">
                                            <SCRIPT language=javascript>
                                                var curValue = "N/A";
                                                writeHourList(curValue);
                                            </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"><p><BR></p></div>

                                        <div class="col-md-12 form-group"><h4>End Rule</h4></div>

                                        <div class="col-md-2 form-group">
                                            <p>Month</p>
                                        </div>

                                        <div class="form-group" style="width: 3%"></div>

                                        <div class="col-md-2 form-group">
                                            <input type="hidden" id="endMonflag" name="endMonflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.endMonflag)" size=1 id="endMon" name="endMon">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeMonList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>Select day in month</p>
                                        </div>






                                        <div class="custom-control custom-radio" style="width: 3%">
                                          <input class="custom-control-input" onclick="EndModeChange()" type="radio" value="MonDayMode" id="endModeMonDay" name="end_mode_day" checked>
                                          <label class="custom-control-label" for="endModeMonDay"> </label>
                                          <input type="hidden" id="endYearFlag" name="endYearFlag" value="0">
                                            <SCRIPT language=javascript>
                                                var date = new Date();
                                                var year = date.getFullYear();
                                                document.getElementById('endYearFlag').value = year;
                                            </SCRIPT>
                                        </div>
                                        <div class="col-md-2 form-group">
                                           <!-- end_monDay -->
                                           <input type="hidden" id="endMonDayFlag" name="endMonDayFlag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.endMonDayFlag)" size=1 id="setEndMonDay" name="setEndMonDay">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeDayList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>Select day in week</p>
                                        </div>

                                        <div class="custom-control custom-radio" style="width: 3%">
                                          <input class="custom-control-input" onclick="EndModeChange()" type="radio" value="weekDayMode" id="endModeWeekday" name="end_mode_day" >
                                          <label class="custom-control-label" for="endModeWeekday"> </label>
                                        </div>
                                        <div class="col-md-2 form-group">
                                                <input type="hidden" id="endWeekflag" name="endWeekflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.endWeekflag)" size=1 id="endWeek" name="endWeek">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeWeekList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-2 form-group">
                                                <input type="hidden" id="endWeekDayFlag" name="endWeekDayFlag" value="N/A">
                                                <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.endWeekDayFlag)" size=1 id="endWeekDay" name="endWeekDay">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeWeekDayList(curValue);
                                               </SCRIPT>
                                            </SELECT>
                                        </div>

                                        <div class="col-md-12"></div>

                                        <div class="col-md-2 form-group">
                                            <p>hour</p>
                                        </div>

                                        <div class="form-group" style="width: 3%"></div>

                                        <div class="col-md-2 form-group">
                                            <input type="hidden" id="endHourflag" name="endHourflag" value="N/A">
                                            <SELECT class="custom-select" onchange="SelectChangeValue(this, document.ConfigForm.endHourflag)" size=1 id="endHour" name="endHour">
                                                <SCRIPT language=javascript>
                                                    var curValue = "N/A";
                                                    writeHourList(curValue);
                                                </SCRIPT>
                                            </SELECT>
                                        </div>
                                    </div>
                                        <hr class="margin_adjs" />
                                        <div class="form-footer">
                                            <input type="hidden" id="DayLightChange" name="DayLightChange" value="0">
                                            <button class="btn orange_btn" type="button" id="btnOK" onclick="SubmitForm()" >SAVE</button>
                                            <button class="btn grey_btn" type="button" id="btnCancel" onclick="RefreshPage()" >CANCEL</button>
                                        </div>
                                    </div>
                                </div>
                            </FORM>
						    </div>
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

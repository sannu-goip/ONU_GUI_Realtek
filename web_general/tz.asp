
<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>

<title>Time ZoneConfiguration</title>
<script>
var ntp_zone_index=4;
function ntp_entry(name, value) {
 this.name = name ;
 this.value = value ;
}
function setNtpServer(field, ntpServer){
    field.selectedIndex = 0 ;
    for(i=0 ;i < field.options.length ; i++){
     if(field.options[i].value == ntpServer){
  field.options[i].selected = true;
  break;
 }
    }
}
function checkEmpty(field){
 if(field.value.length == 0){
  alert(field.name + " field can't be empty\n");
  field.value = field.defaultValue;
  field.focus();
  return false;
 }
 else
  return true;
}
function checkNumber(field){
    str =field.value ;
    for (var i=0; i<str.length; i++) {
     if ( (str.charAt(i) >= '0' && str.charAt(i) <= '9'))
                        continue;
 field.value = field.defaultValue;
        alert("It should be in number (0-9).");
        return false;
    }
 return true;
}
function checkMonth(str) {
  d = parseInt(str, 10);
  if (d < 0 || d > 12)
       return false;
  return true;
}
function checkDay(str, month) {
  d = parseInt(str, 10);
  m = parseInt (month, 10);
  if (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) {
   if (d < 0 || d > 31)
        return false;
  }
  else if (m == 4 || m == 6 || m == 9 || m == 11) {
   if (d < 0 || d > 31)
        return false;
  }
  else if (m == 2) {
   if (d < 0 || d > 29)
        return false;
  }
  else
   return false;
  return true;
}
function checkHour(str) {
  d = parseInt(str, 10);
  if (d < 0 || d >= 24)
       return false;
  return true;
}
function checkTime(str) {
  d = parseInt(str, 10);
  if (d < 0 || d >= 60)
       return false;
  return true;
}
function saveChanges(form,obj){
 if((checkEmpty(form.year)& checkEmpty(form.month) & checkEmpty(form.hour)
  & checkEmpty(form.day) &checkEmpty(form.minute) & checkEmpty(form.second))== false)
   return false;
 if((checkNumber(form.year)& checkNumber(form.month) & checkNumber(form.hour)
  & checkNumber(form.day) &checkNumber(form.minute) & checkNumber(form.second))== false)
   return false;
 if(form.month.value == '0'){
  form.month.value = form.month.defaultValue;
         alert("Invalid month Number. It should be in  number (1-9).");
  return false;
 }
 if (!checkMonth(form.month.value)) {
  alert("Invalid month setting");
  form.month.focus();
  return false;
 }
 if (!checkDay(form.day.value, form.month.value)) {
  alert("Invalid day setting!");
  form.day.focus();
  return false;
 }
 if (!checkHour(form.hour.value)) {
  alert("Invalid hour setting!");
  form.hour.focus();
  return false;
 }
 if (!checkTime(form.minute.value) || !checkTime(form.second.value)) {
  alert("Invalid time setting!");
  return false;
 }
 if (form.enabled.checked && form.ntpServerId[1].checked && form.ntpServerHost2.value != form.ntpServerHost2.defaultValue) {
  if (form.ntpServerHost2.value == "" || !checkString(form.ntpServerHost2.value)) {
   alert("Invalid server string!");
   form.ntpServerHost2.value = form.ntpServerHost2.defaultValue;
   form.ntpServerHost2.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function updateState(form)
{
 if(form.enabled.checked){
  enableTextField(form.ntpServerHost1);
  if(form.ntpServerHost2 != null)
   enableTextField(form.ntpServerHost2);
  disableTextField(form.year);
  disableTextField(form.month);
  disableTextField(form.day);
  disableTextField(form.hour);
  disableTextField(form.minute);
  disableTextField(form.second);
 }
 else{
  disableTextField(form.ntpServerHost1);
  if(form.ntpServerHost2 != null)
   disableTextField(form.ntpServerHost2);
  enableTextField(form.year);
  enableTextField(form.month);
  enableTextField(form.day);
  enableTextField(form.hour);
  enableTextField(form.minute);
  enableTextField(form.second);
 }
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">Time Zone Configuration</p>
 <p class="intro_content"> You can maintain the system time by synchronizing with a public time server over the Internet.</p>
</div>
<form action=/boaform/formNtp method=POST name="time">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width ="25%"> Current Time : </th>
   <td width ="75%">
                Year<input type="text" name="year" value="1970" size="4" maxlength="4">
                Mon<input type="text" name="month" value="1" size="2" maxlength="2">
                Day<input type="text" name="day" value="3" size="2" maxlength="2">
                Hour<input type="text" name="hour" value="4" size="2" maxlength="2">
                Min<input type="text" name="minute" value="41" size="2" maxlength="2">
                Sec<input type="text" name="second" value="51" size="2" maxlength="2">
         </td>
  </tr>
  <tr><th width ="25%">Time Zone Select : </th>
      <td width="75%">
             <select name="timeZone">
       <option value="0">Africa/Abidjan (UTC+00:00)</option><option value="1">Africa/Accra (UTC+00:00)</option><option value="2">Africa/Addis Ababa (UTC+03:00)</option><option value="3">Africa/Algiers (UTC+01:00)</option><option value="4">Africa/Asmara (UTC+03:00)</option><option value="5">Africa/Bamako (UTC+00:00)</option><option value="6">Africa/Bangui (UTC+01:00)</option><option value="7">Africa/Banjul (UTC+00:00)</option><option value="8">Africa/Bissau (UTC+00:00)</option><option value="9">Africa/Blantyre (UTC+02:00)</option><option value="10">Africa/Brazzaville (UTC+01:00)</option><option value="11">Africa/Bujumbura (UTC+02:00)</option><option value="12">Africa/Casablanca (UTC+00:00)</option><option value="13">Africa/Ceuta (UTC+01:00)</option><option value="14">Africa/Conakry (UTC+00:00)</option><option value="15">Africa/Dakar (UTC+00:00)</option><option value="16">Africa/Dar es Salaam (UTC+03:00)</option><option value="17">Africa/Djibouti (UTC+03:00)</option><option value="18">Africa/Douala (UTC+01:00)</option><option value="19">Africa/El Aaiun (UTC+00:00)</option><option value="20">Africa/Freetown (UTC+00:00)</option><option value="21">Africa/Gaborone (UTC+02:00)</option><option value="22">Africa/Harare (UTC+02:00)</option><option value="23">Africa/Johannesburg (UTC+02:00)</option><option value="24">Africa/Kampala (UTC+03:00)</option><option value="25">Africa/Khartoum (UTC+03:00)</option><option value="26">Africa/Kigali (UTC+02:00)</option><option value="27">Africa/Kinshasa (UTC+01:00)</option><option value="28">Africa/Lagos (UTC+01:00)</option><option value="29">Africa/Libreville (UTC+01:00)</option><option value="30">Africa/Lome (UTC+00:00)</option><option value="31">Africa/Luanda (UTC+01:00)</option><option value="32">Africa/Lubumbashi (UTC+02:00)</option><option value="33">Africa/Lusaka (UTC+02:00)</option><option value="34">Africa/Malabo (UTC+01:00)</option><option value="35">Africa/Maputo (UTC+02:00)</option><option value="36">Africa/Maseru (UTC+02:00)</option><option value="37">Africa/Mbabane (UTC+02:00)</option><option value="38">Africa/Mogadishu (UTC+03:00)</option><option value="39">Africa/Monrovia (UTC+00:00)</option><option value="40">Africa/Nairobi (UTC+03:00)</option><option value="41">Africa/Ndjamena (UTC+01:00)</option><option value="42">Africa/Niamey (UTC+01:00)</option><option value="43">Africa/Nouakchott (UTC+00:00)</option><option value="44">Africa/Ouagadougou (UTC+00:00)</option><option value="45">Africa/Porto-Novo (UTC+01:00)</option><option value="46">Africa/Sao Tome (UTC+00:00)</option><option value="47">Africa/Tripoli (UTC+02:00)</option><option value="48">Africa/Tunis (UTC+01:00)</option><option value="49">Africa/Windhoek (UTC+01:00)</option><option value="50">America/Adak (UTC-10:00)</option><option value="51">America/Anchorage (UTC-09:00)</option><option value="52">America/Anguilla (UTC-04:00)</option><option value="53">America/Antigua (UTC-04:00)</option><option value="54">America/Araguaina (UTC-03:00)</option><option value="55">America/Argentina/Buenos Aires (UTC-03:00)</option><option value="56">America/Argentina/Catamarca (UTC-03:00)</option><option value="57">America/Argentina/Cordoba (UTC-03:00)</option><option value="58">America/Argentina/Jujuy (UTC-03:00)</option><option value="59">America/Argentina/La Rioja (UTC-03:00)</option><option value="60">America/Argentina/Mendoza (UTC-03:00)</option><option value="61">America/Argentina/Rio Gallegos (UTC-03:00)</option><option value="62">America/Argentina/Salta (UTC-03:00)</option><option value="63">America/Argentina/San Juan (UTC-03:00)</option><option value="64">America/Argentina/Tucuman (UTC-03:00)</option><option value="65">America/Argentina/Ushuaia (UTC-03:00)</option><option value="66">America/Aruba (UTC-04:00)</option><option value="67">America/Asuncion (UTC-04:00)</option><option value="68">America/Atikokan (UTC-05:00)</option><option value="69">America/Bahia (UTC-03:00)</option><option value="70">America/Barbados (UTC-04:00)</option><option value="71">America/Belem (UTC-03:00)</option><option value="72">America/Belize (UTC-06:00)</option><option value="73">America/Blanc-Sablon (UTC-04:00)</option><option value="74">America/Boa Vista (UTC-04:00)</option><option value="75">America/Bogota (UTC-05:00)</option><option value="76">America/Boise (UTC-07:00)</option><option value="77">America/Cambridge Bay (UTC-07:00)</option><option value="78">America/Campo Grande (UTC-04:00)</option><option value="79">America/Cancun (UTC-06:00)</option><option value="80">America/Caracas (UTC-04:30)</option><option value="81">America/Cayenne (UTC-03:00)</option><option value="82">America/Cayman (UTC-05:00)</option><option value="83">America/Chicago (UTC-06:00)</option><option value="84">America/Chihuahua (UTC-07:00)</option><option value="85">America/Costa Rica (UTC-06:00)</option><option value="86">America/Cuiaba (UTC-04:00)</option><option value="87">America/Curacao (UTC-04:00)</option><option value="88">America/Danmarkshavn (UTC+00:00)</option><option value="89">America/Dawson (UTC-08:00)</option><option value="90">America/Dawson Creek (UTC-07:00)</option><option value="91">America/Denver (UTC-07:00)</option><option value="92">America/Detroit (UTC-05:00)</option><option value="93">America/Dominica (UTC-04:00)</option><option value="94">America/Edmonton (UTC-07:00)</option><option value="95">America/Eirunepe (UTC-04:00)</option><option value="96">America/El Salvador (UTC-06:00)</option><option value="97">America/Fortaleza (UTC-03:00)</option><option value="98">America/Glace Bay (UTC-04:00)</option><option value="99">America/Goose Bay (UTC-04:00)</option><option value="100">America/Grand Turk (UTC-05:00)</option><option value="101">America/Grenada (UTC-04:00)</option><option value="102">America/Guadeloupe (UTC-04:00)</option><option value="103">America/Guatemala (UTC-06:00)</option><option value="104">America/Guayaquil (UTC-05:00)</option><option value="105">America/Guyana (UTC-04:00)</option><option value="106">America/Halifax (UTC-04:00)</option><option value="107">America/Havana (UTC-05:00)</option><option value="108">America/Hermosillo (UTC-07:00)</option><option value="109">America/Indiana/Indianapolis (UTC-05:00)</option><option value="110">America/Indiana/Knox (UTC-06:00)</option><option value="111">America/Indiana/Marengo (UTC-05:00)</option><option value="112">America/Indiana/Petersburg (UTC-05:00)</option><option value="113">America/Indiana/Tell City (UTC-06:00)</option><option value="114">America/Indiana/Vevay (UTC-05:00)</option><option value="115">America/Indiana/Vincennes (UTC-05:00)</option><option value="116">America/Indiana/Winamac (UTC-05:00)</option><option value="117">America/Inuvik (UTC-07:00)</option><option value="118">America/Iqaluit (UTC-05:00)</option><option value="119">America/Jamaica (UTC-05:00)</option><option value="120">America/Juneau (UTC-09:00)</option><option value="121">America/Kentucky/Louisville (UTC-05:00)</option><option value="122">America/Kentucky/Monticello (UTC-05:00)</option><option value="123">America/La Paz (UTC-04:00)</option><option value="124">America/Lima (UTC-05:00)</option><option value="125">America/Los Angeles (UTC-08:00)</option><option value="126">America/Maceio (UTC-03:00)</option><option value="127">America/Managua (UTC-06:00)</option><option value="128">America/Manaus (UTC-04:00)</option><option value="129">America/Marigot (UTC-04:00)</option><option value="130">America/Martinique (UTC-04:00)</option><option value="131">America/Matamoros (UTC-06:00)</option><option value="132">America/Mazatlan (UTC-07:00)</option><option value="133">America/Menominee (UTC-06:00)</option><option value="134">America/Merida (UTC-06:00)</option><option value="135">America/Mexico City (UTC-06:00)</option><option value="136">America/Miquelon (UTC-03:00)</option><option value="137">America/Moncton (UTC-04:00)</option><option value="138">America/Monterrey (UTC-06:00)</option><option value="139">America/Montevideo (UTC-03:00)</option><option value="140">America/Montreal (UTC-05:00)</option><option value="141">America/Montserrat (UTC-04:00)</option><option value="142">America/Nassau (UTC-05:00)</option><option value="143">America/New York (UTC-05:00)</option><option value="144">America/Nipigon (UTC-05:00)</option><option value="145">America/Nome (UTC-09:00)</option><option value="146">America/Noronha (UTC-02:00)</option><option value="147">America/North Dakota/Center (UTC-06:00)</option><option value="148">America/North Dakota/New Salem (UTC-06:00)</option><option value="149">America/Ojinaga (UTC-07:00)</option><option value="150">America/Panama (UTC-05:00)</option><option value="151">America/Pangnirtung (UTC-05:00)</option><option value="152">America/Paramaribo (UTC-03:00)</option><option value="153">America/Phoenix (UTC-07:00)</option><option value="154">America/Port of Spain (UTC-04:00)</option><option value="155">America/Port-au-Prince (UTC-05:00)</option><option value="156">America/Porto Velho (UTC-04:00)</option><option value="157">America/Puerto Rico (UTC-04:00)</option><option value="158">America/Rainy River (UTC-06:00)</option><option value="159">America/Rankin Inlet (UTC-06:00)</option><option value="160">America/Recife (UTC-03:00)</option><option value="161">America/Regina (UTC-06:00)</option><option value="162">America/Rio Branco (UTC-04:00)</option><option value="163">America/Santa Isabel (UTC-08:00)</option><option value="164">America/Santarem (UTC-03:00)</option><option value="165">America/Santo Domingo (UTC-04:00)</option><option value="166">America/Sao Paulo (UTC-03:00)</option><option value="167">America/Scoresbysund (UTC-01:00)</option><option value="168">America/Shiprock (UTC-07:00)</option><option value="169">America/St Barthelemy (UTC-04:00)</option><option value="170">America/St Johns (UTC-03:30)</option><option value="171">America/St Kitts (UTC-04:00)</option><option value="172">America/St Lucia (UTC-04:00)</option><option value="173">America/St Thomas (UTC-04:00)</option><option value="174">America/St Vincent (UTC-04:00)</option><option value="175">America/Swift Current (UTC-06:00)</option><option value="176">America/Tegucigalpa (UTC-06:00)</option><option value="177">America/Thule (UTC-04:00)</option><option value="178">America/Thunder Bay (UTC-05:00)</option><option value="179">America/Tijuana (UTC-08:00)</option><option value="180">America/Toronto (UTC-05:00)</option><option value="181">America/Tortola (UTC-04:00)</option><option value="182">America/Vancouver (UTC-08:00)</option><option value="183">America/Whitehorse (UTC-08:00)</option><option value="184">America/Winnipeg (UTC-06:00)</option><option value="185">America/Yakutat (UTC-09:00)</option><option value="186">America/Yellowknife (UTC-07:00)</option><option value="187">Antarctica/Casey (UTC+08:00)</option><option value="188">Antarctica/Davis (UTC+07:00)</option><option value="189">Antarctica/DumontDUrville (UTC+10:00)</option><option value="190">Antarctica/Macquarie (UTC+11:00)</option><option value="191">Antarctica/Mawson (UTC+05:00)</option><option value="192">Antarctica/McMurdo (UTC+12:00)</option><option value="193">Antarctica/Rothera (UTC-03:00)</option><option value="194">Antarctica/South Pole (UTC+12:00)</option><option value="195">Antarctica/Syowa (UTC+03:00)</option><option value="196">Antarctica/Vostok (UTC+06:00)</option><option value="197">Arctic/Longyearbyen (UTC+01:00)</option><option value="198">Asia/Aden (UTC+03:00)</option><option value="199">Asia/Almaty (UTC+06:00)</option><option value="200">Asia/Anadyr (UTC+11:00)</option><option value="201">Asia/Aqtau (UTC+05:00)</option><option value="202">Asia/Aqtobe (UTC+05:00)</option><option value="203">Asia/Ashgabat (UTC+05:00)</option><option value="204">Asia/Baghdad (UTC+03:00)</option><option value="205">Asia/Bahrain (UTC+03:00)</option><option value="206">Asia/Baku (UTC+04:00)</option><option value="207">Asia/Bangkok (UTC+07:00)</option><option value="208">Asia/Beirut (UTC+02:00)</option><option value="209">Asia/Bishkek (UTC+06:00)</option><option value="210">Asia/Brunei (UTC+08:00)</option><option value="211">Asia/Choibalsan (UTC+08:00)</option><option value="212">Asia/Chongqing (UTC+08:00)</option><option value="213">Asia/Colombo (UTC+05:30)</option><option value="214">Asia/Damascus (UTC+02:00)</option><option value="215">Asia/Dhaka (UTC+06:00)</option><option value="216">Asia/Dili (UTC+09:00)</option><option value="217">Asia/Dubai (UTC+04:00)</option><option value="218">Asia/Dushanbe (UTC+05:00)</option><option value="219">Asia/Gaza (UTC+02:00)</option><option value="220">Asia/Harbin (UTC+08:00)</option><option value="221">Asia/Ho Chi Minh (UTC+07:00)</option><option value="222">Asia/Hong Kong (UTC+08:00)</option><option value="223">Asia/Hovd (UTC+07:00)</option><option value="224">Asia/Irkutsk (UTC+08:00)</option><option value="225">Asia/Jakarta (UTC+07:00)</option><option value="226">Asia/Jayapura (UTC+09:00)</option><option value="227">Asia/Kabul (UTC+04:30)</option><option value="228">Asia/Kamchatka (UTC+11:00)</option><option value="229">Asia/Karachi (UTC+05:00)</option><option value="230">Asia/Kashgar (UTC+08:00)</option><option value="231">Asia/Kathmandu (UTC+05:45)</option><option value="232">Asia/Kolkata (UTC+05:30)</option><option value="233">Asia/Krasnoyarsk (UTC+07:00)</option><option value="234">Asia/Kuala Lumpur (UTC+08:00)</option><option value="235">Asia/Kuching (UTC+08:00)</option><option value="236">Asia/Kuwait (UTC+03:00)</option><option value="237">Asia/Macau (UTC+08:00)</option><option value="238">Asia/Magadan (UTC+11:00)</option><option value="239">Asia/Makassar (UTC+08:00)</option><option value="240">Asia/Manila (UTC+08:00)</option><option value="241">Asia/Muscat (UTC+04:00)</option><option value="242">Asia/Nicosia (UTC+02:00)</option><option value="243">Asia/Novokuznetsk (UTC+06:00)</option><option value="244">Asia/Novosibirsk (UTC+06:00)</option><option value="245">Asia/Omsk (UTC+07:00)</option><option value="246">Asia/Oral (UTC+05:00)</option><option value="247">Asia/Phnom Penh (UTC+07:00)</option><option value="248">Asia/Pontianak (UTC+07:00)</option><option value="249">Asia/Pyongyang (UTC+09:00)</option><option value="250">Asia/Qatar (UTC+03:00)</option><option value="251">Asia/Qyzylorda (UTC+06:00)</option><option value="252">Asia/Rangoon (UTC+06:30)</option><option value="253">Asia/Riyadh (UTC+03:00)</option><option value="254">Asia/Sakhalin (UTC+10:00)</option><option value="255">Asia/Samarkand (UTC+05:00)</option><option value="256">Asia/Seoul (UTC+09:00)</option><option value="257">Asia/Shanghai (UTC+08:00)</option><option value="258">Asia/Singapore (UTC+08:00)</option><option value="259" selected>Asia/Taipei (UTC+08:00)</option><option value="260">Asia/Tashkent (UTC+05:00)</option><option value="261">Asia/Tbilisi (UTC+04:00)</option><option value="262">Asia/Thimphu (UTC+06:00)</option><option value="263">Asia/Tokyo (UTC+09:00)</option><option value="264">Asia/Ulaanbaatar (UTC+08:00)</option><option value="265">Asia/Urumqi (UTC+08:00)</option><option value="266">Asia/Vientiane (UTC+07:00)</option><option value="267">Asia/Vladivostok (UTC+10:00)</option><option value="268">Asia/Yakutsk (UTC+09:00)</option><option value="269">Asia/Yekaterinburg (UTC+05:00)</option><option value="270">Asia/Yerevan (UTC+04:00)</option><option value="271">Atlantic/Azores (UTC-01:00)</option><option value="272">Atlantic/Bermuda (UTC-04:00)</option><option value="273">Atlantic/Canary (UTC+00:00)</option><option value="274">Atlantic/Cape Verde (UTC-01:00)</option><option value="275">Atlantic/Faroe (UTC+00:00)</option><option value="276">Atlantic/Madeira (UTC+00:00)</option><option value="277">Atlantic/Reykjavik (UTC+00:00)</option><option value="278">Atlantic/South Georgia (UTC-02:00)</option><option value="279">Atlantic/St Helena (UTC+00:00)</option><option value="280">Atlantic/Stanley (UTC-04:00)</option><option value="281">Australia/Adelaide (UTC+09:30)</option><option value="282">Australia/Brisbane (UTC+10:00)</option><option value="283">Australia/Broken Hill (UTC+09:30)</option><option value="284">Australia/Currie (UTC+10:00)</option><option value="285">Australia/Darwin (UTC+09:30)</option><option value="286">Australia/Eucla (UTC+08:45)</option><option value="287">Australia/Hobart (UTC+10:00)</option><option value="288">Australia/Lindeman (UTC+10:00)</option><option value="289">Australia/Lord Howe (UTC+10:30)</option><option value="290">Australia/Melbourne (UTC+10:00)</option><option value="291">Australia/Perth (UTC+08:00)</option><option value="292">Australia/Sydney (UTC+10:00)</option><option value="293">Europe/Amsterdam (UTC+01:00)</option><option value="294">Europe/Andorra (UTC+01:00)</option><option value="295">Europe/Athens (UTC+02:00)</option><option value="296">Europe/Belgrade (UTC+01:00)</option><option value="297">Europe/Berlin (UTC+01:00)</option><option value="298">Europe/Bratislava (UTC+01:00)</option><option value="299">Europe/Brussels (UTC+01:00)</option><option value="300">Europe/Bucharest (UTC+02:00)</option><option value="301">Europe/Budapest (UTC+01:00)</option><option value="302">Europe/Chisinau (UTC+02:00)</option><option value="303">Europe/Copenhagen (UTC+01:00)</option><option value="304">Europe/Dublin (UTC+00:00)</option><option value="305">Europe/Gibraltar (UTC+01:00)</option><option value="306">Europe/Guernsey (UTC+00:00)</option><option value="307">Europe/Helsinki (UTC+02:00)</option><option value="308">Europe/Isle of Man (UTC+00:00)</option><option value="309">Europe/Istanbul (UTC+02:00)</option><option value="310">Europe/Jersey (UTC+00:00)</option><option value="311">Europe/Kaliningrad (UTC+02:00)</option><option value="312">Europe/Kiev (UTC+02:00)</option><option value="313">Europe/Lisbon (UTC+00:00)</option><option value="314">Europe/Ljubljana (UTC+01:00)</option><option value="315">Europe/London (UTC+00:00)</option><option value="316">Europe/Luxembourg (UTC+01:00)</option><option value="317">Europe/Madrid (UTC+01:00)</option><option value="318">Europe/Malta (UTC+01:00)</option><option value="319">Europe/Mariehamn (UTC+02:00)</option><option value="320">Europe/Minsk (UTC+02:00)</option><option value="321">Europe/Monaco (UTC+01:00)</option><option value="322">Europe/Moscow (UTC+04:00)</option><option value="323">Europe/Oslo (UTC+01:00)</option><option value="324">Europe/Paris (UTC+01:00)</option><option value="325">Europe/Podgorica (UTC+01:00)</option><option value="326">Europe/Prague (UTC+01:00)</option><option value="327">Europe/Riga (UTC+02:00)</option><option value="328">Europe/Rome (UTC+01:00)</option><option value="329">Europe/Samara (UTC+03:00)</option><option value="330">Europe/San Marino (UTC+01:00)</option><option value="331">Europe/Sarajevo (UTC+01:00)</option><option value="332">Europe/Simferopol (UTC+02:00)</option><option value="333">Europe/Skopje (UTC+01:00)</option><option value="334">Europe/Sofia (UTC+02:00)</option><option value="335">Europe/Stockholm (UTC+01:00)</option><option value="336">Europe/Tallinn (UTC+02:00)</option><option value="337">Europe/Tirane (UTC+01:00)</option><option value="338">Europe/Uzhgorod (UTC+02:00)</option><option value="339">Europe/Vaduz (UTC+01:00)</option><option value="340">Europe/Vatican (UTC+01:00)</option><option value="341">Europe/Vienna (UTC+01:00)</option><option value="342">Europe/Vilnius (UTC+02:00)</option><option value="343">Europe/Volgograd (UTC+03:00)</option><option value="344">Europe/Warsaw (UTC+01:00)</option><option value="345">Europe/Zagreb (UTC+01:00)</option><option value="346">Europe/Zaporozhye (UTC+02:00)</option><option value="347">Europe/Zurich (UTC+01:00)</option><option value="348">Indian/Antananarivo (UTC+03:00)</option><option value="349">Indian/Chagos (UTC+06:00)</option><option value="350">Indian/Christmas (UTC+07:00)</option><option value="351">Indian/Cocos (UTC+06:30)</option><option value="352">Indian/Comoro (UTC+03:00)</option><option value="353">Indian/Kerguelen (UTC+05:00)</option><option value="354">Indian/Mahe (UTC+04:00)</option><option value="355">Indian/Maldives (UTC+05:00)</option><option value="356">Indian/Mauritius (UTC+04:00)</option><option value="357">Indian/Mayotte (UTC+03:00)</option><option value="358">Indian/Reunion (UTC+04:00)</option><option value="359">Pacific/Apia (UTC-11:00)</option><option value="360">Pacific/Auckland (UTC+12:00)</option><option value="361">Pacific/Chatham (UTC+12:45)</option><option value="362">Pacific/Efate (UTC+11:00)</option><option value="363">Pacific/Enderbury (UTC+13:00)</option><option value="364">Pacific/Fakaofo (UTC-10:00)</option><option value="365">Pacific/Fiji (UTC+12:00)</option><option value="366">Pacific/Funafuti (UTC+12:00)</option><option value="367">Pacific/Galapagos (UTC-06:00)</option><option value="368">Pacific/Gambier (UTC-09:00)</option><option value="369">Pacific/Guadalcanal (UTC+11:00)</option><option value="370">Pacific/Guam (UTC+10:00)</option><option value="371">Pacific/Honolulu (UTC-10:00)</option><option value="372">Pacific/Johnston (UTC-10:00)</option><option value="373">Pacific/Kiritimati (UTC+14:00)</option><option value="374">Pacific/Kosrae (UTC+11:00)</option><option value="375">Pacific/Kwajalein (UTC+12:00)</option><option value="376">Pacific/Majuro (UTC+12:00)</option><option value="377">Pacific/Marquesas (UTC-09:30)</option><option value="378">Pacific/Midway (UTC-11:00)</option><option value="379">Pacific/Nauru (UTC+12:00)</option><option value="380">Pacific/Niue (UTC-11:00)</option><option value="381">Pacific/Norfolk (UTC+11:30)</option><option value="382">Pacific/Noumea (UTC+11:00)</option><option value="383">Pacific/Pago Pago (UTC-11:00)</option><option value="384">Pacific/Palau (UTC+09:00)</option><option value="385">Pacific/Pitcairn (UTC-08:00)</option><option value="386">Pacific/Ponape (UTC+11:00)</option><option value="387">Pacific/Port Moresby (UTC+10:00)</option><option value="388">Pacific/Rarotonga (UTC-10:00)</option><option value="389">Pacific/Saipan (UTC+10:00)</option><option value="390">Pacific/Tahiti (UTC-10:00)</option><option value="391">Pacific/Tarawa (UTC+12:00)</option><option value="392">Pacific/Tongatapu (UTC+13:00)</option><option value="393">Pacific/Truk (UTC+10:00)</option><option value="394">Pacific/Wake (UTC+12:00)</option><option value="395">Pacific/Wallis (UTC+12:00)</option>
             </select>
      </td>
  </tr>
  <tr><th>Enable Daylight Saving Time</th>
   <td><input type="checkbox" name="dst_enabled" value="ON">
      </td>
  </tr>
  <tr><th>Enable SNTP Client Update</th>
   <td>
    <input type="checkbox" name="enabled" value="ON" ONCLICK=updateState(document.time)>
      </td>
  </tr>
  <tr>
   <th width="25%">WAN Interface:</th>
   <td width="75%">
    <select name="ext_if" >
     <option value=65535>Any</option>
     <option value=130816>nas0_0</option>

    </select>
   </td>
  </tr>
  <tr>
   <th width ="25%"> SNTP Server : </th>
   <td width ="75%">
    <input type="radio" value="0" name="ntpServerId"></input>
    <select name="ntpServerHost1">
     <option value="192.5.41.41">192.5.41.41 - North America</option>
     <option value="192.5.41.209">192.5.41.209 - North America</option>
     <option value="130.149.17.8">130.149.17.8 - Europe</option>
     <option value="203.117.180.36">203.117.180.36 - Asia Pacific</option>
    </select>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <input type="radio" value="1" name="ntpServerId"></input>
    <!--ping_zhang:20081217 START:patch from telefonica branch to support WT-107-->
    <input type="text" name="ntpServerHost2" size="15" maxlength="30" value=220.130.158.52> (Manual Setting)
   </td>
  </tr>
 </table>
</div>
<div class="adsl clearfix">
 <input type="hidden" value="/tz.asp" name="submit-url">
 <input class="link_bg" type="submit" value="Apply Changes" name="save" onClick="return saveChanges(document.time,this)">
 <input class="link_bg" type="button" value="Refresh" name="refresh" onClick="javascript: window.location.reload()">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<script>
 document.time.dst_enabled.checked = true;
document.time.ntpServerId[0].checked = true;

 setNtpServer(document.time.ntpServerHost1, "203.117.180.36");
 updateState(document.time);
 ifIdx = 65535;
 document.time.ext_if.selectedIndex = 0;
 for( i = 1; i < document.time.ext_if.options.length; i++ )
 {
  if( ifIdx == document.time.ext_if.options[i].value )
   document.time.ext_if.selectedIndex = i;
 }
</script>
</body>
</html>

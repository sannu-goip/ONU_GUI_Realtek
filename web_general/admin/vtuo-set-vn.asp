<%SendWebHeadStr(); %>
<title>VTU-O Settings</title>
<SCRIPT>
function psd_saveChanges(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function psd_load_clear()
{
 document.set_vtuo_psd.ToneIdDs1.value='0';
 document.set_vtuo_psd.PsdDs1.value='0.0';
 document.set_vtuo_psd.ToneIdDs2.value='0';
 document.set_vtuo_psd.PsdDs2.value='0.0';
 document.set_vtuo_psd.ToneIdDs3.value='0';
 document.set_vtuo_psd.PsdDs3.value='0.0';
 document.set_vtuo_psd.ToneIdDs4.value='0';
 document.set_vtuo_psd.PsdDs4.value='0.0';
 document.set_vtuo_psd.ToneIdDs5.value='0';
 document.set_vtuo_psd.PsdDs5.value='0.0';
 document.set_vtuo_psd.ToneIdDs6.value='0';
 document.set_vtuo_psd.PsdDs6.value='0.0';
 document.set_vtuo_psd.ToneIdDs7.value='0';
 document.set_vtuo_psd.PsdDs7.value='0.0';
 document.set_vtuo_psd.ToneIdDs8.value='0';
 document.set_vtuo_psd.PsdDs8.value='0.0';
 document.set_vtuo_psd.ToneIdDs9.value='0';
 document.set_vtuo_psd.PsdDs9.value='0.0';
 document.set_vtuo_psd.ToneIdDs10.value='0';
 document.set_vtuo_psd.PsdDs10.value='0.0';
 document.set_vtuo_psd.ToneIdDs11.value='0';
 document.set_vtuo_psd.PsdDs11.value='0.0';
 document.set_vtuo_psd.ToneIdDs12.value='0';
 document.set_vtuo_psd.PsdDs12.value='0.0';
 document.set_vtuo_psd.ToneIdDs13.value='0';
 document.set_vtuo_psd.PsdDs13.value='0.0';
 document.set_vtuo_psd.ToneIdDs14.value='0';
 document.set_vtuo_psd.PsdDs14.value='0.0';
 document.set_vtuo_psd.ToneIdDs15.value='0';
 document.set_vtuo_psd.PsdDs15.value='0.0';
 document.set_vtuo_psd.ToneIdDs16.value='0';
 document.set_vtuo_psd.PsdDs16.value='0.0';
 document.set_vtuo_psd.ToneIdDs17.value='0';
 document.set_vtuo_psd.PsdDs17.value='0.0';
 document.set_vtuo_psd.ToneIdDs18.value='0';
 document.set_vtuo_psd.PsdDs18.value='0.0';
 document.set_vtuo_psd.ToneIdDs19.value='0';
 document.set_vtuo_psd.PsdDs19.value='0.0';
 document.set_vtuo_psd.ToneIdDs20.value='0';
 document.set_vtuo_psd.PsdDs20.value='0.0';
 document.set_vtuo_psd.ToneIdDs21.value='0';
 document.set_vtuo_psd.PsdDs21.value='0.0';
 document.set_vtuo_psd.ToneIdDs22.value='0';
 document.set_vtuo_psd.PsdDs22.value='0.0';
 document.set_vtuo_psd.ToneIdDs23.value='0';
 document.set_vtuo_psd.PsdDs23.value='0.0';
 document.set_vtuo_psd.ToneIdDs24.value='0';
 document.set_vtuo_psd.PsdDs24.value='0.0';
 document.set_vtuo_psd.ToneIdDs25.value='0';
 document.set_vtuo_psd.PsdDs25.value='0.0';
 document.set_vtuo_psd.ToneIdDs26.value='0';
 document.set_vtuo_psd.PsdDs26.value='0.0';
 document.set_vtuo_psd.ToneIdDs27.value='0';
 document.set_vtuo_psd.PsdDs27.value='0.0';
 document.set_vtuo_psd.ToneIdDs28.value='0';
 document.set_vtuo_psd.PsdDs28.value='0.0';
 document.set_vtuo_psd.ToneIdDs29.value='0';
 document.set_vtuo_psd.PsdDs29.value='0.0';
 document.set_vtuo_psd.ToneIdDs30.value='0';
 document.set_vtuo_psd.PsdDs30.value='0.0';
 document.set_vtuo_psd.ToneIdDs31.value='0';
 document.set_vtuo_psd.PsdDs31.value='0.0';
 document.set_vtuo_psd.ToneIdDs32.value='0';
 document.set_vtuo_psd.PsdDs32.value='0.0';
 document.set_vtuo_psd.ToneIdUs1.value='0';
 document.set_vtuo_psd.PsdUs1.value='0.0';
 document.set_vtuo_psd.ToneIdUs2.value='0';
 document.set_vtuo_psd.PsdUs2.value='0.0';
 document.set_vtuo_psd.ToneIdUs3.value='0';
 document.set_vtuo_psd.PsdUs3.value='0.0';
 document.set_vtuo_psd.ToneIdUs4.value='0';
 document.set_vtuo_psd.PsdUs4.value='0.0';
 document.set_vtuo_psd.ToneIdUs5.value='0';
 document.set_vtuo_psd.PsdUs5.value='0.0';
 document.set_vtuo_psd.ToneIdUs6.value='0';
 document.set_vtuo_psd.PsdUs6.value='0.0';
 document.set_vtuo_psd.ToneIdUs7.value='0';
 document.set_vtuo_psd.PsdUs7.value='0.0';
 document.set_vtuo_psd.ToneIdUs8.value='0';
 document.set_vtuo_psd.PsdUs8.value='0.0';
 document.set_vtuo_psd.ToneIdUs9.value='0';
 document.set_vtuo_psd.PsdUs9.value='0.0';
 document.set_vtuo_psd.ToneIdUs10.value='0';
 document.set_vtuo_psd.PsdUs10.value='0.0';
 document.set_vtuo_psd.ToneIdUs11.value='0';
 document.set_vtuo_psd.PsdUs11.value='0.0';
 document.set_vtuo_psd.ToneIdUs12.value='0';
 document.set_vtuo_psd.PsdUs12.value='0.0';
 document.set_vtuo_psd.ToneIdUs13.value='0';
 document.set_vtuo_psd.PsdUs13.value='0.0';
 document.set_vtuo_psd.ToneIdUs14.value='0';
 document.set_vtuo_psd.PsdUs14.value='0.0';
 document.set_vtuo_psd.ToneIdUs15.value='0';
 document.set_vtuo_psd.PsdUs15.value='0.0';
 document.set_vtuo_psd.ToneIdUs16.value='0';
 document.set_vtuo_psd.PsdUs16.value='0.0';
}
function psd_load_mib()
{
<% vtuo_checkWrite("vn-init-tbl"); %>
}
function psd_freq( id )
{
 var frequnit=43125;
 var new_freq, new_freq1,new_freq2;
 var str_freq;
 new_freq = frequnit*id;
 new_freq2 = new_freq % 10000;
 new_freq1 = (new_freq-new_freq2) / 10000;
 if(new_freq2==0)
  str_freq = new_freq1.toString() + '.0000';
 else if(new_freq2<10)
  str_freq = new_freq1.toString() + '.000' + new_freq2.toString();
 else if(new_freq2<100)
  str_freq = new_freq1.toString() + '.00' + new_freq2.toString();
 else if(new_freq2<1000)
  str_freq = new_freq1.toString() + '.0' + new_freq2.toString();
 else
  str_freq = new_freq1.toString() + '.' + new_freq2.toString();
 return str_freq;
}
function psd_update_freq()
{
document.set_vtuo_psd.FreqDs1.value=psd_freq(document.set_vtuo_psd.ToneIdDs1.value);
document.set_vtuo_psd.FreqDs2.value=psd_freq(document.set_vtuo_psd.ToneIdDs2.value);
document.set_vtuo_psd.FreqDs3.value=psd_freq(document.set_vtuo_psd.ToneIdDs3.value);
document.set_vtuo_psd.FreqDs4.value=psd_freq(document.set_vtuo_psd.ToneIdDs4.value);
document.set_vtuo_psd.FreqDs5.value=psd_freq(document.set_vtuo_psd.ToneIdDs5.value);
document.set_vtuo_psd.FreqDs6.value=psd_freq(document.set_vtuo_psd.ToneIdDs6.value);
document.set_vtuo_psd.FreqDs7.value=psd_freq(document.set_vtuo_psd.ToneIdDs7.value);
document.set_vtuo_psd.FreqDs8.value=psd_freq(document.set_vtuo_psd.ToneIdDs8.value);
document.set_vtuo_psd.FreqDs9.value=psd_freq(document.set_vtuo_psd.ToneIdDs9.value);
document.set_vtuo_psd.FreqDs10.value=psd_freq(document.set_vtuo_psd.ToneIdDs10.value);
document.set_vtuo_psd.FreqDs11.value=psd_freq(document.set_vtuo_psd.ToneIdDs11.value);
document.set_vtuo_psd.FreqDs12.value=psd_freq(document.set_vtuo_psd.ToneIdDs12.value);
document.set_vtuo_psd.FreqDs13.value=psd_freq(document.set_vtuo_psd.ToneIdDs13.value);
document.set_vtuo_psd.FreqDs14.value=psd_freq(document.set_vtuo_psd.ToneIdDs14.value);
document.set_vtuo_psd.FreqDs15.value=psd_freq(document.set_vtuo_psd.ToneIdDs15.value);
document.set_vtuo_psd.FreqDs16.value=psd_freq(document.set_vtuo_psd.ToneIdDs16.value);
document.set_vtuo_psd.FreqDs17.value=psd_freq(document.set_vtuo_psd.ToneIdDs17.value);
document.set_vtuo_psd.FreqDs18.value=psd_freq(document.set_vtuo_psd.ToneIdDs18.value);
document.set_vtuo_psd.FreqDs19.value=psd_freq(document.set_vtuo_psd.ToneIdDs19.value);
document.set_vtuo_psd.FreqDs20.value=psd_freq(document.set_vtuo_psd.ToneIdDs20.value);
document.set_vtuo_psd.FreqDs21.value=psd_freq(document.set_vtuo_psd.ToneIdDs21.value);
document.set_vtuo_psd.FreqDs22.value=psd_freq(document.set_vtuo_psd.ToneIdDs22.value);
document.set_vtuo_psd.FreqDs23.value=psd_freq(document.set_vtuo_psd.ToneIdDs23.value);
document.set_vtuo_psd.FreqDs24.value=psd_freq(document.set_vtuo_psd.ToneIdDs24.value);
document.set_vtuo_psd.FreqDs25.value=psd_freq(document.set_vtuo_psd.ToneIdDs25.value);
document.set_vtuo_psd.FreqDs26.value=psd_freq(document.set_vtuo_psd.ToneIdDs26.value);
document.set_vtuo_psd.FreqDs27.value=psd_freq(document.set_vtuo_psd.ToneIdDs27.value);
document.set_vtuo_psd.FreqDs28.value=psd_freq(document.set_vtuo_psd.ToneIdDs28.value);
document.set_vtuo_psd.FreqDs29.value=psd_freq(document.set_vtuo_psd.ToneIdDs29.value);
document.set_vtuo_psd.FreqDs30.value=psd_freq(document.set_vtuo_psd.ToneIdDs30.value);
document.set_vtuo_psd.FreqDs31.value=psd_freq(document.set_vtuo_psd.ToneIdDs31.value);
document.set_vtuo_psd.FreqDs32.value=psd_freq(document.set_vtuo_psd.ToneIdDs32.value);
document.set_vtuo_psd.FreqUs1.value=psd_freq(document.set_vtuo_psd.ToneIdUs1.value);
document.set_vtuo_psd.FreqUs2.value=psd_freq(document.set_vtuo_psd.ToneIdUs2.value);
document.set_vtuo_psd.FreqUs3.value=psd_freq(document.set_vtuo_psd.ToneIdUs3.value);
document.set_vtuo_psd.FreqUs4.value=psd_freq(document.set_vtuo_psd.ToneIdUs4.value);
document.set_vtuo_psd.FreqUs5.value=psd_freq(document.set_vtuo_psd.ToneIdUs5.value);
document.set_vtuo_psd.FreqUs6.value=psd_freq(document.set_vtuo_psd.ToneIdUs6.value);
document.set_vtuo_psd.FreqUs7.value=psd_freq(document.set_vtuo_psd.ToneIdUs7.value);
document.set_vtuo_psd.FreqUs8.value=psd_freq(document.set_vtuo_psd.ToneIdUs8.value);
document.set_vtuo_psd.FreqUs9.value=psd_freq(document.set_vtuo_psd.ToneIdUs9.value);
document.set_vtuo_psd.FreqUs10.value=psd_freq(document.set_vtuo_psd.ToneIdUs10.value);
document.set_vtuo_psd.FreqUs11.value=psd_freq(document.set_vtuo_psd.ToneIdUs11.value);
document.set_vtuo_psd.FreqUs12.value=psd_freq(document.set_vtuo_psd.ToneIdUs12.value);
document.set_vtuo_psd.FreqUs13.value=psd_freq(document.set_vtuo_psd.ToneIdUs13.value);
document.set_vtuo_psd.FreqUs14.value=psd_freq(document.set_vtuo_psd.ToneIdUs14.value);
document.set_vtuo_psd.FreqUs15.value=psd_freq(document.set_vtuo_psd.ToneIdUs15.value);
document.set_vtuo_psd.FreqUs16.value=psd_freq(document.set_vtuo_psd.ToneIdUs16.value);
}
function psd_init()
{
<% vtuo_checkWrite("vn-init"); %>
 psd_load_clear();
 psd_load_mib();
 psd_update_freq();
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">VTU-O Settings</p>
 <p class="intro_content"> This page is used to configure the parameters for VTU-O.</p>
</div>
<form action=/boaform/formSetVTUO method=POST name=set_vtuo_psd>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>* Line Profile &nbsp;&gt;&nbsp; Virtual Noise Setup</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <tr>
     <th colspan=4 align=center>Downstream</th>
    <th colspan=4 align=center>Upstream</th>
   </tr>
   <tr>
    <td align=center colspan=4>
     <input type="radio" name="DSVnEnable" value=0 >Disable&nbsp;&nbsp;
     <input type="radio" name="DSVnEnable" value=1 >Enable&nbsp;&nbsp;
    </td>
    <td align=center colspan=4>
     <input type="radio" name="USVnEnable" value=0 >Disable&nbsp;&nbsp;
     <input type="radio" name="USVnEnable" value=1 >Enable&nbsp;&nbsp;
    </td>
   </tr>
   <tr>
    <th align=center>Break<br>Point</th>
    <th align=center>Tone Index</th>
    <th align=center>Frequency<br>(kHz)</th>
    <th align=center>Noise Level<br>(dBm/Hz)</th>
    <th align=center>Break<br>Point</th>
    <th align=center>Tone Index</th>
    <th align=center>Frequency<br>(kHz)</th>
    <th align=center>Noise Level<br>(dBm/Hz)</th>
   </tr>
   <tr>
    <th align=center>1</th>
    <td>
     <input type="text" name="ToneIdDs1" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs1" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs1" size="8" maxlength="8" value="">
    </td>
    <th align=center>1</th>
    <td>
     <input type="text" name="ToneIdUs1" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs1" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs1" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>2</th>
    <td>
     <input type="text" name="ToneIdDs2" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs2" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs2" size="8" maxlength="8" value="">
    </td>
    <th align=center>2</th>
    <td>
     <input type="text" name="ToneIdUs2" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs2" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs2" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>3</th>
    <td>
     <input type="text" name="ToneIdDs3" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs3" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs3" size="8" maxlength="8" value="">
    </td>
    <th align=center>3</th>
    <td>
     <input type="text" name="ToneIdUs3" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs3" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs3" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>4</th>
    <td>
     <input type="text" name="ToneIdDs4" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs4" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs4" size="8" maxlength="8" value="">
    </td>
    <th align=center>4</th>
    <td>
     <input type="text" name="ToneIdUs4" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs4" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs4" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>5</th>
    <td>
     <input type="text" name="ToneIdDs5" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs5" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs5" size="8" maxlength="8" value="">
    </td>
    <th align=center>5</th>
    <td>
     <input type="text" name="ToneIdUs5" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs5" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs5" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>6</th>
    <td>
     <input type="text" name="ToneIdDs6" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs6" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs6" size="8" maxlength="8" value="">
    </td>
    <th align=center>6</th>
    <td>
     <input type="text" name="ToneIdUs6" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs6" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs6" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>7</th>
    <td>
     <input type="text" name="ToneIdDs7" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs7" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs7" size="8" maxlength="8" value="">
    </td>
    <th align=center>7</th>
    <td>
     <input type="text" name="ToneIdUs7" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs7" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs7" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>8</th>
    <td>
     <input type="text" name="ToneIdDs8" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs8" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs8" size="8" maxlength="8" value="">
    </td>
    <th align=center>8</th>
    <td>
     <input type="text" name="ToneIdUs8" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs8" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs8" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>9</th>
    <td>
     <input type="text" name="ToneIdDs9" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs9" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs9" size="8" maxlength="8" value="">
    </td>
    <th align=center>9</th>
    <td>
     <input type="text" name="ToneIdUs9" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs9" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs9" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>10</th>
    <td>
     <input type="text" name="ToneIdDs10" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs10" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs10" size="8" maxlength="8" value="">
    </td>
    <th align=center>10</th>
    <td>
     <input type="text" name="ToneIdUs10" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs10" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs10" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>11</th>
    <td>
     <input type="text" name="ToneIdDs11" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs11" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs11" size="8" maxlength="8" value="">
    </td>
    <th align=center>11</th>
    <td>
     <input type="text" name="ToneIdUs11" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs11" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs11" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>12</th>
    <td>
     <input type="text" name="ToneIdDs12" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs12" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs12" size="8" maxlength="8" value="">
    </td>
    <th align=center>12</th>
    <td>
     <input type="text" name="ToneIdUs12" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs12" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs12" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>13</th>
    <td>
     <input type="text" name="ToneIdDs13" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs13" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs13" size="8" maxlength="8" value="">
    </td>
    <th align=center>13</th>
    <td>
     <input type="text" name="ToneIdUs13" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs13" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs13" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>14</th>
    <td>
     <input type="text" name="ToneIdDs14" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs14" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs14" size="8" maxlength="8" value="">
    </td>
    <th align=center>14</th>
    <td>
     <input type="text" name="ToneIdUs14" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs14" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs14" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>15</th>
    <td>
     <input type="text" name="ToneIdDs15" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs15" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs15" size="8" maxlength="8" value="">
    </td>
    <th align=center>15</th>
    <td>
     <input type="text" name="ToneIdUs15" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs15" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs15" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>16</th>
    <td>
     <input type="text" name="ToneIdDs16" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs16" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs16" size="8" maxlength="8" value="">
    </td>
    <th align=center>16</th>
    <td>
     <input type="text" name="ToneIdUs16" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqUs16" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdUs16" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>17</th>
    <td>
     <input type="text" name="ToneIdDs17" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs17" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs17" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>18</th>
    <td>
     <input type="text" name="ToneIdDs18" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs18" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs18" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>19</th>
    <td>
     <input type="text" name="ToneIdDs19" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs19" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs19" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>20</th>
    <td>
     <input type="text" name="ToneIdDs20" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs20" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs20" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
     </td>
   </tr>
   <tr>
    <th align=center>21</th>
    <td>
     <input type="text" name="ToneIdDs21" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs21" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs21" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>22</th>
    <td>
     <input type="text" name="ToneIdDs22" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs22" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs22" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>23</th>
    <td>
     <input type="text" name="ToneIdDs23" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs23" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs23" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>24</th>
    <td>
     <input type="text" name="ToneIdDs24" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs24" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs24" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>25</th>
    <td>
     <input type="text" name="ToneIdDs25" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs25" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs25" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>26</th>
    <td>
     <input type="text" name="ToneIdDs26" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs26" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs26" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>27</th>
    <td>
     <input type="text" name="ToneIdDs27" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs27" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs27" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>28</th>
    <td>
     <input type="text" name="ToneIdDs28" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs28" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs28" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>29</th>
    <td>
     <input type="text" name="ToneIdDs29" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs29" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs29" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>30</th>
    <td>
     <input type="text" name="ToneIdDs30" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs30" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs30" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
     </td>
   </tr>
   <tr>
    <th align=center>31</th>
    <td>
     <input type="text" name="ToneIdDs31" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs31" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs31" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
   <tr>
    <th align=center>32</th>
    <td>
     <input type="text" name="ToneIdDs32" size="8" maxlength="8" value="" onchange="psd_update_freq()">
    </td>
    <td>
     <input type="text" name="FreqDs32" size="16" maxlength="16" value="" disabled>
    </td>
    <td>
     <input type="text" name="PsdDs32" size="8" maxlength="8" value="">
    </td>
     <td colspan=4>
   </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type=submit value="Apply Changes" name="VnSetup" onClick="return psd_saveChanges(this)">
 &nbsp;&nbsp;&nbsp;
 <input class="link_bg" type=button value="Back" onclick="location.assign('/admin/vtuo-set.asp')">
 <input type=hidden value="/admin/vtuo-set-vn.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<SCRIPT>
psd_init();
</SCRIPT>
</form>
<br>
<br>
</body>
</html>

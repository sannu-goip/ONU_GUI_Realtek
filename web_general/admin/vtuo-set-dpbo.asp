<%SendWebHeadStr(); %>
<title>VTU-O Settings</title>
<SCRIPT>
function dpbo_saveChanges(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function dpbo_load_clear()
{
 document.set_vtuo_dpbo.DpboToneId1.value='0';
 document.set_vtuo_dpbo.DpboPsd1.value='0.0';
 document.set_vtuo_dpbo.DpboToneId2.value='0';
 document.set_vtuo_dpbo.DpboPsd2.value='0.0';
 document.set_vtuo_dpbo.DpboToneId3.value='0';
 document.set_vtuo_dpbo.DpboPsd3.value='0.0';
 document.set_vtuo_dpbo.DpboToneId4.value='0';
 document.set_vtuo_dpbo.DpboPsd4.value='0.0';
 document.set_vtuo_dpbo.DpboToneId5.value='0';
 document.set_vtuo_dpbo.DpboPsd5.value='0.0';
 document.set_vtuo_dpbo.DpboToneId6.value='0';
 document.set_vtuo_dpbo.DpboPsd6.value='0.0';
 document.set_vtuo_dpbo.DpboToneId7.value='0';
 document.set_vtuo_dpbo.DpboPsd7.value='0.0';
 document.set_vtuo_dpbo.DpboToneId8.value='0';
 document.set_vtuo_dpbo.DpboPsd8.value='0.0';
 document.set_vtuo_dpbo.DpboToneId9.value='0';
 document.set_vtuo_dpbo.DpboPsd9.value='0.0';
 document.set_vtuo_dpbo.DpboToneId10.value='0';
 document.set_vtuo_dpbo.DpboPsd10.value='0.0';
 document.set_vtuo_dpbo.DpboToneId11.value='0';
 document.set_vtuo_dpbo.DpboPsd11.value='0.0';
 document.set_vtuo_dpbo.DpboToneId12.value='0';
 document.set_vtuo_dpbo.DpboPsd12.value='0.0';
 document.set_vtuo_dpbo.DpboToneId13.value='0';
 document.set_vtuo_dpbo.DpboPsd13.value='0.0';
 document.set_vtuo_dpbo.DpboToneId14.value='0';
 document.set_vtuo_dpbo.DpboPsd14.value='0.0';
 document.set_vtuo_dpbo.DpboToneId15.value='0';
 document.set_vtuo_dpbo.DpboPsd15.value='0.0';
 document.set_vtuo_dpbo.DpboToneId16.value='0';
 document.set_vtuo_dpbo.DpboPsd16.value='0.0';
}
function dpbo_load_cabansi()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-60.0';
 document.set_vtuo_dpbo.DpboToneId2.value='255';
 document.set_vtuo_dpbo.DpboPsd2.value='-60.0';
 document.set_vtuo_dpbo.DpboToneId3.value='376';
 document.set_vtuo_dpbo.DpboPsd3.value='-50.0';
 document.set_vtuo_dpbo.DpboToneId4.value='511';
 document.set_vtuo_dpbo.DpboPsd4.value='-51.5';
}
function dpbo_load_cabetsi()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-60.0';
 document.set_vtuo_dpbo.DpboToneId2.value='255';
 document.set_vtuo_dpbo.DpboPsd2.value='-60.0';
 document.set_vtuo_dpbo.DpboToneId3.value='323';
 document.set_vtuo_dpbo.DpboPsd3.value='-51.5';
 document.set_vtuo_dpbo.DpboToneId4.value='511';
 document.set_vtuo_dpbo.DpboPsd4.value='-53.0';
}
function dpbo_load_exansi()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId2.value='255';
 document.set_vtuo_dpbo.DpboPsd2.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId3.value='376';
 document.set_vtuo_dpbo.DpboPsd3.value='-42.0';
 document.set_vtuo_dpbo.DpboToneId4.value='511';
 document.set_vtuo_dpbo.DpboPsd4.value='-42.0';
}
function dpbo_load_exetsi()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId2.value='255';
 document.set_vtuo_dpbo.DpboPsd2.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId3.value='388';
 document.set_vtuo_dpbo.DpboPsd3.value='-61.0';
 document.set_vtuo_dpbo.DpboToneId4.value='511';
 document.set_vtuo_dpbo.DpboPsd4.value='-61.0';
}
function dpbo_load_copsd()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId2.value='255';
 document.set_vtuo_dpbo.DpboPsd2.value='-40.0';
 document.set_vtuo_dpbo.DpboToneId3.value='376';
 document.set_vtuo_dpbo.DpboPsd3.value='-50.0';
 document.set_vtuo_dpbo.DpboToneId4.value='511';
 document.set_vtuo_dpbo.DpboPsd4.value='-51.5';
}
function dpbo_load_flatpsd()
{
 document.set_vtuo_dpbo.DpboToneId1.value='1';
 document.set_vtuo_dpbo.DpboPsd1.value='-60.0';
 document.set_vtuo_dpbo.DpboToneId2.value='511';
 document.set_vtuo_dpbo.DpboPsd2.value='-60.0';
}
function dpbo_load_mib()
{
<% vtuo_checkWrite("dpbo-init-tbl"); %>
}
var dpbo_load = 0;
function dpbo_init()
{
<% vtuo_checkWrite("dpbo-init"); %>
 dpbo_load_clear();
 if(dpbo_load==1)
  dpbo_load_cabansi();
 else if(dpbo_load==2)
  dpbo_load_cabetsi();
 else if(dpbo_load==3)
  dpbo_load_exansi();
 else if(dpbo_load==4)
  dpbo_load_exetsi();
 else if(dpbo_load==5)
  dpbo_load_copsd();
 else if(dpbo_load==6)
  dpbo_load_flatpsd();
 else
  dpbo_load_mib();
}
function dpbo_init_all( id )
{
 dpbo_load=id;
 dpbo_init();
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">VTU-O Settings</p>
 <p class="intro_content"> This page is used to configure the parameters for VTU-O.</p>
</div>
<form action=/boaform/formSetVTUO method=POST name=set_vtuo_dpbo>
<h4>* Line Profile &nbsp;&gt;&nbsp; DPBO Setup</h4>
<div class="data_common data_common_notitle">
 <table border=0 cellspacing=4 cellpadding=0>
  <tr>
   <th align=left>DPBO:</th>
   <td>
    <input type="radio" name="DpboEnable" value=0 >Disable&nbsp;&nbsp;
    <input type="radio" name="DpboEnable" value=1 >Enable&nbsp;&nbsp;
   </td>
  </tr>
  <tr>
   <th align=left>DPBOESEL:</th>
   <td>
    <input type="text" name="DpboESel" size="8" maxlength="8" value="">dB
   </td>
  </tr>
  <tr>
   <th align=left>DPBOESCMA:</th>
   <td>
    <input type="text" name="DpboEScma" size="12" maxlength="12" value="">
   </td>
  </tr>
  <tr>
   <th align=left>DPBOESCMB:</th>
   <td>
    <input type="text" name="DpboEScmb" size="12" maxlength="12" value="">
   </td>
  </tr>
  <tr>
   <th align=left>DPBOESCMC:</th>
   <td>
    <input type="text" name="DpboEScmc" size="12" maxlength="12" value="">
   </td>
  </tr>
  <tr>
   <th align=left>DPBOMUS:</th>
   <td>
    <input type="text" name="DpboMus" size="8" maxlength="8" value="">dB
   </td>
  </tr>
  <tr>
   <th align=left>DPBOFMIN:</th>
   <td>
    <input type="text" name="DpboFMin" size="8" maxlength="8" value="">(unit: 4.3125kHz)
   </td>
  </tr>
  <tr>
   <th align=left>DPBOFMAX:</th>
   <td>
    <input type="text" name="DpboFMax" size="8" maxlength="8" value="">(unit: 4.3125kHz)
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input class="link_bg" type=button value="CAB_ANSI" name="DpboLoadCabAnsi" onClick="dpbo_init_all(1);">
 <input class="link_bg" type=button value="CAB_ETSI" name="DpboLoadCabEtsi" onClick="dpbo_init_all(2);">
 <input class="link_bg" type=button value="EX_ANSI" name="DpboLoadExAnsi" onClick="dpbo_init_all(3);">
 <input class="link_bg" type=button value="EX_ETSI" name="DpboLoadExEtsi" onClick="dpbo_init_all(4);">
 <input class="link_bg" type=button value="CO_PSD" name="DpboLoadCoPsd" onClick="dpbo_init_all(5);">
 <input class="link_bg" type=button value="Flat_PSD" name="DpboLoadFlatPsd" onClick="dpbo_init_all(6);">
</div>
<div class="data_vertical data_common_notitle">
  <div class="data_common ">
  <table>
   <tr>
    <th align=center>Break<br>Point</th>
    <th align=center>Tone<br>(Unit: 4.3125 kHz)</th>
    <th align=center>PSD Level<br>(dBm/Hz)</th>
   </tr>
   <tr>
    <th align=center>1</th>
    <td>
     <input type="text" name="DpboToneId1" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq1" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd1" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>2</th>
    <td>
     <input type="text" name="DpboToneId2" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq2" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd2" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>3</th>
    <td>
     <input type="text" name="DpboToneId3" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq3" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd3" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>4</th>
    <td>
     <input type="text" name="DpboToneId4" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq4" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd4" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>5</th>
    <td>
     <input type="text" name="DpboToneId5" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq5" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd5" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>6</th>
    <td>
     <input type="text" name="DpboToneId6" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq6" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd6" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>7</th>
    <td>
     <input type="text" name="DpboToneId7" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq7" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd7" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>8</th>
    <td>
     <input type="text" name="DpboToneId8" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq8" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd8" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>9</th>
    <td>
     <input type="text" name="DpboToneId9" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq9" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd9" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>10</th>
    <td>
     <input type="text" name="DpboToneId10" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq10" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd10" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>11</th>
    <td>
     <input type="text" name="DpboToneId11" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq11" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd11" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>12</th>
    <td>
     <input type="text" name="DpboToneId12" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq12" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd12" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>13</th>
    <td>
     <input type="text" name="DpboToneId13" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq13" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd13" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>14</th>
    <td>
     <input type="text" name="DpboToneId14" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq14" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd14" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>15</th>
    <td>
     <input type="text" name="DpboToneId15" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq15" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd15" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=center>16</th>
    <td>
     <input type="text" name="DpboToneId16" size="8" maxlength="8" value="">
    </td>
   <!--
    <td>
     <input type="text" name="DpboFreq16" size="16" maxlength="16" value="" disabled>
    </td>
   -->
    <td>
     <input type="text" name="DpboPsd16" size="8" maxlength="8" value="">
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type=submit value="Apply Changes" name="DpboSetup" onClick="return dpbo_saveChanges(this)">
 <input class="link_bg" type=button value="Back" onclick="location.assign('/admin/vtuo-set.asp')">
 <input type=hidden value="/admin/vtuo-set-dpbo.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<SCRIPT>
dpbo_init_all(0);
</SCRIPT>
</form>
<br>
<br>
</blockquote>
</body>
</html>

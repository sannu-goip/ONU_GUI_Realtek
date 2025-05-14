<%SendWebHeadStr(); %>
<title>VTU-O Settings</title>
<SCRIPT>
function ginp_ds_mode_change()
{
 if(document.set_vtuo_ginp.DSGinpMode.selectedIndex==0)
 {
  document.set_vtuo_ginp.DSThroMax.disabled=true;
  document.set_vtuo_ginp.DSThroMin.disabled=true;
  document.set_vtuo_ginp.DSNDRMax.disabled=true;
  document.set_vtuo_ginp.DSRatio.disabled=true;
  document.set_vtuo_ginp.DSThres.disabled=true;
  document.set_vtuo_ginp.DSMaxDelay.disabled=true;
  document.set_vtuo_ginp.DSMinDelay.disabled=true;
  document.set_vtuo_ginp.DSINP.disabled=true;
  document.set_vtuo_ginp.DSReinSym.disabled=true;
  document.set_vtuo_ginp.DSReinFreq.disabled=true;
 }else{
  document.set_vtuo_ginp.DSThroMax.disabled=false;
  document.set_vtuo_ginp.DSThroMin.disabled=false;
  document.set_vtuo_ginp.DSNDRMax.disabled=false;
  document.set_vtuo_ginp.DSRatio.disabled=false;
  document.set_vtuo_ginp.DSThres.disabled=false;
  document.set_vtuo_ginp.DSMaxDelay.disabled=false;
  document.set_vtuo_ginp.DSMinDelay.disabled=false;
  document.set_vtuo_ginp.DSINP.disabled=false;
  document.set_vtuo_ginp.DSReinSym.disabled=false;
  document.set_vtuo_ginp.DSReinFreq.disabled=false;
 }
}
function ginp_us_mode_change()
{
 if(document.set_vtuo_ginp.USGinpMode.selectedIndex==0)
 {
  document.set_vtuo_ginp.USThroMax.disabled=true;
  document.set_vtuo_ginp.USThroMin.disabled=true;
  document.set_vtuo_ginp.USNDRMax.disabled=true;
  document.set_vtuo_ginp.USRatio.disabled=true;
  document.set_vtuo_ginp.USThres.disabled=true;
  document.set_vtuo_ginp.USMaxDelay.disabled=true;
  document.set_vtuo_ginp.USMinDelay.disabled=true;
  document.set_vtuo_ginp.USINP.disabled=true;
  document.set_vtuo_ginp.USReinSym.disabled=true;
  document.set_vtuo_ginp.USReinFreq.disabled=true;
 }else{
  document.set_vtuo_ginp.USThroMax.disabled=false;
  document.set_vtuo_ginp.USThroMin.disabled=false;
  document.set_vtuo_ginp.USNDRMax.disabled=false;
  document.set_vtuo_ginp.USRatio.disabled=false;
  document.set_vtuo_ginp.USThres.disabled=false;
  document.set_vtuo_ginp.USMaxDelay.disabled=false;
  document.set_vtuo_ginp.USMinDelay.disabled=false;
  document.set_vtuo_ginp.USINP.disabled=false;
  document.set_vtuo_ginp.USReinSym.disabled=false;
  document.set_vtuo_ginp.USReinFreq.disabled=false;
 }
}
function ginp_saveChanges(obj)
{
 if(document.set_vtuo_ginp.DSGinpMode.selectedIndex!=0)
 {
  if( checkDigit(document.set_vtuo_ginp.DSThroMax.value)==0 )
  {
   alert('<% multilang("2092" "LANG_INVALID_VALUE_FOR_EFFECTIVE_THROUGHPUT"); %>');
   document.set_vtuo_ginp.DSThroMax.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSThroMin.value)==0 )
  {
   alert('<% multilang("2092" "LANG_INVALID_VALUE_FOR_EFFECTIVE_THROUGHPUT"); %>');
   document.set_vtuo_ginp.DSThroMin.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSNDRMax.value)==0 )
  {
   alert('<% multilang("2093" "LANG_INVALID_VALUE_FOR_NET_DATA_RATE"); %>');
   document.set_vtuo_ginp.DSNDRMax.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSRatio.value)==0 )
  {
   alert('<% multilang("2094" "LANG_INVALID_VALUE_FOR_SHINE_RATIO"); %>');
   document.set_vtuo_ginp.DSRatio.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSThres.value)==0 )
  {
   alert('<% multilang("2095" "LANG_INVALID_VALUE_FOR_LEFTR_THRESHOLD"); %>');
   document.set_vtuo_ginp.DSThres.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSMaxDelay.value)==0 )
  {
   alert('<% multilang("2096" "LANG_INVALID_VALUE_FOR_MAX_DELAY"); %>');
   document.set_vtuo_ginp.DSMaxDelay.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.DSMinDelay.value)==0 )
  {
   alert('<% multilang("2097" "LANG_INVALID_VALUE_FOR_MIN_DELAY"); %>');
   document.set_vtuo_ginp.DSMinDelay.focus();
   return false;
  }
 }
 if(document.set_vtuo_ginp.USGinpMode.selectedIndex!=0)
 {
  if( checkDigit(document.set_vtuo_ginp.USThroMax.value)==0 )
  {
   alert('<% multilang("2092" "LANG_INVALID_VALUE_FOR_EFFECTIVE_THROUGHPUT"); %>');
   document.set_vtuo_ginp.USThroMax.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USThroMin.value)==0 )
  {
   alert('<% multilang("2092" "LANG_INVALID_VALUE_FOR_EFFECTIVE_THROUGHPUT"); %>');
   document.set_vtuo_ginp.USThroMin.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USNDRMax.value)==0 )
  {
   alert('<% multilang("2093" "LANG_INVALID_VALUE_FOR_NET_DATA_RATE"); %>');
   document.set_vtuo_ginp.USNDRMax.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USRatio.value)==0 )
  {
   alert('<% multilang("2094" "LANG_INVALID_VALUE_FOR_SHINE_RATIO"); %>');
   document.set_vtuo_ginp.USRatio.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USThres.value)==0 )
  {
   alert('<% multilang("2095" "LANG_INVALID_VALUE_FOR_LEFTR_THRESHOLD"); %>');
   document.set_vtuo_ginp.USThres.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USMaxDelay.value)==0 )
  {
   alert('<% multilang("2096" "LANG_INVALID_VALUE_FOR_MAX_DELAY"); %>');
   document.set_vtuo_ginp.USMaxDelay.focus();
   return false;
  }
  if( checkDigit(document.set_vtuo_ginp.USMinDelay.value)==0 )
  {
   alert('<% multilang("2097" "LANG_INVALID_VALUE_FOR_MIN_DELAY"); %>');
   document.set_vtuo_ginp.USMinDelay.focus();
   return false;
  }
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">VTU-O Settings</p>
 <p class="intro_content"> This page is used to configure the parameters for VTU-O.</p>
</div>
<form action=/boaform/formSetVTUO method=POST name=set_vtuo_ginp>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>* Channel Profile &nbsp;&gt;&nbsp; G.INP Setup</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <tr>
    <th align=left></th>
    <th align=center>Downstream</th>
    <th align=center>Upstream</th>
   </tr>
   <tr>
    <th align=left>G.INP Mode</th>
    <td>
     <select size=1 name="DSGinpMode" onChange="ginp_ds_mode_change()">
      <option value=0>Forbidden</option>
      <option value=1>Preferred</option>
      <option value=2>Forced</option>
      <option value=3>Test</option>
     </select>
    </td>
    <td>
     <select size=1 name="USGinpMode" onChange="ginp_us_mode_change()">
      <option value=0>Forbidden</option>
      <option value=1>Preferred</option>
      <option value=2>Forced</option>
      <option value=3>Test</option>
     </select>
    </td>
   </tr>
   <tr>
    <th align=left>Effective Throughput</th>
    <td>
     Max<input type="text" name="DSThroMax" size="8" maxlength="8" value="">
     Min<input type="text" name="DSThroMin" size="8" maxlength="8" value="">
    </td>
    <td>
     Max<input type="text" name="USThroMax" size="8" maxlength="8" value="">
     Min<input type="text" name="USThroMin" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=left>Net Data Rate(NDR)</th>
    <td>
     Max<input type="text" name="DSNDRMax" size="8" maxlength="8" value="">
    </td>
    <td>
     Max<input type="text" name="USNDRMax" size="8" maxlength="8" value="">
    </td>
   </tr>
   <tr>
    <th align=left>Shine Ratio</th>
    <td>
     <input type="text" name="DSRatio" size="8" maxlength="8" value="">/1000*NDR
    </td>
    <td>
     <input type="text" name="USRatio" size="8" maxlength="8" value="">/1000*NDR
    </td>
   </tr>
   <tr>
    <th align=left>LEFTR Threshold</th>
    <td>
     <input type="text" name="DSThres" size="8" maxlength="8" value="">/100*NDR
    </td>
    <td>
     <input type="text" name="USThres" size="8" maxlength="8" value="">/100*NDR
    </td>
   </tr>
   <tr>
    <th align=left>Max Delay</th>
    <td>
     <input type="text" name="DSMaxDelay" size="8" maxlength="8" value="">ms
    </td>
    <td>
     <input type="text" name="USMaxDelay" size="8" maxlength="8" value="">ms
    </td>
   </tr>
   <tr>
    <th align=left>Min Delay</th>
    <td>
     <input type="text" name="DSMinDelay" size="8" maxlength="8" value="">ms
    </td>
    <td>
     <input type="text" name="USMinDelay" size="8" maxlength="8" value="">ms
    </td>
   </tr>
   <tr>
    <th align=left>Min INP</th>
    <td>
     <select size=1 name="DSINP">
      <option value=0>0</option>
      <option value=1>1</option>
      <option value=2>2</option>
      <option value=3>3</option>
      <option value=4>4</option>
      <option value=5>5</option>
      <option value=6>6</option>
      <option value=7>7</option>
      <option value=8>8</option>
      <option value=9>9</option>
      <option value=10>10</option>
      <option value=11>11</option>
      <option value=12>12</option>
      <option value=13>13</option>
      <option value=14>14</option>
      <option value=15>15</option>
      <option value=16>16</option>
      <option value=17>17</option>
      <option value=18>18</option>
      <option value=19>19</option>
      <option value=20>20</option>
      <option value=21>21</option>
      <option value=22>22</option>
      <option value=23>23</option>
      <option value=24>24</option>
      <option value=25>25</option>
      <option value=26>26</option>
      <option value=27>27</option>
      <option value=28>28</option>
      <option value=29>29</option>
      <option value=30>30</option>
      <option value=31>31</option>
     </select>
     symbol
    </td>
    <td>
     <select size=1 name="USINP">
      <option value=0>0</option>
      <option value=1>1</option>
      <option value=2>2</option>
      <option value=3>3</option>
      <option value=4>4</option>
      <option value=5>5</option>
      <option value=6>6</option>
      <option value=7>7</option>
      <option value=8>8</option>
      <option value=9>9</option>
      <option value=10>10</option>
      <option value=11>11</option>
      <option value=12>12</option>
      <option value=13>13</option>
      <option value=14>14</option>
      <option value=15>15</option>
      <option value=16>16</option>
      <option value=17>17</option>
      <option value=18>18</option>
      <option value=19>19</option>
      <option value=20>20</option>
      <option value=21>21</option>
      <option value=22>22</option>
      <option value=23>23</option>
      <option value=24>24</option>
      <option value=25>25</option>
      <option value=26>26</option>
      <option value=27>27</option>
      <option value=28>28</option>
      <option value=29>29</option>
      <option value=30>30</option>
      <option value=31>31</option>
     </select>
     symbol
    </td>
   </tr>
   <tr>
    <th align=left>REIN Config</th>
    <td>
     <select size=1 name="DSReinSym">
      <option value=0>0</option>
      <option value=1>1</option>
      <option value=2>2</option>
      <option value=3>3</option>
      <option value=4>4</option>
      <option value=5>5</option>
      <option value=6>6</option>
      <option value=7>7</option>
     </select>
     symbol
     <select size=1 name="DSReinFreq">
      <option value=0>100</option>
      <option value=1>120</option>
     </select>
     Hz
    </td>
    <td>
     <select size=1 name="USReinSym">
      <option value=0>0</option>
      <option value=1>1</option>
      <option value=2>2</option>
      <option value=3>3</option>
      <option value=4>4</option>
      <option value=5>5</option>
      <option value=6>6</option>
      <option value=7>7</option>
     </select>
     symbol
     <select size=1 name="USReinFreq">
      <option value=0>100</option>
      <option value=1>120</option>
     </select>
     Hz
    </td>
   </tr>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type=submit value="Apply Changes" name="GinpSetup" onClick="return ginp_saveChanges(this)">
 &nbsp;&nbsp;&nbsp;
 <input class="link_bg" type=button value="Back" onclick="location.assign('/admin/vtuo-set-chan.asp')">
 <input type=hidden value="/admin/vtuo-set-ginp.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<% vtuo_checkWrite("ginp-init"); %>
<script>
ginp_ds_mode_change();
ginp_us_mode_change();
</script>
</form>
<br>
<br>
</body>
</html>

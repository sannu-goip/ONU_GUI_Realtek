
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>SIP</title>
<link rel="stylesheet" href="./admin/style.css">
<link rel="stylesheet" href="./admin/reset.css" />
<link rel="stylesheet" href="./admin/base.css" />
 <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css"> 
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
<script language="javascript" src="common.js"></script>
<script type="text/javascript" src="share.js"></script>
<script language="javascript" src="voip_script.js"></script>
<script type="text/javascript" src="base64_code.js"></script>
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<script language="javascript">
function t38param_click_check()
{
 document.sipform.T38MaxBuffer.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38RateMgt.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38MaxRate.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableECM.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCSignal.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38ECCData.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38EnableSpoof.disabled = !document.sipform.T38ParamEnable.checked;
 document.sipform.T38DuplicateNum.disabled = !document.sipform.T38ParamEnable.checked;
}
function enable_hotline()
{
 document.sipform.hotline_number.disabled = !document.sipform.hotline_enable.checked;
}
function enable_dnd()
{
 document.sipform.dnd_from_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_from_min.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_hour.disabled = !document.sipform.dnd_mode[1].checked;
 document.sipform.dnd_to_min.disabled = !document.sipform.dnd_mode[1].checked;
}
function vad_enable()
{
 document.sipform.sid_mode.disabled = !document.sipform.useVad.checked;
 document.sipform.sid_noiselevel.disabled = (!document.sipform.sid_mode[1].checked) || (!document.sipform.useVad.checked) ;
 document.sipform.sid_noisegain.disabled = (!document.sipform.sid_mode[2].checked) || (!document.sipform.useVad.checked) ;
}
function rtcp_click_check()
{
 document.sipform.RTCPInterval.disabled = !document.sipform.useRTCP.checked;
 document.sipform.useRTCPXR.disabled = !document.sipform.useRTCP.checked;
}
function echotail_check(obj)
{
 if(parseInt(obj.value) != obj.value ||
       parseInt(obj.value) < 2 ||
       parseInt(obj.value) > 32)
    {
        alert('The acceptable range is [2-32]');
    }
}
function on_submit()
{
 postTableEncrypt(document.sipform.postSecurityFlag, document.sipform);
 document.sipform.submit();
}
</script>
<style>
.btn-group-lg>.btn, .btn-lg {
    padding: .5rem 1rem;
    font-size: 1.25rem;
    line-height: 1.5;
    border-radius: .3rem;
}
 .table-bordered {
        border: 1px solid #dee2e6;
    }
    .table-striped tbody tr:nth-of-type(odd) {
        background-color: rgba(0, 0, 0, 0.05);
    }
    .table th,
    .table td {
        border: 1px solid #dee2e6;
    }
    .table thead th {
        background-color: #e9ecef;
    }
.left-field{
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body >
<INPUT id=Selected_Menu type=hidden 
										value="VoIP->VoIP Advanced" name=Selected_Menu> 
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
							        MakeLeftMenu("VoIP",'VoIP Advanced')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"Voice","Advanced VoIP Setup",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							  <h1 class="heading_big bei">Advance Voice Setup</h1>	
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png" width="45" height="47" class="img_sub"  style="margin-bottom: -5px;alt="/>VoIP Advance Config</h1>
										
									</div>	
                                    <hr class="margin_adjs">
 
   <div class="col-md-12 form-group">
        <div class="custom-control">
  <p>This page shows the VoIP Advance Config.</p>
 </div>
 </div>
<form method="post" action="/boaform/voip_advanced_set" name=sipform>
<!-- QoS
<p>
<table cellSpacing=1 cellPadding=1 border=0 style="display:none">
<b>QoS</b>
   <tr>
     <td bgColor=#aaddff>Voice QoS</td>
  <td bgColor=#ddeeff>
  <select name=voice_qos>
    ""
  </select>
  </td>
  <td bgColor=#ddeeff></td>
 </tr>
</table>
-->
<!-- V.152 -->
<div class="column">
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">V.152</h2>
        </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">V.152:</label>
                <input type="checkbox" name="useV152" size="20" class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">V.152 Payload Type:</label>
                <input type="text" name="V152_payload_type" size="20" value="102" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">V.152 codec type:</label>
                <select name="V152_codec_type" class="right-field">
                    <option value="0" selected>PCM u-law</option>
                    <option value="8">PCM a-law</option>
                </select>
            </div>
        </div>
    </div>
</div>
<!-- T.38 (FAX) -->
<!-- ++T.38 config add by Jack Chan++ -->

<!-- style:display:none(hidden) style:display:table(show) -->

  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">T.38(FAX)</h2>
  </div>
 </div>
 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">T.38:</label>
            <input type="checkbox" name="useT38" size="20" class="right-field-checkbox"> Enable
        </div>
    </div>
    <!--
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">T.38 Port:</label>
            <input type="text" name="T38_PORT" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    -->
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Fax Modem Detection Mode:</label>
            <select name="fax_modem_det_mode" class="right-field">
                <option>AUTO</option>
                <option>FAX</option>
                <option>MODEM</option>
                <option selected>AUTO_2</option>
            </select>
        </div>
    </div>
</div>

<!-- ++T.38 config add by Jack Chan++ -->

<!-- style:display:none(hidden) style:display:table(show) -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">T.38(Customize parameters)</h2>
  </div>
 </div>

<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Customize parameters:</label>
            <input type="checkbox" name="T38ParamEnable" size="20" onclick="t38param_click_check()" class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Max buffer:</label>
            <input type="text" name="T38MaxBuffer" size="20" maxlength="39" value="500" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">TCF:</label>
            <select name="T38RateMgt" class="right-field">
                <option value="1">Local TCF</option>
                <option value="2" selected>Remote TCF</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Max Rate:</label>
            <select name="T38MaxRate" class="right-field">
                <option value="0">2400</option>
                <option value="1">4800</option>
                <option value="2">7200</option>
                <option value="3">9600</option>
                <option value="4">12000</option>
                <option value="5" selected>14400</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">ECM:</label>
            <input type="checkbox" name="T38EnableECM" size="20" checked class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">ECC Signal:</label>
            <select name="T38ECCSignal" class="right-field">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5" selected>5</option>
                <option value="6">6</option>
                <option value="7">7</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">ECC Data:</label>
            <select name="T38ECCData" class="right-field">
                <option value="0">0</option>
                <option value="1">1</option>
                <option value="2" selected>2</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Spoofing:</label>
            <input type="checkbox" name="T38EnableSpoof" size="20" checked class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Packet Duplicate Num:</label>
            <select name="T38DuplicateNum" class="right-field">
                <option value="0" selected>0</option>
                <option value="1">1</option>
                <option value="2">2</option>
            </select>
        </div>
    </div>
    <script language="JavaScript">
        t38param_click_check();
    </script>
</div>

<!-- VoIP Security
<p>
<!-- style:display:none(hidden) style:display:table(show) ->
<table cellSpacing=1 cellPadding=1 border=0 >
<b>VoIP Security</b>
 <tr>
  <td bgColor=#aaddff>Make secruity call</td>
  <td bgColor=#ddeeff><input type=checkbox name=useSRTP size=20 >Enable</td>
 </tr>
</table>
-->
<!--

<p>
<b>Authentication</b>

<table cellSpacing=1 cellPadding=2 border=0 width=450  >
<tr>
    <td bgColor=#aaddff width=150>Off-Hook Password</td>
 <td bgColor=#ddeeff>
  <input type=text name=offhook_passwd size=20 maxlength=9 value="">
 </td>
</tr>
</table>
-->
<!-- DSP -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">DSP</p>
    </div>
   </div>
   <div class="data_common">
    <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
     <!--
     <tr>
      <td bgColor=#aaddff width=155 rowspan=2>FXS Volume</td>
      <td bgColor=#ddeeff width=170>Handset Gain</td>
      <td bgColor=#ddeeff>
       <select name=slic_txVolumne>
          ""
       </select>
      </td>
     </tr>
     <tr>
      <td bgColor=#ddeeff width=170>Handset Volume</td>
      <td bgColor=#ddeeff>
       <select name=slic_rxVolumne>
         ""
       </select>
      </td>
     </tr>
    -->
     <tr>
      <td>Jitter Buffer Control</td>
      <td>
      Min delay (ms):
      </td>
      <td>
      <select name=jitterDelay>
       <option value=2>20</option><option value=3>30</option><option value=4 selected>40</option><option value=5>50</option><option value=6>60</option><option value=7>70</option><option value=8>80</option><option value=9>90</option><option value=10>100</option><option value=11>110</option><option value=12>120</option><option value=13>130</option><option value=14>140</option><option value=15>150</option><option value=16>160</option><option value=17>170</option><option value=18>180</option><option value=19>190</option><option value=20>200</option><option value=21>210</option><option value=22>220</option><option value=23>230</option><option value=24>240</option><option value=25>250</option><option value=26>260</option><option value=27>270</option><option value=28>280</option><option value=29>290</option><option value=30>300</option><option value=31>310</option><option value=32>320</option><option value=33>330</option><option value=34>340</option><option value=35>350</option><option value=36>360</option><option value=37>370</option><option value=38>380</option><option value=39>390</option><option value=40>400</option>
      </select>
      </td>
     </tr>
     <tr>
     <td></td>
      <td>
      Max delay (ms):
      </td>
      <td>
      <select name=maxDelay>
       <option value=13 >130</option><option value=14 >140</option><option value=15 >150</option><option value=16 >160</option><option value=17 >170</option><option value=18 >180</option><option value=19 >190</option><option value=20 selected>200</option><option value=21 >210</option><option value=22 >220</option><option value=23 >230</option><option value=24 >240</option><option value=25 >250</option><option value=26 >260</option><option value=27 >270</option><option value=28 >280</option><option value=29 >290</option><option value=30 >300</option><option value=31 >310</option><option value=32 >320</option><option value=33 >330</option><option value=34 >340</option><option value=35 >350</option><option value=36 >360</option><option value=37 >370</option><option value=38 >380</option><option value=39 >390</option><option value=40 >400</option><option value=41 >410</option><option value=42 >420</option><option value=43 >430</option><option value=44 >440</option><option value=45 >450</option><option value=46 >460</option><option value=47 >470</option><option value=48 >480</option><option value=49 >490</option><option value=50 >500</option><option value=51 >510</option><option value=52 >520</option><option value=53 >530</option><option value=54 >540</option><option value=55 >550</option><option value=56 >560</option><option value=57 >570</option><option value=58 >580</option><option value=59 >590</option><option value=60 >600</option>
      </select>
      </td>
     </tr>
     <tr>
     <td></td>
      <td>
      Optimization factor:
      </td>
      <td>
      <select name=jitterFactor>
       <option value=0>0</option><option value=1 selected>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option value=5>5</option><option value=6>6</option><option value=7>7</option><option value=8>8</option><option value=9>9</option><option value=10>10</option><option value=11>11</option><option value=12>12</option><option value=13>13</option>
      </select>
      </td>
     </tr>
     <tr>
      <td>LEC Tail Length</td>
      <td>
       <input type=text name=echoTail size=4 maxlength=2 value="2" onblur="javascript:echotail_check(this)"/> (ms)
      </td>
      <td>2~32 ms</td>
     </tr>
     <tr>
      <td>LEC</td>
      <td>
       <input type=checkbox name=useLec size=20 checked>Enable
      </td>
      <td ></td>
     </tr>
     <tr>
      <td>NLP</td>
      <td>
       <input type=checkbox name=useNlp size=20 checked>Enable
      </td>
      <td ></td>
     </tr>
     <tr>
      <td>VAD</td>
      <td>
         <input type=checkbox name=useVad size=20 onClick="vad_enable()" >Enable
      </td>
      <td></td>
     </tr>
     <tr>
      <td>VAD Amp. Threshold (0 < Amp < 200)</td>
      <td>
       <input type=text name=Vad_threshold size=4 maxlength=5 value="63"> (Amp.)
      </td>
      <td ></td>
     </tr>
     <tr>
      <td>SID Noise Level</td>
      <td ><input type=radio name=sid_mode value=0 onClick="vad_enable()" checked>Disable configuration </td>
      <td></td> 
      <tr>
      <td></td>
      <td ><input type=radio name=sid_mode value=1 onClick="vad_enable()" >Fixed noise level </td>
      <td ><input type=text name=sid_noiselevel size=4 maxlength=3 value="70"> (0>Value>127 dBov) </td> <tr>
      <td></td>
      <td ><input type=radio name=sid_mode value=2 onClick="vad_enable()" >Adjust noise level</td>
      <td ><input type=text name=sid_noisegain size=4 maxlength=4 value="0">(-127~127 dBov, 0:Not change)</td>
      </tr>
     <tr>
      <td>CNG</td>
      <td>
      <input type=checkbox name=useCng size=20 checked>Enable
      </td>
      <td></td>
     </tr>
     <script language=javascript>vad_enable()</script>
     <tr>
      <td>CNG . Amp. (0 < Amp < 200, 0 means no limit for Max. Amp)</td>
      <td>
       <input type=text name=Cng_threshold size=4 maxlength=5 value="0"> (Amp.)
      </td>
      <td</td>
     </tr>
     <tr>
      <td>PLC</td>
      <td>
       <input type=checkbox name=usePLC size=20 checked>Enable
      </td>
      <td></td>
     </tr>
    <!--
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-CNG</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_CNG_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_CNG_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANS_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANS_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSAM</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSAM_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSAM_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSBAR</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSBAR_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSBAR_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-ANSAMBAR</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_ANSAMBAR_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_ANSAMBAR_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELLANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELLANS_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELLANS_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V.22ANS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V22ANS_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V22ANS_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V8bis_Cre</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V8bis_Cre_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V8bis_Cre_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21flag</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21flag_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21flag_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21DIS</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21DIS_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21DIS_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21DCN</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21DCN_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21DCN_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELL202_CP</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELL202_CP_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELL202_CP_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-BELL202_AP</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_BELL202_AP_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_BELL202_AP_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21CH1</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21CH1_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21CH1_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V21CH2</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V21CH2_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V21CH2_IP size=20 >Enable IP
      </td>
     </tr>
     <tr>
      <td bgColor=#aaddff width=155>ANSTONE-V23</td>
      <td bgColor=#ddeeff width=140>
       <input type=checkbox name=useANSTONE_V23_TDM size=20 >Enable TDM
      </td>
      <td bgColor=#ddeeff>
       <input type=checkbox name=useANSTONE_V23_IP size=20 >Enable IP
      </td>
     </tr>
    -->
     <tr>
      <td>RTCP</td>
      <td>
       <input type=checkbox name=useRTCP size=20 checked onclick="rtcp_click_check();">Enable
      </td>
      <td>
       Interval: <input type=text name=RTCPInterval maxlength=3 size=5 value=10> (Sec)
      </td>
     </tr>
     <tr >
      <td>RTCP XR</td>
      <td>
       <input type=checkbox name=useRTCPXR size=20 checked>Enable
      </td>
      <td></td>
     </tr>
     <script language=javascript>rtcp_click_check();</script>
     <tr>
     <td>Fax/Modem RFC2833 Support</td>
      <td>
       <input type=checkbox name=useFaxModem2833Relay size=20 >Enable Fax/Modem RFC2833 Relay(For TX)
      </td>
      <td></td>
     </tr>
     <tr>
     <td></td>
      <td>
       <input type=checkbox name=useFaxModemInbandRemoval size=20 >Enable Fax/Modem Inband Removal(For TX)
      </td>
      <td></td>

     </tr>
    
     <tr>
     <td></td>

      <td>
       <input type=checkbox name=useFaxModem2833RxTonePlay size=20 >Enable Fax/Modem Tone Play(For RX)
      </td>
      <td></td>

     </tr>
     <tr>
      <td>Speaker AGC</td>
      <td>
       <input type=checkbox name=CFuseSpeaker size=20 onClick="enableCFSpkAGC(this.checked)" >Enable
      </td>
      <td></td>
     </tr>
     <tr>
     <td></td>
      <td>require level:</td>
      <td>
       <select name=CF_spk_AGC_level>
          "<option selected>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option>"
       </select>
      </td>
     </tr>
     <tr>
     <td></td>

      <td>Max gain up: dB</td>
      <td>
       <select name=CF_spk_AGC_up_limit>
          "<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option selected>6</option><option>7</option><option>8</option><option>9</option>"
       </select>
      </td>
     </tr>
     <tr>
     <td></td>

      <td>Max gain down: dB</td>
      <td>
       <select name=CF_spk_AGC_down_limit>
         "<option>-1</option><option>-2</option><option>-3</option><option>-4</option><option>-5</option><option selected>-6</option><option>-7</option><option>-8</option><option>-9</option>"
       </select>
      </td>
     </tr>
     <tr>
      <td>MIC AGC</td>
      <td>
       <input type=checkbox name=CFuseMIC size=20 onClick="enableCFMicAGC(this.checked)" >Enable
      </td>
      <td></td>
     </tr>
     <tr>
     <td></td>

      <td>require level:</td>
      <td>
       <select name=CF_mic_AGC_level>
          "<option selected>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option>6</option><option>7</option><option>8</option><option>9</option>"
       </select>
      </td>
     </tr>
     <tr>
     <td></td>

      <td>Max gain up: dB</td>
      <td>
       <select name=CF_mic_AGC_up_limit>
          "<option>1</option><option>2</option><option>3</option><option>4</option><option>5</option><option selected>6</option><option>7</option><option>8</option><option>9</option>"
       </select>
      </td>
     </tr>
     <tr>
     <td></td>

      <td>Max gain down: dB</td>
      <td>
       <select name=CF_mic_AGC_down_limit>
         "<option>-1</option><option>-2</option><option>-3</option><option>-4</option><option>-5</option><option selected>-6</option><option>-7</option><option>-8</option><option>-9</option>"
       </select>
      </td>
     </tr>
     <!-- ----------------------------------------------------------- -->
     <!-- Not IP phone option start -->
     
     <tr >
      <td>Caller ID Mode</td>
      <td><select name=caller_id ><option>FSK_BELLCORE</option><option>FSK_ETSI</option><option>FSK_BT</option><option>FSK_NTT</option><option selected>DTMF</option></select></td>
      <td></td>
     </tr>
     <tr >
      <td>FSK Date & Time Sync</td>
      <td><input type=checkbox name=FSKdatesync size=20  >Enable</td>
      <td></td>
     </tr>
     <tr >
      <td>Reverse Polarity before Caller ID</td>
      <td><input type=checkbox name=revPolarity size=20  >Enable</td>
      <td></td>
     </tr>
     <tr >
      <td>Short Ring before Caller ID</td>
      <td><input type=checkbox name=sRing size=20  >Enable</td>
      <td></td>
     </tr>
     <tr >
      <td>Dual Tone before Caller ID</td>
      <td><input type=checkbox name=dualTone size=20  >Enable</td>
      <td></td>
     </tr>
     <tr >
      <td>Caller ID Prior First Ring</td>
      <td><input type=checkbox name=PriorRing size=20 checked>Enable</td>
      <td></td>
     </tr>
     <tr >
      <td>Caller ID DTMF Start Digit</td>
      <td><select name=cid_dtmfMode_S ><option selected>DTMF_A</option><option>DTMF_B</option><option>DTMF_C</option><option>DTMF_D</option></select></td>
      <td></td>
     </tr>
     <tr >
      <td>Caller ID DTMF End Digit</td>
      <td><select name=cid_dtmfMode_E ><option>DTMF_A</option><option>DTMF_B</option><option selected>DTMF_C</option><option>DTMF_D</option></select></td>
      <td></td>
     </tr>
     <tr >
      <td>Flash Time Setting (ms) [ Space:10, Min:80, Max:2000 ]</td>
      <td>
      <input type=text name=flash_hook_time_min size=4 maxlength=5 value=80 > <input type=text name=flash_hook_time size=4 maxlength=5 value=500 > <  Flash Time  >
      </td>
      <td></td>
     </tr>
     
     <!-- not IP phone option end -->
     <!-- ----------------------------------------------------------- -->
    <!-- thlin: Gen FSK Caller ID with sw DSP only -->
    <!--
     <tr>
      <td bgColor=#aaddff>Caller ID Soft FSK Gen</td>
      <td bgColor=#ddeeff></td>
      <td bgColor=#ddeeff>Hardware caller id only support si3215/3210 slic</td>
     </tr>
    -->
     <tr>
      <td>Speaker Voice Gain (dB) [ -32~31 ],Mute:-32</td>
      <td>
       <input type=text name=spk_voice_gain size=4 maxlength=5 value="0">
      </td>
      <td></td>
     </tr>
     <tr>
      <td>Mic Voice Gain (dB) [ -32~31 ],Mute:-32</td>
      <td>
       <input type=text name=mic_voice_gain size=4 maxlength=5 value="0">
      </td>
      <td></td>
     </tr>
    </table>
   </div>
 
  <hr class="margin_adjs">

<div class="form-footer text-right">
<input class="ling_bg btn btn-orang btn-lg" type="button" value="Apply" onclick="on_submit();">
</div>

<input type="hidden" name="postSecurityFlag" value="">
<script language=javascript>init();</script>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  © 2023 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

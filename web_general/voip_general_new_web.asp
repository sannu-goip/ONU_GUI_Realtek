
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html">
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="Cache-Control" CONTENT="no-cache">
<title>SIP</title>
<link rel="stylesheet" href="/admin/reset.css">
<link rel="stylesheet" href="/admin/base.css">
<link rel="stylesheet" href="/admin/style.css">
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
<!--
function ToneType_change()
{
 document.toneform.Freq2.disabled = (document.toneform.type.selectedIndex < 2);
 document.toneform.Freq3.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.Gain2.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.Gain3.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Freq0.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Freq1.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Freq2.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Freq3.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Gain0.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Gain1.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Gain2.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C1_Gain3.disabled = (document.toneform.type.selectedIndex < 4);
 document.toneform.C2_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C2_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C3_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn2.disabled = (document.toneform.type.selectedIndex > 4);
 document.toneform.CadOn3.disabled = (document.toneform.type.selectedIndex > 4);
 document.toneform.CadOff2.disabled = (document.toneform.type.selectedIndex > 4);
 document.toneform.CadOff3.disabled = (document.toneform.type.selectedIndex > 4);
 document.toneform.CadOn4.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff4.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn5.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff5.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn6.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff6.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn7.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff7.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C4_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C5_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C6_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C7_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn8.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff8.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn9.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff9.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn10.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff10.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn11.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff11.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C8_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C9_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C10_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C11_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn12.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff12.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn13.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff13.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn14.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff14.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn15.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff15.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C12_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C13_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C14_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C15_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn16.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff16.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn17.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff17.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn18.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff18.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn19.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff19.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C16_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C17_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C18_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C19_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn20.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff20.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn21.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff21.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn22.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff22.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn23.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff23.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C20_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C21_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C22_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C23_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn24.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff24.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn25.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff25.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn26.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff26.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn27.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff27.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C24_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C25_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C26_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C27_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn28.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff28.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn29.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff29.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn30.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff30.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOn31.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.CadOff31.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C28_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C29_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C30_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Freq0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Freq1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Freq2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Freq3.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Gain0.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Gain1.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Gain2.disabled = (document.toneform.type.selectedIndex != 4);
 document.toneform.C31_Gain3.disabled = (document.toneform.type.selectedIndex != 4);
}
function D1FreqNum_change()
{
 document.toneform.d1Freq2.disabled = (document.toneform.d1freqnum.selectedIndex == 0);
}
function D2FreqNum_change()
{
 document.toneform.d2Freq2.disabled = (document.toneform.d2freqnum.selectedIndex == 0);
}
function InitToneConfig()
{
 ToneType_change();
 D1FreqNum_change();
 D2FreqNum_change();
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
<script language="javascript">
var pwd_enc_enable=0;

function isAllStar(str)
{
 for (var i=0; i<str.length; i++) {
  if ( str.charAt(i) != '*' ) {
   return false;
  }
 }
 return true;
}
function applyclick()
{
 if(pwd_enc_enable)
 {
  var proxy_num;
  if(typeof(document.sipform.default_proxy) == 'undefined')
   proxy_num = 2;
  else
   proxy_num = document.sipform.default_proxy.options.length;
  for(var i=0;i<proxy_num;i++)
  {
   var proxy_psd = document.getElementsByName("password"+i);
   if(proxy_psd[0].value.length == 0)
    ;
   else if(!isAllStar(proxy_psd[0].value))
    proxy_psd[0].value=encode64(proxy_psd[0].value);
   else
   {
    proxy_psd[0].value = "";
    disableTextField(proxy_psd[0]);
   }
  }
 }
 changeStartEnd();
}
function dtmfMode_change()
{
 document.sipform.dtmf_2833_pt.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.dtmf_2833_pi.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.fax_modem_2833_pt.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.fax_modem_2833_pi.disabled = (document.sipform.dtmfMode.selectedIndex != 0);
 document.sipform.sipInfo_duration.disabled = (document.sipform.dtmfMode.selectedIndex != 1);
}
function spd_dial_edit()
{
 for (var i=0; i<10; i++)
 {
  document.sipform.spd_sel[i].disabled = document.all.spd_url[i].value == "";
  if (document.sipform.spd_sel[i].disabled)
   document.all.spd_name[i].value = "";
 }
}
function spd_dial_remove_sel()
{
 var flag=false;
 for (var i=0; i<10; i++)
 {
  if (document.sipform.spd_sel[i].checked)
  {
   flag=true;
   break;
  }
 }
 if (!flag)
 {
  alert('You have to select first.');
  return false;
 }
 if (!confirm('Do you really want to remove the selected items?'))
 {
  return false;
 }
 for (var i=0; i<10; i++)
 {
  if (document.sipform.spd_sel[i].checked)
  {
   document.sipform.spd_sel[i].checked = false;
   document.sipform.spd_sel[i].disabled = true;
   document.all.spd_name[i].value = "";
   document.all.spd_url[i].value = "";
  }
 }
 return true;
}
function spd_dial_remove_all()
{
 if (!confirm('Do you really want to remove all items in the phone book?'))
 {
  return false;
 }
 for (var i=0; i<10; i++)
 {
  document.sipform.spd_sel[i].checked = false;
  document.sipform.spd_sel[i].disabled = true;
  document.all.spd_name[i].value = "";
  document.all.spd_url[i].value = "";
 }
 return true;
}
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
</script>
<style>
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
    width:143px;
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
<body>
<INPUT id=Selected_Menu type=hidden 
												value="VoIP->VoIP Basic" name=VoIP Basic>
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
							        MakeLeftMenu("VoIP",'VoIP Basic')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"VoIp",'VoIP Setup','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                            <div class="scoop-inner-content">	
															 
								
								<div class="white_box" >
   <div class="row justify-content-between">
										<h1 class="heading_grey col-auto"><img src="/Dashboard/images/voip.png"  width="45" height="47" class="img_sub" alt=""/>VoIP General Config</h1>
									</div>
   <hr class="margin_adjs">
     <div class="col-md-12 form-group">
        <div class="custom-control">
  <p class="left-field-para">This page shows the VoIP General Config.</p>
 </div>
 </div>
 <br>
<form method="post" action="/boaform/voip_general_set" name=sipform>
<input type=hidden name=voipPort value="0">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">Default Proxy</h2>
</div>
</div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Select Default Proxy:</label>
            <select name="default_proxy" class="right-field">
                <option value="0" selected>Proxy0</option>
                <option value="1">Proxy1</option>
            </select>
        </div>
    </div>
</div>

<div class="col-md-12 form-group left-field">
        <div class="custom-control">
        <h2 class="sub_heading " style="color:#fd7e14; width:250px">Proxy0</h2>
        </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy:</label>
                <input type="checkbox" id="proxyEnable" name="proxyEnable0" class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy Addr:</label>
                <input type="text" id="proxyAddr" name="proxyAddr0" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy Port:</label>
                <input type="text" id="proxyPort" name="proxyPort0" size="10" maxlength="5" value="5060" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">SIP Domain:</label>
                <input type="text" id="domain_name" name="domain_name0" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Reg Expire (sec):</label>
                <input type="text" id="regExpiry" name="regExpiry0" size="20" maxlength="5" value="3600" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy:</label>
                <input type="checkbox" id="obEnable" name="obEnable0" class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy Addr:</label>
                <input type="text" id="obProxyAddr" name="obProxyAddr0" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy Port:</label>
                <input type="text" id="obProxyPort" name="obProxyPort0" size="10" maxlength="5" value="5060" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Enable Session timer:</label>
                <input type="checkbox" id="sessionEnable" name="sessionEnable0" checked class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Session Expire (sec):</label>
                <input type="text" id="sessionExpiry" name="sessionExpiry0" size="6" maxlength="5" value="1800" class="right-field">
            </div>
        </div>
    </div>

<div class="column">
   <div class="col-md-12 form-group left-field">
            <div class="custom-control">

         <h2 class="sub_heading " style="color:#fd7e14; width:250px">Proxy1</h2>
        </div>
    </div>
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy:</label>
                <input type="checkbox" id="proxyEnable" name="proxyEnable1" class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy Addr:</label>
                <input type="text" id="proxyAddr" name="proxyAddr1" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Proxy Port:</label>
                <input type="text" id="proxyPort" name="proxyPort1" size="10" maxlength="5" value="5060" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">SIP Domain:</label>
                <input type="text" id="domain_name" name="domain_name1" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Reg Expire (sec):</label>
                <input type="text" id="regExpiry" name="regExpiry1" size="20" maxlength="5" value="3600" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy:</label>
                <input type="checkbox" id="obEnable" name="obEnable1" class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy Addr:</label>
                <input type="text" id="obProxyAddr" name="obProxyAddr1" size="20" maxlength="39" value="" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Outbound Proxy Port:</label>
                <input type="text" id="obProxyPort" name="obProxyPort1" size="10" maxlength="5" value="5060" class="right-field">
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Enable Session timer:</label>
                <input type="checkbox" id="sessionEnable" name="sessionEnable1" checked class="right-field-checkbox"> Enable
            </div>
        </div>
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Session Expire (sec):</label>
                <input type="text" id="sessionExpiry" name="sessionExpiry1" size="6" maxlength="5" value="1800" class="right-field">
            </div>
        </div>
    </div>
</div>
<div class="column">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
<h2 class="sub_heading " style="color:#fd7e14; width:250px">User Account</h2>
</div>
</div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Display Name:</label>
            <input type="text" id="display" name="display0" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Number:</label>
            <input type="text" id="number" name="number0" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Login ID:</label>
            <input type="text" id="loginID" name="loginID0" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Password:</label>
            <input type="password" id="password" name="password0" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
</div>
<!--
<p>
<b>NAT Traversal</b>
<table cellSpacing=1 cellPadding=2 border=0>

</table>
-->
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">SIP Advanced</h2>
  </div>
 </div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP Port:</label>
            <input type="text" name="sipPort" size="10" maxlength="5" value="5060" class="right-field">
            <input type="hidden" id="sipPorts" name="sipPorts" value="5060">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Media Port:</label>
            <input type="text" name="rtpPort" size="10" maxlength="5" value="9000" class="right-field">
            <input type="hidden" id="rtpPorts" name="rtpPorts" value="9000">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">DTMF Relay:</label>
            <select name="dtmfMode" onchange="dtmfMode_change()" class="right-field">
                <option>RFC2833</option>
                <option>SIP INFO</option>
                <option selected>Inband</option>
                <option>DTMF_delete</option>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">DTMF RFC2833 Payload Type:</label>
            <input type="text" name="dtmf_2833_pt" size="12" maxlength="3" value="96" disabled class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">DTMF RFC2833 Packet Interval:</label>
            <input type="text" name="dtmf_2833_pi" size="12" maxlength="3" value="10" disabled class="right-field">(msec) (Must be multiple of 10msec)
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Use DTMF RFC2833 PT as Fax/Modem RFC2833 PT:</label>
            <input type="checkbox" name="fax_modem_2833_pt_same_dtmf" checked class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Fax/Modem RFC2833 Payload Type:</label>
            <input type="text" name="fax_modem_2833_pt" size="12" maxlength="3" value="101" disabled class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Fax/Modem RFC2833 Packet Interval:</label>
            <input type="text" name="fax_modem_2833_pi" size="12" maxlength="3" value="10" disabled class="right-field">(msec) (Must be multiple of 10msec)
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">SIP INFO Duration (ms):</label>
            <input type="text" name="sipInfo_duration" size="12" maxlength="4" value="250" disabled class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Call Waiting:</label>
            <input type="checkbox" name="call_waiting" onclick="enable_callwaiting()" class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Call Waiting Caller ID:</label>
            <input type="checkbox" name="call_waiting_cid" disabled class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Reject Direct IP Call:</label>
            <input type="checkbox" name="reject_direct_ip_call" class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Send Caller ID hidden:</label>
            <input type="checkbox" name="caller_id_hidden" class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Call Transfer:</label>
            <input type="checkbox" name="Call_Transfer" checked class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">3 Way Conference:</label>
            <input type="checkbox" name="3PTY_Conference" checked class="right-field-checkbox"> Enable
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Conference on Server/CPE:</label>
            <input type="radio" name="Conference_server_cpe" value="0" class="right-field-radio"> Server
            <input type="radio" name="Conference_server_cpe" value="1" checked class="right-field-radio"> CPE
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Conference URI:</label>
            <input type="text" name="conference_uri" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
</div>
</div>
<div class="column">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">Forward Mode</h2>
  </div>
 </div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Immediate Forward to:</label>
           
                <input class="right-field-radio" type="radio" name="CFAll" value="0" checked> Off
                <input class="right-field-radio" type="radio" name="CFAll" value="1"> VoIP
                <input class="right-field-radio" type="radio" name="CFAll" value="2" disabled> PSTN
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Immediate Number:</label>
            <input type="text" name="CFAll_No" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Busy Forward to:</label>
            
                <input class="right-field-radio" type="radio" name="CFBusy" value="0" checked> Off
                <input class="right-field-radio" type="radio" name="CFBusy" value="1"> VoIP
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Busy Number:</label>
            <input type="text" name="CFBusy_No" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">No Answer Forward to:</label>
           
                <input class="right-field-radio" type="radio" name="CFNoAns" value="0" checked> Off
                <input class="right-field-radio" type="radio" name="CFNoAns" value="1"> VoIP
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">No Answer Number:</label>
            <input type="text" name="CFNoAns_No" size="20" maxlength="39" value="" class="right-field">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">No Answer Time (sec):</label>
            <input type="text" name="CFNoAns_Time" size="20" maxlength="39" value="0" class="right-field">
        </div>
    </div>
</div>
</div>
<!--
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px"> Speed Dial </h2>
  </div>
 </div>
 <div class="data_common">
  <table >
   <tr align=center>
    <td bgcolor=#aaddff>Position</td>
    <td bgcolor=#aaddff></td>
    <td bgcolor=#aaddff>Phone Number</td>
    <td bgcolor=#aaddff>Select</td>
   </tr>
   <tr bgcolor=#ddeeff><td align=center>0</td><td><input type=text id=spd_name name=spd_name0 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url0 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>1</td><td><input type=text id=spd_name name=spd_name1 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url1 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>2</td><td><input type=text id=spd_name name=spd_name2 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url2 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>3</td><td><input type=text id=spd_name name=spd_name3 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url3 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>4</td><td><input type=text id=spd_name name=spd_name4 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url4 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>5</td><td><input type=text id=spd_name name=spd_name5 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url5 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>6</td><td><input type=text id=spd_name name=spd_name6 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url6 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>7</td><td><input type=text id=spd_name name=spd_name7 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url7 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>8</td><td><input type=text id=spd_name name=spd_name8 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url8 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr><tr bgcolor=#ddeeff><td align=center>9</td><td><input type=text id=spd_name name=spd_name9 size=10 maxlength=10 value=""></td><td><input type=text id=spd_url name=spd_url9 size=20 maxlength=60 value="" onChange="spd_dial_edit()"></td><td align=center><input type=checkbox name=spd_sel disabled></td></tr>
   <tr align=center>
    <td colspan=4 bgcolor=#ddeeff>
    <input type=button value="Remove Selected" name="RemoveSelected" onClick="spd_dial_remove_sel()">
    <input type=button value="Remove All" name="RemoveAll" onClick="spd_dial_remove_all()">
    </td>
   </tr>
  </table>
 </div>
</div>

<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p>Abbreviated Dial</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common">

 <table cellSpacing=1 cellPadding=2 border=0  >
  <tr align=center>
   <td bgcolor=#aaddff>Abbreviated Name</td>
   <td bgcolor=#aaddff>Phone Number</td>
  </tr>
  <tr bgcolor=#ddeeff>
<td algin=center><input type=text name=abbr_name0 size=10 maxlength=4 value=""></td>
<td algin=center><input type=text name=abbr_url0 size=20 maxlength=60 value=""></td>
</tr>
<tr bgcolor=#ddeeff>
<td algin=center><input type=text name=abbr_name1 size=10 maxlength=4 value=""></td>
<td algin=center><input type=text name=abbr_url1 size=20 maxlength=60 value=""></td>
</tr>
<tr bgcolor=#ddeeff>
<td algin=center><input type=text name=abbr_name2 size=10 maxlength=4 value=""></td>
<td algin=center><input type=text name=abbr_url2 size=20 maxlength=60 value=""></td>
</tr>
<tr bgcolor=#ddeeff>
<td algin=center><input type=text name=abbr_name3 size=10 maxlength=4 value=""></td>
<td algin=center><input type=text name=abbr_url3 size=20 maxlength=60 value=""></td>
</tr>
<tr bgcolor=#ddeeff>
<td algin=center><input type=text name=abbr_name4 size=10 maxlength=4 value=""></td>
<td algin=center><input type=text name=abbr_url4 size=20 maxlength=60 value=""></td>
</tr>

 </table>
 </div>
</div>
-->
<div class="column">
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">Dial Plan</h2>
  </div>
 </div>
 <div class="data_common">
  <div class="col-md-12 form-group">
        <div class="custom-control">
  <!--
  <table>
   <tr>
    <td bgColor=#aaddff width=155>Replace prefix code</td>
    <td bgColor=#ddeeff width=170>
    <input type="radio" name="ReplaceRuleOption" value=1  >on<input type="radio" name="ReplaceRuleOption" value=0 checked>off
    </td>
   </tr>
   <tr>
    <td bgColor=#aaddff width=155>Relace rule</td>
    <td bgColor=#ddeeff width=170>
    <input type="text" name="ReplaceRuleSource" size=12 maxlength=79 value=""> ->
    <input type="text" name="ReplaceRuleTarget" size=3 maxlength=9 value=""></td>
   </tr>
  -->
    <label class="left-field">Enable Dialplan:</label>
           
                <input class="right-field-radio" type="radio" name="digitmap_enable" value="1"> On
                <input class="right-field-radio" type="radio" name="digitmap_enable" value="0" checked> Off
            </div>
        </div>
 
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Dial plan:</label>
            <input type="text" name="dialplan" size="20" maxlength="79" value="" class="right-field">
        </div>
    </div>
    </div>
  <!--
   <tr>
    <td bgColor=#aaddff width=155>Auto Prefix</td>
    <td bgColor=#ddeeff width=170>
    <input type="text" name="AutoPrefix" size=5 maxlength=4 value="">
   </tr>
   <tr>
    <td bgColor=#aaddff width=155>Prefix Unset Plan</td>
    <td bgColor=#ddeeff width=170>
    <input type="text" name="PrefixUnsetPlan" size=20 maxlength=79 value="">
   </tr>
  -->
  </table>
 </div>
</div>
<div class="column">
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">Codec</h2>
</div>
 </div>
 <div class="data_common">
  <!-- RTP Redundant -->
  <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
   <tr>
    <td>RTP Redundant<br>(First precedence)</td>
    <td>Codec
    <td>
     <select name=rtp_redundant_codec>
      <option value=-1>Disabled</option>
      <option value=0 >PCM u-law</option>
      <option value=8 >PCM a-law</option>
      <option value=18 >G.729</option>
     </select>
     </td>
    </td>
   </tr>
   <tr>
   <td></td>
    <td >Payload Type</td>
    <td><input type=text name=rtp_redundant_payload_type size=10 value="121"></td>
   </tr>
  </table>
 </div>
</div>
<div class="data_common data_common_notitle">
 <input type=hidden id=preced_id name=preced0 value=-1>
 <input type=hidden id=preced_id name=preced1 value=-1>
 <input type=hidden id=preced_id name=preced2 value=-1>
 <input type=hidden id=preced_id name=preced3 value=-1>
 <input type=hidden id=preced_id name=preced4 value=-1>
 <input type=hidden id=preced_id name=preced5 value=-1>
 <input type=hidden id=preced_id name=preced6 value=-1><input type=hidden id=preced_id name=preced7 value=-1><input type=hidden id=preced_id name=preced8 value=-1><input type=hidden id=g7111_modes name=R1 value=-1><input type=hidden id=g7111_modes name=R2A value=-1><input type=hidden id=g7111_modes name=R2B value=-1><input type=hidden id=g7111_modes name=R3 value=-1>
</div>
<div class="data_common data_common_notitle">
 <table  class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%">
 <tr><td>Type</td>
 <td>Packetization</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
 <td>Precedence</td>
 <td></td>
 <td></td>
 <td></td>
 <td></td>
</td>
 <td >Disable</td></tr>
<tr>
<td></td>
<td></td>
<td>1</td><td>2</td><td>3</td><td >4</td><td >5</td><td>6</td><td>7</td><td>8</td><td >9</td></tr>
<tr><td>G711-ulaw</td><td><select name=frameSize0><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option></select></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 0, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G711-alaw</td><td><select name=frameSize1><option value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_, 1)disable(sipform.precedence,sipform.codec_disable, 1, 1, 9"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 1, 8, 9, 1)"></td>
<td><input type=checkbox name</td>
<tr><td>G729</td><td ><select name=frameSize2><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option><option  value=4>50 ms</option><option  value=5>60 ms</option><option  value=6>70 ms</option><option  value=7>80 ms</option><option  value=8>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 2, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td >G723</td><td><select name=frameSize3><option selected value=0>30 ms</option><option  value=1>60 ms</option><option  value=2>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 3, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G726-16k</td><td><select name=frameSize4><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option><option  value=4>50 ms</option><option  value=5>60 ms</option><option  value=6>70 ms</option><option  value=7>80 ms</option><option  value=8>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 4, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G726-24k</td><td><select name=frameSize5><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option><option  value=4>50 ms</option><option  value=5>60 ms</option><option  value=6>70 ms</option><option  value=7>80 ms</option><option  value=8>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 5, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G726-32k</td><td><select name=frameSize6><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option><option  value=4>50 ms</option><option  value=5>60 ms</option><option  value=6>70 ms</option><option  value=7>80 ms</option><option  value=8>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 6, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G726-40k</td><td><select name=frameSize7><option  value=0>10 ms</option><option selected value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option><option  value=4>50 ms</option><option  value=5>60 ms</option><option  value=6>70 ms</option><option  value=7>80 ms</option><option  value=8>90 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 7, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>
<tr><td>G722</td><td><select name=frameSize8><option selected value=0>10 ms</option><option  value=1>20 ms</option><option  value=2>30 ms</option><option  value=3>40 ms</option></select></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 0, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 1, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 2, 9, 1)"></td>
<td><input type=checkbox name=precedence checked onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 3, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 4, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 5, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 6, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 7, 9, 1)"></td>
<td><input type=checkbox name=precedence  onclick="checkPrecedence_support_disable(sipform.precedence,sipform.codec_disable, 8, 8, 9, 1)"></td>
<td><input type=checkbox name=codec_disable ></td>
</tr>

 </table>
</div>
 <div class="col-md-12 form-group ">
        <div class="custom-control">
 <table  class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:-10px; width:98.4%">
 <tr><td>Option</td></tr>
 <tr>
 <td > G726 Packing Order</td>
 <td ><select name=g726_packing ><option >Left</option><option selected>Right</option></select></td></tr>
<tr><td> G723 Bit Rate</td><td ><select  name=g7231Rate><option selected>6.3k</option><option >5.3k</option></select></td></tr>
</table>
</div>
</div>
<div class="column">
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
<h2 class="sub_heading " style="color:#fd7e14; width:250px">Hot Line</h2>
</div>
</div>

 <div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Use Hot Line:</label>
            
                <input class="right-field-checkbox" type="checkbox" name="hotline_enable" onclick="enable_hotline()">
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Hot Line Number:</label>
            <input type="text" name="hotline_number" size="20" maxlength="39" value="" class="right-field">
        </div>
    
  <script language=javascript>enable_hotline()</script>
 </div>
</div>

<div class="column">
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">DND (Don't Disturb)</h2>
  </div>
 </div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">DND Mode:</label>
           
                <input class="right-field-radio" type="radio" name="dnd_mode" value="2" onclick="enable_dnd()"> Always
                <input class="right-field-radio" type="radio" name="dnd_mode" value="1" onclick="enable_dnd()"> Enable
                <input class="right-field-radio" type="radio" name="dnd_mode" value="0" onclick="enable_dnd()" checked> Disable
            </div>
        </div>
   
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field">From:</label>
            <div style="margin-left:177px">
                <input type="text" name="dnd_from_hour" size="3" maxlength="2" value="00"> :
                <input type="text" name="dnd_from_min" size="3" maxlength="2" value="00"> (hh:mm)
            </div>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field">To:</label>
             <div style="margin-left:177px">
                <input type="text" name="dnd_to_hour" size="3" maxlength="2" value="00"> :
                <input type="text" name="dnd_to_min" size="3" maxlength="2" value="00"> (hh:mm)
            </div>
        </div>
        </div>
  <script language=javascript>enable_dnd()</script>
 </div>

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
<!-- Alarm -->
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">Alarm</h2>
 </div>
 </div>
<div class="data_common">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Enable:</label>
           
                <input  class="right-field-checkbox" type="checkbox" name="alarm_enable">
            </div>
        </div>

    <div class="col-md-12 form-group">
        <div class="custom-control" style="display:flex">
            <label class="left-field">Time:</label>
           <div style="margin-left:177px">
                <input type="text" name="alarm_hh" size="3" maxlength="2" value="0"> :
                <input type="text" name="alarm_mm" size="3" maxlength="2" value="0"> (hh:mm)
            </div>
        </div>
    </div>
</div>
<!--
<p>
<b>DSP</b>
<table cellSpacing=1 cellPadding=2 border=0>
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
<!--
   <tr>
     <td bgColor=#aaddff>LEC Tail Length (ms)</td>
  <td bgColor=#ddeeff>
  <select name=echoTail>
    ""
  </select>
  </td>
  <td bgColor=#ddeeff></td>
 </tr>
-->
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
<hr class="margin_adjs">
<div style="padding:10px; margin-left:14px">
 <input class="link_bg" type="button" value="Apply" onclick="applyclick();">
 &nbsp;&nbsp;&nbsp;&nbsp;
 <input class="link_bg" type="reset" value="Reset">
</div>
 <input type="hidden" name="postSecurityFlag" value="">
<hr class="margin_adjs">

<script language=javascript>init();</script>
</form>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
  <h2 class="sub_heading " style="color:#fd7e14; width:250px">VoIP TONE Config</p>
</div>
 </div>
<form method="post" action="/boaform/voip_tone_set" name=toneform>
  
    <div class="data_common">
        <div class="col-md-12 form-group">
            <div class="custom-control">
                <label class="left-field">Country:</label>
                <select name="tone_country" onchange="changeCountry();" class="right-field">
                    <option value="0">USA</option>
                    <option value="1">UK</option>
                    <option value="2">AUSTRALIA</option>
                    <option value="3">HONG KONG</option>
                    <option value="4">JAPAN</option>
                    <option value="5">SWEDEN</option>
                    <option value="6">GERMANY</option>
                    <option value="7">FRANCE</option>
                    <option value="8" selected>TAIWAN</option>
                    <option value="9">BELGIUM</option>
                    <option value="10">FINLAND</option>
                    <option value="11">ITALY</option>
                    <option value="12">CHINA</option>
                    <option value="13">RUSSIAN</option>
                    <option value="14">SPAIN</option>
                    <option value="15">Thailand</option>
                    <option value="16">Indonesia</option>
                    <option value="17">INDIA</option>
                    <option value="18">CUSTOMER</option>
                </select>
            </div>
        </div>
    </div>
    <hr style="margin-left: -15px;width: 102.5%;">
     <div class="col-md-12 form-group left-field">
            <div class="custom-control">
     <input class="link_bg" type="submit" name="Country" value="Apply" onclick="on_submit(this);">
     <input type="hidden" name="postSecurityFlag" value="">
</div>
</div>


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

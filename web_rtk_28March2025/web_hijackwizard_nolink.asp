<%SendWebHeadStr(); %>
<VWS_FUNCTION (void*)SendWebMetaStr();>
<VWS_FUNCTION (void*)SendWebCssStr();>
<title>Html Wizard</title>
<SCRIPT>
<VWS_FUNCTION (void*)getCurrentLinkState();>
function onload()
{
 if(currentLinkState == 0)
 {
  adslAttempts++;
  document.getElementById("adslAttempts").value = adslAttempts;
 }
}
</SCRIPT>
</head>
<body onload="onload();">
<form action="form2RoseHijackWizardNolink.cgi" method=POST name="RoseHijackWizardNolink">
 <div class="data_common data_common_notitle">
  <table>
   <tr class="data_prompt_info">
    <td colspan="2">
<script>
</script>
    </td>
   </tr>
  </table>
  <table>
   <tr>
    <td colspan="2" style="text-align:center;">
     <VWS_FUNCTION (void*)getAdslConnJpg();>
    </td>
   </tr>
  </table>
 </div>
 <input type="hidden" name="adslAttempts" id="adslAttempts">
 <br>
 <div class="btn_ctl">
  <input class="link_bg" type="submit" value="Continue">
  <!--<input class="link_bg" type="button" value="Manual configuration" onClick="window.location.href='rose_wizard_1.htm';">-->
  <input type="hidden" value="Send" name="submit.htm?rose_hijackwizard_nolink.htm">
 </div>
</form>
</body>
</html>

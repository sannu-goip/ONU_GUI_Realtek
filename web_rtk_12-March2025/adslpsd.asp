<%SendWebHeadStr(); %>
<title>ADSL <% multilang("737" "LANG_PSD_MASK"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<script>
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
</head>
<body>
<div class="intro_main ">
 <p class="intro_title">ADSL <% multilang("737" "LANG_PSD_MASK"); %></p>
 <p class="intro_content"> <% multilang("744" "LANG_THIS_PAGE_LET_USER_TO_SET_PSD_MASK"); %></p>
</div>
<form action=/boaform/formSetAdslPSD method=POST name="formPSDTbl">
<% adslPSDMaskTbl(); %>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="apply" onClick="return on_submit(this)">&nbsp;&nbsp;
 <input type="hidden" value="/adslpsd.asp" name="submit-url">
 <input class="link_bg" type="button" value="<% multilang("743" "LANG_CLOSE"); %>" name="close" onClick="javascript: window.close();">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<br><br>
</body>
</html>

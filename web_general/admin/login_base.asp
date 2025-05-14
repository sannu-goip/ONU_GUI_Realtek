<html>
<head>
<title><% checkWrite("web-title"); %></title>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<script type="text/javascript" src="rollups/md5.js"></script>
<script type="text/javascript" src="php-crypt-md5.js"></script>
<SCRIPT language="javascript" src="/common.js"></SCRIPT>
<link rel="stylesheet" type="text/css" href="admin/backgroup_style.css">
<SCRIPT>
var char_array = ['0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f','g','h','i','j','k','l',
     'm','n','o','p','q','r','s','t','u','v','w','x','y','z'];
function shuffle(array) {
  for (var i = array.length - 1; i > 0; i--) {
   var j = Math.floor(Math.random() * (i + 1));
   var temp = array[i];
   array[i] = array[j];
   array[j] = temp;
  }
  return array;
}
function getRandomChar(min, max)
{
 return Math.floor(Math.random()*(max - min + 1)) + min;
}
function getNewCode()
{
 var code = ""
 var cnt = 2;
 for(var i = 0 ; i < 5; i++)
 {
  if(i < cnt)
   code = code + char_array[getRandomChar(0,9)]
  else
   code = code + char_array[getRandomChar(10,35)]
 }
 code = shuffle(Array.from(code)).join("");
 document.getElementById("code2").innerText=code;
 document.getElementById("code1").value=code;
}
function setpass(obj)
{
 <% passwd2xmit(); %>
 obj.isclick = 1;
 postTableEncrypt(document.cmlogin.postSecurityFlag, document.cmlogin);
}
function mlhandle()
{
 postTableEncrypt(document.formML.postSecurityFlag, document.formML);
 document.formML.submit();
 parent.location.reload();
}
</SCRIPT>
<style>
body,input,td, p, span{
 font-family: "open_sansregular";
}
body{
 background:#EFF1EE;
}
.login_txt1{
 height:180px;
}
.login_txt2{
 height:40px;
 text-align:40px;
 color: white;
 font-size: 16px;
 margin-left: 30px;
}
.tex_inpt input{
 height: 30px;
 width: 350px;
 border-radius: 5px;
 border: solid 1px #e9e9e9;
 outline: none;
 font-size: 15px;
 padding-left: 10px;
}
.version{
 height: 80px;
 text-align:center;
 line-height:80px;
 font-size:14px;
 color:#51535A
}
.login_title span {
    position: absolute;
    top: 13px;
    left: 190px;
 color:#fff;
}
.main_div{
 margin: 0 auto;
 text-align:center;
 width: 350px;
 position: relative;
 min-height: 150px;
 border-bottom-right-radius: 10px;
 border-bottom-left-radius: 10px;
 background:#fff;
}
.top_bar{
 -moz-border-radius-topleft: 10px;
 -moz-border-radius-topright: 10px;
 -moz-border-radius-bottomright: 0px;
 -moz-border-radius-bottomleft: 0px;
 -webkit-border-top-left-radius: 10px;
 -webkit-border-top-right-radius: 10px;
 -webkit-border-bottom-right-radius: 0px;
 -webkit-border-bottom-left-radius: 0px;
 border-top-left-radius: 10px;
 border-top-right-radius: 10px;
 border-bottom-right-radius: 0px;
 border-bottom-left-radius: 0px;
 background:<% checkWrite("webstyle"); %>;
 width:350px;
 height:35px;
 margin: 0 auto;
 margin-top: 200px;
}
.logo{
 -moz-border-radius-topleft: 10px;
 -moz-border-radius-topright: 10px;
 -moz-border-radius-bottomright: 0px;
 -moz-border-radius-bottomleft: 0px;
 -webkit-border-top-left-radius: 10px;
 -webkit-border-top-right-radius: 10px;
 border-top-left-radius: 10px;
 border-top-right-radius: 10px;
 background:url(/graphics/login.png) no-repeat center 0 #fff;;
 width:350px;
 height:70px;
 margin: 0 auto;
 margin-top: 200px;
}
.msg_logo_tex{
    padding-top: 12px;
    font-size: 22px;
 display: inline-block;
}
.msg_tex{
    padding-top: 25px;
    font-size: 22px;
 display: inline-block;
}
.msg_btn input{
 margin:5px;
}
.labelCode {
 font-size:15pt;
 width:50px;
 height:25px;
 color:white;
 border:none;
 background-color: <% checkWrite("webstyle"); %>;
 text-shadow: 1px -1px 0px black;
 box-shadow: inset 2px -1px 4px 0px black;
}
</style>
</head>
<body>
<blockquote>
<form action=/boaform/admin/formLogin method=POST name="cmlogin">
<input type="hidden" name="challenge">
<input type="hidden" name="code1" id="code1" />
<div>
<div class="logo" <% checkWrite("displaylogo"); %>></div>
<div class="top_bar" <% checkWrite("displaybar"); %>></div>
<div class="main_div">
 <table <% checkWrite("msgclass"); %> style="width:350px;" align="center">
  <tr>
   <td width="110" align="right" height="35px"><DIV align=right><font size=2><% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:</font></DIV></td>
   <TD width="240"><INPUT maxLength=30 size=20 name=username></TD>
  </tr>
  <tr>
   <td width="110" align="right" height="35px"><DIV align=right><FONT size=2><% multilang("67" "LANG_PASSWORD"); %>:</FONT></DIV></td>
   <td width="240"><INPUT type=password maxLength=30 size=20 name=password></TD>
  </tr>
  <tr <% checkWrite("checkcode"); %>>
   <td width="110" align="right" height="35px">
    <label class="labelCode" id="code2" name="code2" onClick=getNewCode()></label>
    <SCRIPT>
     getNewCode();
    </SCRIPT>
   </td>
   <td width="240">
    <input type="text" id="input_code" name="input_code" class="codeInput" value="" />
   </td>
  </tr>
  <tr align="center" height="40px" width="100%">
   <td colspan="2">
   <div>
   <INPUT type=submit value="<% multilang("815" "LANG_LOGIN"); %>" name="save" onClick="setpass(this)" id="login">&nbsp;&nbsp;&nbsp;
   <INPUT type=reset value="<% multilang("222" "LANG_RESET"); %>" id="reset">
   <INPUT type=hidden name=encodePassword value="">
   </TD>
   </div>
   </td>
  </tr>
 </table>
</div>
</div>
<DIV align=center></DIV>
<input type="hidden" value="/admin/login.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</form>
</blockquote>
<!--blockquote>
<form action=/boaform/admin/formLoginMultilang method=POST name="formML">
<CENTER><TABLE cellSpacing=0 cellPadding=0 border=0>
<tr><td>
 <% checkWrite("loginSelinit"); %>
 <input type="hidden" name="postSecurityFlag" value="">
</td></tr>
</TABLE></CENTER>
</form>
</blockquote-->
</BODY>
</HTML>

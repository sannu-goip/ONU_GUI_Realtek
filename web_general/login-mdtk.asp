


<html>
	<head>
		<title>Login</title>
		<meta http-equiv=Content-Type content="text/html; charset=gb2312">
		<meta content="Microsoft FrontPage 5.0" name="GENERATOR">
<script type="text/javascript" src="rollups/md5.js"></script>
<script type="text/javascript" src="php-crypt-md5.js"></script>
<SCRIPT language="javascript" src="/common.js"></SCRIPT>
<link rel="stylesheet" type="text/css" href="admin/backgroup_style.css">

		<style type=text/css>

.form-control 
{
    display: block;
    width: 100%;
    height: calc(1.75em + .75rem + 2px);
    padding: .375rem .75rem;
    font-size: 1.2rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: .5rem;
	-webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
}

#myVideo {
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
}

/* Add some content at the bottom of the video/page */
.content {
  position: fixed;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}

/* Style the button used to pause/play the video */
#myBtn {
  width: 200px;
  font-size: 18px;
  padding: 10px;
  border: none;
  background: #000;
  color: #fff;
  cursor: pointer;
}

#myBtn:hover {
  background: #ddd;
  color: black;
}


		#captchaimg{
			padding-top:8px;
		}

		[type=button]:not(:disabled), [type=reset]:not(:disabled), [type=submit]:not(:disabled), button:not(:disabled) {
    cursor: pointer;
    width: 109px;
	float: left;
	padding: 4px;
    font-size: 15px;
}

		.container-md{
			width: 900px;
		}
		.back-image-box{
	        width: 100%;
	        height:500px;
	        background-repeat: no-repeat;
	        background: url(/img/imagewifi.jpg);
	      	}
			  
		.login_btn {
    border: solid 2px #fd6102;
    background: #fd6102;
    border-radius: 5px;
    color: #fff;
    padding: 10px;
    width: 100%;
    font-weight: bold;
    margin-top: 6px;
    margin-bottom: 6px;
}
	.login_body h1 {
    		color: #584848;
    		font-size: 28px;
    		font-weight: bold;
    		margin-bottom: 30px;
		}

.login_body {
    padding: 30px 30px 10px 30px;
}

.logo_box_login {
	text-align: center;
    padding: 80px 0px 0px 0px;
}
			
		</style>
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
	<body onload="LoadFrame()" >
	<form action=/boaform/admin/formLogin method=POST name="cmlogin">
<div class="container-fluid">
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12 logo_box_login" style="position: relative;margin-left:-30px">
	
	<img src="../img/logo.png" class="img-fluid" alt="">
</div>
</div>
</div>
	  
<div class="login_box container" style="margin-top:30px;">
	
	 <div class="row" id="div_login">

	 <div class="col-sm-5 col-5 text-center offset-4 " style="margin-top: 40px;">		

        <form id="loginui" name="loginui" class="row" method="post">
		
		 	 
				<div class="login_body" style="background-color:#cacaca40; border-radius:10px;margin-left:-18%; margin-top:-50px !important;margin-right:40px;width:100%;height:60%; margin-top:20px">
					<h1 style="color: #fd6102;margin-left:-20px; font-size: 40px;">Login Now</h1>
					<div class="form-group input-group pb-2">
	                      <input id="username" name="username" size="20" autocomplete="off" class="form-control" placeholder="Username: "> 
					</div>
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

</BODY>
</HTML>

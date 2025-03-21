<html>
 <head>
 <title>Login</title>
 <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
 <script type="text/javascript" src="rollups/md5.js"></script>
 <script type="text/javascript" src="php-crypt-md5.js"></script>
 <SCRIPT language="javascript" src="/common.js"></SCRIPT>
 <script type="text/javascript" src="/Dashboard/JS/jquery.min.js"></script>
 <script type="text/javascript" src="/Dashboard/JS/bootstrap.min.js"></script>
  <script src="/Dashboard/JS/menu.js" type="text/javascript" ></script>
 <script type="text/javascript" src="/Dashboard/JS/popper.min.js"></script>
 <link rel="stylesheet" type="text/css" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
 <link rel="stylesheet" type="text/css" href="/Dashboard/css/bootstrap.min.css">
 <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
 <link rel="stylesheet" type="text/css" href="/Dashboard/css/custom.css">
 
 <script language='javascript' src='/JS/jquery.js'></script>
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
  </style>
  <script>

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

function mlhandle()
{
 postTableEncrypt(document.formML.postSecurityFlag, document.formML);
 document.formML.submit();
 parent.location.reload();
}
function refreshself()
		{
			top.window.location.href ='/login.asp';
		}
			
		function GET_C(Name)
		{
			var search = Name + "=";
			if ( document.cookie.length > 0 )
			{
				offset = document.cookie.indexOf(search);
				if ( offset != -1 )
				{
					offset += search.length;
					end = document.cookie.indexOf(";", offset);
					if(end == -1) end = document.cookie.length;
					return unescape(document.cookie.substring(offset, end));
				}
				else
				return "";
			}
			else
			return "";
		}
function setpass(obj){
 <% passwd2xmit(); %>
 obj.isclick = 1;
 postTableEncrypt(document.cmlogin.postSecurityFlag, document.cmlogin);
}
</SCRIPT>
</head>
 <body onload="on_init()" >
<div class="container-fluid">
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12 logo_box_login" style="position: relative;margin-left:-30px">
 <img src="/img/logo.jpg" class="img-fluid" alt="">
</div>
</div>
</div>
<div class="login_box container" style="margin-top:30px;">
  <div class="row" id="div_login">
  <div class="col-sm-5 col-5 text-center offset-4 " style="margin-top: 40px;">
  <form action=/boaform/admin/formLogin method=POST name="cmlogin">
  <input type="hidden" name="challenge">
  <input type="hidden" name="code1" id="code1" />
  <div class="login_body" style="background-color:#cacaca40; border-radius:10px;margin-left:-18%; margin-top:-50px !important;margin-right:40px;width:100%;height:100%; margin-top:20px">
   <h1 style="color: #fd6102;margin-left:-20px; font-size: 40px;">Login Now</h1>
   <div class="form-group input-group pb-2">
	                      <input id="username" name="username" size="20" autocomplete="off" class="form-control" placeholder="Username: "> 
					</div>
  <div class="form-group input-group pb-2">
	                  		<input id="password"  type="password" name="password" size="20" autocomplete="off" class="form-control" placeholder="Password: ">
					 	</div>
   <div class="form-group input-group">
					 <input id="ValidateCode" class="form-control" type="validateCode" name="validateCode" placeholder="ValidateCode"/>
	                    <input id="Captcha_url" type="hidden" name="captcha_url" value="">
					</div>
          <div style="COLOR: #ff0000" align="center" colspan="3" id='errmsg' name='errmsg'></div>
					 <div class="form-group">
						<input id="loginbutton" style="float: left;" onclick="setpass(this)" type="button" value="Login" name="loginbutton" class=" login_btn btn-sm">
            
									<span style="padding-top: 12px;" id="Valitag"></span>
						
					<INPUT style="float: right;" id="Refresh" onclick="refreshself()" type="button" value="Refresh" name="Refresh" class="login_btn" >
 <div <% checkWrite("checkcode"); %>><canvas id="canvas" width="130" height="40" size="0" autocomplete="off" class="form-captcha"></canvas></div>
   
  <input type="hidden" value="/admin/login.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
  </div>
  </form>
    </div>
  </div>
 </div>
  <script>
  
 var canvas = document.getElementById("canvas");
 var context = canvas.getContext("2d");
 var num
 canvas.onclick = function () {
  context.clearRect(0, 0, 130, 40);
  draw();
 }
 function getColor() {
  var r = Math.floor(Math.random() * 256);
  var g = Math.floor(Math.random() * 256);
  var b = Math.floor(Math.random() * 256);
  return "rgb(" + r + "," + g + "," + b + ")";
 }
 function getColor1() {
  var r = Math.floor(Math.random() * 256);
  var g = Math.floor(Math.random() * 128);
  var b = Math.floor(Math.random() * 256);
  return "rgb(" + r + "," + g + "," + b + ")";
 }
 function draw() {
  context.strokeRect(0, 0, 130, 40);
  var aCode = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0",
   "a", "b", "d", "e", "f", "g", "h", "i", "j",
   "m", "n", "p", "q", "r", "t",
   "u", "y",
   "A", "B", "D", "E", "F", "G", "H", "J",
   "L", "M", "N", "P", "Q", "R", "T",
   "U", "Y"];
  var arr = []
  for (var i = 0; i < 5; i++) {
   var x = 10 + i * 22;
   var y = 30;
   var index = Math.floor(Math.random() * aCode.length);
   var txt = aCode[index];
   context.font = "bold 35px Arial";
   context.fillStyle=getColor1();
   context.translate(x,y);
   var deg=90*Math.random()*Math.PI/1800;
   context.rotate(deg);
   context.fillText(txt, 0, 0);
   context.rotate(-deg);
   context.translate(-x,-y);
   arr[i] = txt;
  }
  num = arr[0] + arr[1] + arr[2] + arr[3] + arr[4];
  document.getElementById("code1").value=num;
  }

 function mlhandle()
 {
  postTableEncrypt(document.formML.postSecurityFlag, document.formML);
  document.formML.submit();
  parent.location.reload();
 }
 function refresh()
 {
  window.location.reload();
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

 function on_init()
 {
  document.forms[0].username.focus();
  context.clearRect(0, 0, 150, 50);
  draw();
 }
 </script>
</body>
</html>

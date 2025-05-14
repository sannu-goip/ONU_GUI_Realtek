<html>
 <head>
 <title>Login</title>
 <meta http-equiv="Content-Type" content="text/html" charset="utf-8">
 <script type="text/javascript" src="rollups/md5.js"></script>
 <script type="text/javascript" src="php-crypt-md5.js"></script>
 <SCRIPT language="javascript" src="/common.js"></SCRIPT>
 <script type="text/javascript" src="/JS/jquery.min.js"></script>
 <script type="text/javascript" src="/JS/bootstrap.min.js"></script>
 <script type="text/javascript" src="/JS/popper.min.js"></script>
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
  position: fixed;
  right: 0;
  bottom: 0;
  min-width: 100%;
  min-height: 100%;
}
.content {
  position: fixed;
  bottom: 0;
  background: rgba(0, 0, 0, 0.5);
  color: #f1f1f1;
  width: 100%;
  padding: 20px;
}
  width: 200px;
  font-size: 18px;
  padding: 10px;
  border: none;
  background: #000;
  color: #fff;
  cursor: pointer;
}
  background: #ddd;
  color: black;
}
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
    padding: 7px;
    width: 35%;
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
 <body onload="on_init()" >
<div class="container-fluid">
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12 logo_box_login" style="position: relative;margin-left:-33px">
 <img style="max-width: 20% !important" src="/img/logo.png" class="img-fluid" alt="">
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
      <input id="username" name="username" size="20" autocomplete="off" class="form-control" placeholder="<% multilang("836" "LANG_USER"); %><% multilang("701" "LANG_NAME"); %>:">
   </div>
   <div class="form-group input-group pb-2">
    <input id="password" type="password" name="password" size="20" autocomplete="off" class="form-control" placeholder="<% multilang("67" "LANG_PASSWORD"); %>:">
   </div>
   <div class="form-group input-group" <% checkWrite("checkcode"); %>>
    <input id="input_code" class="form-control" type="validateCode" name="input_code" placeholder="ValidateCode"/>
   </div>
 <div <% checkWrite("checkcode"); %>><canvas id="canvas" width="130" height="40" size="0" autocomplete="off" class="form-captcha"></canvas></div>
   <div class="form-group">
      <INPUT type=submit style="float: left;" value="<% multilang("815" "LANG_LOGIN"); %>" name="save" onClick="setpass(this)" id="login" class="login_btn">
   <INPUT id="Refresh" onclick="refresh()" type="button" style="float: right;" value="<% multilang("222" "LANG_RESET"); %>" id="reset" class="login_btn">
      <INPUT type=hidden name=encodePassword value="">
   </div>
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
 function refresh()
 {
  window.location.reload();
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




<html>
	<head>
		<title>Login</title>
		<meta http-equiv=Content-Type content="text/html; charset=gb2312">
		<meta content="Microsoft FrontPage 5.0" name="GENERATOR">
		<script type="text/javascript" src="/JS/jquery.min.js"></script>
		
    <script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript" src="/JS/popper.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">  

    <link rel="stylesheet" type="text/css" href="/Dashboard/css/bootstrap.min.css">
	<link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="/Dashboard/css/custom.css"> 
		<script language='javascript' src='/JS/jquery.js'></script>
		<script language='javascript' src='/JS/util.js'></script>
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
		<script language="javascript" type=text/javascript>
		if ( self != top )
			top.location.href = '/cgi-bin/login.asp';
		function getsec(str)
		{
			var str1=str.substring(1,str.length)*1;    
			var str2=str.substring(0,1);  
			if (str2=="s")
			{  
				return str1*1000; 
			}
			else if (str2=="h")
			{  
				return str1*60*60*1000; 
		  }
			else if (str2=="d")
			{  
				return str1*24*60*60*1000; 
		  }  
		}
		
		function refreshself()
		{
			top.window.location.href ='/cgi-bin/login.asp';
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
		
		function SET_C_T(name, value, time)
		{
			var strsec = getsec(time); 
			var exp = new Date();  
			exp.setTime(exp.getTime() + strsec*1);  
			document.cookie = name + "="+ escape (value) + ";expires=" + exp.toGMTString()+";path=/;";
		} 

		function SET_C(name, value)
		{
			document.cookie = name + "="+ escape (value) + ";path=/;";
		}

		function DEL_C(name)
		{
			var exp = new Date();
			exp.setTime(exp.getTime() - 10000);
			document.cookie = name + "=del;expires=" + exp.toGMTString();
			document.cookie = name + "=del;expires=" + exp.toGMTString()+";path=/;";
		}

		function onHandleKeyDown(e)
		{
			var key = 0;
			if (window.event)
			{
				key = window.event.keyCode;
			}
			else if (e)
			{
				key = e.which;
			}
			if (key == 13 && document.activeElement.id != 'loginbutton')
			{
				doLogin();
			}
		}
		document.onkeypress = onHandleKeyDown;

		var loginTimes = 0;

		function doLogin()
		{
	
	var Captchastr = document.getElementById('ValidateCode');
	var Captchaimg = document.getElementById('captchaimg').src;
	var Captchaurl = document.getElementById('Captcha_url');	
	var captcha  ="";
	var captchaIndx ="";
		
			/* check empty */
			if ( 0 == $('#username').val().length )
			{
				alert('Username cannot be null');
				return false;
			}

			if ( 0 == $('#password').val().length )
			{
				alert('Password cannot be null');
				return false;
			}
	
		if (Captchastr.value == "")
		{
			alert('ValidateCode cannot be null');
			return false;
		}
	
		captcha = Captchaimg.split("_");
		captchaIndx = captcha[1].split(".");	
		Captchaurl.value = captchaIndx[0];
		
			if( (GET_C("loginTimes") != "") && (typeof(GET_C("loginTimes")) != "undefined") )
				loginTimes = parseInt(GET_C("loginTimes"));
			if ( loginTimes >= 3 )
			{
				$('#errmsg').text('Login three times fail, Webpage locked,please login after 1 minute!');
				return false;	
			}
			SET_C_T("loginTimes", loginTimes, "s60");
			var form = $('#loginui');
	    $.ajax({
	        url: login_check_addr,
	        type: form.attr("method"),
	        data: form.serialize(),
	        dataType: "json",
	        beforeSend: function () 
	        {
	        	$('#loginbutton').attr('disabled', true);
	        },
	        error: function ()
	        {
	        	$('#loginbutton').attr('disabled', false);
	 					alert('fetal error!');
	        },
	        complete:function ()
	        {
	        	$('#loginbutton').attr('disabled', false);
	        },
	        success: function (result)
	        {
	        		if ( '1' == result.Locked )
	        		{
	        				$('#errmsg').text('Login three times fail, Webpage locked,please login after 1 minute!');
	        				loginTimes = 0;
	        				DEL_C('loginTimes');
	        		}
	        		else if ( '1' == result.Logged )
	        		{
	        				$('#errmsg').text('Admistrator account is login!');
	        				loginTimes = 0;
	        				DEL_C('loginTimes');		
	        		}
	        		else if ( '2' == result.Logged )
	        		{
	        				$('#errmsg').text('User account is already login!');
	        				loginTimes = 0;
	        				DEL_C('loginTimes');
	        		}
					
					else if( '2' == result.CaptchaOK )
					{
							$('#errmsg').text('ValidateCode Error');
					}
						
	        		else if ( '0' == result.Privilege )
	        		{
	        				loginTimes += 1;
									SET_C_T("loginTimes", loginTimes, "s60");
	        				$('#errmsg').text('You already login incorrectly for ' +  loginTimes + ' time!');      			
	        		}
	        		else if ( '1' == result.Privilege || '2' == result.Privilege )
	        		{
	        				loginTimes = 0;
	        				DEL_C('loginTimes');
	        				SET_C('ecntToken', result.ecntToken);
	        				top.location.href = '/cgi-bin/content.asp';
	        		}
	        }
	    });
		}

		function LoadFrame()
		{
			$('#username').val('admin');
			$('#username').focus();
		}

		
		function LanguageSelect()
		{			
			var vForm = document.loginui;
			switch (vForm.selectLanguage.value)
			{
				case 'Chinese':
				vForm.Language_Flag.value = "1";	
				break;

				case 'English':
				vForm.Language_Flag.value = "2";
				break;
				
				default:
				break;
			}

			document.loginui.submit();
		}
 
	</script>
	<body onload="LoadFrame()" >
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
					 	<div class="form-group input-group pb-2">
	                  		<input id="password"  type="password" name="password" size="20" autocomplete="off" class="form-control" placeholder="Password: ">
					 	</div>
	                <div class="form-group input-group">
					 <input id="ValidateCode" class="form-control" type="validateCode" name="validateCode" placeholder="ValidateCode"/>
	                    <input id="Captcha_url" type="hidden" name="captcha_url" value="">
					</div>
				<div style="COLOR: #ff0000" align="center" colspan="3" id='errmsg' name='errmsg'></div>
					 <div class="form-group">
						<input id="loginbutton" style="float: left;" onclick="doLogin()" type="button" value="Login" name="loginbutton" class=" login_btn btn-sm">
									<span style="padding-top: 12px;" id="Valitag"></span>
						
					<INPUT style="float: right;" id="Refresh" onclick="refreshself()" type="button" value="Refresh" name="Refresh" class="login_btn" >
<br>
<br>
<input id="Language_Flag" type="hidden" name="Language_Flag" value="0">
										<select id=selectLanguage onChange=LanguageSelect() name="selectLanguage">
											<option value="Chinese" >Chinese  
											<option value="English" selected>English 
							            </select>
	                   

									  <SCRIPT language=javascript>
										var Valivalue ="";
										var html = "";
										var url = "/captcha/";
										var ValitagValue = document.getElementById('Valitag');
										
										Valivalue ="captcha_9";
										html = "<img id = captchaimg  name=captchaimg src=" + url + Valivalue+ ".gif height=45px width=120px padding=5px>";
										ValitagValue.insertAdjacentHTML('afterbegin', html);
									</SCRIPT>
									
	                 </div>
				</div>
			
		
         </form>
        </div>
	 </div>
	 
	
	 
 </div>								
					
</body>
</html>

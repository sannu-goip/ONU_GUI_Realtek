
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="0" type="image/x-icon">
    <link rel="stylesheet" href="/Dashboard/Modules/fontawesome/css/font-awesome.min.css">
    <title>CWMP</title>
    <link href="/Dashboard/Modules/leftmenu/css/scoop-vertical.css" rel="stylesheet">
    <link rel="stylesheet" href="/Dashboard/css/bootstrap.min.css">
    <link href="/Dashboard/Modules/leftmenu/css/simple-line-icons.css" rel="stylesheet">
    <link href="/Dashboard/Modules/leftmenu/css/jquery.mCustomScrollbar.css" rel="stylesheet">
    <link href="/Dashboard/css/custom.css" type="text/css" rel="stylesheet">
      <link href="/css/custom-nav.css" type="text/css" rel="stylesheet">
    <!-- <link href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet"> -->
        <style>
           .PasswordPwdEye{
                position: relative;
                float: right;
            }
		</style>

        <script language="javascript" src="/Dashboard/JS/menu.js"></script>
     <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>

     <SCRIPT language=JavaScript type=text/javascript>
function stCWMP(domain,InformEnb,Interval,URL,Username,Password,CntReqName,CntReqPwd,sslCertEnbl)
{
this.domain = domain;
this.InformEnb = InformEnb;
this.Interval = Interval;
this.URL = URL;
this.Username = Username;
this.Password = Password;
this.CntReqName = CntReqName;
this.CntReqPwd = CntReqPwd;
this.sslCertEnbl = sslCertEnbl;
}
var URLAccessAttr = 'Subscriber';
var UsrAccessAttr = 'Subscriber';
var PwdAccessAttr = 'Subscriber';
var conUsrAccessAttr = 'Subscriber';
var conPwdAccessAttr = 'Subscriber';
var temp = new Array(new stCWMP("InternetGatewayDevice.ManagementServer","1","20","http://122.193.99.166:80/comserver/node1/tr069","hgw","hgw","itms","itms","0"),null);
var cwmp = temp[0];
var msg = new Array(6);

var midLastRadioValue = "0";

msg[0] = "Upload the certificate file successfully!";
msg[1] = "Certificate file is illegal, and fail to upload the certificate file!";
msg[2] = "The function of certificate have been prohibited!";
msg[3] = "The function of certificate have been enabled!";
msg[4] = "The certificate file does not exist, please upload first!";
msg[5] = "The certificate file is so large that fail to upload!";





function isSafeStringSN(val)
{
if ( val == "" )
{
return false;
}
for ( var j = 0 ; j < val.length ; j++ )
{
if ( !isSafeCharSN(val.charAt(j)) )
{
return false;
}
}
return true;
}
function isSafeCharSN(val)
{
if (((val >= 'A')&&(val <= 'Z'))
||((val >= 'a')&&(val <= 'z'))
||((val >= '0')&&(val <= '9'))
||(val == ':')||(val == '/')
||(val == '-')||(val == '.')
||(val == '_'))
{
return true;
}
else
{
return false;
}
}

function isTimeFormat(str)
{
	if(str.length > 20 || str.length < 19)	//0001-01-01T00:00:00Z
		return false;

	if(str.substr(10, 1) != 'T' || str.substr(4, 1) != '-' || str.substr(7, 1) != '-' || str.substr(13, 1) != ':' || str.substr(16, 1) != ':' || (str.substr(19, 1) != 'Z' && str.length == 20))
		return false;
	
	if(str.substr(0, 4) < '0001' || str.substr(0, 4) > '9999')	
		return false;
			
	if(str.substr(5, 2) < '01' || str.substr(5, 2) > '12')
		return false;
			
	if(str.substr(8, 2) < '01' || str.substr(8, 2) > '31')	
		return false;
			
	if(str.substr(11, 2) < '00' || str.substr(11, 2) > '23')	
		return false;		

	if(str.substr(14, 2) < '00' || str.substr(14, 2) > '59')	
		return false;		

	if(str.substr(17, 2) < '00' || str.substr(17, 2) > '59')	
		return false;	
				
	return true;
	
}

function isSafeStringSN(val)
{
if (val == "")
{
return true;
}
for ( var j = 0 ; j < val.length ; j++ )
{
if ( !isSafeCharSN(val.charAt(j)) )
{
return false;
}
}
return true;
}
function AddSubmitParam(SubmitForm,type)
{
/*var MiddlewareURL;
SubmitForm.addForm('ConfigForm','x');
SubmitForm.addParameter('y.Tr069Enable', getRadioVal("Tr069Enable"));
if ((0 == getRadioVal("Tr069Enable")) || (2 == getRadioVal("Tr069Enable")))
{
MiddlewareURL = getValue("MiddlewareAddress") + ":" + getValue("MiddlewarePort");
SubmitForm.addParameter('y.MiddlewareURL', MiddlewareURL);
}
SubmitForm.setAction('setcfg.cgi?x=InternetGatewayDevice.ManagementServer&y=InternetGatewayDevice.DeviceInfo.X_CT-COM_MiddlewareMgt&'
+ 'RequestFile=html/network/tr069.asp');*/
}
function SubmitCert()
{
	var SslForm =document.SslForm;
	var string = SslForm.filename.value.search(/pem/);
	
		if(SslForm.filename.value=="")
		{
			alert("Please select the certificate file to upload!");
		}
		else
		{
			SslForm.postflag.value = "1";
			resetEBooValueCookie();
			SslForm.submit();
		}

}

function applySave()
{
    document.STUNForm.AutoStunPortEnableFlag.value = "1";
   

    if(CheckSTUNForm() == false)
    {
        return;
    }

    document.STUNForm.SaveSTUNFlag.value = "1";
    if( true == setEBooValueCookie(document.STUNForm) )
    {
        document.STUNForm.submit();
    }
}
</SCRIPT>

</head>
<body onload="FinishLoad();if(getElById('ConfigForm') != null)LoadFrame();if(getElById('OLTForm') != null)LoadOLTForm()" onunload="DoUnload()">
<INPUT id=Selected_Menu type=hidden 
            value="Net->CWMP" name=Net_TR069>
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
							        MakeLeftMenu("TR069", "TR069");
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:',"TR069","TR069",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                                <div class="scoop-inner-content">
									  
								
														 
								
								<div class="white_box" name="CwmpConfig">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/TR069.png" width="45" height="40" class="img_sub" alt=""/> TR069 Server:</h1>
									<div class="container-fluid">
									<div class="lighter_grey_bg">										
											<p>Terminal WAN management protocol(TR-069) allows automatic configuration server(ACS) to automatically configuate the gateway,</p>
                                            <p>assign business, collect status and statistical information and diagnose.After input related information, please click on the &quot;Confirm&quot; to  </p>
                                            <p>configure the parameters of TR-069 client. </p>
										</div>	
                                    <form  class="row" name="ConfigForm" action="/cgi-bin/net-tr069.asp" method="post">
                   
										<div class="col-md-12 form-group" id="En069Info">
											<h2 class="sub_heading">Middleware Mode</h2>
											<div class="custom-control custom-radio custom-control-inline">
                                                  <input onclick="ntpEnbltr069()" type="radio" value="0" class="custom-control-input" id="customRadioInline5"
                        name="Tr069Enable" /> 
												  <label class="custom-control-label" for="customRadioInline5">Open Middleware(Including TR069 function)</label>
												</div>
											<div class="custom-control custom-radio custom-control-inline">
                                            <input onclick="ntpEnbltr069()" type="radio" value="1"  class="custom-control-input" id="customRadioInline6"
                        name="Tr069Enable" checked/> 
                        Close Middleware
												  <label class="custom-control-label" for="customRadioInline6"> Close Middleware</label>
												</div>
											<div class="custom-control custom-radio custom-control-inline">
                                                  <input onclick=ntpEnbltr069() type=radio value="2"   class="custom-control-input" id="customRadioInline7"
                        name="Tr069Enable" /> 
												  <label class="custom-control-label" for="customRadioInline7">Open Middleware(Excluding TR069 function)</label>
												</div>
										</div>
                                        <div class="row">
                                        <input type="hidden" name="EnTr069Flag" value="1">
                          <input type="hidden" name="ActiveCwmpFlag" value="Yes">
                      		<INPUT TYPE="HIDDEN" NAME="isMidwareSupported" value="0">
                          <script language="JavaScript" type="text/JavaScript">
function ntpEnbltr069()
{
with (getElById ("ConfigForm"))
{
	if(midLastRadioValue == "0" && Tr069Enable[2].checked == true || midLastRadioValue == "2" && Tr069Enable[0].checked == true)
	{
		alert("Cannot directly switch between middleware(including TR069 function) and middleware(excluding TR069 function).");
		if(midLastRadioValue == "0")
			Tr069Enable[0].checked = true;
		else
			Tr069Enable[2].checked = true;
	}
	
	if(midLastRadioValue == "0" && Tr069Enable[1].checked == true || midLastRadioValue == "1" && Tr069Enable[0].checked == true)
		alert("Please reboot when switchs between open middleware(including TR069 function) and close middleware(including TR069 function).");
	
	if (Tr069Enable[1].checked == true)
	{
		setDisplay("midurl", 0);
		ActiveCwmpFlag.value = "Yes";
		EnTr069Flag.value = "1";
	}
	else
	{
		setDisplay("midurl", 1);
		if(Tr069Enable[0].checked == true)
		{
			ActiveCwmpFlag.value = "Yes";
			EnTr069Flag.value = "0";
		}
		else
		{
			ActiveCwmpFlag.value = "Yes";
			EnTr069Flag.value = "2";
		}
	}
}
}
if(document.ConfigForm.isMidwareSupported.value == 1)
	getElById("En069Info").style.display = "";
else
getElById("En069Info").style.display = "none";

</script>
                                        </div>
                                         <div class="row" id="midurl">
										<div class="col-md-12 form-group">
											<h2 class="sub_heading">Middleware Server URL</h2>
										</div>
										<div class="col-md-3 form-group">
											<label>Address:</label>
                                            <input id=MiddlewareAddress maxLength=256 type="text" class="form-control"
                        name="MiddlewareAddress" value=""/>
										</div>
										<div class="col-md-2 form-group">
											<label>Port</label>
                                            <INPUT id="MiddlewarePort" maxLength="256" type="text" class="form-control"
                        size=8 name="MiddlewarePort" value="0">
										</div>
                                        </div>

										<div class="col-md-12 form-group custom-control">
											<h2 class="sub_heading custom-control ">Periodic Notification</h2>
											<div class="custom-control col-md-3">
											<div class="custom-control custom-radio custom-control-inline">
                                                  <input class="custom-control-input" id="PeriodicInformEnable" type="radio" value="No" name="PeriodicInformEnable" />
												  <label class="custom-control-label" for="PeriodicInformEnable">Disable</label>
												</div>
											<div class="custom-control custom-radio custom-control-inline">
                                                  <input id="radio" type="radio" value="Yes" name="PeriodicInformEnable" class="custom-control-input" checked/>
												  <label class="custom-control-label" for="radio">Enable</label>
												</div>
											</div>
										</div>
										<div class="col-md-3 form-group">
											<label>Periodic Notification Time Interval</label>
                                            <input id="PeriodicInformInterval"  class="form-control" type="text" maxLength=10 
                        name="PeriodicInformInterval" value="43200"/>
											<label>[0 - 2147483647]</label>
										</div>
                                        <div class="col-md-3 form-group" style='display:none'>
											<label>Periodic Notification Time</label>
                                         <INPUT id="PeriodicInformTime" maxLength="20" 
                        name="PeriodicInformTime" value="0001-01-01T00:00:00Z">
											<label>[yyyy-mm-ddThh:dd:ss]</label>
										</div>
										<div class="col-md-3 form-group">
											<label>Server Domain Name</label>
                                            <input id="URL"  type="text" class="form-control" maxLength="256"
                        name="URL" value=""/>
											<label>IP Address and Port:</label>
										</div>
										<div class="col-md-3 form-group">
											<label>Connection Request Port:</label>
                                            <input id="ConnReqPort" type="text" class="form-control" maxLength="256"
                        name="ConnReqPort" value="7547"/>
										</div>
										<div class="w-100 d-none d-md-block"></div>
										<div class="col-md-3 form-group">
											<label>Platform User Name:</label>
                                            <input id="Username" type="text" class="form-control"
                        maxLength="256" name="Username" value=""/>
										</div>
										<div class="col-md-3 form-group">
											<label>Platform Password:</label>
                                            <span id="inpsw"><input id="Password" class="form-control" type="password" maxLength=256 name="Password" value=""/></span>

                                            
										</div>
										<div class="col-md-3 form-group">
											<label>Terminal User Name:</label>
                                            <input name="ConnectionRequestUsername" id="ConnectionRequestUsername"
                       class="form-control" value="" maxLength=256/>
										</div>
										<div class="col-md-3 form-group">
											<label>Terminal Password:</label>
                                            <span id="inrapsw"><input class="form-control" name="ConnectionRequestPassword" type="password" id="ConnectionRequestPassword" value="" maxLength="256"/></span>

                                            
										</div>

                                        <div class="row col-md-6" >
                                        
										<div class="col-md-6 form-group ">
											<label>Authentication mode</label>
                                            <SELECT id=sslAuthMode name="sslAuthMode" class="custom-select">
	                      <OPTION value="1" >Client authentication
	                      <OPTION value="2" >Server authenticdation
	                      <OPTION value="3" >Two-way authentication
	                      </SELECT>
										</div>
                                           
										<div class="col-md-12 form-group">
											<h2 class="sub_heading">Enable Certificate Function</h2>
											<div class="custom-control custom-radio custom-control-inline">
                                            <input class="custom-control-input"  id="customRadioInline3" onclick="SSLCertChange()" type="radio" value="0" name="X_ATP_SSLCertEnable" checked/> 
												  <label class="custom-control-label" for="customRadioInline3">Disable</label>
												</div>
											<div class="custom-control custom-radio custom-control-inline">
                                            <input  id="customRadioInline4" class="custom-control-input" onclick="SSLCertChange()" type="radio" value="1" name="X_ATP_SSLCertEnable" /> 
												  <label class="custom-control-label" for="customRadioInline4">Enable</label>
												</div>
										</div>
</div>

 <input type="hidden" name="SaveFlag" value="0">
		<SCRIPT language=JavaScript type=text/javascript>
		    if (document.ConfigForm.isMidwareSupported.value == 1)
		        getElById("midurl").style.display = "";
		    else
		        getElById("midurl").style.display = "none";
			  
		</SCRIPT>
                          <script language="JavaScript" type="text/JavaScript">
function LoadOLTForm()
{

    with (getElById('OLTForm'))
        {
            if(VerificationType[0].checked == true)
            {
                setDisplay('LoidUsernameDiv',1);
                setDisplay('LoidPasswordDiv',1);
                setDisplay('PasswordModeDiv',0);
                setDisplay('PasswordPwdDiv',0);
                setDisplay('PasswordSNDiv',0);
                document.OLTForm.PasswordFlag.value = "0";
            }
            else if(VerificationType[1].checked == true)
            {
                setDisplay('LoidUsernameDiv',0);
                setDisplay('LoidPasswordDiv',0);
                setDisplay('PasswordModeDiv',1);
                setDisplay('PasswordPwdDiv',1);
                setDisplay('PasswordSNDiv',1);
                document.OLTForm.PasswordFlag.value = "1";
            }

        }
}
function LoadFrame()
{

	document.ConfigForm.SaveFlag.value = "0";
	document.SslForm.postflag.value = "0";

	document.OLTForm.SubmitFlag.value = "0";
	
	setDisplay('SslForm', 0);
	
	midLastRadioValue = document.ConfigForm.EnTr069Flag.value;
	
	if(midLastRadioValue == "0")
	{
		document.ConfigForm.Tr069Enable[0].checked = true;
		setDisplay("midurl", 1);
	}
	else if(midLastRadioValue == "2")
	{
		document.ConfigForm.Tr069Enable[2].checked = true;
		setDisplay("midurl", 1);
	}
	else
	{
		document.ConfigForm.Tr069Enable[1].checked = true;
		setDisplay("midurl", 0);
	}

	document.STUNForm.SaveSTUNFlag.value = "0";
}
function SSLCertChange()
{
with (getElById('ConfigForm'))
{

	if (X_ATP_SSLCertEnable[1].checked == true)
	{
		
	}else{
		setDisplay('SslForm', 0);
	}
}
}
function StringCheck(val)
{
    re = /^[^\s]+$/;
    if( re.test(val) )
        return true;
    else
        return false;
}

function CheckSTUNForm()
{
        with (getElById ("STUNForm")){
            if (StunEnable[1].checked == true)
            {
                if (StunServerAddr.value ==''){
                        alert("Stun server Address field can not be empty.");
						console.log("false 1")
                        return false;
                }
                if (StunServerPort.value == ''){
                        alert("Stun Port Field Can Not be Empty");
						console.log("false 2")
                        return false;
                }
                if (!isValidPort(Number(StunServerPort.value))){
                        alert("Invalid port,please enter again!");
						console.log("false 3")
                        return false;
                }
                if ((StunKeepAliveMaxTime.value == '') || (Number(StunKeepAliveMaxTime.value) <= 0)){
                        alert("Invalid max keep alive time,please enter again!");
						console.log("false 7")
                        return false;
                }
                if ((StunKeepAliveMinTime.value == '') || (Number(StunKeepAliveMinTime.value) <= 0)){
                        alert("Invalid min keep alive time,please enter again!");
						console.log("false 8")
                        return false;
                }
                if (Number(StunKeepAliveMaxTime.value) < Number(StunKeepAliveMinTime.value)){
                        alert("Max keep alive time should equal or greater than min keep alive time.");
						console.log("false 10")
                        return false;
                }
            }
        }
        return true;
}
function isSafeStringForV6(val)
{
if ( val == "" )
{
return false;
}
for ( var j = 0 ; j < val.length ; j++ )
{
if ( !isSafeCharForV6(val.charAt(j)) )
{
return false;
}
}
return true;
}
function isSafeCharForV6(val)
{
if (((val >= 'A')&&(val <= 'Z'))
||((val >= 'a')&&(val <= 'z'))
||((val >= '0')&&(val <= '9'))
||(val == ':')||(val == '/')
||(val == '-')||(val == '.')
||(val == '_')||(val == '[')||
(val == ']'))
{
return true;
}
else
{
return false;
}
}
function stmid(domain,midurl, tr069enable)
{
this.domain = domain;
this.Url = midurl;
this.Tr069enable = tr069enable;
}
function CheckForm()
{
with (getElById ("ConfigForm"))
{
	var value1;
	var value2 = null;
	var url = /^https*:\/\/[\w\[]+/;
	var path = /^\/\w+/;
var midcom = new Array(new stmid("InternetGatewayDevice.DeviceInfo.X_CT-COM_MiddlewareMgt","0.0.0.0:0","1"),null);
var mid = midcom[0];

	value1 = URL.value;
	if(value1 == "") {
		alert("ACS URLCannot be empty");
		return false;
	}
	if( !isSafeStringForV6(value1)){
		alert("ACS URLis invalid");
		return false;
	}
	if(!StringCheck(value1)){
		alert("ACS URLis invalid");
		return false;
	}
	else{	
		if(StringCheck(value1)){
			value2 = value1.match(url);
			if(value2 == null){
				alert("ACS URLis invalid");
				return false;
			}
		}
	}

if(URL.value.indexOf("http://") !=0 && URL.value.indexOf("https://") !=0)
{
alert("ACSshould begin with 'http://'or'https://'Begin");
return false;
}
if (PeriodicInformEnable[1].checked == true &&PeriodicInformInterval.value =='' )
{
alert("Periodic notification time interval is invalid.");
return false;
}
if ((PeriodicInformInterval.value == '') || (isPlusInteger(PeriodicInformInterval.value) == false))
{
alert("Periodic notification time interval is invalid.");
return false;
}
if (false)
{
if (PeriodicInformEnable[1].checked == true && PeriodicInformTime.value =='' )
{
alert("Periodic notification time is invalid.");
return false;
}
if ((PeriodicInformTime.value == '') || (isTimeFormat(PeriodicInformTime.value) == false) )
{
alert("Periodic notification time is invalid.");
return false;
}
}
var info = parseFloat(PeriodicInformInterval.value );
if (info < 0 || info > 2147483647)
{
alert("Periodic notification time interval is invalid.");
return false;
}
if (isValidString(Username.value) == false )
{
alert("ACSuser name is invalid.");
return false;
}
if (isValidString(Password.value) == false )
{
alert("ACSpassword is invalid.");
return false;
}
if (isValidString(ConnectionRequestUsername.value) == false )
{
alert("The user name of connection request is invalid.");
return false;
}
if (isValidString(ConnectionRequestPassword.value) == false )
{
alert("The password of connection request is invalid.");
return false;
}
}
with (getElById ("ConfigForm"))
{
if (Tr069Enable[1].checked == true &&Tr069Enable.value =='' )
{
alert("The enable function of Tr069Enable is invalid.");
return false;
}
if (mid.Tr069enable == '0' && Tr069Enable[2].checked == true)
{
alert("The state of tr069enable cannot switch from 0 to 2!");
return false;
}
if (mid.Tr069enable == '2' && Tr069Enable[0].checked == true)
{
alert("The state of tr069enable cannot switch from 2 to 0!");
return false;
}
if(Tr069Enable[0].checked == true || Tr069Enable[2].checked == true)
{
if (MiddlewareAddress.value == '')
{
alert("Please enter the address of middleware business management platform!");
return false;
}
if (!isValidIpAddress(MiddlewareAddress.value) && !isSafeStringSN(MiddlewareAddress.value))
{
alert("Invalid address, please enter right IP address or domain name!");
return false;
}
if (MiddlewarePort.value == '')
{
alert("Please enter the port of middleware business management platform!");
return false;
}
if (!isValidPort(MiddlewarePort.value))
{
alert("Invalid port,please enter again!");
return false;
}
}
}
return true;
}
                              function btnSave() {
                                  if (CheckForm() == false)
                                      return;
                                  var Form = document.ConfigForm;
                                  Form.SaveFlag.value = "1";
                                  if (true == setEBooValueCookie(Form))
                                      Form.submit();
                              }
</script>

   </form> 


   <form class="row" id="SslForm" name="SslForm" method="post" enctype="multipart/form-data">

										<div class="col-md-12 form-group">
											<h2 class="sub_heading">  
                  <SCRIPT language=javascript>

					var caExist = 1;



					caExist = 0;



					if(caExist == 1){
						document.write("(The gateway has been loaded with a certificate file!)");
					}
					else
				  		document.write("(The gateway did not load the certificate file!)");

				  </SCRIPT>

</h2>
 
											<p class="normal_text">File Path[Maximum 128 characters]: </p>
											<div class="row">
												<div class="col-md-4">
													<div class="custom-file">
													  <input type=file name="filename" class="custom-file-input" id="customFile">
													  <label class="custom-file-label" for="customFile">Choose file</label>
													</div>
												</div>
												<div class="col-md-4">
                                                 <input id="btnSubmit" class="btn orange_border_btn" onclick="SubmitCert()" type="button" value="Upload" name="btnSubmit"/>
                                                </div>
											</div>
                                            <p id="ResultText" name="ResultText" class="red_text"></p> 
                                             
										</div>
                                        
                                         <input type="hidden" name="postflag" value="0"/>
                          <input type="hidden" name="fileIndex" value="1"/>
										</form>
                                        <hr class="margin_adjs" />
                                         </div>
							     
										
										<div class="form-footer">
                                        <input type="button" class="btn orange_btn"  onclick="btnSave()" id="btnOK" name="btnOK " value="SAVE"/>
				                        <input type="button" onclick="RefreshPage()" class="btn grey_btn" id="Cancel" name="Cancel" value="Cancel"/>
										</div>
								</div>
								<div class="white_box" name="OltConfig">
									<h1 class="heading_grey heading_margin"><img src="/Dashboard/images/certificate.png" width="45" height="40" class="img_sub" alt=""/>
                                    
                                    
                                           <span>Broadband identification code authentication </span> 
                                            
</h1>
									<div class="container-fluid">
									<div class="lighter_grey_bg">										
											<p>
                  	You can set the LOID and password, and then click on &quot;certification&quot; to register and request the business configuration from network management server.
                  	 </p>
										</div>	

                                        

                                        
        
           <form class="row" name="OLTForm" action="/cgi-bin/net-tr069.asp" method="post">
        


<script language=JavaScript type=text/javascript>
    function typeClick() {
        with (getElById('OLTForm'))
        {
            if(VerificationType[0].checked == true)
            {
                setDisplay('LoidUsernameDiv',1);
                setDisplay('LoidPasswordDiv',1);
                setDisplay('PasswordModeDiv',0);
                setDisplay('PasswordPwdDiv',0);
                setDisplay('PasswordSNDiv',0);
                document.OLTForm.PasswordFlag.value = "0";
            }
            else if(VerificationType[1].checked == true)
            {
                setDisplay('LoidUsernameDiv',0);
                setDisplay('LoidPasswordDiv',0);
                setDisplay('PasswordModeDiv',1);
                setDisplay('PasswordPwdDiv',1);
                setDisplay('PasswordSNDiv',1);
                document.OLTForm.PasswordFlag.value = "1";
            }

        }

    }
    function passwordModeChange() {
        with (getElById('OLTForm'))
        {
            if(PasswordMode.value == "ASCII")
            {
                document.OLTForm.HexFlag.value = "false";
                document.getElementById("PasswordPwd").maxLength = "10";
                document.getElementById("PasswordPwdText").innerHTML = "The string contains a maximum of 10 characters.";
            }
            else if (PasswordMode.value == "HEX")
            {
                document.OLTForm.HexFlag.value = "true";
                document.getElementById("PasswordPwd").maxLength = "20";
                document.getElementById("PasswordPwdText").innerHTML = "The string contains a maximum of 10 pairs of hexadecimal digits.";
            }
        }
    }

    function inpsShowhide(){
        var eye = document.getElementById("PasswordPwdEye");
        var pwd = document.getElementById("PasswordPwd");

        if (pwd.type == "password") {
            pwd.type = "text";
                eye.className='fa fa-eye-slash'
        }else {
            pwd.type = "password";
            eye.className='fa fa-eye'
        }
    }
	function loidpsShowhide(){
        var eye = document.getElementById("LOIDEye");
        var pwd = document.getElementById("LoidPassword");

        if (pwd.type == "password") {
            pwd.type = "text";
                eye.className='fa fa-eye-slash'
        }else {
            pwd.type = "password";
            eye.className='fa fa-eye'
        }
    }
</script>

                                        <div class="col-md-12 form-group custom-control">
                                            <label class="custom-control">Verification Method:</label>
                                        
                                        <div class="col-md-3 form-group">
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input class="custom-control-input" id="VerificationType0" onclick="typeClick()"  type="radio" value="LOID" name="VerificationType" checked/>
                                                <label class="custom-control-label" for="VerificationType0">LOID</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input class="custom-control-input" id="VerificationType1" onclick="typeClick()"  type="radio" value="Password" name="VerificationType" />
                                                <label class="custom-control-label" for="VerificationType1">Password</label>
                                            </div>
                                        </div>

                                        <div class="col-md-3 form-group" id="PasswordModeDiv" style="display:none">
                                            <label>Password Mode:</label>
                                            <select id="PasswordMode" name="PasswordMode" class="custom-select" onchange="passwordModeChange()">
                                                <option value="ASCII" selected>ASCII</option>
                                                <option value="HEX" >HEX</option>
                                            </select>
                                        </div>

                                        <div class="col-md-3 form-group" id="PasswordPwdDiv" style="display:none">
                                            <label>Password:</label>
                                            <div class="input-group">
                                                <input type="password" id="PasswordPwd" class="form-control" type="password"  maxLength="10" name="PasswordPwd" value="00000001"/>
                                            </div>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="PasswordPwdText">
                                                The string contains a maximum of 10 characters.
                                                &nbsp;&nbsp;<i class="fa fa-eye" onclick="inpsShowhide()" id="PasswordPwdEye"></i></span>
                                            </div>
                                        </div>
                                        <div class="col-md-3 form-group" id="PasswordSNDiv" style="display:none">
                                            <label>SN:</label>
                                            <div class="input-group">
                                                <input type="text" id="PasswordSN" class="form-control" minlength="12" name="PasswordSN" value="GPON008C71CC"/>
                                            </div>
                                            <div class="input-group-append">
                                                <span class="input-group-text" id="PasswordSNText">
                                                The string contains 12 characters and the last 8 digits must be a hexadecimal number.
                                                </span>
                                            </div>
                                        </div>

                                        
										<div class="col-md-3 form-group" id="LoidUsernameDiv">
											<label>LOID</label>

                                               <input type="text" id="LoidUsername" class="form-control"  
                        maxLength="256"  name="LoidUsername" 
value=""/>


										</div>
                                        	 
										<div class="col-md-3 form-group" id="LoidPasswordDiv">
											<label>Password</label>
                                            <span id="inLoidpsw">										
										<table width="108%">
											<tr>
												<td>
												<input  class="form-control"  id="LoidPassword" type="password"  maxLength="256"  name="LoidPassword"  value=""/></span>
												</td>
												<td>
												<div>	
													<i class="fa fa-eye" onclick="loidpsShowhide()"  id="LOIDEye"></i>
												</div>
												</td>
											</tr>
										</table>
 
										</div>
							      </div>
								</div>
								<div class="col-md-12 form-group">
								    <hr class="margin_adjs" />
								</div>
							<div class="form-footer">
							
							<input  class="btn orange_btn" type="button" id="btnAuth" name="btnAuth"  onclick="doSubmit()" value="Certification"/>
	<input type="button"  class="btn grey_btn" id="btnCancel" name="btnCancel" onclick="RefreshPage()" value="Cancel"/>

                                            

                                            
                                        <input type="hidden" id="broadbandusername" name="broadbandusername" value="">
                	<input type="hidden" id="customer_ID" name="customer_ID" value="">
                	<input type="hidden" id="devReginfoFlag" name="devReginfoFlag" value="1">
                	<input type="hidden" id="newStatusFlag" name="newStatusFlag" value="0">
                	<input type="hidden" id="Register_CHANGE" name="Register_CHANGE" value="1">
                      <input type="hidden" name="SubmitFlag" value="0">
                      <input type="hidden" name="PasswordFlag" value="0">
                      <input type="hidden" name="HexFlag"  value="false" >
                      <script language="JavaScript" type="text/JavaScript">

						function doSubmit() {
							var Form = document.OLTForm;
							if(Form.VerificationType[1].checked == true)
							{
                                var upperCase = /[G-Z]/;
                                var lowerCase = /[g-z]/;
                                var specificSymbol = /[-`=\[\];',.~!@#$%^&*()_+|{}:"?]/;
							    var PasswordPwd = Form.PasswordPwd.value;
							    var PasswordSN = Form.PasswordSN.value;

							    if(PasswordPwd == "")
                                {
                                    alert("Passwordis empty.");
                                    Form.PasswordPwd.focus();
                                    return;
                                }

							    if(Form.HexFlag.value == "true")
                                {
                                    if(upperCase.test(PasswordPwd) || lowerCase.test(PasswordPwd) || specificSymbol.test(PasswordPwd))
                                    {
                                        alert("The password must be a hexadecimal number!");
                                        Form.PasswordPwd.focus();
                                        return;
                                    }
                                }

							    if(PasswordSN != "" && PasswordSN.length != 12)
							    {
							        alert("The string contains 12 characters and the last 8 digits must be a hexadecimal number.");
							        Form.PasswordSN.focus();
							        return;
							    }
							    else
							    {
							        var tempSN= PasswordSN.substring(PasswordSN.length-8, PasswordSN.length);
							        if(upperCase.test(tempSN) || lowerCase.test(tempSN) || specificSymbol.test(tempSN))
                                    {
                                        alert("The last 8 digits must be a hexadecimal number!");
                                        Form.PasswordSN.focus();
                                        return;
                                    }
                                }
							}



							if(Form.LoidUsername.value == "" && Form.VerificationType[0].checked == true)
							{
								alert("LOIDis empty.");
								Form.LoidUsername.focus();
								return;
							}




							Form.broadbandusername.value = Form.LoidUsername.value;
							Form.customer_ID.value = Form.LoidPassword.value;
							document.cookie = "RegPageStatus=1";
							document.cookie = "RegPagetimeoutcount=0";
							document.cookie = "RegPagetimeoutcount_2=0";
							document.cookie = "RegProgressPercent=-1";
							document.cookie = "RegServiceFetch=0";
							document.cookie = "RegServiceNameId=0";
							document.cookie = "RegServiceIPTV=0";
							document.cookie = "RegServiceINTERNET=0";
							document.cookie = "RegServiceVOIP=0";
							document.cookie = "RegServiceOther=0";
							document.cookie = "HasRetryTimesSubmit=0";
						
						

							Form.SubmitFlag.value = "1";
							if( true == setEBooValueCookie(Form) )
								Form.submit();
						}
							
function useAutoStunPortChange()
{
    if (document.STUNForm.UseAutoStunPortEnable.checked)
    {
        document.STUNForm.StunClientPort.setAttribute("disabled", "disabled");
    }
    else
    {
        document.STUNForm.StunClientPort.removeAttribute("disabled");
    }
}
						</script>
                                </form>
							</div>
						</div>
                        <div class="white_box" name="StunConfig" >
						    <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/TR069.png" width="45" height="40" class="img_sub" alt=""/>&nbsp;&nbsp;STUN</h1>
                            <div class="container-fluid">
						            <form class="row" name="STUNForm" id="STUNForm" action="/cgi-bin/net-tr069.asp" method="post">
                                        <input type="hidden" name="SaveSTUNFlag" value="0">
                                        <input type="hidden" id="AutoStunPortEnableFlag" name="AutoStunPortEnableFlag" value="1">
                                        <div class="col-md-12 row form-group custom-control">
                                            <div class="col-md-3 form-group">
						                    <label>STUN:</label>
                                            <INPUT id="StunEnable" type="radio" value="0" name="StunEnable" > Disable&nbsp;&nbsp;&nbsp;
                                            <input id="radio" type="radio" value="1" name="StunEnable" checked>Enable
                                        </div>
                                        <!-- stun server addr -->
				                        <div class="col-md-3 form-group">
				                            <label>STUN Server Address:</label>
                                            <INPUT id="StunServerAddr" class="form-control" maxLength=256 name="StunServerAddr" value="0.0.0.0">
				                        </div>
                                        <!-- stun server port -->
				                        <div class="col-md-3 form-group">
                                            <label>STUN Server Port:</label>
                                            <INPUT id="StunServerPort" class="form-control"  maxLength=256 name="StunServerPort" value="3479">
				                        </div>
                                       
									   <!-- stun server username -->
				                        <div class="col-md-3 form-group">
                                            <label>User Name:</label>
                                            <INPUT id="stunusername" class="form-control"  maxLength=256 name="stunusername" value="">
				                        </div>

										 <!-- stun server password -->
				                        <div class="col-md-3 form-group">
                                            <label>Password:</label>
                                            <INPUT id="stunpassword" class="form-control"  maxLength=256 name="stunpassword" value="">
				                        </div>
                                        
                                        <!-- min keep alive time -->
                                        <div class="col-md-3 form-group">
                                            <label>Min keep alive time, should equal or greater than 30(seconds):</label>
                                            <INPUT id="StunKeepAliveMinTime" class="form-control" maxLength=256 name="StunKeepAliveMinTime" value="">
                                        </div>
                                        <!-- max keep alive time -->
                                        <div class="col-md-3 form-group">
                                            <label>Max keep alive time(seconds):</label>
                                            <INPUT id="StunKeepAliveMaxTime" class="form-control" maxLength=256 name="StunKeepAliveMaxTime" value="">
                                        </div>
                                    </div>
						        </form>
					    </div>

                        <div class="col-md-12 form-group">
                            <hr class="margin_adjs">
                        </div>
                        <div class="form-footer">
                            <input type="button" class="btn orange_btn" onclick="applySave()" id="applyOK" name="applyOK" value="Apply"/>
                            <input type="button" onclick="RefreshPage()" class="btn grey_btn" id="stCancel" name="stCancel" value="Cancel"/>
                        </div>
								</div>
							</div>
						</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	      <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
© 2022-2025 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
    </div>
  <!--  </div>-->
 
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
<!--    <script type="text/javascript" src="/Dashboard/Modules/leftmenu/js/Loader.js"></script>-->
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mCustomScrollbar.concat.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/lib/jquery.mousewheel.min.js"></script>
   <script type="application/javascript">
       $('input[type="file"]').change(function (e) {
           var fileName = e.target.files[0].name;
           $('.custom-file-label').html(fileName);
       });
</script>

<script language="JavaScript">


var URLOpenFlag = "0";
var UsernameOpenFlag = "0";
var PasswordOpenFlag = "0";
var CRUsernameOpenFlag = "0";
var CRPasswordOpenFlag = "0";



if(URLOpenFlag == "1" && getElById('URL') )

	getElById('URL').disabled = true;

if(UsernameOpenFlag == "1" && getElById('Username'))
	getElById('Username').disabled = true;
if(PasswordOpenFlag == "1" && getElById('Password'))
	getElById('Password').disabled = true;
if(CRUsernameOpenFlag == "1" && getElById('ConnectionRequestUsername'))
	getElById('ConnectionRequestUsername').disabled = true;
if(CRPasswordOpenFlag == "1" && getElById('ConnectionRequestPassword'))
	getElById('ConnectionRequestPassword').disabled = true;
</script>
</body>
</html>


<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
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

<title>URL BlockingConfiguration</title>
<SCRIPT>
function addClick()
{
 return true;
}
function addFQDNClick(obj)
{
 if (document.url.urlFQDN.value=="") {
  alert("Please enter the Blocked FQDN !");
  document.url.urlFQDN.focus();
  return false;
 }
 if (document.url.urlFQDN.value.length == 0 ) {
  if (!confirm('FQDN is empty.Please enter the blocked FQDN') ) {
   document.url.urlFQDN.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.urlFQDN.value)) {
  alert("Cannot accept space character in Blocked FQDN. Please try it again.");
  document.url.urlFQDN.focus();
  return false;
  }
 if (checkString(document.url.urlFQDN.value) == 0) {
  alert("Invalid Blocked FQDN !");
  document.url.urlFQDN.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function addKeywordClick(obj)
{
 if (document.url.Keywd.value=="") {
  alert("Please enter the Blocked keyword !");
  document.url.Keywd.focus();
  return false;
 }
 if (document.url.Keywd.value.length == 0 ) {
  if (!confirm('Keyword is empty.Please enter the blocked keyword') ) {
   document.url.Keywd.focus();
   return false;
    }
  else{
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
   }
   if (includeSpace(document.url.Keywd.value)) {
  alert("Cannot accept space character in Blocked keyword. Please try it again.");
  document.url.Keywd.focus();
  return false;
  }
 if (checkString(document.url.Keywd.value) == 0) {
  alert("Invalid Blocked keyword !");
  document.url.Keywd.focus();
  return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function disableDelFQDNButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delFQDN);
 disableButton(document.url.delFAllQDN);
  }
}
function disableDelKeywdButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.url.delKeywd);
 disableButton(document.url.delAllKeywd);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
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
    margin-left:-26px;
    width:365px;
}
.left-field-para{
    margin-left:-26px;
    width:1248px;
}
.right-field-radio{
    margin-left:27px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:37px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:44px;
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
            value="Security->URL Filter" name=Selected_Menu>
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
							        MakeLeftMenu('Security','URL Filter')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Security','URL Filter','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                             <div class="scoop-inner-content">
									  
								
														 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/urlfilter.png" width="45" height="40" class="img_sub" alt=""/> URL Blocking</h1>
  	<div class="container-fluid">
 <hr class="margin_adjs">
 <div class="col-md-12 form-group">
        <div class="custom-control">
 <p class="left-field-para"> This page is used to configure the Blocked FQDN(Such as tw.yahoo.com) and filtered keyword. Here you can add/delete FQDN and filtered keyword.</p>
</div>
</div>
<form action=/boaform/formURL method=POST name="url">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">URL Blocking:</label>
            
                <input class="right-field-radio" type="radio" value="0" name="urlcap" checked> Disable
                <input class="right-field-radio" type="radio" value="1" name="urlcap"> Enable
            
                <input class="right-field" type="submit" value="Apply Changes" name="apply" onClick="return on_submit(this)">
            </div>
        </div>
    </div>

<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">FQDN:</label>
            <input type="text" name="urlFQDN" size="15" maxlength="125" class="right-field">
            <input class="inner_btn" type="submit" value="Add" name="addFQDN" onClick="return addFQDNClick(this)">
        </div>
    </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:250px">URL Blocking  Table</h2>
 </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:343%">
  <tr><td >Select</td>
<td>FQDN</td></tr>

 </table>
</div>
</div>
 <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <input class="link_bg" type="submit" value="Delete Selected" name="delFQDN" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="Delete All" name="delFAllQDN" onClick="return deleteAllClick(this)"></td>
</div>
</div>
<script>
 disableDelFQDNButton();
</script>

  <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Keyword: </label>
            <input class="right-field" type="text" name="Keywd" size="15" maxlength="18">

    <input class="right-field" type="submit" value="Add" name="addKeywd" onClick="return addKeywordClick(this)">
   </div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14">Keyword Filtering Table</h2>
</div>
</div>

  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <table class="table table-bordered table-striped" style="background-color: #f8f9fa; width:343%">
  <tr><th>Select</th>
<th>Filtered Keyword</th></tr>

 </table>
</div>
</div>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
<input class="link_bg" type="submit" value="Delete Selected" name="delKeywd" onClick="return deleteClick(this)">&nbsp;&nbsp;
<input class="link_bg" type="submit" value="Delete All" name="delAllKeywd" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
<input type="hidden" value="/url_blocking.asp" name="submit-url">
<input type="hidden" name="postSecurityFlag" value="">
</div>
</div>

 <script>
  disableDelKeywdButton();
  </script>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>

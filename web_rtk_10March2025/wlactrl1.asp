
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
 <script language="javascript" src="/Dashboard/JS/menu.js"></script>
  <SCRIPT language=javascript src="/Dashboard/JS/util.js"></SCRIPT>
  <script type="text/javascript" src="/JS/jquery.min.js"></script>
	<script type="text/javascript" src="/JS/bootstrap.min.js"></script>
    <script type="text/javascript"  src="/JS/popper.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/scoop.min.js"></script>
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>

<title>WLAN Access Control</title>
<script>
function skip () { this.blur(); }
function addClick(obj)
{
 if (!checkMac(document.formWlAcAdd.mac, 1))
  return false;
 obj.isclick = 1;
 postTableEncrypt(document.formWlAcAdd.postSecurityFlag, document.formWlAcAdd);
 return true;
}
function disableDelButton()
{
 disableButton(document.formWlAcDel.deleteSelFilterMac);
 disableButton(document.formWlAcDel.deleteAllFilterMac);
}
function enableAc()
{
  enableTextField(document.formWlAcAdd.mac);
}
function disableAc()
{
  disableTextField(document.formWlAcAdd.mac);
}
function updateState()
{
  if(wlanDisabled || wlanMode == 1 || wlanMode ==2){
 disableDelButton();
 disableButton(document.formWlAcAdd.reset);
 disableButton(document.formWlAcAdd.setFilterMode);
 disableButton(document.formWlAcAdd.addFilterMac);
   disableTextField(document.formWlAcAdd.wlanAcEnabled);
   disableAc();
  }
  else{
    if (document.formWlAcAdd.wlanAcEnabled.selectedIndex) {
 enableButton(document.formWlAcAdd.reset);
 enableButton(document.formWlAcAdd.addFilterMac);
  enableAc();
    }
    else {
 disableButton(document.formWlAcAdd.reset);
 disableButton(document.formWlAcAdd.addFilterMac);
   disableAc();
    }
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formWlAcAdd.postSecurityFlag, document.formWlAcAdd);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('Do you really want to delete the selected entry?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formWlAcDel.postSecurityFlag, document.formWlAcDel);
  return true;
 }
}
function deleteAllClick(obj)
{
 if ( !confirm('Do you really want to delete the all entries?') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formWlAcDel.postSecurityFlag, document.formWlAcDel);
  return true;
 }
}
</script>
<style>
.form-group {
    margin-bottom: 1rem;
}
.custom-control {
    position: relative;
    display: block;
    min-height: 1.5rem;
    padding-left: 1.5rem;
}
.form-group label {
    color: #584848;
    font-size: 13px;
    line-height: 22px;
}
.left-field {
    margin-left: -10px;
    width: 143px;
}
label {
    display: inline-block;
    margin-bottom: .5rem;
}
.right-field {
    margin-left: 178px;
    padding: 2px;
    width: 248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.margin_adjs {
    margin-right: -14px;
    margin-left: -15px;
}
</style>
</head>
<body>
<INPUT id="Selected_Menu" type="hidden" 
            value="Wireless->WiFi" name="Net_Wlan">
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
							        MakeLeftMenu("Wireless","WiFi");
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Wi-Fi',"Wi-Fi 2.4G",'Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">								 
				
                	<div class="white_box" name="CwmpConfig">
                  <h1 class="heading_grey heading_margin"><img src="/Dashboard/images/wi-fi.png" width="45" height="40" class="img_sub" alt=""/>WLAN Access Control</h1>
                  <div class="container-fluid">
                                    <hr class="margin_adjs" />
									<div class="row">
										    <div class="col-md-12 form-group left-field-para">
            <div class="custom-control">

 <p>If you choose 'Allowed Listed', only those WLAN clients whose MAC addresses are in the access control list will be able to connect to your Access Point. When 'Deny Listed' is selected, these WLAN clients on the list will not be able to connect the Access Point.</p>
 </div>
</div>

<form action=/boaform/admin/formWlAc method=POST name="formWlAcAdd">
<div class="data_common data_common_notitle">

<div class="data_common">
       <div class="col-md-12 form-group">
       <div class="custom-control">
<label class="left-field">Mode: &nbsp;&nbsp;&nbsp;&nbsp;</label>
   <select class="right-field custom-select"  size="1" name="wlanAcEnabled" onclick="updateState()">
    <option value=0 >Disabled</option>
    <option value=1 selected >Allow Listed</option>
    <option value=2 >Deny Listed</option>
   </select>
   <input type="submit" value="Apply Changes"  name="setFilterMode" class="btn orange_border_btn" onClick="return on_submit(this)">&nbsp;&nbsp;
   </div>
    </div>
</div>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">MAC Address: </th>
   <td>
    <input type="text" name="mac" size="15" maxlength="12">&nbsp;&nbsp;(ex. 00E086710502)
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value="Add" name="addFilterMac" onClick="return addClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="reset" value="Reset" name="reset" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/admin/wlactrl.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=0>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
<form action=/boaform/admin/formWlAc method=POST name="formWlAcDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p>Current Access Control List</p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table border="0" width=440>
   <tr><th align=center>Mode</th>
<th align=center>MAC Address</th>
<th align=center>Select</th></tr>

  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="submit" value="Delete Selected" name="deleteSelFilterMac" onClick="return deleteClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="submit" value="Delete All" name="deleteAllFilterMac" onClick="return deleteAllClick(this)" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/admin/wlactrl.asp" name="submit-url">
 <input type="hidden" name="wlan_idx" value=0>
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 disableDelButton();
 wlanDisabled=0;
wlanMode=0;
document.formWlAcAdd.wlanAcEnabled.selectedIndex=0

 updateState();
</script>
<br><br>
</form>
</body>
</html>

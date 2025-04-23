<% SendWebHeadStr();%>

<script language="javascript" src=voip_script.js></script>
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
<title>Samba<% multilang("238" "LANG_CONFIGURATION"); %></title>
<script language="javascript">
var nbn = "<% getInfo("samba-netbios-name"); %>";
var ss = "<% getInfo("samba-server-string"); %>";
function changeSambaCap()
{
 with (document.formSamba) {
  if (sambaCap[0].checked) {
   netBIOSName.value = "";
   serverString.value = "";
   changeBlockState("conf", true);
  } else {
   netBIOSName.value = nbn;
   serverString.value = ss;
   changeBlockState("conf", false);
  }
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</script>
<style> TABLE {width:375} 

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
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left: -11px;
    width:1248px;
}
.right-field-radio{
    margin-left:165px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:254px;
    padding:2px;
    width:200px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-22px;
    width:102.5%
}
.orange_btn {
    background: #f58220;
    color: #fff;
    font-size: 13px;
    font-weight: 500;
    border: solid 2px #f58220;
}
#conf th {
    font-size: 14px; /* Adjust the font size as needed */
    font-weight: normal; /* Set font weight to normal */
    text-align: left; /* Align text to the left */
    padding: 17px; /* Add padding for better spacing */
}
#conf td{
     margin-left:70px;
}
</style>
</head>
<body onLoad="changeSambaCap();">
<INPUT id=Selected_Menu type=hidden 
									 value="APP->SAMBA" name=APP->SAMBA>
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
							        MakeLeftMenu('APP','SAMBA')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','APP','SAMBA','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                               <div class="scoop-inner-content">
									  
								
							 
                                                    						 
								<div class="white_box">
									<div class="row justify-content-between">
									<h1 class="heading_grey col-auto"><img src="/Dashboard/images/gear.png"  width="45" height="40" class="img_sub" alt=""/> Samba</h1>
										
									</div>	
                                    <hr class="margin_adjs">
                                    <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("1157" "LANG_THIS_PAGE_LET_USER_TO_CONFIG_SAMBA"); %></p>
 </div>
 </div>

<form action=/boaform/formSamba method=post name="formSamba">
<div class="data_common data_common_notitle">
 <table>
  <div class="col-md-12 form-group">
  <div class="custom-control">
   <label class="left-field">Samba:</label>
   
    <input  class="right-field-radio"  type="radio" value="0" name="sambaCap" onClick="changeSambaCap();" <% checkWrite("samba-cap0"); %>><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="sambaCap" onClick="changeSambaCap();" <% checkWrite("samba-cap1"); %>><% multilang("248" "LANG_ENABLE"); %>
     </div>
     </div>
  <% checkWrite("smbSecurity"); %>
  <tbody id="conf">
   <tr <% checkWrite("nmbd-cap"); %>>
    <th width=40%>NetBIOS <% multilang("701" "LANG_NAME"); %>&nbsp;:</td>
    <td width=60%><input type="text" name="netBIOSName" maxlength="15"><td>
   </tr>
   <tr>
    <th><% multilang("1158" "LANG_SERVER_STRING"); %>&nbsp;:</td>
    <td width=60%><input  class="right-field custom-select" type="text" name="serverString" maxlength="31"></td>
   </tr>
  </tbody>
 </table>
</div>
<hr class="margin_adjs">

<div class="btn_ctl form-footer">
 <input class="link_bg btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit()">&nbsp;&nbsp;
 <input type="hidden" value="/samba.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>
</div>

</div>
</div>
</div>
</div>

<br><br>
<div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
</body>
</html>

<% SendWebHeadStr();%>
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
<title>UPnP <% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
function proxySelection()
{
 if (document.upnp.daemon[0].checked) {
  document.upnp.ext_if.disabled = true;
  if(typeof(document.upnp.tr_064_sw) != "undefined")
  {
   document.upnp.tr_064_sw[0].disabled = true;
   document.upnp.tr_064_sw[1].disabled = true;
  }
 }
 else {
  document.upnp.ext_if.disabled = false;
  if(typeof(document.upnp.tr_064_sw) != "undefined")
  {
   document.upnp.tr_064_sw[0].disabled = false;
   document.upnp.tr_064_sw[1].disabled = false;
  }
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
</SCRIPT>
<style> {


 
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
    margin-left:477px;
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

</style>
</head>
<body>
<INPUT id=Selected_Menu type=hidden value="APP->AdvancedNAt" name="Selected_Menu"> 
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
								<a href="https://www.syrotech.com/" target="_blank"><span class="logo-text"><img src="/img/parental.png" class="img-fluid" alt=""/></span></a>
							</div>
							    <div id="LeftMenu">
							        <SCRIPT language=javascript>
							        MakeLeftMenu('APP','AdvancedNAT')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','APP','AdvancedNAT','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">

                          <div class="scoop-inner-content">
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>UPnP <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("426" "LANG_THIS_PAGE_IS_USED_TO_CONFIGURE_UPNP_THE_SYSTEM_ACTS_AS_A_DAEMON_WHEN_YOU_ENABLE_IT_AND_SELECT_WAN_INTERFACE_UPSTREAM_THAT_WILL_USE_UPNP"); %></p>
 </div>
 </div>
<form action=/boaform/formUpnp method=POST name="upnp">

<div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("29" "LANG_UPNP"); %>: </label>
    <input class="right-field-radio"type="radio"  value="0" name="daemon" <% checkWrite("upnp0"); %> onClick="proxySelection()"><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input class="right-field-radio" type="radio" value="1" name="daemon" <% checkWrite("upnp1"); %> onClick="proxySelection()"><% multilang("248" "LANG_ENABLE"); %>
  </div>
  </div>

  <% checkWrite("tr064_switch"); %>
 <div class="col-md-12 form-group">
        <div class="custom-control">
   <label class="left-field"><% multilang("424" "LANG_WAN_INTERFACE"); %>:</label>
   
    <select class="right-field"  name="ext_if" <% checkWrite("upnp0d"); %>>
     <% if_wan_list("rt"); %>
    </select>
  </div>
  </div>

<div class="btn_ctl form-footer">
 <input type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" class="btn orange_btn" onClick="return on_submit()">
 <input type="hidden" value="/upnp.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 initUpnpDisable = document.upnp.daemon[0].checked;
 ifIdx = <% getInfo("upnp-ext-itf"); %>;
 document.upnp.ext_if.selectedIndex = -1;
 for( i = 0; i < document.upnp.ext_if.options.length; i++ )
 {
  if( ifIdx == document.upnp.ext_if.options[i].value )
   document.upnp.ext_if.selectedIndex = i;
 }
 proxySelection();
</script>
</form>
<br><br>
</body>
</html>

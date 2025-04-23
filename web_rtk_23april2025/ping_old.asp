<% SendWebHeadStr();%>

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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script><SCRIPT>
function goClick()
{
 const RegExpHost = /^([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])(\.([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]{0,61}[a-zA-Z0-9]))*$/;
 if (!RegExpHost.test(document.ping.pingAddr.value)) {
  alert("Invalid host address !");
  document.ping.pingAddr.focus();
  return false;
 }
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 setload();
}
</SCRIPT>
<SCRIPT>
  function goClick1()
  {
   if (document.ping.pingAddr.value=="") {
    alert("Enter host address !");
    document.ping.pingAddr.focus();
    return false;
   }
   return true;
  }
  </SCRIPT>
  <script>
    function on_Apply()
    {
     if(document.getElementById('traceAddr').value == "")
     {
      alert("Should input a domain or ip address!");
      document.getElementById('traceAddr').focus();
      return false;
     }
     return true;
    }
    </script>
    <script>
        function on_Apply1()
        {
         if(document.getElementById('traceAddr1').value == "")
         {
          alert("Should input a domain or ip address!");
          document.getElementById('traceAddr1').focus();
          return false;
         }
         return true;
        }
        </script>
<script language="javascript">
  function on_init()
  {
   if(document.getElementById("result").innerHTML == "Inform...")
   setTimeout(function(){
        window.location.reload(true);
     }, 1000);
  }
  </script>
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
    .left-field-igmp{
        margin-left:-27px;
   width:668px;
   font-weight:300px;
    }
    
.left-field{
    margin-left:-27px;
   width:365px
}
.left-field-para{
    margin-left:-27px;
    width:1276px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:29px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
        accent-color: #fd5814; 
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}

</style>
</head>
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="on_init();">
<INPUT id=Selected_Menu type=hidden value="Diagnose->InternetDiagnose" name="Selected_Menu"> 
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
							        MakeLeftMenu('Diagnose','InternetDiagnose')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Diagnose','InternetDiagnose','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">

                          <div class="scoop-inner-content">
									  	
									  	
									  
									  	
							  						 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/parental.png" width="45" height="40" class="img_sub" alt=""/>Ping <% multilang("45" "LANG_DIAGNOSTICS"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"> <% multilang("498" "LANG_PAGE_DESC_ICMP_DIAGNOSTIC"); %></p>
 </div>
 </div>

<form action=/boaform/formPing method=POST name="ping">
<div class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
         
      
            <label class="left-field"><% multilang("502" "LANG_HOST_ADDRESS"); %>: </label>
      <input class="right-field custom-select" type="text" name="pingAddr" size="30" maxlength="30">
   </div>
   </div>
<div class="col-md-12 form-group">
        <div class="custom-control">
         
     <label class="left-field"><% multilang("424" "LANG_WAN_INTERFACE"); %>: </label>
      <select   class="right-field custom-select" name="wanif"><% if_wan_list("rt-any-vpn"); %></select>
      </div>
      </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer">
      <input class="link_bg btn orange_btn" type="submit" value=" <% multilang("503" "LANG_GO"); %>" onClick="return goClick()">
      <input type="hidden" value="/ping.asp" name="submit-url">
      <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>

<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">Ping6 <% multilang("45" "LANG_DIAGNOSTICS"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
											<div class="custom-control">
<p class="left-field-para">  <% multilang("499" "LANG_PAGE_DESC_ICMPV6_DIAGNOSTIC"); %></p>
</div>
</div>
 
 <form action=/boaform/formPing6 method=POST name="ping">
 <div class="data_common data_common_notitle">
  <div class="col-md-12 form-group">
        <div class="custom-control">
    <label class="left-field"><% multilang("502" "LANG_HOST_ADDRESS"); %>: </label>
  <input class="right-field custom-select" type="text" name="pingAddr" size="30" maxlength="50">
  </div>
  </div>
  <div class="col-md-12 form-group">
        <div class="custom-control">
       <label class="left-field"><% multilang("424" "LANG_WAN_INTERFACE"); %>: </label>
       <select class="right-field custom-select" name="wanif"><% if_wan_list("rtv6-any-vpn"); %></select>
       </div>
       </div>

    
 </div>
 <hr class="margin_adjs">
 <div class="btn_ctl form-footer">
  <input class="link_bg btn orange_btn " type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" onClick="return goClick1()">
  <input type="hidden" value="/ping.asp" name="submit-url">
 </div>
  </form>
  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">Traceroute <% multilang("45" "LANG_DIAGNOSTICS"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("500" "LANG_PAGE_DESC_TRACERT_DIAGNOSTIC"); %></p>
 </div>
 </div>
  
   <form id="form" action=/boaform/formTracert method=POST>
   <div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
											<div class="custom-control">
      <label class="left-field"><% multilang("502" "LANG_HOST_ADDRESS"); %>:</label>
      <input class="right-field custom-select" type="text" id="traceAddr" name="traceAddr" size="30" maxlength="50">
     
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
<label class="left-field"> NumberOfTries:</label>
     <input class="right-field custom-select" type="text" id="trys" name="trys" size="5" maxlength="5" value="3">
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"> Timeout:</label>
      <input class="right-field custom-select" type="text" id="timeout" name="timeout" size="10" maxlength="10" value="5">s
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"> Datasize:</label>
      <input class="right-field custom-select" type="text" id="datasize" name="datasize" size="10" maxlength="10" value="38">Bytes
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"> DSCP:</label>
      <input class="right-field custom-select" type="text" id="dscp" name="dscp" size="10" maxlength="10" value="0">
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
      <label class="left-field"> MaxHopCount:</label>
      <input class="right-field custom-select" type="text" id="maxhop" name="maxhop" size="10" maxlength="10" value="30">
      </div>
      </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
     <label class="left-field"> <% multilang("424" "LANG_WAN_INTERFACE"); %>: </label>
     <select class="right-field custom-select" name="wanif"><% if_wan_list("rt-any-vpn"); %></select>
      </div>
      </div>
    
   </div>
   <hr class="margin_adjs">
   <div class="btn_ctl form-footer">
    <input class="link_bg btn orange_btn " type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" onClick="return on_Apply()">
    <input type="hidden" value="/ping.asp" name="submit-url">
   </div>
   </form>
   <br>
   <br>
     <div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">Traceroute6 <% multilang("45" "LANG_DIAGNOSTICS"); %></h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para"><% multilang("501" "LANG_PAGE_DESC_TRACERT6_DIAGNOSTIC"); %></p>
 </div>
 </div>
      <form id="form" action=/boaform/formTracert6 method=POST>
      <div class="data_common data_common_notitle">
       <div class="col-md-12 form-group">
        <div class="custom-control">
         <label class="left-field"><% multilang("502" "LANG_HOST_ADDRESS"); %>: </label>
       <input type="text" class="right-field custom-select"  id="traceAddr1" name="traceAddr" size="30" maxlength="50">
      </div>
      </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
        <label class="left-field">NumberOfTries:</label>
       <input class="right-field custom-select" type="text" id="trys1" name="trys" size="5" maxlength="5" value="3">
        </div>
        </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
         <label class="left-field">Timeout:</label>
         <input class="right-field custom-select"  type="text" id="timeout1" name="timeout" size="10" maxlength="10" value="5">s
        </div>
        </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
         <label class="left-field">Datasize:</label>
       <input class="right-field custom-select"  type="text" id="datasize1" name="datasize" size="10" maxlength="10" value="38">Bytes
        </div>
        </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
         <label class="left-field" >MaxHopCount:</label>
         <input class="right-field custom-select" type="text" id="maxhop1" name="maxhop" size="10" maxlength="10" value="30">
        </div>
        </div>
        <div class="col-md-12 form-group">
        <div class="custom-control">
         <label class="left-field"><% multilang("424" "LANG_WAN_INTERFACE"); %>: </label>
         <select class="right-field custom-select" name="wanif"><% if_wan_list("rtv6-any-vpn"); %></select>
         </div>
         </div>
      </div>
      <hr class="margin_adjs">
      <div class="btn_ctl form-footer">
       <input class="link_bg btn orange_btn" type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" onClick="return on_Apply1()">
       <input type="hidden" value="/ping.asp" name="submit-url">
      </div>
      </form>
<div class="col-md-12 form-group left-field">
        <div class="custom-control">
         <h2 class="sub_heading " style="color:#fd7e14; width:421px">Inform</h2>
  </div>
 </div>
 <div class="col-md-12 form-group">
											<div class="custom-control">
  <p class="left-field-para">This page is used manual inform to acs server</p>
 </div>
 </div>
     
       
        <form id="form" action="/boaform/admin/formTr069Diagnose" method="post">
        <div class="data_common data_common_notitle">
         <table class="table table-bordered table-striped" style="background-color: #f8f9fa; margin-left:25px; width:94%" >
          <tr>
           <th width="30%">Inform Status</th>
           <td><% getInfo("tr069Inform"); %></td>
          </tr>
         </table>
        </div>
        <hr class="margin_adjs">
        <div class="btn_ctl form-footer">
         <input class="link_bg btn orange_btn" type="submit" value=" <% multilang("503" "LANG_GO"); %>" name="go" >
         <input type="hidden" name="submit-url" value="/ping.asp">
        </div>
        </form>
        </div>
        </div>
        </div>
        </div>
        </div>
        <div class="text-center p-3" style="background-color: rgb(235 234 234 / 20%);">
  &copy 2022-2026 Copyright :
<a class="text-white" style="color:#fd7e14 !important;" href="#">Syrotech Networks Pvt. Ltd.</a>
</div>
       
</body>
</html>

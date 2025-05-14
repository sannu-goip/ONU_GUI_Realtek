<% SendWebHeadStr();%>

<title>FirewallConfiguration</title>
<script language="javascript">
var enable = 1
var level=0
function on_init()
{
 if(enable)
 {
  document.forms[0].fw_enable[0].checked = true;
  document.getElementById("show_firewall_level").style.display = "";
  if(level==0)
  {
   document.forms[0].firewall_level[0].checked = true;
  }
  else if(level==1)
  {
   document.forms[0].firewall_level[1].checked = true;
  }
  else
  {
   document.forms[0].firewall_level[2].checked = true;
  }
 }
 else
 {
  document.forms[0].fw_enable[1].checked = true;
  document.getElementById("show_firewall_level").style.display = "none";
 }
}
function on_submit()
{
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function show_firewalllevel()
{
 document.getElementById("show_firewall_level").style.display = "";
 if(level==0)
 {
  document.forms[0].firewall_level[0].checked = true;
 }
 else if(level==1)
 {
  document.forms[0].firewall_level[1].checked = true;
 }
 else
 {
  document.forms[0].firewall_level[2].checked = true;
 }
}
function hide_firewalllevel()
{
 document.getElementById("show_firewall_level").style.display = "none";
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
.left-field{
    margin-left:-10px;
    width:365px;
}
.left-field-para{
    margin-left:-10px;
    width:1248px;
}
.right-field-radio{
    margin-left:17px;
    width:33px; 
    padding:2px
}
.right-field{
    margin-left:178px;
    padding:2px;
    width:160px; 
}
.right-field-checkbox{
    margin-left:178px;
    padding:3px;
     
}
.margin_adjs{
    margin-left:-15px;
    width:102.5%
}
</style>
</head>
<body onLoad="on_init();">
<INPUT id=Selected_Menu type=hidden 
            value="Security->Firewall" name=Selected_Menu>
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
							        MakeLeftMenu('Security','Firewall')
							        </SCRIPT>
							    </div>
							</div> 
						</nav>
                    <div class="scoop-content">
                        <div id="Header">
                            <SCRIPT language=javascript>
                            MakeHeader('Gateway Name:','Gateway Type:','Security','Firewall','Welcome!','#');
                            </SCRIPT>
                        </div>
                        <div class="">
                            

                             
                             <div class="scoop-inner-content">
									  
													 
								
								<div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/firewall.png" width="45" height="40" class="img_sub" alt=""/>Firewall Enable</h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	

  <div class="col-md-12 form-group left-field">
        <div class="custom-control">
 <p>This page is used to set firewall level.</p>
</div>
</div>
<form action="/boaform/admin/formFirewall" method="post" name="formFirewall">
<div class="data_common data_common_notitle">
    <div class="col-md-12 form-group">
        <div class="custom-control custom-radio">
            <label class="left-field">Firewall:</label>
            <input type="radio" name="fw_enable" value="1" onClick="show_firewalllevel()" class="right-field-radio"> Enable
            <input type="radio" name="fw_enable" value="0" onClick="hide_firewalllevel()" class="right-field-radio"> Disable
        </div>
    </div>
    <div class="col-md-12 form-group" id="show_firewall_level" style="display:none">
        <div class="custom-control custom-radio">
            <label class="left-field">Level:</label>
            <input name="firewall_level" type="radio" value="high" class="right-field-radio"> High
            <input name="firewall_level" type="radio" value="medium" class="right-field-radio"> Medium
            <input name="firewall_level" type="radio" value="low" class="right-field-radio"> Low
        </div>
    </div>
</div>
<hr class="margin_adjs">
<div class="btn_ctl form-footer text-right">
    <input class="link_bg" type="submit" value="Apply Changes" onClick="return on_submit()">&nbsp;&nbsp;
    <input type="hidden" value="/admin/fw-enable.asp" name="submit-url">
    <input type="hidden" name="postSecurityFlag" value="">
</div>
</form>

</div>
</div>
</div>
</div>
</div>

</body>
</html>

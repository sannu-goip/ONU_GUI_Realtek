<!DOCTYPE html>
<! Copyright (c) Realtek Semiconductor Corp., 2003. All Rights Reserved. ->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="utf-8">
<meta HTTP-EQUIV="Pragma" CONTENT="no-cache">
<meta HTTP-equiv="Cache-Control" content="no-cache">
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
    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>    <script  type="text/javascript" src="/Dashboard/Modules/leftmenu/js/left_menu.js"></script>
<title><% multilang("28" "LANG_IGMP_PROXY"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<SCRIPT>
var multicast_allow=0;
var robust_count=0;
var last_member_query_count=0;
var query_interval=0;
var query_response_interval=0;
var group_leave_delay=0;
var multi_wan_proxy=0;
<% igmpproxyinit(); %>
function on_init()
{
 with(document.forms[0])
 {
  if(multicast_allow == 0)
   igmp_multicast_allow[0].checked = true;
  else
   igmp_multicast_allow[1].checked = true;
  igmp_robust_count.value = robust_count;
  igmp_last_member_query_count.value = last_member_query_count;
  igmp_query_interval.value = query_interval;
  igmp_query_response_interval.value = query_response_interval;
  igmp_group_leave_delay.value = group_leave_delay;
 }
 if(multi_wan_proxy == 1)
 {
    document.getElementById("proxy_enable").style="display:none";
    document.getElementById("proxy_intf").style="display:none";
  }
  else
  {
    document.getElementById("proxy_enable").style="display:";
    document.getElementById("proxy_intf").style="display:";
   }
 proxySelection();
}
function proxySelection()
{
 if (document.igmp.proxy[0].checked && multi_wan_proxy == 0) {
  document.igmp.proxy_if.disabled = true;
  document.igmp.igmp_multicast_allow[0].disabled = true;
  document.igmp.igmp_multicast_allow[1].disabled = true;
  document.igmp.igmp_robust_count.disabled = true;
  document.igmp.igmp_last_member_query_count.disabled = true;
  document.igmp.igmp_query_interval.disabled = true;
  document.igmp.igmp_query_response_interval.disabled = true;
  document.igmp.igmp_group_leave_delay.disabled = true;
 }
 else {
  document.igmp.proxy_if.disabled = false;
  document.igmp.igmp_multicast_allow[0].disabled = false;
  document.igmp.igmp_multicast_allow[1].disabled = false;
  document.igmp.igmp_robust_count.disabled = false;
  document.igmp.igmp_last_member_query_count.disabled = false;
  document.igmp.igmp_query_interval.disabled = false;
  document.igmp.igmp_query_response_interval.disabled = false;
  document.igmp.igmp_group_leave_delay.disabled = false;
 }
}
function on_submit()
{
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
#omci-olt select{
    margin-left:298px !important;
    padding:4px;
    width:160px;    
}
</style>
</head>
<body>
                        <div class="">
                        
                                                        
                          <div class="scoop-inner-content">
                          <div class="white_box">
									<h1 class="heading_grey"><img src="/Dashboard/images/device.png" width="45" height="40" class="img_sub" alt=""/><% multilang("28" "LANG_IGMP_PROXY"); %> <% multilang("238" "LANG_CONFIGURATION"); %></h1>
									<div class="container-fluid">
									<hr class="margin_adjs" />	
								
										<div class="col-md-12 form-group">
											<div class="custom-control">

 <p class="left-field-para"> <% multilang("767" "LANG_IGMP_PROXY_ENABLES_THE_SYSTEM_TO_ISSUE_IGMP_HOST_MESSAGES_ON_BEHALF_OF_HOSTS_THAT_THE_SYSTEM_DISCOVERED_THROUGH_STANDARD_IGMP_INTERFACES_THE_SYSTEM_ACTS_AS_A_PROXY_FOR_ITS_HOSTS_WHEN_YOU_ENABLE_IT_BY_DOING_THE_FOLLOWS"); %>:
     <% multilang("768" "LANG_ENABLE_IGMP_PROXY_ON_WAN_INTERFACE_UPSTREAM_WHICH_CONNECTS_TO_A_ROUTER_RUNNING_IGMP"); %>
     <% multilang("769" "LANG_ENABLE_IGMP_ON_LAN_INTERFACE_DOWNSTREAM_WHICH_CONNECTS_TO_ITS_HOSTS"); %></p>
</div>
</div>
<form action=/boaform/formIgmproxy method=POST name="igmp">

    <div class="col-md-12 form-group" id="proxy_enable">
        <div class="custom-control">
            <label class="left-field"><% multilang("28", "LANG_IGMP_PROXY"); %>:</label>
          
                <input class="right-field-radio" type="radio" value="0" name="proxy" <% checkWrite("igmpProxy0"); %> onClick="proxySelection()"> <% multilang("247", "LANG_DISABLE"); %>
                <input class="right-field-radio" type="radio" value="1" name="proxy" <% checkWrite("igmpProxy1"); %> onClick="proxySelection()"> <% multilang("248", "LANG_ENABLE"); %>
            </div>
        </div>
  
    <div class="col-md-12 form-group" id="proxy_intf">
        <div class="custom-control">
            <label class="left-field"><% multilang("770", "LANG_PROXY_INTERFACE"); %>:</label>
            <select name="proxy_if" <% checkWrite("igmpProxy0d"); %> class="right-field custom-select">
                <% if_wan_list("rt"); %>
            </select>
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Multicast Allowed:</label>
            
                <input class="right-field-radio" type="radio" value="0" name="igmp_multicast_allow"> <% multilang("247", "LANG_DISABLE"); %>
                <input class="right-field-radio" type="radio" value="1" name="igmp_multicast_allow"> <% multilang("248", "LANG_ENABLE"); %>
            </div>
        </div>
  
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Robust Count:</label>
            <input type="text" name="igmp_robust_count" size="10" maxlength="15" class="right-field custom-select">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Last Member Query Count:</label>
            <input type="text" name="igmp_last_member_query_count" size="10" maxlength="15" class="right-field custom-select">
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Query Interval:</label>
            <input type="text" name="igmp_query_interval" size="10" maxlength="15" class="right-field custom-select" > (seconds)
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Query Response Interval:</label>
            <input type="text" name="igmp_query_response_interval" size="10" maxlength="15" class="right-field custom-select"> (*100ms)
        </div>
    </div>
    <div class="col-md-12 form-group">
        <div class="custom-control">
            <label class="left-field">Group Leave Delay:</label>
            <input type="text" name="igmp_group_leave_delay" size="10" maxlength="15" class="right-field custom-select"> (ms)
        </div>
    </div>

<hr class="margin_adjs">
<div class="form-footer text-right">
 <input class="btn orange_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit()">
 <input type="hidden" value="/igmproxy.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 ifIdx = <% getInfo("igmp-proxy-itf"); %>;
 if (ifIdx != 255)
  document.igmp.proxy_if.value = ifIdx;
 else
  document.igmp.proxy_if.selectedIndex = 0;
 on_init();
</script>
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

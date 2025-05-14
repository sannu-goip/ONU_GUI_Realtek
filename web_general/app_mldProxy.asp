<% SendWebHeadStr();%>
<title>MLD Proxy</title>
<title><% multilang("26" "LANG_MLD_PROXY"); %><% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      color: #333;
  }
  
  /* Intro section styling */
  .intro_main {
      padding: 5px 15px; /* Compact padding */
      background-color: #fff;
      border-bottom: 1px solid #ddd;
      margin-top: 20px;
  }
  
  .intro_title {
      font-size: 24px; /* Slightly smaller font size */
   
      color: #f58220;
      margin: 0;
      padding-bottom: 5px;
  }
  
  .intro_content {
      padding-left: 5px;
      font-size: 12px; /* Smaller font size */
      margin-top: 5px;
      color: #666;
  }
  
  /* Form container styling */
  .data_common {
      margin: 0px 15px; /* Compact margin */
      padding: 0px 10px; /* Compact padding */
      background-color: #fff;
     
  }
  
 
  
  .data_common table {
      width: 100%;
      border-collapse: collapse;
  }
  
  .data_common th {
      text-align: left;
      font-size: 13px; /* Smaller font size */
      color: #333;
      padding: 6px; /* Compact padding */
      width: 40%;
      font-weight: 300;
  }
  
  .data_common td {
      padding: 6px; /* Compact padding */
      width: 60%;
      font-size: 13px;
  }
  
  .data_common input[type="text"],
  .data_common input[type="file"],
  .data_common input[type="password"],
  .data_common select {
      width: 180px; /* Slightly smaller width */
      padding: 4px; /* Compact padding */
      border: 1px solid #9c9a9a;
      border-radius: 2px; /* Slightly smaller border radius */
      font-size: 12px; /* Smaller font size */
      box-sizing: border-box;
  }
  
  /* Button styling */
  .btn_ctl {
      text-align: right;
      margin: 10px 15px; /* Compact margin */
  }
  
  .link_bg {
      height: 30px;
      background-color: #f58220;
      color: white;
      border: 1px solid #eee;
      border-radius: 3px;
      padding: 4px 10px; /* Compact padding */
      font-size: 12px; /* Smaller font size */
      cursor: pointer;
      transition: background-color 0.3s, color 0.3s;
  }
  
  .link_bg:hover {
    border: 1px solid #f58220;
      background-color: white;
      color: #f58220;
  }
  .list_header ul{
display: flex;
gap: 70px;
list-style: none;
margin-top: 1px;
margin-left: -22px;
font-size: 15px;
}
.list_header ul a{
text-decoration: none;
color: #f58220;
border-bottom: 2px solid transparent;
transition: color 0.3s, border-bottom 0.3s;
}
.list_header ul a:hover, .list_header ul a.active{
color: #f58220;
border-bottom: 2px solid #f58220;
}
</style>
<SCRIPT>
var robust_count=0;
var query_interval=0;
var query_response_interval=0;
var last_member_query_response_interval=0;
var multi_wan_proxy=0;
<% mldproxyinit(); %>
function on_init()
{
 with(document.forms[1])
 {
  mld_robust_count.value = robust_count;
  mld_query_interval.value = query_interval;
  mld_query_response_interval.value = query_response_interval;
  mld_last_member_query_response_interval.value = last_member_query_response_interval;
 }
}
function proxySelection()
{
 if(document.mldproxy.daemon[0].checked && (multi_wan_proxy==0))
 {
  document.mldproxy.ext_if.disabled = true;
  document.mldproxy.mld_robust_count.disabled = true;
  document.mldproxy.mld_query_interval.disabled = true;
  document.mldproxy.mld_query_response_interval.disabled = true;
  document.mldproxy.mld_last_member_query_response_interval.disabled = true;
 }
 else
 {
  document.mldproxy.ext_if.disabled = false;
  document.mldproxy.mld_robust_count.disabled = false;
  document.mldproxy.mld_query_interval.disabled = false;
  document.mldproxy.mld_query_response_interval.disabled = false;
  document.mldproxy.mld_last_member_query_response_interval.disabled = false;
 }
 if(multi_wan_proxy == 1)
 {
    document.getElementById("proxy_enable").style="display:none";
    document.getElementById("proxy_wan_if").style="display:none";
  }
  else
  {
    document.getElementById("proxy_enable").style="display:";
    document.getElementById("proxy_wan_if").style="display:";
  }
}
function on_submit()
{
 document.forms[1].save.isclick = 1;
 postTableEncrypt(document.forms[1].postSecurityFlag, document.forms[1]);
 return true;
}
</SCRIPT>

<SCRIPT>
  function on_submit1(obj)
  {
   obj.isclick = 1;
   postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
   return true;
  }
  </SCRIPT>
</HEAD>
<body>

<div class="breadcrum_box"> <ul><li><a href="#">APP</a></li><li>MLD</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg  id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>


  <div class="list_header"> 
    <ul>
      <li><a href="/igmproxy.asp">IGMP</a></li>
      <li><a href="/app_mldProxy.asp" class="active">MLD</a></li>
    </ul>
  </div>

  <div class="intro_main ">
  <div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/wlan.png" style="width:38px;"></div>
<div style="padding-top:12px;"><p class="intro_title"><% multilang("27" "LANG_MLD_SNOOPING"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
</div></div>

    <p class="intro_content"><% multilang("425" "LANG_THIS_PAGE_BE_USED_TO_CONFIGURE_MLD_SNOOPING"); %></p>
   </div>
   <form id="form" action=/boaform/formMLDSnooping method=POST name="mldsnoop">
    <div class="data_common data_common_notitle">
     <table>
      <tr>
       <th width="30%"><% multilang("27" "LANG_MLD_SNOOPING"); %>:</th>
       <td>
        <input type="radio" name="snoop" value=0><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
        <input type="radio" name="snoop" value=1><% multilang("248" "LANG_ENABLE"); %>
       </td>
      </tr>
     </table>
    </div>
    <div class="btn_ctl">
     <input class="link_bg" type="submit" name="apply" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" onClick="return on_submit1(this)">
     <input type="hidden" name="submit-url" value="/app_mldProxy.asp">
     <input type="hidden" name="postSecurityFlag" value="">
    </div>
    <script>
     <% initPage("mldsnooping"); %>
    </script>
   </form>

<div class="intro_main ">
 <p class="intro_title"><% multilang("26" "LANG_MLD_PROXY"); %> <% multilang("238" "LANG_CONFIGURATION"); %></p>
 <p class="intro_content"><% multilang("422" "LANG_THIS_PAGE_BE_USED_TO_CONFIGURE_MLD_PROXY"); %></p>
</div>
<form id="form" action=/boaform/admin/formMLDProxy method=POST name="mldproxy">
 <div class="data_common data_common_notitle">
  <table>
   <tr id="proxy_enable">
    <th><% multilang("26" "LANG_MLD_PROXY"); %>:</th>
    <td>
    <input type="radio" value="0" name="daemon" <% checkWrite("mldproxy0"); %> onClick="proxySelection()"><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="daemon" <% checkWrite("mldproxy1"); %> onClick="proxySelection()"><% multilang("248" "LANG_ENABLE"); %></td>
   </tr>
   <tr id="proxy_wan_if">
    <th><% multilang("424" "LANG_WAN_INTERFACE"); %>:&nbsp;</th>
    <td><select name="ext_if" <% checkWrite("mldproxy0d"); %>> <% if_wan_list("rtv6"); %> </select> </td>
   </tr>
   <tr>
    <th>Robust Count:</th>
    <td>
     <input type="text" name="mld_robust_count" size="10" maxlength="15">
    </td>
   </tr>
   <tr>
    <th>Query Interval:</th>
    <td>
     <input type="text" name="mld_query_interval" size="10" maxlength="15">(Second)
    </td>
   </tr>
   <tr>
    <th>Query Response Interval:</th>
    <td>
     <input type="text" name="mld_query_response_interval" size="10" maxlength="15">(millisecond)
    </td>
   </tr>
   <tr>
    <th>Response Interval of Last Group Member:</th>
    <td>
     <input type="text" name="mld_last_member_query_response_interval" size="10" maxlength="15">(Second)
    </td>
   </tr>
  </table>
 </div>
 <div class="btn_ctl">
  <input class="link_bg" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="save" onClick="return on_submit()">
  <input type="hidden" value="/app_mldProxy.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
 </div>
</form>
<script>
 on_init();
 initUpnpDisable = document.mldproxy.daemon[0].checked;
 ifIdx = <% getInfo("mldproxy-ext-itf"); %>;
 document.mldproxy.ext_if.selectedIndex = -1;
 for( i = 0; i < document.mldproxy.ext_if.options.length; i++ )
 {
  if( ifIdx == document.mldproxy.ext_if.options[i].value )
   document.mldproxy.ext_if.selectedIndex = i;
 }
 proxySelection();
</script>
<br><br>
</body>
</html>

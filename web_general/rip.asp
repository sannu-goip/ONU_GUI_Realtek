<% SendWebHeadStr();%>
<title>RIP <% multilang("238" "LANG_CONFIGURATION"); %></title>
<style>
    .data_common th{
       width: 35%;
    }
    .data_vertical table{
       width: 100%;
       border-collapse: collapse;
       table-layout: fixed;
       
    }
    .data_vertical th, .data_vertical td{
        border: 0.1px solid #ccc;
        text-align: center;
    }
    .data_vertical th{
        background-color: #ede9e9;
    }
</style>
<SCRIPT>
var ifnum;
function selected()
{
 document.rip.ripDel.disabled = false;
}
function resetClicked()
{
 document.rip.ripDel.disabled = true;
}
function disableDelButton()
{
 if (verifyBrowser() != "ns") {
  disableButton(document.rip.ripDel);
  disableButton(document.rip.ripDelAll);
 }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
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
  postTableEncrypt(document.forms[0].postSecurityFlag, document.forms[0]);
  return true;
 }
}
</SCRIPT>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Rip</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 


<div class="intro_main ">
<div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/rip.png" style="width:38px;"></div>
<div style="padding-top: 7px;"> <p class="intro_title">RIP <% multilang("238" "LANG_CONFIGURATION"); %></p></div></div>
 
 <p class="intro_content"><% multilang("427" "LANG_ENABLE_THE_RIP_IF_YOU_ARE_USING_THIS_DEVICE_AS_A_RIP_ENABLED_DEVICE_TO_COMMUNICATE_WITH_OTHERS_USING_THE_ROUTING_INFORMATION_PROTOCOL_THIS_PAGE_IS_USED_TO_SELECT_THE_INTERFACES_ON_YOUR_DEVICE_IS_THAT_USE_RIP_AND_THE_VERSION_OF_THE_PROTOCOL_USED"); %></p>
</div>
<form action=/boaform/formRip method=POST name="rip">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th><% multilang("30" "LANG_RIP"); %>:</th>
   <td>
    <input type="radio" value="0" name="rip_on" <% checkWrite("rip-on-0"); %> ><% multilang("247" "LANG_DISABLE"); %>&nbsp;&nbsp;
    <input type="radio" value="1" name="rip_on" <% checkWrite("rip-on-1"); %> ><% multilang("248" "LANG_ENABLE"); %>&nbsp;&nbsp;
   </td>
   <td width="50%"><input type="submit" style="height: 25px;" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="ripSet" class="inner_btn" onClick="return on_submit(this)"></td>
  </tr>
 </table>
</div>
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("70" "LANG_INTERFACE"); %>:</th>
   <td>
    <select name="rip_if">
    <option value="65535">br0</option>
    <% if_wan_list("rt"); %>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%"><% multilang("429" "LANG_RECEIVE_MODE"); %>:</th>
   <td>
    <select size="1" name="receive_mode">
    <option value="0"><% multilang("346" "LANG_NONE"); %></option>
    <option value="1">RIP1</option>
    <option value="2">RIP2</option>
    <option value="3"><% multilang("397" "LANG_BOTH"); %></option>
    </select>
   </td>
  </tr>
  <tr>
   <th width="30%"><% multilang("430" "LANG_SEND_MODE"); %>:</th>
   <td>
    <select size="1" name="send_mode">
    <option value="0"><% multilang("346" "LANG_NONE"); %></option>
    <option value="1">RIP1</option>
    <option value="2">RIP2</option>
    <option value="4">RIP1COMPAT</option>
   </select>
   </td>
  </tr>
 </table>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="ripAdd" class="link_bg" onClick="return on_submit(this)"></td>
</div>
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
   <p class="intro_title1"><% multilang("431" "LANG_RIP_CONFIG_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table>
   <% showRipIf(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="ripDel" onClick="return deleteClick(this)" class="link_bg">&nbsp;&nbsp;
 <input type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="ripDelAll" onClick="return deleteAllClick(this)" class="link_bg">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/rip.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
 <script>
  <% checkWrite("ripNum"); %>
 </script>
</form>
<br><br>
</body>
</html>

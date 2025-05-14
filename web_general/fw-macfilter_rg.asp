<%SendWebHeadStr(); %>
<title>MAC <% multilang("379" "LANG_FILTERING"); %></title>
<style>
  .intro_title1{
    margin-top: 15px;
    margin-bottom: 10px;
  }
  .data_vertical table{
    border-collapse: collapse;
    width: 80%;
    table-layout: fixed;
  }
  .data_vertical table th, .data_vertical table td{
    text-align: center;
  }
  .data_vertical table th{
    border: 1px solid #ccc;
    background-color: #ede9e9;
  }
  .current_filter_table{
    border-collapse: collapse;
  }
  .current_filter_table th, .current_filter_table td{
    border: 1px solid #ccc;
  }
  ..current_filter_table{
    border: 1px solid #ccc;
  }
</style>
<script>
function skip () { this.blur(); }
function addClick(obj)
{
  if (document.formFilterAdd.srcmac.value==""){
 alert('<% multilang("2241" "LANG_INPUT_MAC_ADDRESS"); %>');
 return false;
  }
 if (document.formFilterAdd.srcmac.value != "") {
  if (!checkMac(document.formFilterAdd.srcmac, 0))
   return false;
 }
 obj.isclick = 1;
 postTableEncrypt(document.formFilterAdd.postSecurityFlag, document.formFilterAdd);
 return true;
}
function disableDelButton()
{
  if (verifyBrowser() != "ns") {
 disableButton(document.formFilterDel.deleteSelFilterMac);
 disableButton(document.formFilterDel.deleteAllFilterMac);
  }
}
function on_submit(obj)
{
 obj.isclick = 1;
 postTableEncrypt(document.formFilterDefault.postSecurityFlag, document.formFilterDefault);
 return true;
}
function deleteClick(obj)
{
 if ( !confirm('<% multilang("1747" "LANG_CONFIRM_DELETE_ONE_ENTRY"); %>') ) {
  return false;
 }
 else{
  obj.isclick = 1;
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
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
  postTableEncrypt(document.formFilterDel.postSecurityFlag, document.formFilterDel);
  return true;
 }
}
</script>
</head>
<body>
<div class="breadcrum_box"> <ul><li><a href="#">Security</a></li><li>Mac Filter</li><li class="welcom" valign="bottom" align="middle" width="120">Welcome!</li><li valign="bottom"></li> </ul><div class="help_icon"> <a href="/cgi-bin/help_content.asp#UPNP Configuration" target="_blank"> <svg id="help_icon_svg" xmlns="http://www.w3.org/2000/svg" width="38" height="38" viewBox="0 0 38 38"> <path id="help_Icon" data-name="help_Icon" class="cls-1" d="M18.746,0A19,19,0,1,0,38,18.744,19,19,0,0,0,18.746,0ZM18.69,30.565l-0.1,0a2.766,2.766,0,0,1,.065-5.531l0.094,0A2.766,2.766,0,1,1,18.69,30.565Zm6.8-13.49a12.558,12.558,0,0,1-2.268,2.031l-1.16.8a3.147,3.147,0,0,0-1.165,1.418,2.933,2.933,0,0,0-.18,1.19l0,0.186H16.286l0.013-.375c0.054-1.54.092-2.446,0.73-3.194a18.823,18.823,0,0,1,3.3-2.658,3.485,3.485,0,0,0,.782-0.8,2.816,2.816,0,0,0,.67-1.641,3.2,3.2,0,0,0-.608-1.89,2.531,2.531,0,0,0-2.19-.823,2.389,2.389,0,0,0-2.213,1.023,4.112,4.112,0,0,0-.67,2.21v0.189H11.539l0.008-.2c0.118-2.8,1.116-4.809,2.965-5.984a7.809,7.809,0,0,1,4.295-1.127,9.269,9.269,0,0,1,5.54,1.595A5.531,5.531,0,0,1,26.587,13.8,5.461,5.461,0,0,1,25.487,17.076Z"></path> </svg> </a> </div></div>
 

<div class="intro_main "><div style="
    display: flex;
    align-items: center;
    gap: 5px;
">
<div><img src="/img/mac.png" style="width:38px;"></div>
<div style="padding-top:3px;"> <p class="intro_title"><% multilang("19" "LANG_MAC_FILTERING"); %></p></div></div>
 
 <p class="intro_content"> <% multilang("394" "LANG_PAGE_DESC_LAN_TO_INTERNET_DATA_PACKET_FILTER_TABLE"); %></p>
</div>
<form action=/boaform/admin/formFilter method=POST name="formFilterDefault">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%"><% multilang("134" "LANG_MODE"); %>:&nbsp;&nbsp;</th>
      <td width="40%">
       <input type="radio" name="outAct" value=0 <% checkWrite("macf_out_act0"); %>><% multilang("2751" "LANG_WHITE_LIST"); %>&nbsp;&nbsp;
       <input type="radio" name="outAct" value=1 <% checkWrite("macf_out_act1"); %>><% multilang("2752" "LANG_BLACK_LIST"); %>&nbsp;&nbsp;</th>
   </td>
   <td>
    <input class="inner_btn" type="submit" value="<% multilang("150" "LANG_APPLY_CHANGES"); %>" name="setMacDft" onClick="return on_submit(this)">&nbsp;&nbsp;
   </td>
  <tr>
  <input type="hidden" value="/fw-macfilter_rg.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
 </table>
</div>
</form>
<form action=/boaform/admin/formFilter method=POST name="formFilterAdd">
<div class="data_common data_common_notitle">
 <table>
  <tr>
   <th width="30%">
    <% multilang("92" "LANG_MAC_ADDRESS"); %>:
   </th>
   <td width="40%">
    <input type="text" name="srcmac" size="15" maxlength="12" style="text-transform: uppercase"></input>
   </td>
   <td>
    <input class="inner_btn" type="submit" value="<% multilang("221" "LANG_ADD"); %>" name="addFilterMac" onClick="return addClick(this)">&nbsp;&nbsp;
   </td>
  </tr>
  <input type="hidden" value="/fw-macfilter_rg.asp" name="submit-url">
  <input type="hidden" name="postSecurityFlag" value="">
 </table>
</div>
</form>
<form action=/boaform/admin/formFilter method=POST name="formFilterDel">
<div class="column">
 <div class="column_title">
  <div class="column_title_left"></div>
  <p class="intro_title1"><% multilang("391" "LANG_CURRENT_FILTER_TABLE"); %></p>
  <div class="column_title_right"></div>
 </div>
 <div class="data_common data_vertical">
  <table class="current_filter_table">
   <% macFilterList(); %>
  </table>
 </div>
</div>
<div class="btn_ctl">
 <input class="link_bg" type="submit" value="<% multilang("224" "LANG_DELETE_SELECTED"); %>" name="deleteSelFilterMac" onClick="return deleteClick(this)">&nbsp;&nbsp;
 <input class="link_bg" type="submit" value="<% multilang("225" "LANG_DELETE_ALL"); %>" name="deleteAllFilterMac" onClick="return deleteAllClick(this)">&nbsp;&nbsp;&nbsp;
 <input type="hidden" value="/fw-macfilter_rg.asp" name="submit-url">
 <input type="hidden" name="postSecurityFlag" value="">
</div>
<script>
 <% checkWrite("macFilterNum"); %>
</script>
</form>
</body>
</html>
